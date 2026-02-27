-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2022 at 07:45 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocmmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555589, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-10-11 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `ID` int(5) NOT NULL,
  `Class` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`ID`, `Class`, `CreationDate`) VALUES
(1, '12 th', '2022-06-02 06:56:56'),
(2, '11 th', '2022-06-02 06:57:16'),
(3, '10 th', '2022-06-02 06:57:23'),
(4, '9 th', '2022-06-02 06:57:29'),
(5, '8 th', '2022-06-02 06:57:36'),
(6, '7 th', '2022-06-02 06:57:42'),
(7, '6 th', '2022-06-02 06:57:49'),
(8, '5 th', '2022-06-02 06:57:54'),
(9, '4 th', '2022-06-02 06:58:00'),
(10, '3 rd', '2022-06-02 06:58:04'),
(11, '2 nd', '2022-06-02 06:58:10'),
(16, '1st', '2022-06-11 11:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `ID` int(5) NOT NULL,
  `Class` varchar(50) DEFAULT NULL,
  `Subject` varchar(50) DEFAULT NULL,
  `CourseTitle` varchar(250) DEFAULT NULL,
  `CourseDecription` mediumtext DEFAULT NULL,
  `File1` varchar(250) DEFAULT NULL,
  `File2` varchar(250) DEFAULT NULL,
  `File3` varchar(250) DEFAULT NULL,
  `File4` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`ID`, `Class`, `Subject`, `CourseTitle`, `CourseDecription`, `File1`, `File2`, `File3`, `File4`, `CreationDate`) VALUES
(2, '2', '6', 'Algebra Expression Question & Answer', 'All the question is explain step by step.', 'd41d8cd98f00b204e9800998ecf8427e1654246821.pdf', NULL, NULL, NULL, '2022-06-03 09:00:21'),
(3, '2', '8', 'Chemical Bonding Question Paper ', 'These important questions will play significant role in clearing concepts of Chemistry. ', 'd41d8cd98f00b204e9800998ecf8427e1654247054.pdf', NULL, NULL, NULL, '2022-06-03 09:04:14'),
(4, '1', '1', 'Math Paper', 'Math Paper', 'd41d8cd98f00b204e9800998ecf8427e1654247779.pdf', NULL, NULL, NULL, '2022-06-03 09:16:19'),
(5, '3', '10', 'Model Paper for Class 10th', 'Social science paper of class 10t students', 'd41d8cd98f00b204e9800998ecf8427e1654247890.pdf', NULL, NULL, NULL, '2022-06-03 09:18:10'),
(6, '3', '11', 'Geography Question Paper', 'Model paper of geogarpy', 'd41d8cd98f00b204e9800998ecf8427e1654247981.pdf', NULL, NULL, NULL, '2022-06-03 09:19:41'),
(7, '16', '14', 'Hindi Chapter 1 ', 'Hindi Chapter notes', 'd41d8cd98f00b204e9800998ecf8427e1654948054.pdf', NULL, NULL, NULL, '2022-06-11 11:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubject`
--

CREATE TABLE `tblsubject` (
  `ID` int(5) NOT NULL,
  `ClassID` int(5) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubject`
--

INSERT INTO `tblsubject` (`ID`, `ClassID`, `Subject`, `CreationDate`) VALUES
(1, 1, 'Math I', '2022-06-02 09:57:08'),
(2, 1, 'Math II', '2022-06-02 09:57:18'),
(3, 1, 'Physics', '2022-06-02 09:57:29'),
(4, 1, 'Chemistry', '2022-06-02 09:57:50'),
(5, 1, 'Biology', '2022-06-02 09:58:01'),
(6, 2, 'Math', '2022-06-02 09:58:08'),
(7, 2, 'Physics', '2022-06-02 09:58:21'),
(8, 2, 'Chemistry', '2022-06-02 09:58:30'),
(9, 3, 'Math', '2022-06-02 09:58:38'),
(10, 3, 'Social Science', '2022-06-02 09:58:56'),
(11, 3, 'Geography', '2022-06-02 09:59:05'),
(14, 16, 'Hindi', '2022-06-11 11:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(5) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `ClassID` int(5) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNumber`, `Email`, `ClassID`, `Password`, `RegDate`) VALUES
(1, 'Abir Singh', 9798789789, 'abir@gmail.com', 2, '202cb962ac59075b964b07152d234b70', '2022-06-06 13:36:36'),
(2, 'Anuj Kumar', 1425362514, 'ak@gmail.com', 16, 'f925916e2754e5e03f75dd58a5733251', '2022-06-11 11:48:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubject`
--
ALTER TABLE `tblsubject`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblsubject`
--
ALTER TABLE `tblsubject`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
