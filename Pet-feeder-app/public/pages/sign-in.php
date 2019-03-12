<?php include('../../private/initialise.php') ?>
<?php include(SHARED_PATH . '/header.php'); ?>
<html>
<style>

form {
    /*border: 3px solid #f1f1f1;*/
    margin: 20px 0 10px 0;
}

input[type=email], input[type=password] {
    width: 95%;
    padding: 12px 20px;
    display: inline-block;
    border: 1px solid #ccc;
    margin: 8px 2;
    box-sizing: border-box;
}

input[type="submit"] {
    /*background-color: #4CAF50;
    color: white;*/
    padding: 6px 10px;
    margin: 15px 0;
    border: 1px solid #ccc;
    cursor: pointer;
    width: 5%;
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
<h2 align="center">Login</h2>
<div class="container"> 
    <form action='login_check.php' method="post" autocomplete="off">
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