-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 01:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dry`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(3) NOT NULL,
  `farmer_id` int(3) DEFAULT NULL,
  `farmer_name` varchar(20) DEFAULT NULL,
  `center_id` int(3) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `amount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dairy_customers`
--

CREATE TABLE `dairy_customers` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_mobile` varchar(10) DEFAULT NULL,
  `Total_cost` decimal(10,2) DEFAULT NULL,
  `PR1` int(11) DEFAULT NULL,
  `PR2` int(11) DEFAULT NULL,
  `PR3` int(11) DEFAULT NULL,
  `PR4` int(11) DEFAULT NULL,
  `PR5` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dairy_customers`
--

INSERT INTO `dairy_customers` (`id`, `customer_name`, `customer_mobile`, `Total_cost`, `PR1`, `PR2`, `PR3`, `PR4`, `PR5`) VALUES
(7, 'Usha', '9758526245', 848.50, 209, 0, 206, 207, 0),
(8, 'Prajwal', '9544556258', 99.25, 209, 205, 0, 0, 0),
(12, 'Darshan', '9544556258', 529.25, 209, 0, 0, 0, 208);

-- --------------------------------------------------------

--
-- Table structure for table `dairy_product`
--

CREATE TABLE `dairy_product` (
  `product_id` int(5) NOT NULL,
  `conn` varchar(30) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dairy_product`
--

INSERT INTO `dairy_product` (`product_id`, `conn`, `price`) VALUES
(210, 'cow', 20);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(5) NOT NULL,
  `ename` varchar(30) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `salary` int(5) NOT NULL,
  `designation` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `ename`, `phno`, `salary`, `designation`, `address`) VALUES
(12354, 'Dhanush', '9888552455', 50000, 'Staff', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `id` int(5) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `ph` varchar(10) NOT NULL,
  `f_vid` int(3) NOT NULL,
  `milk_type` text NOT NULL,
  `min_litre` int(2) NOT NULL,
  `reg_date` date NOT NULL DEFAULT current_timestamp(),
  `animalID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`id`, `fname`, `ph`, `f_vid`, `milk_type`, `min_litre`, `reg_date`, `animalID`) VALUES
(20, 'Durga', '9652775441', 0, 'Buffalo', 2, '2024-03-25', 2903);

-- --------------------------------------------------------

--
-- Table structure for table `milk_center`
--

CREATE TABLE `milk_center` (
  `cid` int(3) NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `village_id` int(3) DEFAULT NULL,
  `staff_id` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(3) NOT NULL,
  `pname` varchar(15) NOT NULL,
  `pcost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `pname`, `pcost`) VALUES
(1, 'cmilk', 57),
(2, 'bmilk', 60),
(3, 'cghee', 1200),
(4, 'bghee', 800),
(5, 'curd', 40),
(6, 'cheese', 250),
(7, 'butter', 480),
(8, 'panner', 320);

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `dt` date DEFAULT NULL,
  `fid` int(5) DEFAULT NULL,
  `quan` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `village`
--

CREATE TABLE `village` (
  `vid` int(3) NOT NULL,
  `vname` varchar(30) NOT NULL,
  `route_no` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `village`
--

INSERT INTO `village` (`vid`, `vname`, `route_no`) VALUES
(1, 'c-camp,kurnool', 1),
(2, 'b-camp,kurnool', 1),
(3, 'a-camp,kurnool', 1),
(4, 'madhava nagar,kurnool', 2),
(5, 'checkpost,kurnool', 2),
(6, 'saraswathi nagar,kurnool', 3),
(7, 'VR coloney,kurnool', 4),
(8, 'chowrasata,kurnool', 4),
(9, 'dr coloney,kurnool', 3),
(10, 'lakshmi nagar,kurnool', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `farmer_id` (`farmer_id`),
  ADD KEY `center_id` (`center_id`);

--
-- Indexes for table `dairy_customers`
--
ALTER TABLE `dairy_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ph` (`ph`);

--
-- Indexes for table `milk_center`
--
ALTER TABLE `milk_center`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `village_id` (`village_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `pid` (`pid`,`pname`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD KEY `fid` (`fid`);

--
-- Indexes for table `village`
--
ALTER TABLE `village`
  ADD PRIMARY KEY (`vid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `dairy_customers`
--
ALTER TABLE `dairy_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12355;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `village`
--
ALTER TABLE `village`
  MODIFY `vid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`farmer_id`) REFERENCES `farmer` (`id`),
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`center_id`) REFERENCES `milk_center` (`cid`);

--
-- Constraints for table `milk_center`
--
ALTER TABLE `milk_center`
  ADD CONSTRAINT `milk_center_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `employee` (`eid`),
  ADD CONSTRAINT `milk_center_ibfk_2` FOREIGN KEY (`village_id`) REFERENCES `village` (`vid`);

--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `farmer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
