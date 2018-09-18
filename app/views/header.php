<header>
<nav>
	<h1 id="title">
		<a href="/camagru/home">
				CAMAGRU
		</a>
	</h1>
		<a href="/camagru/gallery">
			<img src="<?php echo IMG_PATH . "/glyphicons/glyphicons-139-picture.png"; ?>">
		</a>

		<a href="/camagru/editor">
			<img src="<?php echo IMG_PATH . "/glyphicons/glyphicons-12-camera.png"; ?>">
		</a>
	</nav>
	<?php
		if (isset($_SESSION['user']))
			$this->view('login/user_loggued', $data);
		else
			$this->view('login/to_log', $data);
	?>

</header>

