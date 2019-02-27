<?php include('../../private/initialise.php') ?>
<?php include(SHARED_PATH . '/header.php'); ?>

<div class="container">
    <h3>Sign-up form</h3> 
    <form action="" method="post">
      
      <ul class="flex-outer">
        <li><label for="username">Username</label> <input type="email" name="username" id="username"
            placeholder="Use your email address here" require></li>
        <li><label for="password">Password</label> <input type="password" name="password" id="password" 
            require ></li>
            <!-- <li><label for="password">Password</label> <input type="password" name="password" id="password" 
            minlength="8" require ></li> -->
        <li><input type="submit" value="Sign me up!"></li>
      </ul>
        
    </form>
</div>

<?php include(SHARED_PATH . '/footer.php'); ?>