<?php 
include_once("../../config/config.php");
session_start();if(!isset($_SESSION['username'])){   header("Location: ../login.php");   exit(); }


$sql = "SELECT * FROM `parking_info`";


    
$result=mysqli_query($con,$sql);


if (mysqli_num_rows($result) > 0) {
  // output data of each row
  $json_array = array();
  while($row = mysqli_fetch_assoc($result)) {
     
      $json_array[]  = $row;
  }
  
  echo json_encode($json_array);

} else {
  echo "0 results from get_slot_info.php";
}

?>