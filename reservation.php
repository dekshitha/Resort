<?php
session_start();
//include 'db_connection.php';
$con = mysqli_connect("localhost","root","","project") or die("Connect failed: %s\n". $con -> error);
  


if(isset($_POST['submit'])){	 
$arriving=mysqli_real_escape_string($con,$_POST['arriving']);
	  
$departing=mysqli_real_escape_string($con,$_POST['departing']);
	
$type=mysqli_real_escape_string($con,$_POST['type']);
	 	 	 	 
$guests=mysqli_real_escape_string($con,$_POST['guests']);

$userid=$_SESSION['userid'];
if($type=="Superior Luxury Cottage"){
    $n=(rand(100,105));
    
}
if($type=="Tree House"){
    $n=(rand(400,405));
}
if($type=="Suite Cottage"){
    $n=(rand(300,305));
}
if($type=="Luxury Cottage"){
    $n=(rand(200,205));
}

$s = " select roomno from room where type='$type' AND roomno NOT IN( select roomno from reservation where arriving='$arriving' AND departing='$departing')";
$result=mysqli_query($con, $s);
$num = mysqli_num_rows($result);

if($num > 0){

$i="select roomno from reservation where arriving='$arriving' AND departing='$departing' AND roomno=$n";
$r=mysqli_query($con, $i);
$nu=mysqli_num_rows($r);
if($nu > 0){
    echo"<script>alert('generated room no is booked, try again sorry')</script>";
}
else{     


$insert_clint="insert into reservation(roomno,userid,arriving,departing,type,guests)
values('$n','$userid','$arriving','$departing','$type','$guests')";



$run_costumer = mysqli_query($con, $insert_clint);
	  

if($run_costumer){
    $sq="select * from reservation where arriving='$arriving' AND departing='$departing' AND roomno=$n"; 
    $result = mysqli_query($con, $sq);

   if ($result -> num_rows > 0) {
   while($row = $result-> fetch_assoc()){
      echo '<body style="background-color:lightblue">';
      echo "<h1>Booking Details:</h1> <br>";
      echo "Booking id: " . $row["rid"]. "<br>";  
      echo "Room No.: " . $row["roomno"].  "<br>";
      echo "Username: " . $row["userid"]. "<br>" ;
      echo "Arriving: " . $row["arriving"]. "<br>" ;
      echo "Departing: " . $row["departing"]. "<br>" ;
      echo "Room type: " . $row["type"]. "<br>" ;
      echo "Guests: " . $row["guests"]. "<br>" ;
      echo "To make your stay with us exciting and eventful, we have curated a wide variety of activities for you and your loved ones!<br>";
      echo "Please note your booking id for further process. " .$row["rid"]. "<br>";
      echo "<a href='trial.html'>Choose your activities</a><br>";
}


}
		                

echo"<script>alert('Data upload successful')</script>";
     }
else{echo"<script>alert('Data upload not successful !')</script>";}
       
    }	  
}
else{echo"<script>alert('Room not available!')</script>";
}
}

//}
    //}
//}
//else{echo"<script>alert('generated room no is booked, try again sorry')</script>";}

mysqli_close($con);
?>

