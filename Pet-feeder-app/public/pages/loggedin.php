<?php include('../../public/pages/functions.php');?>
<?php include('../../private/initialise.php');?>
<?php include(SHARED_PATH . '/header.php');?>
<?php
session_start();
if (!isLoggedIn()) {
	$_SESSION['msg'] = "You must log in first";
	header('location: sign-in.php');
}
?>
<html>
<!-- logged in user information -->
<style>
div[class="profile_info"] {
  height: 400px;
  width: 95%;
}
</style>
<div class="profile_info">
			<div align='right'>
                <img src="profileuser.png"><br>
				<?php  if (isset($_SESSION['email'])) : ?>
					<strong><?php echo $_SESSION['email']; ?></strong>

					<small>
						<i  style="color: #888;">(<?php echo 'User'; ?>)</i> 
						<br>
						<a href="loggedin.php?logout='1'" style="color: blue;">logout</a>
					</small>

				<?php endif ?>
            </div>
            <div>

            </div>
</div>
</html>
<?php include(SHARED_PATH . '/footer.php'); ?>