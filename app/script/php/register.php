<?php
function	error($reason)
{
	header('location:' . SITE_ROOT . '/register/error/' . $reason);
	die ();
}

function	check_info()
{
	$register_fields = array(
		"email",
		"password",
		"passwordbis",
		"username",
		"birthdate",
		"gender"
		);
	foreach ($register_fields as $field)
		if (empty($_POST[$field]))
			error($field . '_is_unset');
		else
			$cleaned_data[$field] = htmlspecialchars($_POST[$field]);

	if ($cleaned_data['password'] != $cleaned_data['passwordbis'])
		error('Password_and_retyped_password_doesnt_match');

	return ($cleaned_data);
}

function	is_registered_mail($data)
{
	$data['dblogin'] = $data['dblogin']->fetchAll();
	if (count($data['dblogin']) != 0)
		return (1);
	return (0);
}

