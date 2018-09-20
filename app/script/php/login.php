<?php

function	logout()
{
	$_SESSION['user'] = NULL;
	$_SESSION = array();
	session_destroy();
	redirect ('');
}

function	login($data)
{
	if (!filter_var($data['email'], FILTER_VALIDATE_EMAIL))
		redirect ('/login/error/invalidmail/');

	$data['dblogin'] = $data['dblogin']->fetchAll();
	$count = count($data['dblogin']);

	$data['dblogin'] = $data['dblogin']['0'];

	if ($count != 1)
		redirect ('/login/error/unknowmail');
	if ($data['encrypted_password'] != $data['dblogin']['password'])
		redirect ('login/error/bad_password');
	if ($data['dblogin']['validated_account'] != "1")
		redirect ('/login/error/account_not_validate/');

	$_SESSION['user']['id'] = $data['dblogin']['id'];
	$_SESSION['user']['email'] = $data['dblogin']['email'];
	$_SESSION['user']['password_length'] = $data['password_length'];
	$_SESSION['user']['username'] = $data['dblogin']['username'];
	$_SESSION['user']['birthdate'] = $data['dblogin']['birthdate'];
	$_SESSION['user']['gender'] = $data['dblogin']['gender'];
	$_SESSION['user']['account_creation'] = $data['dblogin']['account_creation'];

	redirect ('/' . $_SESSION['last_url']['controller'] . '/' . $_SESSION['last_url']['action']);
}

