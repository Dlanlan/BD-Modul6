-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 10:38 AM
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
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `kode_obat` char(6) NOT NULL,
  `kode_jenis` char(3) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `harga_obat` int(11) NOT NULL,
  `bentuk_obat` varchar(12) NOT NULL,
  `kegunaan` varchar(30) NOT NULL,
  `aturan` varchar(6) NOT NULL,
  `exp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`kode_obat`, `kode_jenis`, `nama_obat`, `harga_obat`, `bentuk_obat`, `kegunaan`, `aturan`, `exp`) VALUES
('B0001', 'J01', 'Sanmol', 8500, 'Sirup', 'Obat Demam', 'Diminu', '2017-04-16'),
('B0002', 'J01', 'Betadine', 12000, 'Cair', 'Anti Septik', 'Dioles', '2018-05-09'),
('B0003', 'J02', 'Amoxicilin', 5000, 'Tablet', 'Anti Biotik', 'Diminu', '2016-08-10'),
('B0004', 'J02', 'Terracortil', 23000, 'salep', 'Obat Kulit', 'Dioles', '2017-03-06'),
('B0005', 'J02', 'Trombopop', 45000, 'Salep', 'Obat Lebam', 'Dioles', '2017-02-18'),
('B0006', 'J01', 'Mylanta', 9000, 'Sirup', 'Obat Maag', 'Diminu', '2016-07-07'),
('B0007', 'J02', 'Agres', 6000, 'Tablet', 'Obat Nyeri', 'Diminu', '2023-12-18'),
('B0008', 'J01', 'Komix', 2500, 'Sirup', 'Obat Batuk', 'Diminu', '2018-01-23'),
('B0009', 'J02', 'Alco', 65000, 'Sirup', 'Obat Flu', 'Diminu', '2017-07-25'),
('B0010', 'J01', 'Scots Elmution', 24000, 'Sirup', 'Vitamin', 'Diminu', '2016-08-20'),
('B0011', 'J02', 'Paramex', 2500, 'Tablet', 'Obat Sakit Kepala', 'Diminu', '2022-01-20'),
('B0012', 'J01', 'Sanaflu', 3000, 'Tablet', 'Obat Flu', 'Diminu', '2023-02-19'),
('B0013', 'J01', 'Sanaflu', 6000, 'Tablet', 'Obat Flu', 'Diminu', '2024-11-15'),
('B0014', 'J01', 'Sanaflu', 6000, 'Tablet', 'Obat Flu', 'Diminu', '2024-11-15'),
('B0015', 'J02', 'Roost', 7500, 'Sirup', 'Obat Kaki', 'Diminu', '2023-12-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`kode_obat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
