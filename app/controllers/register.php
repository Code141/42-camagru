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

		$this->load->model('register', 'register', $this->data);

		$this->load->script('php', 'mail/email_validator', $this->data);
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
			case "password_doesnt_match":
				$this->data['error'] = "Password and retyped password doesn't match";
			break;
			case "password_too_short":
				$this->data['error'] = "Password too short.";
			break;
			case "password_too_long":
				$this->data['error'] = "Password too long";
			break;
			case "password_too_easy":
				$this->data['error'] = "Password too easy<br>it must contain uppercase, lowercase, number, and special charactere like ( @ ! - _ , . )";
			break;
			case "username_taken":
				$this->data['error'] = "Username already taken";
			break;
			case "username_too_short":
				$this->data['error'] = "Username too short";
			break;
			case "username_too_long":
				$this->data['error'] = "Username too long";
			break;
			case "username_bad_char":
				$this->data['error'] = "Username characters can be min, maj, number, underscore, dash, or dot, noting else.";
			break;
			case "email_already_registered":
				$this->data['error'] = "Email already registered";
			break;
			case "invalid_email":
				$this->data['error'] = "Email invalid";
			break;
			case "unset_field":
				if (!empty($params[1]))
					$this->data['error'] = "Field " . $params[1] . " is required";
				else
					$this->data['error'] = "All fields must be set";
			break;
			default:
				$this->data['error'] = "Unknow error";
		endswitch;
	}
}

