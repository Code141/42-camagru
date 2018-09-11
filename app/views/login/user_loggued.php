<div id="user_loggued">
	<nav>
		Hello
		<?php echo $_SESSION['user']['firstname']; ?>
		<?php echo $_SESSION['user']['lastname']; ?>

		<a href="<?php echo SITE_ROOT; ?>/user/">
			<img src="<?php echo IMG_PATH . "glyphicons/glyphicons-138-cogwheels.png"; ?>">
		</a>

		<a href="<?php echo SITE_ROOT; ?>/login/logout">
			<img src="<?php echo IMG_PATH . "/glyphicons/glyphicons-388-log-out.png"; ?>">
		</a>
	</nav>
</div>

