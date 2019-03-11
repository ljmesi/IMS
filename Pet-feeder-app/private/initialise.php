<?php 
// This file takes care of function common to all pages 
// such that should be loaded and available to all pages 

// Save the path to the private directory in constant called PRIVATE_PATH
// __FILE__ denotes the current file path
define("PRIVATE_PATH", dirname(__FILE__));
// define the rest of the constants with the help of PRIVATE_PATH 
define("SHARED_PATH", PRIVATE_PATH . '/shared');
define("JS_PATH", PRIVATE_PATH . '/js');
define("DB_PATH", PRIVATE_PATH . '/db');

// Debugging here:
// $var = constant("SHARED_PATH");
// echo $var;
// Just testing if this script is run
// echo '<script>console.log({$var})</script>';

// Define default variable name for storing the particular pet species name
$pet_species = $pet_species ?? "pet"; 

// How to capitalise the first letter
// echo ucfirst("pet");

?>