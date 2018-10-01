<?php

class user extends controller_restricted
{
	public function	__construct()
	{
		parent::__construct();
		$this->files['css'][] = 'user';
	}

	public function main($params = NULL)
	{
		$this->data['title'] = 'User';
		$this->files['views']['center'] = 'user';
	}

	public function change($params = NULL)
	{
		echo '<section style="color:white;">';
		print_r($_POST);
		echo '</section>';
	}
}
