<?php

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	require ('../private/database.php');

	try {
		$firstName = $_POST['first-name'];
		$lastName = $_POST['last-name'];
		$state = $_POST['state'];
		// $profilePic = $_POST['profile_pic'];
		$email = $_POST['email'];
		$password = $_POST['password'];
		$passConfirm = $_POST['pass-confirm'];

		// confirm form fields are not empty
		if (empty($firstName) || empty($lastName) || empty($state) || empty($email) || empty($password) || empty($passConfirm)) {
			throw new \Exception("All fields are required.");
		}
		
		// confirm passwords match
		if ($password !== $passConfirm) {
			throw new \Exception("Passwords must match.");
		}

		// setup query to locate user
		$query = $connection->prepare('SELECT * FROM customer WHERE email = ?');
		$query->bind_param('s', $email);
		$success = $query->execute();
			
		if ($success) {
			$result = $query->get_result();

			// if match found, throw error
			if ($result->num_rows > 0) {
				throw new \Exception('<p>Customer already exists. Try logging in.</p>
					<p><a href="../index.php">Return to Home page</a></p>');
			}


			// create new user if doesn't exist
			// hash the password
			$passHash = password_hash($password, PASSWORD_DEFAULT);
			// setup query to add customer to database
			$query = $connection->prepare('INSERT INTO customer (first_name, last_name, state_id, email, pass) VALUES (?, ?, ?, ?, ?)');
			$query->bind_param('ssiss', $firstName, $lastName, $state, $email, $passHash);
			$success = $query->execute();

			if ($success) {
				// // log in the customer
				// $_SESSION['name'] = $result->first_name;
				// $_SESSION['email'] = $result->email;

				header('Location: ../registered.php');
			}
			else {
				throw new \Exception($query->error);
			}
		}
		else {
			throw new \Exception($query->error);
		}
	} // end try
	catch (\Throwable $ex) {
		echo $ex->getMessage();
		// header('Location: ../register.php')
	}
}
?>