-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2019 at 09:55 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(256) NOT NULL,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256) NOT NULL,
  `contact` varchar(250) NOT NULL,
  `address` varchar(256) NOT NULL,
  `adhaar_number` int(20) NOT NULL,
  `photo` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `first_name`, `last_name`, `contact`, `address`, `adhaar_number`, `photo`, `password`) VALUES
('sangram', 'sangram', 'desai', '8879217944', '1/5 shree niwas', 1234567890, './img/admin.png', '123');

-- --------------------------------------------------------

--
-- Table structure for table `base_fare`
--

CREATE TABLE `base_fare` (
  `vehicle_category` varchar(20) NOT NULL,
  `fare` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_fare`
--

INSERT INTO `base_fare` (`vehicle_category`, `fare`) VALUES
('Four wheeler', 30),
('Two wheeler', 20);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
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
-- Table structure for table `normal_user`
--

CREATE TABLE `normal_user` (
  `username` varchar(15) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `contact` int(10) NOT NULL,
  `licence_number` varchar(16) NOT NULL,
  `address` varchar(50) NOT NULL,
  `OTP` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `normal_user`
--

INSERT INTO `normal_user` (`username`, `first_name`, `last_name`, `contact`, `licence_number`, `address`, `OTP`) VALUES
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
-- Table structure for table `operator_user`
--

CREATE TABLE `operator_user` (
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
-- Table structure for table `parking_info`
--

CREATE TABLE `parking_info` (
  `level_number` int(5) NOT NULL,
  `number_of_slots` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slot_status`
--

CREATE TABLE `slot_status` (
  `level_number` int(5) NOT NULL,
  `slot_number` int(5) NOT NULL,
  `booking_id` int(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_info`
--

CREATE TABLE `vehicle_info` (
  `username` varchar(15) NOT NULL,
  `plate_number` varchar(15) NOT NULL,
  `vehicle_category` varchar(20) NOT NULL,
  `vehicle_company` varchar(15) NOT NULL,
  `vehicle_model` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_info`
--

INSERT INTO `vehicle_info` (`username`, `plate_number`, `vehicle_category`, `vehicle_company`, `vehicle_model`) VALUES
('harsh', 'MH-0548', 'Four wheeler', 'Maruti Suzuki', 'Swift'),
('harsh', 'MH-4597', 'Two wheeler', 'Tvs Bajaj', 'Pulsar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `base_fare`
--
ALTER TABLE `base_fare`
  ADD PRIMARY KEY (`vehicle_category`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
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
-- Indexes for table `normal_user`
--
ALTER TABLE `normal_user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `OTP` (`OTP`);

--
-- Indexes for table `operator_user`
--
ALTER TABLE `operator_user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `parking_info`
--
ALTER TABLE `parking_info`
  ADD PRIMARY KEY (`level_number`);

--
-- Indexes for table `slot_status`
--
ALTER TABLE `slot_status`
  ADD PRIMARY KEY (`level_number`,`slot_number`),
  ADD KEY `booking_id_fk` (`booking_id`);

--
-- Indexes for table `vehicle_info`
--
ALTER TABLE `vehicle_info`
  ADD PRIMARY KEY (`plate_number`),
  ADD KEY `username_fk_v` (`username`),
  ADD KEY `category_fk` (`vehicle_category`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `category_fk_b` FOREIGN KEY (`vehicle_category`) REFERENCES `base_fare` (`vehicle_category`),
  ADD CONSTRAINT `level_fk` FOREIGN KEY (`level_number`) REFERENCES `parking_info` (`level_number`),
  ADD CONSTRAINT `username_fk_b` FOREIGN KEY (`username`) REFERENCES `login_info` (`username`);

--
-- Constraints for table `normal_user`
--
ALTER TABLE `normal_user`
  ADD CONSTRAINT `username_fk` FOREIGN KEY (`username`) REFERENCES `login_info` (`username`);

--
-- Constraints for table `slot_status`
--
ALTER TABLE `slot_status`
  ADD CONSTRAINT `booking_id_fk` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`);

--
-- Constraints for table `vehicle_info`
--
ALTER TABLE `vehicle_info`
  ADD CONSTRAINT `category_fk` FOREIGN KEY (`vehicle_category`) REFERENCES `base_fare` (`vehicle_category`),
  ADD CONSTRAINT `username_fk_v` FOREIGN KEY (`username`) REFERENCES `login_info` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
