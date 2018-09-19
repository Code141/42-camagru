<?php

function	logout()
{
	$_SESSION['user'] = NULL;
	header('location:'.SITE_ROOT);
	die();
}

function	login($data)
{
	if (!filter_var($data['email'], FILTER_VALIDATE_EMAIL))
	{
		header('location:'.SITE_ROOT.'/login/error/invalidmail/'.$data['logmail']);
		die ();
	}

	$data['dblogin'] = $data['dblogin']->fetchAll();
	$count = count($data['dblogin']);

	$data['dblogin'] = $data['dblogin']['0'];

	if ($count != 1)
	{
		header('location:'.SITE_ROOT.'/login/error/unknowmail/'.$data['logmail']);
		die();
	}

	if ($data['encrypted_password'] != $data['dblogin']['password'])
	{
		header('location:'.SITE_ROOT.'/login/error/bad_password/'.$data['logmail']);
		die();
	}

	if ($data['dblogin']['validated_account'] != "1")
	{
		header('location:'.SITE_ROOT.'/login/error/account_not_validate/'.$data['logmail']);
		die();
	}

	$_SESSION['user']['id'] = $data['dblogin']['id'];
	$_SESSION['user']['email'] = $data['dblogin']['email'];
	$_SESSION['user']['password_length'] = $data['password_length'];
	$_SESSION['user']['username'] = $data['dblogin']['username'];
	$_SESSION['user']['birthdate'] = $data['dblogin']['birthdate'];
	$_SESSION['user']['gender'] = $data['dblogin']['gender'];
	$_SESSION['user']['account_creation'] = $data['dblogin']['account_creation'];

	header('location:' . SITE_ROOT . '/' . $_SESSION['last_url']['controller'] . '/' . $_SESSION['last_url']['action']);
}

