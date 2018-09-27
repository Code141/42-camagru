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
	}

	protected function load_view($file)
	{
		require(APP_PATH.'views/'.$file.'.php');
	}

	protected function	render()
	{
		if (isset($this->files['views']) || !empty($this->files['views']))
			foreach($this->files['views'] as $filename)
				$this->load_view($filename);
	}

	private function html_encapsulation()
	{
		array_unshift($this->files['views'], 'header');
		array_unshift($this->files['views'], 'html_start');
		$this->files['views'][] = 'footer';
		$this->files['views'][] = 'html_stop';

		$this->files['css'][] = 'reset';
		$this->files['css'][] = 'style';
		$this->files['css'][] = 'input';
		$this->files['css'][] = 'glyphicons';
	}

	public function error_404()
	{
		$this->reset_controller();
		$this->data['title'] = "Error 404";
		$this->data['error_404'] = "Page not found";
		$this->files['views'][] = '404';
		http_response_code(404);
		die ();
	}

	public function __destruct()
	{
		if (!is_ajax_query())
			$this->html_encapsulation();
		$this->render();
	}
}

class controller_restricted extends controller
{
	public function __construct()
	{
		if (!is_loggued())
		{
			http_response_code(403); // DON'T WORK YET
			redirect('login/restricted');
		}
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
