<?php
require_once('data/conn/config.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $title; ?></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="data/css/style.css">
    <link rel="shortcut icon" type="image/x-icon" href="data/img/logo.ico"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div id="slider" class="carousel slide" data-ride="carousel" date-interval="7000">
<ul class="carousel-indicators">
  <li data-target="#slider" data-slide-to="0" class="active"></li>
  <li data-target="#slider" data-slide-to="1"></li>
</ul>
<div class="carousel-inner">
  <div class="carousel-item active">
    <center><img src="data/img/ban1.png"></center>
  </div>
  <div class="carousel-item">
    <center><img src="data/img/ban2.png"></center>
</div>
</div>
</div>
<br>
<div class="col text-center">
  <a href="data/index"><button type="button" class="btn btn-light text-primary" data-toggle="tooltip" data-placement="left" title="เว็บไซต์ห้องสมุด">เข้าสู่เว็บไซต์ห้องสมุด</button></a>
  <a href="https://www.crms4.ac.th/" target="_blank"><button type="button" class="btn btn-light text-primary data-toggle="tooltip" data-placement="right" title="เว็บไซต์โรงเรียน"">เข้าสู่เว็บไซต์โรงเรียน</button></a>
</div>
</body>
</html>