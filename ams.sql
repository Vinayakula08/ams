-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2022 at 07:19 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobilenumber` bigint(11) NOT NULL,
  `gmail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `username`, `password`, `mobilenumber`, `gmail`) VALUES
('Phanindra Pothula', 'phanindra333', 'phanindra@admin', 8688735988, 'phanindrapothula333@gmail.com'),
('Vinay Kumar Akula', 'vinayakula21', 'vinay@admin', 7032073722, 'vinaykumar68375@gmail.com'),
('Phanindra Pothula', 'phanindra333', 'phanindra@admin', 8688735988, 'phanindrapothula333@gmail.com'),
('Vinay Kumar Akula', 'vinayakula21', 'vinay@admin', 7032073722, 'vinaykumar68375@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `farmersregister`
--

CREATE TABLE `farmersregister` (
  `ppbno` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobilenumber` bigint(11) NOT NULL,
  `village` varchar(100) NOT NULL,
  `mandal` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `createpassword` varchar(20) NOT NULL,
  `confirmpassword` varchar(20) NOT NULL,
  `farmer_registered_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tradersregister`
--

CREATE TABLE `tradersregister` (
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobilenumber` bigint(11) NOT NULL,
  `gmail` varchar(100) NOT NULL,
  `organisatoin` varchar(100) NOT NULL,
  `newpassword` varchar(100) NOT NULL,
  `confirmpassword` varchar(100) NOT NULL,
  `address` varchar(225) NOT NULL,
  `pincode` int(9) NOT NULL,
  `state` varchar(100) NOT NULL,
  `traderregisteredon` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `farmersregister`
--
ALTER TABLE `farmersregister`
  ADD PRIMARY KEY (`ppbno`);

--
-- Indexes for table `tradersregister`
--
ALTER TABLE `tradersregister`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
