<?php
$date = date("Y-m-d");
$id = 4003;
$type = 'dog';
$food = 78.5478897;
$weight = 5600;
$con = new mysqli('localhost', 'root', '', 'pet_feeder');
$stmt = $con->prepare("INSERT INTO `historical_data` (`owner_id`, `type_of_pet`, `pet_weight`, `food_amount`) 
VALUES ($id,'$type',$weight,$food)");
$stmt->execute();
$result = $stmt->get_result();
$user = $result->fetch_array(MYSQLI_NUM);
print_r($user);
?>