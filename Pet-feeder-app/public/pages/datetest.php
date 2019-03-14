<?php
$con = new mysqli('localhost', 'root', '', 'pet_feeder');
$stmt = mysqli_query($con,"SELECT DATE_FORMAT(now())");
echo $stmt;
?>