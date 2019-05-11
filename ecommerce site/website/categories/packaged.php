
      <div class="col-md-12">
        <h2>Canned & Packaged</h2>
          <div class="card-deck">
            <?php

              $query = "SELECT * FROM product WHERE category_id = 7";
              $result = $connection->query($query);
              include 'php/product_card.php';              
            ?>
          </div>
        </div>