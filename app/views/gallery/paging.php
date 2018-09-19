<?php

	$offset = 5;
	$i = $data['paging'] - $offset;
	$i = ($i > 1) ? $i : 1;

	while ($i <= $data['paging'] + $offset && $i <= $data['paging_max'])
	{
		if ($i == $data['paging'])
		{
?>
	<a class="paging_center" href="<?php echo SITE_ROOT; ?>/gallery/main/<?php echo $i; ?>">
		<?php echo $i; ?>
	</a>

<?php
		}
		else
		{
?>
	<a href="<?php echo SITE_ROOT; ?>/gallery/main/<?php echo $i; ?>">
		<?php echo $i; ?>
	</a>
<?php
		}
		$i++;
	}
?>
