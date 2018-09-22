<?php

class login extends controller_public_only
{
	public function	__construct()
	{
		parent::__construct();
		$this->data['title'] = "login";
		$this->files['css'][] = 'login';
	}

	public function main($params = null)
	{
		$this->files['views'][] = 'login/login';
	}

	public function checklogin($params = null)
	{
		$register_fields = array(
			"username",
			"password"
		);

		foreach ($register_fields as $field)
			if (empty($_POST[$field]))
				redirect("login/error/" . $field . '_is_unset');
			else
				$cleaned_data[$field] = htmlspecialchars($_POST[$field]);

		$this->data['username'] = stripslashes($_POST['username']);
		$this->data['password_length'] = strlen($_POST['password']);
		$this->data['encrypted_password'] = hash('sha512', $_POST['password']);
		$this->data['dblogin'] = $this->load->model('login', 'login', $this->data);
		$this->data['dblogin'] = $this->data['dblogin']->fetchAll();
		$count = count($this->data['dblogin']);
		$this->data['dblogin'] = $this->data['dblogin']['0'];
		if ($count != 1)
			redirect ('login/error/unknow_user');
		if ($this->data['encrypted_password'] != $this->data['dblogin']['password'])
			redirect ('login/error/bad_password');
		if ($this->data['dblogin']['validated_account'] != "1")
			redirect ('login/error/account_not_validate/');
		$this->login();
	}

	private	function	login()
	{
		$_SESSION['user']['id'] = $this->data['dblogin']['id'];
		$_SESSION['user']['email'] = $this->data['dblogin']['email'];
		$_SESSION['user']['password_length'] = $this->data['password_length'];
		$_SESSION['user']['username'] = $this->data['dblogin']['username'];

		redirect ($_SESSION['last_url']['controller'] . '/' . $_SESSION['last_url']['action']);
	}

	public function forgotten_password($params = null)
	{
		$this->data['title'] = 'forgotten_password';
		echo "forgotten password";
	}

	public function restricted($params = null)
	{
		$this->data['error'] = "Restricted area";
		$this->files['views'][] = 'login/login';
	}

	public function error($params = null)
	{
		$this->data['error'] = ($params[0] != null) ? $params[0] : "Unknow error";
		$this->files['views'][] = 'login/login';
	}
}
