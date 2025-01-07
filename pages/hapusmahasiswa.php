
<?php
$con=mysqli_connect('localhost','root','','pengajaran');

$sql="delete from mahasiswa where nim = '".$_GET['hapus']."'";
	mysqli_query($con,$sql);
	
	//echo"<script>alert('Message has been sent')<
	header("location:lihatdatamahasiswa.php");
	echo"<script>alert('Data sudah dihapus')</script>";
	die();
	
?>