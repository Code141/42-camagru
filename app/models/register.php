<?php

class Db_register extends Model
{
	function take_user_by_mail($data)
	{
		$requeteBase = $this->sql->query("
			SELECT *
			FROM user
			WHERE
			mail = '" . $data['register']['email'] . "'
			");
		return ($requeteBase);
	}

	function register($data)
	{
		$this->sql->exec("
			INSERT INTO user
			VALUES (
				'',
				'".$data['register']['email']."',
				'".$data['register']['encrypted_password']."',
				'".$data['register']['firstname']."',
				'".$data['register']['lastname']."',
				'".$data['register']['birthdate']."',
				'".$data['register']['gender']."',
				now(),
				0)
			"); 
	}
}

