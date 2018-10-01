<?php

class register extends controller_public_only
{
	public function	__construct()
	{
		parent::__construct();
		$this->files['css'][] = 'register';
	}

	public function main($params = NULL)
	{
		$this->data['title'] = 'Home - Gal';
		$this->files['views']['center'] = 'register/register';
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
			redirect("register/error/Email already registered");
		else
			$this->load->model('register', 'register', $this->data);

		$this->load->script('php', 'mail/email_validator', $this->data);
		email_validator($this->data['register']);
		redirect('register/register_success/');
	}

	public function register_success($params = NULL)
	{
		$this->files['view']['center'] = 'register/success';
	}

	public function error($params = NULL)
	{
		echo "ERROR ";
		echo $params[0];
	}

}

