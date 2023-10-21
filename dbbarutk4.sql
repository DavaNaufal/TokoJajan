-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2023 at 03:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbbarutk4`
--

-- --------------------------------------------------------

--
-- Table structure for table `labarugi`
--

CREATE TABLE `labarugi` (
  `periode` varchar(255) NOT NULL,
  `total_penjualan` int(10) NOT NULL,
  `total_pembelian` int(10) NOT NULL,
  `total_stok_awal` int(10) NOT NULL,
  `total_stok_akhir` int(10) NOT NULL,
  `hpp` int(10) NOT NULL,
  `laba` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `labarugi`
--

INSERT INTO `labarugi` (`periode`, `total_penjualan`, `total_pembelian`, `total_stok_awal`, `total_stok_akhir`, `hpp`, `laba`) VALUES
('Oktober 2023', 188000, 21000, 104000, 66000, 59000, 129000);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_barang`
--

CREATE TABLE `pembelian_barang` (
  `id_pembelian` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `jumlah_pembelian` int(10) NOT NULL,
  `harga_beli` int(10) NOT NULL,
  `supplier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian_barang`
--

INSERT INTO `pembelian_barang` (`id_pembelian`, `id_barang`, `nama_barang`, `jumlah_pembelian`, `harga_beli`, `supplier`) VALUES
(1, 1, 'Beng Beng', 3, 1000, 'Tokopedia'),
(2, 2, 'Taro', 5, 2000, 'Indomart'),
(3, 3, 'Wafer', 2, 4000, 'Alfamart');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_barang`
--

CREATE TABLE `penjualan_barang` (
  `id_penjualan` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `jumlah_penjualan` int(10) NOT NULL,
  `harga_jual` int(10) NOT NULL,
  `nama_pembeli` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan_barang`
--

INSERT INTO `penjualan_barang` (`id_penjualan`, `id_barang`, `nama_barang`, `jumlah_penjualan`, `harga_jual`, `nama_pembeli`) VALUES
(1, 1, 'Beng Beng', 5, 5000, 'Reski'),
(2, 2, 'Taro', 10, 5500, 'Ilham'),
(3, 3, 'Wafer', 4, 7000, 'Dicky'),
(4, 1, 'Beng Beng', 5, 5000, 'Ikhsan'),
(5, 2, 'Taro', 10, 5500, 'Rina');

-- --------------------------------------------------------

--
-- Table structure for table `t_barang`
--

CREATE TABLE `t_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `stok_awal` int(10) NOT NULL,
  `total_unit_pembelian` int(10) NOT NULL,
  `total_unit_penjualan` int(10) NOT NULL,
  `stok_akhir` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t_barang`
--

INSERT INTO `t_barang` (`id_barang`, `nama_barang`, `stok_awal`, `total_unit_pembelian`, `total_unit_penjualan`, `stok_akhir`) VALUES
(1, 'Beng Beng', 20, 3, 10, 13),
(2, 'Taro', 22, 5, 15, 12),
(3, 'Wafer', 10, 2, 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `id_login` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_pengguna` varchar(255) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id_login`, `username`, `password`, `nama_pengguna`, `telepon`, `email`, `alamat`) VALUES
(1, 'dava', '161ebd7d45089b3446ee4e0d86dbcf92', 'MUHAMMAD NAUFAL ARSYDAVA', '085649726246', 'muhammad.arsydava@binus.ac.id', 'Jakarta'),
(2, 'astina', '161ebd7d45089b3446ee4e0d86dbcf92', 'ASTINA BETRIS ESTEFANIA MUNTE', '081298669897', 'astina.munte@binus.ac.id', 'Jakarta'),
(3, 'rafli', '202cb962ac59075b964b07152d234b70', 'RAFLI KAHIL RAMANI', '081298669897', 'rafli.ramani@binus.ac.id', 'Nagano');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `labarugi`
--
ALTER TABLE `labarugi`
  ADD PRIMARY KEY (`periode`);

--
-- Indexes for table `pembelian_barang`
--
ALTER TABLE `pembelian_barang`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `penjualan_barang`
--
ALTER TABLE `penjualan_barang`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `t_barang`
--
ALTER TABLE `t_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
