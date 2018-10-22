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

		$page = intval($params['0']);
		$this->data['paging'] = ($page < 1) ? 1 : $page;

		$nb_media = $this->load->model('media', 'count_media', $this->data);
		$this->data['paging_max'] = ceil($nb_media / $this->data['offset']);
		if ((($this->data['paging']) * $this->data['offset']) > $nb_media)
			$this->data['paging'] = $this->data['paging_max'];
		$this->data['start'] = ($this->data['paging'] - 1) * $this->data['offset'];
		$this->data['db']['all_media'] = $this->load->model('media', 'get_all_media', $this->data);

		$this->files['views']['center'] = 'gallery/gallery';
		$this->files['views']['footer'] = 'gallery/paging';
	}

	public function focus($params = NULL)
	{
		if (!isset($params[0]))
		{
			$this->data["msg"] = "No media selected";
			die();
		}

		$this->data["media_id"] = intval($params[0]);

		$this->files['css'][] = 'focus';
		$this->files['views']['center'] = 'gallery/focus';
	}
}
