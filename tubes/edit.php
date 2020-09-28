<?php
 require 'functions.php';

 $id = $_GET["id"];

$barang = query("SELECT * FROM barang WHERE id = $id ")[0];

 if (isset($_POST['ubah'])) {
 	if (ubah($_POST) > 0) {
 		echo "<script>
 		alert('Data berhasil diubah!');
 		document.location.href = 'admin/admin.php';
 		</script>";
 		}else{
 		echo "<script>
 		alert('Data gagal diubah!');
 		</script>";
 		}	
 }


 ?>

<!DOCTYPE html>
<html>
<head>
	<title>Tambah Data</title>
</head>
<link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/css.css">

	<style>	
	.kotak{
		width: 600px;
		background-color: ; white;
		margin:460px;
		margin-top: 3px;
		border-radius: 0px 0px 20px 20px;
		height: auto;

	}
	.kotaka{
		width: 600px;
		height: 75px;
		margin: auto;
		background-color: #14be5c;
		margin-top: 105px;
		color: white;
	}
	h3{
		font-family: ;
		text-align: center;
		margin-top: 3px;
	}
	
	div {
  		border-radius: 20px 20px 0 0;
  		background-color: #f2f2f2;
  		padding: 20px;
      	font-size: 16px;
	}
  	a{
    	font-size: 15px;
  	}
	a:link{
		color: #14be5c;
		text-decoration: none;
	}
	a:hover{
		color: #387241;
	}
	.btn{
    	width: 100%;
    	margin-top: 40px;
  	}
  	.form{
    	margin-top: -20px;
  	}
  	.form1{
    	margin-top: -35px;
  	}
  	.file{
  		margin-top: -10px;
  	}
	</style>

<body>

    
<div class="kotaka">
	<h3>Tambah Data</h3>
</div>

<div class="kotak">
	<form action="" method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="<?= $barang["id"] ;?>">
		<input type="hidden" name="gambarLama" value="<?= $barang["foto"] ;?>">
		<div class="form-group form">
    		<label for="Nama">Nama</label>
    		<input type="text" name="nama" id="nama" class="form-control"placeholder="Masukan Nama" required value="<?= $barang["nama"] ;?>">
  		</div>
   		<div class="form-group form1">
    		<label for="Deskripsi">Deskripsi</label>
    		<input type="text" name="deskripsi" id="dekripsi" class="form-control"  placeholder="Masukan Dekripsi" required value="<?= $barang["deskripsi"] ;?>">
  		</div>
   		<div class="form-group form1">
    		<label for="Speksifikasi">Speksifikasi</label>
    		<input type="text" name="speksifikasi" id="speksifikasi" class="form-control"  placeholder="Masukan Speksifikasi"  value="<?= $barang["speksifikasi"] ;?>">
  		</div>
  		<div class="form-group form1">
    		<label for="Brand">Brand</label>
    		<input type="text" name="brand" id="brand" class="form-control"  placeholder="Masukan Brand" required value="<?= $barang["brand"] ;?>">
  		</div>
      <div class="form-group form1">
        <label for="Brand">Kategori</label>
        <input type="text" name="kategori" id="kategori" class="form-control"  placeholder="Masukan Kategori" require value="<?= $barang["kategori"] ;?>">
      </div>
  		<div class="form-group form1">
    		<label for="Harga">Harga</label>
    		<input type="text" name="harga" id="harga" class="form-control"  placeholder="Masukan Harga" required value="<?= $barang["harga"] ;?>"> 
  		</div>
		<img src="assets/imgbaru/<?= $barang['foto']; ?>" width="140" height="140" style="margin-left: 20px;">
 		<div class="form-group file">
    		<label for="Form">Foto</label>
    		<input type="file" class="form-control-file" name="foto" id="foto">
  		</div>
  		<button type="submit" name="ubah" class="btn btn-success">Tambah</button>
	</form>
</div>



</body>
</html>