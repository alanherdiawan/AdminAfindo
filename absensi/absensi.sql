-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2022 at 08:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesslevel`
--

CREATE TABLE `accesslevel` (
  `LevelID` int(11) NOT NULL,
  `LevelName` varchar(255) DEFAULT NULL,
  `IsAktif` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accesslevel`
--

INSERT INTO `accesslevel` (`LevelID`, `LevelName`, `IsAktif`) VALUES
(0, 'Hehe', b'1'),
(1, 'Satu', b'1'),
(2, 'Dua', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `mstdivisi`
--

CREATE TABLE `mstdivisi` (
  `KodeDivisi` varchar(20) NOT NULL,
  `NamaDivisi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mstdivisi`
--

INSERT INTO `mstdivisi` (`KodeDivisi`, `NamaDivisi`) VALUES
('1', 'Desain'),
('2', 'Programer'),
('3', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `sistemsetting`
--

CREATE TABLE `sistemsetting` (
  `latitude` int(11) NOT NULL,
  `logitude` int(11) NOT NULL,
  `NoUrut` int(11) NOT NULL,
  `JenisSetting` varchar(25) DEFAULT NULL,
  `NamaSetting` varchar(50) DEFAULT NULL,
  `Value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trabsensi`
--

CREATE TABLE `trabsensi` (
  `KodeAbsen` int(25) NOT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `JamMasuk` time DEFAULT NULL,
  `Keterlambatan` double DEFAULT NULL,
  `Kategori` varchar(1) DEFAULT NULL,
  `Keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trabsensi`
--

INSERT INTO `trabsensi` (`KodeAbsen`, `UserName`, `Tanggal`, `JamMasuk`, `Keterlambatan`, `Kategori`, `Keterangan`) VALUES
(2, 'qwe', '2022-08-19', '08:26:12', 26, 'c', NULL),
(2072710, 'Raihan', '2022-08-31', '11:23:26', -206, 'D', NULL),
(5942210, 'Raihan', '2022-08-30', '01:38:24', -343, 'D', NULL),
(11487110, 'abc', '2022-08-25', '08:45:39', -45, 'A', NULL),
(22614410, 'abc', '2022-08-24', '10:12:32', -134, 'D', NULL),
(38599410, 'abc', '2022-08-25', '09:08:26', -69, 'D', NULL),
(39746510, 'qwe', '2022-08-25', '10:57:37', -179, 'D', NULL),
(41141110, 'qwe', '2022-08-25', '10:57:02', -179, 'D', NULL),
(69307310, 'Raihan', '2022-08-30', '01:42:12', -347, 'D', NULL),
(73696710, 'Raihan', '2022-08-31', '11:34:53', -217, 'D', NULL),
(79288510, 'abc', '2022-08-23', '11:08:39', -191, 'D', NULL),
(79602910, 'abc', '2022-08-23', '03:48:28', -475, 'D', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `UserName` varchar(20) NOT NULL,
  `UserPsw` varchar(255) DEFAULT NULL,
  `ActualName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `HPNo` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `UserStatus` int(11) DEFAULT NULL,
  `LevelID` int(11) DEFAULT NULL,
  `IsAktif` bit(1) DEFAULT NULL,
  `StatusUser` varchar(20) DEFAULT NULL,
  `NamaLengkap` varchar(20) DEFAULT NULL,
  `NoTelp` varchar(20) DEFAULT NULL,
  `Alamat` varchar(20) DEFAULT NULL,
  `KodeDivisi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`UserName`, `UserPsw`, `ActualName`, `Address`, `Phone`, `HPNo`, `Email`, `UserStatus`, `LevelID`, `IsAktif`, `StatusUser`, `NamaLengkap`, `NoTelp`, `Alamat`, `KodeDivisi`) VALUES
('abc', '123', 'Raganhildis Jessica', 'jombang', '08863342567', '08863342567', 'test@gmail.com', 1, 1, b'1', '1', 'Raganhildis Jessica', '08863342567', 'jombang', '1'),
('qwe', '456', 'Malin Gilbert', 'surabaya', '08866838540', '08866838540', 'test2@gmail.com', 1, 1, b'1', '1', 'Malin Gilbert', '08866838540', 'surabaya', '1'),
('Raihan', '1234', 'Raihan Nur Bakhiri', 'Surabaya', '08882222990', '08882222990', 'raihan@gmail.com', 1, 1, b'1', '1', 'Raihan Nur Bakhiri', '08882222990', 'Surabaya', '3'),
('rty', '696', 'Theudelinda Hugo', 'roma', '08880647035', '08880647035', 'test3@gmail.com', 0, 2, b'0', '0', 'Theudelinda Hugo', '08880647035', 'roma', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesslevel`
--
ALTER TABLE `accesslevel`
  ADD PRIMARY KEY (`LevelID`) USING BTREE;

--
-- Indexes for table `mstdivisi`
--
ALTER TABLE `mstdivisi`
  ADD PRIMARY KEY (`KodeDivisi`);

--
-- Indexes for table `sistemsetting`
--
ALTER TABLE `sistemsetting`
  ADD PRIMARY KEY (`NoUrut`);

--
-- Indexes for table `trabsensi`
--
ALTER TABLE `trabsensi`
  ADD PRIMARY KEY (`KodeAbsen`),
  ADD KEY `R_3` (`UserName`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`UserName`),
  ADD KEY `R_1` (`KodeDivisi`),
  ADD KEY `LevelID` (`LevelID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sistemsetting`
--
ALTER TABLE `sistemsetting`
  MODIFY `NoUrut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trabsensi`
--
ALTER TABLE `trabsensi`
  MODIFY `KodeAbsen` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96338811;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `trabsensi`
--
ALTER TABLE `trabsensi`
  ADD CONSTRAINT `R_3` FOREIGN KEY (`UserName`) REFERENCES `userlogin` (`UserName`);

--
-- Constraints for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD CONSTRAINT `LevelID` FOREIGN KEY (`LevelID`) REFERENCES `accesslevel` (`LevelID`),
  ADD CONSTRAINT `R_1` FOREIGN KEY (`KodeDivisi`) REFERENCES `mstdivisi` (`KodeDivisi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
