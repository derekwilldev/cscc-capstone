
<?php
include 'includes/page_header.php';
include 'php/product_page.php';
?>


<main id="main">
  <div class="container">
    <?php include 'includes/customer_greeting.php' ?>
    <div class="row">
      <div class="col-md-12">
        <h1><?= $productName ?></h1>
        <p><?= $productFeature1 ?></p>
        <p><?= $productFeature2 ?></p>
        <p><?= $productFeature3 ?></p>
        <p><?= $productFeature4 ?></p>
        <p>Price: <?= $productPrice ?></p>
        <p>In Stock: <?= $productStock ?></p>
        <p><?= $productDesc ?></p>
        <div class="prodpg-cart-wrapper">
          <form method="post" action="php/add_to_cart.php">
              <label for="quantity" class="qty-label">Quantity:&nbsp;</label>
              <input type="text" id="quantity" name="qty" value="1" />
            <button class="btn btn-primary btn-lg">Add to Cart</button>
          </form>
        </div>
      </div><!-- end col -->
    </div>
  </div>
</main>

<?php include 'includes/page_footer.php' ?>
