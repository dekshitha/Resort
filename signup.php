<html>
<head>
     <!--font awesome icons-->

     <link rel="stylesheet" href="fontawesome-free-5.15.1-web/fontawesome-free-5.15.1-web/css/all.css">
    
     <!------owl-carousel-->
     <link rel="stylesheet" href="owl.carousel.min.css">
     <link rel="stylesheet" href="owl.theme.default.min.css">
 
 
     <!--Custom Style-->
     <link rel="stylesheet" href="signup.css">
</head>
<body>
    <div class="sign">
        <div class="form-box">
          <div class="button-box">
             <!--<div id="btn"></div>-->
            <button type="button" class="toggle-btn" onclick="login()">LOG IN</button>
            <button type="button" class="toggle-btn" onclick="register()">SIGN UP</button>
          </div>
          <div class="social-icons">
          <i class="fab fa-facebook"></i>
          <i class="fab fa-google"></i>
          <i class="fab fa-twitter"></i>
          </div>
          
          <form id="login" action="login.php" method="post" class="input-group">
            <input type="text" id="userid" name="userid" class="input-field" placeholder="User Name" required> 
            <input type="password" id="password" name="password" class="input-field" placeholder="Enter Password" required><br>
            <br>
            <button type="submit" value="login" name="login" class="submit-btn">Login</button><br>
            <a href="password.html" style="color: white;">Forgot Password</a>
          </form>
          <form id="register"  action="" method="post" class="input-group">
            <input type="text" id="userid" name="userid" class="input-field" placeholder="User Name" required> 
            <input type="text" id="emailid" name="emailid" class="input-field" placeholder="Enter email id" required>
            <input type="password" id="password" name="password" class="input-field" placeholder="Enter password" required>
            <input type="text" id="phno" name="phno" class="input-field" placeholder="Enter Phoneno." required>
            <input type="checkbox" class="check-box" required><span>I agree to the terms and conditions</span>
            <button type="submit" value="submit" name="submit" class="submit-btn">Submit</button>
        </form>
    </div>
    </div>
    
    <script>
        var x=document.getElementById("login");
        var y=document.getElementById("register");
        var z=document.getElementById("btn");
        function register(){
            x.style.left="-400px";
            y.style.left="50px";
            z.style.left="110px";
        }
        function login(){
            x.style.left="50px";
            y.style.left="450px";
            z.style.left="110px";
        }
    </script>
</body>


</html>
<?php
session_start();
//header('location:signup.html');
//include 'db_connection.php';
$con = mysqli_connect("localhost","root","","project") or die("Connect failed: %s\n". $con -> error);
  
if(isset($_POST['submit'])){	 
$userid=mysqli_real_escape_string($con,$_POST['userid']);
	  
$emailid=mysqli_real_escape_string($con,$_POST['emailid']);
	
$password=mysqli_real_escape_string($con,$_POST['password']);
	   	  
$phno=mysqli_real_escape_string($con,$_POST['phno']);
	 	 	 	
$s = " select * from signup where userid = '$userid'";
$result=mysqli_query($con, $s);
$num = mysqli_num_rows($result);

if($num == 1){
   echo"<script>alert('username already taken')</script>";}
else{
   $insert_clint="insert into signup(userid,emailid,password,phno)
   values('$userid','$emailid','$password','$phno')";
   mysqli_query($con, $insert_clint);
   echo"<script>alert('Data upload successful')</script>";
   
   
}
}




           
mysqli_close($con);
?>