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
		$this->data['user_id'] = $_SESSION['user']['id'];
		$this->data['db']['user_media'] =
			$this->load->model('media', 'get_media_by_user_id', $this->data);
		$this->data['db']['user_media'] =
			$this->data['db']['user_media']->fetchAll(PDO::FETCH_ASSOC);

		$this->files['js'][] = 'send_picture';
		$this->files['js'][] = 'webcam';
		$this->files['views'][] = 'editor/editor';
		$this->files['views'][] = 'editor/right_side';
	}

	public function new_pic($params = NULL)
	{
		print_r('picture recieved: starting compute');
		$id = $this->load->model('media', 'add_media');
		$filename = $id . ".png";
		$filepath = "app/assets/media/";
		$target = $filepath . $filename;
		move_uploaded_file($_FILES['img']['tmp_name'], $target);
	}
}
