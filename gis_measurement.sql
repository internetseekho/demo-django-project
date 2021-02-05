-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 05, 2021 at 08:03 PM
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
-- Table structure for table `gis_measurement`
--

CREATE TABLE `gis_measurement` (
  `id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `distance` decimal(10,2) NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gis_measurement`
--

INSERT INTO `gis_measurement` (`id`, `location`, `destination`, `distance`, `created`) VALUES
(1, 'London', 'dortmund', '3000.00', '2021-02-28 13:35:00.000000'),
(2, 'Durham, Durham County, North Carolina, United States', 'new york', '676.07', '2021-02-05 18:36:29.226076'),
(3, 'Durham, Durham County, North Carolina, United States', 'london', '6251.83', '2021-02-05 18:36:42.251060'),
(4, 'Durham, Durham County, North Carolina, United States', 'london', '6251.83', '2021-02-05 18:38:36.031108');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gis_measurement`
--
ALTER TABLE `gis_measurement`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gis_measurement`
--
ALTER TABLE `gis_measurement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
