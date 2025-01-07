<?php
$con=mysqli_connect('localhost','root','','pengajaran');

$sql="delete from jurusan where kd_jurusan = '".$_GET['hapus']."'";
	mysqli_query($con,$sql);
	
	//echo"<script>alert('Message has been sent')<
	header("location:lihatjurusan.php");
	echo"<script>alert('Data sudah dihapus')</script>";
	die();
	
?>