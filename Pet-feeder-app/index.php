<?php include_once('./private/initialise.php') ?>
<?php include(SHARED_PATH . '/header.php'); ?>

 <!-- TODO: Remove the styling from html here and change colour to the same blue as in the header. -->
    <h3 style="text-align: center"> Choose your Pet</h3>

    <div class="container">
        <div class="wrapper">


            <div class="home">


                <div class="row pack">


                    <div class="col-md-4 card">
                        <a href="./public/pages/pet-input-dog.php" class="index-anchor">
                            <div class="panel panel-default">


                                <img width="100%" src="./public/images/dog.png" alt="Picture of a dog">


                            </div>
                        </a>
                    </div>


                    <div class="col-md-4 card">
                        <a href="./public/pages/pet-input-cat.php" class="index-anchor">
                            <div class="panel panel-default">


                                <img width="100%" src="./public/images/cat.png" alt="Picture of a cat">


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

    <?php include('./private/shared/footer.php'); ?>
