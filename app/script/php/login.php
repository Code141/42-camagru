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
	if ($password != $passwordbis)
		return ('password_doesnt_match');
	if (strlen($password) < 8)
		return ('password_too_short');
	if (strlen($password) > 50)
		return ('password_too_long');
	if (!preg_match('/[A-Z]/', $password)
		|| !preg_match('/[a-z]/', $password)
		|| !preg_match('/[0-9]/', $password)
		|| !preg_match('/@|!|\.|,|-|_/', $password))
		return ('password_too_easy');
	return (TRUE);
}

function	hash_password($password)
{
	$hash = hash('sha512', $password);
// password_hash("rasmuslerdorf", PASSWORD_DEFAULT);
// bool password_verify ( string $password , string $hash )
	return ($hash);
}

function	check_email($email)
{
	if (!filter_var($email, FILTER_VALIDATE_EMAIL))
		return ("invalid_email");
	$load = new Loader();
	$data['email'] = $email;
	$db = $load->model('register', 'take_user_by_email', $data);
	if (count($db->fetchAll()) != 0)
		return ("email_already_registered");
	return (TRUE);
}

function	check_username($username)
{
	if (strlen($username) < 3)
		return ('username_too_short');
	if (strlen($username) > 30)
		return ('username_too_long');
	if (!preg_match("/^[a-zA-Z0-9_\-\.]+$/", $username))
		return ('username_bad_char');

	$load = new Loader();
	$data['username'] = $username;
	$db = $load->model('register', 'take_user_by_username', $data);
	if (count($db->fetchAll()) !== 0)
		return ('username_taken');
	return (TRUE);
}

