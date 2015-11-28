<?php
session_start();
?>
  <!-- Hello fellow traveller - Enjoy your stay - but not too much -->
  <!DOCTYPE html><html class="full" lang="en">

  <head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>ShowTime</title>

  <link href="css/bootstrap.css" rel="stylesheet">
  <link href="css/showtime.css" rel="stylesheet">
  <link href="css/easy-autocomplete.min.css" rel="stylesheet">
  <link href="css/easy-autocomplete.themes.min.css" rel="stylesheet">
  <link rel="icon" type="image/png" href="showtime-icon.png">
  </head>

  <body>

  <!-- JavaScript -->
  <script src="js/jquery-1.10.2.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="js/notify.min.js"></script>
  <script src="js/jquery.easy-autocomplete.min.js"></script>

<nav class="navbar navbar-fixed-bottom navbar-inverse" role="navigation">
  <a class="navbar-brand" href="index.php">ShowTime</a>
  <div class="collapse navbar-collapse navbar-ex1-collapse">
  <ul class="nav navbar-nav">
  <li><a>beautiful. perfect. like a duck.</a></li>
  </ul>
  </div>
  </div>
  </nav>

  <div class="container">

  <h1>ShowTime<img id="loaderImage" src="img/loader32.gif"/></h1>

<div id="contentcontainer">
<?php
if (isset($_SESSION['user']))
  include 'showtime.php';
else
  include 'login.php';
?>
</div>


  </body>
  </html>
