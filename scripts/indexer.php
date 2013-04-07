#!/usr/bin/env php
<?php
require_once realpath(dirname(__FILE__) . "/..") . "/config.php";

/**
 * Скрипт индексаци товаров выборв лучших
 */
class Indexer
{
    protected $_db = null;

    public function __construct($db, $config)
    {
        $this->_db = $db;
    }

    public function indexData()
    {
        $sql = "
            REPLACE INTO " . DB_PREFIX . "rating_index
            SELECT
                _cts.store_id,
                _c.category_id,
                _p.product_id
            FROM " . DB_PREFIX . "category_to_store AS _cts
            INNER JOIN " . DB_PREFIX . "category AS _c ON _c.category_id = _cts.category_id AND _cts.store_id = 0
            INNER JOIN " . DB_PREFIX . "product_to_category AS _ptc ON _ptc.category_id = _c.category_id
            INNER JOIN " . DB_PREFIX . "product AS _p ON _p.product_id = _ptc.product_id
            GROUP BY _c.category_id;
            ";

        $result = $this->_db->query($sql);

        var_dump($result);
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

$index = new Indexer($db, $config);
$index->indexData();