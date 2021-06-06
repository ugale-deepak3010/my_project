-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2020 at 01:38 PM
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
-- Database: `servletschem`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `message_no` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`message_no`, `first_name`, `last_name`, `email`, `subject`, `message`) VALUES
(1, 'Deepak', 'Ugale', 'ugale.deepak3010@gmail.com', 'null', 'null'),
(2, 'Deepak', 'Ugale', 'ugale.deepak3010@gmail.com', 'null', 'null'),
(3, 'Deepak', 'Ugale', 'ugale.deepak3010@gmail.com', 'null', 'null'),
(4, 'Deepak', 'Ugale', 'ugale.deepak3010@gmail.com', 'null', 'null'),
(5, 'Deepak', 'Ugale', 'ugale.deepak3010@gmail.com', 'null', 'null'),
(6, 'Deepak', 'Ugale', 'ugale.deepak3010@gmail.com', 'null', 'null'),
(7, 'Deepak', 'Ugale', 'ugale.deepak3010@gmail.com', 'null', 'null'),
(8, 'Deepak', 'Ugale', 'ugaled44@gmail.com', '9123566561', 'null'),
(9, 'Deepak', 'Ugale', 'prajusagade@gmail.com', 'null', 'null'),
(10, 'Deepak', 'Ugale', 'pooja@mail.com', 'Testing1', 'null'),
(11, 'Deepak', 'Ugale', 'ugaled44@gmail.com', 'Testing23', 'null'),
(12, 'Deepak', 'Ugale', 'ugaled44@gmail.com', 'Testing24', 'Deepak Ugale.....'),
(13, 'Ankita', 'Dhuri', 'ugaled44@gmail.com', 'Testing245', 'by..'),
(14, 'Ankita', 'Dhuri', 'ugaled44@gmail.com', 'Testing245', 'Nice..'),
(15, 'Deepak', 'Sudam', 'ugale.deepak3010@gmail.com', 'Finish Work', 'Forward to last procedure Testing..');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`message_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `message_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
