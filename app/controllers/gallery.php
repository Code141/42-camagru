<?php

class gallery extends controller
{
	public function	__construct()
	{
		parent::__construct();

		$this->data['title'] = "Gallery";
		$this->files['css'][] = 'gallery';
		$this->files['css'][] = 'paging';
	}

	public function main($params = NULL)
	{
		$this->data['offset'] = 30;
		$page = 0;
		if (isset($_GET['page']))
			$page = intval($_GET['page']);
		$this->data['paging'] = ($page < 1) ? 1 : $page;
		$nb_media = $this->load->model('media', 'count_media', $this->data);
		$this->data['paging_max'] = ceil($nb_media / $this->data['offset']);
		if ((($this->data['paging']) * $this->data['offset']) > $nb_media)
			$this->data['paging'] = $this->data['paging_max'];
		$this->data['start'] = ($this->data['paging'] - 1) * $this->data['offset'];
		$this->data['db']['all_media'] = $this->load->model('media', 'get_media_from_to', $this->data);

		$this->data['title'] = 'Home - Gal';
		$this->files['views']['center'] = 'gallery/gallery';
		$this->files['views']['footer'] = 'gallery/paging';

		$this->render();
	}

	public function focus($params = NULL)
	{
		if (!isset($params[0]))
			$this->fail ("No media selected");
		$this->data["id_media"] = intval($params[0]);
		$this->data['media'] = $this->load->model('media', 'get_media_by_id', $this->data);
		if (!$this->data["media"])
			$this->fail ("Media Error");
		$this->data['db']['comments'] = $this->load->model('comments', 'get_comments_by_media_id', $this->data);

		$this->files['css'][] = 'focus';
		$this->files['views']['center'] = 'gallery/focus';

		$this->render();
	}
	
	public function user($params = NULL)
	{
		if (isset($params[0]))
			$this->data['username'] = $params[0];
		else if (is_loggued())
			$this->data['username'] = loggued_username();
		else
			$this->fail ("No user selected");
		$this->data["db"]["user"] = $this->load->model('user', 'get_user_by_username', $this->data);
		if ($this->data["db"]["user"] == NULL)
			$this->fail ("User doesn't existe");
		$this->data['id_user'] = $this->data["db"]["user"]['id'];
		$this->data['db']['user_media'] =
			$this->load->model('media', 'get_media_by_user_id', $this->data);

		$this->data['title'] = 'User';
		$this->files['css'][] = 'user';
		$this->files['views']['center'] = 'gallery/user';

		$this->render();
	}
}
