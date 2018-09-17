<?php

session_start();

require_once('config/config.php');

require_once(CORE_PATH . 'route.php');
require_once(CORE_PATH . 'mvc.php');

define('ACTION', $action);
define('CONTROLLER', $controller);

require_once(APP_PATH.'controllers/'.$controller.'.php');

$targetController = new $controller;
$targetController->$action($params);

?>
