-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2023 at 06:46 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbikan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `jenisair` varchar(40) DEFAULT NULL,
  `hrg` double DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `jenisair`, `hrg`, `jml`, `keterangan`, `foto`) VALUES
(1, 'Clown Fish ', 'Air Laut(Asin)', 275000, 1, 'Dewasa', 'ClownFish.jpg\r\n\r\n'),
(2, 'Green Chromis', 'Air Laut(Asin)', 1250000, 1, 'Dewasa', 'GreenChromis.png'),
(3, 'Bicolor Blenny', 'Air Laut(Asin)', 900000, 1, 'Dewasa', 'BicolorBlenny.jpg'),
(4, 'Firefish Goby', 'Air Laut(Asin)', 2500000, 1, 'Dewasa', 'FirefishGoby.jpg'),
(5, 'Lawnmower Blenny', 'Air Laut(Asin)', 130000, 1, 'Dewasa', 'LawnmowerBlenny.jpg'),
(6, 'Yellow Watchman Goby', 'Air Laut(Asin)', 350000, 1, 'Dewasa', 'YellowWatchmanGoby.jpg'),
(7, 'Flame Hawkfish', 'Air Laut(Asin)', 480000, 1, 'Dewasa', 'FlameHawkfish.jpg'),
(8, 'Clown Goby', 'Air Laut(Asin)', 255000, 1, 'Dewasa', 'ClownGoby.jpg'),
(9, 'Butterfly Fish', 'Air Laut(Asin)', 225000, 1, 'Dewasa', 'butterflyfish.jpg'),
(10, 'Dotty Back', 'Air Laut(Asin)', 235000, 1, 'Dewasa', 'Dottyback.jpg'),
(11, 'Blue Tang', 'Air Laut(Asin)', 275000, 1, 'Dewasa', 'Bluetang.jpg'),
(12, 'Mandarin Fish', 'Air Laut(Asin)', 570000, 1, 'Dewasa', 'mandarinfish.png');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nama_member` varchar(40) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `telp` varchar(30) DEFAULT NULL,
  `alamat` varchar(60) DEFAULT NULL,
  `kota` varchar(40) DEFAULT NULL,
  `provinsi` varchar(40) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama_member`, `email`, `telp`, `alamat`, `kota`, `provinsi`, `gender`, `userName`, `password`) VALUES
(1, 'agus', 'agus@gmail.com', '1234', 'j semarang', 'semarang', 'jateng', '1', 'agus', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tborder`
--

CREATE TABLE `tborder` (
  `id` int(10) UNSIGNED NOT NULL,
  `idmember` int(10) NOT NULL,
  `tgl` date NOT NULL,
  `jenisByr` varchar(20) DEFAULT NULL,
  `bank` varchar(40) DEFAULT NULL,
  `norek` varchar(40) DEFAULT NULL,
  `biayaKirim` double DEFAULT NULL,
  `pembelian` double DEFAULT NULL,
  `totalByr` double DEFAULT NULL,
  `jenisKirim` varchar(40) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tborder`
--

INSERT INTO `tborder` (`id`, `idmember`, `tgl`, `jenisByr`, `bank`, `norek`, `biayaKirim`, `pembelian`, `totalByr`, `jenisKirim`, `status`) VALUES
(1, 1, '2021-08-23', 'tf', '123', 'BCA', 12332, 0, 0, 'cod', 0),
(2, 2, '2021-08-23', 'kk', 'BCA', '1234', 10000, 0, 0, 'cod', 0),
(3, 1, '2021-08-23', 'tf', 'BCA', 'BCA', 123, 0, 0, 'cod', 0),
(4, 1, '2021-08-23', 'tf', 'BCA', 'BCA', 123, 0, 0, 'cod', 0),
(5, 1, '2021-08-23', 'tf', 'BCA', '1234', 12332, 0, 0, 'vaMandiri', 0),
(6, 1, '2021-08-23', 'tf', 'BCA', '1234', 12332, 0, 0, 'vaMandiri', 0),
(7, 1, '2021-08-23', 'tf', 'BCA', '1234', 12332, 0, 0, 'vaMandiri', 0),
(8, 1, '2021-08-23', 'tf', 'BCA', '1234', 12332, 0, 0, 'vaMandiri', 0),
(9, 1, '2021-08-23', 'tf', 'BCA', '1234', 12332, 0, 0, 'vaMandiri', 0),
(10, 1, '2021-08-23', 'tf', 'BCA', '123', 1233, 0, 0, 'cod', 0),
(11, 1, '2021-08-23', 'tf', 'BCA', '123', 1233, 0, 0, 'cod', 0),
(12, 1, '2021-08-23', 'tf', 'BCA', '123', 1233, 0, 0, 'cod', 0),
(13, 1, '2021-08-23', 'kk', 'BCA', '1234', 1233, 0, 0, 'cod', 0),
(14, 1, '2021-08-23', 'tf', 'BCA', '123', 1, 0, 0, 'cod', 0),
(15, 1, '2021-08-24', 'kk', 'BCA', '123', 1233, 0, 0, 'ovo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tborderdetail`
--

CREATE TABLE `tborderdetail` (
  `idBarang` int(11) NOT NULL,
  `idorder` int(11) NOT NULL,
  `jml` float NOT NULL,
  `hrg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tborderdetail`
--

INSERT INTO `tborderdetail` (`idBarang`, `idorder`, `jml`, `hrg`) VALUES
(1, 1, 2, 45000),
(1, 2, 1, 45000),
(1, 3, 3, 45000),
(1, 5, 1, 45000),
(1, 6, 1, 45000),
(1, 7, 1, 45000),
(1, 8, 1, 45000),
(1, 10, 1, 45000),
(1, 13, 1, 45000),
(1, 14, 1, 45000),
(1, 15, 1, 45000),
(2, 1, 1, 30000),
(2, 2, 1, 30000),
(2, 7, 1, 30000),
(2, 8, 1, 30000),
(2, 10, 1, 30000),
(2, 13, 1, 30000),
(2, 14, 2, 30000),
(2, 15, 1, 30000),
(3, 2, 2, 75000),
(3, 7, 1, 75000),
(3, 8, 1, 75000),
(3, 10, 1, 75000),
(3, 13, 1, 75000),
(3, 14, 1, 75000),
(4, 7, 1, 77),
(4, 8, 1, 77),
(4, 14, 2, 77);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tborder`
--
ALTER TABLE `tborder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tborderdetail`
--
ALTER TABLE `tborderdetail`
  ADD PRIMARY KEY (`idBarang`,`idorder`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
