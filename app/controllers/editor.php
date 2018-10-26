<?php

class editor extends controller_restricted
{
	public function	__construct()
	{
		parent::__construct();

		$this->data['title'] = 'Editor';
		$this->files['css'][] = 'editor';
	}

	public function main($params = NULL)
	{
		$this->data['id_user'] = $_SESSION['user']['id'];
		$this->data['db']['user_media'] =
			$this->load->model('media', 'get_media_by_user_id', $this->data);

		$this->data['db']['masks'] =
			$this->load->model('media', 'get_all_masks', $this->data);

		$this->files['js'][] = 'send_picture';
		$this->files['js'][] = 'webcam';

		$this->files['views']['left'] = 'editor/left_side';
		$this->files['views']['center'] = 'editor/editor';
		$this->files['views']['right'] = 'editor/right_side';
	}
}
