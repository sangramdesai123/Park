<?php

$servername = "localhost";
$username   = "root";
$password   = "123";
$dbname     = "std_db";
$dbname2    = "vehicle_parking";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
$conn2 =  mysqli_connect($servername, $username, $password, $dbname2);
// Check connection
if (!$conn) {
	
die("Connection failed: " . mysqli_connect_error());

}

if (!$conn2) {
	
    die("Connection failed: " . mysqli_connect_error());
    
    }
    
    

?>


