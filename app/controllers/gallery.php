<?php

class gallery extends Controller
{
	public function main($params = NULL)
	{
		$this->data['title'] = 'Home - Gal';

		$this->load->view('html_start', $this->data);
		$this->load->view('header', $this->data);
		$this->load->view('gallery', $this->data);
		$this->load->view('footer', $this->data);
		$this->load->view('html_stop', $this->data);
	}
}
