<header>

<nav>
	<a href="<?php echo SITE_ROOT; ?>home">
		<h1 id="title">
			CAMAGRU
		</h1>
	</a>
	<a href="<?php echo SITE_ROOT; ?>gallery">
		<button id="glyph_gallery" class="header_button glyph"></button>
	</a>
	<a href="<?php echo SITE_ROOT; ?>editor">
		<button id="glyph_editor" class="header_button glyph"></button>
	</a>
</nav>

<div class="padder">
</div>

<?php
	if (is_loggued())
		$this->load_view('login/user_loggued');
	else
		$this->load_view('login/to_log');
?>

</header>

