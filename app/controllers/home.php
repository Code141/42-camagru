<?php

class home extends Controller
{
	public function	__construct()
	{
		$this->data['title'] = "Home";
		$this->files['css'][] = 'home';
		parent::__construct();
	}

	public function main($params = NULL)
	{
		$this->files['views'][] = 'home';
	}
}
