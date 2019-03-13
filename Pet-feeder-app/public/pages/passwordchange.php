<?php include('../../public/pages/functions.php');?>
<?php include('../../private/initialise.php');?>
<?php include(SHARED_PATH . '/header.php');?>
<?php
    session_start();
	$useremail = $_SESSION['email'];
	if ($useremail)
	{
		//user is logged in
		//check fields
		$oldpassword = md5($_POST['oldpassword']);
		$newpassword = md5($_POST['newpassword']);
		$confirmnewpassword = md5($_POST['confirmnewpassword']);
		//check pass against db
		$connect = mysqli_connect("localhost","root","","pet_feeder");
		
		$queryget = mysqli_query($connect,"SELECT own_password FROM pet_owner WHERE email='$useremail'") or die("Query didn't work");
		$row = mysqli_fetch_assoc($queryget);
		
		$oldpassworddb = $row['own_password'];
		//check pass
		if ($oldpassword==$oldpassworddb)
		{
		//check twonew pass
		if ($newpassword==$confirmnewpassword)
		{
		//success
		//change pass in db
			$querychange = mysqli_query($connect,"UPDATE pet_owner SET own_password='$newpassword' WHERE email='$useremail'");
            session_destroy();
            die("Your password has been changed successfully. You need to <a href='sign-in.php'>Login</a> to your account again.");
		}
		else
			die("New Passwords don't match");
	}
		else
			die("Old Password doesn't match");
}
	else
		   die("You must be logged in to change your password");
?>
<?php include(SHARED_PATH . '/footer.php'); ?>