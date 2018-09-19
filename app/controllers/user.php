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


		$this->load->view('user', $this->data);

	}

	public function change($params = NULL)
	{

		echo '<section>';
		print_r($_POST);
		echo '</section>';

	}
}
