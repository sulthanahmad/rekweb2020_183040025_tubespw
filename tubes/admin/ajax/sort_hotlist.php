<?php 

require '../../functions.php';

session_start();

if ( !isset($_SESSION['username']) ) {
  header("Location: ../../login.php");
  exit;
}

$metode2 = $_GET['metode2'];
$query = query("SELECT * FROM hotlist ORDER BY nama $metode2");

$hotlist = query("SELECT * FROM hotlist");


 ?>


 	<table border="1" cellpadding="10" cellspacing="0" style="background-color: white; text-align: center; width: 99%; margin:auto; margin-top: 10px;">
    
    <?php $number=1; ?>
      <tr>
        <th>No.</th>
        <th>Opsi</th>
        <th>Foto</th>
        <th>Nama</th>
        <th>Brand</th>
      </tr>
          
      <?php foreach ($hotlist as $h) : ?>
        <tr>
          <td width=""><?= $number ?></td>
          <td><a href="../edit.php?id=<?= $h["id"];?>" class="btn btn-success">Edit</a> |
              <a href="../delete.php?id=<?= $h["id"];?>" onclick="return confirm('Yakin?');" class="btn btn-danger" >Delete</a>
          </td>
  
          <td><img src="../assets/imgbaru/<?= $bar["foto"]; ?>" width="150px" height="150px"></td>
          <td><?= $h["nama"];?></td>
          <td><?= $h["brand"]; ?></td>
        </tr>
        <?php $number++; ?>
      <?php endforeach ?> 
  </table>