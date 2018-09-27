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
