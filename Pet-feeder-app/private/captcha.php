<?php
/* captcha.php file */
session_start();
header("Expires: Tue, 01 Jan 2013 00:00:00 GMT");
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
/*do it not cacheable for it can change between page loads*/
header("Cache-Control: no-store, no-cache, must-revalidate");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");

$chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
$randomString = '';
for ($i = 0; $i < 5; $i++)
{
    $randomString .= $chars[rand(0, strlen($chars)-1)];
}
$_SESSION['captcha'] = strtolower( $randomString );

$im = @imagecreatefromjpeg('./captcha.jpg'); 
$text_color = imagecolorallocate($im, 233, 14, 91);
imagestring($im, 6, 16, 5,  $randomString, $text_color);
header('Content-type: image/jpeg');
imagejpeg($im);
imagedestroy($im);
?>