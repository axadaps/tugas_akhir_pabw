-- phpMyAdmin SQL Dump
-- version 2.10.0.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Aug 03, 2017 at 03:09 PM
-- Server version: 5.0.37
-- PHP Version: 5.2.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `simdik`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `admin`
-- 

CREATE TABLE `admin` (
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  `password` varchar(50) collate latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `admin`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `hakakses`
-- 

CREATE TABLE `hakakses` (
  `id_akses` bigint(20) NOT NULL,
  `id_pegawai` varchar(50) collate latin1_general_ci default NULL,
  `nama_menu` varchar(50) collate latin1_general_ci default NULL,
  `nama_file` varchar(50) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id_akses`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `hakakses`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jabatan`
-- 

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL auto_increment,
  `nama` varchar(50) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id_jabatan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jabatan`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jurnalmengajar`
-- 

CREATE TABLE `jurnalmengajar` (
  `id_jurnal` bigint(20) NOT NULL auto_increment,
  `id_kelas` int(11) default NULL,
  `semester` varchar(10) collate latin1_general_ci default NULL,
  `thn_ajaran` varchar(20) collate latin1_general_ci default NULL,
  `tgl_jurnal` date default NULL,
  `jam_mengajar` varchar(20) collate latin1_general_ci default NULL,
  `keterangan` varchar(50) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id_jurnal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `jurnalmengajar`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `kalenderpendidikan`
-- 

CREATE TABLE `kalenderpendidikan` (
  `id_kalender` bigint(20) NOT NULL auto_increment,
  `nama` varchar(30) collate latin1_general_ci default NULL,
  `thn_ajaran` varchar(20) collate latin1_general_ci default NULL,
  `tgl_kalender` date default NULL,
  `status` varchar(10) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id_kalender`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `kalenderpendidikan`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `kelas`
-- 

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL auto_increment,
  `kelas` varchar(50) collate latin1_general_ci default NULL,
  `group` varchar(20) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id_kelas`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `kelas`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `kenaikan`
-- 

CREATE TABLE `kenaikan` (
  `id_kenaikan` bigint(20) NOT NULL auto_increment,
  `nis` varchar(50) collate latin1_general_ci default NULL,
  `id_kelas` int(11) default NULL,
  `thn_ajaran` varchar(20) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id_kenaikan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `kenaikan`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `matapelajaran`
-- 

CREATE TABLE `matapelajaran` (
  `id_pelajaran` int(11) NOT NULL auto_increment,
  `nama` varchar(50) collate latin1_general_ci default NULL,
  `kkm` int(11) default NULL,
  `group` varchar(10) collate latin1_general_ci default NULL,
  `semester` varchar(10) collate latin1_general_ci default NULL,
  `keterangan` varchar(50) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id_pelajaran`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `matapelajaran`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `mengajar`
-- 

CREATE TABLE `mengajar` (
  `id_mengajar` bigint(20) NOT NULL auto_increment,
  `id_pegawai` varchar(50) collate latin1_general_ci default NULL,
  `id_kelas` int(11) default NULL,
  `id_pelajaran` int(11) default NULL,
  `semester` varchar(10) collate latin1_general_ci default NULL,
  `thn_ajaran` varchar(20) collate latin1_general_ci default NULL,
  `jam_mengajar` varchar(10) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id_mengajar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `mengajar`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `pegawai`
-- 

CREATE TABLE `pegawai` (
  `id_pegawai` varchar(50) collate latin1_general_ci NOT NULL,
  `nama` varchar(100) collate latin1_general_ci default NULL,
  `alamat` varchar(100) collate latin1_general_ci default NULL,
  `tgllahir` date default NULL,
  `telp` varchar(50) collate latin1_general_ci default NULL,
  `email` varchar(50) collate latin1_general_ci default NULL,
  `agama` varchar(20) collate latin1_general_ci default NULL,
  `status` varchar(20) collate latin1_general_ci default NULL,
  `file_photo` varchar(30) collate latin1_general_ci default NULL,
  `username` varchar(50) collate latin1_general_ci default NULL,
  `password` varchar(50) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id_pegawai`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `pegawai`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `pembayaranspp`
-- 

CREATE TABLE `pembayaranspp` (
  `id_pembayaran` bigint(20) NOT NULL,
  `nis` varchar(50) collate latin1_general_ci default NULL,
  `id_kelas` int(11) default NULL,
  `semester` varchar(10) collate latin1_general_ci default NULL,
  `thn_ajaran` varchar(20) collate latin1_general_ci default NULL,
  `tgl_pembayaran` date default NULL,
  `periode_pembayaran` varchar(20) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id_pembayaran`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `pembayaranspp`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `pendapatan`
-- 

CREATE TABLE `pendapatan` (
  `id_pendapatan` bigint(20) NOT NULL auto_increment,
  `nama_dana` varchar(50) collate latin1_general_ci default NULL,
  `jenis_dana` varchar(50) collate latin1_general_ci default NULL,
  `sumber_dana` varchar(50) collate latin1_general_ci default NULL,
  `thn_ajaran` varchar(20) collate latin1_general_ci default NULL,
  `nominal` double default NULL,
  `tgl_pendapatan` date default NULL,
  PRIMARY KEY  (`id_pendapatan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `pendapatan`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `pengeluaran`
-- 

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` bigint(20) NOT NULL auto_increment,
  `nama` varchar(50) collate latin1_general_ci default NULL,
  `jenis` varchar(50) collate latin1_general_ci default NULL,
  `thn_ajaran` varchar(20) collate latin1_general_ci default NULL,
  `nominal` double default NULL,
  `tgl_pengeluaran` date default NULL,
  PRIMARY KEY  (`id_pengeluaran`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `pengeluaran`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `penilaian`
-- 

CREATE TABLE `penilaian` (
  `nis` varchar(50) collate latin1_general_ci default NULL,
  `id_pelajaran` int(11) default NULL,
  `id_kelas` int(11) default NULL,
  `semester` varchar(10) collate latin1_general_ci default NULL,
  `thn_ajaran` varchar(20) collate latin1_general_ci default NULL,
  `nilai_uts` double default NULL,
  `nilai_uas` double default NULL,
  `nilai_tugas` double default NULL,
  `nilai_praktek` double default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `penilaian`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `presensipegawai`
-- 

CREATE TABLE `presensipegawai` (
  `id_pegawai` varchar(50) collate latin1_general_ci default NULL,
  `semester` varchar(10) collate latin1_general_ci default NULL,
  `thn_ajaran` varchar(20) collate latin1_general_ci default NULL,
  `tgl_presensi` date default NULL,
  `status_presensi` varchar(20) collate latin1_general_ci default NULL,
  `alasan_absen` varchar(20) collate latin1_general_ci default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `presensipegawai`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `presensisiswa`
-- 

CREATE TABLE `presensisiswa` (
  `nis` varchar(50) collate latin1_general_ci default NULL,
  `id_kelas` int(11) default NULL,
  `semester` varchar(10) collate latin1_general_ci default NULL,
  `thn_ajaran` varchar(20) collate latin1_general_ci default NULL,
  `tgl_masuk` date default NULL,
  `status_presensi` varchar(20) collate latin1_general_ci default NULL,
  `alasan_absen` varchar(20) collate latin1_general_ci default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `presensisiswa`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `rpp`
-- 

CREATE TABLE `rpp` (
  `id_rpp` bigint(20) NOT NULL,
  `id_pegawai` varchar(50) collate latin1_general_ci default NULL,
  `id_pelajaran` int(11) default NULL,
  `group` varchar(10) collate latin1_general_ci default NULL,
  `semester` varchar(10) collate latin1_general_ci default NULL,
  `thn_ajaran` varchar(20) collate latin1_general_ci default NULL,
  `nama_rpp` varchar(50) collate latin1_general_ci default NULL,
  `file_rpp` varchar(50) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id_rpp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `rpp`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `sekolah`
-- 

CREATE TABLE `sekolah` (
  `id_sekolah` int(11) NOT NULL auto_increment,
  `nama` varchar(50) collate latin1_general_ci default NULL,
  `alamat` varchar(100) collate latin1_general_ci default NULL,
  `kecamatan` varchar(50) collate latin1_general_ci default NULL,
  `propinsi` varchar(50) collate latin1_general_ci default NULL,
  `telp` varchar(20) collate latin1_general_ci default NULL,
  `email` varchar(50) collate latin1_general_ci default NULL,
  `kepsek` varchar(50) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id_sekolah`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `sekolah`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `siswa`
-- 

CREATE TABLE `siswa` (
  `nis` varchar(50) collate latin1_general_ci NOT NULL,
  `nisn` varchar(50) collate latin1_general_ci default NULL,
  `nama` varchar(50) collate latin1_general_ci default NULL,
  `alamat` varchar(50) collate latin1_general_ci default NULL,
  `tgllahir` date default NULL,
  `telp` varchar(20) collate latin1_general_ci default NULL,
  `email` varchar(50) collate latin1_general_ci default NULL,
  `agama` varchar(20) collate latin1_general_ci default NULL,
  `nama_ortu` varchar(50) collate latin1_general_ci default NULL,
  `pekerjaan` varchar(50) collate latin1_general_ci default NULL,
  `alamat_ortu` varchar(50) collate latin1_general_ci default NULL,
  `telp_ortu` varchar(20) collate latin1_general_ci default NULL,
  `email_ortu` varchar(50) collate latin1_general_ci default NULL,
  `agama_ortu` varchar(20) collate latin1_general_ci default NULL,
  `thn_masuk` varchar(10) collate latin1_general_ci default NULL,
  `asal_smp` varchar(50) collate latin1_general_ci default NULL,
  `file_photo` varchar(30) collate latin1_general_ci default NULL,
  `username` varchar(50) collate latin1_general_ci default NULL,
  `password` varchar(50) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`nis`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `siswa`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `struktural`
-- 

CREATE TABLE `struktural` (
  `id_struktural` int(11) NOT NULL auto_increment,
  `id_jabatan` int(11) default NULL,
  `id_pegawai` varchar(50) collate latin1_general_ci default NULL,
  `periode` varchar(20) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id_struktural`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `struktural`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `ujian`
-- 

CREATE TABLE `ujian` (
  `id_ujian` bigint(20) NOT NULL,
  `id_pelajaran` int(11) default NULL,
  `id_kelas` int(11) default NULL,
  `semester` varchar(10) collate latin1_general_ci default NULL,
  `thn_ajaran` varchar(20) collate latin1_general_ci default NULL,
  `tgl_ujian` date default NULL,
  `starttime` time default NULL,
  `endtime` time default NULL,
  `ruangan` varchar(10) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id_ujian`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `ujian`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `walikelas`
-- 

CREATE TABLE `walikelas` (
  `id_jabatan` int(11) default NULL,
  `id_pegawai` varchar(50) collate latin1_general_ci default NULL,
  `id_kelas` int(11) default NULL,
  `thn_ajaran` varchar(20) collate latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- 
-- Dumping data for table `walikelas`
-- 

