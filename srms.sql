-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2019 at 11:30 AM
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
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2019-10-13 03:39:39'),
(2, 'admin1', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-09-05 04:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) NOT NULL,
  `Section` varchar(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'First', 1, 'A', '2019-09-05 04:48:02', '2019-09-05 04:48:02'),
(2, 'First', 1, 'B', '2019-09-05 05:26:43', '2019-09-05 05:26:43'),
(3, 'Second', 2, 'A', '2019-09-06 16:20:59', '2019-09-06 16:20:59'),
(4, 'Second', 2, 'B', '2019-10-13 08:43:54', '2019-10-13 08:43:54'),
(5, 'Third', 3, 'A', '2019-10-18 09:43:18', '2019-10-18 09:43:18'),
(6, 'Third', 3, 'B', '2019-10-18 09:43:35', '2019-10-18 09:43:35'),
(7, 'Fourth', 4, 'A', '2019-10-18 09:43:52', '2019-10-18 09:43:52'),
(8, 'Fourth', 4, 'B', '2019-10-18 09:44:07', '2019-10-18 09:44:07'),
(9, 'Fifth', 5, 'A', '2019-10-18 09:44:21', '2019-10-18 09:44:21'),
(10, 'Fifth', 5, 'B', '2019-10-18 09:44:35', '2019-10-18 09:44:35'),
(11, 'Sixth', 6, 'A', '2019-10-18 09:44:54', '2019-10-18 09:44:54'),
(12, 'Sixth', 6, 'B', '2019-10-18 09:45:13', '2019-10-18 09:45:13'),
(13, 'Seventh', 7, 'A', '2019-10-18 09:45:27', '2019-10-18 09:45:27'),
(14, 'Seventh', 7, 'B', '2019-10-18 09:45:46', '2019-10-18 09:45:46'),
(15, 'Eight', 8, 'A', '2019-10-18 09:46:07', '2019-10-18 09:46:07'),
(16, 'Eight', 8, 'B', '2019-10-18 09:46:28', '2019-10-18 09:46:28'),
(17, 'first', 1, 'a', '2019-10-18 13:03:28', '2019-10-18 13:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(1, 2, 3, 2, 60, '2019-09-06 16:26:29', NULL),
(2, 2, 3, 1, 55, '2019-09-06 16:26:29', NULL),
(3, 3, 3, 7, 55, '2019-10-18 09:36:26', NULL),
(4, 3, 3, 3, 45, '2019-10-18 09:36:26', NULL),
(5, 3, 3, 2, 65, '2019-10-18 09:36:26', NULL),
(6, 3, 3, 4, 65, '2019-10-18 09:36:27', NULL),
(7, 3, 3, 5, 85, '2019-10-18 09:36:27', NULL),
(8, 3, 3, 1, 45, '2019-10-18 09:36:27', NULL),
(9, 3, 3, 6, 55, '2019-10-18 09:36:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `RollId` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'niranjan', '1', 'niranjan@gmail.com', 'Male', '2019-10-01', 1, '2019-09-05 05:29:07', NULL, 1),
(2, 'niranjan', '1', 'nira@gmail.com', 'Male', '2019-12-31', 3, '2019-09-06 16:26:05', NULL, 1),
(3, 'ram', '15', 'asdad@asda.com', 'Male', '2019-08-29', 3, '2019-10-18 09:33:52', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(1, 3, 1, 0, '2019-09-06 16:24:40', '2019-09-06 16:24:40'),
(2, 3, 2, 1, '2019-09-06 16:24:49', '2019-09-06 16:24:49'),
(3, 3, 3, 1, '2019-10-18 09:34:32', '2019-10-18 09:34:32'),
(4, 3, 6, 1, '2019-10-18 09:34:49', '2019-10-18 09:34:49'),
(5, 3, 7, 0, '2019-10-18 09:35:11', '2019-10-18 09:35:11'),
(6, 3, 4, 1, '2019-10-18 09:35:20', '2019-10-18 09:35:20'),
(7, 3, 5, 1, '2019-10-18 09:35:32', '2019-10-18 09:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Principle Of Management 2', '001', '2019-09-06 16:22:44', '2019-09-06 16:22:44'),
(2, 'Basic Mathematics', '002', '2019-09-06 16:24:12', '2019-09-06 16:24:12'),
(3, ' English - I ', 'ENG 201', '2019-10-13 08:40:42', '2019-10-13 08:40:42'),
(4, 'Computer Information System', 'IT 211', '2019-10-13 08:41:45', '2019-10-13 08:41:45'),
(5, 'Digital Logic Design ', 'IT 212', '2019-10-13 08:42:21', '2019-10-13 08:42:21'),
(6, 'Principles of Management', 'MGT 201', '2019-10-13 08:42:54', '2019-10-13 08:42:54'),
(7, ' Basic Mathematics', 'MTH 201', '2019-10-13 08:43:25', '2019-10-13 08:43:25'),
(8, 'Basic Mathematics', '002', '2019-10-18 09:32:33', '2019-10-18 09:32:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
