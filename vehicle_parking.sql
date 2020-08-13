-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 02, 2019 at 10:16 AM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.3.6-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
('sangram', 'sangram', 'desai', '8879217944', '1/5 shree niwas', 1234567890, './img/admin.png', '123'),
('tushar', 'Tushar', 'kadam', '789765441', 'uytuyt asdf whywhed 12', 123566787, 'img/tush.png', '123');

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
('Four wheeler', 3),
('Two wheeler', 2);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `username` varchar(15) NOT NULL,
  `booking_id` int(10) NOT NULL,
  `vehicle_category` varchar(20) NOT NULL,
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `parking_time` int(5) NOT NULL,
  `exit_time` timestamp NULL DEFAULT NULL,
  `date` date NOT NULL,
  `total_fare` int(10) NOT NULL DEFAULT '0',
  `level_number` int(5) NOT NULL,
  `slot_number` int(5) NOT NULL,
  `OTP` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`username`, `booking_id`, `vehicle_category`, `entry_time`, `parking_time`, `exit_time`, `date`, `total_fare`, `level_number`, `slot_number`, `OTP`) VALUES
('Aaron', 913690, 'Two wheeler', '2019-04-02 14:28:16', 60, '2019-04-02 15:16:49', '2019-04-02', 30, 1, 5, 613),
('Aaron', 2443546, 'Two wheeler', '2019-06-27 10:59:00', 176, '2019-06-27 13:55:00', '2019-06-27', 352, 1, 39, 55823),
('Aaron', 2443547, 'Two wheeler', '2019-06-27 13:55:00', 2, '2019-06-27 13:57:00', '2019-06-27', 4, 1, 3, 93776),
('Aaron', 2443548, 'Two wheeler', '2019-06-27 13:57:00', 0, '2019-06-27 13:57:00', '2019-06-27', 0, 1, 3, 22731),
('Aaron', 2443549, 'Two wheeler', '2019-06-27 13:58:00', 1, '2019-06-27 13:59:00', '2019-06-27', 2, 1, 5, 55717),
('Aaron', 2443550, 'Two wheeler', '2019-06-27 14:16:00', 0, '2019-06-27 14:16:00', '2019-06-27', 0, 1, 14, 72312),
('Aaron', 2443551, 'Two wheeler', '2019-06-27 16:12:00', 1, '2019-06-27 16:13:00', '2019-06-27', 2, 1, 2, 35002),
('Aaron', 2443552, 'Two wheeler', '2019-06-28 10:33:00', 94, '2019-06-28 12:07:00', '2019-06-28', 188, 1, 9, 96175),
('Aaron', 2443553, 'Two wheeler', '2019-06-28 15:45:00', 15, '2019-06-28 16:00:00', '2019-06-28', 30, 1, 11, 69752),
('Aaron', 2443554, 'Two wheeler', '2019-06-28 15:49:00', 2, '2019-06-28 15:51:00', '2019-06-28', 4, 1, 15, 85198),
('Aaron', 2443555, 'Two wheeler', '2019-06-29 07:01:00', 1, '2019-06-29 07:02:00', '2019-06-29', 2, 1, 1, 36311),
('Aaron', 2443556, 'Two wheeler', '2019-06-29 07:37:00', 1, '2019-06-29 07:38:00', '2019-06-29', 2, 1, 16, 50381),
('Aaron', 2443557, 'Two wheeler', '2019-06-29 07:40:00', 1, '2019-06-29 07:41:00', '2019-06-29', 2, 1, 28, 82350),
('Aaron', 2443558, 'Two wheeler', '2019-06-29 07:44:00', 1, '2019-06-29 07:45:00', '2019-06-29', 2, 1, 15, 21588),
('Aaron', 2443559, 'Two wheeler', '2019-06-29 07:56:00', 1, '2019-06-29 07:57:00', '2019-06-29', 2, 1, 21, 45951),
('Aaron', 2443560, 'Two wheeler', '2019-06-29 07:57:00', 1, '2019-06-29 07:58:00', '2019-06-29', 2, 1, 14, 52173),
('Aaron', 2443561, 'Two wheeler', '2019-06-29 08:03:00', 0, '2019-06-29 08:03:00', '2019-06-29', 0, 1, 11, 94450),
('Aaron', 2443562, 'Two wheeler', '2019-06-29 08:05:00', 0, '2019-06-29 08:05:00', '2019-06-29', 0, 1, 26, 17935),
('Aaron', 2443563, 'Two wheeler', '2019-06-29 08:07:00', 1, '2019-06-29 08:08:00', '2019-06-29', 2, 1, 25, 72028),
('Aaron', 2443564, 'Two wheeler', '2019-06-29 08:12:00', 0, '2019-06-29 08:12:00', '2019-06-29', 0, 1, 6, 51278),
('Aaron', 2443565, 'Two wheeler', '2019-06-29 08:14:00', 0, '2019-06-29 08:14:00', '2019-06-29', 0, 1, 8, 24746),
('Aaron', 2443566, 'Two wheeler', '2019-06-29 08:17:00', 0, '2019-06-29 08:17:00', '2019-06-29', 0, 1, 4, 49139),
('Aaron', 2443567, 'Two wheeler', '2019-06-29 08:18:00', 0, '2019-06-29 08:18:00', '2019-06-29', 0, 1, 20, 95905),
('Aaron', 2443568, 'Two wheeler', '2019-06-29 14:35:00', 1, '2019-06-29 14:36:00', '2019-06-29', 2, 1, 9, 48830),
('Aaron', 2443569, 'Two wheeler', '2019-07-01 09:24:00', 7, '2019-07-01 09:31:00', '2019-07-01', 14, 1, 2, 65703),
('Aaron', 2443570, 'Two wheeler', '2019-07-01 09:27:00', 12, '2019-07-01 09:39:00', '2019-07-01', 24, 2, 7, 44597),
('Aaron', 2443573, 'Two wheeler', '2019-07-02 04:38:00', 2, '2019-07-02 04:40:00', '2019-07-02', 4, 1, 10, 13615),
('Aaron', 2443574, 'Two wheeler', '2019-07-02 04:39:00', 2, '2019-07-02 04:41:00', '2019-07-02', 4, 1, 30, 17644),
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
('Hugh', 2443572, 'Four wheeler', '2019-07-01 15:19:00', 15, '2019-07-01 15:34:00', '2019-07-01', 45, 1, 2, 55322),
('Jacqueline', 635872, 'Four wheeler', '2019-04-08 14:27:59', 60, '2019-04-08 15:23:58', '2019-04-08', 30, 2, 6, 166),
('James', 901785, 'Four wheeler', '2019-11-19 10:13:17', 60, '2019-11-19 10:47:26', '2019-11-19', 30, 1, 29, 275),
('Jane', 339759, 'Four wheeler', '2019-09-27 06:00:28', 60, '2019-09-27 07:22:36', '2019-09-27', 30, 3, 27, 786),
('Janet', 683299, 'Four wheeler', '2019-08-15 06:40:47', 60, '2019-08-15 07:51:21', '2019-08-15', 30, 3, 3, 895),
('Jeffrey', 693556, 'Four wheeler', '2019-07-22 14:54:24', 60, '2019-07-22 16:12:53', '2019-07-22', 30, 3, 5, 581),
('Jesse', 235154, 'Four wheeler', '2019-10-04 07:30:48', 60, '2019-10-04 09:29:38', '2019-10-04', 30, 1, 12, 301),
('John', 417825, 'Four wheeler', '2019-12-24 10:56:26', 60, '2019-12-24 12:12:22', '2019-12-24', 30, 1, 27, 977),
('John', 2443571, 'Four wheeler', '2019-07-01 15:14:00', 8, '2019-07-01 15:22:00', '2019-07-01', 24, 1, 1, 95818),
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
-- Table structure for table `daytime`
--

