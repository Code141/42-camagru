<section id="gallery">

<?php
	foreach ($this->data['db']['all_media'] as $media)
	{
?>
		<div class="gallery_element">
			<img src="<?php echo MEDIA_PATH . "user_media/" . $media['id'];?>.png">
			<div id="info">
				<p id="username">
					user_id : <?php echo $media['username'];?>

				</p>
				<p id="date">
					<?php echo $media['date'];?>

				</p>
			</div>
		</div>
<?php
	}
?>
</section>

