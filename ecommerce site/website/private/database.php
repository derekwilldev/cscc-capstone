<?php
require_once 'config.php';

	$host = DB_HOST;
	$username = DB_USER;
	$password = DB_PASS;
	$dbname = DB_NAME;


	$connection = new mysqli($host, $username, $password, $dbname);


	// connection check method
	function checkConnection($connection) {
		if ($connection->connect_errno) {
			$errorMsg = "Database connection failed: " . $connection->connect_error . " (" . $connection->connect_errno . ")";
			exit($errorMsg);
		}
		else {
			echo "connected" . "<br><br>";
		}
		return $connection;
	}

?>
