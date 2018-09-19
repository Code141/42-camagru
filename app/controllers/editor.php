<?php

class editor extends Controller
{
	public function	__construct()
	{
		if (!is_loggued())
			redirect('/login/restricted');

		$this->data['title'] = 'Editor';
		$this->data['css']['0'] = 'editor';
		$this->data['js']['0'] = 'send_picture';
		parent::__construct();
	}

	public function main($params = NULL)
	{

		$this->data['user_id'] = $_SESSION['user']['id'];
		$this->data['db']['user_media'] =
			$this->load->model('media', 'get_media_by_user_id', $this->data);
		$this->data['db']['user_media'] =
			$this->data['db']['user_media']->fetchAll(PDO::FETCH_ASSOC);

		$this->load->view('editor/editor', $this->data);
		$this->load->view('editor/right_side', $this->data);
		$this->load->script('js', 'webcam', $this->data);
	}

	public function new_pic($params = NULL)
	{
		print_r($_POST);
		$id = $this->load->model('media', 'add_media');
		$filename = $id . ".png";
		$filepath = "app/assets/media/";
		$target = $filepath . $filename;
		move_uploaded_file( $_FILES['img']['tmp_name'], $target);
	}

}
