-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 01, 2021 at 03:52 PM
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
-- Database: `hello_world`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_2`
--

CREATE TABLE `table_2` (
  `id` int(11) NOT NULL,
  `table_2_id` int(11) NOT NULL,
  `field_2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_2`
--

INSERT INTO `table_2` (`id`, `table_2_id`, `field_2`) VALUES
(1, 1, 'Field 2.1'),
(2, 1, 'Field 2.2'),
(3, 1, 'Field 2.3'),
(4, 1, 'Field 2.4'),
(5, 1, 'Field 2.5'),
(6, 1, 'Field 2.6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_2`
--
ALTER TABLE `table_2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_2`
--
ALTER TABLE `table_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
