<?php include('../../private/initialise.php') ?>
<?php include(SHARED_PATH . '/header.php'); ?>
<html>
    <head>
        <title>Owner Contact Form</title>
    </head>

    <body>
          <p>My Profile</p>
<?php
session_start();
if ( isset( $_SESSION['user_id'] ) ) {
    // Grab user data from the database using the user_id
    // Let them access the "logged in only" pages
    $con = new mysqli('localhost', 'root', '', 'Pet_feeder');
    $stmt = $con->prepare("SELECT email, own_password FROM pet_owner WHERE email= ? LIMIT 1");
} else {
    // Redirect them to the login page
    header("Location: http://www.yourdomain.com/login.php");
}


$sql = "SELECT * FROM usermaster WHERE User_name='".$Username."'"; // Please look at this too.
$result = mysql_query($sql) or die (mysql_error()); // dont put spaces in between it, else your code wont recognize it the query that needs to be executed
while ($row = mysql_fetch_array($result)){     // here too, you put a space between it
    $Name=$row['Name'];
    $Username=$row['User_name'];
    $Password=$row['User_password'];
    }
?>
<?php include(SHARED_PATH . '/footer.php'); ?>
