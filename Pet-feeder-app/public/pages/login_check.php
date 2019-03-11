<?php include('../../private/initialise.php') ?>
<?php include(SHARED_PATH . '/header.php'); ?>
<?php 
session_start();
if ( ! empty( $_POST ) ) {
    if ( isset( $_POST['emailaddr'] ) && isset( $_POST['psw'] ) ) {
        // Getting submitted user data from database
        $con = new mysqli('localhost', 'root', '', 'Pet_feeder');
        $stmt = $con->prepare("SELECT email, own_password FROM pet_owner WHERE email= ? LIMIT 1");
        $stmt->bind_param('s', $_POST['emailaddr']);
        $stmt->execute();
        $result = $stmt->get_result();
    	$user = $result->fetch_array(MYSQLI_NUM);
        
    	// Verify user password and set $_SESSION
    	if ( md5($_POST['psw']) == $user[1] ) {
            $_SESSION['user_id'] = $user[0];
            //echo "test";
            header('Location: profilepage.php');
        }
        else {
            echo "<h2>Oops, email does not exist with us. Try login again.</h2>";
            echo "<h4><a href='sign-in.php'>Login</a></h4>";
        }

    }
}
?>
<?php include(SHARED_PATH . '/footer.php'); ?>