-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Oct 18, 2018 at 05:09 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `passmanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `C_ID` int(5) NOT NULL,
  `C_NAME` char(20) NOT NULL,
  `C_ADDRESS` varchar(40) NOT NULL,
  `C_CONTACT_NUMBER` int(10) NOT NULL,
  `C_EMAIL` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`C_ID`, `C_NAME`, `C_ADDRESS`, `C_CONTACT_NUMBER`, `C_EMAIL`) VALUES
(1, 'google', '1600 Amphitheatre Parkway,Mountain View,', 2147483647, 'google@gmail.org.com'),
(2, 'amazon', 'Amazon.com, Inc. 410 Terry Ave N Seattle', 1830009009, 'amazon@org.com');

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `D_ID` int(5) NOT NULL,
  `OS` char(20) DEFAULT NULL,
  `BROWSER_NAME` char(10) DEFAULT NULL,
  `BROWSER_VERSION` char(15) DEFAULT NULL,
  `IP_ADDRESS` char(20) DEFAULT NULL,
  `USER_ID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`D_ID`, `OS`, `BROWSER_NAME`, `BROWSER_VERSION`, `IP_ADDRESS`, `USER_ID`) VALUES
(1, 'linux', 'firefox', '405', '17242542', 1),
(2, 'windows', 'chrome', '7', '15655956', NULL),
(3, 'windows', 'chrome', '7', '15655956', NULL),
(4, '5.0', 'Chrome', '70.0.3538.67', '0:0:0:0:0:0:0:1', 8),
(5, 'Windows', 'Chrome', '70.0.3538.67', '0:0:0:0:0:0:0:1', 8);

-- --------------------------------------------------------

--
-- Table structure for table `master_account`
--

