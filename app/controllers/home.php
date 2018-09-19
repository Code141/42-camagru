<?php

class home extends Controller
{
	public function	__construct()
	{
		$this->data['title'] = "Home";
		parent::__construct();
	}

	public function main($params = NULL)
	{
		$this->load->view('home');
	}
}
