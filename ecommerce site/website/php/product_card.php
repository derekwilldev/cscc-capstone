<?php
if ($result) {
    while ($row = $result->fetch_object()) {
?>
  <div class="col-md-4">
    <div class="card">
      <img src="../assets/prods/<?=$row->prod_id ?>.jpg" class="card-img-top" />
      <!--<svg class="bd-placeholder-img card-img-top" width="100%" height="200" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false">
        <title>Placeholder</title>
        <rect width="100%" height="100%" fill="#868e96"></rect>
        <text x="50%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text>
      </svg>-->
      <div class="card-body">
        <form method="post" action="store/add_to_cart.php">
          <h5 class="card-title" name="product_name"><?=$row->prod_name ?></h5>
          <p class="card-text" name="description"><?=$row->prod_desc ?></p>
          <p class="card-text" name="price"><?=$row->prod_price ?></p>
          <input type="hidden" name="sku" value="<?=$row->prod_id ?>" />
          <input type="submit" class="btn btn-primary" value="Add to Cart" />
        </form>
      </div>
    </div><!-- end card -->
  </div>
<?php
    }
  }
  else {
    echo mysqli_error($connection);
  }
?>