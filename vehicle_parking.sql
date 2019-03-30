-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 29, 2019 at 05:18 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle_parking`
--

-- --------------------------------------------------------

--
-- Table structure for table `Base_Fare`
--

CREATE TABLE `Base_Fare` (
  `vehicle_category` varchar(20) NOT NULL,
  `fare` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Base_Fare`
--

INSERT INTO `Base_Fare` (`vehicle_category`, `fare`) VALUES
('Four wheeler', 30),
('Two wheeler', 20);

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `username` varchar(15) NOT NULL,
  `booking_id` int(10) NOT NULL,
  `vehicle_category` varchar(20) NOT NULL,
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `parking_time` int(5) NOT NULL,
  `exit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date` date NOT NULL,
  `total_fare` int(10) NOT NULL,
  `level_number` int(5) NOT NULL,
  `slot_number` int(5) NOT NULL,
  `OTP` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_info`
--

CREATE TABLE `login_info` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `user_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_info`
--

INSERT INTO `login_info` (`username`, `password`, `user_type`) VALUES
('bc', '', 'Normal'),
('cx', '', 'Normal'),
('cxs', '', 'Normal'),
('cz', '', 'Normal'),
('dc', '', 'Normal'),
('er', '', 'Normal'),
('gq', '', 'Normal'),
('harsh', 'harsh', 'Normal'),
('hg', '121212', 'Normal'),
('hg1', '12121212', 'Normal'),
('hg2', '', 'Normal'),
('jd', '', 'Normal'),
('kj', '', 'Normal'),
('ks', '', 'Normal'),
('lj', '', 'Normal'),
('ml', '', 'Normal'),
('po', '', 'Normal'),
('pogn', '', 'Normal'),
('q', '123456', 'Normal'),
('qw', '', 'Normal'),
('username', 'password', 'Normal'),
('vg', '', 'Normal'),
('wq', '', 'Normal'),
('wq1', '', 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `Normal_User`
--

CREATE TABLE `Normal_User` (
  `username` varchar(15) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `contact` int(10) NOT NULL,
  `licence_number` varchar(16) NOT NULL,
  `address` varchar(50) NOT NULL,
  `OTP` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Normal_User`
--

INSERT INTO `Normal_User` (`username`, `first_name`, `last_name`, `contact`, `licence_number`, `address`, `OTP`) VALUES
('bc', '', '', 0, '', '', 22007),
('cx', '', '', 0, '', '', 86465),
('cxs', 'ghr', '', 0, '', '', 74509),
('cz', '', '', 0, '', '', 32271),
('dc', '', '', 0, '', '', 16922),
('er', 'er', '', 0, '', '', 90007),
('gq', '', '', 0, '', '', 32122),
('harsh', 'Harsh', 'Gandhi', 0, 'licence', 'address', 123),
('hg', 'hh', 'h', 1212121212, '121212111121', 'q', 44375),
('hg1', 'f', 'h', 1111111111, '121212121212', 'q', 39631),
('hg2', '', '', 0, '', '', 54793),
('jd', '', '', 0, '', '', 45195),
('kj', '', '', 0, '', '', 30274),
('ks', '', '', 0, '', '', 73225),
('lj', '', '', 0, '', '', 38165),
('ml', '', '', 0, '', '', 9981),
('po', '', '', 0, '', '', 4433),
('pogn', '', '', 0, '', '', 50615),
('q', 'h', 'a', 1515151515, '121212121212', 'q', 0),
('qw', '', '', 0, '', '', 59645),
('username', 'first_name', 'last_name', 0, 'licence', 'address', 48588),
('vg', '', '', 0, '', '', 62257),
('wq', '', '', 0, '', '', 50380);

-- --------------------------------------------------------

--
-- Table structure for table `Operator_User`
--

CREATE TABLE `Operator_User` (
  `username` varchar(15) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `contact` int(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `adhaar_number` int(12) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Parking_info`
--

CREATE TABLE `Parking_info` (
  `level_number` int(5) NOT NULL,
  `number_of_slots` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Slot_Status`
--

CREATE TABLE `Slot_Status` (
  `level_number` int(5) NOT NULL,
  `slot_number` int(5) NOT NULL,
  `booking_id` int(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Vehicle_info`
--

CREATE TABLE `Vehicle_info` (
  `username` varchar(15) NOT NULL,
  `plate_number` varchar(15) NOT NULL,
  `vehicle_category` varchar(20) NOT NULL,
  `vehicle_company` varchar(15) NOT NULL,
  `vehicle_model` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Vehicle_info`
--

INSERT INTO `Vehicle_info` (`username`, `plate_number`, `vehicle_category`, `vehicle_company`, `vehicle_model`) VALUES
('harsh', 'MH-0548', 'Four wheeler', 'Maruti Suzuki', 'Swift'),
('harsh', 'MH-4597', 'Two wheeler', 'Tvs Bajaj', 'Pulsar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Base_Fare`
--
ALTER TABLE `Base_Fare`
  ADD PRIMARY KEY (`vehicle_category`);

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`username`,`booking_id`),
  ADD UNIQUE KEY `OTP` (`OTP`),
  ADD UNIQUE KEY `booking_id` (`booking_id`),
  ADD KEY `category_fk_b` (`vehicle_category`),
  ADD KEY `level_fk` (`level_number`);

--
-- Indexes for table `login_info`
--
ALTER TABLE `login_info`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `Normal_User`
--
ALTER TABLE `Normal_User`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `OTP` (`OTP`);

--
-- Indexes for table `Operator_User`
--
ALTER TABLE `Operator_User`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `Parking_info`
--
ALTER TABLE `Parking_info`
  ADD PRIMARY KEY (`level_number`);

--
-- Indexes for table `Slot_Status`
--
ALTER TABLE `Slot_Status`
  ADD PRIMARY KEY (`level_number`,`slot_number`),
  ADD KEY `booking_id_fk` (`booking_id`);

--
-- Indexes for table `Vehicle_info`
--
ALTER TABLE `Vehicle_info`
  ADD PRIMARY KEY (`plate_number`),
  ADD KEY `username_fk_v` (`username`),
  ADD KEY `category_fk` (`vehicle_category`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `category_fk_b` FOREIGN KEY (`vehicle_category`) REFERENCES `Base_Fare` (`vehicle_category`),
  ADD CONSTRAINT `level_fk` FOREIGN KEY (`level_number`) REFERENCES `Parking_info` (`level_number`),
  ADD CONSTRAINT `username_fk_b` FOREIGN KEY (`username`) REFERENCES `login_info` (`username`);

--
-- Constraints for table `Normal_User`
--
ALTER TABLE `Normal_User`
  ADD CONSTRAINT `username_fk` FOREIGN KEY (`username`) REFERENCES `login_info` (`username`);

--
-- Constraints for table `Slot_Status`
--
ALTER TABLE `Slot_Status`
  ADD CONSTRAINT `booking_id_fk` FOREIGN KEY (`booking_id`) REFERENCES `Booking` (`booking_id`);

--
-- Constraints for table `Vehicle_info`
--
ALTER TABLE `Vehicle_info`
  ADD CONSTRAINT `category_fk` FOREIGN KEY (`vehicle_category`) REFERENCES `Base_Fare` (`vehicle_category`),
  ADD CONSTRAINT `username_fk_v` FOREIGN KEY (`username`) REFERENCES `login_info` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
