<?php

function	email_validator($user)
{
	$to = $user['email'];
	$subject = 'Signup | Verification'; 
	$message = "Welcome " . $user['firstname'] . "
		Thanks for signing up in Camagru!
		Now you just have to click this link to activate your account:
		"  . SITE_ABSOLUTE . "register/validate_email/" . $user['email'] . "/" . $user['token'];
	$headers = "From:noreply@camagru.com" . "\r\n";
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
	$headers = 'From:noreply@camagru.com' . "\r\n";
	$reponse =  mail($to, $subject, $message, $headers);
}

function	email_like($id_user_from, $id_user_to, $media, $garde)
{
}

function	email_comment($id_user_from, $id_user_to, $media, $comment)
{
}
