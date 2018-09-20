<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>
		<?php echo $this->data['title']?> - CAMAGRU
	</title>
	<link rel="icon" type="image/png" href="<?php echo IMG_PATH;?>favicon.png">
	<link rel="stylesheet" href="<?php echo CSS_PATH;?>reset.css" media="all">
	<link rel="stylesheet" href="<?php echo CSS_PATH;?>style.css" media="all">
	<link rel="stylesheet" href="<?php echo CSS_PATH;?>glyphicons.css" media="all">
<?php
	if (isset($this->files['css']))
		foreach($this->files['css'] as $filename)
		{
?>
	<link rel="stylesheet" href="<?php echo CSS_PATH . $filename;?>.css" media="all">
<?php
		}
	if (isset($this->files['js']))
		foreach($this->files['js'] as $filename)
		{
?>
	<script src="<?php echo JS_PATH . $filename;?>.js"></script>
<?php
		}
?>
</head>
<body>

