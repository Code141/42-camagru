<?php
require_once('config.php');
require_once('database.php');
require_once('setup/db.php');

if (DEV_MODE == FALSE)
{
	header("Location: " . SITE_ROOT);
	die ();
}

$db['name'] = $DB_NAME;
$db['dsn'] = $DB_DSN;
$db['dsn_setup'] = $DB_DSN_SETUP;
$db['user'] = $DB_USER;
$db['password'] = $DB_PASSWORD;

$data['db_existe'] = db_existe($db);


if (isset($_GET['action']))
{
	if ($_GET['action'] == "reset_db")
	{
		if ($data['db_existe'] == TRUE)
		{
			delete_all($db);
			$data['msg'] = "Database deleted !";
			$data['db_existe'] = FALSE;
			// DELETE PICTURES
			// DELETE PICTURES
			// DELETE PICTURES
		}
	}
	if ($_GET['action'] == "create_db")
	{
		if ($data['db_existe'] == FALSE)
		{
			create_db($db);
			execute_file($db, 'tables.sql');
			$data['msg'] = "Database created !";
			$data['db_existe'] = TRUE;
		}
	}
	if ($_GET['action'] == "put_sample")
	{
		if ($data['db_existe'] == FALSE)
		{
			create_db($db);
			execute_file($db, 'tables.sql');
			execute_file($db, 'sample.sql');
			// COPY PICTURES
				//copy ( string $source , string $dest [, resource $context ] )
			// COPY PICTURES
			$data['msg'] = "Sample generated";
		}
	}
}

include("./setup/status.html");
if (isset($data['db_existe']))
	include("./setup/main.html");



