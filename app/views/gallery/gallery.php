<section id="gallery">

	<div id="gallery_opt">
		<div id="paging">
<?php $this->view('gallery/paging', $data); ?>
		</div>
		<div id="opt_sort">
			Sort by : Date | Note | Size
		</div>
	</div>

	<div id="gal">

<?php
	foreach ($data['db']['all_media'] as $row => $all_media)
	{
?>
		<div class="gallery_element">
			<img src="<?php echo MEDIA_PATH . $all_media['id'];?>.png" width="300" height="200">
			<div id="info">
				<p id="username">
					user_id :<?php echo $all_media['username'];?>
				</p>
				<p id="date">
					<?php echo $all_media['date'];?>
				</p>
			</div>
		</div>
<?php
	}
?>
	</div>
</section>

