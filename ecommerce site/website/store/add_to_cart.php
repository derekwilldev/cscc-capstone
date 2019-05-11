<?php
session_start();

//checkConnection($connection);

// assign add to cart post variables
//var_dump($_SESSION);

$customerId = $_SESSION['customerId'];
$productId = $_POST['sku'];


// echo $productId;
// echo "id is " . $customerId;

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_SESSION['email'])) {
	require '../private/database.php';
	//checkConnection($connection);

	// setup query to add customer to database
	$query = $connection->prepare('INSERT INTO orders (customer_id, prod_id) VALUES (?, ?)');
	$query->bind_param('ii', $customerId, $productId);
	$success = $query->execute();

	if (!$success) {
		echo $query->error;
	}
}


?>


<?php include 'includes/page_header.php' ?>

<main id="main">
  <div class="container">
    <?php include 'includes/customer_greeting.php' ?>
    <div class="row">
      <div class="col-md-12">
        <?php if ($success) : ?>
        <h1>Item add successfully to cart <a href="../index.php">keep shopping</a></h1>
        <?php else : ?>
        <h1>Item please <a href="../index.php">login</a> to add items to cart</h1>
        <?php endif ?>        	
        <p></p>
      </div><!-- end col -->
    </div>
  </div>
</main>

<?php include 'includes/page_footer.php' ?>