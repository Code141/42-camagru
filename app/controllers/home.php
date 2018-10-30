<?php

class home extends controller
{
	public function	__construct()
	{
		parent::__construct();
	}

	public function main($params = NULL)
	{
		$this->data['title'] = "Home";
		$this->files['css'][] = 'home';
		$this->files['views']['center'] = 'home';

		$this->render();
	}
}
