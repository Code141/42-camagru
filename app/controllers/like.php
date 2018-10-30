<?php

class like extends controller_restricted
{
	public function	__construct()
	{
		parent::__construct();
	}

	public function add($params = NULL)
	{
		$this->load->script('php', 'mail');
		$this->data["id_media"] = intval($params[0]);
		$this->data["grade"] = intval($params[1]);
		if ($this->data["grade"] < 0 || $this->data["grade"] > 10 )
			$this->fail("Invalide grade !");
		$media = $this->load->model('media', 'get_media_by_id', $this->data);
		if ($media == NULL)
			$this->fail("Media doesn't exist !");
		if ($this->load->model('likes', 'has_already_liked_this', $this->data))
			$this->load->model('likes', 'update_like_on_media_by_id', $this->data);
		else
			$this->load->model('likes', 'add_like_on_media_by_id', $this->data);
		email_like(loggued_id(), $media["id_user"], $media["id"], $this->data['grade']);
		$this->success("You liked it");
	}
}
