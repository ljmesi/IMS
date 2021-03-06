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
    <head>
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
    input[type=password] {
    width: 12em;
    height: 2.05em;
    padding: 5px;
    margin: 10px 0px 10px 0;
    border-radius: 7px;
    background-color: #fdedec;
    order: 1;
    }
    </style>
    </head>
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
    <h3 align='center'>My profile</h3>
    <div class="profile_info" align='center'>
        <table name="t1">
        <tr>
        <td><div style="width:150px;">Email Address</div></td>
        <td><input type="text" value="<?php echo $_SESSION['email'] ?>" readonly></td>
        </tr>
        </table>
        <p><button id="pet-info" class="float-left submit-button">Goto Pet-input Form</button></p>
        <p><button id="pet-wt" class="float-left submit-button">Goto Pet History</button></p>

        <script type="text/javascript">
            document.getElementById("pet-info").onclick = function () {
            location.href = "http://localhost/IMS/Pet-feeder-app/index.php";
            };
        </script>

        <script type="text/javascript">
            document.getElementById("pet-wt").onclick = function () {
            location.href = "http://localhost/IMS/Pet-feeder-app/public/pages/test_data.php";
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