<?php

require_once __DIR__ . '/vendor/autoload.php';

require 'functions.php' ;

$barang = query("SELECT * FROM barang");


$mpdf = new \mPDF('utf-8','A4','');


$html = '<!DOCTYPE html>
<html lang ="en">
<head>
	<meta charset="UTF-8">
	<title> Daftar Barang </title>
</head>
<h1> Daftar Barang </h1>
<body>
	<table border="1" cellpadding="10" cellspacing="0" style="background-color: white; text-align: center; width: 98%; margin:auto; margin-top: 10px;">
    
      <tr>
        <th>No.</th>
        <th>Foto</th>
        <th>Nama </th>
        <th>Deskripsi</th>
        <th>Speksifikasi Utama</th>
        <th>Brand</th>
        <th>Kategori</th>
        <th>Kisaran Harga</th>
      </tr>';

      $i = 1;
      foreach ($barang as $bar) {
      	$html .= '<tr>
      					<td>'. $i++ .'</td>
      					<td><img src="assets/imgbaru/'. $bar["foto"] .'" width="150" height="150"> </td>
      					<td>'. $bar['nama'] .'</td>
      					<td>'. $bar['deskripsi'] .'</td>
      					<td>'. $bar['speksifikasi'] .'</td>
      					<td>'. $bar['brand'] .'</td>
      					<td>'. $bar['kategori'] .'</td>
      					<td>'. $bar['harga'] .'</td>
      			 </tr>';
      }



$html .= '</table>
      </body>
      </html>';




  $mpdf->WriteHTML(utf8_encode($html));
   $mpdf->Output("phpflow.pdf", 'F');
   $mpdf->Output();