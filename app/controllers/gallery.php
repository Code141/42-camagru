<?php

class gallery extends Controller
{
	public function main($params = NULL)
	{
		$this->data['title'] = 'Home - Gal';

		// checker si CHAR => 1e1 : 10 | 0xa : 16
		$params['0'] = intval($params['0']);
		$this->data['paging'] = ($params['0'] < 1) ? 1 : $params['0'];


		// PROTECT PARAM
		// ATOY NEGATIVE NUMBERS AND NMAX IN BDD
		// PROTECT INJECTION BY URL

		$this->load->view('html_start', $this->data);
		$this->load->view('header', $this->data);
		$this->load->view('gallery/gallery', $this->data);
		$this->load->view('footer', $this->data);
		$this->load->view('html_stop', $this->data);
	}
}
