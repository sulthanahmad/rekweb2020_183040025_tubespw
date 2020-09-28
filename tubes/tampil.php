<?php 


require 'functions.php';





$hotlist = query("SELECT * FROM hotlist");
$barang = query("SELECT * FROM barang ");
 
 ?>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/css.css">
    <title>Index</title>
  </head>
  <style>
      @media (max-width: 1000px) {
      .card1{
          margin-left: 120px;
      
      
    }
  </style>
  <body >

<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-dark nav" style="font-size: 17px;">
  <a class="navbar-brand" href="index.php">Sulthronik</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
       <a href="login.php" class="btn btn-light text-success" style="width: 70px;">Login </a>
    </form>
  </div>
</nav>


<!-- Navbar -->

  

<div class="card" style="max-width: 1000px;  margin-top: 80px; margin-left: 269px; border: white; height: 300px; ">
  <div class="row no-gutters ">
    <div class="col-md-4 " style="height: 200px;">
      <img src="assets/imgbaru/<?= $_GET["foto"]; ?>" class="card-img-top " style="width: 300px; height: 300px; ">
    </div>
    <div class="card" style="width: 41rem; border:white; margin-left: 10px; ">
  <div class="card-header" style="height: 100px;">
  <h3 style="margin-top: 5px;"><?= $_GET["nama"]; ?></h3>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item"><?= $_GET["deskripsi"]; ?></li>
    <li class="list-group-item"><?= $_GET["brand"]; ?></li>
    <li class="list-group-item">Rp.<?= $_GET["harga"]; ?></li>
  </ul>
</div>
  </div>
</div>
<div class="card text-center" style="width: 1000px; border: white; margin-top: 0px; margin-left: 269px; ">
  <div class="card-header" style="background-color: white;" >
    <ul class="nav nav-tabs card-header-tabs">
      <li class="nav-item">
        <a class="nav-link active" href="#">Speksifikasi</a>
      </li>
    </ul>
  </div>
  <div class="card-body" style="height: 180px;">
    <p class="card-text"><?= $_GET["speksifikasi"]; ?></p>
    
  </div>
</div>








    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>