<?php

class Db_media extends Model
{
	function add_media(array $data = NULL)
	{
		$loggued_id = loggued_id();
		$sql = "
			INSERT INTO media
			VALUES (
				'',
				:id_user,
				now()
				)
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindParam("id_user", $loggued_id, PDO::PARAM_INT);
		$this->execute_pdo();
		$last_id = $this->pdo->lastInsertId();
		return ($last_id);
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
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindParam("start", $data['start'], PDO::PARAM_INT);
		$this->pdo_stm->bindParam("offset", $data['offset'], PDO::PARAM_INT);
		$this->execute_pdo();
		$all_media = $this->pdo_stm->fetchAll(PDO::FETCH_ASSOC);
		return ($all_media);
	}

	function get_all_masks(array $data = NULL)
	{
		$sql = "
			SELECT *
			FROM masks
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->execute_pdo();
		$all_masks = $this->pdo_stm->fetchAll(PDO::FETCH_ASSOC);
		return ($all_masks);
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
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindParam("id_user", $data['user_id'], PDO::PARAM_INT);
		$this->execute_pdo();
		$user_media = $this->pdo_stm->fetchAll(PDO::FETCH_ASSOC);
		return ($user_media);
	}

	function count_media(array $data = NULL)
	{
		$sql = "
			SELECT COUNT(id) as count
			FROM media
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->execute_pdo();
		$count = $this->pdo_stm->fetch()["count"];
		return ($count);
	}

}

