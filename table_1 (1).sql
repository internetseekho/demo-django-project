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
-- Table structure for table `table_1`
--

CREATE TABLE `table_1` (
  `id` int(11) NOT NULL,
  `table_1_id` int(11) NOT NULL,
  `field_1` varchar(255) NOT NULL,
  `table_2_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_1`
--

INSERT INTO `table_1` (`id`, `table_1_id`, `field_1`, `table_2_id`) VALUES
(1, 2, 'Field 1.1', 1),
(2, 2, 'Field 1.2', 2),
(3, 2, 'Field 1.3', 2),
(4, 2, 'Field 1.4', 1),
(5, 2, 'Field 1.5', 2),
(6, 2, 'Field 1.6', 2),
(7, 2, 'Field 1.7', 1),
(8, 2, 'Field 1.8', 2),
(9, 2, 'Field 1.9', 2),
(10, 2, 'Field 1.10', 1),
(11, 2, 'Field 1.11', 2),
(12, 2, 'Field 1.12', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_1`
--
ALTER TABLE `table_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hello_world_table_1_table_2_id_ad0b371d_fk_hello_wor` (`table_2_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_1`
--
ALTER TABLE `table_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_1`
--
ALTER TABLE `table_1`
  ADD CONSTRAINT `hello_world_table_1_table_2_id_ad0b371d_fk_hello_wor` FOREIGN KEY (`table_2_id`) REFERENCES `table_2` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
