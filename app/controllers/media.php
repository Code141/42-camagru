<?php

class media extends controller_restricted
{
	public function	__construct()
	{
		parent::__construct();
	}

	private function remake_all_thumbs($params = NULL)
	{
		$this->load->script('php', 'pictures');
		$all_media = $this->load->model('media', 'get_all_media', $this->data);

		foreach ($all_media as $media)
		{
			$filename = $media['id'] . ".png";
			$filepath = "app/assets/media/user_media/";
			$target = $filepath . $filename;
			$target_thumb = $filepath . "thumbs/" . $filename;
			$pic = imagecreatefromstring(file_get_contents($target));
			$thumb = make_thumb($pic, 300, 300);
			if ($thumb === NULL)
			{
				$this->data['msg'] = "Can't create thumb " . $media['id'];
				die ();
			}
			imagepng($thumb, $target_thumb);
		}
	}

	public function add($params = NULL)
	{
		$this->load->script('php', 'pictures');
		$this->data['msg'] = "Image sended";

		if (isset($_POST['masks']))
			$mask_id = intval($_POST['masks']);
		else
			$mask_id = 1;
		$mask = "app/assets/media/masks/" . $mask_id . ".png";
		if (!is_readable($mask))
		{
			$this->data['msg'] = "Incorrect mask";
			die();
		}

		if (!isset($_FILES['img']) || empty($_FILES['img']))
		{
			$this->data['msg'] = "No file sent";
			die();
		}
		$file = $_FILES['img'];
		if (($err = check_file($file)) !== TRUE)
		{
			$this->data['msg'] = $err;
			die();
		}
		$image = $file['tmp_name'];

		$new_pic = resize_and_fusion($image, $mask);
		if ($new_pic === NULL)
		{
			$this->data['msg'] = "Can't make fusion image";
			die ();
		}
		$thumb = make_thumb($new_pic, 300, 300);
		if ($thumb === NULL)
		{
			$this->data['msg'] = "Can't create thumb";
			die ();
		}

		$id = $this->load->model('media', 'add_media');
		$filename = $id . ".png";
		$filepath = "app/assets/media/user_media/";
		$target = $filepath . $filename;
		$target_thumb = $filepath . "thumbs/" . $filename;

		imagepng($new_pic, $target);
		imagepng($thumb, $target_thumb);

		$this->data['msg'] = "Image correctly treated";
		redirect_on_last ();
	}

	public function delete($params = NULL)
	{
		if (!isset($params[0]))
		{
			$this->data['msg'] = "Media invalid";
			die ();
		}

		$this->data['id_media'] = intval($params[0]);
		$media = $this->load->model('media', 'get_media_by_id', $this->data);

		if (!isset($media))
		{
			$this->data['msg'] = "Media doesn't exist !";
			die ();
		}

		if ($media['id_user'] != loggued_id())
		{
			$this->data['msg'] = "This media is not your property !";
			die ();
		}

		$this->data['msg'] = "ready to delete " .$filepath . $this->data['id_media'];
		$media = $this->load->model('media', 'delete_media', $this->data);
		$filename = $media['id'] . ".png";
		$filepath = "app/assets/media/user_media/";

		if (is_readable($filepath . $filename))
			unlink($filepath . $filename);
		if (is_readable($filepath ."thumbs/". $filename))
			unlink($filepath . "thumbs/" . $filename);

		// delete like & comment ?
		redirect_on_last ();
	}


	public function like($params = NULL)
	{
		$this->load->script('php', 'mail');
		$this->data["id_media"] = intval($params[0]);
		$this->data["grade"] = intval($params[1]);
		if ($this->data["grade"] < 0 || $this->data["grade"] > 10 )
		{
			$this->data['msg'] = "Invalide grade !";
			die ();
		}
		$media = $this->load->model('media', 'get_media_by_id', $this->data);
		if ($media == NULL)
		{
			$this->data['msg'] = "Media doesn't exist !";
			die ();
		}

		if ($this->load->model('likes', 'has_already_liked_this', $this->data))
		{
			$this->data['msg'] = "Like updated !";
			$this->load->model('likes', 'update_like_on_media_by_id', $this->data);
		}
		else
		{
			$this->data['msg'] = "You liked it !";
			$this->load->model('likes', 'add_like_on_media_by_id', $this->data);
			email_like(loggued_id(), $media["id_user"], $media["id"], $this->data['grade']);
		}
		redirect_on_last ();
	}

	public function comment_media($params = NULL)
	{
		$this->load->script('php', 'mail');
		if (!isset($_POST['comment']))
		{
			$this->data['msg'] = "Comment empty !";
			die ();
		}
		$this->data['comment'] = $_POST['comment'];


		if (empty($this->data['comment']))
		{
			$this->data['msg'] = "Comment empty !";
			die ();
		}

		if (strlen($this->data['comment']) > 300)
		{
			$this->data['msg'] = "Comment too large (300 characteres max)";
			die ();
		}
		$url_regex = "/https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%\_\+.~#?&\/\/=]*)/";
		if (preg_match($url_regex, $this->data['comment']))
		{
			$this->data['msg'] = "Comment musn't contain url";
			die ();
		}
		$this->data["id_media"] = intval($params[0]);
		$media = $this->load->model('media', 'get_media_by_id', $this->data);
		if ($media == NULL)
		{
			$this->data['msg'] = "Media doesn't exist !";
			die ();
		}
		$this->load->model('comments', 'comment_media', $this->data);
		$this->data['msg'] = "Thanks for your comment !";
		email_comment(loggued_id(), $media["id_user"], $media["id"], $this->data['comment']);
		redirect_on_last ();
	}
}
