<?php
  include_once("./config/config.php");
  session_start();

  /*get the data*/
  $username=$_GET['username'];
  $password=$_GET['password'];

  /*check the username and password match from database*/
  $sql="SELECT * FROM `admin` WHERE username='".$username."'";
  $result=mysqli_query($con,$sql);
  $result_check=mysqli_num_rows($result);
  $row=mysqli_fetch_array($result);
  if($result_check>0){
  	echo "Yes";
  	if($row['password']==$password){
  		/*login succesful*/
      $_SESSION['username']=$username;
  		header("Location:./park/index.php?login=success");
  		exit();	

  	}else{
  		header("Location:login.html?login=passerror");
  		exit();	
  	
}  }else{
  	header("Location:login.html?login=error");
  	exit();
  }
?>