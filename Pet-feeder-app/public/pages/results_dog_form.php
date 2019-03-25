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
    //echo "Age is=$age";
    if (($age >= 24) && ($age < 84))
    {   
        $con = new mysqli('localhost', 'root', '', 'pet_feeder');
        $stmt = $con->prepare("SELECT size FROM dog_breed WHERE b_name= ?");
        $stmt->bind_param('s', $_POST['dog_breed']);
        $stmt->execute();
        $result = $stmt->get_result();
        $user = $result->fetch_array(MYSQLI_NUM);
        $size = $user[0];
        //echo "size of dog is :$size";
        $diet = mysqli_escape_string($con, $_POST['diet']);
        //echo "Diet is: $diet";    
            
        if ($_POST['activity_level'] == 'Active')
        {
            $stmt = $con->prepare("SELECT High_activity FROM dog_adult_diet WHERE ( size= '$size' AND $weight_g <= body_weight AND Diet= '$diet')");
        }
        else if  ($_POST['activity_level'] == 'Normal')
        {
            $stmt = $con->prepare("SELECT Normal_activity FROM dog_adult_diet WHERE ( size= '$size' AND $weight_g <= body_weight AND Diet= '$diet')");
        }
        else 
        {
            $stmt = $con->prepare("SELECT Low_activity FROM dog_adult_diet WHERE ( size = '$size' AND $weight_g <= body_weight AND Diet = '$diet')");
        }
        $stmt->execute();
        $result1 = $stmt->get_result();
        $user1 = $result1->fetch_array(MYSQLI_NUM);
        if(!empty($user1)){
            $food_value = array_pop($user1);
        }
        //echo "<br>";
        //echo "recommended food value is: $food_value";
    } 
    else if ($age >= 84){
        $con = new mysqli('localhost', 'root', '', 'pet_feeder');
        $stmt = $con->prepare("SELECT size FROM dog_breed WHERE b_name= ?");
        $stmt->bind_param('s', $_POST['dog_breed']);
        $stmt->execute();
        $result = $stmt->get_result();
        $user = $result->fetch_array(MYSQLI_NUM);
        $size = $user[0];
        //echo "size of dog is :$size";
        //echo "<br>";
        $diet = mysqli_escape_string($con, $_POST['diet']);
        //echo "Diet is: $diet";    
            
        if ($_POST['activity_level'] == 'Active')
        {
            $stmt = $con->prepare("SELECT High_activity FROM dog_senior_diet WHERE ( size= '$size' AND $weight_g <= body_weight AND Diet= '$diet')");
        }
        else if  ($_POST['activity_level'] == 'Normal')
        {
            $stmt = $con->prepare("SELECT Normal_activity FROM dog_senior_diet WHERE ( size= '$size' AND $weight_g <= body_weight AND Diet= '$diet')");
        }
        else 
        {
            $stmt = $con->prepare("SELECT Low_activity FROM dog_senior_diet WHERE ( size = '$size' AND $weight_g <= body_weight AND Diet = '$diet')");
        }
        $stmt->execute();
        $result1 = $stmt->get_result();
        $user1 = $result1->fetch_array(MYSQLI_NUM);
        //if(!empty($user1)){
            $food_value = array_pop($user1);
        //}
        //echo "<br>";
        //echo "recommended food value is: $food_value";
    }
    else{
        $con = new mysqli('localhost', 'root', '', 'pet_feeder');
        $stmt = $con->prepare("SELECT size FROM dog_breed WHERE b_name= ?");
        $stmt->bind_param('s', $_POST['dog_breed']);
        $stmt->execute();
        $result = $stmt->get_result();
        $user = $result->fetch_array(MYSQLI_NUM);
        $size = $user[0];
        //echo "size of dog is :$size";
        //echo "<br>";
        $diet = mysqli_escape_string($con, $_POST['diet']);
        //echo "Diet is: $diet";    
            
        if ($age <= 2)
        {
            $stmt = $con->prepare("SELECT COALESCE(Age_2mo,0) FROM dog_pup_diet WHERE ( size= '$size' AND $weight_g <= body_weight AND Diet= '$diet')");
        }
        else if  (($age >= 3) && ($age < 6))
        {
            $stmt = $con->prepare("SELECT COALESCE(Age_3_6mo,0) FROM dog_pup_diet WHERE ( size= '$size' AND $weight_g <= body_weight AND Diet= '$diet')");
        }
        else if (($age >= 6) && ($age < 12))
        {
            $stmt = $con->prepare("SELECT COALESCE(Age6_12mo,0) FROM dog_pup_diet WHERE ( size = '$size' AND $weight_g <= body_weight AND Diet = '$diet')");
        }
        else
        {
            $stmt = $con->prepare("SELECT COALESCE(Age_12_more,0) FROM dog_pup_diet WHERE ( size = '$size' AND $weight_g <= body_weight AND Diet = '$diet')");
        }
        $stmt->execute();
        $result1 = $stmt->get_result();
        $user1 = $result1->fetch_array(MYSQLI_NUM);
        if(!empty($user1)){
            $food_value = array_pop($user1);
        }
    }
    
    if (!empty($_POST['health_considerations']))
            {
                $stmt = $con->prepare("SELECT active FROM health WHERE health_name=?");
                $stmt->bind_param('s', $_POST['health_considerations']);
                $stmt->execute();
                $result2 = $stmt->get_result();
                $health = $result2->fetch_array(MYSQLI_NUM);
            }
        $food_rec = (($food_value * $health[0]) * $weight_g);
    }
else 
        die('Enter all details first');

    if (isLoggedIn()) {
        $pet_type = 'dog';
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