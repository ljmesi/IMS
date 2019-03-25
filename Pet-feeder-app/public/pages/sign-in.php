<?php include('../../private/initialise.php') ?>
<?php include(SHARED_PATH . '/header.php'); ?>
<html>
<head>
<style>
form {
    margin: 70px 0 140px 0;
}

button:hover {
    opacity: 0.8;
}
span.psw {
    float: right;
    padding-top: 16px;
}
</style>
</head>

<body>
<h2 align="center">Login</h2>
    <form action='login_check.php' method="post" autocomplete="off">
    <table align='center'>
    <tr>
    <th>Email Address</th>
    <td><input type="email" placeholder="Enter Email Address" name="emailaddr" required style="width: 12em;
    height: 2.55em;
    padding: 5px;
    margin: 10px 0px 10px 0;
    border-radius: 7px;
    background-color: #fdedec;
    order: 1;"></td>
    </tr>
    <tr>
    <th>Enter Password</th>
    <td><input type="password" placeholder="Enter Password" name="psw" required style="width: 12em;
    height: 2.55em;
    padding: 5px;
    margin: 10px 0px 10px 0;
    border-radius: 7px;
    background-color: #fdedec;
    order: 1;"></td>
    </tr>
    <tr>
    <td></td>
    <td><input type="submit" value="Sign In" style="padding:5px;"></td>
    </tr>
    </table>
    </form>
</body>
</html>

<?php include(SHARED_PATH . '/footer.php'); ?>