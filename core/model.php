<?php

class Model
{
	public function	__construct()
	{
		try
		{
			require(CONFIG_PATH . 'database.php');
			$this->pdo = new PDO($DB_DSN, $DB_USER, $DB_PASSWORD);
			if (DEV_MODE)
				$this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
		}
		catch(PDOException $exception)
		{
			if (DEV_MODE)
				die ('Erreur : ' . $exception->getMessage());
			else
			{
				// send mail to admin/
				redirect ('location:' . SITE_ROOT . 'error/');
				die ();
			}
		}
	}

	public function	execute_pdo($pdo_stm)
	{
		// TRY / CATCH
		$pdo_stm->execute();
		// fetch all here
		// return data
		// $pdo_stm->closeCursor();
		// close pdo_stm
		// 		$pdo_stm = NULL;
		return ($pdo_stm);
	}

	public function	__destruct()
	{
		$this->pdo = NULL;
	}
}

