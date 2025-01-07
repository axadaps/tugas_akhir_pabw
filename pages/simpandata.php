<?php
$con=mysqli_connect('localhost','root','','pengajaran');
    $tknim=$_POST['nim'];
    $tknama=$_POST['nama'];
    $tkalamat=$_POST['alamat'];
    $tkjkelamin=$_POST['jkelamin'];
    $tknohp=$_POST['nohp'];
    $tkemail=$_POST['email'];
$sql="insert into mahasiswa values('$tknim','$tknama','$tkalamat','$tkjkelamin','$tknohp','$tkemail')";
    mysqli_query($con,$sql);
	header("location:lihatdatamahasiswa.php");
	echo"<script>alert('Data sudah dikirim')</script>";
	die();
?>