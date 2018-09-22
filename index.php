<?php
session_start();

require_once('config/config.php');

require_once(CORE_PATH . 'route.php');
require_once(CORE_PATH . 'model.php');
require_once(CORE_PATH . 'loader.php');
require_once(CORE_PATH . 'controller.php');
require_once(CORE_PATH . 'TOOL.php');

if (is_readable(APP_PATH.'controllers/' . $controller . '.php'))
	require_once(APP_PATH.'controllers/' . $controller . '.php');
else
	$controller = "controller";

$classes =  get_class_methods($controller);
$classes = preg_grep("/^(?!__).+/", $classes);

if (array_search($action, $classes) === FALSE)
	$action = "error_404"; 

$targetController = new $controller();
$targetController->$action($params);

?>
