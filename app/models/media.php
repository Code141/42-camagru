<?php

class Db_media extends Model
{
	function add_media(array $data = NULL)
	{
		$sql = "
			INSERT INTO media
			VALUES (
				'',
				:id_user,
				now()
				)
		";
		$pdo_stm = $this->pdo->prepare($sql);
		$loggued_id = loggued_id();

		$pdo_stm->bindParam("id_user", $loggued_id, PDO::PARAM_INT);
		$pdo_stm = $this->execute_pdo($pdo_stm);
		return ($this->pdo->lastInsertId());
	}

	function get_all_media(array $data = NULL)
	{
		$sql = "
			SELECT m.id, m.date, u.username
			FROM media m
			LEFT JOIN user u
			ON m.id_user = u.id
			ORDER BY id DESC
			LIMIT :start, :offset
		";
		$pdo_stm = $this->pdo->prepare($sql);
		$pdo_stm->bindParam("start", $data['start'], PDO::PARAM_INT);
		$pdo_stm->bindParam("offset", $data['offset'], PDO::PARAM_INT);
		$pdo_stm = $this->execute_pdo($pdo_stm);
		return ($pdo_stm);
	}

	function get_all_masks(array $data = NULL)
	{
		$sql = "
			SELECT *
			FROM masks
		";
		$pdo_stm = $this->pdo->prepare($sql);
		$pdo_stm = $this->execute_pdo($pdo_stm);
		return ($pdo_stm);
	}


	function get_media_by_user_id(array $data = NULL)
	{
		$sql = "
			SELECT m.id, m.date, u.username
			FROM media m
			LEFT JOIN user u
			ON m.id_user = u.id
			WHERE m.id_user = :id_user
			ORDER BY date DESC
		";
		$pdo_stm = $this->pdo->prepare($sql);
		$pdo_stm->bindParam("id_user", $data['user_id'], PDO::PARAM_INT);
		$pdo_stm = $this->execute_pdo($pdo_stm);
		return ($pdo_stm);
	}

	function media_count(array $data = NULL)
	{
		$sql = "
			SELECT COUNT(id) as count
			FROM media
		";
		$pdo_stm = $this->pdo->prepare($sql);
		$pdo_stm = $this->execute_pdo($pdo_stm);
		$count = $pdo_stm->fetch()["count"];
		return ($count);
	}

}

