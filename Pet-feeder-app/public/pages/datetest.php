<?php
$date = date("Y-m-d");
echo $date;
$con = new mysqli('localhost', 'root', '', 'pet_feeder');
$stmt = $con->prepare("INSERT INTO `historical_data` (`owner_id`, `pet_id`, `pet_weight`, `food_amount`, `historical_date`) 
VALUES ('4003', '0', '3.2', '678', DATE '$date')");
$stmt->execute();
/*$result = $stmt->get_result();
$user = $result->fetch_array(MYSQLI_NUM);
echo $user[4];*/
?>