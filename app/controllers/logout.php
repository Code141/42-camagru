<?php

class logout extends controller
{
	public function __construct($params = NULL)
	{
		parent::__construct();

		$this->data['title'] = "logout";
	}

	public function main($params = NULL)
	{
		$_SESSION['user'] = NULL;
		$_SESSION = array();
		session_destroy();

		$this->data['msg'] = "Login out";
		$this->files['views']['center'] = 'msg';
		redirect('');
	}
}
