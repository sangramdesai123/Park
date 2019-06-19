<?php 
include_once("../../config/config.php");
session_start();



//customer_count
$sql1 = "SELECT count(*) as customer_count from slot_status";

//avg_park_time
$sql2 = "SELECT AVG(hour(timediff(exit_time,entry_time))*60+MINUTE(timediff(exit_time,entry_time))) as avg_park_time from booking";

//revenue
$sql3 = "select sum(total_fare) as revenue from booking where exit_time <= CURRENT_TIMESTAMP and date(exit_time) = date(CURRENT_TIMESTAMP)";

//unique_cust
$sql4 = "select count(DISTINCT username) as unique_cust from booking";
    
$result=mysqli_query($con,$sql1);

$json_array = array();
if (mysqli_num_rows($result) > 0) {
  // output data of each row
  
  while($row = mysqli_fetch_assoc($result)) {
     
      $json_array[]  = $row;
  }
  
  

} else {
  echo "0 results from from dashboard_qurry1.php";
}


$result=mysqli_query($con,$sql2);
if (mysqli_num_rows($result) > 0) {
    // output data of each row
    
    while($row = mysqli_fetch_assoc($result)) {
       
        $json_array[]  = $row;
    }
    
    
  
  } else {
    echo "0 results from from dashboard_qurry2.php";
  }

  $result=mysqli_query($con,$sql3);
if (mysqli_num_rows($result) > 0) {
    // output data of each row
    
    while($row = mysqli_fetch_assoc($result)) {
       
        $json_array[]  = $row;
    }
    
    
  
  } else {
    echo "0 results from from dashboard_qurry3.php";
  }

  $result=mysqli_query($con,$sql4);
if (mysqli_num_rows($result) > 0) {
    // output data of each row
    
    while($row = mysqli_fetch_assoc($result)) {
       
        $json_array[]  = $row;
    }
    
    
  
  } else {
    echo "0 results from from dashboard_qurry4.php";
  }


  echo json_encode($json_array);
?>