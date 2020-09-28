<?php
   require 'functions.php';

session_start();

if (isset($_SESSION['username'])) {
	header("Location: admin/admin.php");
}



?>

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
</head>
<link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/css.css">
	<style>
	body{
		background-image: url('image/bg.jpg');
	}
	.kotak{
		width: 300px;
		background-color: ; white;
		margin:610px;
		margin-top: 3px;
		border-radius: 0px 0px 20px 20px;
	}
	.kotaka{
		width: 300px;
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
    	margin-left: 0px;
    	width: 100%;
    	margin-top: 10px;
  }
  .form{
    	margin-top: -20px;
  }
  .form1{
    	margin-top: -35px;
  }
  .form2{
    	margin-top: -30px;
  }
	@media (max-width: 1000px) {
	.kotak{
		width: 300px;
		background-color: ; white;
		margin:20%;
		margin-top: 3px;
		border-radius: 0px 0px 20px 20px;
	}
     .kotaka{
		width: 300px;
		height: 75px;
		margin: auto;
		background-color: #14be5c;
		margin-top: 105px;
		color: white;

}
	</style>
<body>

<?php 

if (isset($_POST['login'])) {
	$username = $_POST['username'];
	$password = $_POST['password'];

	$cek_user = mysqli_query($conn, "SELECT * FROM user WHERE username = '$username'");

	if (mysqli_num_rows($cek_user) == 1) {
		// cek password
		$user = mysqli_fetch_assoc($cek_user);

		if (password_verify($password, $user['password'])) {
			$_SESSION['username'] = $username;
			header('Location: admin/admin.php');
			exit;
		}else{
			$error = 'Username / Password Salah!';
		}
	}else{
		// Login Gagal
		$error = 'Username belum terdaftar!';
	}
}

?>
    
	<div class="kotaka">
		<h3>Login</h3>
	</div>

<div class="kotak">
	<form action="" method="post">
  		<div class="form-group form">
    		<label for="username">Username</label>
    		<input type="username" name="username" class="form-control"placeholder="Enter Username" required>
  		</div>
  		<div class="form-group form1">
    		<label for="password">Password</label>
    		<input type="password" name="password" class="form-control"  placeholder="Password" required>
  		</div>
  		<div class="form-group form-check form2">
    		<input type="checkbox" class="form-check-input" name="remember" >
    		<label class="form-check-label" for="exampleCheck1">Remember Me</label>
  		</div>
  		<a href="registrasi.php">Belum Terdaftar?</a>
  		<?php if (isset($error)) : ?>
      		<p style="margin-top: 20px; color: red; font-style: italic;"> <?= $error ?> </p> 
    	<?php endif; ?>
  		<button type="submit" name="login" class="btn btn-success ">Login</button>
	</form>
</div>



</body>
</html>