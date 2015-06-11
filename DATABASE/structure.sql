-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2015 at 05:38 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
`id` int(100) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `salt` varchar(30) NOT NULL,
  `status` varchar(150) NOT NULL,
  `unique_code` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class_record`
--

CREATE TABLE IF NOT EXISTS `class_record` (
`id` int(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `info_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comp_exam_mapping`
--

CREATE TABLE IF NOT EXISTS `comp_exam_mapping` (
`id` int(255) NOT NULL,
  `form_code` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `exam_name` varchar(255) DEFAULT NULL,
  `exam_type` varchar(255) DEFAULT NULL,
  `multiple` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctorate`
--

CREATE TABLE IF NOT EXISTS `doctorate` (
`id` int(255) NOT NULL,
  `university name` int(255) NOT NULL,
  `college name` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `edit_profile`
--

CREATE TABLE IF NOT EXISTS `edit_profile` (
  `id` int(255) NOT NULL,
  `primary` varchar(255) NOT NULL,
  `secondary` varchar(255) NOT NULL,
  `undergraduate` varchar(255) NOT NULL,
  `postgraduate` varchar(255) NOT NULL,
  `doctorate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `form_field`
--

CREATE TABLE IF NOT EXISTS `form_field` (
`id` int(255) NOT NULL,
  `total_field` int(10) NOT NULL,
  `form_id` char(50) NOT NULL,
  `form_field` varchar(8000) NOT NULL,
  `security` varchar(255) DEFAULT NULL,
  `field_name` text,
  `form_title` varchar(300) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE IF NOT EXISTS `institute` (
`id` int(100) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `salt` varchar(30) NOT NULL,
  `status` varchar(150) NOT NULL,
  `unique_code` varchar(45) NOT NULL,
  `university name` varchar(255) DEFAULT NULL,
  `institute name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `institute_record`
--

CREATE TABLE IF NOT EXISTS `institute_record` (
`id` int(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `info_link` varchar(255) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `level0`
--

CREATE TABLE IF NOT EXISTS `level0` (
`id` int(150) NOT NULL,
  `Level_Data` char(150) NOT NULL,
  `Level_Code` char(150) NOT NULL,
  `Next_Level` int(20) NOT NULL,
  `Next_Table` char(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `level1`
--

CREATE TABLE IF NOT EXISTS `level1` (
`id` int(255) NOT NULL,
  `Parent_Code` char(255) DEFAULT NULL,
  `Level_Data` varchar(150) NOT NULL,
  `Level_Code` varchar(150) NOT NULL,
  `Next_Table` char(10) NOT NULL,
  `Next_Level` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `level2`
--

CREATE TABLE IF NOT EXISTS `level2` (
`id` int(255) NOT NULL,
  `Parent_Code` char(255) DEFAULT NULL,
  `Level_Data` varchar(150) NOT NULL,
  `Level_Code` varchar(150) NOT NULL,
  `Next_Table` char(10) NOT NULL,
  `Next_Level` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `level3`
--

CREATE TABLE IF NOT EXISTS `level3` (
`id` int(255) NOT NULL,
  `Parent_Code` char(255) DEFAULT NULL,
  `Level_Data` varchar(150) NOT NULL,
  `Level_Code` varchar(150) NOT NULL,
  `Next_Table` char(10) NOT NULL,
  `Next_Level` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `level4`
--

CREATE TABLE IF NOT EXISTS `level4` (
`id` int(255) NOT NULL,
  `Parent_Code` char(255) DEFAULT NULL,
  `Level_Data` varchar(150) NOT NULL,
  `Level_Code` varchar(150) NOT NULL,
  `Next_Table` char(10) NOT NULL,
  `Next_Level` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `postgraduate`
--

CREATE TABLE IF NOT EXISTS `postgraduate` (
`id` int(255) NOT NULL,
  `university name` varchar(255) NOT NULL,
  `college name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `primary`
--

CREATE TABLE IF NOT EXISTS `primary` (
`id` int(255) NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `board name` varchar(255) NOT NULL,
  `institute name` varchar(255) NOT NULL,
  `goal` varchar(155) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `primary_record`
--

CREATE TABLE IF NOT EXISTS `primary_record` (
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=1700 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `secondary`
--

CREATE TABLE IF NOT EXISTS `secondary` (
`id` int(255) NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `education type` varchar(100) NOT NULL,
  `board name` varchar(255) NOT NULL,
  `institute name` varchar(255) NOT NULL,
  `goal` varchar(155) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `secondary_record`
--

CREATE TABLE IF NOT EXISTS `secondary_record` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_record`
--

CREATE TABLE IF NOT EXISTS `student_record` (
`id` int(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `info_link` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_type`
--

CREATE TABLE IF NOT EXISTS `sub_type` (
`id` int(255) NOT NULL,
  `form_no` varchar(255) NOT NULL,
  `sub_type` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate`
--

CREATE TABLE IF NOT EXISTS `undergraduate` (
`id` int(255) NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `university name` varchar(255) NOT NULL,
  `institute name` varchar(255) NOT NULL,
  `goal` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1662 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate_record`
--

CREATE TABLE IF NOT EXISTS `undergraduate_record` (
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
  `data_field_13` varchar(50) DEFAULT NULL,
  `data_field_14` varchar(50) DEFAULT NULL,
  `data_field_15` varchar(50) DEFAULT NULL,
  `attempt` int(30) DEFAULT '0',
  `total` varchar(255) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=13492 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=7096 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_filled_form`
--

CREATE TABLE IF NOT EXISTS `user_filled_form` (
`id` int(255) NOT NULL,
  `user_code` varchar(255) NOT NULL,
  `form_filled` varchar(3000) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7294 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
`id` int(255) NOT NULL,
  `user_code` varchar(500) NOT NULL,
  `primary` varchar(1000) NOT NULL,
  `secondary` varchar(1000) DEFAULT NULL,
  `undergraduate` varchar(1000) DEFAULT NULL,
  `postgraduation` varchar(1000) DEFAULT NULL,
  `doctorate` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `variable1`
--

CREATE TABLE IF NOT EXISTS `variable1` (
`id` int(150) NOT NULL,
  `sub_variable` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

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
-- Indexes for table `class`
--
ALTER TABLE `class`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`,`username`), ADD UNIQUE KEY `unique_code` (`unique_code`), ADD UNIQUE KEY `unique_code_2` (`unique_code`), ADD UNIQUE KEY `unique_code_3` (`unique_code`);

--
-- Indexes for table `class_record`
--
ALTER TABLE `class_record`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comp_exam_mapping`
--
ALTER TABLE `comp_exam_mapping`
 ADD PRIMARY KEY (`id`);

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
-- Indexes for table `doctorate`
--
ALTER TABLE `doctorate`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edit_profile`
--
ALTER TABLE `edit_profile`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_field`
--
ALTER TABLE `form_field`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institute`
--
ALTER TABLE `institute`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`,`username`), ADD UNIQUE KEY `unique_code` (`unique_code`), ADD UNIQUE KEY `unique_code_2` (`unique_code`), ADD UNIQUE KEY `unique_code_3` (`unique_code`);

--
-- Indexes for table `institute_record`
--
ALTER TABLE `institute_record`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `level0`
--
ALTER TABLE `level0`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level1`
--
ALTER TABLE `level1`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `level2`
--
ALTER TABLE `level2`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `level3`
--
ALTER TABLE `level3`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `level4`
--
ALTER TABLE `level4`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `postgraduate`
--
ALTER TABLE `postgraduate`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `primary`
--
ALTER TABLE `primary`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `primary_record`
--
ALTER TABLE `primary_record`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`,`username`), ADD UNIQUE KEY `unique_code` (`unique_code`), ADD UNIQUE KEY `unique_code_2` (`unique_code`), ADD UNIQUE KEY `unique_code_3` (`unique_code`);

--
-- Indexes for table `secondary`
--
ALTER TABLE `secondary`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secondary_record`
--
ALTER TABLE `secondary_record`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_record`
--
ALTER TABLE `student_record`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_type`
--
ALTER TABLE `sub_type`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `undergraduate`
--
ALTER TABLE `undergraduate`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `undergraduate_record`
--
ALTER TABLE `undergraduate_record`
 ADD PRIMARY KEY (`id`);

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
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_record`
--
ALTER TABLE `user_record`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variable1`
--
ALTER TABLE `variable1`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `sub_variable` (`sub_variable`);

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
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `analytics_question_record`
--
ALTER TABLE `analytics_question_record`
MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class_record`
--
ALTER TABLE `class_record`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comp_exam_mapping`
--
ALTER TABLE `comp_exam_mapping`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `comp_gate`
--
ALTER TABLE `comp_gate`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comp_gre`
--
ALTER TABLE `comp_gre`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `comp_toefl`
--
ALTER TABLE `comp_toefl`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `doctorate`
--
ALTER TABLE `doctorate`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `form_field`
--
ALTER TABLE `form_field`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `institute`
--
ALTER TABLE `institute`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `institute_record`
--
ALTER TABLE `institute_record`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `level0`
--
ALTER TABLE `level0`
MODIFY `id` int(150) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `level1`
--
ALTER TABLE `level1`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `level2`
--
ALTER TABLE `level2`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `level3`
--
ALTER TABLE `level3`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `level4`
--
ALTER TABLE `level4`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `postgraduate`
--
ALTER TABLE `postgraduate`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `primary`
--
ALTER TABLE `primary`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `primary_record`
--
ALTER TABLE `primary_record`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1700;
--
-- AUTO_INCREMENT for table `secondary`
--
ALTER TABLE `secondary`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `secondary_record`
--
ALTER TABLE `secondary_record`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_record`
--
ALTER TABLE `student_record`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sub_type`
--
ALTER TABLE `sub_type`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `undergraduate`
--
ALTER TABLE `undergraduate`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1662;
--
-- AUTO_INCREMENT for table `undergraduate_record`
--
ALTER TABLE `undergraduate_record`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13492;
--
-- AUTO_INCREMENT for table `user_analytic_stat`
--
ALTER TABLE `user_analytic_stat`
MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7096;
--
-- AUTO_INCREMENT for table `user_filled_form`
--
ALTER TABLE `user_filled_form`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7294;
--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_record`
--
ALTER TABLE `user_record`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `variable1`
--
ALTER TABLE `variable1`
MODIFY `id` int(150) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
