<aside class="right">
	<div id="user_picturs">
		<progress min="0" max="100" value="0">0% complete</progress>
		<img id="picture">

<?php
	foreach ($this->data['db']['user_media'] as $user_media)
	{
?>
		<img src="<?php echo MEDIA_PATH . $user_media['id'];?>.png">

<!--
		<button id="glyph_visibility" class="glyph"></button>
		<button id="visibility_none" class="glyph"></button>
-->

<?php
	}
?>

	</div>
</aside>

