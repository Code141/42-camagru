<?php

class logout extends controller
{
	public function __construct($params = NULL)
	{
		// prevent all possible called methodes
		$_SESSION['user'] = NULL;
		$_SESSION = array();
		session_destroy();
		redirect('');
	}

	public function main($params = NULL)
	{
		// prevent systematique 404
	}

	public function __destruct()
	{
		// prevent rendering
	}
}
