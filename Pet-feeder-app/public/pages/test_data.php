<?php include('../../public/pages/functions.php');?>
<?php include('../../private/initialise.php');?>
<?php include(SHARED_PATH . '/header.php');?>

<?php
session_start();
?>

<head>
    <style>
    div[class="profile_info"] {
      height: 310px;
      width: 90%;
    }
    table[name='t1'] {
        width: 50%;
        height: 80%;
        background-color: #fdedec;
    }
    th{
        text-align: center;
    }
    </style>
</head>

<?php
if (isLoggedIn()){
$con = new mysqli('localhost', 'root', '', 'pet_feeder');

    $stmt = $con->prepare("SELECT oID FROM pet_owner WHERE email=? LIMIT 1");
    $stmt->bind_param('s', $_SESSION['email']);
    $stmt->execute();
    $result = $stmt->get_result();
    $user = $result->fetch_array(MYSQLI_NUM);
    $owner_id = $user[0];

$show_data = $con->prepare("SELECT pet_weight, food_amount, historical_date FROM historical_data WHERE owner_id= ?");
$show_data->bind_param('i', $owner_id);
$show_data->execute();
$data_result = $show_data->get_result();
echo "<div class='profile_info' align='center'>";
echo "<table border='1' name='t1'>
<tr>
<th>Pet Weight</th>
<th>Food Amount</th>
<th>Historical Date</th>
</tr>";
while($row = mysqli_fetch_array($data_result))
{
    echo "<tr>";
    echo "<td align='center'>" . $row['pet_weight'] . "</td>";
    echo "<td align='center'>" . $row['food_amount'] . "</td>";
    echo "<td align='center'>" . $row['historical_date'] . "</td>";
    echo "</tr>";
}
echo "</table>";
echo "<br>";
echo "<p>"."<button id='bck' class='float-left submit-button'>"."<b>Back to Profile<b>"."</button>"."</p>";
echo "</div>";
}
?>
<script type="text/javascript">
            document.getElementById('bck').onclick = function () {
            location.href = "http://localhost/IMS/Pet-feeder-app/public/pages/loggedin.php";
            };
</script>
<?php include(SHARED_PATH . '/footer.php'); ?>