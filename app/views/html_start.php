<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>
		<?php echo $this->data['title']?> - CAMAGRU
	</title>
	<link rel="icon" type="image/png" href="<?php echo IMG_PATH;?>favicon.png">
<?php
	if (isset($this->files['css']))
		foreach($this->files['css'] as $filename)
			echo '
	<link rel="stylesheet" href="' . CSS_PATH . $filename . '.css">';
?>
</head>
<body>

<?php
	$this->load_view($this->files['views']['header']);
?>

<section id="wrap">
<?php
	if (isset($this->files['views']['left']))
		$this->load_view($this->files['views']['left']);

	$this->load_view($this->files['views']['center']);

	if (isset($this->files['views']['right']))
		$this->load_view($this->files['views']['right']);
?>
</section>
<?php
	$this->load_view($this->files['views']['footer']);
?>


<?php
	if (isset($this->files['js']))
		foreach($this->files['js'] as $filename)
		{
?>
	<script src="<?php echo JS_PATH . $filename;?>.js" type="text/javascript"></script>
<?php
		}
?>
</body>
</html>
