<?php

class editor extends Controller
{
	public function main($params = NULL)
	{

		// YOU MUST BE REGISTERD TO ACCED TO THIS SECTION

		$this->data['title'] = 'Editor - Main';

		$this->load->view('html_start', $this->data);
		$this->load->view('header', $this->data);
		$this->load->view('editor', $this->data);
		$this->load->view('footer', $this->data);
		$this->load->view('html_stop', $this->data);
	}
}
