<?php include('../../private/initialise.php') ?>
<?php include(SHARED_PATH . '/header.php'); ?>
<?PHP
  // form handler
  if($_POST && isset($_POST['emailaddr'], $_POST['psw'])) 
  {
    /*$email = $_POST['emailaddr'];
    $password = $_POST['psw'];

    if(!$email) {
      $errorMsg = "Please enter your email address";
    } elseif(!$email || !preg_match("/^\S+@\S+$/", $email)) {
      $errorMsg = "Please enter a valid Email address";
    } elseif(!$password) {
      $errorMsg = "Please enter your password";
    } else {*/
      //redirect
      header("Location: loginsuccess.php");
      exit;
    }

  //}
?>
<html>
<style>
form {
    border: 3px solid #f1f1f1;
    margin: 40px 0 10px 0;
}

input[type=email], input[type=password] {
    width: 95%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/*imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
*/
/*img.avatar {
    width: 40%;
    border-radius: 50%;
}*/

/*.container {
    padding: 16px;
    width: 300px;
    margin: 24px 0 12px 0;
    margin-left: 450px;
}*/

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
/*@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}*/
</style>

<head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
</head>

<body>
<h2 align="center" color="red">Login</h2>
<div class="container"> 
    <form action='' method="post" autocomplete="off">
    <div class="container">
    <label><b>Email Address</b></label>
    <input type="email" placeholder="Enter Email address" name="emailaddr" required>
    <br>
    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
    <br>
    <input type="submit" value="Sign In">
</form>
<script>
        $(function() { // Handler for .ready() called.
            $('#reload').click(function(){
                $('#captcha').attr('src', 'captcha.php?' + (new Date).getTime());
            });
        });
</script>
</div>
</body>
</html>
      
<?php include(SHARED_PATH . '/footer.php'); ?>