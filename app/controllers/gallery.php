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
		$this->load->script('php', 'like_bar');

		$this->data['offset'] = 20;
		$this->data['title'] = 'Home - Gal';

		/**/
		$page = intval($params['0']);
		$this->data['paging'] = ($page < 1) ? 1 : $page;

$nb_media = $this->load->model('media', 'count_media', $this->data);

		$this->data['paging_max'] = ceil($nb_media / $this->data['offset']);

		if ((($this->data['paging']) * $this->data['offset']) > $nb_media)
			$this->data['paging'] = $this->data['paging_max'];

		$this->data['start'] = ($this->data['paging'] - 1) * $this->data['offset'];

		if (is_loggued())
			$this->data['db']['all_media'] = $this->load->model('media', 'get_media_and_likes_by_user_from_to', $this->data);
		else
			$this->data['db']['all_media'] = $this->load->model('media', 'get_media_from_to', $this->data);
		/**/

		$this->files['views']['center'] = 'gallery/gallery';
		$this->files['views']['footer'] = 'gallery/paging';
	}






	public function focus($params = NULL)
	{
		$this->load->script('php', 'like_bar');
		if (!isset($params[0]))
		{
			$this->data["msg"] = "No media selected";
			die();
		}
		$this->data["id_media"] = intval($params[0]);
		if ($this->data["id_media"] < 1)
		{
			$this->data["msg"] = "Media Error";
			die();
		}

		$this->data['media'] = $this->load->model('media', 'get_media_by_id', $this->data);

		$this->data['media_like'] = $this->load->model('likes',  'get_like_by_media_id', $this->data);
		$this->data['media_comments'] = $this->load->model('comments', 'get_comments_by_media_id', $this->data);

		$this->data["global_grade"] = $this->data["id_media"] % 10;

		$this->files['css'][] = 'focus';
		$this->files['views']['center'] = 'gallery/focus';
	}
}
