-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2019 at 11:27 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoteli2`
--

-- --------------------------------------------------------

--
-- Table structure for table `grad`
--

CREATE TABLE `grad` (
  `idGrad` int(9) NOT NULL,
  `imeGrada` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grad`
--

INSERT INTO `grad` (`idGrad`, `imeGrada`) VALUES
(1, 'Nije izabran'),
(2, 'Beograd'),
(3, 'Novi Sad'),
(4, 'Nis');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `idHotel` int(9) NOT NULL,
  `ime` varchar(30) NOT NULL,
  `idGrad` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`idHotel`, `ime`, `idGrad`) VALUES
(1, 'Nije izabran', 1),
(2, 'Hotel Moskva', 2),
(3, 'Hotel Amsteradam', 2),
(4, 'Hotel Vojvodina', 3),
(5, 'Garni Hotel Eter', 4);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `idKorisnik` int(9) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `telefon` int(9) NOT NULL,
  `poeni` int(9) NOT NULL,
  `cena` int(9) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `idHotel` int(9) NOT NULL,
  `idSoba` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`idKorisnik`, `ime`, `prezime`, `telefon`, `poeni`, `cena`, `username`, `password`, `idHotel`, `idSoba`) VALUES
(1, 'Stefan', 'Poprasic', 616318903, 0, 0, 'admin', 'admin', 1, 10),
(2, 'Aleksandar', 'Poprasic', 616318904, 0, 0, 'menadzer1', 'menadzer1', 1, 10),
(3, 'Marko', 'Ilic', 55623, 0, 0, 'marko', 'marko', 1, 10),
(4, 'Marko', 'Cedic', 56654, 0, 2500, 'ceda', 'ceda', 4, 8),
(5, 'Nemanja', 'Jakovljevic', 256453, 0, 0, 'djaka', 'djaka', 1, 10),
(6, 'Stefan', 'Vitkovic', 456321, 0, 3000, 'vitko', 'vitko', 2, 2),
(7, 'Miodrag', 'Pavicevic', 568923, 0, 0, 'menadzer2', 'menadzer2', 1, 10),
(8, 'Ana', 'Popovic', 569823, 0, 0, 'admin2', 'admin2', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `soba`
--

CREATE TABLE `soba` (
  `idSoba` int(9) NOT NULL,
  `tipSobe` varchar(30) NOT NULL,
  `cena` int(9) NOT NULL,
  `idHotel` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soba`
--

INSERT INTO `soba` (`idSoba`, `tipSobe`, `cena`, `idHotel`) VALUES
(1, 'pogled na sumu', 3500, 2),
(2, 'pogled na parking', 3000, 2),
(3, 'apartman', 4000, 2),
(4, 'predsednicki apartman', 8000, 2),
(5, 'pogled na parking', 3000, 3),
(6, 'pogled na reku', 3500, 3),
(7, 'dvokrevetna', 3500, 4),
(8, 'jednokrevetna', 2500, 4),
(9, 'pogled na tvrdjavu', 3000, 5),
(10, 'Nije izabrana', 0, 1),
(11, 'apartman za mladence', 4500, 2),
(14, 'apartman', 6000, 5),
(15, 'pogled na grad', 4000, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grad`
--
ALTER TABLE `grad`
  ADD PRIMARY KEY (`idGrad`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`idHotel`),
  ADD KEY `idGrad` (`idGrad`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`idKorisnik`),
  ADD KEY `idHotel` (`idHotel`),
  ADD KEY `idSoba` (`idSoba`);

--
-- Indexes for table `soba`
--
ALTER TABLE `soba`
  ADD PRIMARY KEY (`idSoba`),
  ADD KEY `idHotel` (`idHotel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grad`
--
ALTER TABLE `grad`
  MODIFY `idGrad` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `idHotel` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `idKorisnik` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `soba`
--
ALTER TABLE `soba`
  MODIFY `idSoba` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `idGrad` FOREIGN KEY (`idGrad`) REFERENCES `grad` (`idGrad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD CONSTRAINT `idHotel` FOREIGN KEY (`idHotel`) REFERENCES `hotel` (`idHotel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idSoba` FOREIGN KEY (`idSoba`) REFERENCES `soba` (`idSoba`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `soba`
--
ALTER TABLE `soba`
  ADD CONSTRAINT `idHotell` FOREIGN KEY (`idHotel`) REFERENCES `hotel` (`idHotel`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
