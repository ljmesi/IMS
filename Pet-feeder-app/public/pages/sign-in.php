<?php include('../../private/initialise.php') ?>
<?php include(SHARED_PATH . '/header.php'); ?>
<?php include(SHARED_PATH . '/captcha.php'); ?>
<?php include(SHARED_PATH . '/captcha-validate.php'); ?>

<head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
</head>
<html>
<body>
<img src="captcha.php" id="captcha">
<form action="captcha-validate.php" method="post">
<input type="text" name="answer" placeholder="Enter captcha here"/>
<input type="submit" value="Submit"/>
<input type="button" id="reload" value="Reload" />
</form>
<script>
        $(function() { // Handler for .ready() called.
            $('#reload').click(function(){
                $('#captcha').attr('src', 'captcha.php?' + (new Date).getTime());
            });
        });
</script>
</body>
</html>
      
<?php include(SHARED_PATH . '/footer.php'); ?>