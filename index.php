  <?php require_once 'db_connect.php'; ?>

 

<!DOCTYPE html>

<html>

<head>

    <title>CR11</title>
    	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="traveling2.css">

 

   

 

</head>

<body style=" background: linear-gradient(to top, #33ccff 0%, #ffffcc 100%); height: 1000px;">

 <nav class="navbar navbar-expand-lg navbar-light bg-light" style="position: fixed; width: 1360px;">
  <a class="navbar-brand" href="index.php">New Traveling</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item">
        <a class="nav-link" href="home.php">home</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="traveling.php">TravelingTipps <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Conact us</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
<br>

<div class="conter">
   		<h1 class="well" style=" text-align: center;color: rgb(189, 167, 167);font-family:Didot; margin-top: 55px;">Wellcom in NEW Travling in Vienna</h1>
		<a href="resturants.php"><img src=https://img-aws.ehowcdn.com/340x221p/photos.demandstudios.com/getty/article/129/136/87532086.jpg  style="width: 300px; height: 300px; border-radius: 15px 50px; box-shadow: 5px 5px #BDA7A7;  margin-left: 150px;margin-top: 50px;">
		<a href="resturants.php"><h6 style="margin-left: 150px; margin-top: 10px;">TOP 10 FAVORITE Resturant IN Vienna</h6></a></div>
 
<div style="margin-top: -330px;margin-left: 500px;">
		<a href="concerts.php"><img src=https://3gwtod2hg0th1ikege3y0nok-wpengine.netdna-ssl.com/wp-content/uploads/2017/12/best-concerts-620x310.png  style="width: 300px; height: 300px; border-radius: 15px 50px; box-shadow: 5px 5px #BDA7A7; "><a href="concerts.php"><h6 style="margin-left: 20px; margin-top: 10px;">TOP 10 FAVORITE Concerts IN Vienna</h6></a>

 
<div style="margin-top: -330px;margin-left: 400px;">
		<a href="things.php"><img src=https://www.falstaff.at/fileadmin/_processed_/csm_shutterstock_wien_kahlenberg_336636860_d5638577bb.jpg  style="width: 300px; height: 300px; border-radius: 15px 50px; box-shadow: 5px 5px #BDA7A7; "><a href="things.php"><h6 style="margin-left: 20px; margin-top: 10px;">TOP 10 FAVORITE things to do IN Vienna</h6></a>


</div>

<div class="text-center" id="container" style=" font-size: 25px;margin-top: 70px; color: rgb(189, 167, 167); font-family:Didot;margin-left: -500px;"  >
      <a href="register.php" class="Registration" style="padding-right: 50px; ">Registration</a> 
      <a href="login.php" class="Login">Login</a>

</div>


</body>

</html>




<?php 
  include('function.php');
?>
<!DOCTYPE html>
<html>
<head>
  <title>Home</title>
  <link rel="stylesheet" type="text/css" href="style2.css">
</head>
<body>
  <div class="header">
    <h2>Home Page</h2>
  </div>
  <div class="content">
    <!-- notification message -->
    <?php if (isset($_SESSION['success'])) : ?>
      <div class="error success" >
        <h3>
          <?php 
            echo $_SESSION['success']; 
            unset($_SESSION['success']);
          ?>
        </h3>
      </div>
    <?php endif ?>
    <!-- logged in user information -->
    <div class="profile_info">
      <img src=https://upload.wikimedia.org/wikipedia/commons/3/38/Wikipedia_User-ICON_byNightsight.png  >

      <div>
        <?php  if (isset($_SESSION['user'])) : ?>
          <strong><?php echo $_SESSION['user']['username']; ?></strong>

          <small>
            <i  style="color: #888;">(<?php echo ucfirst($_SESSION['user']['user_type']); ?>)</i> 
            <br>
            <a href="index.php?logout='1'" style="color: red;">logout</a>
          </small>

        <?php endif ?>
      </div>
    </div>
  </div>
</body>
</html>
<?php
include('function.php');
if (!isLoggedIn()) {
  $_SESSION['msg'] = "You must log in first";
  header('location: login.php');
}
