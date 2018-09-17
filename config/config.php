<?php

error_reporting(E_ALL);
ini_set("display_errors", 1);

//--------------------VARIABLES D'ENVIRONEMENT

define('APP_NAME', 'camagru');
define('ENVIRONMENT', TRUE);

define('SERVER_ROOT', str_replace('index.php', '', $_SERVER['SCRIPT_FILENAME']));
define('SITE_ROOT', '/camagru');

define('CORE_PATH', SERVER_ROOT.'core/');
define('APP_PATH', SERVER_ROOT.'app/');

define('CSS_PATH', '/camagru/app/assets/css/');
define('IMG_PATH', '/camagru/app/assets/img/');
define('MEDIA_PATH', '/camagru/app/assets/media/');
define('JS_PATH', '/camagru/app/script/js/');

//--------------------ROUTE PAR DEFAUT

$defaultController = 'home';
$defaultAction = 'main';

//--------------------DATABASE CONNECT

define('DB_HOST', 'localhost'); // Host name 
define('DB_NAME', 'camagru'); // Database name 
define('DB_USER', 'root'); // Mysql username 
define('DB_PASS', 'root'); // Mysql password 

