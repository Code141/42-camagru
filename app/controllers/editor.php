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


		$this->data['db']['masks'] =
			$this->load->model('media', 'get_all_masks', $this->data);

		$this->data['db']['masks'] =
			$this->data['db']['masks']->fetchAll(PDO::FETCH_ASSOC);

		$this->files['js'][] = 'send_picture';
		$this->files['js'][] = 'webcam';

		$this->files['views']['left'] = 'editor/left_side';
		$this->files['views']['center'] = 'editor/editor';
		$this->files['views']['right'] = 'editor/right_side';
		$this->files['views']['footer'] = 'editor/upload_file';
	}

	public function new_pic($params = NULL)
	{
		/*CHECKER SI UNE PHOTO ARRIVE*/

		print_r('picture recieved: starting compute');

		$id = $this->load->model('media', 'add_media');
		$filename = $id . ".png";
		$filepath = "app/assets/media/user_media/";
		$target = $filepath . $filename;


		move_uploaded_file($_FILES['img']['tmp_name'], $target);

	}
}
