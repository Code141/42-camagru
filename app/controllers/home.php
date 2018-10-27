<?php

class home extends controller
{
	public function	__construct()
	{
		parent::__construct();
		$this->data['title'] = "Home";
		$this->files['css'][] = 'home';
	}

	public function main($params = NULL)
	{
		$this->files['views']['center'] = 'home';
		$this->render();
	}
}
