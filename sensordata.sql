-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 30, 2016 at 10:21 PM
-- Server version: 10.0.23-MariaDB-0ubuntu0.15.10.1
-- PHP Version: 5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_home`
--

-- --------------------------------------------------------

--
-- Table structure for table `sensordata`
--

CREATE TABLE IF NOT EXISTS `sensordata` (
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `value` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sensordata`
--

INSERT INTO `sensordata` (`timestamp`, `value`) VALUES
('2016-03-30 07:04:24', 1),
('2016-03-30 07:04:25', 0),
('2016-03-30 07:05:59', 1),
('2016-03-30 07:06:00', 0),
('2016-03-30 07:06:22', 1),
('2016-03-30 07:06:23', 0),
('2016-03-30 07:07:08', 1),
('2016-03-30 07:07:09', 0),
('2016-03-30 07:07:25', 1),
('2016-03-30 07:07:26', 0),
('2016-03-30 07:07:50', 1),
('2016-03-30 07:07:51', 0),
('2016-03-30 07:09:12', 1),
('2016-03-30 07:09:13', 0),
('2016-03-30 07:09:22', 1),
('2016-03-30 07:09:23', 0),
('2016-03-30 07:11:01', 1),
('2016-03-30 07:11:02', 0),
('2016-03-30 07:13:36', 1),
('2016-03-30 07:13:37', 0),
('2016-03-30 07:14:45', 1),
('2016-03-30 07:14:46', 0),
('2016-03-30 07:48:44', 1),
('2016-03-30 07:48:45', 0),
('2016-03-30 07:50:38', 1),
('2016-03-30 07:50:39', 0),
('2016-03-30 07:50:51', 1),
('2016-03-30 07:50:52', 0),
('2016-03-30 07:53:14', 1),
('2016-03-30 07:53:15', 0),
('2016-03-30 07:57:19', 1),
('2016-03-30 07:57:20', 0),
('2016-03-30 07:59:04', 1),
('2016-03-30 07:59:05', 0),
('2016-03-30 08:00:36', 1),
('2016-03-30 08:00:37', 0),
('2016-03-30 08:03:55', 1),
('2016-03-30 08:03:56', 0),
('2016-03-30 08:15:12', 1),
('2016-03-30 08:15:13', 0),
('2016-03-30 08:17:25', 1),
('2016-03-30 08:17:26', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sensordata`
--
ALTER TABLE `sensordata`
  ADD PRIMARY KEY (`timestamp`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
