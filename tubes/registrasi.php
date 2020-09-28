<?php

require 'functions.php';

if (isset($_POST["register"])) {
	if (registrasi($_POST) > 0) {
		echo "<script>
		alert('user baru berhasil ditambahkan');
		document.location.href = 'login.php';
		</script>";
	} else {
		echo mysqli_error($conn);
	}
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
	
	.kotak{
		width: 300px;
		background-color: ; white;
		margin: 609px;
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
    	width: 100%;
    	margin-top: -10px;
  	}
  	.form{
    	margin-top: -20px;
  	}
  	.form1{
    	margin-top: -35px;
  	}
  	.form2{
    	margin-top: -55px;
  	}
	</style>
<body>

    
<div class="kotaka">
	<h3>Registrasi</h3>
</div>

<div class="kotak">
	<form action="" method="post">
		<div class="form-group form">
    		<label for="username">Username</label>
    		<input type="username" name="username" class="form-control"placeholder="Enter Username">
  		</div>
   		<div class="form-group form1">
    		<label for="password">Password</label>
    		<input type="password" name="password1" class="form-control"  placeholder="Password">
  		</div>
    	<div class="form-group form1">
    		<label for="password">Konfirmasi Password</label>
    		<input type="password" name="password2" class="form-control"  placeholder="Konfirmasi Password">
  		</div>
		<button type="submit" name="register" class="btn btn-success">Register</button>
	</form>
</div>


</body>
</html>