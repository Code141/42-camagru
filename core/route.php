<?php

// ATTENTION A LA MANIPULATION DU GET !

function	pars_requested_url($uri)
{
	$uri = preg_replace('/[\x00-\x1F\x80-\xFF]/', '', $uri);
	if (strpos($uri, '/') === 0)
	{
		$uri = ltrim($uri, '/');
		$uri = rtrim($uri, '/');
	}
	$request = ($uri == '/') ? '' : $uri;
	$request = explode('/', $request);
	return ($request);
}

$request = pars_requested_url($_SERVER['PATH_INFO']);

$controller = ($request[0] != '') ? $request[0] : DEFAULT_CONTROLLER;
$action = (isset($request[1])) ? $request[1] : DEFAUT_ACTION;
$params = (isset($request[2])) ? array_slice($request, 2) : NULL;

if ($controller !== "login"
	&& $controller !== "logout"
	&& $controller !== "register" )
{
	// IF IS NUL --- DEFAUT CONTROLLER !!!!!!!!!!!!
	// else a direct access to login wistout session
	// will send you on www.camagru.fr//
	// ex : when
	// $_SESSION['last_url']['controller'] == null	 -> may cause probleme

	$_SESSION['last_url']['controller'] = $controller;
	$_SESSION['last_url']['action'] = $action;
	$_SESSION['last_url']['params'] = $params;
}
