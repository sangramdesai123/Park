<?php 
include_once("../../config/config.php");
session_start();

$sql = "SELECT username,booking_id,first_name ,last_name,level_number,slot_number FROM normal_user NATURAL JOIN (SELECT booking_id,username,level_number,slot_number from booking NATURAL join slot_status) AS a";


$result=mysqli_query($con,$sql);


if (mysqli_num_rows($result) > 0) {
  // output data of each row
  $json_array = array();
  while($row = mysqli_fetch_assoc($result)) {
     
      $json_array[]  = $row;
  }
  
  echo json_encode($json_array);

} else {
  echo "0 results from live_status.php";
}

?>