<?php

// LAST PATH
if ($controller !== "login"
	&& $controller !== "logout"
	&& $controller !== "register" )
{
	// IF IS NUL --- DEFAUT CONTROLLER !!!!!!!!!!!!
	// else a direct access to login wistout session
	// will send you on www.camagru.fr//
	$_SESSION['last_url']['controller'] = $controller;
	$_SESSION['last_url']['action'] = $action;
	$_SESSION['last_url']['params'] = $params;
}


function	is_ajax_query()
{
	if (isset($_GET['is_ajax']))
		return ((intval($_GET['is_ajax'])) ? TRUE : FALSE);
	else
		return (FALSE);
}

function	is_loggued()
{
	if (empty($_SESSION['user']))
		return (FALSE);
	else
		return (TRUE);
}

function	loggued_username()
{
	return ($_SESSION['user']['username']);
}

function	loggued_id()
{
	return ($_SESSION['user']['id']);
}

function	redirect($path)
{
	header ('location:'.SITE_ROOT. $path);
	die();
}

