<?php

class Controller
{
	public $data = array();
	public $files = array();

	public function __construct()
	{
		$this->load = new Loader();
	}

	private function load_view($file)
	{
		require(APP_PATH.'views/'.$file.'.php');
	}

	public function __destruct()
	{
		if (!is_ajax_query())
		{
			array_unshift($this->files['views'], 'header');
			array_unshift($this->files['views'], 'html_start');
			$this->files['views'][] = 'footer';
			$this->files['views'][] = 'html_stop';
		}
		if (isset($this->files['views']) || !empty($this->files['views']))
			foreach($this->files['views'] as $filename)
				$this->load_view($filename);
	}
}

class Controller_restricted extends Controller
{
	public function __construct()
	{
		if (!is_loggued())
		{
			redirect('/login/restricted');
		}
		else
			parent::__construct();
	}
}
class Controller_public_only extends Controller
{
	public function __construct()
	{
		if (is_loggued())
			redirect('/user');
		else
			parent::__construct();
	}
}
