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
