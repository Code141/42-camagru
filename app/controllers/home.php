<?php

class home extends Controller
{
	public function main($params = NULL)
	{
		$this->data['title'] = 'Home - Main';

		$this->load->view('html_start', $this->data);
		$this->load->view('header', $this->data);
		$this->load->view('home', $this->data);
		$this->load->view('footer', $this->data);
		$this->load->view('html_stop', $this->data);
	}
}
