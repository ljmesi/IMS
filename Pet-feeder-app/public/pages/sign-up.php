<?php include('../../private/initialise.php') ?>
<?php include(SHARED_PATH . '/header.php'); ?>
<head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
</head>

<html>
<body>
<div class="container">
    <h3>Sign-up form</h3> 
    <form action="captcha-validate.php" method="post">
      
      <ul class="flex-outer">
        <li><label for="username">Email address</label> <input type="email" name="username" id="username" placeholder="Use your email address here" required></li>
        <li><label for="password">Password</label> <input type="password" name="password" id="password" required></li>
      </ul>
        <label for="captcha">Please Enter the Captcha Text</label><img src='../../private/captcha.php' id="captcha">
            <input type="text" name="answer" placeholder="Enter captcha here"/>
                <!-- <input type="submit" value="Submit"/> -->
        <input type="button" id="reload" value="Reload" />
            <!-- <li><label for="password">Password</label> <input type="password" name="password" id="password" 
            minlength="8" require ></li> -->
        <br><input type="submit" value="Sign me up!">
      
        
    </form>
    <script>
        $(function() { // Handler for .ready() called.
            $('#reload').click(function(){
                $('#captcha').attr('src', 'captcha.php?' + (new Date).getTime());
            });
        });
    </script>
</div>
</body>
</html>

<?php include(SHARED_PATH . '/footer.php'); ?>