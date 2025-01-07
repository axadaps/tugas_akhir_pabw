<?php
$con = mysqli_connect('localhost', 'root', '', 'pengajaran');

if (!$con) {
    die("Koneksi gagal: " . mysqli_connect_error());
}

// Ambil data dari form
$tkkdjurusan = $_POST['kdjurusan'];
$tknamajurusan = $_POST['namajurusan'];
$tknamakaprodi = $_POST['namakaprodi'];
$tksekprodi = $_POST['sekprodi'];
$tkjmlhmhs = $_POST['jmlhmhs'];

// Pastikan kolom dalam query sesuai dengan kolom yang ada di tabel
$sql = "UPDATE jurusan SET 
        nama_jurusan = '$tknamajurusan', 
        kaprodi = '$tknamakaprodi', 
        sekprodi = '$tksekprodi', 
        jmlh_mhs = '$tkjmlhmhs' 
        WHERE kd_jurusan = '$tkkdjurusan'";  // Gantilah 'kdjurusan' dengan 'kd_jurusan' jika itu nama kolom yang benar

if (mysqli_query($con, $sql)) {
    // Jika berhasil, tampilkan alert dan kemudian redirect
    echo "<script>alert('Data sudah diupdate'); window.location.href='lihatjurusan.php';</script>";
} else {
    echo "Error: " . mysqli_error($con); // Menampilkan error jika ada
}

mysqli_close($con);
?>
