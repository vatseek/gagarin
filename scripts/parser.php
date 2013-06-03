#!/usr/bin/env php
<?php
if ( file_exists(realpath(dirname(__FILE__) . "/..") . "/dev.lock")) {
    define('ENV_DEV', true);
}

require_once realpath(dirname(__FILE__) . "/..") . "/config.php";
require_once realpath(dirname(__FILE__) . "/..") . "/library/simple_html_dom.php";

function getHtmlData($data){
    if (is_array($data) && $data[0]) {
        return $data[0];
    }

    return false;
}

class Parser
{
    protected $_db = null;
    protected $host = 'http://yugcontract.ua';
    protected $catalogLink = 'http://yugcontract.ua/shop/';

    public function __construct($db, $config)
    {
        $this->_db = $db;
    }

    public function start()
    {
        // find main links
        $links = $this->getCatalog();
        $linksCount = count($links);

        echo "finded {$linksCount} links". PHP_EOL;
        if (!$linksCount) {
            return;
        }

        //find products
        foreach ($links as $catalogLink) {
            $page = 0;
            $link = $catalogLink;

            while($link) {
                $page++;

                echo 'parse page - ' . $page . PHP_EOL;
                $result = $this->getProducts($this->host . $link, $page);

                if (isset($result['products'])) {
                    foreach ($result['products'] as $productLink) {
                        echo $productLink . PHP_EOL;
                        $this->parseProduct($this->host . $productLink, $result['category']);
                        usleep(600);
                    }
                }

                if (isset($result['link'])) {
                    $link = $result['link'];
                } else {
                    break;
                }

                usleep(300);
            }
        }

    }

    public function parseProduct($url, $categoryName)
    {
        $html = file_get_html($url);

        $product = new StdClass();

        $product->category = $categoryName;
        $product->sku = str_replace('Код: ', '', getHtmlData($html->find('div.good-info-number')) ? getHtmlData($html->find('div.good-info-number'))->innertext : '');

        if (!$product->sku) {
            return false;
        }

        $product->name = getHtmlData($html->find('h1.good-info-header'))->innertext;

        $images = array();
        foreach ($html->find('#images-list li a') as $item) {
            $images[] = $this->host . $item->href;
        }

        $product->images = $images;

        $product->image = '';
        $tmp = $html->find('#images-preview img');
        if (isset($tmp[0])) {
            $path = $this->uploadImage($this->host . trim($tmp[0]->src));
            $product->image = $path;
        }

        $tmp = $html->find('div.panes div.content');
        $product->description = '';

        if (isset($tmp[0])) {
            $product->description = trim($this->_db->escape($tmp[0]->innertext));
        }

        $options = array();
        foreach ($html->find('table.properties-table tr') as $item) {
            $tmp = $item->find('td.prop');
            if (isset($tmp[0])) {
                $optionName = $this->_db->escape(strip_tags(trim(str_replace("\t", '', $tmp[0]->innertext))));
            } else {
                continue;
            }

            $tmp = $item->find('td.val');
            if (isset($tmp[0])) {
                $optionValue = $this->_db->escape(strip_tags(trim(str_replace("\t", '', $tmp[0]->innertext))));
            } else {
                continue;
            }

            $options[$optionName] = $optionValue;
        }
        $product->options = $options;

        $this->saveProduct($product);
    }

    protected function getCategoryByName($categoryName)
    {
        //get category id
        $sql = "SELECT
                   category_id
                FROM " . DB_PREFIX . "category_description
                WHERE
                    name = '{$categoryName}' AND
                    language_id = 2";
        $result = $this->_db->query($sql);

        if (!count($result->row)) {
            $categoryId = $this->createCategory($categoryName);
        } else {
            $categoryId = $result->row['category_id'];
        }

        return $categoryId;

    }

    protected function saveProduct($product)
    {
        // check is product exists
        $sql = "SELECT
                    *
                FROM " . DB_PREFIX . "product
                WHERE sku = '$product->sku'";

        $result = $this->_db->query($sql);

        if (count($result->rows)) {
            echo "product {$product->name}({$product->sku}) already exists" . PHP_EOL;
            return true;
        }

        $product->category_id = $this->getCategoryByName($product->category);

        // add to product table
        $image = isset($product->images[0]) ? $this->_db->escape($product->images[0]) : '';
        $sql = "INSERT INTO
            " . DB_PREFIX . "product (product_id, model, sku, quantity, stock_status_id, image, shipping, price, status)
            VALUES
            (NULL,
            '{$this->_db->escape($product->name)}',
            '{$this->_db->escape($product->sku)}',
            10,
            7,
            '{$product->image}',
            1,
            1000,
            1
            );";

        $this->_db->query($sql);
        $product_id = $this->_db->getLastId();

        if (!$product_id) {
            return false;
        }

        $product->product_id = $product_id;

        $sql = "INSERT INTO " . DB_PREFIX . "product_description (product_id, language_id, name, description)
                VALUES ({$product->product_id}, 2, '{$product->name}', '{$product->description}')";
        $this->_db->query($sql);

        $sql = "INSERT INTO " . DB_PREFIX . "product_to_category VALUES ({$product->product_id}, {$product->category_id})";
        $this->_db->query($sql);

        $sql = "INSERT INTO " . DB_PREFIX . "product_to_store VALUES ({$product->product_id}, 0)";
        $this->_db->query($sql);

        $sql = "INSERT INTO " . DB_PREFIX . "product_image  VALUES ";

        if (isset($product->images[0])) {
            $counter = 0;
            foreach ($product->images as $image) {
                $path = $this->uploadImage($image);

                if ($path) {
                    $sql .= "(NULL, '{$product->product_id}', '{$path}', 0),";
                    $counter++;
                }
            }

            if ($counter) {
                $sql = trim($sql, ',');
                $this->_db->query($sql);
            }
        }

        $this->saveProductAttributes($product);

        echo ' - done' . PHP_EOL;
    }


