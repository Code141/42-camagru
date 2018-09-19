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

class Loader
{
	public function model($controller, $model, $params = NULL)
	{
		require_once(APP_PATH.'models/'.$controller.'.php');
		$calledmodel = 'Db_'.$controller;
		$this->pdo = new $calledmodel();
		return($this->pdo->$model($params));
	}

	public function script($type, $file, array $data = NULL)
	{
		require(APP_PATH.'script/'.$type.'/'.$file.'.'.$type);
		return ($data);
	}

	public function view($file, array $data = NULL)
	{
		require(APP_PATH.'views/'.$file.'.php');
	}
}

class Controller
{
	public $data;

	public function __construct()
	{
		$this->load = new Loader();

		if (!is_ajax_query())
		{
			$this->load->view('html_start', $this->data);
			$this->load->view('header', $this->data);
		}
	}
	
	public function __destruct()
	{
		if (!is_ajax_query())
		{
			$this->load->view('footer');
			$this->load->view('html_stop');
		}
	}
}

