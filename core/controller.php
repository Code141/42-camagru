<?php

class Controller
{
	public function __construct()
	{
		$this->data['title'] = null;
		$this->data['user'] = null;

		$this->load = new Loader();
	}
}
