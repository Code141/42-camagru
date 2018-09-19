<aside class="right">

	<div id="user_picturs">
		<progress min="0" max="100" value="0">0% complete</progress>
		<img id="picture">



<?php
	foreach ($data['db']['user_media'] as $row => $user_media)
	{
?>
		<img src="<?php echo MEDIA_PATH . $user_media['id'];?>.png">
<?php
	}
?>

	</div>

</aside>

