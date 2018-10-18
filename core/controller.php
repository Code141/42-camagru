<?php

class controller
{
	public $data = array();
	public $files = array(
		"views" => array(),
		"css" => array(),
		"js" => array()
	);

	public function __construct()
	{
		$this->reset_controller();
		$this->load = new Loader();

	}

	protected function reset_controller()
	{
		$this->data = array();
		$this->files = array(
			"views" => array(),
			"css" => array(),
			"js" => array()
		);
		$this->files['js'][] = 'init';
	}

	protected function load_view($file)
	{
		require(APP_PATH.'views/'.$file.'.html');
	}

	protected function	render()
	{
		if (!is_ajax_query())
			$this->html_encapsulation();
		else
			if (isset($this->files['views']) || !empty($this->files['views']))
				foreach($this->files['views'] as $filename)
					$this->load_view($filename);

	}

	private function html_encapsulation()
	{
		$basic_css[] = 'reset';
		$basic_css[] = 'style';
		$basic_css[] = 'input';
		$basic_css[] = 'glyphicons';

		$this->files['css'] = array_merge($basic_css, $this->files['css']);

		$this->files['js'][] = 'lunch';
//		if (empty($this->data['msg']))
//			$this->data['msg'] = "No msg";
		if (!isset($this->files['views']['header']))
			$this->files['views']['header'] = 'header';
		if (!isset($this->files['views']['center']))
			$this->files['views']['center'] = 'msg';
		if (!isset($this->files['views']['footer']))
			$this->files['views']['footer'] = 'footer';

		$this->load_view("default_layout");
	}

	public function error_404()
	{
		$this->reset_controller();
		$this->data['title'] = "Error 404";
		$this->data['error_404'] = "Page not found";
		$this->files['views'][] = '404';
		http_response_code(404);
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
				$this->data['msg'] = "Password too easy<br>it must contain uppercase, lowercase, number, and special charactere like ( @ ! - _ , . )";
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
	}

	public function __destruct()
	{
		$this->render();
	}
}

class controller_restricted extends controller
{
	public function __construct()
	{
		$this->data['msg'] = "Restricted area";
		if (!is_loggued())
			redirect('login/restricted');
		else
			parent::__construct();
	}
}

class controller_public_only extends controller
{
	public function __construct()
	{
		if (is_loggued())
			redirect('user');
		else
			parent::__construct();
	}
}
