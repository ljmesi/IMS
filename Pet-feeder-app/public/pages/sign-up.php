<?php include('../../private/initialise.php') ?>
<?php include(SHARED_PATH . '/header.php'); ?>
<html>
<head>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<style>
input[type=email], input[type=password]{
    width: 13em;
    height: 2.55em;
    padding: 5px;
    margin: 10px 0px 10px 0;
    border-radius: 7px;
    background-color: #fdedec;
    order: 1;
}
input[type=submit]{
    width: 70px;
    height: 29px;
    font-size: 12px;
    font: bold 13px arial;
}
button:hover {
    opacity: 0.5;
}
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}
img {
  width: 80px;
}
#wrap .statusmsg{
    text-align: center;
    font-size: 13px;
    font-weight: bold;
    color: #cc4400;
    padding: 3px;
    background: #fdedec;
    border: 1px solid #DFDFDF;
}
</style>
</head>

<body>
<div id="wrap">
<?php
session_start();
if(isset($_POST['emailaddr']) && !empty($_POST['emailaddr']) AND (strtolower($_POST['answer']) == $_SESSION['captcha']))
{
    $db = mysqli_connect('localhost', 'root', '', 'pet_feeder');
    $email = mysqli_escape_string($db,$_POST['emailaddr']);
    $password = mysqli_escape_string($db,$_POST['psw1']);
    $errors = array();

    if(!filter_var($email, FILTER_VALIDATE_EMAIL))
    {
        // Return Error - Invalid Email
        $msg = 'The email you have entered is invalid, please try again.';
    }
    else if(!preg_match('/^(?=.*\d)(?=.*[@#\-_$%^&+=§!\?])(?=.*[a-z])(?=.*[A-Z])[0-9A-Za-z@#\-_$%^&+=§!\?]{8,}$/',$password))
    {
        // Return error - password does not follow policy
        $msg = 'The password must contain at least 8 characters, including one each of uppercase, lowercase letters, numbers and special characters.';
    }
    else if($_POST['psw1'] != $_POST['psw2'])
    {
        // confirm password do not match
        $msg = 'The two passwords entered by you do not match.';
    }
    else
    {
        // Return Success - Valid Email
        // first check the database to make sure 
        // a user does not already exist with the same username and/or email
        $owner_check_query = "SELECT 'email', 'own_password' FROM pet_owner WHERE email='$email' LIMIT 1";
        $result = mysqli_query($db, $owner_check_query);
        $owner = mysqli_fetch_assoc($result);
  
        if ($owner) 
        { // if user exists
        if ($owner['email'] === $email) 
        {
        array_push($errors, "Owner email id already exists with our website");
        }
        }
        // Finally, register user if there are no errors in the form
        if (count($errors) == 0) {
            //encrypt the password before saving in the database
  	        $password_hash = md5($password);
            $query = "INSERT INTO pet_owner (email, own_password) VALUES('$email', '$password_hash')";
            mysqli_query($db, $query);
            $_SESSION['email'] = $email;
  	        $_SESSION['success'] = "You are now logged in";
        }
    unset($_SESSION['captcha']);
    $msg = 'Your account has been made, <br /> please click on the following link to access your profile.';
    }
}
?>

<h3 align="center" color="red">New User with Us? Sign Up Here!!!</h3>

<?php
 if(isset($msg)){  // Check if $msg is not empty
    echo '<div class="statusmsg">'.$msg.'</div>'; 
    // Display message and wrap it with a div with the class "statusmsg".
    if($msg == 'Your account has been made, <br /> please click on the following link to access your profile.')
    echo "<div class='statusmsg'><a href='loggedin.php'>Profile</a></div>";
    unset($msg);
}
?>

        <form action='' method="post" autocomplete="off">
        <table align='center'>
        <tr>
        <th>Email Address</th>
        <td><input type="email" placeholder="Enter Email address" name="emailaddr" required></td>
        </tr>
        <tr>
        <th>Password</th>
        <td><input type="password" placeholder="Enter Password" 
        required name="psw1" 
        onchange="form.psw2.pattern = RegExp.escape(this.value);" 
        data-toggle="tooltip" 
        title="The password must contain at least 8 characters, including uppercase, lowercase letters, numbers and special characters."></td>
        </tr>
        <tr>
        <th>Confirm Password</th>
        <td><input type="password" placeholder="Enter the same password" required name="psw2"></td>
        </tr>
        <tr>
        <td align='center'><img src="captcha.php" id="captcha"></td>
        <td><input type="text" name="answer" placeholder="Enter captcha here" maxlength="10"/></td>
        </tr>
        <tr>
        <td align='center'><input type="button" id="reload" value="Reload"/></td>
        </tr>
        <tr>
        <td></td>
        <td><input type="submit" value="Sign Up"></td>
        </tr>
        <tr>
        <td><br><label>Already a member?</label>&nbsp;<a href="sign-in.php">Sign in</a></td>
        </tr>
        </table>
        </form>
    </div>
        <script>
            $(function () { // Handler for .ready() called.
                $('#reload').click(function () {
                    $('#captcha').attr('src', 'captcha.php?' + (new Date).getTime());
                });
            });
        </script>
</body>
</html>

<?php include(SHARED_PATH . '/footer.php'); ?>