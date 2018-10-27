<?php

class Loader
{
	public function model($controller, $model, $params = NULL)
	{
		require_once(APP_PATH . 'models/' . $controller . '.php');
		$calledmodel = 'Db_' . $controller;
		$this->pdo = new $calledmodel();
		return($this->pdo->$model($params));
	}

	public function script($type, $file, array $data = NULL)
	{
		require(APP_PATH . 'script/' . $type . '/' . $file . '.' . $type);
		return ($data);
	}
}

