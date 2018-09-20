<?php

class Login extends Controller_public_only
{
	public function	__construct()
	{
		$this->data['title'] = "Login";
		$this->files['css'][] = 'login';

		parent::__construct();
	}

	public function main($params = NULL)
	{
		$this->files['views'][] = 'login/login';
	}

	public function checklogin($params = NULL)
	{
		$this->data['email'] = stripslashes($_POST['email']);
		$this->data['password_length'] = strlen($_POST['password']);
		$this->data['encrypted_password'] = hash('sha512', $_POST['password']);
		$this->data['dblogin'] = $this->load->model('login', 'login', $this->data);
		$this->load->script('php', 'login', $this->data);
		login($this->data);
	}

	public function forgotten_password($params = NULL)
	{
		$this->data['title'] = 'Forgotten_Password';
		echo "FORGOTTEN PASSWORD";
	}

	public function restricted($params = NULL)
	{
		$this->data['error'] = $params[0];
		$this->files['views'][] = 'login/restricted';
	}

	public function error($params = NULL)
	{
		$this->data['error'] = ($params[0] != NULL) ? $params[0] : "Unknow Error";
		$this->files['views'][] = 'login/error';
	}
}
