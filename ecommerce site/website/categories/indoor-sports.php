
      <div class="col-md-12">
        <h2>Summer Sports</h2>
          <div class="card-deck">
            <?php

              $query = "SELECT * FROM product WHERE category_id = 12";
              $result = $connection->query($query);
              include 'php/product_card.php';              
            ?>
          </div>
        </div>