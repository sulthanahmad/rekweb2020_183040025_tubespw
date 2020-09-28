<?php 

require '../../functions.php';


session_start();

if ( !isset($_SESSION['username']) ) {
  header("Location: ../../login.php");
  exit;
}

$metode = $_GET['metode'];
$query = query ("SELECT * FROM barang ORDER BY nama $metode");

$barang = query("SELECT * FROM barang");


 ?>


 	<table border="1" cellpadding="10" cellspacing="0" style="background-color: white; text-align: center; width: 99%; margin:auto; margin-top: 10px;">
    <?php $number=1; ?>
      <tr>
        <th>No.</th>
        <th>Opsi</th>
        <th>Foto</th>
        <th>Nama </th>
        <th>Deskripsi</th>
        <th>Speksifikasi Utama</th>
        <th>Brand</th>
        <th>Kisaran Harga</th>
      </tr>
          
      <?php foreach ($barang as $bar) : ?>
        <tr>
          	<td width=""><?= $number ?></td>
          	<td><a href="ubah.php?id=<?= $bar["id"];?>" class="btn btn-success">Edit</a> |
              	<a href="../delete.php?id=<?= $bar["id"];?>" onclick="return confirm('Yakin?');" class="btn btn-danger" >Delete</a>
          	</td>
          	<td><img src="../assets/imgbaru/<?= $bar["foto"]; ?>" width="150" height="150"></td>
          	<td><?= $bar["nama"]; ?></td>
          	<td><?= $bar["deskripsi"];?></td>
          	<td><?= $bar["speksifikasi"]; ?></td>
          	<td><?= $bar["brand"]; ?></td>
          	<td>Rp.<?= $bar["harga"]; ?></td>
        </tr>
       <?php $number++; ?>
      <?php endforeach ?> 
    </table>