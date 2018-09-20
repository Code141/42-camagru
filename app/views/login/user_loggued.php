<nav id="headlog">
	<p>
		Hello
		<?php echo $_SESSION['user']['username']; ?>
	</p>
	<a href="<?php echo SITE_ROOT; ?>/user/">
		<button id="glyph_user" class="header_button glyph"></button>
	</a>
	<a href="<?php echo SITE_ROOT; ?>/logout" id="logout">
		<button id="glyph_logout" class="header_button glyph"></button>
	</a>
</nav>
