<?php

class register extends Controller_public_only
{
	public function	__construct()
	{
		$this->files['css'][] = 'register';
		parent::__construct();
	}

	public function main($params = NULL)
	{
		$this->data['title'] = 'Home - Gal';
		$this->files['views'][] = 'register/register';
	}

	public function checksingup($params = NULL)
	{
		$this->load->script('php', 'register');
		$this->data['register'] = check_info();
		$this->data['register']['encrypted_password'] =
			hash('sha512', $this->data['register']['password']);
		$this->data['dblogin'] =
			$this->load->model('register', 'take_user_by_mail', $this->data);
		if (is_registered_mail($this->data))
			error("Email already registered");
		else
			$this->load->model('register', 'register', $this->data);
		$this->load->script('php', 'mail/email_validator', $this->data);
		email_validator($this->data['register']);
		header('location:'.SITE_ROOT.'/register/register_success/');
	}

	public function register_success($params = NULL)
	{
		$this->files['view'][] = 'register/success';
	}

	public function error($params = NULL)
	{
		echo "ERROR ";
		echo $params[0];
	}

}

