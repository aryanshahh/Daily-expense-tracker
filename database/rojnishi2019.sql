-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2019 at 09:35 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rojnishi2019`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajayentries`
--

CREATE TABLE `ajayentries` (
  `recid` int(10) DEFAULT NULL,
  `item` tinytext DEFAULT NULL,
  `categories` tinytext DEFAULT NULL,
  `price` float DEFAULT NULL,
  `entrydate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `budgetlimit`
--

CREATE TABLE `budgetlimit` (
  `username` varchar(20) NOT NULL,
  `category` varchar(30) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(4) NOT NULL,
  `limitamount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `username` varchar(20) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`username`, `category`) VALUES
('jay', 'Petrol'),
('jay', 'Diesel'),
('jay', 'Education Fees'),
('jay', 'Fast Food'),
('jay', 'Hotel'),
('jay', 'Stationary'),
('jay', 'House Hold'),
('jay', 'LightBill'),
('ajay', 'Petrol'),
('ajay', 'Diesel'),
('ajay', 'Education Fees'),
('ajay', 'Fast Food'),
('ajay', 'Hotel'),
('ajay', 'Stationary'),
('ajay', 'House Hold'),
('ajay', 'LightBill');

-- --------------------------------------------------------

--
-- Table structure for table `jayentries`
--

CREATE TABLE `jayentries` (
  `recid` int(10) DEFAULT NULL,
  `item` tinytext DEFAULT NULL,
  `categories` tinytext DEFAULT NULL,
  `price` float DEFAULT NULL,
  `entrydate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `usertype` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `usertype`) VALUES
('admin', 'admin', 'admin'),
('normal', 'normal', 'normal'),
('jay', 'jay', 'normal'),
('ajay', 'ajay', 'normal');

-- --------------------------------------------------------

--
-- Table structure for table `personalinfo`
--

CREATE TABLE `personalinfo` (
  `username` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `mobile` int(12) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(25) NOT NULL,
  `pincode` int(10) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personalinfo`
--

INSERT INTO `personalinfo` (`username`, `firstname`, `lastname`, `dob`, `mobile`, `gender`, `email`, `address`, `city`, `pincode`, `country`) VALUES
('jay', '', '', '0000-00-00', 0, '', '', '', '', 0, ''),
('ajay', '', '', '0000-00-00', 0, '', '', '', '', 0, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