    protected function uploadImage($path)
    {
        preg_match_all('/.*\.([A-Za-z]{2,4})$/Ui', $path, $matches);
        if (isset($matches[1][0])) {
            $type = '.' . $matches[1][0];
            copy($path,  DIR_IMAGE . 'data/tmp.pic');
            $filename = md5_file(DIR_IMAGE . 'data/tmp.pic');
            copy(DIR_IMAGE . 'data/tmp.pic', DIR_IMAGE . 'data/' . $filename . $type);
            $path = 'data/' . $filename . $type;

            return $path;
        }

        return false;
    }

    protected function updateProductImage($product)
    {
        $sql = "UPDATE " . DB_PREFIX . "product
                SET image = '{$product->image}'
                WHERE product_id = '{$product->product_id}';";
        $this->_db->query($sql);
    }

    protected function saveProductAttributes($product)
    {
        if (isset($product->options)) {
           foreach ($product->options as $optionName => $optionValue) {
               $sql = "SELECT attribute_id FROM " . DB_PREFIX . "attribute_description WHERE name='{$optionName}'";
               $result = $this->_db->query($sql);

               if ( isset($result->row['attribute_id'])) {
                   $attribute_id = $result->row['attribute_id'];
               } else {
                   $attribute_id = $this->createAttribute($optionName);
               }

               $sql = "INSERT INTO " . DB_PREFIX . "product_attribute VALUES({$product->product_id}, {$attribute_id}, 2, '{$optionValue}')";
               $this->_db->query($sql);
           }
        }
    }

    protected function createAttribute($attributeName)
    {
        $sql = "INSERT INTO " . DB_PREFIX . "attribute VALUES(NULL, 16, 0)";
        $this->_db->query($sql);

        $attribute_id = $this->_db->getLastId();

        $sql = "INSERT INTO " . DB_PREFIX . "attribute_description VALUES({$attribute_id}, 2, '{$attributeName}')";
        $this->_db->query($sql);

        return $attribute_id;
    }

    protected function createCategory($categoryName)
    {
        $sql = "INSERT INTO " . DB_PREFIX . "category VALUES(NULL, '', 0, 1, 1, 0, 1, NOW(), NOW())";
        $this->_db->query($sql);

        $category_id = $this->_db->getLastId();

        $sql = "INSERT INTO " . DB_PREFIX . "category_description VALUES('{$category_id}', 2, '{$categoryName}', '', '', '');";
        $this->_db->query($sql);

        $sql = "INSERT INTO " . DB_PREFIX . "category_to_store VALUES('{$category_id}', 0);";
        $this->_db->query($sql);

        return $category_id;
    }

    protected function getProducts($url, $page = 1)
    {
        $html = file_get_html($url);

        $category = $html->find('h1.category');
        $categoryName = $category[0]->innertext;

        // find products first page
        $products = array();
        foreach($html->find('div.cat-item a') as $item) {
            $products[$item->href] = $item->href;
        }

        //find next page
        foreach($html->find('span.pagination a') as $item) {
            if ($item->innertext == ($page + 1)) {
                $link = $item->href;
                break;
            } else {
                $link = false;
            }
        }

        return array('products' => $products, 'link' => $link, 'category' => $categoryName);
    }

    protected function getCatalog()
    {
        $html = file_get_html($this->catalogLink);

        $links = array();
        foreach($html->find('div.shop-categories a') as $item) {
            $links[$item->href] = $item->href;
        }

        return $links;
    }

}

define('VERSION', '1.5.5.1');

// Configuration
if (file_exists('config.php')) {
    require_once('config.php');
}

// Install
if (!defined('DIR_APPLICATION')) {
    header('Location: install/index.php');
    exit;
}

// Startup
require_once(DIR_SYSTEM . 'startup.php');

// Application Classes
require_once(DIR_SYSTEM . 'library/customer.php');
require_once(DIR_SYSTEM . 'library/affiliate.php');
require_once(DIR_SYSTEM . 'library/currency.php');
require_once(DIR_SYSTEM . 'library/tax.php');
require_once(DIR_SYSTEM . 'library/weight.php');
require_once(DIR_SYSTEM . 'library/length.php');
require_once(DIR_SYSTEM . 'library/cart.php');

// Registry
$registry = new Registry();

// Loader
$loader = new Loader($registry);
$registry->set('load', $loader);

// Config
$config = new Config();
$registry->set('config', $config);

// Database
$db = new DB(DB_DRIVER, DB_HOSTNAME, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
$registry->set('db', $db);

$index = new Parser($db, $config);
$index->start();