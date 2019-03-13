<?php include('../../private/initialise.php') ?>
<?php include(SHARED_PATH . '/header.php'); ?>
<html>

<head>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
</head>
<style>

form {
    /*border: 3px solid #f1f1f1;*/
    margin: 10px 10px;
}

input[type=email], input[type=password] {
    width: 98%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

input[type=submit]{
    width: 70px;
    height: 29px;
    font-size: 12px;
    font: bold 13px arial;
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
    opacity: 0.5; /* 0.8; */
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

 
img {
  width: 90px;
}

/*
imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}*/

/*.container {
    padding: 16px;
    width: 300px;
    margin: 24px 0 12px 0;
    margin-left: 450px;
}*/

/*span.psw {
    float: right;
    padding-top: 16px;
}*/

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

<body>
    <h2 align="center" color="red">New User with Us? Sign Up Here!!!</h2>
    <div class="container"> 
        <form action='captcha-validate.php' method="post" autocomplete="off">
        <label><b>Email Address</b></label>
        <input type="email" placeholder="Enter Email address" name="emailaddr" required>
        <br>
        <label><b>Password</b></label>
        <input type="password" placeholder="Enter Password" 
        required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="psw1" 
        onchange="form.psw2.pattern = RegExp.escape(this.value);" data-toggle="tooltip" 
        title="The password must contain at least 6 characters, including UPPER and lowercase letters and numbers">
        <br>
        <label><b>Confirm Password</b></label>
        <input type="password" placeholder="Enter the same password" required name="psw2">
        <br>
        <img src="captcha.php" id="captcha">&nbsp;
        <input type="button" id="reload" value="Reload Captcha"/>
        <br>
        <input type="text" name="answer" placeholder="Enter captcha here" maxlength="10"/>
        <br>
        <input type="submit" value="Sign Up"><br><br>
        <label>Already a member?</label>&nbsp;<a href="sign-in.php">Sign in</a>
        </form>
        <script>
            $(function () { // Handler for .ready() called.
                $('#reload').click(function () {
                    $('#captcha').attr('src', 'captcha.php?' + (new Date).getTime());
                });
            });
        </script>
    </div>
</body>

</html>

<?php include(SHARED_PATH . '/footer.php'); ?>