CREATE TABLE `daytime` (
  `hh` int(11) DEFAULT NULL,
  `cnt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daytime`
--

INSERT INTO `daytime` (`hh`, `cnt`) VALUES
(0, 0),
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0);

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
('', '', 'Normal'),
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
('h', '123456', 'Normal'),
('harsh', 'harsh', 'Normal'),
('harsh123', 'harsh', 'Operator'),
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
('kjsce', 'kjsce123', 'Normal'),
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
('newop', 'tush123', 'Operator'),
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
('tush', 'tush123', 'Operator'),
('Victor', 'Victor', 'Normal'),
('Victoria', 'Victoria', 'Normal'),
('Vincent', 'Vincent', 'Normal'),
('Vivian', 'Vivian', 'Normal'),
('Wanda', 'Wanda', 'Normal'),
('William', 'William', 'Normal');

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
('Aaron', 'Aaron', 'Glenna', 2147483647, '4271231231231234', 'Vidyavihar', 9622),
('Agustin', 'Agustin', 'Jones', 2147483647, '42930', 'Airoli', 8384),
('Aline', 'Aline', 'Salmons', 2147483647, '36710', 'Mumbai', 600),
('Anna', 'Anna', 'Larson', 2147483647, '37348', 'Airoli', 6952),
('Annie', 'Annie', 'Zuckerman', 2147483647, '42801', 'Vidyavihar', 9184),
('Armando', 'Armando', 'Lewis', 2147483647, '38836', 'Vidyavihar', 7831),
('Ashley', 'Ashley', 'Cooley', 2147483647, '34009', 'Airoli', 4551),
('Barbara', 'Barbara', 'Brodi', 2147483647, '40077', 'Airoli', 1941),
('Belinda', 'Belinda', 'Holt', 2147483647, '40758', 'Pune', 4827),
('Bette', 'Bette', 'Arocho', 2147483647, '38999', 'Vidyavihar', 1344),
('Blanch', 'Blanch', 'Mitchell', 2147483647, '35602', 'Mumbai', 3830),
('Bobbye', 'Bobbye', 'Watson', 2147483647, '33950', 'Airoli', 8691),
('Boyd', 'Boyd', 'Shindle', 2147483647, '39884', 'Mumbai', 4880),
('Calvin', 'Calvin', 'White', 2147483647, '42089', 'Mumbai', 3463),
('Cedric', 'Cedric', 'Garner', 2147483647, '35355', 'Vidyavihar', 5178),
('Christa', 'Christa', 'Jones', 2147483647, '37325', 'Pune', 4745),
('Christina', 'Christina', 'Arce', 2147483647, '38342', 'Airoli', 588),
('Claude', 'Claude', 'North', 2147483647, '38962', 'Mumbai', 2493),
('Craig', 'Craig', 'Machado', 2147483647, '40785', 'Airoli', 9694),
('David', 'David', 'Snyder', 2147483647, '34913', 'Pune', 8854),
('Debra', 'Debra', 'Collins', 2147483647, '35235', 'Airoli', 6073),
('Delisa', 'Delisa', 'Brogan', 2147483647, '43410', 'Vidyavihar', 7511),
('Dominic', 'Dominic', 'Thames', 2147483647, '35435', 'Mumbai', 7070),
('Doris', 'Doris', 'Fenton', 2147483647, '38878', 'Mumbai', 3882),
('Edward', 'Edward', 'Olivera', 2147483647, '41906', 'Airoli', 8245),
('Elwood', 'Elwood', 'Namm', 2147483647, '36922', 'Airoli', 905),
('Evelyn', 'Evelyn', 'Swank', 2147483647, '38476', 'Pune', 1682),
('Glenda', 'Glenda', 'Miller', 2147483647, '40920', 'Vidyavihar', 9844),
('h', 'g', 'h', 1111111111, 'deereeereere', 'b', 47925),
('Harvey', 'Harvey', 'Selby', 2147483647, '37955', 'Mumbai', 3257),
('Helen', 'Helen', 'Pomroy', 2147483647, '39490', 'Mumbai', 3340),
('Heriberto', 'Heriberto', 'Kelly', 2147483647, '37979', 'Mumbai', 5139),
('Holly', 'Holly', 'Colony', 2147483647, '40814', 'Pune', 5234),
('Hugh', 'Hugh', 'Blanco', 2147483647, '41773', 'Vidyavihar', 5937),
('Jacqueline', 'Jacqueline', 'Brooker', 2147483647, '35973', 'Airoli', 860),
('James', 'James', 'Peterson', 2147483647, '37290', 'Airoli', 8063),
('Jane', 'Jane', 'Willems', 2147483647, '35710', 'Mumbai', 3745),
('Janet', 'Janet', 'Manuel', 2147483647, '38728', 'Pune', 5664),
('Jeffrey', 'Jeffrey', 'Borelli', 2147483647, '35788', 'Pune', 2564),
('Jesse', 'Jesse', 'Moore', 2147483647, '33989', 'Pune', 9820),
('John', 'John', 'Fer', 2147483647, '123456788901', 'Mumbai', 433),
('Jose', 'Jose', 'Sandoval', 2147483647, '37177', 'Pune', 5444),
('Joseph', 'Joseph', 'Fuller', 2147483647, '40780', 'Airoli', 1200),
('Joshua', 'Joshua', 'Solis', 2147483647, '38491', 'Pune', 5813),
('Judith', 'Judith', 'Nix', 2147483647, '43276', 'Mumbai', 6715),
('Juliette', 'Juliette', 'Reardon', 2147483647, '38322', 'Airoli', 9988),
('Kaitlyn', 'Kaitlyn', 'Rea', 2147483647, '35475', 'Pune', 852),
('Kathleen', 'Kathleen', 'Smith', 2147483647, '39381', 'Mumbai', 7174),
('Kenneth', 'Kenneth', 'Gagne', 2147483647, '34867', 'Vidyavihar', 8705),
('Kim', 'Kim', 'Maranda', 2147483647, '36503', 'Pune', 1091),
('Kristin', 'Kristin', 'Matteson', 2147483647, '34636', 'Airoli', 2923),
('Laura', 'Laura', 'Carter', 2147483647, '39381', 'Airoli', 5496),
('Lela', 'Lela', 'Buitron', 2147483647, '34956', 'Airoli', 5088),
('Leo', 'Leo', 'Thornton', 2147483647, '35407', 'Mumbai', 5321),
('Lisa', 'Lisa', 'Mccright', 2147483647, '35172', 'Airoli', 6778),
('Mable', 'Mable', 'Martinez', 2147483647, '38334', 'Vidyavihar', 9450),
('Mario', 'Mario', 'Talley', 2147483647, '34926', 'Airoli', 2900),
('Mark', 'Mark', 'Hunter', 2147483647, '39661', 'Mumbai', 5226),
('Mary', 'Mary', 'Rotunda', 2147483647, '41099', 'Mumbai', 6562),
('Maryjane', 'Maryjane', 'Nardella', 2147483647, '41904', 'Mumbai', 7152),
('Megan', 'Megan', 'Serrano', 2147483647, '41233', 'Mumbai', 3528),
('Michael', 'Michael', 'Wallace', 2147483647, '34326', 'Airoli', 2936),
('Mildred', 'Mildred', 'Harris', 2147483647, '41635', 'Airoli', 8211),
('Nichelle', 'Nichelle', 'Harvey', 2147483647, '39263', 'Mumbai', 4112),
('Nichole', 'Nichole', 'Klein', 2147483647, '33913', 'Airoli', 700),
('Patricia', 'Patricia', 'Barker', 2147483647, '36481', 'Airoli', 3033),
('Paul', 'Paul', 'Kelly', 2147483647, '35761', 'Mumbai', 8821),
('Ramon', 'Ramon', 'Reed', 2147483647, '38366', 'Mumbai', 5157),
('Raymond', 'Raymond', 'Ballard', 2147483647, '39805', 'Mumbai', 3017),
('Rex', 'Rex', 'Seiber', 2147483647, '36791', 'Mumbai', 4570),
('Robert', 'Robert', 'Wilson', 2147483647, '37329', 'Mumbai', 8453),
('Rose', 'Rose', 'Mullins', 2147483647, '39601', 'Pune', 7915),
('Sam', 'Sam', 'Roys', 2147483647, '41067', 'Pune', 3127),
('Sandy', 'Sandy', 'Mazzariello', 2147483647, '34148', 'Pune', 1319),
('Sara', 'Sara', 'Flint', 2147483647, '37445', 'Airoli', 3294),
('Scott', 'Scott', 'Abbott', 2147483647, '37840', 'Pune', 6920),
('Shannon', 'Shannon', 'Haug', 2147483647, '38286', 'Pune', 2180),
('Shari', 'Shari', 'Ponce', 2147483647, '42786', 'Airoli', 9743),
('Suzanne', 'Suzanne', 'Edelstein', 2147483647, '38166', 'Mumbai', 8289),
('Tamra', 'Tamra', 'Fowler', 2147483647, '38652', 'Vidyavihar', 7352),
('Therese', 'Therese', 'Mason', 2147483647, '42073', 'Pune', 6721),
('Timothy', 'Timothy', 'Simpkins', 2147483647, '40237', 'Pune', 1530),
('Victor', 'Victor', 'Brannon', 2147483647, '38085', 'Pune', 995),
('Victoria', 'Victoria', 'Prisco', 2147483647, '38275', 'Mumbai', 4999),
('Vincent', 'Vincent', 'Thomas', 2147483647, '39199', 'Pune', 4418),
('Vivian', 'Vivian', 'Labrie', 2147483647, '40310', 'Airoli', 5196),
('Wanda', 'Wanda', 'Johnson', 2147483647, '39825', 'Pune', 3819),
('William', 'William', 'Pedraza', 2147483647, '40128', 'Mumbai', 9064);

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

