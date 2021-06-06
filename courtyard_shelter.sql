-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2020 at 06:05 AM
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
-- Database: `courtyard_shelter`
--

-- --------------------------------------------------------

--
-- Table structure for table `children_record`
--

CREATE TABLE `children_record` (
  `sr_no` int(11) NOT NULL,
  `roll_no` int(5) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `nick_name` varchar(15) NOT NULL,
  `height` int(3) NOT NULL,
  `weight` int(3) NOT NULL,
  `address` varchar(99) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `food` varchar(50) NOT NULL,
  `ph` varchar(10) NOT NULL,
  `officer_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `children_record`
--

INSERT INTO `children_record` (`sr_no`, `roll_no`, `first_name`, `middle_name`, `last_name`, `nick_name`, `height`, `weight`, `address`, `gender`, `phone`, `email`, `dob`, `food`, `ph`, `officer_id`) VALUES
(1, 1, 'Prajakta', 'Sominath', 'Sagade', 'Sony', 165, 51, 'Bhatepuri', 'Girl', '8975621043', 'prajusagade@gmail.com', '1997-10-30', 'Deepak Heart', 'No', 70823),
(2, 2, 'Prajakta', 'Sominath', 'Sagade', 'Sony', 165, 51, 'Bhatepuri', 'Girl', '8975621043', 'prajusagade@gmail.com', '1997-10-30', 'Deepak Heart', 'null', 70823),
(4, 4, 'Pooja', 'Appasaheb', 'Solunke', 'didi', 165, 55, 'Gondi', 'Girl', '9123523232', 'pooja@mail.com', '1997-10-30', 'mind', 'null', 70823),
(5, 5, 'Ankita', 'Deepak', 'Ugale', 'Baby', 166, 50, 'kumbral', 'Girl', '8975101010', 'prajusagade@gmail.com', '1997-10-30', 'heart', 'Yes', 70823),
(7, 7, 'Ankita', 'Deepak', 'Ugale', 'Baby', 166, 50, 'kumbral', 'null', '8975101010', 'prajusagade@gmail.com', '1997-10-30', 'heart', 'Yes', 70823),
(8, 8, 'Ankita', 'Deepak', 'Ugale', 'MyBaby', 166, 50, 'kumbral', 'null', '8975101010', 'prajusagade@gmail.com', '1997-10-30', 'heart', 'Yes', 70823),
(9, 9, 'Ankita', 'DeepakG', 'Ugale', 'Baby', 166, 49, 'kumbral', 'Girl', '8975101010', 'prajusagade@gmail.com', '1997-10-30', 'heart', 'Yes', 70823),
(10, 10, 'Ankita', 'Deepak', 'Ugale', 'Baby', 166, 48, 'kumbral', 'null', '8975101010', 'prajusagade@gmail.com', '1997-10-30', 'heart', 'Yes', 70823),
(11, 11, 'Ankita', 'Deepak', 'Ugale', 'Baby', 166, 70, 'kumbral', 'Girl', '8975101010', 'prajusagade@gmail.com', '1997-10-30', 'heart', 'Yes', 70823),
(12, 12, 'Ankita', 'Deepak', 'Ugale', 'Baby', 166, 49, 'kumbral', 'Girl', '8975101010', 'prajusagade@gmail.com', '1997-10-30', 'heart', 'Yes', 70823),
(13, 1, 'pinki', 'pinkurav', 'pinke', 'pinkk', 232, 67, 'Bhatepuri', 'Girl', '8975551043', 'piki@mail.com', '2222-02-22', 'heart', 'Yes', 1),
(14, 2, 'AnkitaGGGGGGG', 'Deepak', 'Dhuri', '', 165, 48, 'kumbral', 'Girl', '', '', '1997-12-27', '', 'No', 1);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `officer_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`officer_id`, `first_name`, `middle_name`, `last_name`, `phone`, `password`, `gender`, `email`) VALUES
(1, 'Deepak', 'Sudam', 'Ugale', '0', '1', 'Male', 'ugale.deepak3010@gmail.com'),
(3, 'Deepak', 'Sudam', 'Ugale', 'null', 'null', 'null', 'null'),
(70820, 'Ankita', 'Deepak', 'Ugale', '9123230912', 'Qwerty@7890', 'null', 'ugaled44@gmail.com'),
(70821, 'Ankita', 'Deepak', 'Ugale', '9123230999', 'Qwerty@7890', 'null', 'ugaled44@gmail.com'),
(70822, 'Priya', 'Deepak', 'Ugale', '9123230444', 'Qwerty@7890', 'Female', 'ugaled44@gmail.com'),
(70823, 'Pooja', 'Appasaheb', 'Solunke', '9898009898', 'No@Pass123', 'Female', 'pooja@mail.com'),
(70824, 'Divya', 'Deepak', 'Agarwal', '', 'Pass@123', 'Female', ''),
(70825, 'anjali', 'Deepak', 'naik', '9123234545', 'Pass@123', 'Female', 'prajusagade@gmail.com'),
(70826, 'anjali', 'Deepak', 'naik', '9123234545', 'Pass@123', 'Female', 'prajusagade@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `children_record`
--
ALTER TABLE `children_record`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`officer_id`),
  ADD UNIQUE KEY `officer_id` (`officer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `children_record`
--
ALTER TABLE `children_record`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `officer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70827;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
