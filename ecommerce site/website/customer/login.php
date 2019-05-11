<?php

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	require ('../private/database.php');

	try {
		$email = $_POST['email'];
		$password = $_POST['password'];

			// validate email and password fields have values
		if (empty($email) || empty($password)) {
			echo '<p>Missing Name or Password. Please fill out both fields.</p>
				<p><a href="../index.php">Return to log in</a></p>';
		}

			// create query
		$query = $connection->prepare('SELECT * FROM customer WHERE email = ?');
		$query->bind_param('s', $email);
		$success = $query->execute();

			// verify user exists
		if ($success) {
			$result = $query->get_result();
			if ($result->num_rows === 0) {
				echo '<p>User profile not found.</p>
					<p><a href="../register.php">Please register</a></p>';
			}

				// if user in DB, fetch profile
			$customer = $result->fetch_object();

				// verify password for login
			if (password_verify($password, $customer->pass)) {
				session_destroy();
				session_start();
				$_SESSION['customerId'] = $customer->customer_id;
				$_SESSION['name'] = $customer->first_name;
				// $_SESSION['is_admin'] = $customer->can_edit;
				$_SESSION['email'] = $customer->email;

				header('Location: ../account.php');
			}
			else {
				echo '<p>Invalid Password.</p>
					<p><a href="../index.php">Return to log in</a></p>';
			}
		} // end user verification
		else {
			echo Exception($query->error);
		}
	} // end try
	catch (\Throwable $ex) {
		echo $ex->getMessage();
	} // end catch

}

?>