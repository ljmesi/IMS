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
	session_start();
	session_destroy();
	unset($_SESSION['email']);
	header("location: sign-in.php");
}
function getAge($date){
    if(version_compare(PHP_VERSION, '5.3.0') >= 0){
        $dob = new DateTime($date);
        $now = new DateTime();
		$years = $now->diff($dob)->y;
		$months = $now->diff($dob)->m;
    }
    //$difference = (time() - strtotime($date));
	//return ($difference / 31556926);
	return ($years*12 + $months);
}
?>

