-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 04:44 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `pass` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pass`) VALUES
(1, 'admin', 'a123');

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `blood_bagno` int(10) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `blood_quantity` int(10) NOT NULL,
  `cost_per_unit` int(10) NOT NULL,
  `haemoglobin` int(10) DEFAULT NULL,
  `donor_id` varchar(10) DEFAULT NULL,
  `recipient_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`blood_bagno`, `blood_group`, `blood_quantity`, `cost_per_unit`, `haemoglobin`, `donor_id`, `recipient_id`) VALUES
(601, 'A+', 20, 300, 4, '301', '501'),
(602, 'A+', 30, 300, 4, '301', '502'),
(603, 'AB+', 10, 250, 4, '303', '503'),
(604, 'O+', 30, 500, 3, '306', '505'),
(605, 'O-', 20, 700, 5, '305', '505'),
(606, 'O+', 30, 500, 5, '304', '501');

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor`
--

CREATE TABLE `blood_donor` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_of_donation` date NOT NULL,
  `blood_group` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `age` int(10) NOT NULL
) ;

--
-- Dumping data for table `blood_donor`
--

INSERT INTO `blood_donor` (`id`, `name`, `date_of_donation`, `blood_group`, `address`, `sex`, `age`) VALUES
(3, 'Sarthak', '2020-07-22', 'B+', 'delhi', 'M', 18);

-- --------------------------------------------------------

--
-- Table structure for table `blood_inventory`
--

