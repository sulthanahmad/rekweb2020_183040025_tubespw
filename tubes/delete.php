<?php 

require 'functions.php';

$id = $_GET["id"];

if (hapus($id) > 0 ) {
	echo "
		<script> 
			alert('Data Berhasil Dihapus');
			document.location.href = 'admin/admin.php';
		</script>
		";
	}else{
		echo "
		<script> 
			alert('Data Gagal Dihapus');
		</script>
		";
}



$id = $_GET["id"];

if (hapus1($id) > 0 ) {
	echo "
		<script> 
			alert('Data Berhasil Dihapus');
			document.location.href = 'admin/user.php';
		</script>
		";
	}else{
		echo "
		<script> 
			alert('Data Gagal Dihapus');
		</script>
		";
}
$id = $_GET["id"];

if (hapus2($id) > 0 ) {
	echo "
		<script> 
			alert('Data Berhasil Dihapus');
			document.location.href = 'admin/hotlist.php';
		</script>
		";
	}else{
		echo "
		<script> 
			alert('Data Gagal Dihapus');
		</script>
		";
}

 ?>