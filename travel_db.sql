-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2025 at 09:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `expenditure_stats`
--

CREATE TABLE `expenditure_stats` (
  `id` int(11) NOT NULL,
  `component` varchar(100) DEFAULT NULL,
  `exp_2010` int(11) DEFAULT NULL,
  `exp_2011` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenditure_stats`
--

INSERT INTO `expenditure_stats` (`id`, `component`, `exp_2010`, `exp_2011`) VALUES
(1, 'Shopping', 8914, 13149),
(2, 'Transport', 8098, 10019),
(3, 'Food & beverages', 7975, 9691),
(4, 'Accommodation', 6130, 5028),
(5, 'Pre-trip/Packages', 894, 1097),
(6, 'Other activities', 2667, 3362);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expenditure_stats`
--
ALTER TABLE `expenditure_stats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expenditure_stats`
--
ALTER TABLE `expenditure_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
