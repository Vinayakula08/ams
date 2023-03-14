-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 06:31 AM
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
-- Table structure for table `allproducts`
--

CREATE TABLE `allproducts` (
  `pid` int(5) NOT NULL,
  `productname` varchar(25) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `ppbno` varchar(15) NOT NULL,
  `tid` int(5) NOT NULL,
  `tname` varchar(25) NOT NULL,
  `organisation` varchar(100) NOT NULL,
  `quantity` varchar(225) NOT NULL,
  `price` int(5) NOT NULL,
  `product_saled_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allproducts`
--

INSERT INTO `allproducts` (`pid`, `productname`, `fname`, `ppbno`, `tid`, `tname`, `organisation`, `quantity`, `price`, `product_saled_on`) VALUES
(1, 'paddy', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', '', 2500, '2022-07-27 18:25:24'),
(1, 'paddy', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', '', 2001, '2022-07-28 03:25:21'),
(2, 'Cotton', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', '', 7001, '2022-07-28 03:30:55'),
(1, 'wheat', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', '', 3001, '2022-07-28 03:40:05'),
(1, 'wheat', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', '', 8000, '2022-07-31 17:53:45'),
(2, 'maize', 'vinay', 'T23060110123', 2, 'bhanu', 'bhanu ltd', '', 2001, '2022-07-31 18:04:02'),
(1, 'paddy', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', '', 1900, '2022-08-27 07:59:19'),
(1, 'paddy', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', '', 2000, '2022-09-28 10:17:23'),
(1, 'paddy', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', '', 3001, '2022-09-30 01:52:51'),
(1, 'Cotton', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', '', 2000, '2022-10-06 03:40:05'),
(1, 'wheat', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', '', 2000, '2022-10-06 03:41:19'),
(1, 'paddy', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', '', 2001, '2022-11-22 12:33:49'),
(1, 'paddy', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', '99', 2000, '2022-11-29 04:44:38'),
(2, 'wheat', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', '1000', 6001, '2022-11-29 04:49:00'),
(1, 'paddy', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', '98', 2000, '2022-11-29 05:08:06'),
(104, 'paddy', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', '98', 2000, '2022-11-29 05:09:39'),
(1, 'wheat', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', '1000', 6001, '2022-11-29 05:12:16'),
(1, 'paddy', 'Phanindra', 'T23060110124', 10, 'Phanindra pothula', 'phani ltd.', '1000', 2000, '2022-11-29 05:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `contactinser`
--

CREATE TABLE `contactinser` (
  `email` varchar(200) NOT NULL,
  `mobilenumber` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `farmersregister`
--

CREATE TABLE `farmersregister` (
  `ppbno` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(225) NOT NULL,
  `mobilenumber` bigint(11) NOT NULL,
  `village` varchar(100) NOT NULL,
  `mandal` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `createpassword` varchar(20) NOT NULL,
  `confirmpassword` varchar(20) NOT NULL,
  `farmer_registered_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmersregister`
--

INSERT INTO `farmersregister` (`ppbno`, `name`, `age`, `gender`, `email`, `mobilenumber`, `village`, `mandal`, `district`, `state`, `createpassword`, `confirmpassword`, `farmer_registered_on`) VALUES
('', '', 0, '', '', 0, '', '', '', '', '', '', '2022-11-29 05:11:22'),
('T23060110123', 'vinay', 20, 'Male', 'vinaykumar68375@gmail.com', 7032073722, 'siddenki', 'jangaon', 'Jangaon', 'Telangana', 'vinay', 'vinay', '2022-05-09 09:59:16'),
('T23060110124', 'Phanindra', 22, 'Male', 'phanindrasunny333@gmail.com', 8688735988, 'siddipet', 'siddipet', 'siddipet', 'Telangana', 'phani', 'phani', '2022-11-28 08:46:05'),
('T23060110126', 'AKULA VINAY KUMAR', 23, 'Male', 'phanindrasunny333@gmail.com', 7032073722, 'siddenki', 'jangaon', 'Jangaon', 'Telangana', 'vinay', 'vinay', '2022-11-28 15:40:49'),
('T23060110128', 'bhanu', 23, 'Male', 'bhanuchalla17@gmail.com', 8688076173, 'siddenki', 'jangaon', 'Jangaon', 'Telangana', 'bhanu', 'bhanu', '2022-11-28 08:59:10'),
('T23060110130', 'AKULA VINAY KUMAR', 23, 'Male', 'vinaykumar68375@gmail.com', 7032073722, 'siddenki', 'jangaon', 'Jangaon', 'Telangana', 'vinay', 'vinay', '2022-11-29 04:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `mspdetails`
--

CREATE TABLE `mspdetails` (
  `Commodity` varchar(100) NOT NULL,
  `Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mspdetails`
--

INSERT INTO `mspdetails` (`Commodity`, `Price`) VALUES
('Paddy', 2060),
('Jowar', 2990),
('Maize', 1962),
('Cotton', 6380),
('Groundnut', 5850),
('Wheat', 2015),
('Ragi', 3578),
('Jute', 4750);

-- --------------------------------------------------------

--
-- Table structure for table `pricedetails`
--

CREATE TABLE `pricedetails` (
  `tid` int(5) NOT NULL,
  `pid` int(5) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `productdetails`
--

CREATE TABLE `productdetails` (
  `pid` int(5) NOT NULL,
  `productname` varchar(25) NOT NULL,
  `quantity` int(5) NOT NULL,
  `quality` int(5) NOT NULL,
  `moisture` int(5) NOT NULL,
  `msp` int(5) NOT NULL,
  `ppbno` varchar(100) NOT NULL,
  `product_registered_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tradersregister`
--

CREATE TABLE `tradersregister` (
  `tid` int(5) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobilenumber` bigint(11) NOT NULL,
  `gmail` varchar(100) NOT NULL,
  `organisation` varchar(100) NOT NULL,
  `newpassword` varchar(100) NOT NULL,
  `confirmpassword` varchar(100) NOT NULL,
  `address` varchar(225) NOT NULL,
  `pincode` int(9) NOT NULL,
  `state` varchar(100) NOT NULL,
  `traderregisteredon` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tradersregister`
--

INSERT INTO `tradersregister` (`tid`, `name`, `username`, `age`, `gender`, `mobilenumber`, `gmail`, `organisation`, `newpassword`, `confirmpassword`, `address`, `pincode`, `state`, `traderregisteredon`) VALUES
(0, '', '', 0, '', 0, '', '', '', '', '', 0, '', '0000-00-00 00:00:00'),
(1, 'AKULA VINAY KUMAR', 'vinayakula', 20, 'Male', 7032073722, 'vinaykumar68375@gmail.com', 'akulas limited', 'vinay', 'vinay', 'H.NO:3-8,SIDDENKI,JANGAON,506201', 506201, 'Telangana', '2022-07-27 06:12:15'),
(2, 'bhanu', 'bhanuchalla', 20, 'Male', 8688076173, 'bhan@gmail.com', 'bhanu ltd', 'bhanu', 'bhanu', 'narsaipally', 506223, 'Telangana', '2022-07-27 06:47:54'),
(6, 'AKULA VINAY KUMAR', 'vinay1', 23, 'Male', 7032073722, 'vinaykumar68375@gmail.com', 'akulas limited', 'vinay', 'vinay', 'H.NO:3-8,SIDDENKI,JANGAON,506201', 506201, 'Telangana', '0000-00-00 00:00:00'),
(7, 'AKULA VINAY KUMAR', 'vinay2', 23, 'Male', 7032073722, 'vinaykumar68375@gmail.com', 'vinay', 'vinay', 'vinay', 'H.NO:3-8,SIDDENKI,JANGAON,506201', 506201, 'Telangana', '0000-00-00 00:00:00'),
(10, 'Phanindra pothula', 'Phanindra1', 23, 'Male', 8688735988, 'phanindrasunny333@gmail.com', 'phani ltd.', 'vinay', 'vinay', 'H.NO:3-8,SIDDENKI,JANGAON,506201', 506201, 'Telangana', '0000-00-00 00:00:00'),
(11, 'vinay3', 'htyu', 23, 'Male', 7032073722, 'vinaykumar68375@gmail.com', 'akulas limited', 'vinay', 'vinay', 'H.NO:3-8,SIDDENKI,JANGAON,506201', 506201, 'Telangana', '0000-00-00 00:00:00'),
(89, 'AKULA VINAY KUMAR', 'vinayakula234', 23, 'Male', 7032073722, 'vinaykumar68375@gmail.com', 'vinay', 'vinay', 'vinay', 'H.NO:3-8,SIDDENKI,JANGAON,506201', 506201, 'Telangana', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `farmersregister`
--
ALTER TABLE `farmersregister`
  ADD PRIMARY KEY (`ppbno`);

--
-- Indexes for table `pricedetails`
--
ALTER TABLE `pricedetails`
  ADD KEY `tid` (`tid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `productdetails`
--
ALTER TABLE `productdetails`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `ppbno` (`ppbno`);

--
-- Indexes for table `tradersregister`
--
ALTER TABLE `tradersregister`
  ADD PRIMARY KEY (`tid`) USING BTREE;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pricedetails`
--
ALTER TABLE `pricedetails`
  ADD CONSTRAINT `pricedetails_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `tradersregister` (`tid`),
  ADD CONSTRAINT `pricedetails_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `productdetails` (`pid`);

--
-- Constraints for table `productdetails`
--
ALTER TABLE `productdetails`
  ADD CONSTRAINT `productdetails_ibfk_1` FOREIGN KEY (`ppbno`) REFERENCES `farmersregister` (`ppbno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
