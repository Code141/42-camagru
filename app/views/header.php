<header>
	<h1 id="title">
		CAMAGRU
	</h1>
	<nav>
		<ul>
			<a href="/camagru/home">
				<img src="<?php echo IMG_PATH . "/glyphicons/glyphicons-21-home.png"; ?>">
			</a>
			<a href="/camagru/gallery">
				<img src="<?php echo IMG_PATH . "/glyphicons/glyphicons-157-show-thumbnails.png"; ?>">
			</a>
			<a href="/camagru/editor">
				<img src="<?php echo IMG_PATH . "/glyphicons/glyphicons-139-picture.png"; ?>">
			</a>
		</ul>
	</nav>
	<?php
		if (isset($_SESSION['user']))
			$this->view('login/user_loggued', $data);
		else
			$this->view('login/to_log', $data);
	?>

</header>

