<?php

class Db_likes extends model
{
	function add_like_on_media_by_id(array $data = null)
	{
		$loggued_id = loggued_id();
		$sql = "
			INSERT INTO likes
			VALUES (
				'',
				:id_media,
				:id_user,
				:grade
				)
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindparam("id_media", $data['id_media'], PDO::PARAM_INT);
		$this->pdo_stm->bindparam("id_user", $loggued_id, PDO::PARAM_INT);
		$this->pdo_stm->bindparam("grade", $data['grade'], PDO::PARAM_INT);
		$this->execute_pdo();
	}

	function has_already_liked_this(array $data = null)
	{
		$loggued_id = loggued_id();
		$sql = "
			SELECT count(id) as count
			FROM likes
			WHERE id_media = :id_media
			AND id_user = :id_user
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindparam("id_media", $data['id_media'], PDO::PARAM_INT);
		$this->pdo_stm->bindparam("id_user", $loggued_id, PDO::PARAM_INT);
		$this->execute_pdo();
		$count = $this->pdo_stm->fetch()["count"];

		if ($count)
			return (TRUE);
		return (FALSE);
	}

	function update_like_on_media_by_id(array $data = null)
	{
		$loggued_id = loggued_id();
		$sql = "
			UPDATE likes
			SET grade = :grade
			WHERE id_media = :id_media
			AND id_user = :id_user
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->pdo_stm->bindparam("id_media", $data['id_media'], PDO::PARAM_INT);
		$this->pdo_stm->bindparam("id_user", $loggued_id, PDO::PARAM_INT);
		$this->pdo_stm->bindparam("grade", $data['grade'], PDO::PARAM_INT);
		$this->execute_pdo();
	}

	function get_like_by_media_id(array $data = null)
	{
		/*
		$sql = "
			SELECT *
			INTO likes
			WHERE id_media = :id_media
		";
		$this->pdo_stm = $this->pdo->prepare($sql);
		$this->execute_pdo();
		$this->pdo_stm->bindparam("id_grade", $loggued_id, PDO::PARAM_INT);
		$all_media = $this->pdo_stm->fetchall(PDO::FETCH_ASSOC);
		return ($all_media);
		 */
	}
}

