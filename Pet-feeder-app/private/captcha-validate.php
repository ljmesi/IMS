<?php
/* captcha-validate file */
session_start();
if(strtolower($_POST['answer']) == $_SESSION['captcha'])
    echo 'Captcha solved successfully, now you can allow this user to submit comment/vote/upload/etc.';
else
    echo 'Sorry, captcha not solved. Offer user captcha again or what ever.';

unset($_SESSION['captcha'])
//EDIT: I haven't posted this before but you should unset captcha from session, or destroy session.
//You can do this with unset($_SESSION['captcha']). That way malicious user won't be able to recreate your old session.
?>