<?php

class Model
{
	public function	__construct()
	{
		try
		{
			$this->pdo = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME . '', DB_USER, DB_PASS);
			if (DEV_MODE)
				$this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
		}
		catch(PDOException $exception)
		{
			if (DEV_MODE)
				die ('Erreur : ' . $exception->getMessage());
			else
			{
				// send mail to admin
				header('location:' . SITE_ROOT . '/error/');
				die ();
			}
		}
	}

	public function	execute_pdo($pdo_stm)
	{
		// TRY / CATCH
		$pdo_stm->execute();
		return ($pdo_stm);
	}
}

