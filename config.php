<?php

if (defined('ENV_DEV')) {
    $basePath = '/home/vatseek/web/evideo.km.ua.work/';
    $user = 'user';
    $password = '';
    $database = 'evideo_km_ua';
    $baseUrl = 'http://evideo.km.ua.work/';
} else {
    $basePath = '/var/www/clients/client12/web8/web/';
    $user = 'c12evideo_org_ua';
    $password = 'evideo.org.ua';
    $database = 'c12evideo_org_ua';
    $baseUrl = 'http://evideo.org.ua/';
}

// HTTP
define('HTTP_SERVER', $baseUrl);

// HTTPS
define('HTTPS_SERVER', $baseUrl);

// DIR
define('DIR_APPLICATION', $basePath. 'catalog/');
define('DIR_SYSTEM',    $basePath. 'system/');
define('DIR_DATABASE',  $basePath. 'system/database/');
define('DIR_LANGUAGE',  $basePath. 'catalog/language/');
define('DIR_TEMPLATE',  $basePath. 'catalog/view/theme/');
define('DIR_CONFIG',    $basePath. 'system/config/');
define('DIR_IMAGE',     $basePath. 'image/');
define('DIR_CACHE',     $basePath. 'system/cache/');
define('DIR_DOWNLOAD',  $basePath. 'download/');
define('DIR_LOGS',      $basePath. 'system/logs/');

// DB
define('DB_DRIVER', 'mysql');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME',  $user);
define('DB_PASSWORD', $password);
define('DB_DATABASE', $database);
define('DB_PREFIX', 'oc_');
?>