<header>

<nav>
	<a href="/camagru/home">
		<h1 id="title">
			CAMAGRU
		</h1>
	</a>
	<a href="/camagru/gallery">
		<img src="<?php echo IMG_PATH . "/glyphicons/glyphicons-139-picture.png"; ?>">
	</a>
	<a href="/camagru/editor">
		<img src="<?php echo IMG_PATH . "/glyphicons/glyphicons-12-camera.png"; ?>">
	</a>
</nav>

<div class="padder">
</div>

<?php
	if (is_loggued())
		$this->view('login/user_loggued', $data);
	else
		$this->view('login/to_log', $data);
?>

</header>

