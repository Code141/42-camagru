<?php

function	logout()
{
	$_SESSION = NULL;
	session_destroy();
	header('location:'.SITE_ROOT);
}

function	login($data)
{
	if (!filter_var($data['email'], FILTER_VALIDATE_EMAIL))
	{
		session_destroy();
		header('location:'.SITE_ROOT.'/login/error/invalidmail/'.$data['logmail']);
		die ();
	}

	$data['dblogin'] = $data['dblogin']->fetchAll();
	$count = count($data['dblogin']);

	$data['dblogin'] = $data['dblogin']['0'];

	if ($count != 1)
	{
		session_destroy();
		header('location:'.SITE_ROOT.'/login/error/unknowmail/'.$data['logmail']);
		die();
	}

	if ($data['encrypted_password'] != $data['dblogin']['password'])
	{
		session_destroy();
		header('location:'.SITE_ROOT.'/login/error/bad_password/'.$data['logmail']);
		die();
	}


	if ($data['dblogin']['validated_account'] != "1")
	{
		session_destroy();
		header('location:'.SITE_ROOT.'/login/error/account_not_validate/'.$data['logmail']);
		die();
	}
	$_SESSION['user']['id'] = $data['dblogin']['id'];
	$_SESSION['user']['email'] = $data['dblogin']['email'];

	$_SESSION['user']['password_length'] = $data['password_length'];
	   

	$_SESSION['user']['firstname'] = $data['dblogin']['firstname'];
	$_SESSION['user']['lastname'] = $data['dblogin']['lastname'];
	$_SESSION['user']['birthdate'] = $data['dblogin']['birthdate'];
	$_SESSION['user']['gender'] = $data['dblogin']['gender'];
	$_SESSION['user']['account_creation'] = $data['dblogin']['account_creation'];

	header('location:' . SITE_ROOT);
}

