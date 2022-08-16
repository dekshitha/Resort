-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2021 at 03:16 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `bid` int(11) NOT NULL,
  `activities` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`bid`, `activities`) VALUES
(1, 'trekking,swimming,blossom to brew,plantation tour,outdoor dining and camping'),
(61, 'trekking,swimming,blossom to brew,plantation tour,outdoor dining and camping'),
(62, 'swimming'),
(63, 'swimming,trekking,outdoor dining and camping '),
(64, 'swimming,trekking,outdoor dining and camping '),
(65, 'trekking,swimming,blossom to brew,plantation tour,outdoor dining and camping'),
(66, 'trekking,swimming,blossom to brew,plantation tour,outdoor dining and camping'),
(67, 'trekking'),
(68, 'trekking,swimming,plantation tour'),
(80, 'trekking,swimming,blossom to brew,plantation tour,outdoor dining and camping'),
(82, 'trekking,swimming,plantation tour');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `userReview` int(11) NOT NULL,
  `userMessage` varchar(200) NOT NULL,
  `dateReviewed` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `userid`, `userReview`, `userMessage`, `dateReviewed`) VALUES
(5, 'swetha', 4, 'good time', 'Wednesday, December 16, 2020'),
(6, 'yogita', 4, 'lovely place!', 'Wednesday, December 16, 2020'),
(7, 'dekshitha', 4, 'had amazing experience!', 'Wednesday, December 16, 2020'),
(31, 'hemanth', 2, 'lovely nature !', 'Saturday, December 19, 2020'),
(33, 'arvind', 5, 'awesome', 'Friday, January 15, 2021'),
(34, 'ksit', 5, 'gud', 'Friday, January 15, 2021'),
(35, 'sandeep', 5, 'gud', 'Monday, January 18, 2021');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `rid` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `arriving` varchar(100) DEFAULT NULL,
  `departing` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `guests` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`rid`, `roomno`, `userid`, `arriving`, `departing`, `type`, `guests`) VALUES
(1, 301, 'dekshitha', '2021-01-17', '2021-01-20', 'Suite Cottage', 3),
(61, 400, 'dekshitha', '2020-12-27', '2020-12-29', 'Tree House', 2),
(62, 105, 'hemanth', '2020-12-20', '2020-12-22', 'Superior Luxury Cottage', 3),
(63, 100, 'hemanth', '2020-12-25', '2020-12-30', 'Superior Luxury Cottage', 2),
(64, 101, 'hemanth', '2020-12-31', '2021-01-02', 'Superior Luxury Cottage', 2),
(65, 101, 'Swetha bijanapalli', '2021-12-30', '2022-12-30', 'Superior Luxury Cottage', 3),
(66, 101, 'dekshitha', '2021-01-16', '2021-01-18', 'Superior Luxury Cottage', 4),
(67, 101, 'ksit', '2021-01-18', '2021-01-20', 'Superior Luxury Cottage', 3),
(68, 405, 'dekshitha', '2021-01-19', '2021-01-24', 'Tree House', 2),
(79, 105, 'dekshitha', '2021-01-26', '2021-01-29', 'Superior Luxury Cottage', 2),
(80, 105, 'dekshitha', '2021-01-29', '2021-02-02', 'Superior Luxury Cottage', 2),
(81, 101, 'dekshitha', '2021-01-29', '2021-02-02', 'Superior Luxury Cottage', 2),
(82, 205, 'Swetha bijanapalli', '2021-01-28', '2021-01-30', 'Luxury Cottage', 2);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `roomno`, `type`, `price`) VALUES
(1, 100, 'Superior Luxury Cottage', 18000),
(2, 101, 'Superior Luxury Cottage', 18000),
(3, 102, 'Superior Luxury Cottage', 18000),
(4, 103, 'Superior Luxury Cottage', 18000),
(5, 104, 'Superior Luxury Cottage', 18000),
(6, 105, 'Superior Luxury Cottage', 18000),
(7, 200, 'Luxury Cottage', 15000),
(8, 201, 'Luxury Cottage', 15000),
(9, 202, 'Luxury Cottage', 15000),
(10, 203, 'Luxury Cottage', 15000),
(11, 204, 'Luxury Cottage', 15000),
(12, 205, 'Luxury Cottage', 15000),
(13, 300, 'Suite Cottage', 10000),
(14, 301, 'Suite Cottage', 10000),
(15, 302, 'Suite Cottage', 10000),
(16, 303, 'Suite Cottage', 10000),
(17, 304, 'Suite Cottage', 10000),
(18, 305, 'Suite Cottage', 10000),
(19, 400, 'Tree House', 7000),
(20, 401, 'Tree House', 7000),
(21, 402, 'Tree House', 7000),
(22, 403, 'Tree House', 7000),
(23, 404, 'Tree House', 7000),
(24, 405, 'Tree House', 7000);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `userid` varchar(200) NOT NULL,
  `emailid` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phno` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `userid`, `emailid`, `password`, `phno`) VALUES
(1, 'dekshitha', 'dekshi17@gmail.com', 'dekshi', 9901931905),
(2, 'Swetha bijanapalli', 'swethabijanapalli@gmail.com', 'swetha', 8971678175),
(3, 'yogita', 'yogitaramesh11@gmail.com', 'yogita', 9663472404),
(13, 'hemanth', 'hemanthchowdary743@gmail.com', 'hemanth2001', 7702006368),
(14, 'arvind', 'arvindpathak96445@gmail.com', 'arvind', 7830167597),
(15, 'ksit', 'ksit@gmail.com', 'ksit', 9098764322);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`,`roomno`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
