<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>
		<?php echo $data['title']?> - CAMAGRU
	</title>
	<link rel="icon" type="image/png" href="<?php echo IMG_PATH;?>favicon.png">
	<link rel="stylesheet" href="<?php echo CSS_PATH;?>reset.css" media="all">
	<link rel="stylesheet" href="<?php echo CSS_PATH;?>style.css" media="all">
<?php
	if (isset($data['css']))
		foreach($data['css'] as $namefile)
		{
?>
	<link rel="stylesheet" href="<?php echo CSS_PATH . $namefile;?>.css" media="all">
<?php
		}
	if (isset($data['js']))
		foreach($data['js'] as $namefile)
		{
?>

	<script src="<?php echo JS_PATH . $namefile;?>.js"></script>
<?php
		}
?>

</head>
<body>

