<?php include('../../private/initialise.php') ?>
<?php include(SHARED_PATH . '/header.php'); ?>
<?php
session_start();
if ( ! empty( $_POST ) ) {
    if ( isset( $_POST['emailaddr'] ) && isset( $_POST['psw'] ) ) {
        // Getting submitted user data from database
        $con = new mysqli('localhost', 'root', '', 'pet_feeder');
        $stmt = $con->prepare("SELECT email, own_password FROM pet_owner WHERE email= ? LIMIT 1");
        $stmt->bind_param('s', $_POST['emailaddr']);
        $stmt->execute();
        $result = $stmt->get_result();
    	$user = $result->fetch_array(MYSQLI_NUM);
        
        // Verify user password and set $_SESSION
        $hash_password = md5($_POST['psw']);
    	if ( strcmp($hash_password,$user[1]) == 0 ) {
            echo "<h2>Oops, email does not exist with us. Try login again.</h2>";
            echo "<h4><a href='sign-in.php'>Login</a></h4>";
        }
        else {
            $_SESSION['user_id'] = $user[0];
            echo "test";
            header('Location: http://localhost/IMS/Pet-feeder-app/index.php');
        }

    }
}
?>
<?php include(SHARED_PATH . '/footer.php'); ?>