CREATE TABLE `master_account` (
  `M_ID` int(5) NOT NULL,
  `M_NAME` char(20) NOT NULL,
  `M_USERNAME` varchar(20) NOT NULL,
  `M_PASSWORD` varchar(150) NOT NULL,
  `C_ID` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_account`
--

INSERT INTO `master_account` (`M_ID`, `M_NAME`, `M_USERNAME`, `M_PASSWORD`, `C_ID`) VALUES
(1, 'Arbaz', 'Arbaz Shaikh', 'Arbaz@12Shaikh', 1),
(5, 'Sohail shaikh', 'Sohail123', '34cb887a9588579a56c14f765867ad0e6ee2a1f07f093a60dbcf259e7b7f330f35f6b0c8b5717b6a4dcad550b38e74fe28b373ee91d8d3a9d243af4712808869', NULL),
(6, 'Arbaz', 'Arbazsk786', '!@#122+_fe938e3bc6b63c5fe91e4b28b9bcac682e190707781889737f0a1a6bc2d76ea75ee1445da9768f58e6a7f30a02e812cba9c4810e8d4a2602b94c10da09467e43!@#122+_', NULL),
(7, 'Rehan', 'Rehan123', '4d76a594f106297112c9125cca13395495812a76ea71fe16db56a12cf884aba7817bc6534244d1cf8a3b3afb2b2df7d00f6f99f36b491021d6afd515969da906', NULL),
(8, 'Arbazsk', 'Arbaz', 'b8d9082b5ad0f7db947667fa3588546f632cd4ff35c41c6708de91e00479041cdc32d4ae763a664833887f20f9966fda984b69639bf365660d269e8c2632109d', NULL),
(9, 'Shahabaz shaikh', 'Shahabaz', '1a023ad5086a6ff19b2ee1423e11f288ce269a63c3f242cce9508597e79abf87adec203195833a6586af89e29f1f25db996cfd6eac636351d1986471c2104086', NULL),
(10, 'Shaikh Sufiyan', 'Sufiyan', 'ad670f9952742d8f0771a6e0fc73e16c77bde50719ee948f63e3b9b3f7c13d693319eca61b78fe9395806632b1dec1cba1b8339b76474bb2fc3ec07cc39b6d4b', NULL),
(11, 'Faizan shaikh', 'Faizan', '1b6807b71c0807c2acfa0e2d4adcf304d53c02ee13e938f83b7011a818479319c30d00cfe0bbc20591399334af22f8c0748e840c827fce51168dc419a64915c6', NULL),
(12, 'shahabaz', 'shahabaz', 'shahabaz', NULL),
(13, 'mark john', 'mark123', '123456', NULL),
(18, 'sufiyan', 'sufiyan', '123456', NULL),
(19, 'sufiyan', 'sufiyan', '123456', NULL),
(20, 'sufiyan', 'sufiyan', '123456', NULL),
(21, 'sufiyan', 'sufiyan', 'asdfgh', NULL),
(22, 'sufiyan', 'sufiyan', 'sufiyan', NULL),
(23, 'sufiyan', 'sufiyan', 'sufiyan', NULL),
(24, 'sufiyan', 'sufiyan', 'sufiyan', NULL),
(25, 'sufiyan', 'sufiyan', 'sufiyan', NULL),
(26, 'sufiyan', 'sufiyan', 'sufiyan', NULL),
(27, 'sufiyan', 'sufiyan', 'sufiyan', NULL),
(28, 'sufiyan', 'sufiyan', 'qwerty', NULL),
(29, 'mohammed khan', 'mnk123', 'mnk123', NULL),
(30, 'virat kholi', 'virat', 'virat', NULL),
(31, 'vikram', 'viku12', 'viku12', NULL),
(32, 'qwerty', 'qwerty', 'qwerty', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_account`
--

CREATE TABLE `site_account` (
  `S_ID` int(5) NOT NULL,
  `USERNAME` char(20) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `WEBSITE_NAME` char(40) DEFAULT NULL,
  `WEBSITE_URL` varchar(40) NOT NULL,
  `USER_ID` int(5) DEFAULT NULL,
  `M_ID` int(5) DEFAULT NULL,
  `NOTES` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_account`
--

INSERT INTO `site_account` (`S_ID`, `USERNAME`, `PASSWORD`, `WEBSITE_NAME`, `WEBSITE_URL`, `USER_ID`, `M_ID`, `NOTES`) VALUES
(1, 'Arbazsk', 'arbaz12345', 'codeAcedemy', 'www.codeAcedemy.com', 1, 1, NULL),
(3, 'shahabaz', 'shahabaz123', 'mi.com', 'https://www.mi.co.in', NULL, 9, 'mi account\r\n'),
(4, 'Arbaz_sk', 'anonymous', 'Flipkart', 'https://flipkart.com', NULL, 8, ''),
(5, 'Arbaz123', 'Arbaz123', 'Google', 'https://www.google.co.in', NULL, 8, 'Google Account 1'),
(6, 'arbazsk', 'arbazsk', 'Amazon', 'https://www.amazon.com', NULL, 8, 'Amazon account\r\n'),
(7, 'Arbazsk', 'arbazsk', 'Github', 'https://www.github.com', NULL, 8, 'Github Account '),
(8, 'arbaz1410', 'arbaz1410', 'Google', 'https://www.google.com', NULL, 1, 'google account 5'),
(12, 'Arbazshaikh1289', 'Arbaz54687', 'Amazon', 'https://www.amazon.co.in', NULL, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USER_ID` int(5) NOT NULL,
  `UNAME` char(20) NOT NULL,
  `UPHONE` int(10) NOT NULL,
  `UEMAIL` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `UNAME`, `UPHONE`, `UEMAIL`) VALUES
(1, 'ARBAZ', 1234567890, 'ARBAZ123@GMAIL.COM'),
(2, 'SOHAIL', 2147483647, 'SOHAIL456@GMAIL.COM'),
(3, 'REHAN', 1336896545, 'REHAN3259@GMAIL.COM'),
(7, 'virat kholi', 1264878652, 'virat@gmail.com'),
(8, 'qwerty', 1234567897, 'qwerty@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`D_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `master_account`
--
ALTER TABLE `master_account`
  ADD PRIMARY KEY (`M_ID`),
  ADD KEY `C_ID` (`C_ID`);

--
-- Indexes for table `site_account`
--
ALTER TABLE `site_account`
  ADD PRIMARY KEY (`S_ID`),
  ADD KEY `USER_ID` (`USER_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `C_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `device`
--
ALTER TABLE `device`
  MODIFY `D_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `master_account`
--
ALTER TABLE `master_account`
  MODIFY `M_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `site_account`
--
ALTER TABLE `site_account`
  MODIFY `S_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `USER_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `device`
--
ALTER TABLE `device`
  ADD CONSTRAINT `device_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`);

--
-- Constraints for table `master_account`
--
ALTER TABLE `master_account`
  ADD CONSTRAINT `master_account_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `company` (`C_ID`);

--
-- Constraints for table `site_account`
--
ALTER TABLE `site_account`
  ADD CONSTRAINT `site_account_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`),
  ADD CONSTRAINT `site_account_ibfk_2` FOREIGN KEY (`M_ID`) REFERENCES `master_account` (`M_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
