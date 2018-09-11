<section id="gallery">

SORT BY

<?php
	for ($i = 1; $i < 15; $i++)
	{
?>

<div class="gallery">
    <img src="<?php echo MEDIA_PATH . "/" . $i . ".jpg"; ?>" width="300" height="200">
  <div class="desc">Username	Date</div>
</div>

<?php
	}
?>

</section>

