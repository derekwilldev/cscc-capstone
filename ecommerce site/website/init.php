<?php
session_start();


 require_once 'private/config.php';
 include 'private/database.php';

 include 'customer/login.php';
 include 'customer/register_user.php';


 // checkConnection($connection);


$loggedIn = isset($_SESSION['email']);

if ($loggedIn) {
	$customerName = $_SESSION['name'];
}


// checkConnection($connection);
?>