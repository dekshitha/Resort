<?php
session_start();
//include 'db_connection.php';
$con = mysqli_connect("localhost","root","","project") or die("Connect failed: %s\n". $con -> error);

    $u=$_SESSION['userid'];
    $sq="SELECT * FROM reservation,activity where rid=bid and userid='$u'"; 
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


	                

echo"<script>alert('Data retrieved successfully')</script>";

     }
else{echo"<script>alert('No bookings done')</script>";}
       
 
?>