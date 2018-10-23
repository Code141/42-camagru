<?php

class media extends controller_restricted
{
	public function	__construct()
	{
		parent::__construct();
/*
		$this->data['title'] = "Gallery";
		$this->files['css'][] = 'gallery';
 */
	}

	public function add($params = NULL)
	{
		// move and normalise
		// EDITOR / NEW_PIC
		// here
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

		$this->data['msg'] = "ready to delete " .$filepath . $filename;

		$media = $this->load->model('media', 'delete_media', $this->data);
		$filename = $media['id'] . ".png";
		$filepath = "app/assets/media/user_media/";
		unlink($filepath . $filename);


		// delete like & comment ?
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
			die ();
		}

		$this->data['msg'] = "You liked it !";
		$this->load->model('likes', 'add_like_on_media_by_id', $this->data);
		email_like(loggued_id(), $media["id_user"], $media["id"], $this->data['grade']);
	}

	public function comment($params = NULL)
	{
		$media_id = $params[0];
		$comment = $_POST["comment"];
		$this->data['msg'] = "NICE VOTE ! ";
	}
}
