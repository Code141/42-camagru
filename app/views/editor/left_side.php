<aside class="left">
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
</aside>
