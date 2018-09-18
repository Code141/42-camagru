<div id="user_loggued">
	<nav>
		<p>
		Hello
		<?php echo $_SESSION['user']['firstname']; ?>
		<?php echo $_SESSION['user']['lastname']; ?>
		</p>

		<a href="<?php echo SITE_ROOT; ?>/user/">
			<img src="<?php echo IMG_PATH . "glyphicons/glyphicons-353-nameplate.png"; ?>">
		</a>

		<a href="<?php echo SITE_ROOT; ?>/login/logout" id="logout">
			<img src="<?php echo IMG_PATH . "/glyphicons/glyphicons-388-log-out.png"; ?>">
		</a>

	</nav>
</div>

