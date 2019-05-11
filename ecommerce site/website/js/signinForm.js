

$(document).ready(function() {
var signInButton = document.getElementById('signInButton');
var signInForm = document.getElementById('signInForm');
var signInFormClose = document.getElementById('signInFormClose');

	$(signInButton).click(function() {
		// hide sign in button
		$(signInButton).toggleClass('d-none');
		// show form and form close button
		$(signInFormClose).toggleClass('d-none');
		$(signInForm).toggleClass('d-none').effect('slide', {direction: 'right'}, 1000);

		// if ($(signInForm).hasClass('d-none')) {
		// 	signInForm.effect('slide', 1000);
		// }
		
	});

	$(signInFormClose).click(function() {
		// hide form close button
		$(signInFormClose).toggleClass('d-none');
		// show sign in button
		$(signInButton).toggleClass('d-none');
		// hide form
		$(signInForm).toggleClass('d-none');
	});
});


// signInButton.addEventListener('click', function() {
// 	// event.preventDefault();
// 	// show form and form close button
// 	signInForm.classList.toggle('d-none');
// 	signInForm.animate(2000);
// 	signInFormClose.classList.toggle('d-none');

// 	// hide the sign in link
// 	signInButton.classList.toggle('d-none');
// });

// signInFormClose.addEventListener('click', function() {
// 	// event.preventDefault();
// 	// show the sign in link
// 	signInButton.classList.toggle('d-none');

// 	// hide form
// 	signInFormClose.classList.toggle('d-none');
// 	signInForm.classList.toggle('d-none');
// });