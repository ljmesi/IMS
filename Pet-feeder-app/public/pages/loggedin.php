<?php include('../../public/pages/functions.php');?>
<?php include('../../private/initialise.php');?>
<?php include(SHARED_PATH . '/header.php');?>
<?php
session_start();
?>
<?php if (!isLoggedIn()): ?>
    <meta http-equiv="Refresh" content="0; url=sign-in.php">

<?php else: ?>
    <!-- logged in user information -->
    <style>
    div[class="profile_info"] {
      height: 310px;
      width: 90%;
    }
    div[class="user-logo"]{
        width: 95%;
    }
    table[name="t1"] {
        width: 20%;
    }
    </style>
    <div class="user-logo" align='right'>
            <img src="profileuser.png"><br>
            <?php  if (isset($_SESSION['email'])) : ?>
                <strong><?php echo $_SESSION['email']; ?></strong>
    
                    <small>
                        <i  style="color: #888;">(<?php echo 'User'; ?>)</i> 
                        <br>
                        <a href="log-out.php" style="color: blue;">logout</a>
                    </small>

            <?php endif ?>
    </div>
    <h4 align='center'>My profile</h4>
    <div class="profile_info" align='center'>
        <table name="t1">
        <tr>
        <td>Email Address</td>
        <td><input type="text" value="<?php echo $_SESSION['email'] ?>" readonly></td>
        </tr>
        </table>
        <p><button id="pet-info" class="float-left submit-button">Pet-info</button></p>

        <script type="text/javascript">
            document.getElementById("pet-info").onclick = function () {
            location.href = "http://localhost/IMS/Pet-feeder-app/index.php";
            };
        </script>

        <h6 align='center'>Change Password</h6>
        <form method="POST" action="passwordchange.php">
        <table>
        <tr>
        <td>Enter your existing password</td>
        <td><input type="password" size="10" required name="oldpassword"></td>
        </tr>
        <tr>
        <td>Enter your new password</td>
        <td><input type="password" size="10" name="newpassword" 
        required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" 
        onchange="form.confirmnewpassword.pattern = RegExp.escape(this.value);" 
        data-toggle="tooltip" title="The password must contain at least 6 characters, including UPPER and lowercase letters and numbers"></td>
        </tr>
        <tr>
        <td>Re-enter your new password</td>
        <td><input type="password" size="10" required name="confirmnewpassword"></td>
        </tr>
        </table>
        <p><input type="submit" value="Update Password"></p>
        </form>  
    </div>
<?php endif ?>
<?php include(SHARED_PATH . '/footer.php'); ?>