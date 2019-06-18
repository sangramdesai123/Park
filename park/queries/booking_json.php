<?php 
include_once("../config/config.php");
session_start();
$sql="SELECT MONTHNAME(entry_time) as label,count(1) as value from Booking
where YEAR(entry_time)=2019
GROUP by MONTH(entry_time) ;";
$result=mysqli_query($con,$sql);


if (mysqli_num_rows($result) > 0) {
  // output data of each row
  $json_array = array();
  while($row = mysqli_fetch_assoc($result)) {
     
      $json_array[]  = $row;
  }
  echo json_encode($json_array);

} else {
  echo "0 results from booking_json";
}

?>