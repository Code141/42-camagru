<?php

session_start();

require_once('config/config.php');

require_once(CORE_PATH . 'route.php');
require_once(CORE_PATH . 'model.php');
require_once(CORE_PATH . 'loader.php');
require_once(CORE_PATH . 'controller.php');
require_once(CORE_PATH . 'TOOL.php');

define('ACTION', $action);
define('CONTROLLER', $controller);




if (!is_readable(APP_PATH.'controllers/'.$controller.'.php'))
{

	echo "<center><h1>404</h1><h2>Not Found</h2></center>";
	die();
	// maybe 404 will be nicer
	$controller = $defaultController;
}

require_once(APP_PATH.'controllers/'.$controller.'.php');


print_r(get_class_methods($controller));
print('<br>----------------<br>');
print_r(array_search($action, get_class_methods($controller), TRUE));

//array search r'envoit la clé ou FALS ([0])
// mieux proteger la condition
// si la methode est la premiere, ca passe

if (array_search($action, get_class_methods($controller)))
{
	print('<br>----------------<br>');
	echo("okay");
//	$targetController = new $controller();
//	$targetController->$action($params);
}
else
{
	echo "<center><h1>404</h1><h2>Not Found 2</h2></center>";
	http_response_code(404);
}
 
?>
