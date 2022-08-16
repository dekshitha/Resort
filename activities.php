<?php
//session_start();
//include 'db_connection.php';
$con = mysqli_connect("localhost","root","","project") or die("Connect failed: %s\n". $con -> error);
  


if(isset($_POST['submit'])){	 
$bid=mysqli_real_escape_string($con,$_POST['bookingid']);
	  
$activities=mysqli_real_escape_string($con,$_POST['activity']);
	
$i="select rid from reservation where rid=$bid";
$r=mysqli_query($con, $i);
$nu=mysqli_num_rows($r);
if($nu<1){
    echo"<script>alert('Booking id is invalid')</script>";
}
else{
$insert_clint="insert into activity(bid,activities)
values('$bid','$activities')";



$run_costumer = mysqli_query($con, $insert_clint);
	  

if($run_costumer){
    $sq="select * from reservation,activity where rid=bid AND rid=$bid"; 
    $result = mysqli_query($con, $sq);

   if ($result -> num_rows > 0) {
   while($row = $result-> fetch_assoc()){
      echo '<body style="background-color:lightblue">';
      echo "<h1>Complete Booking Details:</h1> <br>";
      echo "Booking id: " . $row["rid"]. "<br>";  
      echo "Room No.: " . $row["roomno"].  "<br>";
      echo "Username: " . $row["userid"]. "<br>" ;
      echo "Arriving: " . $row["arriving"]. "<br>" ;
      echo "Departing: " . $row["departing"]. "<br>" ;
      echo "Room type: " . $row["type"]. "<br>" ;
      echo "Guests: " . $row["guests"]. "<br>" ;
      echo "activities: " .$row["activities"]. "<br>";
      
}
echo "<a href='home.php'>Go back to home page.</a><br>";

}		                

echo"<script>alert('Data upload successful')</script>";

     }
else{echo"<script>alert('Already uploaded!')</script>";
    echo "<a href='home.php'>Go back to home page.</a><br>";   
}

       
    }	  
}
?>

