<nav id="headlog">
	<a href="<?php echo SITE_ROOT; ?>/user/">
		<p>
			Hello
			<?php echo $_SESSION['user']['username']; ?>
		</p>
		<img src="<?php echo IMG_PATH . "glyphicons/glyphicons-353-nameplate.png"; ?>">
	</a>
	<a href="<?php echo SITE_ROOT; ?>/logout" id="logout">
		<img src="<?php echo IMG_PATH . "/glyphicons/glyphicons-388-log-out.png"; ?>">
	</a>
</nav>
