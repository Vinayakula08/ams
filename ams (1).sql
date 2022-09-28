-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2022 at 07:07 PM
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
-- Database: `epiz_32292530_ams`
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
  `price` int(5) NOT NULL,
  `product_saled_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allproducts`
--

INSERT INTO `allproducts` (`pid`, `productname`, `fname`, `ppbno`, `tid`, `tname`, `organisation`, `price`, `product_saled_on`) VALUES
(1, 'paddy', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', 2500, '2022-07-27 18:25:24'),
(1, 'paddy', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', 2001, '2022-07-28 03:25:21'),
(2, 'Cotton', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', 7001, '2022-07-28 03:30:55'),
(1, 'wheat', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', 3001, '2022-07-28 03:40:05'),
(1, 'wheat', 'vinay', 'T23060110123', 1, 'AKULA VINAY KUMAR', 'akulas limited', 8000, '2022-07-31 17:53:45'),
(2, 'maize', 'vinay', 'T23060110123', 2, 'bhanu', 'bhanu ltd', 2001, '2022-07-31 18:04:02');

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

--
-- Dumping data for table `farmersregister`
--

INSERT INTO `farmersregister` (`ppbno`, `name`, `age`, `gender`, `mobilenumber`, `village`, `mandal`, `district`, `state`, `createpassword`, `confirmpassword`, `farmer_registered_on`) VALUES
('', '', 0, '', 0, '', '', '', '', '', '', '2022-07-31 17:58:46'),
('T23060110123', 'vinay', 20, 'Male', 7032073722, '', 'jangaon', 'Jangaon', 'Telangana', 'vinay', 'vinay', '2022-05-09 09:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `pricedetails`
--

CREATE TABLE `pricedetails` (
  `tid` int(5) NOT NULL,
  `pid` int(5) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pricedetails`
--

INSERT INTO `pricedetails` (`tid`, `pid`, `price`) VALUES
(1, 0, 2000);

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

--
-- Dumping data for table `productdetails`
--

INSERT INTO `productdetails` (`pid`, `productname`, `quantity`, `quality`, `moisture`, `msp`, `ppbno`, `product_registered_on`) VALUES
(0, '', 0, 0, 0, 0, '', '2022-08-01 16:19:49');

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
(1, 'AKULA VINAY KUMAR', 'vinayakula', 20, 'Male', 7032073722, 'vinay@gmail.com', 'akulas limited', 'vinay', 'vinay', 'H.NO:3-8,SIDDENKI,JANGAON,506201', 506201, 'Telangana', '2022-07-27 06:12:15'),
(2, 'bhanu', 'bhanuchalla', 20, 'Male', 8688076173, 'bhan@gmail.com', 'bhanu ltd', 'bhanu', 'bhanu', 'narsaipally', 506223, 'Telangana', '2022-07-27 06:47:54');

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
