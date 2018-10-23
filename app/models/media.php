<?php

class Db_media extends model
{
	function add_media(array $data = null)
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
		$this->pdo_stm->bindparam("id_user", $loggued_id, PDO::PARAM_INT);
		$this->execute_pdo();
		$last_id = $this->pdo->lastinsertid();
		return ($last_id);
	}

	function get_media_from_to(array $data = null)
	{
		$loggued_id = loggued_id();
		$sql = "
			SELECT m.id, m.date, u.username
			FROM media m
			LEFT JOIN user u
			on m.id_user = u.id
			ORDER BY m.id DESC
			LIMIT :start, :offset
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindparam("start", $data['start'], PDO::PARAM_INT);
		$this->pdo_stm->bindparam("offset", $data['offset'], PDO::PARAM_INT);
		$this->execute_pdo();
		$all_media = $this->pdo_stm->fetchall(PDO::FETCH_ASSOC);
 		return ($all_media);
	}

	function get_media_and_likes_by_user_from_to(array $data = null)
	{
		$loggued_id = loggued_id();
		$sql = "
			SELECT m.id, m.date, u.username, l.grade
			FROM media m
			LEFT JOIN user u
			on m.id_user = u.id
			LEFT JOIN likes l
			ON m.id = l.id_media
			WHERE l.id_user = :id_user
			OR l.id_user IS NULL
			ORDER BY m.id DESC
			LIMIT :start, :offset
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindparam("id_user", $loggued_id, PDO::PARAM_INT);
		$this->pdo_stm->bindparam("start", $data['start'], PDO::PARAM_INT);
		$this->pdo_stm->bindparam("offset", $data['offset'], PDO::PARAM_INT);
		$this->execute_pdo();
		$all_media = $this->pdo_stm->fetchall(PDO::FETCH_ASSOC);
 		return ($all_media);
	}

	function get_all_masks(array $data = null)
	{
		$sql = "
			SELECT *
			FROM masks
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->execute_pdo();
		$all_masks = $this->pdo_stm->fetchall(PDO::FETCH_ASSOC);
		return ($all_masks);
	}

	function get_media_by_user_id(array $data = null)
	{
		$sql = "
			SELECT m.id, m.date, u.username
			FROM media m
			LEFT JOIN user u
			ON m.id_user = u.id
			WHERE m.id_user = :id_user
			ORDER BY date desc
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindparam("id_user", $data['user_id'], PDO::PARAM_INT);
		$this->execute_pdo();
		$user_media = $this->pdo_stm->fetchall(PDO::FETCH_ASSOC);
		return ($user_media);
	}

	function count_media(array $data = null)
	{
		$sql = "
			SELECT count(id) as count
			FROM media
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->execute_pdo();
		$count = $this->pdo_stm->fetch()["count"];
		return ($count);
	}

	function get_media_by_id(array $data = null)
	{

		$sql = "
			SELECT m.id, m.date, u.username, u.id as id_user
			FROM media m
			LEFT JOIN user u
			ON m.id_user = u.id
			WHERE m.id = :id_media
			ORDER BY date desc
		";
		$this->pdo_stm = $this->pdo->prepare($sql);

		$this->pdo_stm->bindparam("id_media", $data['id_media'], PDO::PARAM_INT);
		$this->execute_pdo();
		$media = $this->pdo_stm->fetchall(PDO::FETCH_ASSOC);
		if (isset($media[0]))
			return ($media[0]);
		return (null);
	}
}

