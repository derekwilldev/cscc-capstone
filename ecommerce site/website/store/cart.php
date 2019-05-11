<?php
session_start();
echo "<p>hi<p>";

var_dump($_SESSION['cart']);
echo '<br>';
print_r($_SESSION['cart']);
echo '<br>';
print_r($_SESSION);

?>

<br><a href="../index.php">back to shopping</a>