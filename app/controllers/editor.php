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

	private function check_file($file, $authorized_type, $max_size)
	{
		try
		{
			if (!isset($file['error']) || is_array($file['error']))
				throw new RuntimeException('Invalid parameters.');

			switch ($file['error'])
			{
			case UPLOAD_ERR_OK:
				break;
			case UPLOAD_ERR_NO_FILE:
				throw new RuntimeException('No file sent.');
			case UPLOAD_ERR_INI_SIZE:
			case UPLOAD_ERR_FORM_SIZE:
				throw new RuntimeException('Exceeded filesize limit.');
			default:
				throw new RuntimeException('Unknown errors.');
			}

			if ($file['size'] > $max_size)
				throw new RuntimeException('Exceeded filesize limit.');

			$finfo = new finfo(FILEINFO_MIME_TYPE);
			$ext = array_search($finfo->file($file['tmp_name']), $authorized_type, true);
			if (false === $ext)
				throw new RuntimeException('Invalid file format.');

		}
		catch (RuntimeException $e)
		{

			echo $e->getMessage();
			return (FALSE);

		}
		return (TRUE);
	}

	public function new_pic($params = NULL)
	{
		$max_size = 10000000; // 10 MO
		$authorized_type = array(
			'jpg' => 'image/jpeg',
			'png' => 'image/png',
			'gif' => 'image/gif'
		);

		$file = $_FILES['img'];
		if (!$this->check_file($file, $authorized_type, $max_size))
			die();

		$image = $file['tmp_name'];
		$mask = "app/assets/media/masks/4.png";

		$dest = imagecreatefromstring(file_get_contents($image));
		$src = imagecreatefromstring(file_get_contents($mask));


		$dest_size = getimagesize($image);
		$src_size = getimagesize($mask);

		$dest_w = $dest_size[0];
		$dest_h = $dest_size[1];

		$src_w = $src_size[0];
		$src_h = $src_size[1];

		$src_x = 0;
		$src_y = 0;
		$dest_x = 0;
		$dest_y = 0;

		imagecopyresampled(
			$dest, $src,
			$dest_x, $dest_y,
			$src_x, $src_y,
			$dest_w, $dest_h,
			$src_w, $src_h
		);

		$id = 134; // $this->load->model('media', 'add_media');
		$filename = $id . ".png";
		$filepath = "app/assets/media/user_media/";
		$target = $filepath . $filename;
		imagepng($dest, $target);
	}
}
