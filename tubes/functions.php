<?php 
$conn = mysqli_connect("localhost", "root", "", "elektronik") or die("Koneksi Gagal!");

function query ($query){
	global $conn;
	$result = mysqli_query($conn, $query);
	$rows = [];
	while ($row = mysqli_fetch_assoc($result)) {
		$rows [] = $row;
	}
	return $rows;
 }

 function tambah ($data){
 	global $conn;
 	$nama = htmlspecialchars($data["nama"]);
	$deskripsi = htmlspecialchars($data["deskripsi"]);
	$speksifikasi = htmlspecialchars($data["speksifikasi"]);
	$brand = htmlspecialchars($data["brand"]);
	$kategori = htmlspecialchars($data["kategori"]);
	$harga = htmlspecialchars($data["harga"]);
	
// upload gambar
	$foto = upload();
	if( !$foto ){
		return false;
	}

	$query = "INSERT INTO barang
				VALUES 
				('','$nama','$deskripsi','$speksifikasi','$brand','$kategori','$harga','$foto')";
	mysqli_query($conn, $query);

	return mysqli_Affected_rows($conn);
 }

function tambah1 ($data){
 	global $conn;
 	$nama = htmlspecialchars($data["nama"]);
	$deskripsi = htmlspecialchars($data["deskripsi"]);
	$speksifikasi = htmlspecialchars($data["speksifikasi"]);
	$brand = htmlspecialchars($data["brand"]);
	$kategori = htmlspecialchars($data["kategori"]);
	$harga = htmlspecialchars($data["harga"]);
	
// upload gambar
	$foto = upload();
	if( !$foto ){
		return false;
	}

	$query = "INSERT INTO hotlist
				VALUES 
				('','$nama','$deskripsi','$speksifikasi','$brand','$kategori','$harga','$foto')";
	mysqli_query($conn, $query);

	return mysqli_Affected_rows($conn);
 }
function upload(){
	$namaFile = $_FILES['foto']['name'];
	$ukuranFile = $_FILES['foto']['size'];
	$error = $_FILES['foto']['error'];
	$tmpName = $_FILES['foto']['tmp_name'];

	// cek apakah tidak ada gambar yang diupload
	if ($error === 4) {
		echo "<script>
			 alert('pilih gambar terlebih dahulu!');
			 </script>
		";
		return false;
	}

	// cek apakah yang diupload adalah gambar
	$ekstensiGambarValid = ['jpg','jpeg','png'];
	$ekstensiGambar = explode('.', $namaFile);
	$ekstensiGambar = strtolower(end($ekstensiGambar));
	if (!in_array($ekstensiGambar, $ekstensiGambarValid) ) {
		echo "<script>
			 alert('yang anda upload bukan foto');
			 </script>
		";
		return false;
	}

	// cek jika ukurannya terlalu besar
	if ($ukuranFile > 5000000) {
		echo "<script>
			 alert('Ukurann gambar terlalu besar');
			 </script>
		";
		return false;
	}

	//  lolos pengecekan, gambar siap diupload
	// generate nama gambar baru
	$namaFileBaru = uniqid();
	$namaFileBaru .= '.';
	$namaFileBaru .= $ekstensiGambar;

	move_uploaded_file($tmpName, 'assets/imgbaru/' . $namaFileBaru);

	return $namaFileBaru;
}
 
 function hapus ($id){
	global $conn;
	mysqli_query($conn, "DELETE FROM barang WHERE id = $id ");

	return mysqli_Affected_rows ($conn);
}

function hapus1 ($id){
	global $conn;
	mysqli_query($conn, "DELETE FROM user WHERE id = $id ");

	return mysqli_Affected_rows ($conn);
}
function hapus2 ($id){
	global $conn;
	mysqli_query($conn, "DELETE FROM hotlist WHERE id = $id ");

	return mysqli_Affected_rows ($conn);
}


function ubah ($data){
	global $conn;
	$id = $data["id"];
 	$nama = htmlspecialchars($data["nama"]);
 	$deskripsi = htmlspecialchars($data["deskripsi"]);
 	$speksifikasi = htmlspecialchars($data["speksifikasi"]);
	$brand = htmlspecialchars($data["brand"]);
	$kategori = htmlspecialchars($data["kategori"]);
	$harga = htmlspecialchars($data["harga"]);
	$gambarLama = htmlspecialchars($data["gambarLama"]);
	if ($_FILES['foto']['error'] === 4) {
		$foto = $gambarLama;
	}else{
		$foto = upload();
	}


	
	$query = "UPDATE barang SET 
				nama = '$nama',
				deskripsi = '$deskripsi',
				speksifikasi = '$speksifikasi',
				brand = '$brand',
				kategori = '$kategori',
				harga = '$harga',
				foto = '$foto'
				WHERE id = $id
				";
	mysqli_query($conn, $query);

	return mysqli_Affected_rows($conn);
}

function ubah1 ($data){
	global $conn;
	$id = $data["id"];
 	$nama = htmlspecialchars($data["nama"]);
 	$deskripsi = htmlspecialchars($data["deskripsi"]);
 	$speksifikasi = htmlspecialchars($data["speksifikasi"]);
	$brand = htmlspecialchars($data["brand"]);
	$kategori = htmlspecialchars($data["kategori"]);
	$harga = htmlspecialchars($data["harga"]);
	$gambarLama = htmlspecialchars($data["gambarLama"]);
	if ($_FILES['foto']['error'] === 4) {
		$foto = $gambarLama;
	}else{
		$foto = upload();
	}


	
	$query = "UPDATE hotlist SET 
				nama = '$nama',
				deskripsi = '$deskripsi',
				speksifikasi = '$speksifikasi',
				brand = '$brand',
				kategori = '$kategori',
				harga = '$harga',
				foto = '$foto'
				WHERE id = $id
				";
	mysqli_query($conn, $query);

	return mysqli_Affected_rows($conn);
}

function registrasi ($data){
	global $conn;
	$username = $data['username'];
	$password1 = $data['password1'];
	$password2 = $data['password2'];


	// cek user
	$cek_user = mysqli_query($conn, "SELECT * FROM user  WHERE username = '$username'");

	if (mysqli_num_rows($cek_user) > 0 ) {
		echo "<script>
			  alert('Username Sudah Terdaftar');
			  document.location.href = 'registrasi.php';
			  </script>";

			  return false;
	}

	// cek password1 samaa dengan password2
	if ($password1 != $password2) {
		echo "<script>
			 alert('konfirmasi password tidak sesuai');
			 document.location.href = 'registrasi.php';
			 </script>";
			 return false;
	}


	// username & password OK
	$password = password_hash($password1, PASSWORD_DEFAULT);
	$created_at = time();

	$query = "INSERT INTO user VALUES 
			  ('','$username', '$password', '$created_at')";
	mysqli_query($conn, $query);

	return mysqli_Affected_rows($conn);
}

function urutBarang($metode){
	global $conn;
	$query = "SELECT * FROM barang ORDER BY nama $metode";

	return query($query);
}

function urutUser($metode1){
	global $conn;
	$query = "SELECT * FROM user ORDER BY username $metode1";

	return query($query);
}

function urutHotlist($metode2){
	global $conn;
	$query = "SELECT * FROM hotlist ORDER BY nama $metode2";

	return query($query);
}
?>