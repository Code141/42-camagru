<?php

class Model
{
	public function __construct()
	{
		try
		{
			$pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
			$this->sql = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME . '', DB_USER, DB_PASS, $pdo_options);
		}
		catch(Exception $e)
		{
			die ('Erreur : '.$e->getMessage());
		}
	}
}

class Loader
{
	public function model($controller, $model, $params = NULL)
	{
		require_once(APP_PATH.'models/'.$controller.'.php');
		$calledmodel = 'Db_'.$controller;
		$this->db = new $calledmodel();
		return($this->db->$model($params));
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
	public function __construct()
	{
		$this->data['title'] = null;
		$this->data['user'] = null;

		$this->load = new Loader();
	}
}

