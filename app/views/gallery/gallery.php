<section id="gallery">

	<div id="gallery_opt">
		<div id="paging">
<?php $this->load_view('gallery/paging'); ?>
		</div>
		<div id="opt_sort">
			Sort by : Date | Note | Size
		</div>
	</div>

	<div id="gal">

<?php
	foreach ($this->data['db']['all_media'] as $media)
	{
?>
		<div class="gallery_element">
			<img src="<?php echo MEDIA_PATH . $media['id'];?>.png" width="300" height="200">
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
	</div>
</section>

