<?php

class user extends controller_restricted
{
	public function	__construct()
	{
		parent::__construct();

		$this->data['title'] = 'User';
		$this->files['css'][] = 'user';
	}

	public function main($params = NULL)
	{
		$this->files['views']['center'] = 'user';
	}

	public function	update_email($params = NULL)
	{
		$this->load->script('php', 'login');


		if (is_registered_email($this->data['register']['email']))
			redirect("user/error/email_already_registered");

		$this->data['msg'] = "";
		$this->files['views']['center'] = 'msg';
		redirect("user");
	}

	public function	update_username($params = NULL)
	{
		$this->files['views']['center'] = 'msg';
		$this->load->script('php', 'login');

		$this->data['new_username'] = $_POST['username'];
		if (is_registered_username($this->data['new_username']))
		{
			$this->data['msg'] = "FAIL : username already taken";
			return;
		}
		
		$this->load->model('user', 'update_username', $this->data);
		$_SESSION['user']['username'] = $this->data['new_username'];

		$this->data['msg'] = "Updated username";

		redirect("user");
	}

	public function	update_password($params = NULL)
	{
		$this->load->script('php', 'login');

		echo $password;
		echo $passwordbis;

		$this->files['views']['center'] = 'msg';
		if (($err = check_password($password, $passwordbis)) !== TRUE)
		{
			$this->data['msg'] = $err;
			redirect("user");
		}


	}

	public function	update_notifications($params = NULL)
	{
		$this->load->script('php', 'login');

		echo $n_like;
		echo $n_comm;
		echo $n_msg;

		$this->data['msg'] = "";
		$this->files['views']['center'] = 'msg';
		redirect("user");
	}
	
}
