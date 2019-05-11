
      <div class="col-md-12">
        <h2>Dairy</h2>
          <div class="card-deck">
            <?php

              $query = "SELECT * FROM product WHERE category_id = 5";
              $result = $connection->query($query);
              include 'php/product_card.php';              
            ?>
          </div>
        </div>