<?php 


require 'functions.php';


if (isset($_SESSION['username'])) {
  header("Location: admin/admin.php");
}


$barang = query("SELECT * FROM barang WHERE kategori LIKE '%tv%'");
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
    .imgbaru:hover{
        box-shadow: 2px -2px 11px 6px rgba(0,0,0,0.75);
    }
    .footer{
        height: 150px;
        width: 100%;
        background-color: #14be5c;
        margin-top: 800px;
        position: absolute;
}
  </style>
  <body >

<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-dark nav" style="font-size: 17px;">
  <a class="navbar-brand" href="index.php"> Sulthronik</a>
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

<!-- navbar -->

<nav aria-label="breadcrumb">
  <ol class="breadcrumb" style="font-size: 17px;">
    <li class="breadcrumb-item"><a href="index.php">Home</a></li>
    <li class="breadcrumb-item active" aria-current="page">TV</li>
  </ol>
</nav>


<!-- tables -->
<h5 style="margin-top: 40px; margin-left: 60px;"> TV </h5>
<hr style="width: 100px; background-color: black; height: 2px; margin-left: 55px; margin-top: 10px;">
<?php foreach ($barang as $t) : ?>
  <div class="card imgbaru" style="width: 18rem; margin-left: 77px; margin-top: 20px; float: left;">
 <a href="tampil.php?foto=<?= $t['foto'];?>&nama=<?=  $t['nama']; ?>&deskripsi=<?=  $t['deskripsi']; ?>&speksifikasi=<?=  $t['speksifikasi']; ?>&brand=<?=  $t['brand'];?>&harga=<?= $t['harga'];?>"><img src="assets/imgbaru/<?= $t['foto']; ?>" class="card-img-top" height="250px" width="200px"></a>
  <div class="card-body" style="height: 60px;">
    <p class="card-text" style="margin-top: -12px;"><?= $t['nama']; ?></p>
  </div>
</div>
<?php endforeach; ?>




<div class="footer">
    <p style="color: white; margin-top: 70px; margin-left: 38%; font-size: 15px;">Copyright © 2019 | Sulthan Ahmad Rasya</p>


</div>



    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>