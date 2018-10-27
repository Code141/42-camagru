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
		$this->data['msg'] = "";
		$this->files['js'][] = 'init';
	}

	protected function load_view($file)
	{
		require(APP_PATH.'views/'.$file.'.html');
	}

	private function protect_html_injection(array $data)
	{
		foreach ($data as $key => $value)
			if (is_string($value))
				$data[$key] = htmlspecialchars($value);
			else if (is_array($value))
				$data[$key] = $this->protect_html_injection($value);
			else
				$data[$key] = $value;
			return ($data);
	}

	protected function	render()
	{
		$this->data = $this->protect_html_injection($this->data);
		if (!is_ajax_query())
			$this->html_encapsulation();
		else
			if (isset($this->files['views']) || !empty($this->files['views']))
				foreach($this->files['views'] as $filename)
					$this->load_view($filename);
	}

	protected function last_url()
	{
		$_SESSION['last_url']['controller'] = $controller;
		$_SESSION['last_url']['action'] = $action;
		$_SESSION['last_url']['params'] = $params;
	}

	private function html_encapsulation()
	{
		$basic_css[] = 'reset';
		$basic_css[] = 'style';
		$basic_css[] = 'input';
		$basic_css[] = 'glyphicons';

		$this->files['css'] = array_merge($basic_css, $this->files['css']);

		$this->files['js'][] = 'lunch';
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
		$this->files['views']['center'] = '404';
		http_response_code(404);
		$this->render();
	}

	protected function fail($msg = "Fail for unknow reason")
	{
		$this->reset_controller();
		$this->data['title'] = "Fail";
		$this->data['msg'] = $msg;
		$this->files['views']['center'] = 'msg';
		redirect_on_last();
		die ();
	}

	protected function success($msg = "Success")
	{
		$this->reset_controller();
		$this->data['title'] = "Success";
		$this->data['msg'] = $msg;
		$this->files['views']['center'] = 'msg';
		redirect_on_last();
		die ();
	}

	public function __destruct()
	{
	}
}

class controller_restricted extends controller
{
	public function __construct()
	{
		$this->data['msg'] = "You must be logged in !";
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
		$this->data['msg'] = "You are already loggued";
		if (is_loggued())
			redirect('settings');
		else
			parent::__construct();
	}
}
