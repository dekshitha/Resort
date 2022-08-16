<?php

//session_start();
//include 'db_connection.php';
$con = mysqli_connect("localhost","root","","project") or die("Connect failed: %s\n". $con -> error);
if(isset($_POST['submit'])){	 
    $userid=mysqli_real_escape_string($con,$_POST['userid']);
          
    $emailid=mysqli_real_escape_string($con,$_POST['emailid']);
    
                 
    $phno=mysqli_real_escape_string($con,$_POST['phno']);
   
    
    $sq="SELECT * FROM signup where userid='$userid' AND emailid='$emailid' AND phno='$phno'"; 
    $result = mysqli_query($con, $sq);

   if ($result -> num_rows > 0) {
   while($row = $result-> fetch_assoc()){
      echo '<body style="background-color:lightblue">';
      echo "<h3>Your password is</h3> <br>";
      echo "Username : " . $row["userid"]. "<br>";  
      echo "Password : " . $row["password"].  "<br>";
      echo "<a href='signup.php'>Go back to login page.</a><br>";
      
}
echo"<script>alert('Data retrieved successfully')</script>";

     }
else{echo"<script>alert('INVALID DETAILS')</script>";}
       
    }
?>








