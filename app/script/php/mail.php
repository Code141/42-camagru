<?php

function	email_validator($user)
{
	$to = $user['email'];
	$subject = 'Signup | Verification'; 
	$message = "Welcome " . $user['firstname'] . "
		Thanks for signing up in Camagru!
		Now you just have to click this link to activate your account:
		"  . SITE_ABSOLUTE . "register/validate_email/" . $user['email'] . "/" . $user['token'];
	$headers = 'From: webmaster@example.com' . "\r\n" .
		'Reply-To: webmaster@example.com' . "\r\n" .
		'X-Mailer: PHP/' . phpversion();

	if (!mail($to, $subject, $message, $headers))
		return ("Verification mail can't be sended");
	return (TRUE);
}

function	email_forgot_pass($user)
{
	$to = $user['email'];
	$subject = 'Signup | Verification'; 
	$hash = '0123456789';
	$message = 'Hello '.$user['firstname'].'
		Thanks for signing up in Camagru!
		Now you just have to click this link to activate your account:
		http://www.yourwebsite.com/register/verify.php?email='.$user['email'].'&hash='.$hash.'
';
$headers = 'From: webmaster@example.com' . "\r\n" .
'Reply-To: webmaster@example.com' . "\r\n" .
'X-Mailer: PHP/' . phpversion();
$reponse =  mail($to, $subject, $message, $headers);
}

function	email_like($id_user_from, $id_user_to, $media, $garde)
{
}

function	email_comment($id_user_from, $id_user_to, $media, $comment)
{
	$load = new Loader();
	$data['id_user'] = $id_user_to;
	$user_to = $load->model('user', 'get_user_by_id', $data);
	if ($user_to['notif_comment'])
	{
		$to = $user_to['email'];
		$subject = "New comment";
		$message = "You juste recieve a comment on media : " . $media. "\r\n" .
			"Comment : \r\n" . $comment;
		$headers = 'From: gelambin@student.42.fr' . "\r\n" .
			'Reply-To: gelambin@student.42.fr' . "\r\n" .
			'X-Mailer: PHP/' . phpversion();
		mail($to, $subject, $message, $headers);
	}
	return (TRUE);
}
