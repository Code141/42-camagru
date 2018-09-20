<header>

<nav>
	<a href="/camagru/home">
		<h1 id="title">
			CAMAGRU
		</h1>
	</a>
	<a href="/camagru/gallery">
		<button id="glyph_gallery" class="header_button glyph"></button>
	</a>
	<a href="/camagru/editor">
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

