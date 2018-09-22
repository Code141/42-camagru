<?php

function	check_info()
{
	$register_fields = array(
		"email",
		"password",
		"passwordbis",
		"username",
		);
	foreach ($register_fields as $field)
		if (empty($_POST[$field]))
			redirect('register/error/' . $field . '_is_unset');
		else
			$cleaned_data[$field] = htmlspecialchars($_POST[$field]);

	if ($cleaned_data['password'] != $cleaned_data['passwordbis'])
			redirect('register/error/Password_and_retyped_password_doesnt_match');

	return ($cleaned_data);
}

function	is_registered_mail($data)
{
	$data['dblogin'] = $data['dblogin']->fetchAll();
	if (count($data['dblogin']) != 0)
		return (1);
	return (0);
}

