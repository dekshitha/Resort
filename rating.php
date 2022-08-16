<?php
    $POST = filter_var_array($_POST, FILTER_SANITIZE_STRING);
    $POSTI = filter_var_array($_POST, FILTER_SANITIZE_NUMBER_INT);
    $con = mysqli_connect("localhost","root","","project") or die("Connect failed: %s\n". $con -> error);
     
    if(isset($_POST['starRate'])){	 
        $starRate=mysqli_real_escape_string($con,$_POST['starRate']);
        $rateMsg=mysqli_real_escape_string($con,$_POST['rateMsg']);
        $date=mysqli_real_escape_string($con,$_POST['date']);
        $name=mysqli_real_escape_string($con,$_POST['name']);
        $insert_clint="insert into rating(userid,userReview,userMessage,dateReviewed)
        values('$name','$starRate','$rateMsg','$date')";



     $run_costumer = mysqli_query($con, $insert_clint);
	  

     if($run_costumer){
		                

     echo"<script>alert('Data upload successful')</script>";
     }
     else{echo"<script>alert('Data upload not successful !')</script>";}
    }
    
?>
    

        