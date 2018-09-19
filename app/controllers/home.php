<?php

class home extends Controller
{
	public function	__construct()
	{
		$this->data['title'] = "Home";
		$this->data['css']['0'] = 'home';
		parent::__construct();
	}

	public function main($params = NULL)
	{
		$this->load->view('home');
	}
}
