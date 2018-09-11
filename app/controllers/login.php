<?php

class Login extends Controller
{

	public function main($params = NULL)
	{
		$data['title'] = 'Login';
		$this->load->view('html_start', $data);
		$this->load->view('header', $data);

		$this->load->view('login/login', $data);

		$this->load->view('footer', $data);
		$this->load->view('html_stop', $data);
	}

	public function checklogin($params = NULL)
	{
		$data['email'] = stripslashes($_POST['email']);

		$data['password_length'] = strlen($_POST['password']);

		$data['encrypted_password'] = hash('sha512', $_POST['password']);
		$data['dblogin'] = $this->load->model('login', 'login', $data);

		$data = $this->load->script('php', 'login', $data);
		login($data);
	}

	public function logout($params = NULL)
	{
		$data = $this->load->script('php', 'login');
		logout();
	}

	public function forgotten_password($params = NULL)
	{
		$data['title'] = 'Forgotten_Password';
		$this->load->view('html_start', $data);

		echo "FORGOTTEN PASSWORD";

		$this->load->view('html_stop', $data);
	}

	public function error($params = NULL)
	{

		$data['title'] = 'Login';
		$data['error'] = $params[0];

		$this->load->view('html_start', $data);
		$this->load->view('header', $data);

		$this->load->view('login/error', $data);

		$this->load->view('footer', $data);
		$this->load->view('html_stop', $data);
	}



}
