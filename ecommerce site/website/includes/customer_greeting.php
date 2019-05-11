
    <div class="row">
      <div class="col-md-12">
        <?php if ($loggedIn) : ?>
        <p>Hello <?=$customerName ?></p>
        <?php else : ?>
        <p>Hello Guest</p>
        <?php endif ?>
      </div><!-- end col -->
    </div>