-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 10:39 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nyoba`
--

-- --------------------------------------------------------

--
-- Table structure for table `stok_obat`
--

CREATE TABLE `stok_obat` (
  `kode_stok` char(6) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `stok` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stok_obat`
--

INSERT INTO `stok_obat` (`kode_stok`, `nama_obat`, `stok`) VALUES
('s0001', 'Sanmol', 90),
('s0002', 'Betadine', 55),
('s0003', 'Amoxicilin', 28),
('s0004', 'Terracortil', 77),
('s0005', 'Trombopop', 13),
('s0006', 'Mylanta', 101),
('s0007', 'Agres', 69),
('s0008', 'Komix', 333),
('s0009', 'Alco', 777),
('s0010', 'Scots Elmution', 666),
('s0011', 'Paramex', 22),
('s0012', 'Sanaflu', 1),
('s0013', 'Sanaflu', 231),
('s0014', 'Sanaflu', 123),
('s0015', 'Roost', 55);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stok_obat`
--
ALTER TABLE `stok_obat`
  ADD PRIMARY KEY (`kode_stok`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
