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
	for ($i = 0; $i < 40; $i++)
	{
?>

<div class="gallery_element">
	<img src="http://placekitten.com/<?php echo rand(100,200) . "/" . rand(100,200); ?>" width="300" height="200">
	<div id="info">
		<p id="username">
			Username
		</p>
		<p id="date">
			Date
		</p>
	</div>
</div>

<?php
	}
?>
</div>
</section>

