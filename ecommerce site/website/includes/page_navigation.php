
<nav class="navbar navbar-expand-lg navbar-light">
  <a class="navbar-brand" href="index.php"><img class="logo" src="assets/images/logo_s-mart.png" /></a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>


  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="site-nav navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item">
        <a class="nav-link" href="index.php">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="about.php">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contact.php">Contact</a>
      </li>
    </ul>
    <ul class="customer-nav navbar-nav pull-right mt-2 mt-lg-0">
      <?php if (!$loggedIn) : ?>
      <li class="nav-item">
        <a id="signInButton" class="nav-link" href="#">Sign In</a>
        <a id="signInFormClose" class="nav-link d-none" href="#"><i class="fas fa-window-close"></i></a>
      </li>
      <li class="nav-item">
        <form id="signInForm" class="form-inline my-2 my-lg-0 d-none" method="post" action="customer/login.php">
          <input class="form-control mr-sm-2" type="text" placeholder="Email" name="email">
          <input class="form-control mr-sm-2" type="password" placeholder="Password" name="password">
          <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Sign In</button>
        </form>
      </li>
      <?php else : ?>
      <li class="nav-item">
        <a class="nav-link" href="customer/logout.php">Sign Out</a>
      </li>
      <?php endif; ?>
      <li class="nav-item">
        <a id="registerButton" class="nav-link" onclick="document.getElementById('registerForm').style.display='block'" href="#">Register</a>
      </li>
      <li class="nav-item">
        <a id="cartButton" class="nav-link" onclick="document.getElementById('checkoutModal').style.display='block'" href="#">Cart</a>
      </li>
    </ul>
  </div>
</nav>
<nav class="navbar justify-content-center store-navbar">
  <a class="nav-link" href="entertainment.php">Entertainment</a>
  <a class="nav-link" href="groceries.php">Groceries</a>
  <a class="nav-link" href="housewares.php">Housewares</a>
  <a class="nav-link" href="sports.php">Sporting Goods</a>
</nav>