CREATE TABLE `blood_inventory` (
  `inventory_id` varchar(10) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `order` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_inventory`
--

INSERT INTO `blood_inventory` (`inventory_id`, `blood_group`, `quantity`, `order`) VALUES
('1001', 'A+', 200, 10001),
('1002', 'A-', 100, 10002),
('1003', 'B+', 110, 10003),
('1004', 'B-', 100, 10004),
('1005', 'AB+', 150, 10005),
('1006', 'AB-', 150, 10006),
('1007', 'O+', 90, 10007),
('1008', 'O-', 200, 10008);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branch_id` varchar(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `address` varchar(50) NOT NULL,
  `hospital_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branch_id`, `name`, `address`, `hospital_id`) VALUES
('701', 'K Ambani 1', 'Delhi-3', '4001'),
('702', 'K Ambani 2', 'Delhi-7', '4001'),
('703', 'K Ambani 3', 'Delhi-15', '4001'),
('704', 'Tata Memorial 1', 'Delhi-5', '4002'),
('705', 'Tata Memorial 2', 'Delhi-14', '4002');

-- --------------------------------------------------------

--
-- Table structure for table `donor_phno`
--

CREATE TABLE `donor_phno` (
  `donor_id` varchar(10) DEFAULT NULL,
  `phno` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor_phno`
--

INSERT INTO `donor_phno` (`donor_id`, `phno`) VALUES
('301', 973010000),
('302', 983010000),
('303', 993010000),
('304', 903010000),
('305', 972010000);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospital_id` varchar(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `address` varchar(50) NOT NULL,
  `required_quantity` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hospital_id`, `name`, `address`, `required_quantity`) VALUES
('4001', 'K.Ambani Hospital', 'Delhi', 10),
('4002', 'Toba Memorial', 'Mumbai', 5),
('4003', 'MGM Hospital', 'Allahbad', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orderr`
--

CREATE TABLE `orderr` (
  `inventory_id` varchar(10) DEFAULT NULL,
  `hospital_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderr`
--

INSERT INTO `orderr` (`inventory_id`, `hospital_id`) VALUES
('1001', '4001'),
('1002', '4001'),
('1003', '4001'),
('1004', '4002');

-- --------------------------------------------------------

--
-- Table structure for table `recipient`
--

CREATE TABLE `recipient` (
  `recipient_id` varchar(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `age` int(5) DEFAULT NULL,
  `DOA` date DEFAULT NULL,
  `no_of_units` int(10) DEFAULT NULL,
  `emp_associated` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipient`
--

INSERT INTO `recipient` (`recipient_id`, `name`, `blood_group`, `sex`, `age`, `DOA`, `no_of_units`, `emp_associated`) VALUES
('501', 'Harbhajan K', 'A+', 'm', 35, '0000-00-00', 20, '2008'),
('502', 'PC Roy', 'A+', 'm', 45, '0000-00-00', 30, '2005'),
('503', 'Manish Singh', 'AB+', 'm', 33, '0000-00-00', 50, '2006'),
('504', 'Sushant Garg', 'B-', 'm', 19, '0000-00-00', 10, '2010'),
('505', 'Malini S', 'O+', 'f', 49, '0000-00-00', 20, '2003');

-- --------------------------------------------------------

--
-- Table structure for table `recipient1`
--

CREATE TABLE `recipient1` (
  `Recipient_id` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `date_of_receiving` date NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `age` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipient1`
--

INSERT INTO `recipient1` (`Recipient_id`, `name`, `date_of_receiving`, `blood_group`, `address`, `sex`, `age`) VALUES
(1, 'Abhinav Chawla', '2020-07-08', 'A+', 'ahmedabad', 'm', 19);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `emp_id` varchar(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `sex` varchar(5) NOT NULL,
  `emp_description` varchar(100) NOT NULL,
  `inventory_id` varchar(10) NOT NULL
) ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`emp_id`, `name`, `sex`, `emp_description`, `inventory_id`) VALUES
('2001', 'Ankur Jain', 'm', 'since 2010', '1003'),
('2002', 'Anupriya Agarwal', 'f', 'since 2013', '1007'),
('2003', 'Somya Rathi', 'm', 'since 2009', '1007'),
('2004', 'Akshat kumar', 'm', 'since 2018', '1006'),
('2005', 'Saransh Tripathi', 'm', 'since 2019', '1001'),
('2006', 'Suraj singh', 'm', 'since 2019', '1005'),
('2007', 'Bhavya Mishra', 'f', 'since 2020', '1002'),
('2008', 'Mansi choudhry', 'f', 'since 2014', '1001'),
('2009', 'Abhay Dubey', 'm', 'since 2017', '1003'),
('2010', 'Abhay Sharma', 't', 'since 2014', '1004');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`blood_bagno`),
  ADD KEY `recipient_id` (`recipient_id`);

--
-- Indexes for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_inventory`
--
ALTER TABLE `blood_inventory`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `orderr`
--
ALTER TABLE `orderr`
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- Indexes for table `recipient`
--
ALTER TABLE `recipient`
  ADD PRIMARY KEY (`recipient_id`),
  ADD KEY `emp_associated` (`emp_associated`);

--
-- Indexes for table `recipient1`
--
ALTER TABLE `recipient1`
  ADD PRIMARY KEY (`Recipient_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `fk_id` (`inventory_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_donor`
--
ALTER TABLE `blood_donor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipient1`
--
ALTER TABLE `recipient1`
  MODIFY `Recipient_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blood`
--
ALTER TABLE `blood`
  ADD CONSTRAINT `blood_ibfk_2` FOREIGN KEY (`recipient_id`) REFERENCES `recipient` (`recipient_id`);

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`hospital_id`);

--
-- Constraints for table `orderr`
--
ALTER TABLE `orderr`
  ADD CONSTRAINT `orderr_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `blood_inventory` (`inventory_id`),
  ADD CONSTRAINT `orderr_ibfk_2` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`hospital_id`);

--
-- Constraints for table `recipient`
--
ALTER TABLE `recipient`
  ADD CONSTRAINT `recipient_ibfk_1` FOREIGN KEY (`emp_associated`) REFERENCES `staff` (`emp_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `fk_id` FOREIGN KEY (`inventory_id`) REFERENCES `blood_inventory` (`inventory_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
