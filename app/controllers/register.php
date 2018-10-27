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

	public function checksingup($params = NULL)
	{
		$this->load->script('php', 'login');
		$this->data['register'] = check_info();
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
		$this->render();
	}

	public function error($params = null)
	{
		$err = $params[0];
		switch ($err):
			case "password_doesnt_match":
				$this->data['msg'] = "Password and retyped password doesn't match";
			break;
			case "password_too_short":
				$this->data['msg'] = "Password too short.";
			break;
			case "password_too_long":
				$this->data['msg'] = "Password too long";
			break;
			case "password_too_easy":
				$this->data['msg'] = "Password too easy. It must contain uppercase, lowercase, number, and special charactere like ( @ ! - _ , . )";
			break;
			case "username_taken":
				$this->data['msg'] = "Username already taken";
			break;
			case "username_too_short":
				$this->data['msg'] = "Username too short";
			break;
			case "username_too_long":
				$this->data['msg'] = "Username too long";
			break;
			case "username_bad_char":
				$this->data['msg'] = "Username characters can be min, maj, number, underscore, dash, or dot, noting else.";
			break;
			case "empty_email":
				$this->data['msg'] = "Email empty";
			break;
			case "invalid_email":
				$this->data['msg'] = "Email invalid";
			break;
			case "email_already_registered":
				$this->data['msg'] = "Email already registered";
			break;
			case "unset_field":
				if (!empty($params[1]))
					$this->data['msg'] = "Field " . $params[1] . " is required";
				else
					$this->data['msg'] = "All fields must be set";
			break;
			default:
				$this->data['msg'] = "Unknow error";
		endswitch;
		$this->render();
	}
}

