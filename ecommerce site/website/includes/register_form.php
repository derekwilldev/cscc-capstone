<!-- The Modal (contains the Sign Up form) -->
<div id="registerForm" class="modal">
  <span onclick="document.getElementById('registerForm').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" method="post" action="customer/register_user.php">
    <div class="container">
      <h1>Sign Up</h1>
      <p>Please fill in this form to create an account.</p>
      <hr>
      <label for="first-name"><b>Name</b></label>
      <input type="text" placeholder="Enter first name" name="first-name" required>
      <input type="text" placeholder="Enter last name" name="last-name" required>

      <select name="state" required>
        <option>State</option>
        <?php
          //include 'private/database.php';
          $queryState = $connection->query('SELECT * FROM state_lookup');

            while ($row = $queryState->fetch_object()) {
              $stateCode = $row->state_id;
              $userSelection = isset($state) && $state == $state_id ? 'selected' : '';
              echo "<option value=\"$stateCode\" $userSelection>$row->state_abbr</option>";
            }
        ?>
      </select>

      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter email" name="email" required>

      <label for="password"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>

      <label for="pass-confirm"><b>Repeat Password</b></label>
      <input type="password" placeholder="Repeat Password" name="pass-confirm" required>

      <!-- <label>
        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
      </label> -->

      <!-- <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p> -->

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('registerForm').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signup">Sign Up</button>
      </div>
    </div>
  </form>
</div>