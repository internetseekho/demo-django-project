-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 28, 2021 at 07:19 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_application`
--

-- --------------------------------------------------------

--
-- Table structure for table `arinow`
--

CREATE TABLE `arinow` (
  `id` int(11) NOT NULL,
  `DateIssue` varchar(255) NOT NULL,
  `DateForecast` varchar(255) NOT NULL,
  `ReportingArea` varchar(255) NOT NULL,
  `StateCode` varchar(255) NOT NULL,
  `Latitude` varchar(255) NOT NULL,
  `Longitude` varchar(255) NOT NULL,
  `ParameterName` varchar(255) NOT NULL,
  `AQI` varchar(255) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `ActionDay` varchar(255) NOT NULL,
  `Discussion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arinow`
--

INSERT INTO `arinow` (`id`, `DateIssue`, `DateForecast`, `ReportingArea`, `StateCode`, `Latitude`, `Longitude`, `ParameterName`, `AQI`, `Category`, `ActionDay`, `Discussion`) VALUES
(1, '2020-12-22 ', '2020-12-23 ', 'Metropolitan Washington', 'DC', '38.919', '-77.013', 'PM2.5', '38', '{\"Number\":1,\"Name\":\"Good\"}', '', 'High pressure will quickly move overhead Wednesday. Despite weaker winds and overnight early morning surface inversions, expect Good air quality across the state given a clean residual air mass and sufficient afternoon mixing. A developing low pressure system will make its way through the region Christmas Eve, Thursday. Moderate to heavy precipitation will help to keep fine particle pollution low. Good air quality is expected. Continued Good air quality is expected across the state Christmas Day given a clean inflow of Canadian air behind the passing low pressure system. â€“MDE  '),
(2, '2020-12-22 ', '2020-12-24 ', 'Metropolitan Washington', 'DC', '38.919', '-77.013', 'PM2.5', '29', '{\"Number\":1,\"Name\":\"Good\"}', '', 'High pressure will quickly move overhead Wednesday. Despite weaker winds and overnight early morning surface inversions, expect Good air quality across the state given a clean residual air mass and sufficient afternoon mixing. A developing low pressure system will make its way through the region Christmas Eve, Thursday. Moderate to heavy precipitation will help to keep fine particle pollution low. Good air quality is expected. Continued Good air quality is expected across the state Christmas Day given a clean inflow of Canadian air behind the passing low pressure system. â€“MDE  '),
(3, '2020-12-22 ', '2020-12-25 ', 'Metropolitan Washington', 'DC', '38.919', '-77.013', 'PM2.5', '21', '{\"Number\":1,\"Name\":\"Good\"}', '', 'High pressure will quickly move overhead Wednesday. Despite weaker winds and overnight early morning surface inversions, expect Good air quality across the state given a clean residual air mass and sufficient afternoon mixing. A developing low pressure system will make its way through the region Christmas Eve, Thursday. Moderate to heavy precipitation will help to keep fine particle pollution low. Good air quality is expected. Continued Good air quality is expected across the state Christmas Day given a clean inflow of Canadian air behind the passing low pressure system. â€“MDE  '),
(4, '2020-12-22 ', '2020-12-23 ', 'Boston', 'MA', '42.351', '-71.051', 'PM2.5', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(5, '2020-12-22 ', '2020-12-24 ', 'Boston', 'MA', '42.351', '-71.051', 'PM2.5', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(6, '2020-12-22 ', '2020-12-25 ', 'Boston', 'MA', '42.351', '-71.051', 'PM2.5', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(7, '2020-12-22 ', '2020-12-23 ', 'Northern', 'ME', '46.6823', '-68.0162', 'O3', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(8, '2020-12-22 ', '2020-12-23 ', 'Northern', 'ME', '46.6823', '-68.0162', 'PM2.5', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(9, '2020-12-22 ', '2020-12-24 ', 'Northern', 'ME', '46.6823', '-68.0162', 'O3', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(10, '2020-12-22 ', '2020-12-24 ', 'Northern', 'ME', '46.6823', '-68.0162', 'PM2.5', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(11, '2020-12-22 ', '2020-12-25 ', 'Northern', 'ME', '46.6823', '-68.0162', 'O3', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(12, '2020-12-22 ', '2020-12-25 ', 'Northern', 'ME', '46.6823', '-68.0162', 'PM2.5', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(13, '2020-12-22 ', '2020-12-26 ', 'Northern', 'ME', '46.6823', '-68.0162', 'O3', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(14, '2020-12-22 ', '2020-12-26 ', 'Northern', 'ME', '46.6823', '-68.0162', 'PM2.5', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(15, '2020-12-22 ', '2020-12-27 ', 'Northern', 'ME', '46.6823', '-68.0162', 'O3', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(16, '2020-12-22 ', '2020-12-27 ', 'Northern', 'ME', '46.6823', '-68.0162', 'PM2.5', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(17, '2020-12-22 ', '2020-12-23 ', 'Northern', 'ME', '46.6823', '-68.0162', 'O3', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(18, '2020-12-22 ', '2020-12-23 ', 'Northern', 'ME', '46.6823', '-68.0162', 'PM2.5', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(19, '2020-12-22 ', '2020-12-24 ', 'Northern', 'ME', '46.6823', '-68.0162', 'O3', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(20, '2020-12-22 ', '2020-12-24 ', 'Northern', 'ME', '46.6823', '-68.0162', 'PM2.5', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(21, '2020-12-22 ', '2020-12-25 ', 'Northern', 'ME', '46.6823', '-68.0162', 'O3', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(22, '2020-12-22 ', '2020-12-25 ', 'Northern', 'ME', '46.6823', '-68.0162', 'PM2.5', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(23, '2020-12-22 ', '2020-12-26 ', 'Northern', 'ME', '46.6823', '-68.0162', 'O3', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(24, '2020-12-22 ', '2020-12-26 ', 'Northern', 'ME', '46.6823', '-68.0162', 'PM2.5', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(25, '2020-12-22 ', '2020-12-27 ', 'Northern', 'ME', '46.6823', '-68.0162', 'O3', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', ''),
(26, '2020-12-22 ', '2020-12-27 ', 'Northern', 'ME', '46.6823', '-68.0162', 'PM2.5', '-1', '{\"Number\":1,\"Name\":\"Good\"}', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arinow`
--
ALTER TABLE `arinow`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arinow`
--
ALTER TABLE `arinow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
