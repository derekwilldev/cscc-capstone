
      <div class="col-md-12">
        <h2>Music</h2>
      </div>
            <?php
              $query = "SELECT * FROM product WHERE category_id = 10";
              $result = $connection->query($query);
              include 'php/product_card.php';
            ?>
        </div>