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
		$this->render();
	}

	public function register_success($params = NULL)
	{
		if (isset($params[0]) && !empty($params[0]))
			$this->data['email'] = $params[0];
		else
			$this->data['email'] = "your email";
		$this->files['views']['center'] = 'register/success';

		$this->render();
	}

	public function checksingup($params = NULL)
	{
		$this->load->script('php', 'login');
		$register_fields = array( "email", "password", "passwordbis", "username");
		foreach ($register_fields as $field)
			if (!isset($_POST[$field]) || empty($_POST[$field]))
				$this->fail($field . " field is unset", "main", "register");
			else
				$this->data['register'][$field] = $_POST[$field];

		$err = check_password($this->data['register']['password'], $this->data['register']['passwordbis']);
		if ($err !== TRUE)
			$this->fail($err, "main", "register");
		$this->data['register']['password'] = hash_password($this->data['register']['password']);
		if (($err = check_email($this->data['register']['email'])) !== TRUE)
			$this->fail($err, "main", "register");
		if (($err = check_username($this->data['register']['username'])) !== TRUE)
			$this->fail($err, "main", "register");
		$this->load->model('register', 'register', $this->data['register']);
		$this->load->script('php', 'mail', $this->data);
		email_validator($this->data['register']);

		$this->success($err, "register_success", "register");
	}
}

