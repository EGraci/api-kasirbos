-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2022 at 06:06 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kasirbos`
--

-- --------------------------------------------------------

--
-- Table structure for table `bahan`
--

CREATE TABLE `bahan` (
  `id_bahan` int(225) NOT NULL,
  `id_menu` int(225) NOT NULL,
  `id_barang` int(225) NOT NULL,
  `qty_barang` int(100) NOT NULL,
  `jml_menu` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bahan`
--

INSERT INTO `bahan` (`id_bahan`, `id_menu`, `id_barang`, `qty_barang`, `jml_menu`) VALUES
(1, 1, 5, 1, 10),
(2, 1, 6, 2, 10),
(3, 1, 7, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(225) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `qty` int(100) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `qty`, `jenis`, `status`) VALUES
(1, 'minyak goreng', 1, 'liter', 'tersedia'),
(2, 'beras', 0, 'kilogram', 'kosong'),
(3, 'cabe', 20, 'kilogram', 'tesedia'),
(4, 'bebek', 20, 'kilogram', 'tesedia'),
(5, 'soda', 30, 'botol', 'tesedia'),
(6, 'susu kental manis', 10, 'kaleng', 'tersedia'),
(7, 'es batu', 10, 'kilogram', 'tesedia');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(225) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `harga_menu` int(100) NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `harga_menu`, `gambar`) VALUES
(1, 'Es susu soda gembira', 10000, 'https://sweetrip.id/wp-content/uploads/2021/07/soda-gembira.jpg'),
(2, 'nasi bebek', 18000, 'https://img.okezone.com/content/2021/01/24/301/2349769/nasi-bebek-madura-paling-top-di-jakarta-dijamin-ketagihan-KDayLz4Ukk.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(225) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` set('1','2','3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'pemilik toko', '92d993d788801ddc2d4cf03b932d1e82', '1'),
(2, 'kasir', 'c7911af3adbd12a035b289556d96470a', '2'),
(3, 'supplier', '99b0e8da24e29e4ccb5d7d76e677c2ac', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bahan`
--
ALTER TABLE `bahan`
  ADD PRIMARY KEY (`id_bahan`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bahan`
--
ALTER TABLE `bahan`
  MODIFY `id_bahan` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