--
-- Dumping data for table `operator_user`
--

INSERT INTO `operator_user` (`username`, `first_name`, `last_name`, `contact`, `address`, `adhaar_number`, `photo`) VALUES
('cis_pie', 'Tushar', 'Kadam', 86555, 'Airoli', 35563, '/opt/lampp/htdocs/Park/park/operator_pics/tushar.jpeg'),
('desai_sangram', 'sangram', 'desai', 34534, 'Mumbai', 678564, '/opt/lampp/htdocs/Park/park/operator_pics/sangram.jpeg'),
('harsh123', 'h', 'g', 1234567890, 'fsd', 234567892, '');

-- --------------------------------------------------------

--
-- Table structure for table `parking_info`
--

CREATE TABLE `parking_info` (
  `level_number` int(5) NOT NULL,
  `number_of_slots` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parking_info`
--

INSERT INTO `parking_info` (`level_number`, `number_of_slots`) VALUES
(1, 40),
(2, 50),
(3, 50);

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

CREATE TABLE `payment_info` (
  `booking_id` int(10) NOT NULL,
  `transaction_id` int(10) NOT NULL,
  `total_fare` int(10) NOT NULL,
  `payment_mode` varchar(10) NOT NULL,
  `payment_status` varchar(10) NOT NULL DEFAULT 'pending',
  `verification` varchar(10) NOT NULL DEFAULT 'pending',
  `OTP` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_info`
--

INSERT INTO `payment_info` (`booking_id`, `transaction_id`, `total_fare`, `payment_mode`, `payment_status`, `verification`, `OTP`) VALUES
(2443553, 123123, 30, 'Offline', 'Done', 'Done', 93776),
(2443554, 123456, 30, 'Offline', 'Done', 'Done', 96175),
(2443563, 132456, 2, 'Offline', 'Done', 'Done', 72028),
(2443565, 759615, 0, 'Offline', 'Done', 'Done', 24746),
(2443566, 964488, 0, 'Offline', 'Done', 'Done', 49139),
(2443567, 913652, 0, 'Offline', 'Done', 'Done', 95905),
(2443568, 166797, 2, 'Offline', 'Done', 'Done', 48830),
(2443569, 164278, 14, 'Offline', 'Done', 'Done', 65703),
(2443570, 315162, 8, 'Offline', 'Done', 'Done', 44597),
(2443571, 371277, 24, 'Offline', 'Done', 'Done', 95818),
(2443572, 365452, 3, 'Offline', 'Done', 'Done', 55322),
(2443573, 916242, 4, 'Offline', 'Done', 'Done', 13615),
(2443574, 91256, 4, 'Offline', 'Done', 'Done', 17644);

-- --------------------------------------------------------

--
-- Table structure for table `slot_status`
--

CREATE TABLE `slot_status` (
  `level_number` int(5) NOT NULL,
  `slot_number` int(5) NOT NULL,
  `booking_id` int(10) NOT NULL,
  `status` varchar(20) NOT NULL
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
('Armando', 'MH-107392', 'Four wheeler', 'Ford', 'figo'),
('Bobbye', 'MH-111091', 'Four wheeler', 'Ford', 'figo'),
('Ashley', 'MH-126664', 'Four wheeler', 'Toyoto ', 'Yaris'),
('Paul', 'MH-131402', 'Two wheeler', 'Hero', 'Karisma'),
('Shari', 'MH-134888', 'Four wheeler', 'Ford', 'figo'),
('Holly', 'MH-138144', 'Four wheeler', 'Ford', 'figo'),
('Jane', 'MH-149616', 'Four wheeler', 'Maruti Suzuki', 'swift'),
('Mildred', 'MH-150671', 'Two wheeler', 'Hero', 'Honda'),
('Doris', 'MH-151132', 'Two wheeler', 'Hero', 'Honda'),
('Wanda', 'MH-154356', 'Two wheeler', 'TVS', 'Radeon'),
('Laura', 'MH-156315', 'Two wheeler', 'TVS', 'Radeon'),
('Leo', 'MH-161694', 'Four wheeler', 'Maruti Suzuki', 'wagonR'),
('Megan', 'MH-172359', 'Two wheeler', 'TVS', 'Apache'),
('John', 'MH-190373', 'Four wheeler', 'Maruti Suzuki', 'swift'),
('Mark', 'MH-197764', 'Four wheeler', 'Maruti Suzuki', 'swift'),
('Suzanne', 'MH-21291', 'Four wheeler', 'Toyoto ', 'Yaris'),
('Boyd', 'MH-213396', 'Four wheeler', 'Maruti Suzuki', 'wagonR'),
('Janet', 'MH-239139', 'Four wheeler', 'Maruti Suzuki', 'wagonR'),
('Raymond', 'MH-241869', 'Four wheeler', 'Toyoto ', 'Camry'),
('Kristin', 'MH-248712', 'Two wheeler', 'Bajaj', 'Pulsar'),
('Sara', 'MH-256570', 'Two wheeler', 'Bajaj', 'Dominar'),
('Timothy', 'MH-260439', 'Four wheeler', 'Toyoto ', 'Yaris'),
('Vivian', 'MH-276231', 'Four wheeler', 'Toyoto ', 'Yaris'),
('Victor', 'MH-298552', 'Four wheeler', 'Maruti Suzuki', 'swift'),
('Mable', 'MH-315569', 'Two wheeler', 'Hero', 'Karisma'),
('Jacqueline', 'MH-35042', 'Four wheeler', 'Toyoto ', 'Camry'),
('Kathleen', 'MH-35325', 'Four wheeler', 'Maruti Suzuki', 'wagonR'),
('Nichole', 'MH-359647', 'Two wheeler', 'Bajaj', 'Pulsar'),
('Dominic', 'MH-364508', 'Two wheeler', 'TVS', 'Apache'),
('William', 'MH-373886', 'Two wheeler', 'Hero', 'Karisma'),
('Therese', 'MH-382786', 'Four wheeler', 'Maruti Suzuki', 'swift'),
('Vincent', 'MH-388209', 'Two wheeler', 'Bajaj', 'Dominar'),
('Michael', 'MH-401168', 'Four wheeler', 'Ford', 'figo'),
('James', 'MH-406179', 'Four wheeler', 'Maruti Suzuki', 'wagonR'),
('Joseph', 'MH-410145', 'Two wheeler', 'Bajaj', 'Dominar'),
('Kenneth', 'MH-425773', 'Two wheeler', 'Hero', 'Honda'),
('Heriberto', 'MH-437724', 'Two wheeler', 'Hero', 'Karisma'),
('Lisa', 'MH-449904', 'Four wheeler', 'Ford', 'figo'),
('harsh', 'MH-4597', 'Two wheeler', 'Tvs Bajaj', 'Pulsar'),
('Aaron', 'MH-461474', 'Two wheeler', 'Hero', 'Karisma'),
('Sandy', 'MH-463951', 'Four wheeler', 'Toyoto ', 'Camry'),
('Sam', 'MH-479908', 'Two wheeler', 'Hero', 'Karisma'),
('Elwood', 'MH-507523', 'Two wheeler', 'Bajaj', 'Pulsar'),
('Claude', 'MH-517382', 'Four wheeler', 'Ford', 'Aspire'),
('Tamra', 'MH-524584', 'Two wheeler', 'Hero', 'Karisma'),
('Belinda', 'MH-560694', 'Four wheeler', 'Maruti Suzuki', 'swift'),
('Patricia', 'MH-563731', 'Four wheeler', 'Toyoto ', 'Yaris'),
('Debra', 'MH-564949', 'Two wheeler', 'Hero', 'Karisma'),
('Jose', 'MH-581771', 'Four wheeler', 'Toyoto ', 'Yaris'),
('Kim', 'MH-587042', 'Four wheeler', 'Toyoto ', 'Yaris'),
('Edward', 'MH-591181', 'Four wheeler', 'Maruti Suzuki', 'swift'),
('Delisa', 'MH-619636', 'Four wheeler', 'Ford', 'Aspire'),
('Kaitlyn', 'MH-627380', 'Four wheeler', 'Toyoto ', 'Camry'),
('Evelyn', 'MH-636571', 'Four wheeler', 'Toyoto ', 'Yaris'),
('Nichelle', 'MH-647138', 'Four wheeler', 'Ford', 'Aspire'),
('Helen', 'MH-665431', 'Four wheeler', 'Maruti Suzuki', 'swift'),
('Robert', 'MH-673560', 'Four wheeler', 'Ford', 'Aspire'),
('Bette', 'MH-709624', 'Two wheeler', 'TVS', 'Radeon'),
('Blanch', 'MH-724942', 'Four wheeler', 'Maruti Suzuki', 'swift'),
('Christina', 'MH-738485', 'Four wheeler', 'Toyoto ', 'Yaris'),
('Victoria', 'MH-739211', 'Four wheeler', 'Ford', 'figo'),
('Glenda', 'MH-739371', 'Two wheeler', 'Bajaj', 'Pulsar'),
('Christa', 'MH-741671', 'Four wheeler', 'Ford', 'figo'),
('Rex', 'MH-744754', 'Four wheeler', 'Maruti Suzuki', 'swift'),
('Annie', 'MH-763317', 'Two wheeler', 'Bajaj', 'Dominar'),
('Maryjane', 'MH-772598', 'Four wheeler', 'Toyoto ', 'Camry'),
('David', 'MH-802148', 'Two wheeler', 'TVS', 'Radeon'),
('Lela', 'MH-824332', 'Four wheeler', 'Maruti Suzuki', 'wagonR'),
('Aline', 'MH-831961', 'Four wheeler', 'Maruti Suzuki', 'swift'),
('Juliette', 'MH-857127', 'Four wheeler', 'Maruti Suzuki', 'wagonR'),
('Jeffrey', 'MH-864902', 'Four wheeler', 'Ford', 'figo'),
('Judith', 'MH-878964', 'Two wheeler', 'Hero', 'Honda'),
('Barbara', 'MH-879919', 'Two wheeler', 'Bajaj', 'Pulsar'),
('Mary', 'MH-898700', 'Two wheeler', 'Bajaj', 'Pulsar'),
('Jesse', 'MH-899356', 'Four wheeler', 'Ford', 'figo'),
('Calvin', 'MH-903009', 'Four wheeler', 'Toyoto ', 'Yaris'),
('Anna', 'MH-912460', 'Four wheeler', 'Toyoto ', 'Yaris'),
('Rose', 'MH-913064', 'Four wheeler', 'Ford', 'figo'),
('Mario', 'MH-922335', 'Four wheeler', 'Maruti Suzuki', 'swift'),
('Agustin', 'MH-92910', 'Two wheeler', 'TVS', 'Radeon'),
('Harvey', 'MH-946721', 'Four wheeler', 'Maruti Suzuki', 'wagonR'),
('Shannon', 'MH-949351', 'Four wheeler', 'Toyoto ', 'Camry'),
('Joshua', 'MH-953146', 'Four wheeler', 'Ford', 'figo'),
('Craig', 'MH-961739', 'Two wheeler', 'TVS', 'Radeon'),
('Ramon', 'MH-974984', 'Four wheeler', 'Ford', 'figo'),
('Scott', 'MH-979416', 'Two wheeler', 'Hero', 'Karisma'),
('Hugh', 'MH-980890', 'Four wheeler', 'Maruti Suzuki', 'wagonR'),
('Cedric', 'MH-987029', 'Two wheeler', 'Hero', 'Honda');

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
-- Indexes for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD PRIMARY KEY (`booking_id`),
  ADD UNIQUE KEY `transaction_id` (`transaction_id`),
  ADD UNIQUE KEY `OTP` (`OTP`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2443575;
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
-- Constraints for table `operator_user`
--
ALTER TABLE `operator_user`
  ADD CONSTRAINT `username_fk_op` FOREIGN KEY (`username`) REFERENCES `login_info` (`username`);

--
-- Constraints for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD CONSTRAINT `booking_id_fk3` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `otp_fk` FOREIGN KEY (`OTP`) REFERENCES `booking` (`OTP`);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
