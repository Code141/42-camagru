<?php

class Db_login extends Model {

	function login($data)
	{
		$requeteBase = $this->sql->query("
			SELECT *
			FROM user
			WHERE
			email = '" . $data['email'] . "'");
		return ($requeteBase);
	}

}

