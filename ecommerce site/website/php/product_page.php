<?php
	
	$productId = $_GET['product_id'];


	if ($productId) {

		$query = "SELECT * FROM product WHERE prod_id = $productId";
		$result = $connection->query($query);


		if ($result) {			

			$product = $result->fetch_object();

			$productId = $product->prod_id;
		    $productName = $product->prod_name;
		    $productDesc = $product->prod_desc;
		    $productFeature1 = $product->prod_feature1;
		    $productFeature2 = $product->prod_feature2;
		    $productFeature3 = $product->prod_feature3;
		    $productFeature4 = $product->prod_feature4;
		    $productPrice = $product->prod_price;
		    $productStock = $product->prod_in_stock;
		    // $productImg = $product->product_id;
		}
		else {
			echo mysqli_error($connection);
		}

	}

?>

