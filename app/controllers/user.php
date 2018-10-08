<?php

class user extends controller_restricted
{
	public function	__construct()
	{
		parent::__construct();
		$this->data['title'] = 'User';
		$this->files['css'][] = 'user';
	}

	public function main($params = NULL)
	{
		$this->files['views']['center'] = 'user';
	}

	public function change($params = NULL)
	{
		echo '<section style="color:white;">';
		print_r($_POST);
		echo '</section>';
	}
}
