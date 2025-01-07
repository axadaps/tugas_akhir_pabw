<?php
$con = mysqli_connect('localhost', 'root', '', 'pengajaran');

if (!$con) {
    die("Koneksi gagal: " . mysqli_connect_error());
}

// Ambil data dari form dan validasi
$tkkdjurusan = isset($_POST['kdjurusan']) ? (int)$_POST['kdjurusan'] : 0;
$tknamajurusan = isset($_POST['namajurusan']) ? trim($_POST['namajurusan']) : '';
$tknamakaprodi = isset($_POST['namakaprodi']) ? trim($_POST['namakaprodi']) : '';
$tksekprodi = isset($_POST['sekprodi']) ? trim($_POST['sekprodi']) : '';
$tkjmlhmhs = isset($_POST['jmlhmhs']) ? (int)$_POST['jmlhmhs'] : 0;

// Validasi data
if ($tkkdjurusan <= 0) {
    echo "<script>
        alert('Kode jurusan harus berupa angka positif!');
        window.history.back();
    </script>";
    exit();
}

if (empty($tknamajurusan) || empty($tknamakaprodi) || empty($tksekprodi)) {
    echo "<script>
        alert('Semua field harus diisi!');
        window.history.back();
    </script>";
    exit();
}

// Cek apakah kode jurusan sudah ada
$check_query = "SELECT kd_jurusan FROM jurusan WHERE kd_jurusan = $tkkdjurusan";
$result = mysqli_query($con, $check_query);

if (mysqli_num_rows($result) > 0) {
    echo "<script>
        alert('Kode jurusan $tkkdjurusan sudah ada dalam database!');
        window.history.back();
    </script>";
} else {
    // Escape string untuk mencegah SQL injection
    $tknamajurusan = mysqli_real_escape_string($con, $tknamajurusan);
    $tknamakaprodi = mysqli_real_escape_string($con, $tknamakaprodi);
    $tksekprodi = mysqli_real_escape_string($con, $tksekprodi);

    $sql = "INSERT INTO jurusan (kd_jurusan, nama_jurusan, kaprodi, sekprodi, jmlh_mhs) 
            VALUES ($tkkdjurusan, '$tknamajurusan', '$tknamakaprodi', '$tksekprodi', $tkjmlhmhs)";

    if (mysqli_query($con, $sql)) {
        echo "<script>
            alert('Data berhasil disimpan');
            window.location.href='lihatjurusan.php';
        </script>";
    } else {
        echo "Error: " . mysqli_error($con);
    }
}

mysqli_close($con);
?>