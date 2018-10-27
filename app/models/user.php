<?php

class Db_user extends Model
{
	function get_user_by_id($data)
	{
		$sql = "
			SELECT id, email, username
			FROM user
			WHERE
			id = :id_user
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindParam("id_user", $data['id_user'], PDO::PARAM_INT);
		$this->execute_pdo();
		$user = $this->pdo_stm->fetchAll(PDO::FETCH_ASSOC);
		if (count($user) != 1)
			return (NULL);
		return ($user[0]);
	}
	
	function get_user_by_username($data)
	{
		$sql = "
			SELECT id, email, username
			FROM user
			WHERE
			username = :username
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindParam("username", $data['username'], PDO::PARAM_STR);
		$this->execute_pdo();
		$user = $this->pdo_stm->fetchAll(PDO::FETCH_ASSOC);
		if (count($user) != 1)
			return (NULL);
		return ($user[0]);
	}
}

