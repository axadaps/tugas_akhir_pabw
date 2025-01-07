<?php
$con=mysqli_connect('localhost','root','','pengajaran');
//$smp=$_POST['bxin'};
//if ($smp==1} {
	$tknim=$_POST['nim'];
	$tknama=$_POST['nama'];
	$tkalamat=$_POST['alamat'];
	$tkjkelamin=$_POST['jkelamin'];
	$tknohp=$_POST['nohp'];
	$tkemail=$_POST['email'];
$sql="update mahasiswa set nama = '$tknama',alamat = '$tkalamat', jenis_kelamin = '$tkjkelamin', nohp = '$tknohp',email = '$tkemail' where nim = '$tknim'";
	mysqli_query($con,$sql);
	
	//echo"<script>alert('Message has been sent')<
	header("location:lihatdatamahasiswa.php");
	echo"<script>alert('Data sudah diupdate')</script>";
	die();
	
//}
?>