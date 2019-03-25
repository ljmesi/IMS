<link href="http://localhost/IMS/Pet-feeder-app/public/sass/main.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js" defer></script>
<script src="http://localhost/IMS/Pet-feeder-app/private/js/bootstrap.min.js" defer></script>
<?php include('./private/initialise.php'); ?>
<?php include(SHARED_PATH . '/header.php'); ?>

 <!-- TODO: Remove the styling from html here and change colour to the same blue as in the header. -->
    <h3 style="text-align: center">Choose your Pet</h3>

    <div class="container">
        <div class="wrapper">


            <div class="home">


                <div class="row pack">


                    <div class="col-md-4 card">
                        <a href="./public/pages/pet-input-dog.php" class="index-anchor">
                            <div class="panel panel-default">

                                <div class="dog_image"></div>   

                                <!-- <img width="100%" src="./public/images/dog.png" alt="Picture of a dog"> -->


                            </div>
                        </a>
                    </div>


                    <div class="col-md-4 card">
                        <a href="./public/pages/pet-input-cat.php" class="index-anchor">
                            <div class="panel panel-default">

                                <div class="cat_image"></div>     

                               <!--  
                                   <img width="100%" src="./public/images/cat.png" alt="Picture of a cat">
 -->

                            </div>
                        </a>
                    </div>



                </div>

                <div class="row">
                    <div class="col-md-4"> </div>
                </div>
            </div>


        </div>
    </div>
    <script src="./private/js/fetch_random_cat_image.js"></script>
    <script src="./private/js/fetch_random_dog_image.js"></script>
    <?php include('./private/shared/footer.php'); ?>
