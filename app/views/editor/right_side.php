<aside class="right">
	<div id="user_picturs">

<?php
	foreach ($this->data['db']['user_media'] as $user_media)
	{
?>
		<img src="<?php echo MEDIA_PATH . "user_media/" . $user_media['id'];?>.png">
<?php
	}
?>

<!--
		<button id="glyph_visibility" class="glyph"></button>
		<button id="visibility_none" class="glyph"></button>
-->

	</div>
</aside>

