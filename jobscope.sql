-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2019 at 07:24 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jobscope`
--
CREATE DATABASE IF NOT EXISTS `jobscope` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jobscope`;

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

DROP TABLE IF EXISTS `applicants`;
CREATE TABLE IF NOT EXISTS `applicants` (
`a_id` int(4) NOT NULL,
  `a_uid` varchar(30) NOT NULL,
  `a_jid` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`a_id`, `a_uid`, `a_jid`) VALUES
(17, '11', '15'),
(18, '10', '18'),
(19, '10', '15'),
(20, '12', '19'),
(21, '12', '17'),
(22, '12', '20'),
(23, '10', '17'),
(24, '14', '22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
`cat_id` int(4) NOT NULL,
  `cat_nm` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_nm`) VALUES
(10, 'Import-Export'),
(11, 'IT Software'),
(12, 'IT Hardware'),
(14, 'Banking'),
(20, 'Finance');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
`cont_id` int(4) NOT NULL,
  `cont_fnm` varchar(30) NOT NULL,
  `cont_email` varchar(20) NOT NULL,
  `cont_query` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cont_id`, `cont_fnm`, `cont_email`, `cont_query`) VALUES
(14, 'riddhi', 'riddhi_patel@gmail.c', 'xyz'),
(15, 'darshana', 'darshana@yahoo.com', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
`ee_id` int(4) NOT NULL,
  `ee_fnm` varchar(30) NOT NULL,
  `ee_pwd` varchar(10) NOT NULL,
  `ee_gender` varchar(1) NOT NULL,
  `ee_email` varchar(30) NOT NULL,
  `ee_add` varchar(300) NOT NULL,
  `ee_phno` varchar(10) NOT NULL,
  `ee_mobileno` varchar(10) NOT NULL,
  `ee_current_location` varchar(20) NOT NULL,
  `ee_annualsalary` int(10) NOT NULL,
  `ee_current_industry` varchar(20) NOT NULL,
  `ee_qualification` varchar(10) NOT NULL,
  `ee_profile` varchar(300) NOT NULL,
  `ee_resume` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`ee_id`, `ee_fnm`, `ee_pwd`, `ee_gender`, `ee_email`, `ee_add`, `ee_phno`, `ee_mobileno`, `ee_current_location`, `ee_annualsalary`, `ee_current_industry`, `ee_qualification`, `ee_profile`, `ee_resume`) VALUES
(10, 'megha', 'megha11', 'f', 'megha_patel@gmail.com', '"megha",2nd floor ,rajkot', '0281257254', '9934235456', 'rajkot', 45000, 'infosys', 'mba', 'xyz', 'uploads/megha.doc'),
(11, 'darshana', 'darshana', 'f', 'darshana_\\@yahoo.com', '"darshana",ahemadabad', '0792345672', '9423456789', 'mumbai', 35000, 'tcs', 'mtec', 'xyz', 'uploads/darshana.doc'),
(12, 'parth', 'parth1111', 'M', 'parth@gmail.com', '"parth",bhavnagar.', '0278213355', '9923555676', 'bhavnagar', 40000, 'tata', 'mba', 'xyz', 'uploads/parth.doc'),
(13, 'samir', '123123123', 'M', 'samir@gmail.com', '"samin",borivaly,mumbai.', '0112345678', '9987766554', 'mumbai', 40000, 'birla', 'mba', 'xyz', 'uploads/samin.doc'),
(14, 'Atul', 'Scooty', 'M', 'vashavj@gmail.com', '12,Atul', '1234567890', '3454525423', 'fsdfa', 123234, 'IT', 'BCA', 'BCA', 'uploads/200805ICIM_eVoting.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

DROP TABLE IF EXISTS `employers`;
CREATE TABLE IF NOT EXISTS `employers` (
`er_id` int(4) NOT NULL,
  `er_fnm` varchar(30) NOT NULL,
  `er_pwd` varchar(10) NOT NULL,
  `er_company` varchar(30) NOT NULL,
  `er_add` varchar(100) NOT NULL,
  `er_ph` varchar(10) NOT NULL,
  `er_email` varchar(30) NOT NULL,
  `er_company_profile` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`er_id`, `er_fnm`, `er_pwd`, `er_company`, `er_add`, `er_ph`, `er_email`, `er_company_profile`) VALUES
(12, 'admin', '111', 'infosys', '"infosys",mumbai.', '0112345678', 'infosys_company@gmail.com', 'abc'),
(13, 'riddhi', '1234567', 'infosys', 'infosys,mumbai.', '9925361132', 'riddhi@gmail.com', 'abc'),
(14, 'vishwa', '12345678', 'tcs', '"tcs",gandinagar.', '0792143576', 'vishwa_patel@gmail.com', 'abc'),
(15, 'rushika', '12121212', 'patny', 'patnyy,gandhinagar.', '0798765432', 'patny_company@yahoo.com', 'abc'),
(16, 'sagar', '2222222', 'tcs', 'tcs,ahemadabad', '0792345677', 'sagar@gmail.com', 'dsfg'),
(17, 'admin', '1234', 'hp', 'hp', '6732777777', 'vashavj@gmail.com', 'dgfkd');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
`j_id` int(4) NOT NULL,
  `j_category` varchar(40) NOT NULL,
  `j_owner_name` varchar(30) NOT NULL,
  `j_title` varchar(30) NOT NULL,
  `j_hours` float(3,1) NOT NULL,
  `j_salary` int(10) NOT NULL,
  `j_experience` int(3) NOT NULL,
  `j_discription` varchar(300) NOT NULL,
  `j_city` varchar(20) NOT NULL,
  `j_active` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`j_id`, `j_category`, `j_owner_name`, `j_title`, `j_hours`, `j_salary`, `j_experience`, `j_discription`, `j_city`, `j_active`) VALUES
