<?php
   session_start();
   unset($_SESSION["email"]);
   unset($_SESSION["psw"]);
   
   //echo 'You have cleaned session';
   header('Refresh: 0; URL = sign-in.php');
?>