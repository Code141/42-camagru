<?php

class Db_login extends Model
{
	function login($data)
	{
		$sql = "
			SELECT *
			FROM user
			WHERE
			email = :email
		";
		$pdo_stm = $this->pdo->prepare($sql);
		$pdo_stm->bindParam("email", $data['email'], PDO::PARAM_STR);
		$pdo_stm = $this->execute_pdo($pdo_stm);
		return ($pdo_stm);
	}
}

