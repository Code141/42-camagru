<aside class="left">
	<form id="mask" action="<?php echo SITE_ROOT; ?>editor/new_pic" method="POST" enctype="multipart/form-data">
		<label for="img">
			UPLOAD FILE HERE
		</label>
		<!--
		<input id="img" type="file" name="img" accept="image/*" required>
		-->
		<input id="img" type="file" name="img" required>
		<input type="submit" name="upload_btn" value="upload">

<?php
	foreach ($this->data['db']['masks'] as $mask)
	{
?>

		<input type="radio" name="masks" id="mask_<?php echo $mask['id'];?>" value="<?php echo $mask['id'];?>">
		<label for="mask_<?php echo $mask['id'];?>">
			<img src="<?php echo MEDIA_PATH . "masks/" . $mask['id'];?>.png">
		</label>
<?php
	}
?>

	</form>
</aside>
