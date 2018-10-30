<?php

class login extends controller_public_only
{
	public function	__construct()
	{
		parent::__construct();

		$this->data['title'] = "login";
		$this->files['css'][] = 'login';
		$this->files['views']['center'] = 'login/login';
		$this->files['views']['footer'] = 'login/footer';
	}

	public function main($params = null)
	{
		$this->render();
	}

	public function forgotten_password($params = null)
	{
		$this->data['title'] = 'forgotten_password';
		echo "forgotten password";
		$this->files['views']['center'] = 'login/forgotten_password';

		$this->render();
	}

	public function reset_password($params = null)
	{
		$this->load->script('php', 'mail');
		$this->data['title'] = 'Reset password';
		$this->files['views']['center'] = 'login/reset_password';

		$this->render();
	}

	public function checklogin($params = null)
	{
		$this->load->script('php', 'login');

		$register_fields = array(
			"username",
			"password"
		);

		foreach ($register_fields as $field)
			if (!isset($_POST[$field]) || empty($_POST[$field]))
				$this->fail($field . " field is unset", "main", "login");

		$this->data['username'] = stripslashes($_POST['username']);
		$this->data['encrypted_password'] = hash_password($_POST['password']);
		$this->data['dblogin'] = $this->load->model('login', 'get_user_by_username', $this->data);
		$this->data['dblogin']['password_length'] = strlen($_POST['password']);

		if ($this->data['dblogin'] == NULL)
			$this->fail("Unknow user", "main", "login");

		if ($this->data['encrypted_password'] != $this->data['dblogin']['password'])
			$this->fail("Bad password", "main", "login");

		if ($this->data['dblogin']['validated_account'] != "1")
			$this->fail("Account not validated", "main", "login");

		login($this->data['dblogin']);
		$this->success("Loggued");
	}
}
