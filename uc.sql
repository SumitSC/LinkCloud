-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2021 at 02:24 PM
-- Server version: 10.3.28-MariaDB-cll-lve
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universal_copier`
--

-- --------------------------------------------------------

--
-- Table structure for table `uc_users`
--

CREATE TABLE `uc_users` (
  `user_id` varchar(35) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `uc_user_links`
--

CREATE TABLE `uc_user_links` (
  `link_no` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `link` text NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uc_users`
--
ALTER TABLE `uc_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `uc_user_links`
--
ALTER TABLE `uc_user_links`
  ADD PRIMARY KEY (`link_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uc_user_links`
--
ALTER TABLE `uc_user_links`
  MODIFY `link_no` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
