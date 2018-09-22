<?php

function	is_ajax_query()
{
	if (isset($_GET['is_ajax']))
		return ((intval($_GET['is_ajax'])) ? TRUE : FALSE);
	else
		return (FALSE);
}

function	is_loggued()
{
	if (!isset($_SESSION['user']))
		return (FALSE);
	else
		return (TRUE);
}

function	loggued_username()
{
	return ($_SESSION['user']['username']);
}

function	loggued_id()
{
	return ($_SESSION['user']['id']);
}

function	redirect($path)
{
	header ('location:'.SITE_ROOT. $path);
	die();
}


function	link_css($files)
{
	if (isset($files))
		foreach($files as $filename)
			echo '
	<link rel="stylesheet" href="' . CSS_PATH . $filename . '.css">';
}
?>

