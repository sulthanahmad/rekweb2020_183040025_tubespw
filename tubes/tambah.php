<?php
 require 'functions.php';
 if (isset($_POST['tambah'])) {
 	if (tambah($_POST) > 0) {
 		echo "<script>
 		alert('Data berhasil ditambahkan!');
 		document.location.href = 'admin/admin.php';
 		</script>";
 		}else{
 		echo "<script>
 		alert('Data gagal ditambahkan!');
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
  	@media (max-width: 1000px) {
  		.kotak{
		width: 450px;
		background-color: ; white;
		margin:3%;
		margin-top: 3px;
		border-radius: 0px 0px 20px 20px;
		height: auto;

	}
	.kotaka{
		width: 450px;
		height: 75px;
		margin: auto;
		background-color: #14be5c;
		margin-top: 105px;
		color: white;
	}
}
	</style>
<body>

<div class="kotaka">
	<h3>Tambah Data</h3>
</div>

<div class="kotak">
	<form action="" method="post" enctype="multipart/form-data">
		<div class="form-group form">
    		<label for="Nama">Nama</label>
    		<input type="text" name="nama" id="nama" class="form-control"placeholder="Masukan Nama" required>
  		</div>
   		<div class="form-group form1">
    		<label for="Deskripsi">Deskripsi</label>
    		<input type="text" name="deskripsi" id="dekripsi" class="form-control"  placeholder="Masukan Dekripsi" required>
  		</div>
   		<div class="form-group form1">
    		<label for="Speksifikasi">Speksifikasi</label>
    		<textarea class="form-control" name="speksifikasi" id="speksifikasi" rows="3" required></textarea>
  		</div>
  		<div class="form-group form1">
    		<label for="Brand">Brand</label>
    		<input type="text" name="brand" id="brand" class="form-control"  placeholder="Masukan Brand" required>
  		</div>
  		<div class="form-group form1">
    		<label for="Brand">Kategori</label>
    		<input type="text" name="kategori" id="kategori" class="form-control"  placeholder="Masukan Kategori" required>
  		</div>
  		<div class="form-group form1">
    		<label for="Harga">Harga</label>
    		<input type="text" name="harga" id="harga" class="form-control"  placeholder="Masukan Harga" required>
  		</div>
 		<div class="form-group form1">
    		<label for="Form">Foto</label>
    		<input type="file" class="form-control-file" name="foto" id="foto">
  		</div>
  		<button type="submit" name="tambah" class="btn btn-success">Tambah</button>
	</form>
</div>




</body>
</html>