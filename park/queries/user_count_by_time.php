<?php 
include_once("../../config/config.php");
session_start();if(!isset($_SESSION['username'])){   header("Location: ../login.php");   exit(); }

$sql = "select hh,COALESCE(c,0) as cnt from daytime as d1 \n"

    . "left join \n"

    . "((select hour(entry_time) as h ,count(entry_time)as c from booking GROUP by hour(entry_time)) as d2)\n"

    . "on d1.hh=d2.h";




$result=mysqli_query($con,$sql);


if (mysqli_num_rows($result) > 0) {
  // output data of each row
  $json_array = array();
  while($row = mysqli_fetch_assoc($result)) {
     
      $json_array[]  = $row;
  }
  
  echo json_encode($json_array);

} else {
  echo "0 results from user_count_by_time";
}

?>