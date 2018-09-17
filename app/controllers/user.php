<?php

class user extends Controller
{
	public function	__construct()
	{
		if (empty($_SESSION['user']))
		{
			header('location:'.SITE_ROOT.'/home');
			die();
		}
		parent::__construct();
	}
	public function main($params = NULL)
	{
		$this->data['title'] = 'User';

		$this->load->view('html_start', $this->data);
		$this->load->view('header', $this->data);

		$this->load->view('user', $this->data);

		$this->load->view('footer', $this->data);
		$this->load->view('html_stop', $this->data);
	}

	public function change($params = NULL)
	{

		$this->load->view('html_start', $this->data);
		$this->load->view('header', $this->data);

		echo '<section>';
		print_r($_POST);
		echo '</section>';

		$this->load->view('footer', $this->data);
		$this->load->view('html_stop', $this->data);
	}
}
