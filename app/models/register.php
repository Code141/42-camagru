<?php

class Db_register extends Model
{
	function take_user_by_mail($data)
	{
		$sql = "
			SELECT *
			FROM user
			WHERE
			email = :email 
		";
		$pdo_stm = $this->pdo->prepare($sql);
		$pdo_stm->bindParam("email", $data['register']['email'], PDO::PARAM_STR);
		$pdo_stm = $this->execute_pdo($pdo_stm);
		return ($pdo_stm);
	}

	function register($data)
	{
		$sql = "
			INSERT INTO user
			VALUES (
				'',
				:email,
				:password,
				:username,
				0
			)
		"; 
		$pdo_stm = $this->pdo->prepare($sql);
		$pdo_stm->bindParam("email", $data['register']['email'], PDO::PARAM_STR);
		$pdo_stm->bindParam("password", $data['register']['password'], PDO::PARAM_STR);
		$pdo_stm->bindParam("username", $data['register']['username'], PDO::PARAM_STR);
		$pdo_stm = $this->execute_pdo($pdo_stm);
		return ($pdo_stm);
	}
}

