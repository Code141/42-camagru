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

	public function	execute_pdo()
	{
		// TRY / CATCH
		$this->pdo_stm->execute();
		return ($this->pdo_stm);
	}

	public function	__destruct()
	{
		$this->pdo_stm->closeCursor();
		$this->pdo_stm = NULL;
		$this->pdo = NULL;
	}
}

