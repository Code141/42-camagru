<?php

class Logout extends Controller
{

	public function __construct($params = NULL)
	{
		if (!is_loggued())
			redirect('/');
		parent::__construct();
	}

	public function main($params = NULL)
	{
		$this->data = $this->load->script('php', 'login');
		logout();
	}

	public function __destruct()
	{
		// surcharge parent methode
	}
}
