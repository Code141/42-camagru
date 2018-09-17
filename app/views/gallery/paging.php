<?php

	$offset = 5;

	$i = $data['paging'] - $offset;
	$i = ($i > 1) ? $i : 1;

	while ($i < $data['paging'])
	{

?>

	<a href="<?php echo SITE_ROOT; ?>/gallery/main/<?php echo $i; ?>">
		<?php echo $i; ?>
	</a>

<?php
		$i++;
	}
?>

	<a class="paging_center" href="<?php echo SITE_ROOT; ?>/gallery/main/<?php echo $i; ?>">
		<?php echo $i; ?>
	</a>

<?php
	$i = $data['paging'] + 1;
	while ($i <= $data['paging'] + $offset)
	{
?>

		<a href="<?php echo SITE_ROOT; ?>/gallery/main/<?php echo $i; ?>">
			<?php echo $i; ?>
		</a>

<?php
		$i++;
	}
?>
