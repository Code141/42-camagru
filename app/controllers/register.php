<?php

class register extends Controller
{

	public function main($params = NULL)
	{
		$this->data['title'] = 'Home - Gal';

		$this->load->view('html_start', $this->data);
		$this->load->view('header', $this->data);
		$this->load->view('register/register', $this->data);
		$this->load->view('footer', $this->data);
		$this->load->view('html_stop', $this->data);
	}

	public function checksingup($params = NULL)
	{
		$this->load->script('php', 'register');

		$data['register'] = check_info();
		$data['register']['encrypted_logpass'] =
			hash('sha512', $data['register']['password']);

		$data['dblogin'] =
			$this->load->model('register', 'take_user_by_mail', $data);

		if (is_registered_mail($data))
			error("Email already registered");
		else
			$this->load->model('register', 'register', $data);

		$this->load->script('php', 'mail/email_validator', $data);

		email_validator($data['register']);

		header('location:'.SITE_ROOT.'/register/register_success/');

	}

	public function register_success($params = NULL)
	{
		$data['title'] = 'Register Success';
		$this->load->view('html_start', $data);
		$this->load->view('register/success', $data);
		$this->load->view('html_stop', $data);
	}

	public function error($params = NULL)
	{
		$data['title'] = 'Register error';
		$this->load->view('html_start', $data);
		echo "ERROR ";
		echo $params[0];
		$this->load->view('html_stop', $data);
	}

}