(15, 'IT Software', 'riddhi', 'need for the manager', 10.0, 40000, 2, 'abc', 'pune', 1),
(17, 'Banking', 'riddhi', 'need for the ca', 8.0, 45000, 4, 'dff', 'ahmedabad', 1),
(18, 'IT Hardware', 'vishwa', 'need for the manager', 10.0, 34000, 2, 'fdrf', 'pune', 1),
(19, 'Import-Export', 'vishwa', 'need for thr tredar', 12.0, 25000, 3, 'sdsdf', 'rajkot', 1),
(20, 'Finance', 'rushika', 'need for the assistent', 8.0, 34667, 3, 'wrert', 'pune', 1),
(21, 'Banking', 'rushika', 'need for the manager', 10.0, 45000, 5, 'dsd', 'kolkota', 1),
(22, 'Import-Export', 'riddhi', 'need for the assistent', 12.0, 10000, 1, 'abv', 'porbunder', 1),
(23, 'IT Software', 'riddhi', 'QA', 8.0, 80000, 0, 'Kuch bhi', 'Jaipur', 1),
(24, 'IT Software', 'riddhi', 'Programmer', 9.0, 90000, 1, 'need of programmer', 'Jaipur', 1),
(25, 'Import-Export', 'sagar', 'Programmer', 9.0, 748324, 1, 'bbjhbk', 'Jaipur', 1),
(26, 'IT Software', 'sagar', 'Programmer', 9.0, 90000, 1, 'njk', 'Jaipur', 1),
(27, 'Banking', 'riddhi', 'Banker', 8.0, 86000, 1, 'kuch bhi', 'Jaipur', 1),
(28, 'IT Software', 'riddhi', 'Graphic Designer', 6.0, 90000, 0, 'Must know designing basics.', 'Pune', 1),
(29, 'Finance', 'riddhi', 'Financial Advisor', 5.0, 100000, 3, 'Very well knowledge of all the financial conditions', 'Mumbai', 0),
(30, 'IT Software', 'riddhi', 'QA', 6.0, 75000, 2, 'Knowledge of system designing.', 'Bengaluru', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
 ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
 ADD PRIMARY KEY (`cont_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
 ADD PRIMARY KEY (`ee_id`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
 ADD PRIMARY KEY (`er_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
 ADD PRIMARY KEY (`j_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
MODIFY `a_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `cat_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
MODIFY `cont_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
MODIFY `ee_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
MODIFY `er_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
MODIFY `j_id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
