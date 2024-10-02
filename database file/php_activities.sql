-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2024 at 09:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_activities`
--

-- --------------------------------------------------------

--
-- Table structure for table `fruits`
--

CREATE TABLE `fruits` (
  `fruit_id` int(11) NOT NULL,
  `fruit_name` varchar(100) NOT NULL,
  `fruit_price` double NOT NULL,
  `fruit_qty` double NOT NULL,
  `fruit_created` datetime NOT NULL,
  `fruit_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fruits`
--

INSERT INTO `fruits` (`fruit_id`, `fruit_name`, `fruit_price`, `fruit_qty`, `fruit_created`, `fruit_updated`) VALUES
(1, 'Apple', 1.5, 100, '2024-10-02 15:25:46', '2024-10-02 15:25:46'),
(2, 'Banana', 0.5, 200, '2024-10-02 15:25:46', '2024-10-02 15:25:46'),
(3, 'Orange', 1, 150, '2024-10-02 15:25:46', '2024-10-02 15:25:46'),
(4, 'Mango', 2, 80, '2024-10-02 15:25:46', '2024-10-02 15:25:46'),
(5, 'Pineapple', 3, 50, '2024-10-02 15:25:46', '2024-10-02 15:25:46'),
(6, 'Strawberry', 2.5, 120, '2024-10-02 15:25:46', '2024-10-02 15:25:46'),
(7, 'Grapes', 2.2, 180, '2024-10-02 15:25:46', '2024-10-02 15:25:46'),
(8, 'Watermelon', 4, 30, '2024-10-02 15:25:46', '2024-10-02 15:25:46'),
(9, 'Peach', 1.8, 90, '2024-10-02 15:25:46', '2024-10-02 15:25:46'),
(10, 'Kiwi', 1.2, 110, '2024-10-02 15:25:46', '2024-10-02 15:25:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fruits`
--
ALTER TABLE `fruits`
  ADD PRIMARY KEY (`fruit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fruits`
--
ALTER TABLE `fruits`
  MODIFY `fruit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
