<?php

class register extends controller_public_only
{
	public function	__construct()
	{
		parent::__construct();

		$this->data['title'] = 'Register';
		$this->files['css'][] = 'register';
		$this->files['views']['center'] = 'register/register';
	}

	public function main($params = NULL)
	{

	}

	public function checksingup($params = NULL)
	{
		$this->load->script('php', 'login');
		$this->data['register'] = check_info();

	
		// password_hash("rasmuslerdorf", PASSWORD_DEFAULT);
		// bool password_verify ( string $password , string $hash )

		$this->data['register']['password'] = hash_password($this->data['register']['password']);

		if (($err = check_email($this->data['register']['email'])) !== TRUE)
			redirect("register/error/" . $err);
		if (($err = check_username($this->data['register']['username'])) !== TRUE)
			redirect("register/error/" . $err);

		$this->load->model('register', 'register', $this->data['register']);

		$this->load->script('php', 'mail', $this->data);
		email_validator($this->data['register']);

		redirect('register/register_success/');
	}

	public function register_success($params = NULL)
	{
		if (isset($params[0]) && !empty($params[0]))
			$this->data['email'] = $params[0];
		else
			$this->data['email'] = "your email";
		$this->files['views']['center'] = 'register/success';
	}

	public function error($params = null)
	{
		switch ($params[0]):
			case "register_spe_error":
				$this->data['msg'] = "register_spe_error";
			break;
			default:
				parent::error($params);
		endswitch;
	}
}

