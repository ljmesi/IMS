<?php
/* captcha-validate file */
session_start();
if(strtolower($_POST['answer']) == $_SESSION['captcha'])
{
    // form handler
    // initializing variables
    $email = "";
    $password = "";
    $errors = array(); 
    $password = $_POST['psw1'];

    // connect to the database
    $db = mysqli_connect('localhost', 'root', '', 'registration');
    
    $email = mysqli_real_escape_string($db, $_POST['emailaddr']);
    $password = mysqli_real_escape_string($db, $_POST['psw1']);

    // first check the database to make sure 
    // a user does not already exist with the same username and/or email
    $owner_check_query = "SELECT * FROM pet_owner WHERE email='$email' LIMIT 1";
    $result = mysqli_query($db, $owner_check_query);
    $owner = mysqli_fetch_assoc($result);
  
    if ($owner) { // if user exists
    if ($owner['username'] === $username) {
        array_push($errors, "Owner email id already exists with our website");
    }
    }

    // Finally, register user if there are no errors in the form
    if (count($errors) == 0) {
        //encrypt the password before saving in the database
  	    $password_hash = password_hash($password_hash, PASSWORD_DEFAULT);

  	    $query = "INSERT INTO pet_owner (email, own_password) VALUES('$email', '$password_hash')";
  	    mysqli_query($db, $query);
  	    $_SESSION['email'] = $email;
  	    $_SESSION['success'] = "You are now logged in";
  	    header('location: sign-in.php');
    }
}
else
    echo 'Sorry, captcha not solved. Offer user captcha again or what ever.';

unset($_SESSION['captcha'])
//EDIT: I haven't posted this before but you should unset captcha from session, or destroy session.
//You can do this with unset($_SESSION['captcha']). That way malicious user won't be able to recreate your old session.
?>