<?php

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  $firstName = $_POST['firstname'];
  $lastName = $_POST['lastname'];
  $email = $_POST['email'];
  $subject = $_POST['feedback-subject'];
  $comments = $_POST['feedback'];
  $recipient = "dwill1@student.cscc.edu";
  $mailheader = "From: " . $email . "\r\n";

  // create email headers

  mail($recipient, $subject, $comments, $mailheader) or die("Error!");

  header('Location: ../feedback_sent.php');
}

?>