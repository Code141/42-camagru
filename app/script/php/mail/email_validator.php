<?php

function	email_validator($user)
{
	$to = $user['email'];
	$subject = 'Signup | Verification'; 
	$hash = '0123456789';
	$message = 'Welcome '.$user['firstname'].'
Thanks for signing up in Camagru!
Now you just have to click this link to activate your account:
http://www.yourwebsite.com/register/verify.php?email='.$user['email'].'&hash='.$hash.'
';

$headers = 'From:noreply@camagru.com' . "\r\n";
$reponse =  mail($to, $subject, $message, $headers);
}
