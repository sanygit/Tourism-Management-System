-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2020 at 11:52 AM
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
-- Database: `boat`
--

-- --------------------------------------------------------

--
-- Table structure for table `boats`
--

CREATE TABLE `boats` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(35) NOT NULL,
  `b_cpcty` varchar(35) NOT NULL,
  `b_on` varchar(35) NOT NULL,
  `b_img` varchar(255) NOT NULL,
  `b_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boats`
--

INSERT INTO `boats` (`b_id`, `b_name`, `b_cpcty`, `b_on`, `b_img`, `b_price`) VALUES
(43, 'ora jackson', '25 Persons', 'rayleigh', '../boat_image/image_2016-02-26-11-33-39_56cfc793b356b.jpg', 3500),
(52, 'barko barko', '25 Persons', 'john dough', '../boat_image/image_2016-02-26-11-33-26_56cfc78667a8b.jpg', 3500),
(53, 'thre', '15 Persons', 'three name', '../boat_image/image_2016-02-26-11-33-58_56cfc7a61410a.jpg', 3000),
(54, 'boat four', '25 Persons', 'four name', '../boat_image/image_2016-02-26-11-34-18_56cfc7ba02940.jpg', 3500),
(55, 'boat five', '15 Persons', 'boat five name', '../boat_image/image_2016-02-26-11-34-36_56cfc7cc8ee91.jpg', 3000),
(56, 'ariana grandi', '30 Persons', 'justin beiber', '../boat_image/image_2016-02-26-11-35-29_56cfc8016ff83.jpg', 4000),
(57, 'idk', '25 Persons', 'luffy', '../boat_image/image_2016-02-26-11-35-54_56cfc81a68825.jpg', 3500),
(58, 'another boat', '15 Persons', 'brook', '../boat_image/image_2016-02-26-11-36-18_56cfc832eb45f.jpg', 3000),
(59, 'ggg', '15 Persons', 'ggg', '../boat_image/image_2016-02-26-11-36-31_56cfc83f7633d.jpg', 3000),
(60, 'hhh', '15 Persons', 'hh', '../boat_image/image_2016-02-26-11-36-42_56cfc84a8f88c.jpg', 3000),
(61, 'jjj', '30 Persons', 'jj', '../boat_image/image_2016-02-26-11-36-50_56cfc85230c90.jpg', 4000),
(62, 'lll', '15 Persons', 'lll', '../boat_image/image_2016-02-26-11-36-58_56cfc85a5d528.jpg', 3000),
(64, 'sakayan', '15 Persons', '11', '../boat_image/image_2016-02-26-11-40-36_56cfc934d9adc.jpg', 3000),
(65, 'no photo', '15 Persons', 'no photo', '../boat_image/image_2016-02-26-13-07-23_56cfdd8b089a9.jpg', 3000),
(66, 'hordy jones', '15 Persons', 'vander decken', '../boat_image/image_2016-02-26-13-07-07_56cfdd7bc03a9.jpg', 3000),
(74, 'SDFSD', '15 Persons', 'SDFSDFSDFSD', '../boat_image/image_2016-02-27-07-40-09_56d144c9c7018.jpg', 3000),
(76, 'price', '25 Persons', 'price', '../boat_image/image_2016-02-27-07-05-24_56d13ca4c57a8.jpg', 3500);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `r_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `r_dstntn` varchar(35) NOT NULL,
  `r_date` varchar(35) NOT NULL,
  `r_hr` varchar(35) NOT NULL,
  `r_ampm` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tourist`
--

CREATE TABLE `tourist` (
  `tour_id` int(11) NOT NULL,
  `tour_fN` varchar(50) NOT NULL,
  `tour_mN` varchar(50) NOT NULL,
  `tour_lN` varchar(50) NOT NULL,
  `tour_address` varchar(255) NOT NULL,
  `tour_contact` varchar(15) NOT NULL,
  `tour_un` varchar(50) NOT NULL,
  `tour_up` varchar(35) NOT NULL,
  `user_type` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tourist`
--

INSERT INTO `tourist` (`tour_id`, `tour_fN`, `tour_mN`, `tour_lN`, `tour_address`, `tour_contact`, `tour_un`, `tour_up`, `user_type`) VALUES
(2, '', '', '', '', '', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1'),
(3, 'pogi', 'hah', 'pangi', 'asdffa', '2342erw', 'pogi', '7c6f5bdc16b3748b481fb5ea98bd4ace', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boats`
--
ALTER TABLE `boats`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`r_id`),
  ADD KEY `b_id` (`b_id`),
  ADD KEY `tour_id` (`tour_id`);

--
-- Indexes for table `tourist`
--
ALTER TABLE `tourist`
  ADD PRIMARY KEY (`tour_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boats`
--
ALTER TABLE `boats`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tourist`
--
ALTER TABLE `tourist`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`b_id`) REFERENCES `boats` (`b_id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`tour_id`) REFERENCES `tourist` (`tour_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
