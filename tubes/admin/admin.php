<?php 
require '../functions.php' ;

session_start();

if ( !isset($_SESSION['username']) ) {
  header("Location: ../login.php");
  exit;
}


$user = query("SELECT * FROM user");
$barang = query("SELECT * FROM barang");

  if (isset ($_GET['urut'])) {
      $barang = urutBarang($_GET['metode']);
  }else{
      $barang = query("SELECT * FROM barang");
  }

 ?>

<!DOCTYPE html>
<html>
<head>
	<title>Halaman Utama</title>
</head>
<style>
   .footer{
        height: 150px;
        width: 100%;
        background-color: #14be5c;
        margin-top: 500px;
        position: absolute;
    }
</style>

<link rel="stylesheet" href="../css/bootstrap.min.css" 
crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="../css/css.css">
<link href="../js/bootstrap.min.css" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
<body>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-dark nav" style="font-size: 17px;">
  <a class="navbar-brand" href="admin.php"> Sulthronik</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Table
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="user.php">User</a>
          <a class="dropdown-item" href="hotlist.php">Hotlist</a>
        </div>
      </li>
    </ul>
  <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2"  type="search" placeholder="Search" aria-label="Search" autofocus id="keyword" name="keyword">
      <button class="btn btn-light btn-outline-success border-white my-2 my-sm-0 mr-sm-2" type="submit" name="cari" id="tombol-cari">Search</button></a>
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: white;">
          Menu
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="margin-left: -90px; width: 200px">
          <a class="dropdown-item" href="logout.php">Logout</a>
        </div>
      </li>
    </form>
  </div>
</nav>

<!-- navbar -->



<a href="../tambah.php" class="btn btn-success" style="margin-top: 60px; margin-left: 40px;">Tambah Data</a>
<a href="../cetak.php" class="btn btn-success" style="margin-top: 60px; margin-left: 40px;">Cetak</a>
  <form action="" method="get">
    <button class="btn btn-success" type="submit" name="urut" id="urut" style="margin-top:-55px; margin-left: 1415px;" >Urutkan</button>
    <select class="form-control" style="width: 10%; margin-left: 1260px; margin-top: -55px;" name="metode" id="metode"> 
        <option>-- Sort by --</option>
        <option value="ASC">A-Z</option>
        <option value="DESC">Z-A</option>
    </select>
  </form>

<!-- table -->

<div id="container">
  <table border="1" cellpadding="10" cellspacing="0" style="background-color: white; text-align: center; width: 98%; margin:auto; margin-top: 10px;">
    
    <?php $number=1; ?>
      <tr>
          <th>No.</th>
          <th>Opsi</th>
          <th>Foto</th>
          <th>Nama </th>
          <th>Deskripsi</th>
          <th>Speksifikasi Utama</th>
          <th>Brand</th>
          <th>Kategori</th>
          <th>Kisaran Harga</th>
      </tr>
          
      <?php foreach ($barang as $bar) : ?>
      <tr>
          <td width=""><?= $number ?></td>
          <td width="185px"><a href="../edit.php?id=<?= $bar["id"];?>" class="btn btn-success">Edit</a> |
              <a href="../delete.php?id=<?= $bar["id"];?>" onclick="return confirm('Yakin?');" class="btn btn-danger" >Delete</a>
          </td>
          <td><img src="../assets/imgbaru/<?= $bar["foto"]; ?>" width="150px" height="150px"></td>
          <td><?= $bar["nama"]; ?></td>
          <td><?= $bar["deskripsi"];?></td>
          <td><?= $bar["speksifikasi"]; ?></td>
          <td><?= $bar["brand"]; ?></td>
          <td><?= $bar["kategori"]; ?></td>
          <td>Rp.<?= $bar["harga"]; ?></td>
      </tr>
        <?php $number++; ?>
      <?php endforeach ?> 
  </table>
</div>

<!-- table -->

<!-- footer -->

<div class="footer">
    <p style="color: white; margin-top: 70px; margin-left: 38%; font-size: 15px;">Copyright © 2019 | Sulthan Ahmad Rasya</p>
</div>

<!-- footer -->




    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="../js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="../js/script.js"></script>


</body>
</html>