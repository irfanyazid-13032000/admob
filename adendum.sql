-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 04, 2021 at 04:47 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adendum`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_perjanjian`
--

CREATE TABLE `jenis_perjanjian` (
  `id` int(11) NOT NULL,
  `nama_perjanjian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_perjanjian`
--

INSERT INTO `jenis_perjanjian` (`id`, `nama_perjanjian`) VALUES
(1, 'Selalu Langsung'),
(2, 'Tidak Langsung'),
(3, 'sewa menyewa kendaraan'),
(4, 'sewa menyewa forklift');

-- --------------------------------------------------------

--
-- Table structure for table `perjanjian`
--

CREATE TABLE `perjanjian` (
  `id_perjanjian` int(11) NOT NULL,
  `no_perjanjian` varchar(100) NOT NULL,
  `no_adendum` varchar(100) NOT NULL,
  `no_pk` varchar(100) NOT NULL,
  `rekanan` varchar(100) NOT NULL,
  `jenis_perjanjian` varchar(100) NOT NULL,
  `awal` varchar(100) NOT NULL,
  `akhir` varchar(100) NOT NULL,
  `status_perjanjian` varchar(100) NOT NULL,
  `objek_perjanjian` varchar(100) NOT NULL,
  `jumlah_unit` varchar(100) NOT NULL,
  `sewa_unit_perbulan` varchar(100) NOT NULL,
  `total_sewa_perbulan` varchar(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `keaktifan` varchar(20) NOT NULL,
  `nama_berkas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perjanjian`
--

INSERT INTO `perjanjian` (`id_perjanjian`, `no_perjanjian`, `no_adendum`, `no_pk`, `rekanan`, `jenis_perjanjian`, `awal`, `akhir`, `status_perjanjian`, `objek_perjanjian`, `jumlah_unit`, `sewa_unit_perbulan`, `total_sewa_perbulan`, `lokasi`, `keterangan`, `keaktifan`, `nama_berkas`) VALUES
(4, '012.120/SU.04/06.2021', '', '024/SPK.09/12.2020', 'PT.SID', '', '2020-12-31', '2021-12-30', 'Y', 'Xenia', '1', '3150000', '3150000', 'ALL', 'meminta konfirmasi', 'nonaktif', ''),
(5, '012.120/SU.04/06.2021', '018.120/SU.04/06.2021', '024/SPK.09/12.2020', 'PT.SID', '', '2020-12-11', '2021-09-06', 'N', 'Avanza', '2', '6000000', '12000000', 'ALL', 'meminta konfirmasi', 'nonaktif', ''),
(6, '002.120/SU.04/03.2021', '', 'F03.2702/MKT/TMW/II/2020', 'INSPIRASI', '', '2021-03-01', '2021-10-31', 'Y', 'Reklame', '', '', '0', '', '', 'aktif', ''),
(8, '012.120/SU.04/06.2021', '', 'asdfasdfasdf', 'PT sejahtera selalu', 'Selalu Langsung', '2021-09-07', '2021-09-15', 'N', 'FORKLIFT', '21', '600000', '12600000', 'KEDIRI', 'meminta konfirmasi', 'aktif', '012_120_SU_04_06_02020.docx'),
(10, '012.120/SU.04/06.2021', '', '0108/SID.SPK.35/03.2020', 'PT sejahtera selalu', 'Tidak Langsung', '2021-09-17', '2021-09-23', 'N', 'Xenia', '1', '700000', '700000', 'Kantor Pusat', 'meminta konfirmasi', 'nonaktif', ''),
(11, '023.120/SU.04/06.2018', '', 'F03.2702/MKT/TMW/II/2020', 'PT sejahtera selalu', 'Tidak Langsung', '2021-09-23', '2021-09-24', 'N', 'Xenia', '78', '7969869876', '621649850328', 'KEDIRI', 'meminta konfirmasi', 'nonaktif', '023.120SU.0406.2018.docx'),
(12, '012.120/SU.03/06.2025', '', 'F03.2702/MKT/TMW/II/2022', 'PT sejahtera selalu', 'Tidak Langsung', '2021-09-23', '2021-09-29', 'N', 'FORKLIFT', '9', '80000', '720000', 'mojokerto', 'meminta konfirmasi', 'nonaktif', 'IRFAAN YAZIID (CV).docx'),
(13, '012.120/SU.04/06.2032', '', 'F03.2702/MKT/TMW/II/2020', 'PT sejahtera selalu', 'Tidak Langsung', '2021-09-06', '2021-09-30', 'N', 'FORKLIFT', '9', '78000', '702000', 'kantor pusat', 'meminta konfirmasi', 'nonaktif', '012.120.SU.04.06.2021.docx'),
(14, '023.120/SU.04/06.2018', '', '0108/SID.SPK.35/03.2020', 'PT.SIDONANGENDI', 'Tidak Langsung', '2021-09-15', '2021-09-24', 'N', 'FORKLIFT', '1', '700000', '700000', 'ALL', 'meminta konfirmasi', 'aktif', '012_120_SU_04_06_3030.docx');

-- --------------------------------------------------------

--
-- Table structure for table `rekanan`
--

CREATE TABLE `rekanan` (
  `id` int(11) NOT NULL,
  `perusahaan` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekanan`
--

INSERT INTO `rekanan` (`id`, `perusahaan`, `telepon`) VALUES
(1, 'PT.SIDOMUNCUL', '0899765654'),
(2, 'PT sejahtera selalu', '0877398264343'),
(3, 'PT selalu sejahtera', '08727482134'),
(4, 'PT SILOG', '0890987867');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `password`) VALUES
(1, 'budi', 'budi'),
(2, 'dion', 'dion');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_perjanjian`
--
ALTER TABLE `jenis_perjanjian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perjanjian`
--
ALTER TABLE `perjanjian`
  ADD PRIMARY KEY (`id_perjanjian`);

--
-- Indexes for table `rekanan`
--
ALTER TABLE `rekanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_perjanjian`
--
ALTER TABLE `jenis_perjanjian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `perjanjian`
--
ALTER TABLE `perjanjian`
  MODIFY `id_perjanjian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rekanan`
--
ALTER TABLE `rekanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
