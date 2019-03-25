<?php include('../../public/pages/functions.php');?>
<?php include('../../private/initialise.php');?>
<?php include(SHARED_PATH . '/header.php');?>
<?php
session_start();
?>
<?php
if (isset($_POST['submit'])) {
    $con = new mysqli('localhost', 'root', '', 'pet_feeder');
    $weight_g = (mysqli_escape_string($con, $_POST['weight']) * 453);
    $age = getAge(mysqli_escape_string($con, $_POST['age']));
    $food_value = 0;
    $stmt = $con->prepare("SELECT size FROM cat_breed WHERE b_name= ?");
    $stmt->bind_param('s', $_POST['cat_breed']);
    $stmt->execute();
    $result = $stmt->get_result();
    $user = $result->fetch_array(MYSQLI_NUM);
    $size = $user[0];
    //echo "size of dog is :$size";
    $diet = (mysqli_escape_string($con,$_POST['diet']);
    //echo "Diet is: $diet";    
            
        if ($_POST['activity_level'] == 'Active')
        {
            $stmt = $con->prepare("SELECT High_activity FROM cat_adult_diet WHERE ( size= '$size' AND $weight_g <= body_weight AND Diet= '$diet')");
        }
        else if  ($_POST['activity_level'] == 'Normal')
        {
            $stmt = $con->prepare("SELECT Normal_activity FROM cat_adult_diet WHERE ( size= '$size' AND $weight_g <= body_weight AND Diet= '$diet')");
        }
        else 
        {
            $stmt = $con->prepare("SELECT Low_activity FROM cat_adult_diet WHERE ( size = '$size' AND $weight_g <= body_weight AND Diet = '$diet')");
        }
        $stmt->execute();
        $result1 = $stmt->get_result();
        $user1 = $result1->fetch_array(MYSQLI_NUM);
        if(!empty($user1)){
            $food_value = array_pop($user1);
        }
        //echo "<br>";
        //echo "recommended food value is: $food_value";
    
    if (!empty($_POST['health_considerations']))
            {
                $stmt = $con->prepare("SELECT active FROM health WHERE health_name=?");
                $stmt->bind_param('s', $_POST['health_considerations']);
                $stmt->execute();
                $result2 = $stmt->get_result();
                $health = $result2->fetch_array(MYSQLI_NUM);
            }
        $food_rec = (($food_value * $health[0]) * $weight_g);
   
        //recommendation page of non user displayed
        //header('Location: http://localhost/IMS/Pet-feeder-app/public/pages/loggedin.php');
        // extra infor from recommendations page of user displayed
    }
else 
        die('Enter all details first');

    if (isLoggedIn()) {
        $pet_type = 'cat';
        $stmt_insert = $con->prepare("INSERT INTO pet (type_of_pet,food_amount) VALUES ('$pet_type','$food_rec')");
        $stmt_insert->execute();
        $stmt = $con->prepare("SELECT oID FROM pet_owner WHERE email=? LIMIT 1");
        $stmt->bind_param('s', $_SESSION['email']);
        $stmt->execute();
        $result = $stmt->get_result();
        $user = $result->fetch_array(MYSQLI_NUM);
        $owner_id = $user[0];
        $date = date("Y-m-d");
        $hist_data = $con->prepare("INSERT INTO historical_data (owner_id, type_of_pet, pet_weight, food_amount, historical_date)
        VALUES ('$owner_id','$pet_type','$weight_g','$food_rec',DATE '$date')");
        $hist_data->execute();
        //echo "<button name='recom' value='Show History Data' onclick='#'>";
        //echo "</button>";
    }
?>

<html>
<body>
<h3 style="text-align: center">Pet food recommendations</h3>
<?php if ($food_rec != 0): ?>
    <div class="flex-container-recommendation">
    <h4>Suggested Nutritional intake today</h4>

    <h5>You are recommended to feed your pet with <?php echo $food_rec; ?> grams of <?php echo $diet; ?> food this day. </h5>  
    </div>

<?php else: ?>
    <div class="flex-container-recommendation">
    <h5>Sorry, We couldn't find anything that matched your query Please go back to the form and try changing the diet options.</h5>
    </div>

<?php endif ?>

<div class="flex-container-recommendation">
    <a href='loggedin.php' style="font-size:15px; margin: 20px">Go Back</a>
</div>

</body>
</html>
<?php include(SHARED_PATH . '/footer.php'); ?>