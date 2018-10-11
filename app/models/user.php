<?php

class Db_user extends Model
{
	function update_username($data)
	{
		$sql = "
			UPDATE user
			SET username = :new_username
			WHERE username = :current_username
		";
		$pdo_stm = $this->pdo->prepare($sql);
		$pdo_stm->bindParam("current_username", $_SESSION['user']['username'], PDO::PARAM_STR);
		$pdo_stm->bindParam("new_username", $data['new_username'], PDO::PARAM_STR);
		$pdo_stm = $this->execute_pdo($pdo_stm);
		return ($pdo_stm);
	}
}

