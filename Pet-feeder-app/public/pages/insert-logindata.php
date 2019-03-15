<?php include('../../private/initialise.php');?>
<?php include(SHARED_PATH . '/header.php');?>
<?php include('../../public/pages/functions.php');?>
<?php
session_start();
?>
<?php
if (isset($_POST['submit'])) {
    echo "test";
    //recommendation page of non user displayed
    //header('Location: http://localhost/IMS/Pet-feeder-app/public/pages/loggedin.php');
        $con = new mysqli('localhost', 'root', '', 'pet_feeder');
        /*$stmt = $con->prepare("SELECT 'oID', 'pet_ID' FROM 'pet_owner' WHERE email=? LIMIT 1");
        $stmt->bind_param('s', $_SESSION['email']);
        $stmt->execute();
        $result = $stmt->get_result();
        $user = $result->fetch_array(MYSQLI_NUM);
        $owner_id = $user[0];
        $pet_ID = $user[1];
        $pet_weight = $_POST['weight'];
        //$foor_rec
        $history = $con->prepare("INSERT INTO 'historical_data' VALUES($owner_id,$pet_ID,?,?,CURDATE())");
        $stmt->bind_param('s', $pet_weight, $_SESSION['food_rec']);
        $stmt->execute();
        // extra infor from recommendations page of user displayed
        echo "<button name='recom' value='Show History Data' onclick='#'>";*/
    if (isLoggedIn()) {
        /*$con = new mysqli('localhost', 'root', '', 'pet_feeder');
        $stmt = $con->prepare("SELECT 'oID', 'pet_ID' FROM 'pet_owner' WHERE email=? LIMIT 1");
        $stmt->bind_param('s', $_SESSION['email']);
        $stmt->execute();
        $result = $stmt->get_result();
        $user = $result->fetch_array(MYSQLI_NUM);
        $owner_id = $user[0];
        $pet_ID = $user[1];
        $pet_weight = $_POST['weight'];
        $date = date("Y-m-d");
        //$foor_rec
        $history = $con->prepare("INSERT INTO 'historical_data' 
        VALUES($owner_id,$pet_ID,?,?,'$date')");
        $stmt->bind_param('ss', $pet_weight, $_SESSION['food_rec']);
        $stmt->execute();*/
        // extra infor from recommendations page of user displayed
        echo "<button name='recom' value='Show History Data' onclick='#'>";
        echo "</button>";
    }
}
else 
    die('Enter all details first');
?>
<?php include(SHARED_PATH . '/footer.php'); ?>