<?php

class user extends controller_restricted
{
	public function	__construct()
	{
		parent::__construct();

		$this->data['title'] = 'User';
		$this->files['css'][] = 'user';
	}

	public function main($params = NULL)
	{
		$this->files['views']['center'] = 'user';
	}

	public function change($params = NULL)
	{
		ob_start();
		var_dump($_POST);
		$result = ob_get_clean();
		$this->data['msg'] = $result;
		$this->files['views']['center'] = 'msg';
	}
}
