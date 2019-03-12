<?php
function isLoggedIn()
{
	if (isset($_SESSION['email'])) {
		return true;
	}else{
		return false;
	}
}
if (isset($_GET['logout'])) {
	session_destroy();
	unset($_SESSION['email']);
	header("location: sign-in.php");
}
?>