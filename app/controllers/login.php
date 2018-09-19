<?php

class Login extends Controller
{
	public function	__construct()
	{
		$this->data['title'] = "Login";
		if (is_loggued())
			redirect('/user');
		parent::__construct($this->data);
	}

	public function main($params = NULL)
	{
		$this->load->view('login/login', $this->data);
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
		$this->load->view('login/restricted', $this->data);
	}

	public function error($params = NULL)
	{
		$this->data['error'] = $params[0];
		$this->load->view('login/error', $this->data);
	}

}
