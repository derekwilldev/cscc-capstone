

<?php include 'includes/page_header.php' ?>





<main id="main">

  <div class="container">

    <?php include 'includes/customer_greeting.php' ?>

    <div class="row">

      <div class="col-md-12">

        <h1>Contact us</h1>

        <p>Your satisfaction is our top priority. We welcome your comments, questions and suggestions.</p>

        

        <div id="contactForm" class="container">

          <form method="post" action="php/email_feedback.php">



            <label for="cust-fback-fname">First Name</label>

            <input type="text" id="cust-fback-fname" name="firstname" placeholder="Your name..">



            <label for="cust-fback-lname">Last Name</label>

            <input type="text" id="cust-fback-lname" name="lastname" placeholder="Your last name..">



            <label for="cust-fback-email">Email</label>

            <input type="text" id="cust-fback-email" name="email" placeholder="Your email address..">



            <label for="cust-fback-subject">Subject</label>

            <input type="text" id="cust-fback-subject" name="feedback-subject" placeholder="Your email subject..">



            <label for="feedback">Comments</label>

            <textarea id="feedback" name="feedback" placeholder="Write something.." style="height:200px"></textarea>



            <input type="submit" value="Submit">

          </form>

        </div>

      </div><!-- end col -->

    </div>

  </div>

</main>





<?php include 'includes/page_footer.php' ?>

