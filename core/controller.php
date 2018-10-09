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
		if (!isset($this->files['views']['header']))
			$this->files['views']['header'] = 'header';
		if (!isset($this->files['views']['center']))
			$this->files['views']['center'] = '404';
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
		die ();
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
