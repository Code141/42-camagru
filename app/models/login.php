<?php

class Db_login extends Model
{
	function login($data)
	{
		$sql = "
			SELECT *
			FROM user
			WHERE
			username = :username
		";
		$pdo_stm = $this->pdo->prepare($sql);
		$pdo_stm->bindParam("username", $data['username'], PDO::PARAM_STR);
		$pdo_stm = $this->execute_pdo($pdo_stm);
		return ($pdo_stm);
	}
}

