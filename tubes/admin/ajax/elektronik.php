<?php 

require '../../functions.php';

session_start();

if ( !isset($_SESSION['username']) ) {
  header("Location: ../../login.php");
  exit;
}

$keyword = $_GET["keyword"];

$barang = query("SELECT * FROM barang
				 WHERE 
				 nama LIKE '%$keyword%' OR 
				 deskripsi LIKE '%$keyword%' OR
				 speksifikasi LIKE '%$keyword%' OR
				 brand  LIKE '%$keyword%' OR
         kategori  LIKE '%$keyword%' OR
				 harga LIKE '%$keyword%'
				");

 ?>

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
          	<td width="185px"><a href="ubah.php?id=<?= $bar["id"];?>" class="btn btn-success">Edit</a> |
              	<a href="../delete.php?id=<?= $bar["id"];?>" onclick="return confirm('Yakin?');" class="btn btn-danger" >Delete</a>
          	</td>
          	<td><img src="../assets/imgbaru/<?= $bar["foto"]; ?>" width="150" height="150"></td>
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