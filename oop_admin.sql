-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2021 at 07:29 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_information`
--

CREATE TABLE `category_information` (
  `item_name` varchar(30) DEFAULT NULL,
  `id` int(15) NOT NULL,
  `category_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_information`
--

INSERT INTO `category_information` (`item_name`, `id`, `category_name`) VALUES
('mouse', 1, 'Electronics'),
('keyboard', 2, 'Electronics'),
('T-Shirt', 3, 'Men Fashion');

-- --------------------------------------------------------

--
-- Table structure for table `contuct_us`
--

CREATE TABLE `contuct_us` (
  `id` int(15) NOT NULL,
  `Detail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `creat_admin`
--

CREATE TABLE `creat_admin` (
  `Name` varchar(15) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `confirm_password` varchar(15) DEFAULT NULL,
  `admin_type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `creat_admin`
--

INSERT INTO `creat_admin` (`Name`, `email`, `password`, `confirm_password`, `admin_type`) VALUES
('admin', 'osmangoni2k16@gmail.', '123', '123', 'Main Admin'),
('tarek', 'tarek@gmail.com', '333', '333', 'Sub Admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `ID` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `address` varchar(55) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`ID`, `name`, `address`, `email`, `number`) VALUES
(1, 'hasib', '<p>fjs sflsfsf</p>', 'osmangoni2k16@gmail.', 469649),
(5, 'osman', '<p>fdsfsd</p>', 'osmangoni@gmail.com', 5994949);

-- --------------------------------------------------------

--
-- Table structure for table `item_info`
--

CREATE TABLE `item_info` (
  `id` int(15) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_info`
--

INSERT INTO `item_info` (`id`, `name`) VALUES
(1, 'mouse'),
(2, 'keyboard'),
(3, 'mouse'),
(4, 'Headphones'),
(5, 'T-Shirt');

-- --------------------------------------------------------

--
-- Table structure for table `opening_balance`
--

CREATE TABLE `opening_balance` (
  `date` date DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `hend_in_cash` varchar(15) DEFAULT NULL,
  `bank_deposit` int(11) DEFAULT NULL,
  `accounts_receiveable` int(11) DEFAULT NULL,
  `accounts_payable` int(11) DEFAULT NULL,
  `admin` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opening_balance`
--

INSERT INTO `opening_balance` (`date`, `year`, `hend_in_cash`, `bank_deposit`, `accounts_receiveable`, `accounts_payable`, `admin`) VALUES
('0000-00-00', 2021, '5000', 400, 500, 2000, 'osman'),
('2021-06-24', 2020, '6000', 300, 500, 4000, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `item_name` varchar(25) DEFAULT NULL,
  `cat_name` varchar(25) DEFAULT NULL,
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(15) DEFAULT NULL,
  `pro_price` int(11) DEFAULT NULL,
  `pro_details` varchar(50) DEFAULT NULL,
  `pro_stock` int(11) DEFAULT NULL,
  `pro_pic` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`item_name`, `cat_name`, `pro_id`, `pro_name`, `pro_price`, `pro_details`, `pro_stock`, `pro_pic`) VALUES
('T-Shirt', 'Men Fashion', 3, 'shirt', 600, '<p>shirt</p>', 60, 'download.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_information`
--
ALTER TABLE `category_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contuct_us`
--
ALTER TABLE `contuct_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `creat_admin`
--
ALTER TABLE `creat_admin`
  ADD PRIMARY KEY (`admin_type`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `item_info`
--
ALTER TABLE `item_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`pro_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
