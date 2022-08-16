<?php
session_start();
if(!isset($_SESSION['userid'])){
    header('location:signup.html');
     
}

?>

<html>
<head>
<title>home page</title>
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
    
<!-------navigation------------->

<nav class="nav">
    <div class="nav-menu flex-row">
        <div class="nav-brand">
            <a href="#" class="text-grey">HOME</a>
        </div>
        <div class="toggle-collapse">
            <div class="toggle-icons">
                <i class="fas fa-bars"></i>
            </div>
        </div>
        <div>
            <ul class="nav-items">
                <li class="nav-link">
                    <a href="profile.php">My profile</a>
                </li>
                <li class="nav-link">
                    <a href="reservation.html">Reservation</a>
                </li>
                <li class="nav-link">
                    <a href="trial.html">Activities</a>
                </li>
                <li class="nav-link">
                    <a href="booking.php">History</a>
                </li>
        
                <li class="nav-link">
                    <a href="reviews.php">Reviews</a>
                </li>
                <li class="nav-link">
                    <a href="logout.php">Logout</a>
                </li>
                  
            </ul>
        </div>
        
    </div>

</nav>


<!---------------x---navigation---------x------>
<!--------main site section------->

<main>
    <!--site title---->
    <section class="site-title">
        <div class="site-background">
        <h2>Hello!</h3>   
        <h1>Welcome <?php echo $_SESSION['userid']; ?></h1>
        <h3>We want you to relax and feel rejuvenated in nature, away from city life.</h3>
        <h3>We hope you enjoy the experience, don't just experience the experience!</h3>
        
    </div>
    </section>
</main>
</html>
