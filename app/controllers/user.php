<?php

class user extends Controller
{
	public function	__construct()
	{
		if (!is_loggued())
			redirect('/login/restricted');
		$this->files['css'][] = 'user';
		parent::__construct();
	}

	public function main($params = NULL)
	{
		$this->data['title'] = 'User';
		$this->files['views'][] = 'user';
	}

	public function change($params = NULL)
	{
		echo '<section>';
		print_r($_POST);
		echo '</section>';
	}
}
