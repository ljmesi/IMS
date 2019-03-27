# IMS: Pet Feeder
A web application to predict your dog or cat's food amount and track their weight/food amount.

## Motivation
This repository is for course Information Management Systems (Course code: 1DL471) at Uppsala University Spring 2019.

**Website Example**

<img src="https://github.com/ljmesi/IMS/blob/master/Pet-feeder-app/public/images/Pet_page1.png" width="200">
<img src="https://github.com/ljmesi/IMS/blob/master/Pet-feeder-app/public/images/Pet_page2.png" width="200">

## Features

* Log in
* Sign up(with email and password)
* Submit form pet information
* Open previous entries
* Amount of food in weight

*Future development*
* Share information with veterinarian
* Chart for weight tracking(if logged in)
* Food brand recommendations


## Installation

This project is currently designed for local development only, through the use of a LAMP or WAMP setting.

**LAMP**
*Assuming Linux os already installed*
1. Installing and configuring Apache Webserver
```
$ apt-get install apache2
```
  If apache2 webserver has been successfuly installed, we will see the apache page showing it worked when we open our Firefox web browser and type in local host 127.0.0.1.

2. Installing and administrating MYSQL
```
$ sudo apt-get update

$ sudo apt-get install mysql-server mysql-client

$ sudo service mysql start

$ sudo /usr/sbin/update-rc.d mysql defaults
```
3. PHP installation and configuration
```
$ sudo apt-get install php5 php5-mysql php-pear php5-gd  php5-mcrypt php5-curl

$ service apache2 restart
```
4. Testing out the LAMP server
 Create the phpmysql.php file by following command in the above directory:
```
$ sudo touch /var/www/html/phpmysql.php
```
Open the file by vi as follows:
```
$ vi /var/www/html/phpmysql.php
```
Paste the following line in the file except in the password line we give the root mysql password we set before in our case lamp1234
```
<?php
$con = mysql_connect(“localhost”,”root”,”lamp1234″);
if (!$con)
{
 die(‘Could not connect: ‘ . mysql_error());
}
else
{
 echo “Congrats! connection established successfully”;
}
mysql_close($con);
```
If we open the browser and type in http://localhost/phypmysql.php we will see congrats connection established successfully shown.

5. Install and Configure PHPmyAdmin
```
$ sudo apt-get update

$ sudo apt-get install phpmyadmin
```
We need to go inside the apache2.conf file and in the include directory under virtual host configuration in the following bold part add in the phpmyadmin config file as follows:
```
Include /etc/phpmyadmin/apache.conf

IncludeOptional conf-enabled/*.conf

# Include the virtual host configurations:
IncludeOptional sites-enabled/*.conf

Include /etc/phpmyadmin/apache.conf

$ sudo service apache2 restart
```
For more information: https://www.pickaweb.co.uk/kb/set-up-lamp-server-ubuntu/

**WAMP**
1. Download latest WAMP server: http://www.wampserver.com/en/#download-wrapper

2. Follow set up wizard
  
  Select your default browser’s .exe file(default is Internet Explorer) 
  * Opera: C:\Program Files (x86)\Opera\opera.exe
  * Firefox: C:\Program Files (x86)\Mozille Firefox\firefox.exe
  * Safari: C:\Program Files (x86)\Safari\safari.exe
  * Chrome: C:\Users\xxxxx\AppData\Local\Google\Chrome\Application\chrome.exe

  then click Open to continue.
 
  Leave the SMTP server as localhost, change the email address to one of your choosing.

3. Test WampServer
  
  Once installation has completed, test installation by going to http://localhost/ in your browser. The WampServer homepage should display.

4. Apache Configuration
    
   Click on the WampServer icon, go to the php menu, and click on the php.ini option. This will open the php.ini file in your plain text editor. Adjust the following settings:

    * Set level of error reporting – remove the `;` at beginning of line to enable:
    `error_reporting = E_ALL ^ E_DEPRECATED` (~line 112)
    * Log PHP errors – remove the `;` at beginning of line to enable:
    `error_log = "c:/wamp/logs/php_error.log"` (~line 639)
    *  Increase maximum size of POST data that PHP will accept – change the value:
    `post_max_size = 50M` (~line 734)
    * Increase maximum allowed size for uploaded files – change the value:
    `upload_max_filesize = 50M `(~line 886)

  Once you have made the above changes, click Save.

  To use custom permalinks in WordPress, you will need to enable Apache’s `rewrite_module`. 

   For more information: https://make.wordpress.org/core/handbook/tutorials/installing-a-local-server/wampserver/

5. MySQL Configuration

  Create a database in WampServer via phpMyAdmin, access phpMyAdmin by entering http://localhost/phpmyadmin/ in your web browser.

  The main phpMyAdmin screen will appear. On the left is a list of databases that already exist: information_schema, mysql,         performance_schema, and test. Do not delete these, as they are necessary for WampServer and phpMyAdmin to run properly.

  To create a database, click Databases in the main navbar at the top. You will need to enter the database name.


## How to use?

## Credits

*LAMP server set up:* https://www.pickaweb.co.uk/kb/set-up-lamp-server-ubuntu/

*WAMP server set up:* https://make.wordpress.org/core/handbook/tutorials/installing-a-local-server/wampserver/

