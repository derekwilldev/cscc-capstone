// Get the modal
var modal = document.getElementById('checkoutModal');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}


$(document).ready(function() {

var $cartTab = $('#cartTab');
var $checkoutBtn = $('#checkoutButton');
var $backToCartBtn = $('#backToCartBtn');
var $checkoutTab = $('#checkoutTab');
var $payBtn = $('#submitPay');

$checkoutTab.hide();
$backToCartBtn.hide();

$checkoutBtn.on('click', function() {
  $cartTab.hide();
  $checkoutTab.show();
  $backToCartBtn.show();

    $backToCartBtn.on('click', function() {
      $backToCartBtn.hide();
      $checkoutTab.hide();
      $cartTab.show();
    });
});

});