<?php
/* SET UP 
Un fichier config/setup.php , capable de créer ou recréer le schéma de la base de
données, en utilisant les infos contenues dans le fichier config/database.php
 */


$filename = 'config/camagru1.sql';
$mysql_host = 'localhost';
$mysql_username = 'root';
$mysql_password = '123456789';
$mysql_database = 'camagru';

$bdd = mysqli_connect($mysql_host, $mysql_username, $mysql_password);

if (!$bdd) {
	die("Connection failed: " . mysqli_connect_error());
}

$sql = "CREATE DATABASE " . $mysql_database;

if (mysqli_query($bdd, $sql)) {
	echo "Database created successfully<br>";
} else {
	echo "Error creating database: " . mysqli_error($bdd)."<br><br>";
}

mysqli_close($bdd);
$bdd = mysqli_connect($mysql_host, $mysql_username, $mysql_password, $mysql_database);
if (!$bdd) {
	die("Connection failed: " . mysqli_connect_error() . "<br>");
}

$sql_content = file_get_contents($filename);



$sql_content = preg_replace('/\n/', '', $sql_content);
$sql_array = preg_split('/;/', $sql_content, 0, PREG_SPLIT_NO_EMPTY);
$sql_array = array_map('trim', $sql_array);

foreach ($sql_array as $elem) {
	if ($elem != '') {
		if ($err = !mysqli_query($bdd, $elem)) {
			print_r($sql_array);
			echo $err;
			echo mysqli_errno($bdd) . ": " . mysqli_error($bdd) . "\n";
			die();
		}
	}
}

mysqli_close($bdd);

