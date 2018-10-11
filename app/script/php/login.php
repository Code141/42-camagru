<?php

function	check_info()
{
	$register_fields = array(
		"email",
		"password",
		"passwordbis",
		"username"
		);
	foreach ($register_fields as $field)
		if (!isset($_POST[$field]) || empty($_POST[$field]))
			redirect('register/error/unset_field/' . $field);
		else
			$cleaned_data[$field] = htmlspecialchars($_POST[$field]);
	
	if (($err = check_password($cleaned_data['password'], $cleaned_data['passwordbis'])) !== TRUE)
		redirect ('register/error/' . $err);

	return ($cleaned_data);
}

function	check_password($password, $passwordbis)
{
	if (strlen($password) < 8)
		return ('password_too_short');
	if (strlen($password) > 50)
		return ('password_too_long');
	if (!preg_match('/[A-Z]/', $password)
		|| !preg_match('/[a-z]/', $password)
		|| !preg_match('/[0-9]/', $password)
		|| !preg_match('/@|!|\.|,|-|_/', $password))
		return ('password_too_easy');
	if ($password != $passwordbis)
		return ('password_doesnt_match');
	return (TRUE);
}

function	is_registered_email($email)
{
	$load = new Loader();
	$data['email'] = $email;
	$db = $load->model('register', 'take_user_by_email', $data);
	if (count($db->fetchAll()) != 0)
		return (1);
	return (0);
}

function	is_registered_username($username)
{
	$load = new Loader();
	$data['username'] = $username;
	$db = $load->model('register', 'take_user_by_username', $data);
	if (count($db->fetchAll()) != 0)
		return (1);
	return (0);
}

