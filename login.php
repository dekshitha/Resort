<?php
session_start();

//include 'db_connection.php';
$con = mysqli_connect("localhost","root","","project") or die("Connect failed: %s\n". $con -> error);
  
	 
$userid=mysqli_real_escape_string($con,$_POST['userid']);
	  
$password=mysqli_real_escape_string($con,$_POST['password']);

	 	 	 	
$s = " select * from signup where userid = '$userid' && password = '$password'";
$result=mysqli_query($con, $s);
$num = mysqli_num_rows($result);

if($num == 1){
     $_SESSION['userid']=$userid;
     header('location:home.php');
}
else{
$sq = " select * from signup where userid = '$userid' ";
$r=mysqli_query($con, $sq);
$n = mysqli_num_rows($r);
if($n >0){
   echo '<body style="background-color:lightblue">';
   echo"<script>alert('Incorrect password')</script>";
   echo "<a href='signup.php'>Try again</a><br>";
}
else{
   echo '<body style="background-color:lightblue">';
   echo"<script>alert('User is not registered, please register')</script>";
   echo "<a href='signup.php'>Register</a><br>";
}
}



           
mysqli_close($con);
?>
