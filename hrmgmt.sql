-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2022 at 05:21 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrmgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeid` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeid`, `password`) VALUES
('gowtham', 'gowtham@13');

-- --------------------------------------------------------

--
-- Table structure for table `employeerecords`
--

CREATE TABLE `employeerecords` (
  `EmployeeID` varchar(256) NOT NULL,
  `Firstname` text NOT NULL,
  `Lastname` text NOT NULL,
  `Age` varchar(10) NOT NULL,
  `Gender` text NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `Address` text NOT NULL,
  `Bloodgroup` text NOT NULL,
  `MaritalStatus` text NOT NULL,
  `EmailId` text NOT NULL,
  `Designation` text NOT NULL,
  `Department` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employeerecords`
--

INSERT INTO `employeerecords` (`EmployeeID`, `Firstname`, `Lastname`, `Age`, `Gender`, `Contact`, `Address`, `Bloodgroup`, `MaritalStatus`, `EmailId`, `Designation`, `Department`) VALUES
('Gowtham123', 'Gowtham', 'Easwar', '19', 'Male', '9384976575', 'Salem', 'O+', 'Not Married', 'gowtham@gmail.com', 'Intern', 'Software'),
('Name', 'hbv', 'hvbjhb', '56', 'hbij', '676576', 'jhbjb', 'jkbj', 'khbihjbv', 'khbjhbkhb', 'kbkjbk', 'bkhbjhb'),
('Name', 'hbv', 'hvbjhb', '56', 'hbij', '676576', 'jhbjb', 'jkbj', 'khbihjbv', 'khbjhbkhb', 'kbkjbk', 'bkhbjhb');

-- --------------------------------------------------------

--
-- Table structure for table `emprecords`
--

CREATE TABLE `emprecords` (
  `empid` varchar(256) NOT NULL,
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
