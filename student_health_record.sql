-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2020 at 06:10 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_health_record`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `officer_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`officer_id`, `first_name`, `last_name`, `password`, `phone`) VALUES
(0, 'Administrator', 'Deepak', '1043', '0'),
(1, 'Deepak', 'Ugale', '1', '0'),
(6, 'Priya', 'Solunke', 'Praju@143', '8975621043'),
(1043, 'Deep', 'Deep', 'Go', '12345'),
(1044, 'Ankita', 'Dhuri', 'Typing$0000', '9123230912'),
(1045, 'Ankita', 'Dhuri', 'Typing$0000', '9123230912'),
(1046, 'Ankita', 'Dhuri', 'Typing$0000', '9123230912');

-- --------------------------------------------------------

--
-- Table structure for table `student_record`
--

CREATE TABLE `student_record` (
  `health_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `prn` varchar(20) NOT NULL,
  `height` varchar(10) NOT NULL,
  `weight` int(3) NOT NULL,
  `favor` varchar(100) NOT NULL,
  `physical_challenge` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `officer_id` int(5) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_record`
--

INSERT INTO `student_record` (`health_id`, `first_name`, `last_name`, `prn`, `height`, `weight`, `favor`, `physical_challenge`, `comment`, `officer_id`, `date_time`) VALUES
(1043, 'Deepak', 'Ugale', '123123123', '169', 53, 'dryness clear', 'No', 'no corona', 0, '2020-04-25 13:57:18'),
(1049, 'Priya', 'Solunke', '1233214', '165', 48, 'nothing', 'No', 'Not Comment', 1, '2020-04-26 08:00:01'),
(1053, 'Priya', 'happy', '194555555', '169', 70, 'dryness clear', 'No', 'no corona', 1, '2020-04-26 08:15:33'),
(1048, 'Prajakta', 'Sagade', '22334455', '167', 50, 'loveriya', 'no', 'nicely', 0, '2020-04-25 03:23:04'),
(1055, 'nikiteena', 'roy', '8977700', '157', 51, 'mental', 'Yes', 'mental', 1, '2020-04-27 09:40:52'),
(1054, 'Veronica', 'Dsouza', '89896767', '163', 48, 'mental', 'Yes', 'what you ask me.??', 1, '2020-04-27 08:49:06'),
(1052, 'Shruti', 'Oza', '909090', '167', 45, 'mental', 'No', 'crack', 1, '2020-04-26 08:03:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`officer_id`);

--
-- Indexes for table `student_record`
--
ALTER TABLE `student_record`
  ADD PRIMARY KEY (`prn`),
  ADD UNIQUE KEY `health_id` (`health_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `officer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1047;

--
-- AUTO_INCREMENT for table `student_record`
--
ALTER TABLE `student_record`
  MODIFY `health_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1056;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
