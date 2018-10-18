<?php

class gallery extends controller
{
	public function	__construct()
	{
		parent::__construct();

		$this->data['title'] = "Gallery";
		$this->files['css'][] = 'gallery';
	}

	public function main($params = NULL)
	{
		$this->data['offset'] = 20;
		$this->data['title'] = 'Home - Gal';
		// checker si CHAR => 1e1 : 10 | 0xa : 16
		$params['0'] = intval($params['0']);
		$this->data['paging'] = ($params['0'] < 1) ? 1 : $params['0'];
		$this->data['db']['media_count'] =
			$this->load->model('media', 'media_count', $this->data);
		$this->data['paging_max'] = ceil($this->data['db']['media_count'] / $this->data['offset']);
		if ((($this->data['paging']) * $this->data['offset']) > $this->data['db']['media_count'])
			$this->data['paging'] = $this->data['paging_max'];
		$this->data['start'] = ($this->data['paging'] - 1) * $this->data['offset'];
		$this->data['db']['all_media'] =
			$this->load->model('media', 'get_all_media', $this->data);
		$this->data['db']['all_media'] = $this->data['db']['all_media']->fetchAll();

		// PROTECT PARAM
		// ATOY NEGATIVE NUMBERS AND NMAX IN BDD
		// PROTECT INJECTION BY URL
		//

		$this->files['views']['center'] = 'gallery/gallery';
		$this->files['views']['footer'] = 'gallery/paging';
	}
}
