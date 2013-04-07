<?php
class ModelCatalogCategory extends Model {
	public function getCategory($category_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.category_id = '" . (int)$category_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");
		
		return $query->row;
	}
	
	public function getCategories($parent_id = 0) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_description cd ON (c.category_id = cd.category_id) LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.parent_id = '" . (int)$parent_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "'  AND c.status = '1' ORDER BY c.sort_order, LCASE(cd.name)");

		return $query->rows;
	}
	
	public function getCategoryFilters($category_id) {
		$implode = array();
		
		$query = $this->db->query("SELECT filter_id FROM " . DB_PREFIX . "category_filter WHERE category_id = '" . (int)$category_id . "'");
		
		foreach ($query->rows as $result) {
			$implode[] = (int)$result['filter_id'];
		}
		
		
		$filter_group_data = array();
		
		if ($implode) {
			$filter_group_query = $this->db->query("SELECT DISTINCT f.filter_group_id, fgd.name, fg.sort_order FROM " . DB_PREFIX . "filter f LEFT JOIN " . DB_PREFIX . "filter_group fg ON (f.filter_group_id = fg.filter_group_id) LEFT JOIN " . DB_PREFIX . "filter_group_description fgd ON (fg.filter_group_id = fgd.filter_group_id) WHERE f.filter_id IN (" . implode(',', $implode) . ") AND fgd.language_id = '" . (int)$this->config->get('config_language_id') . "' GROUP BY f.filter_group_id ORDER BY fg.sort_order, LCASE(fgd.name)");
			
			foreach ($filter_group_query->rows as $filter_group) {
				$filter_data = array();
				
				$filter_query = $this->db->query("SELECT DISTINCT f.filter_id, fd.name FROM " . DB_PREFIX . "filter f LEFT JOIN " . DB_PREFIX . "filter_description fd ON (f.filter_id = fd.filter_id) WHERE f.filter_id IN (" . implode(',', $implode) . ") AND f.filter_group_id = '" . (int)$filter_group['filter_group_id'] . "' AND fd.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY f.sort_order, LCASE(fd.name)");
				
				foreach ($filter_query->rows as $filter) {
					$filter_data[] = array(
						'filter_id' => $filter['filter_id'],
						'name'      => $filter['name']			
					);
				}
				
				if ($filter_data) {
					$filter_group_data[] = array(
						'filter_group_id' => $filter_group['filter_group_id'],
						'name'            => $filter_group['name'],
						'filter'          => $filter_data
					);	
				}
			}
		}
		
		return $filter_group_data;
	}
				
	public function getCategoryLayoutId($category_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "category_to_layout WHERE category_id = '" . (int)$category_id . "' AND store_id = '" . (int)$this->config->get('config_store_id') . "'");
		
		if ($query->num_rows) {
			return $query->row['layout_id'];
		} else {
			return $this->config->get('config_layout_category');
		}
	}
					
	public function getTotalCategoriesByCategoryId($parent_id = 0) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "category c LEFT JOIN " . DB_PREFIX . "category_to_store c2s ON (c.category_id = c2s.category_id) WHERE c.parent_id = '" . (int)$parent_id . "' AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "' AND c.status = '1'");
		
		return $query->row['total'];
	}

    public function getCategoriesTree()
    {
        if (!$data = $this->cache->get('categories_tree')) {
            $sql = "SELECT
                    *
                    FROM " . DB_PREFIX . "category c
                    LEFT JOIN " . DB_PREFIX . "category_description cd
                        ON (c.category_id = cd.category_id)
                    LEFT JOIN " . DB_PREFIX . "category_to_store c2s
                        ON (c.category_id = c2s.category_id)
                    WHERE
                        cd.language_id = '" . (int)$this->config->get('config_language_id') . "'
                        AND c2s.store_id = '" . (int)$this->config->get('config_store_id') . "'
                        AND c.status = '1' ORDER BY c.sort_order,
                        LCASE(cd.name)";

            $query = $this->db->query($sql);

            //create tree
            $categoryTree = $this->buildTree($query->rows, array('category_id' => 0));
            $this->sortTree($categoryTree);

            $data = $categoryTree['children'];

            $this->cache->set('categories_tree', $data);
        }

        return $data;
    }

    protected function buildTree(&$categories, $thisCategory)
    {
        foreach ($categories as $category) {
            if ($category['parent_id'] == $thisCategory['category_id']) {
                $thisCategory['children'][] = $this->buildTree($categories, $category);
            }
        }

        return $thisCategory;
    }

    protected function sortTree(&$categories)
    {
        $orders = array();

        if (isset($categories['children'])) {
            foreach ($categories['children'] as $key => $category) {
                $this->sortTree($category);
                $orders[$key] = $category['sort_order'];
            }

            asort($orders);

            $sortedCategories = array();
            foreach ($orders as $position => $orderItem) {
                $sortedCategories[] = $categories['children'][$position];
            }

            $categories['children'] = $sortedCategories;
        }
    }

    public function getCategoriesByArrayId($categoriesId)
    {
        sort($categoriesId);

        $categoriesString = implode(',', $categoriesId);
        $key = md5($categoriesString);

        if (!$data = $this->cache->get($key)) {
            $sql = "SELECT
                        _c.category_id ,
                        _p.*,
                        _pd.*
                    FROM  " . DB_PREFIX . "category AS _c
                    LEFT JOIN  " . DB_PREFIX . "rating_index as _ri
                        ON _ri.category_id = _c.category_id AND _ri.store_id = 0
                    LEFT JOIN  " . DB_PREFIX . "product AS _p
                        ON _p.product_id = _ri.product_id
                    LEFT JOIN  " . DB_PREFIX . "product_description AS _pd
                        ON _pd.product_id = _p.product_id AND _pd.language_id = 2
                    WHERE
                        _c.category_id IN ({$categoriesString})";
            $query = $this->db->query($sql);

            $result = array();
            foreach ($query->rows as $record) {
                if (isset($record['product_id'])) {
                    $result[$record['category_id']] = $record;
                }
            }

            $this->cache->set($key, $result);
            $data = $result;
        }

        return $data;
    }
}
?>