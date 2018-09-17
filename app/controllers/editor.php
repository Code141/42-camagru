<?php

class editor extends Controller
{
	public function	__construct()
	{
		if (empty($_SESSION['user']))
		{
			header('location:'.SITE_ROOT.'/login/restricted');
			die();
		}
		parent::__construct();
	}
	
	public function main($params = NULL)
	{
		$this->data['title'] = 'Editor - Main';

		$this->load->view('html_start', $this->data);
		$this->load->view('header', $this->data);

	//	$this->load->view('editor/left_side', $this->data);
		
		$this->load->view('editor/editor', $this->data);
		$this->load->script('js', 'webcam', $this->data);

		$this->load->view('editor/right_side', $this->data);
		$this->load->view('footer', $this->data);
		$this->load->view('html_stop', $this->data);
	}
}
