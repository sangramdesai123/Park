<?php 
include_once("../../config/config.php");
session_start();

$sql = "select monthname(date(entry_time)) as month ,count(entry_time) as cnt from booking GROUP by month(entry_time)";



$result=mysqli_query($con,$sql);


if (mysqli_num_rows($result) > 0) {
  // output data of each row
  $json_array = array();
  while($row = mysqli_fetch_assoc($result)) {
     
      $json_array[]  = $row;
  }
  
  echo json_encode($json_array);

} else {
  echo "0 results";
}

?>