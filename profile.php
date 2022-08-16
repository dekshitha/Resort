<html>
<head>
<title>My profile</title>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Vacay</title>
    <!--font awesome icons-->

    <link rel="stylesheet" href="fontawesome-free-5.15.1-web/fontawesome-free-5.15.1-web/css/all.css">
    
    <!------owl-carousel-->
    <link rel="stylesheet" href="owl.carousel.min.css">
    <link rel="stylesheet" href="owl.theme.default.min.css">


    <!--Custom Style-->
    <link rel="stylesheet" href="home.css">

</head>
<body>
<main>
    <!--site title---->
    <section class="site-title">
        <div class="site-background">
        <h3 >Profile</h3> 
        
    

<h3>
<?php
session_start();

//include 'db_connection.php';
$con = mysqli_connect("localhost","root","","project") or die("Connect failed: %s\n". $con -> error);
  
	

$userid=$_SESSION['userid'];

$sq="select * from signup where userid = '$userid'";  
$result = mysqli_query($con, $sq);

if ($result -> num_rows > 0) {
   while($row = $result-> fetch_assoc()){
      $x=$row["userid"];
      echo "USERNAME: " . $row["userid"]. "<br>";  
      echo "Email: " . $row["emailid"].  "<br>";
      echo "phoneno: " . $row["phno"]. "<br>" ;
      
   }
}
else{
   echo "0 results";
}



           
mysqli_close($con);
?></h3></div>
    </section></main>
</body>
</html>