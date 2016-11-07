-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 04, 2016 at 11:16 PM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easygo`
--

-- --------------------------------------------------------

--
-- Table structure for table `rtc_bidding`
--

CREATE TABLE `rtc_bidding` (
`review_id` int(11) NOT NULL,
`product_id` int(11) NOT NULL,
`customer_id` int(11) NOT NULL,
`author` varchar(64) NOT NULL,
`text` text NOT NULL,
`rating` int(1) NOT NULL,
`status` tinyint(1) NOT NULL DEFAULT '0',
`date_added` datetime NOT NULL,
`date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rtc_bidding`
--

INSERT INTO `rtc_bidding` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 30, 1, 'Ramesha Chaudhary', 'This place is awesome, must travel', 5, 1, '2016-11-04 20:26:39', '2016-11-04 20:27:19'),
(2, 30, 1, 'Ramesh Chaudhary', 'demo reivgewasd fasd fasdf', 2, 0, '2016-11-04 22:59:44', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rtc_bidding`
--
ALTER TABLE `rtc_bidding`
ADD PRIMARY KEY (`review_id`),
ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rtc_bidding`
--
ALTER TABLE `rtc_bidding`
MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;