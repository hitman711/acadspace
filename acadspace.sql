-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2015 at 05:45 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `acadspace`
--

-- --------------------------------------------------------

--
-- Table structure for table `acad_record`
--

CREATE TABLE IF NOT EXISTS `acad_record` (
`id` int(255) NOT NULL,
  `user_code` varchar(255) NOT NULL,
  `form_field_record` varchar(255) NOT NULL,
  `form_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `active_user`
--

CREATE TABLE IF NOT EXISTS `active_user` (
`id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `active_code` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `active_user`
--

INSERT INTO `active_user` (`id`, `username`, `unique_code`, `active_code`) VALUES
(3, 'siddhesh', 'krT3QxCML5fGPDb', 'wyCPKnOrD0');

-- --------------------------------------------------------

--
-- Table structure for table `analytics_question_record`
--

CREATE TABLE IF NOT EXISTS `analytics_question_record` (
`ID` int(100) NOT NULL,
  `Analytic_Question` varchar(2000) NOT NULL,
  `Script_Name` varchar(255) NOT NULL,
  `form_dependancy` varchar(500) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analytics_question_record`
--

INSERT INTO `analytics_question_record` (`ID`, `Analytic_Question`, `Script_Name`, `form_dependancy`) VALUES
(1, 'How i am performing in my Engineering Exams', 'eng_exam01.py', '[   "0301******" ]');

-- --------------------------------------------------------

--
-- Table structure for table `comp_gate`
--

CREATE TABLE IF NOT EXISTS `comp_gate` (
`id` int(255) NOT NULL,
  `user_code` varchar(255) NOT NULL,
  `form_code` varchar(255) NOT NULL,
  `attempt` varchar(255) DEFAULT '0',
  `data_field_1` varchar(255) DEFAULT NULL,
  `data_field_2` varchar(255) DEFAULT NULL,
  `data_field_3` varchar(255) DEFAULT NULL,
  `data_field_4` varchar(255) DEFAULT NULL,
  `data_field_5` varchar(255) DEFAULT NULL,
  `data_field_6` varchar(255) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data_field_7` varchar(150) DEFAULT NULL,
  `data_field_8` varchar(150) DEFAULT NULL,
  `data_field_9` varchar(150) DEFAULT NULL,
  `data_field_10` varchar(150) DEFAULT NULL,
  `data_field_11` varchar(150) DEFAULT NULL,
  `data_field_12` varchar(150) DEFAULT NULL,
  `total` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comp_gre`
--

CREATE TABLE IF NOT EXISTS `comp_gre` (
`id` int(255) NOT NULL,
  `user_code` varchar(255) NOT NULL,
  `form_code` varchar(255) NOT NULL,
  `attempt` varchar(255) DEFAULT '0',
  `data_field_1` varchar(255) DEFAULT NULL,
  `data_field_2` varchar(255) DEFAULT NULL,
  `data_field_3` varchar(255) DEFAULT NULL,
  `data_field_4` varchar(255) DEFAULT NULL,
  `data_field_5` varchar(255) DEFAULT NULL,
  `data_field_6` varchar(255) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data_field_7` varchar(150) DEFAULT NULL,
  `data_field_8` varchar(150) DEFAULT NULL,
  `data_field_9` varchar(150) DEFAULT NULL,
  `data_field_10` varchar(150) DEFAULT NULL,
  `data_field_11` varchar(150) DEFAULT NULL,
  `data_field_12` varchar(150) DEFAULT NULL,
  `total` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comp_gre`
--

INSERT INTO `comp_gre` (`id`, `user_code`, `form_code`, `attempt`, `data_field_1`, `data_field_2`, `data_field_3`, `data_field_4`, `data_field_5`, `data_field_6`, `last_modified`, `data_field_7`, `data_field_8`, `data_field_9`, `data_field_10`, `data_field_11`, `data_field_12`, `total`) VALUES
(1, 'krT3QxCML5fGPDb', '501', '1', '1', '2', '3', NULL, NULL, NULL, '2015-04-08 08:50:16', NULL, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `comp_toefl`
--

CREATE TABLE IF NOT EXISTS `comp_toefl` (
`id` int(255) NOT NULL,
  `user_code` varchar(255) NOT NULL,
  `form_code` varchar(255) NOT NULL,
  `attempt` varchar(255) DEFAULT '0',
  `data_field_1` varchar(255) DEFAULT NULL,
  `data_field_2` varchar(255) DEFAULT NULL,
  `data_field_3` varchar(255) DEFAULT NULL,
  `data_field_4` varchar(255) DEFAULT NULL,
  `data_field_5` varchar(255) DEFAULT NULL,
  `data_field_6` varchar(255) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data_field_7` varchar(150) DEFAULT NULL,
  `data_field_8` varchar(150) DEFAULT NULL,
  `data_field_9` varchar(150) DEFAULT NULL,
  `data_field_10` varchar(150) DEFAULT NULL,
  `data_field_11` varchar(150) DEFAULT NULL,
  `data_field_12` varchar(150) DEFAULT NULL,
  `total` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comp_toefl`
--

INSERT INTO `comp_toefl` (`id`, `user_code`, `form_code`, `attempt`, `data_field_1`, `data_field_2`, `data_field_3`, `data_field_4`, `data_field_5`, `data_field_6`, `last_modified`, `data_field_7`, `data_field_8`, `data_field_9`, `data_field_10`, `data_field_11`, `data_field_12`, `total`) VALUES
(1, 'krT3QxCML5fGPDb', '502', '1', '2015-04-15', '5', '5', '5', '5', NULL, '2015-04-22 13:01:23', NULL, NULL, NULL, NULL, NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
`id` int(100) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `salt` varchar(30) NOT NULL,
  `status` varchar(150) NOT NULL,
  `unique_code` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fname`, `lname`, `email`, `username`, `password`, `salt`, `status`, `unique_code`) VALUES
(33, 'siddhesh', 'gore', 'sidh711@gmail.com', 'siddhesh', '65ded5353c5ee48d0b7d48c591b8f430', '9TQxF', 'activated', 'krT3QxCML5fGPDb'),
(34, 'ganesh', 'gore', 'sidh711@hotmail.com', 'siddhesh123', '202cb962ac59075b964b07152d234b70', 'BFuE4', 'activated', 'e1MFjZzOocq8ufL');

-- --------------------------------------------------------

--
-- Table structure for table `user_analytic_stat`
--

CREATE TABLE IF NOT EXISTS `user_analytic_stat` (
`ID` int(100) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `record_update_stat` varchar(50) NOT NULL,
  `record_update_info` varchar(5000) NOT NULL,
  `Completed_Analytics` varchar(5000) DEFAULT '0',
  `Partial_Analytics` varchar(5000) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_analytic_stat`
--

INSERT INTO `user_analytic_stat` (`ID`, `user_id`, `record_update_stat`, `record_update_info`, `Completed_Analytics`, `Partial_Analytics`) VALUES
(6, 'krT3QxCML5fGPDb', '12', '{"Total_Edited_Forms":12,"Edited_Form_List":["301010103","301010104","301010106","301010107","301010108","301010105","301010101","50301","50301","501","502","502"]}', '../UserJson/Completed/krT3QxCML5fGPDb.json', '../UserJson/Partial/krT3QxCML5fGPDbp.json');

-- --------------------------------------------------------

--
-- Table structure for table `user_filled_form`
--

CREATE TABLE IF NOT EXISTS `user_filled_form` (
`id` int(255) NOT NULL,
  `user_code` varchar(255) NOT NULL,
  `form_filled` varchar(3000) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_filled_form`
--

INSERT INTO `user_filled_form` (`id`, `user_code`, `form_filled`, `last_modified`) VALUES
(1, 'krT3QxCML5fGPDb', '{"Parameter":{"Total_Simple_Exam_Field":7,"Total_Comp_Exam_Field":2},"Simple_Exam":[{"Form_Code":"301010105","Table_name":"user_record"},{"Form_Code":"301010102","Table_name":"user_record"},{"Form_Code":"301010103","Table_name":"user_record"},{"Form_Code":"301010104","Table_name":"user_record"},{"Form_Code":"301010106","Table_name":"user_record"},{"Form_Code":"301010107","Table_name":"user_record"},{"Form_Code":"301010108","Table_name":"user_record"}],"Comp_Exam":[{"Form_Code":"501","Table_name":"comp_gre","Attempt":1},{"Form_Code":"502","Table_name":"comp_toefl","Attempt":1}]}', '2015-04-22 15:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_record`
--

CREATE TABLE IF NOT EXISTS `user_record` (
`id` int(255) NOT NULL,
  `user_code` char(255) NOT NULL,
  `form_code` text NOT NULL,
  `data_field_8` varchar(255) DEFAULT NULL,
  `data_field_1` varchar(255) DEFAULT NULL,
  `data_field_2` varchar(255) DEFAULT NULL,
  `data_field_3` varchar(255) DEFAULT NULL,
  `data_field_4` varchar(255) DEFAULT NULL,
  `data_field_5` varchar(255) DEFAULT NULL,
  `data_field_6` varchar(255) DEFAULT NULL,
  `data_field_7` varchar(255) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data_field_9` varchar(255) DEFAULT NULL,
  `data_field_10` varchar(255) DEFAULT NULL,
  `data_field_11` varchar(255) DEFAULT NULL,
  `data_field_12` varchar(255) DEFAULT NULL,
  `attempt` int(30) DEFAULT '0',
  `total` varchar(255) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_record`
--

INSERT INTO `user_record` (`id`, `user_code`, `form_code`, `data_field_8`, `data_field_1`, `data_field_2`, `data_field_3`, `data_field_4`, `data_field_5`, `data_field_6`, `data_field_7`, `last_modified`, `data_field_9`, `data_field_10`, `data_field_11`, `data_field_12`, `attempt`, `total`) VALUES
(6, 'krT3QxCML5fGPDb', '301010105', 'a', 'a', 'b', 'o', 'd', 'e', 'p', 'o', '2015-04-16 14:17:49', 'a', 'p', 'd', NULL, 0, '7.23'),
(11, 'krT3QxCML5fGPDb', '301010102', NULL, 'a', 'a', 'a', 'a', 'a', 'a', 'a', '2015-04-20 18:40:55', NULL, NULL, NULL, NULL, 0, '9.00'),
(12, 'krT3QxCML5fGPDb', '301010103', NULL, 'o', 'a', 'o', 'a', 'b', 'c', NULL, '2015-04-21 10:10:55', NULL, NULL, NULL, NULL, 0, '8.93'),
(13, 'krT3QxCML5fGPDb', '301010104', NULL, 'a', 'b', 'a', 'a', 'b', 'a', NULL, '2015-04-21 10:11:40', NULL, NULL, NULL, NULL, 0, '8.64'),
(14, 'krT3QxCML5fGPDb', '301010106', 'b', 'o', 'a', 'o', 'a', 'o', 'd', 'a', '2015-04-21 10:11:58', 'c', 'a', NULL, NULL, 0, '9.24'),
(15, 'krT3QxCML5fGPDb', '301010107', 'a', 'a', 'o', 'a', 'b', 'c', 'd', 'e', '2015-04-21 10:12:22', 'o', 'p', 'a', NULL, 0, '7.07'),
(16, 'krT3QxCML5fGPDb', '301010108', 'a', 'o', 'o', 'o', 'o', 'a', 'a', 'a', '2015-04-21 10:12:37', 'a', NULL, NULL, NULL, 0, '9.62');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acad_record`
--
ALTER TABLE `acad_record`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `active_user`
--
ALTER TABLE `active_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`,`unique_code`), ADD UNIQUE KEY `acative_code` (`active_code`);

--
-- Indexes for table `analytics_question_record`
--
ALTER TABLE `analytics_question_record`
 ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `comp_gate`
--
ALTER TABLE `comp_gate`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comp_gre`
--
ALTER TABLE `comp_gre`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comp_toefl`
--
ALTER TABLE `comp_toefl`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`,`username`), ADD UNIQUE KEY `unique_code` (`unique_code`), ADD UNIQUE KEY `unique_code_2` (`unique_code`), ADD UNIQUE KEY `unique_code_3` (`unique_code`);

--
-- Indexes for table `user_analytic_stat`
--
ALTER TABLE `user_analytic_stat`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `user_filled_form`
--
ALTER TABLE `user_filled_form`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_record`
--
ALTER TABLE `user_record`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acad_record`
--
ALTER TABLE `acad_record`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `active_user`
--
ALTER TABLE `active_user`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `analytics_question_record`
--
ALTER TABLE `analytics_question_record`
MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `comp_gate`
--
ALTER TABLE `comp_gate`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `comp_gre`
--
ALTER TABLE `comp_gre`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `comp_toefl`
--
ALTER TABLE `comp_toefl`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `user_analytic_stat`
--
ALTER TABLE `user_analytic_stat`
MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_filled_form`
--
ALTER TABLE `user_filled_form`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_record`
--
ALTER TABLE `user_record`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
