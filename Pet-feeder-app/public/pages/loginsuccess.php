<?php 
echo "hello world";
$email = $_POST['emailaddr'];
$password_entered = $_POST['psw'];
//$password_hash = crypt($password1);
//$password_hash = password_hash($new_password, PASSWORD_DEFAULT);
if(password_verify($password_entered, $password_hash)) {
    // password is correct
    echo "login success";
  }
?>