-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 05, 2019 at 05:44 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

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

--
-- Dumping data for table `Booking`
--

INSERT INTO `Booking` (`username`, `booking_id`, `vehicle_category`, `entry_time`, `parking_time`, `exit_time`, `date`, `total_fare`, `level_number`, `slot_number`, `OTP`) VALUES
('Aaron', 913690, 'Two wheeler', '2019-04-02 14:28:16', 60, '2019-04-02 15:16:49', '2019-04-02', 30, 1, 5, 613),
('Agustin', 285512, 'Two wheeler', '2019-04-04 14:51:09', 60, '2019-04-04 16:22:05', '2019-04-04', 30, 3, 24, 481),
('Aline', 636735, 'Four wheeler', '2019-04-15 14:47:47', 60, '2019-04-15 15:42:00', '2019-04-15', 30, 3, 14, 730),
('Anna', 390874, 'Four wheeler', '2019-04-25 14:19:06', 60, '2019-04-25 15:21:10', '2019-04-25', 30, 2, 47, 871),
('Annie', 479162, 'Two wheeler', '2019-09-05 08:59:49', 60, '2019-09-05 09:46:48', '2019-09-05', 30, 1, 42, 843),
('Armando', 358639, 'Four wheeler', '2019-01-23 11:07:46', 60, '2019-01-23 12:25:27', '2019-01-23', 30, 3, 6, 700),
('Ashley', 415269, 'Four wheeler', '2019-02-03 14:48:52', 60, '2019-02-03 15:59:24', '2019-02-03', 30, 2, 1, 875),
('Barbara', 502970, 'Two wheeler', '2019-12-18 14:44:39', 60, '2019-12-18 15:35:56', '2019-12-18', 30, 3, 25, 765),
('Belinda', 490278, 'Four wheeler', '2019-04-01 14:00:35', 60, '2019-04-01 14:31:52', '2019-04-01', 30, 1, 5, 124),
('Bette', 322453, 'Two wheeler', '2019-09-03 09:29:19', 60, '2019-09-03 10:24:45', '2019-09-03', 30, 2, 36, 383),
('Boyd', 619775, 'Four wheeler', '2019-12-24 07:24:31', 60, '2019-12-24 08:01:37', '2019-12-24', 30, 1, 10, 779),
('Calvin', 698877, 'Four wheeler', '2019-07-01 08:38:10', 60, '2019-07-01 09:59:27', '2019-07-01', 30, 1, 46, 319),
('Cedric', 760650, 'Two wheeler', '2019-09-06 07:24:10', 60, '2019-09-06 07:48:11', '2019-09-06', 30, 1, 27, 274),
('Christa', 407685, 'Four wheeler', '2019-04-24 07:34:46', 60, '2019-04-24 09:24:36', '2019-04-24', 30, 3, 10, 680),
('Christina', 902783, 'Four wheeler', '2019-05-23 09:49:22', 60, '2019-05-23 11:09:10', '2019-05-23', 30, 1, 14, 102),
('cis_pie', 2443545, 'Four Wheeler', '2019-04-02 14:32:44', 20, '2019-04-02 14:52:44', '2019-04-02', 40, 2, 23, 234),
('Craig', 749316, 'Two wheeler', '2019-04-03 12:13:41', 60, '2019-04-03 12:37:16', '2019-04-03', 30, 1, 31, 168),
('David', 256042, 'Two wheeler', '2019-05-16 07:43:29', 60, '2019-05-16 08:46:34', '2019-05-16', 30, 1, 3, 770),
('Debra', 837432, 'Two wheeler', '2019-04-28 13:10:49', 60, '2019-04-28 13:58:57', '2019-04-28', 30, 1, 48, 856),
('Delisa', 883881, 'Four wheeler', '2019-07-10 11:53:52', 60, '2019-07-10 12:42:13', '2019-07-10', 30, 2, 11, 216),
('Dominic', 545624, 'Two wheeler', '2019-06-03 14:41:27', 60, '2019-06-03 16:07:38', '2019-06-03', 30, 3, 2, 345),
('Doris', 752380, 'Two wheeler', '2019-04-25 13:10:47', 60, '2019-04-25 14:09:09', '2019-04-25', 30, 1, 36, 838),
('Edward', 424846, 'Four wheeler', '2019-12-08 09:19:24', 60, '2019-12-08 10:01:38', '2019-12-08', 30, 1, 32, 885),
('Elwood', 353305, 'Two wheeler', '2019-04-04 13:03:38', 60, '2019-04-04 13:39:19', '2019-04-04', 30, 1, 48, 898),
('Evelyn', 424008, 'Four wheeler', '2019-05-28 14:58:16', 60, '2019-05-28 15:41:17', '2019-05-28', 30, 1, 44, 806),
('Glenda', 441685, 'Two wheeler', '2019-07-23 12:27:56', 60, '2019-07-23 12:54:35', '2019-07-23', 30, 1, 35, 635),
('Harvey', 775659, 'Four wheeler', '2019-04-21 15:16:19', 60, '2019-04-21 16:14:16', '2019-04-21', 30, 3, 33, 510),
('Helen', 245667, 'Four wheeler', '2019-04-04 14:11:12', 60, '2019-04-04 14:38:00', '2019-04-04', 30, 1, 35, 344),
('Heriberto', 283044, 'Two wheeler', '2019-04-12 14:35:24', 60, '2019-04-12 16:03:51', '2019-04-12', 30, 1, 22, 220),
('Holly', 992287, 'Four wheeler', '2019-09-02 06:14:14', 60, '2019-09-02 06:35:02', '2019-09-02', 30, 2, 30, 284),
('Hugh', 468579, 'Four wheeler', '2019-06-22 09:53:00', 60, '2019-06-22 10:33:00', '2019-06-22', 30, 1, 9, 563),
('Jacqueline', 635872, 'Four wheeler', '2019-04-08 14:27:59', 60, '2019-04-08 15:23:58', '2019-04-08', 30, 2, 6, 166),
('James', 901785, 'Four wheeler', '2019-11-19 10:13:17', 60, '2019-11-19 10:47:26', '2019-11-19', 30, 1, 29, 275),
('Jane', 339759, 'Four wheeler', '2019-09-27 06:00:28', 60, '2019-09-27 07:22:36', '2019-09-27', 30, 3, 27, 786),
('Janet', 683299, 'Four wheeler', '2019-08-15 06:40:47', 60, '2019-08-15 07:51:21', '2019-08-15', 30, 3, 3, 895),
('Jeffrey', 693556, 'Four wheeler', '2019-07-22 14:54:24', 60, '2019-07-22 16:12:53', '2019-07-22', 30, 3, 5, 581),
('Jesse', 235154, 'Four wheeler', '2019-10-04 07:30:48', 60, '2019-10-04 09:29:38', '2019-10-04', 30, 1, 12, 301),
('John', 417825, 'Four wheeler', '2019-12-24 10:56:26', 60, '2019-12-24 12:12:22', '2019-12-24', 30, 1, 27, 977),
('Jose', 847073, 'Four wheeler', '2019-01-10 06:41:45', 60, '2019-01-10 07:49:55', '2019-01-10', 30, 2, 14, 196),
('Joseph', 985457, 'Two wheeler', '2019-10-22 12:32:22', 60, '2019-10-22 14:04:37', '2019-10-22', 30, 3, 6, 910),
('Joshua', 734312, 'Four wheeler', '2019-03-20 06:59:02', 60, '2019-03-20 08:21:59', '2019-03-20', 30, 1, 2, 966),
('Judith', 776232, 'Two wheeler', '2019-04-07 12:03:07', 60, '2019-04-07 13:02:34', '2019-04-07', 30, 2, 38, 984),
('Juliette', 615104, 'Four wheeler', '2019-02-21 14:26:58', 60, '2019-02-21 14:47:22', '2019-02-21', 30, 2, 33, 420),
('Kaitlyn', 339646, 'Four wheeler', '2019-02-03 11:42:29', 60, '2019-02-03 12:41:00', '2019-02-03', 30, 2, 25, 235),
('Kathleen', 977389, 'Four wheeler', '2019-05-18 09:46:13', 60, '2019-05-18 11:24:05', '2019-05-18', 30, 3, 4, 459),
('Kenneth', 680946, 'Two wheeler', '2019-08-16 11:41:14', 60, '2019-08-16 12:56:45', '2019-08-16', 30, 3, 2, 867),
('Kim', 380644, 'Four wheeler', '2019-10-09 13:25:17', 60, '2019-10-09 13:44:13', '2019-10-09', 30, 1, 47, 890),
('Kristin', 849534, 'Two wheeler', '2019-07-27 06:22:34', 60, '2019-07-27 07:29:18', '2019-07-27', 30, 1, 48, 112),
('Laura', 819857, 'Two wheeler', '2019-09-01 11:46:57', 60, '2019-09-01 13:27:59', '2019-09-01', 30, 3, 49, 492),
('Lela', 634451, 'Four wheeler', '2019-03-05 11:28:31', 60, '2019-03-05 12:04:37', '2019-03-05', 30, 1, 44, 734),
('Leo', 517034, 'Four wheeler', '2019-10-18 09:20:30', 60, '2019-10-18 10:15:19', '2019-10-18', 30, 2, 22, 818),
('Lisa', 983264, 'Four wheeler', '2019-04-22 08:12:24', 60, '2019-04-22 09:15:42', '2019-04-22', 30, 1, 23, 238),
('Mable', 343791, 'Two wheeler', '2019-04-03 08:56:07', 60, '2019-04-03 09:33:50', '2019-04-03', 30, 1, 37, 880),
('Mario', 620283, 'Four wheeler', '2019-06-05 11:08:30', 60, '2019-06-05 11:42:34', '2019-06-05', 30, 1, 37, 931),
('Mark', 869860, 'Four wheeler', '2019-04-19 11:03:09', 60, '2019-04-19 12:03:45', '2019-04-19', 30, 1, 33, 631),
('Mary', 356130, 'Two wheeler', '2019-04-17 14:59:30', 60, '2019-04-17 15:57:21', '2019-04-17', 30, 2, 27, 490),
('Maryjane', 746778, 'Four wheeler', '2019-12-24 06:45:35', 60, '2019-12-24 08:13:34', '2019-12-24', 30, 2, 18, 221),
('Megan', 556994, 'Two wheeler', '2019-06-07 12:54:27', 60, '2019-06-07 14:16:56', '2019-06-07', 30, 3, 46, 455),
('Michael', 528191, 'Four wheeler', '2019-01-21 14:59:01', 60, '2019-01-21 15:46:44', '2019-01-21', 30, 2, 34, 395),
('Mildred', 482314, 'Two wheeler', '2019-06-07 10:05:46', 60, '2019-06-07 10:43:51', '2019-06-07', 30, 1, 50, 567),
('Nichelle', 401745, 'Four wheeler', '2019-04-26 08:56:12', 60, '2019-04-26 09:42:51', '2019-04-26', 30, 3, 43, 254),
('Nichole', 861484, 'Two wheeler', '2019-04-04 13:59:09', 60, '2019-04-04 14:30:58', '2019-04-04', 30, 2, 6, 259),
('Patricia', 839940, 'Four wheeler', '2019-03-07 10:26:37', 60, '2019-03-07 10:48:21', '2019-03-07', 30, 1, 16, 133),
('Paul', 920866, 'Two wheeler', '2019-02-17 14:49:05', 60, '2019-02-17 15:39:18', '2019-02-17', 30, 3, 16, 830),
('Ramon', 592130, 'Four wheeler', '2019-08-27 13:21:21', 60, '2019-08-27 14:08:50', '2019-08-27', 30, 2, 46, 677),
('Raymond', 817002, 'Four wheeler', '2019-02-21 12:27:40', 60, '2019-02-21 12:51:46', '2019-02-21', 30, 1, 5, 270),
('Robert', 833684, 'Four wheeler', '2019-06-22 12:49:38', 60, '2019-06-22 14:10:34', '2019-06-22', 30, 3, 10, 686),
('Rose', 666055, 'Four wheeler', '2019-11-28 14:12:33', 60, '2019-11-28 14:55:56', '2019-11-28', 30, 1, 23, 938),
('Sam', 818851, 'Two wheeler', '2019-05-18 06:17:40', 60, '2019-05-18 06:30:01', '2019-05-18', 30, 2, 43, 107),
('Sandy', 869465, 'Four wheeler', '2019-04-13 13:49:29', 60, '2019-04-13 14:32:17', '2019-04-13', 30, 3, 35, 377),
('Sara', 908825, 'Two wheeler', '2019-06-14 13:39:31', 60, '2019-06-14 15:03:36', '2019-06-14', 30, 3, 11, 598),
('Scott', 743825, 'Two wheeler', '2019-03-06 09:57:23', 60, '2019-03-06 11:26:43', '2019-03-06', 30, 3, 23, 175),
('Shannon', 275808, 'Four wheeler', '2019-02-15 14:11:07', 60, '2019-02-15 15:07:55', '2019-02-15', 30, 1, 6, 273),
('Shari', 592814, 'Four wheeler', '2019-05-07 07:59:51', 60, '2019-05-07 08:34:16', '2019-05-07', 30, 3, 30, 203),
('Suzanne', 352697, 'Four wheeler', '2019-07-14 14:45:03', 60, '2019-07-14 15:56:01', '2019-07-14', 30, 2, 2, 993),
('Tamra', 306714, 'Two wheeler', '2019-12-01 11:06:43', 60, '2019-12-01 11:30:26', '2019-12-01', 30, 1, 12, 516),
('Therese', 988061, 'Four wheeler', '2019-04-14 14:29:41', 60, '2019-04-14 15:25:38', '2019-04-14', 30, 3, 4, 685),
('Timothy', 256703, 'Four wheeler', '2019-06-19 10:51:28', 60, '2019-06-19 11:42:04', '2019-06-19', 30, 1, 38, 320),
('Victor', 464488, 'Four wheeler', '2019-08-03 09:55:55', 60, '2019-08-03 11:00:56', '2019-08-03', 30, 3, 5, 509),
('Victoria', 305505, 'Four wheeler', '2019-07-20 15:18:08', 60, '2019-07-20 15:54:49', '2019-07-20', 30, 2, 38, 887),
('Vincent', 730171, 'Two wheeler', '2019-04-09 07:34:28', 60, '2019-04-09 09:21:10', '2019-04-09', 30, 2, 7, 169),
('Vivian', 471844, 'Four wheeler', '2019-03-04 07:04:44', 60, '2019-03-04 07:46:56', '2019-03-04', 30, 2, 37, 615),
('Wanda', 759491, 'Two wheeler', '2019-02-09 11:21:23', 60, '2019-02-09 12:07:09', '2019-02-09', 30, 3, 30, 807),
('William', 666206, 'Two wheeler', '2019-04-15 13:44:04', 60, '2019-04-15 14:37:19', '2019-04-15', 30, 1, 38, 167);

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
('Aaron', 'Aaron', 'Normal'),
('Agustin', 'Agustin', 'Normal'),
('Aline', 'Aline', 'Normal'),
('Anna', 'Anna', 'Normal'),
('Annie', 'Annie', 'Normal'),
('Armando', 'Armando', 'Normal'),
('Ashley', 'Ashley', 'Normal'),
('Barbara', 'Barbara', 'Normal'),
('Belinda', 'Belinda', 'Normal'),
('Bette', 'Bette', 'Normal'),
('Blanch', 'Blanch', 'Normal'),
('Bobbye', 'Bobbye', 'Normal'),
('Boyd', 'Boyd', 'Normal'),
('Calvin', 'Calvin', 'Normal'),
('Cedric', 'Cedric', 'Normal'),
('Christa', 'Christa', 'Normal'),
('Christina', 'Christina', 'Normal'),
('cis_pie', '123', 'Operator'),
('Claude', 'Claude', 'Normal'),
('Craig', 'Craig', 'Normal'),
('David', 'David', 'Normal'),
('Debra', 'Debra', 'Normal'),
('Delisa', 'Delisa', 'Normal'),
('desai_sangram', 'sangu', 'Operator'),
('Dominic', 'Dominic', 'Normal'),
('Doris', 'Doris', 'Normal'),
('Edward', 'Edward', 'Normal'),
('Elwood', 'Elwood', 'Normal'),
('Evelyn', 'Evelyn', 'Normal'),
('Glenda', 'Glenda', 'Normal'),
('harsh', 'harsh', 'Normal'),
('Harvey', 'Harvey', 'Normal'),
('Helen', 'Helen', 'Normal'),
('Heriberto', 'Heriberto', 'Normal'),
('Holly', 'Holly', 'Normal'),
('Hugh', 'Hugh', 'Normal'),
('Jacqueline', 'Jacqueline', 'Normal'),
('James', 'James', 'Normal'),
('Jane', 'Jane', 'Normal'),
('Janet', 'Janet', 'Normal'),
('Jeffrey', 'Jeffrey', 'Normal'),
('Jesse', 'Jesse', 'Normal'),
('John', 'John', 'Normal'),
('Jose', 'Jose', 'Normal'),
('Joseph', 'Joseph', 'Normal'),
('Joshua', 'Joshua', 'Normal'),
('Judith', 'Judith', 'Normal'),
('Juliette', 'Juliette', 'Normal'),
('Kaitlyn', 'Kaitlyn', 'Normal'),
('Kathleen', 'Kathleen', 'Normal'),
('Kenneth', 'Kenneth', 'Normal'),
('Kim', 'Kim', 'Normal'),
('Kristin', 'Kristin', 'Normal'),
('Laura', 'Laura', 'Normal'),
('Lela', 'Lela', 'Normal'),
('Leo', 'Leo', 'Normal'),
('Lisa', 'Lisa', 'Normal'),
('Mable', 'Mable', 'Normal'),
('Mario', 'Mario', 'Normal'),
('Mark', 'Mark', 'Normal'),
('Mary', 'Mary', 'Normal'),
('Maryjane', 'Maryjane', 'Normal'),
('Megan', 'Megan', 'Normal'),
('Michael', 'Michael', 'Normal'),
('Mildred', 'Mildred', 'Normal'),
('Nichelle', 'Nichelle', 'Normal'),
('Nichole', 'Nichole', 'Normal'),
('Patricia', 'Patricia', 'Normal'),
('Paul', 'Paul', 'Normal'),
('Ramon', 'Ramon', 'Normal'),
('Raymond', 'Raymond', 'Normal'),
('Rex', 'Rex', 'Normal'),
('Robert', 'Robert', 'Normal'),
('Rose', 'Rose', 'Normal'),
('Sam', 'Sam', 'Normal'),
('Sandy', 'Sandy', 'Normal'),
('Sara', 'Sara', 'Normal'),
('Scott', 'Scott', 'Normal'),
('Shannon', 'Shannon', 'Normal'),
('Shari', 'Shari', 'Normal'),
('Suzanne', 'Suzanne', 'Normal'),
('Tamra', 'Tamra', 'Normal'),
('Therese', 'Therese', 'Normal'),
('Timothy', 'Timothy', 'Normal'),
('Victor', 'Victor', 'Normal'),
('Victoria', 'Victoria', 'Normal'),
('Vincent', 'Vincent', 'Normal'),
('Vivian', 'Vivian', 'Normal'),
('Wanda', 'Wanda', 'Normal'),
('William', 'William', 'Normal');

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

--
-- Dumping data for table `Operator_User`
--

INSERT INTO `Operator_User` (`username`, `first_name`, `last_name`, `contact`, `address`, `adhaar_number`, `photo`) VALUES
('cis_pie', 'Tushar', 'Kadam', 86555, 'Airoli', 35563, '/opt/lampp/htdocs/Park/park/operator_pics/tushar.jpeg'),
('desai_sangram', 'sangram', 'desai', 34534, 'Mumbai', 678564, '/opt/lampp/htdocs/Park/park/operator_pics/sangram.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `Parking_info`
--

CREATE TABLE `Parking_info` (
  `level_number` int(5) NOT NULL,
  `number_of_slots` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Parking_info`
--

INSERT INTO `Parking_info` (`level_number`, `number_of_slots`) VALUES
(1, 50),
(2, 50),
(3, 50);

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
