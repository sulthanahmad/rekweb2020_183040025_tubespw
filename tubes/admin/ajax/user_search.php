<?php 

require '../../functions.php';

session_start();

if ( !isset($_SESSION['username']) ) {
  header("Location: ../../login.php");
  exit;
}

$keyword = $_GET["keyword"];

$user = query("SELECT * FROM user
         WHERE 
         username LIKE '%$keyword%' 
        ");

 ?>

  <table border="1" cellpadding="10" cellspacing="0" style="background-color: white; text-align: center; width: 99%; margin:auto; margin-top: 10px;">
    
    <?php $number=1; ?>
      <tr>
        <th>No.</th>
        <th>Opsi</th>
        <th>Username</th>
        <th>Password</th>
        <th>Created at</th>
      </tr>
          
      <?php foreach ($user as $u) : ?>
        <tr>
          <td width=""><?= $number ?></td>
          <td><a href="../edit.php?id=<?= $u["id"];?>" class="btn btn-success" >Edit</a> |
              <a href="../delete.php?id=<?= $u["id"];?>" onclick="return confirm('Yakin?');" class="btn btn-danger" >Delete</a>
          </td>
  
          <td><?= $u["username"]; ?></td>
          <td><?= $u["password"];?></td>
          <td><?= $u["created_at"]; ?></td>
        </tr>
        <?php $number++; ?>
      <?php endforeach ?> 
  </table>