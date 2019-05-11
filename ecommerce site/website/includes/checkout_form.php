<!-- The Modal (contains the Sign Up form) -->
<div id="checkoutModal" class="modal">
  <span onclick="document.getElementById('checkoutModal').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form id="checkoutForm" class="modal-content" method="post" action="">
      <div id="cartTab" class="tab">
        <h2>Cart</h2>
          <p>Item<p>
          <p>Price<p>
          <p>Quantity<p>
          <p>Total<p>
          <p>Order Sub Total<p>
          <p>Order Total<p>

        <div class="clearfix">
          <button id="checkoutButton" type="submit" class="signup">Checkout</button>
        </div>
      </div>

      <div id="checkoutTab" class="tab">
        <div class="clearfix">
          <button id="backToCartBtn" class="signup">Back to Cart</button>
        </div>

        <p>Please fill out your payment method.</p>
        <hr>

        <label for="first-name"><b>Name on Card</b></label>
        <input type="text" placeholder="Enter first name" name="first-name" required>

        <label for="email"><b>Card Number</b></label>
        <input type="text" placeholder="Enter email" name="email" required>

        <label for="password"><b>Expiration</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>

        <label for="pass-confirm"><b>CVV</b></label>
        <input type="password" placeholder="Repeat Password" name="pass-confirm" required>

        <div class="clearfix">
          <button id="submitPay" type="submit" class="signup">Proceed</button>
        </div>
      </div>
  </form>
</div>