-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 03, 2015 at 12:14 AM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.9

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
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(255) NOT NULL,
  `form_field_record` varchar(255) NOT NULL,
  `form_code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `active_user`
--

CREATE TABLE IF NOT EXISTS `active_user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `active_code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`unique_code`),
  UNIQUE KEY `acative_code` (`active_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `active_user`
--

INSERT INTO `active_user` (`id`, `username`, `unique_code`, `active_code`) VALUES
(45, 'compuser1', '03KsO9jZy3AOf25', 'FhOrVd7aGw');

-- --------------------------------------------------------

--
-- Table structure for table `analytics_question_record`
--

CREATE TABLE IF NOT EXISTS `analytics_question_record` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `Analytic_Question` varchar(2000) NOT NULL,
  `Script_Name` varchar(255) NOT NULL,
  `form_dependancy` varchar(500) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `analytics_question_record`
--

INSERT INTO `analytics_question_record` (`ID`, `Analytic_Question`, `Script_Name`, `form_dependancy`) VALUES
(1, 'How i am performing in my Engineering Exams', 'eng_exam01.py', '[   "0301******" ]');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `salt` varchar(30) NOT NULL,
  `status` varchar(150) NOT NULL,
  `unique_code` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`,`username`),
  UNIQUE KEY `unique_code` (`unique_code`),
  UNIQUE KEY `unique_code_2` (`unique_code`),
  UNIQUE KEY `unique_code_3` (`unique_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `class_record`
--

CREATE TABLE IF NOT EXISTS `class_record` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(255) NOT NULL,
  `info_link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comp_exam_mapping`
--

CREATE TABLE IF NOT EXISTS `comp_exam_mapping` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `form_code` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `exam_name` varchar(255) DEFAULT NULL,
  `exam_type` varchar(255) DEFAULT NULL,
  `multiple` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `comp_exam_mapping`
--

INSERT INTO `comp_exam_mapping` (`id`, `form_code`, `table_name`, `exam_name`, `exam_type`, `multiple`) VALUES
(2, '50102', 'comp_toefl', 'TOEFL exam', 'competitive', 1),
(22, '50202', 'comp_toefl', 'TOEFL exam', 'competitive', 1),
(23, '501010101', 'comp_gre', 'GRE Final exam', 'competitive', 1),
(24, '501010102', 'comp_gre', 'GRE Final exam', 'competitive', 1),
(25, '501010103', 'comp_gre', 'GRE Final exam', 'competitive', 1),
(26, '5010301', 'comp_gate', 'GATE exam', 'competitive', 1),
(27, '5010302', 'comp_gate', 'GATE exam', 'competitive', 1),
(28, '5010303', 'comp_gate', 'GATE exam', 'competitive', 1),
(29, '501020201', 'comp_gre', 'GRE exam', 'competitive', 1),
(30, '501020202', 'comp_gre', 'GRE exam', 'competitive', 1),
(31, '5020301', 'comp_gate', 'GATE exam', 'competitive', 1),
(32, '5020302', 'comp_gate', 'GATE exam', 'competitive', 1),
(33, '5020303', 'comp_gate', 'GATE exam', 'competitive', 1),
(34, '10101', 'primary_record', 'SSC', 'academic', 0),
(35, '501020203', 'comp_gre', 'GRE exam', 'competitive', 1),
(36, '501020204', 'comp_gre', 'GRE exam', 'competitive', 1),
(37, '501020205', 'comp_gre', 'GRE exam', 'competitive', 1),
(38, '501020101', 'comp_gre', 'GRE exam', 'competitive', 1),
(39, '501020102', 'comp_gre', 'GRE exam', 'competitive', 1),
(40, '501020103', 'comp_gre', 'GRE exam', 'competitive', 1),
(41, '501020104', 'comp_gre', 'GRE exam', 'competitive', 1),
(42, '501020105', 'comp_gre', 'GRE exam', 'competitive', 1),
(43, '301010101', 'undergraduate_record', 'Semester 1 IT', 'academic', 0),
(44, '301010102', 'undergraduate_record', 'Semester 2 IT', 'academic', 0),
(45, '301010103', 'undergraduate_record', 'Semester 3 IT', 'academic', 0),
(46, '301010104', 'undergraduate_record', 'Semester 4 IT', 'academic', 0),
(47, '301010105', 'undergraduate_record', 'Semester 5 IT', 'academic', 0),
(48, '301010106', 'undergraduate_record', 'Semester 6 IT', 'academic', 0),
(49, '301010107', 'undergraduate_record', 'Semester 7 IT', 'academic', 0),
(50, '301010108', 'undergraduate_record', 'Semester 8 IT', 'academic', 0),
(51, '301020101', 'undergraduate_record', 'Semester 1 COMP', 'academic', 0),
(52, '301020102', 'undergraduate_record', 'Semester 2 COMP', 'academic', 0),
(53, '301020103', 'undergraduate_record', 'Semester 3 COMP', 'academic', 0),
(54, '301020104', 'undergraduate_record', 'Semester 4 COMP', 'academic', 0),
(55, '301020105', 'undergraduate_record', 'Semester 5 COMP', 'academic', 0),
(56, '301020106', 'undergraduate_record', 'Semester 6 COMP', 'academic', 0),
(57, '301020107', 'undergraduate_record', 'Semester 7 COMP', 'academic', 0),
(58, '301020108', 'undergraduate_record', 'Semester 8 COMP', 'academic', 0),
(59, '301030101', 'undergraduate_record', 'Semester 1 ELEX', 'academic', 0),
(60, '301030102', 'undergraduate_record', 'Semester 2 ELEX', 'academic', 0),
(61, '301030103', 'undergraduate_record', 'Semester 3 ELEX', 'academic', 0),
(62, '301030104', 'undergraduate_record', 'Semester 4 ELEX', 'academic', 0),
(63, '301030105', 'undergraduate_record', 'Semester 5 ELEX', 'academic', 0),
(64, '301030106', 'undergraduate_record', 'Semester 6 ELEX', 'academic', 0),
(65, '301030107', 'undergraduate_record', 'Semester 7 ELEX', 'academic', 0),
(66, '301030108', 'undergraduate_record', 'Semester 8 ELEX', 'academic', 0),
(67, '301040101', 'undergraduate_record', 'Semester 1 EXTC', 'academic', 0),
(68, '301040102', 'undergraduate_record', 'Semester 2 EXTC', 'academic', 0),
(69, '301040103', 'undergraduate_record', 'Semester 3 EXTC', 'academic', 0),
(70, '301040104', 'undergraduate_record', 'Semester 4 EXTC', 'academic', 0),
(71, '301040105', 'undergraduate_record', 'Semester 5 EXTC', 'academic', 0),
(72, '301040106', 'undergraduate_record', 'Semester 6 EXTC', 'academic', 0),
(73, '301040107', 'undergraduate_record', 'Semester 7 EXTC', 'academic', 0),
(74, '301040108', 'undergraduate_record', 'Semester 8 EXTC', 'academic', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comp_gate`
--

CREATE TABLE IF NOT EXISTS `comp_gate` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
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
  `total` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comp_gre`
--

CREATE TABLE IF NOT EXISTS `comp_gre` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
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
  `total` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `comp_gre`
--

INSERT INTO `comp_gre` (`id`, `user_code`, `form_code`, `attempt`, `data_field_1`, `data_field_2`, `data_field_3`, `data_field_4`, `data_field_5`, `data_field_6`, `last_modified`, `data_field_7`, `data_field_8`, `data_field_9`, `data_field_10`, `data_field_11`, `data_field_12`, `total`) VALUES
(1, 'V6ZxzM2fR10gnqG', '501010101', '1', '2015-01-01', '162', '165', NULL, NULL, NULL, '2015-06-01 20:03:56', NULL, NULL, NULL, NULL, NULL, NULL, '327'),
(4, 'krT3QxCML5fGPDb', '501010101', '1', '2015-06-01', '145', '155', NULL, NULL, NULL, '2015-06-02 08:11:24', NULL, NULL, NULL, NULL, NULL, NULL, '300'),
(5, 'krT3QxCML5fGPDb', '501010101', '2', '2015-05-31', '157', '146', NULL, NULL, NULL, '2015-06-02 08:12:18', NULL, NULL, NULL, NULL, NULL, NULL, '303');

-- --------------------------------------------------------

--
-- Table structure for table `comp_toefl`
--

CREATE TABLE IF NOT EXISTS `comp_toefl` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
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
  `total` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `doctorate`
--

CREATE TABLE IF NOT EXISTS `doctorate` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `university name` int(255) NOT NULL,
  `college name` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `doctorate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `edit_profile`
--

INSERT INTO `edit_profile` (`id`, `primary`, `secondary`, `undergraduate`, `postgraduate`, `doctorate`) VALUES
(0, '../forms/data/primary/primary.json', '../forms/data/secondary/secondary.json', '../forms/data/undergraduate/undergraduate.json', '../forms/data/postgraduate/postgraduate.json', '../forms/data/doctorate/doctorate.json\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `form_field`
--

CREATE TABLE IF NOT EXISTS `form_field` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `total_field` int(10) NOT NULL,
  `form_id` char(50) NOT NULL,
  `form_field` varchar(8000) NOT NULL,
  `security` varchar(255) DEFAULT NULL,
  `field_name` text,
  `form_title` varchar(300) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `form_field`
--

INSERT INTO `form_field` (`id`, `total_field`, `form_id`, `form_field`, `security`, `field_name`, `form_title`, `last_modified`) VALUES
(6, 7, '301010101', '../forms/form_data/mum_sem_1.json', '../forms/form_security/mum_semester.js', 'IT', 'Semester 1', '2015-05-26 06:35:59'),
(8, 7, '301010102', '../forms/form_data/mum_sem_2.json', '../forms/form_security/mum_semester.js', 'IT', 'Semester 2', '2015-05-26 06:35:59'),
(9, 6, '301010103', '../forms/form_data/IT-mum_sem_3.json', '../forms/form_security/mum_semester.js', 'IT', 'Semester 3', '2015-05-26 06:35:59'),
(10, 6, '301010104', '../forms/form_data/IT-mum_sem_4.json', '../forms/form_security/mum_semester.js', 'IT', 'Semester 4', '2015-05-26 06:35:59'),
(11, 7, '301010105', '../forms/form_data/IT-mum_sem_5.json', '../forms/form_security/mum_semester.js', 'IT', 'Semester 5', '2015-05-26 06:35:59'),
(12, 6, '301010106', '../forms/form_data/IT-mum_sem_6.json', '../forms/form_security/mum_semester.js', 'IT', 'Semester 6', '2015-05-26 06:35:59'),
(13, 11, '301010107', '../forms/form_data/IT-mum_sem_7.json', '../forms/form_security/mum_semester.js', 'IT', 'Semester 7', '2015-05-26 06:35:59'),
(14, 9, '301010108', '../forms/form_data/IT-mum_sem_8.json', '../forms/form_security/mum_semester.js', 'IT', 'Semester 8', '2015-05-26 06:35:59'),
(16, 5, '10201', '../forms/form_data/cbse_10.json', '../forms/form_security/cbse.js', '0', 'CBSE-10th', '2015-05-07 19:41:14'),
(17, 5, '20101', '../forms/form_data/cbse_12.json', '../forms/form_security/cbse.js', '0', 'CBSE-12th', '2015-05-07 19:41:04'),
(18, 7, '301020101', '../forms/form_data/mum_sem_1.json', '../forms/form_security/mum_semester.js', 'COMPS', 'Semester 1', '2015-05-26 06:51:16'),
(19, 7, '301030101', '../forms/form_data/mum_sem_1.json', '../forms/form_security/mum_semester.js', 'ELEX', 'Semester 1', '2015-05-26 06:51:50'),
(20, 7, '301040101', '../forms/form_data/mum_sem_1.json', '../forms/form_security/mum_semester.js', 'EXTC', 'Semester 1', '2015-05-26 06:52:09'),
(21, 7, '301020102', '../forms/form_data/mum_sem_2.json', '../forms/form_security/mum_semester.js', 'COMPS', 'Semester 2', '2015-05-26 06:51:16'),
(22, 7, '301030102', '../forms/form_data/mum_sem_2.json', '../forms/form_security/mum_semester.js', 'ELEX', 'Semester 2', '2015-05-26 06:51:50'),
(23, 7, '301040102', '../forms/form_data/mum_sem_2.json', '../forms/form_security/mum_semester.js', 'EXTC', 'Semester 2', '2015-05-26 06:52:09'),
(24, 6, '301020103', '../forms/form_data/COMP-mum_sem_3.json', '../forms/form_security/mum_semester.js', 'COMPS', 'Semester 3', '2015-05-26 06:51:16'),
(25, 6, '301020104', '../forms/form_data/COMP-mum_sem_4.json', '../forms/form_security/mum_semester.js', 'COMPS', 'Semester 4', '2015-05-26 06:51:16'),
(26, 6, '301020105', '../forms/form_data/COMP-mum_sem_5.json', '../forms/form_security/mum_semester.js', 'COMPS', 'Semester 5', '2015-05-26 06:51:16'),
(27, 6, '301020106', '../forms/form_data/COMP-mum_sem_6.json', '../forms/form_security/mum_semester.js', 'COMPS', 'Semester 6', '2015-05-26 06:51:16'),
(28, 11, '301020107', '../forms/form_data/COMP-mum_sem_7.json', '../forms/form_security/mum_semester.js', 'COMPS', 'Semester 7', '2015-05-26 06:51:16'),
(29, 6, '301020108', '../forms/form_data/COMP-mum_sem_8.json', '../forms/form_security/mum_semester.js', 'COMPS', 'Semester 8', '2015-05-26 06:51:16'),
(30, 9, '301030103', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-3\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":9,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":5,\\"Subject\\":\\"Applied Mathematics III\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Electronic Devices\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Digital Circuits & Design\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Circuit Theory\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Electronic Instruments & Meassurements\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Electronic Devices (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Digital Circuits & Design (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Circuit Theory (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":2,\\"Subject\\":\\"Object Oriented Programming Methodology laboratory (TW)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 'ELEX', 'Semester 3', '2015-05-26 06:51:50'),
(31, 10, '301030104', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-4\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":10,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":5,\\"Subject\\":\\"Applied Mathematics IV\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Discrete Electronics Circuits\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Microprocessor $ peripherals\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Principles of COntrol Systems\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"funcdamentals of Communication Engineering\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":3,\\"Subject\\":\\"Electrical Machines\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Discrete Electronic Circuits\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Microprocessor & Peripherals\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Principles of Control Systems\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_10\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Fundamentals of Communication Engineering\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 'ELEX', 'Semester 4', '2015-05-26 06:51:50'),
(32, 10, '301030105', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-5\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":10,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Microcontrollers & Applications\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Design with Linear Integrated Circuits\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Electromagnetic Engineeirng\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":5,\\"Subject\\":\\"Signals & Systems\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Digital Communication\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":2,\\"Subject\\":\\"Business communication and Ethics\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Microcontrollers & Applications (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Design with Linear Integrated Circuits (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Digital Communication (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_10\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":2,\\"Subject\\":\\"Mini Project I\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 'ELEX', 'Semester 5', '2015-05-26 06:51:50'),
(33, 9, '301030106', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-6\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":9,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Basic VLSI Design\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Advanced Instrumentation Systems\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Power Electronics I\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Digital Signal Processing & Processors\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Modern Information Technology for Management\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":2,\\"Subject\\":\\"Basic VLSI Design (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Microcontrollers & Applications (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Digital Signal Processing & Processors (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":2,\\"Subject\\":\\"Mini Project II\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 'ELEX', 'Semester 6', '2015-05-26 06:51:50'),
(34, 9, '301040103', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-3\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":9,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":5,\\"Subject\\":\\"Applied Mathematics III\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Analog Electronics I\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Digital ELectronics\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Circuit & Transmission Lines\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Electronic Intruments & measurements\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Analog Electronics I (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Digital Electronics (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Circuit Theory (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Object Oriented Programming Methodology Laboratory (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 'EXTC', 'Semester 3', '2015-05-26 06:52:09'),
(35, 9, '301040104', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-4\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":9,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":5,\\"Subject\\":\\"Applied Mathematics IV\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Analog Electronics II\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Microprocessor & Peripherals\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Wave Theory & Propagation\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":5,\\"Subject\\":\\"Signals $ Systems\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Control Systems\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Analog Electronics II (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Microprocessor $ Peripherals (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"SSW Laboratory\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 'EXTC', 'Semester 4', '2015-05-26 06:52:09');
INSERT INTO `form_field` (`id`, `total_field`, `form_id`, `form_field`, `security`, `field_name`, `form_title`, `last_modified`) VALUES
(36, 9, '301040105', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-5\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":10,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Microcontroller & Application\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Analog Communication\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":5,\\"Subject\\":\\"Random Signal Analysis\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"RF Modeling & Antennas\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Integrated Circuits\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":2,\\"Subject\\":\\"Business Communication & Ethics\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Microcontroller & Application (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Communication Engineering I (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Communication Engineering II (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_10\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Mini Project I\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 'EXTC', 'Semester 5', '2015-05-26 06:52:09'),
(37, 10, '301040106', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-6\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":10,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Digital Communication\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Discrete Time SIgnal Processing\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Computer Communication & Telcommunication Network\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Television Engineering\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Operating System\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"VLSI Design\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Discrete Time Signal Processing (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Communication Engineering III (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Communication Engineering IV (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_10\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Mini Project II\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 'EXTC', 'Semester 6', '2015-05-26 06:52:09'),
(38, 10, '301040107', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-7\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":10,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Image & Video Processing\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Mobile Communication\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Optical Communication & Network\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Microwave & Radar\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Elective\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Image & Video Processing (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Advanced Communication Engineering I (TW \\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Advanced Communication Engineering II (TW \\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Elective (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_10\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":3,\\"Subject\\":\\"Project I\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 'EXTC', 'Semester 7', '2015-05-26 06:52:09'),
(39, 10, '301040108', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-8\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":9,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Wireless Networks\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Satelite Communication & Networks\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Internet & Voice Communication \\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Elective\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Wireless Networks (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\" Satelite Communication & Networks (TW \\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Internet & Voice Communication (TW \\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Elective (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":6,\\"Subject\\":\\"Project II\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 'EXTC', 'Semester 8', '2015-05-26 06:52:09'),
(40, 1, '5010301', '{\\"Append\\":\\"$(document).ready(function(){\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n clean_form_box();\\\\r\\\\n if($(this).val()){\\\\r\\\\n if ($.isNumeric($(this).val())) {\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n res = $(this).val();\\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n if (parseFloat(res)\\\\u003CparseFloat(obj[\\''Field_\\''+code][\\''limit\\''])) { \\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n } \\\\r\\\\n });\\\\r\\\\n });\\",\\"form_data\\":{\\"form_name\\":\\"Gate\\",\\"Field_Parameter\\":2,\\"Total_Fields\\":2,\\"header_field\\":[\\"Field Name\\",\\"Computer Science\\"],\\"field_name\\":[\\"Field_Name\\",\\"input\\"],\\"Field_1\\":{\\"Field_Name\\":\\"Attempt Date\\",\\"input\\":\\"date\\",\\"input_length\\":\\"5\\",\\"input_type\\":\\"date\\",\\"limit\\":\\"10\\"},\\"Field_2\\":{\\"Field_Name\\":\\"Marks Obtained\\",\\"input\\":\\"text\\",\\"input_length\\":\\"3\\",\\"input_type\\":\\"number\\",\\"limit\\":100}}}', NULL, '0', 'Computer Science', '2015-04-26 07:31:34'),
(41, 1, '5010302', '{\\"Append\\":\\"$(document).ready(function(){\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n clean_form_box();\\\\r\\\\n if($(this).val()){\\\\r\\\\n if ($.isNumeric($(this).val())) {\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n res = $(this).val();\\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n if (parseFloat(res)\\\\u003CparseFloat(obj[\\''Field_\\''+code][\\''limit\\''])) { \\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n } \\\\r\\\\n });\\\\r\\\\n });\\",\\"form_data\\":{\\"form_name\\":\\"Gate\\",\\"Field_Parameter\\":2,\\"Total_Fields\\":2,\\"header_field\\":[\\"Field Name\\",\\"Electrical Engineering\\"],\\"field_name\\":[\\"Field_Name\\",\\"input\\"],\\"Field_1\\":{\\"Field_Name\\":\\"Attempt Date\\",\\"input\\":\\"date\\",\\"input_length\\":\\"5\\",\\"input_type\\":\\"date\\",\\"limit\\":\\"10\\"},\\"Field_2\\":{\\"Field_Name\\":\\"Marks Obtained\\",\\"input\\":\\"text\\",\\"input_length\\":\\"3\\",\\"input_type\\":\\"number\\",\\"limit\\":100}}}', NULL, '0', 'Electrical Engineering', '2015-04-26 07:34:21'),
(42, 1, '5010303', '{\\"Append\\":\\"$(document).ready(function(){\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n clean_form_box();\\\\r\\\\n if($(this).val()){\\\\r\\\\n if ($.isNumeric($(this).val())) {\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n res = $(this).val();\\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n if (parseFloat(res)\\\\u003CparseFloat(obj[\\''Field_\\''+code][\\''limit\\''])) { \\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n } \\\\r\\\\n });\\\\r\\\\n });\\",\\"form_data\\":{\\"form_name\\":\\"Gate\\",\\"Field_Parameter\\":2,\\"Total_Fields\\":2,\\"header_field\\":[\\"Field Name\\",\\"Electronics and Communication Engineering\\"],\\"field_name\\":[\\"Field_Name\\",\\"input\\"],\\"Field_1\\":{\\"Field_Name\\":\\"Attempt Date\\",\\"input\\":\\"date\\",\\"input_length\\":\\"5\\",\\"input_type\\":\\"date\\",\\"limit\\":\\"10\\"},\\"Field_2\\":{\\"Field_Name\\":\\"Marks Obtained\\",\\"input\\":\\"text\\",\\"input_length\\":\\"3\\",\\"input_type\\":\\"number\\",\\"limit\\":100}}}', NULL, '0', 'Electronics and Communication Engineering', '2015-04-26 07:34:39'),
(43, 1, '5010304', '{\\"Append\\":\\"$(document).ready(function(){\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n clean_form_box();\\\\r\\\\n if($(this).val()){\\\\r\\\\n if ($.isNumeric($(this).val())) {\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n res = $(this).val();\\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n if (parseFloat(res)\\\\u003CparseFloat(obj[\\''Field_\\''+code][\\''limit\\''])) { \\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n } \\\\r\\\\n });\\\\r\\\\n });\\",\\"form_data\\":{\\"form_name\\":\\"Gate\\",\\"Field_Parameter\\":2,\\"Total_Fields\\":2,\\"header_field\\":[\\"Field Name\\",\\"Mechanical Engineering\\"],\\"field_name\\":[\\"Field_Name\\",\\"input\\"],\\"Field_1\\":{\\"Field_Name\\":\\"Attempt Date\\",\\"input\\":\\"date\\",\\"input_length\\":\\"5\\",\\"input_type\\":\\"date\\",\\"limit\\":\\"10\\"},\\"Field_2\\":{\\"Field_Name\\":\\"Marks Obtained\\",\\"input\\":\\"text\\",\\"input_length\\":\\"3\\",\\"input_type\\":\\"number\\",\\"limit\\":100}}}', NULL, '0', 'Mechanical Engineering', '2015-04-26 07:37:53'),
(44, 4, '5010101', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', '0', 'GRE for Engineering', '2015-04-30 07:18:12'),
(45, 4, '5010102', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', '0', 'GRE for Engineering', '2015-04-30 07:18:12'),
(46, 4, '5010103', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', '0', 'GRE for Engineering', '2015-04-30 07:18:12'),
(48, 4, '5010202', '../forms/form_data/gre_for_pharmacy.json', '../forms/form_security/gre.js', '0', 'GRE for Pharmacy', '2015-04-30 07:20:26'),
(49, 4, '5010203', '../forms/form_data/gre_for_pharmacy.json', '../forms/form_security/gre.js', '0', 'GRE for Pharmacy', '2015-04-30 07:20:26'),
(50, 1, '5020301', '{\\"Append\\":\\"$(document).ready(function(){\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n clean_form_box();\\\\r\\\\n if($(this).val()){\\\\r\\\\n if ($.isNumeric($(this).val())) {\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n res = $(this).val();\\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n if (parseFloat(res)\\\\u003CparseFloat(obj[\\''Field_\\''+code][\\''limit\\''])) { \\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n } \\\\r\\\\n });\\\\r\\\\n });\\",\\"form_data\\":{\\"form_name\\":\\"Gate\\",\\"Field_Parameter\\":2,\\"Total_Fields\\":2,\\"header_field\\":[\\"Field Name\\",\\"Computer Science\\"],\\"field_name\\":[\\"Field_Name\\",\\"input\\"],\\"Field_1\\":{\\"Field_Name\\":\\"Attempt Date\\",\\"input\\":\\"date\\",\\"input_length\\":\\"5\\",\\"input_type\\":\\"date\\",\\"limit\\":\\"10\\"},\\"Field_2\\":{\\"Field_Name\\":\\"Marks Obtained\\",\\"input\\":\\"text\\",\\"input_length\\":\\"3\\",\\"input_type\\":\\"number\\",\\"limit\\":100}}}', NULL, '0', 'Computer Science', '2015-04-26 07:31:34'),
(51, 4, '50202', '{\\"Append\\":\\"$(document).ready(function(){\\\\r\\\\n var total =0;\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n clean_form_box();\\\\r\\\\n if($(this).val()){\\\\r\\\\n if ($.isNumeric($(this).val())) {\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n res = $(this).val();\\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n if (parseFloat(res)\\\\u003C=parseFloat(obj[\\''Field_\\''+code][\\''limit\\''])) { \\\\r\\\\n adition(); \\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n adition(); \\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n adition(); \\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n adition();\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n adition(); \\\\r\\\\n } \\\\r\\\\n });\\\\r\\\\n \\\\r\\\\n function adition(){\\\\r\\\\n total =0;\\\\r\\\\n for(i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++){\\\\r\\\\n if($.isNumeric($(\\''#data_field_\\''+i).val())){\\\\r\\\\n total =total+ parseFloat($(\\''#data_field_\\''+i).val());\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#final\\'').html(total);\\\\r\\\\n } \\\\r\\\\n });\\",\\"form_data\\":{\\"form_name\\":\\"GRE\\",\\"Field_Parameter\\":2,\\"Total_Fields\\":5,\\"header_field\\":[\\"Exam Name\\",\\"TOEFL\\"],\\"field_name\\":[\\"Field_Name\\",\\"input\\"],\\"Field_1\\":{\\"Field_Name\\":\\"Attempt Date\\",\\"input\\":\\"date\\",\\"input_length\\":\\"5\\",\\"input_type\\":\\"date\\",\\"limit\\":\\"10\\"},\\"Field_2\\":{\\"Field_Name\\":\\"Reading\\",\\"input\\":\\"text\\",\\"input_length\\":\\"2\\",\\"input_type\\":\\"number\\",\\"limit\\":30},\\"Field_3\\":{\\"Field_Name\\":\\"Writing\\",\\"input\\":\\"text\\",\\"input_length\\":\\"2\\",\\"input_type\\":\\"number\\",\\"limit\\":30},\\"Field_4\\":{\\"Field_Name\\":\\"Speaking\\",\\"input\\":\\"text\\",\\"input_length\\":\\"2\\",\\"input_type\\":\\"number\\",\\"limit\\":30},\\"Field_5\\":{\\"Field_Name\\":\\"Listening\\",\\"input\\":\\"text\\",\\"input_length\\":\\"2\\",\\"input_type\\":\\"number\\",\\"limit\\":30}}}', NULL, '0', 'TOEFL', '2015-04-26 07:36:51'),
(52, 1, '5020304', '{\\"Append\\":\\"$(document).ready(function(){\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n clean_form_box();\\\\r\\\\n if($(this).val()){\\\\r\\\\n if ($.isNumeric($(this).val())) {\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n res = $(this).val();\\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n if (parseFloat(res)\\\\u003CparseFloat(obj[\\''Field_\\''+code][\\''limit\\''])) { \\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n } \\\\r\\\\n });\\\\r\\\\n });\\",\\"form_data\\":{\\"form_name\\":\\"Gate\\",\\"Field_Parameter\\":2,\\"Total_Fields\\":2,\\"header_field\\":[\\"Field Name\\",\\"Mechanical Engineering\\"],\\"field_name\\":[\\"Field_Name\\",\\"input\\"],\\"Field_1\\":{\\"Field_Name\\":\\"Attempt Date\\",\\"input\\":\\"date\\",\\"input_length\\":\\"5\\",\\"input_type\\":\\"date\\",\\"limit\\":\\"10\\"},\\"Field_2\\":{\\"Field_Name\\":\\"Marks Obtained\\",\\"input\\":\\"text\\",\\"input_length\\":\\"3\\",\\"input_type\\":\\"number\\",\\"limit\\":100}}}', NULL, '0', 'Mechanical Engineering', '2015-04-26 07:37:53'),
(53, 4, '501010101', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', '0', 'GRE for Engineering', '2015-04-30 07:18:12'),
(54, 4, '501010102', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', '0', 'GRE for Engineering', '2015-04-30 07:18:12'),
(55, 4, '501010103', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', '0', 'GRE for Engineering', '2015-04-30 07:18:12'),
(56, 4, '501010201', '../forms/form_data/gre_for_pharmacy.json', '../forms/form_security/gre.js', '0', 'GRE for Pharmacy', '2015-04-30 07:20:26'),
(57, 4, '501010202', '../forms/form_data/gre_for_pharmacy.json', '../forms/form_security/gre.js', '0', 'GRE for Pharmacy', '2015-04-30 07:20:26'),
(58, 4, '501010203', '../forms/form_data/gre_for_pharmacy.json', '../forms/form_security/gre.js', '0', 'GRE for Pharmacy', '2015-04-30 07:20:26'),
(59, 7, '10101', '../forms/form_data/ssc.json', '../forms/form_security/primary.js', '0', 'SSC', '2015-05-07 13:54:19'),
(60, 4, '501020102', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', '0', 'GRE for Engineering', '2015-05-28 13:31:02'),
(61, 4, '501020103', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', '0', 'GRE for Engineering', '2015-05-28 13:31:02'),
(62, 4, '501020104', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', '0', 'GRE for Engineering', '2015-05-28 13:31:02'),
(63, 4, '501020105', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', '0', 'GRE for Engineering', '2015-05-28 13:31:02'),
(64, 4, '501020201', '../forms/form_data/gre_for_pharmacy.json', '../forms/form_security/gre.js', '0', 'GRE for Pharmacy', '2015-05-28 13:31:02'),
(65, 4, '501020202', '../forms/form_data/gre_for_pharmacy.json', '../forms/form_security/gre.js', '0', 'GRE for Pharmacy', '2015-05-28 13:31:02'),
(66, 4, '501020203', '../forms/form_data/gre_for_pharmacy.json', '../forms/form_security/gre.js', '0', 'GRE for Pharmacy', '2015-05-28 13:31:02'),
(67, 4, '501020204', '../forms/form_data/gre_for_pharmacy.json', '../forms/form_security/gre.js', '0', 'GRE for Pharmacy', '2015-05-28 13:31:02'),
(68, 4, '501020205', '../forms/form_data/gre_for_pharmacy.json', '../forms/form_security/gre.js', '0', 'GRE for Pharmacy', '2015-05-28 13:31:02'),
(69, 4, '501020101', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', '0', 'GRE for Engineering', '2015-05-28 13:31:02');

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE IF NOT EXISTS `institute` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `salt` varchar(30) NOT NULL,
  `status` varchar(150) NOT NULL,
  `unique_code` varchar(45) NOT NULL,
  `university name` varchar(255) DEFAULT NULL,
  `institute name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`,`username`),
  UNIQUE KEY `unique_code` (`unique_code`),
  UNIQUE KEY `unique_code_2` (`unique_code`),
  UNIQUE KEY `unique_code_3` (`unique_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`id`, `fname`, `lname`, `email`, `username`, `password`, `salt`, `status`, `unique_code`, `university name`, `institute name`) VALUES
(1, 'Siddhesh', 'Gore', 'goreganesh@vesit.com', 'ace2015007', 'a1810a494e6efb6165e79fda2ccb7080', 'vesit', 'activated', 'aceprinciple', 'Mumbai', 'ACE'),
(11, 'DJ', 'DJ', 'DJ@DJ.com', 'DJ2015', 'adb915a42d9dae284bacc6c236769452', 'DJ2015', 'activated', '5O54t8CHZerX0Ks', 'Mumbai', 'DJ'),
(12, 'RJIT', 'RJIT', 'RJIT@RJIT.com', 'RJIT2015', '1213613610834aaeefe3f2b91938a1c9', 'RJIT2015', 'activated', 'sEhfOKTBY9idJ1C', 'Mumbai', 'RJIT'),
(13, 'KJSCE', 'KJSCE', 'KJSCE@KJSCE.com', 'KJSCE2015', 'b94fa68b433aa454bb6dd8e85815a748', 'KJSCE2015', 'activated', 'ytNSmEeQIOEW3iC', 'Mumbai', 'KJSCE'),
(14, 'DBIT', 'DBIT', 'DBIT@DBIT.com', 'DBIT2015', '53ac17f1c949054706bcc8a0132daacd', 'DBIT2015', 'activated', 'PywP9KjYfPNgoU9', 'Mumbai', 'DBIT'),
(15, 'CRIT', 'CRIT', 'CRIT@CRIT.com', 'CRIT2015', '0a881ca7f0f61e91e1204aaaa5b2afd4', 'CRIT2015', 'activated', 'T6JT7fsifOGHdnm', 'Mumbai', 'CRIT'),
(16, 'PVPP COE', 'PVPP COE', 'PVPP COE@PVPP COE.com', 'PVPP COE2015', '2549a3c054fa3442f9e9df377df78cb6', 'PVPP COE2015', 'activated', 'VYmlZC6Qb9I10UW', 'Mumbai', 'PVPP COE');

-- --------------------------------------------------------

--
-- Table structure for table `institute_record`
--

CREATE TABLE IF NOT EXISTS `institute_record` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(255) NOT NULL,
  `info_link` varchar(255) NOT NULL,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `institute_record`
--

INSERT INTO `institute_record` (`id`, `unique_id`, `info_link`, `name`) VALUES
(1, 'aceprinciple', '../UserJson/Dashboard/vesitprinciple.json', 'ACE');

-- --------------------------------------------------------

--
-- Table structure for table `level0`
--

CREATE TABLE IF NOT EXISTS `level0` (
  `id` int(150) NOT NULL AUTO_INCREMENT,
  `Level_Data` char(150) NOT NULL,
  `Level_Code` char(150) NOT NULL,
  `Next_Level` int(20) NOT NULL,
  `Next_Table` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `level0`
--

INSERT INTO `level0` (`id`, `Level_Data`, `Level_Code`, `Next_Level`, `Next_Table`) VALUES
(9, 'Primary Exams', '1', 0, 'level1'),
(10, 'Secondary Exams', '2', 0, 'level1'),
(11, 'Undergraduate Exams', '3', 0, 'level1'),
(12, 'Postgraduate Exams', '4', 0, 'level1'),
(13, 'Competative Exams', '5', 0, 'level1');

-- --------------------------------------------------------

--
-- Table structure for table `level1`
--

CREATE TABLE IF NOT EXISTS `level1` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `Parent_Code` char(255) DEFAULT NULL,
  `Level_Data` varchar(150) NOT NULL,
  `Level_Code` varchar(150) NOT NULL,
  `Next_Table` char(10) NOT NULL,
  `Next_Level` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `level1`
--

INSERT INTO `level1` (`id`, `Parent_Code`, `Level_Data`, `Level_Code`, `Next_Table`, `Next_Level`) VALUES
(22, '1', 'SSC', '101', 'level2', 0),
(23, '1', 'CBSE', '102', 'level2', 0),
(24, '1', 'ICSE', '103', 'level2', 0),
(25, '2', 'CBSE', '201', 'level2', 0),
(26, '2', 'HSC', '202', 'level2', 0),
(27, '3', 'Engineering Exams', '301', 'level2', 0),
(31, '5', 'Final Exam', '501', 'level2', 0),
(32, '5', 'Practice Exam', '502', 'level2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `level2`
--

CREATE TABLE IF NOT EXISTS `level2` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `Parent_Code` char(255) DEFAULT NULL,
  `Level_Data` varchar(150) NOT NULL,
  `Level_Code` varchar(150) NOT NULL,
  `Next_Table` char(10) NOT NULL,
  `Next_Level` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `level2`
--

INSERT INTO `level2` (`id`, `Parent_Code`, `Level_Data`, `Level_Code`, `Next_Table`, `Next_Level`) VALUES
(7, '101', 'Marathi', '10101', 'form_field', 1),
(8, '101', 'Hindi', '10102', 'form_field', 1),
(9, '101', 'English', '10103', 'form_field', 1),
(10, '101', 'Semi english', '10104', 'form_field', 1),
(11, '202', 'Science', '20201', 'level3', 0),
(12, '202', 'Commerce', '20202', 'level3', 0),
(13, '202', 'Arts', '20203', 'level3', 0),
(14, '301', 'Information Technology', '30101', 'level3', 0),
(15, '102', '10th', '10201', 'form_field', 1),
(16, '201', '12th', '20101', 'form_field', 1),
(17, '301', 'Computer Engineering', '30102', 'level3', 0),
(18, '301', 'Electronic Engineering', '30103', 'level3', 0),
(19, '301', 'Electronics & Telecommunication', '30104', 'level3', 0),
(20, '503', 'Computer Science', '50301', 'form_field', 1),
(21, '503', 'Electrical Engineering', '50302', 'form_field', 1),
(22, '503', 'Electronics and Communication', '50303', 'form_field', 1),
(23, '503', 'Mechanical Engineering', '50304', 'form_field', 1),
(24, '501', 'GRE', '50101', 'level3', 0),
(25, '501', 'TOEFL', '50102', 'form_field', 1),
(26, '501', 'GATE', '50103', 'level3', 0),
(27, '502', 'GRE', '50201', 'level3', 0),
(28, '502', 'TOEFL', '50202', 'form_field', 1),
(29, '502', 'GATE', '50203', 'level3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `level3`
--

CREATE TABLE IF NOT EXISTS `level3` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `Parent_Code` char(255) DEFAULT NULL,
  `Level_Data` varchar(150) NOT NULL,
  `Level_Code` varchar(150) NOT NULL,
  `Next_Table` char(10) NOT NULL,
  `Next_Level` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `level3`
--

INSERT INTO `level3` (`id`, `Parent_Code`, `Level_Data`, `Level_Code`, `Next_Table`, `Next_Level`) VALUES
(2, '30101', 'Mumbai University', '3010101', 'level4', 0),
(3, '30102', 'Mumbai University', '3010201', 'level4', 0),
(4, '30103', 'Mumbai University', '3010301', 'level4', 0),
(5, '30104', 'Mumbai University', '3010401', 'level4', 0),
(12, '50101', 'GRE for Engineering', '5010101', 'level4', 0),
(13, '50101', 'GRE for Pharmacy', '5010102', 'level4', 0),
(14, '50201', 'GRE for Engineering', '5010201', 'level4', 0),
(15, '50201', 'GRE for Pharmacy', '5010202', 'level4', 0),
(16, '50103', 'Computer Science', '5010301', 'form_field', 1),
(18, '50203', 'Computer Science', '5020301', 'form_field', 1),
(19, '50103', 'Electrical Engineering', '5010302', 'form_field', 1),
(20, '50103', 'Electronics and Communication Engineering', '5010303', 'form_field', 1),
(21, '50203', 'Electrical Engineering', '5020302', 'form_field', 1),
(22, '50203', 'Electronics and Communication Engineering', '5020303', 'form_field', 1);

-- --------------------------------------------------------

--
-- Table structure for table `level4`
--

CREATE TABLE IF NOT EXISTS `level4` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `Parent_Code` char(255) DEFAULT NULL,
  `Level_Data` varchar(150) NOT NULL,
  `Level_Code` varchar(150) NOT NULL,
  `Next_Table` char(10) NOT NULL,
  `Next_Level` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `level4`
--

INSERT INTO `level4` (`id`, `Parent_Code`, `Level_Data`, `Level_Code`, `Next_Table`, `Next_Level`) VALUES
(12, '3010101', 'semester 1', '301010101', 'form_field', 1),
(13, '3010101', 'semester 2', '301010102', 'form_field', 1),
(14, '3010101', 'semester 3', '301010103', 'form_field', 1),
(15, '3010101', 'semester 4', '301010104', 'form_field', 1),
(16, '3010101', 'semester 5', '301010105', 'form_field', 1),
(17, '3010101', 'semester 6', '301010106', 'form_field', 1),
(18, '3010101', 'semester 7', '301010107', 'form_field', 1),
(19, '3010101', 'semester 8', '301010108', 'form_field', 1),
(20, '3010201', 'semester 1', '301020101', 'form_field', 1),
(21, '3010201', 'semester 2', '301020102', 'form_field', 1),
(22, '3010201', 'semester 3', '301020103', 'form_field', 1),
(23, '3010201', 'semester 4', '301020104', 'form_field', 1),
(24, '3010201', 'semester 5', '301020105', 'form_field', 1),
(25, '3010201', 'semester 6', '301020106', 'form_field', 1),
(26, '3010201', 'semester 7', '301020107', 'form_field', 1),
(27, '3010201', 'semester 8', '301020108', 'form_field', 1),
(28, '3010301', 'semester 1', '301030101', 'form_field', 1),
(29, '3010301', 'semester 2', '301030102', 'form_field', 1),
(30, '3010301', 'semester 3', '301030103', 'form_field', 1),
(31, '3010301', 'semester 4', '301030104', 'form_field', 1),
(32, '3010301', 'semester 5', '301030105', 'form_field', 1),
(33, '3010301', 'semester 6', '301030106', 'form_field', 1),
(34, '3010301', 'semester 7', '301030107', 'form_field', 1),
(35, '3010301', 'semester 8', '301030108', 'form_field', 1),
(36, '3010401', 'semester 1', '301040101', 'form_field', 1),
(37, '3010401', 'semester 2', '301040102', 'form_field', 1),
(38, '3010401', 'semester 3', '301040103', 'form_field', 1),
(39, '3010401', 'semester 4', '301040104', 'form_field', 1),
(40, '3010401', 'semester 5', '301040105', 'form_field', 1),
(41, '3010401', 'semester 6', '301040106', 'form_field', 1),
(42, '3010401', 'semester 7', '301040107', 'form_field', 1),
(43, '3010401', 'semester 8', '301040108', 'form_field', 1),
(44, '5010101', 'Morning', '501010101', 'form_field', 1),
(45, '5010101', 'Afternoon', '501010102', 'form_field', 1),
(46, '5010101', 'Evening', '501010103', 'form_field', 1),
(47, '5010102', 'Morning', '501010201', 'form_field', 1),
(48, '5010102', 'Afternoon', '501010202', 'form_field', 1),
(49, '5010102', 'Evening', '501010203', 'form_field', 1),
(50, '5010201', 'Vidhyalankar', '501020101', 'form_field', 1),
(51, '5010202', 'Vidhyalankar', '501020201', 'form_field', 1),
(52, '5010201', 'Imperial School and Study Centre (ISSC)', '501020102', 'form_field', 1),
(53, '5010201', 'Collegepond', '501020103', 'form_field', 1),
(54, '5010201', 'KIC Education', '501020104', 'form_field', 1),
(55, '5010201', 'Kraft Educational Services (K.E.S)', '501020105', 'form_field', 1),
(56, '5010202', 'Imperial School and Study Centre (ISSC)', '501020202', 'form_field', 1),
(57, '5010202', 'Collegepond', '501020203', 'form_field', 1),
(58, '5010202', 'KIC Education', '501020204', 'form_field', 1),
(59, '5010202', 'Kraft Educational Services (K.E.S)', '501020205', 'form_field', 1);

-- --------------------------------------------------------

--
-- Table structure for table `postgraduate`
--

CREATE TABLE IF NOT EXISTS `postgraduate` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `university name` varchar(255) NOT NULL,
  `college name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `primary`
--

CREATE TABLE IF NOT EXISTS `primary` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `unique_code` varchar(255) NOT NULL,
  `board name` varchar(255) NOT NULL,
  `institute name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `primary`
--

INSERT INTO `primary` (`id`, `unique_code`, `board name`, `institute name`) VALUES
(1, 'krT3QxCML5fGPDb', 'cbse', 'SSV'),
(5, '6CzfTcQwIW8M42l', 'ssc', 'SSV');

-- --------------------------------------------------------

--
-- Table structure for table `primary_record`
--

CREATE TABLE IF NOT EXISTS `primary_record` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
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
  `total` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `primary_record`
--

INSERT INTO `primary_record` (`id`, `user_code`, `form_code`, `data_field_8`, `data_field_1`, `data_field_2`, `data_field_3`, `data_field_4`, `data_field_5`, `data_field_6`, `data_field_7`, `last_modified`, `data_field_9`, `data_field_10`, `data_field_11`, `data_field_12`, `attempt`, `total`) VALUES
(2, 'krT3QxCML5fGPDb', '10101', NULL, '2015-05-20', '68', '79', '37', '119', '80', '81', '2015-05-28 10:19:12', NULL, NULL, NULL, NULL, 0, '71.38');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `salt` varchar(30) NOT NULL,
  `status` varchar(150) NOT NULL,
  `unique_code` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`,`username`),
  UNIQUE KEY `unique_code` (`unique_code`),
  UNIQUE KEY `unique_code_2` (`unique_code`),
  UNIQUE KEY `unique_code_3` (`unique_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=438 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fname`, `lname`, `email`, `username`, `password`, `salt`, `status`, `unique_code`) VALUES
(340, 'ituser1', 'ituser1', 'ituser1@ituser1.com', 'ituser1', '73dc65e2613bf5ef5ab1a7d1dda38581', 'UBxE', 'activated', 'tKJ2e3LX1TYLdKr'),
(341, 'ituser2', 'ituser2', 'ituser2@ituser2.com', 'ituser2', 'b0655a6ec6e04d5e440d4636621d5f4a', 'RFqI', 'activated', 'gNfowLizedMDVdV'),
(342, 'ituser3', 'ituser3', 'ituser3@ituser3.com', 'ituser3', 'a63b6d6d7dd8f44e26b64e264a6afbd2', 'zCw8', 'activated', 'mHBL5YjaLdZTIKC'),
(343, 'ituser4', 'ituser4', 'ituser4@ituser4.com', 'ituser4', 'd65278fe26bc5871806baea28ab6ec56', 'UAYb', 'activated', 'zxkiX8ehTMDXHEZ'),
(344, 'ituser5', 'ituser5', 'ituser5@ituser5.com', 'ituser5', 'b17c6cdd62183c8ba63b080ed735fd1e', 'm8vB', 'activated', 'cWTbJzATO6GsMXD'),
(345, 'ituser6', 'ituser6', 'ituser6@ituser6.com', 'ituser6', '8a804ae2a636c167b335be70ece125fb', 'SBEc', 'activated', 'SgXcUxW3MtDAnje'),
(346, 'ituser7', 'ituser7', 'ituser7@ituser7.com', 'ituser7', 'd156d39b315f2f2bb39a4500ba47307b', 'TchR', 'activated', 'QJlf4Q4Pbhv9kJZ'),
(347, 'ituser8', 'ituser8', 'ituser8@ituser8.com', 'ituser8', '789124a88593e340ab163996bed7f978', '9kqq', 'activated', 'weCfCjhy34j9lRd'),
(348, 'ituser9', 'ituser9', 'ituser9@ituser9.com', 'ituser9', '8eea091eb25cb01531a076330d10e1c1', 'D0Fz', 'activated', 'firfDHCR3A6uM4G'),
(349, 'ituser10', 'ituser10', 'ituser10@ituser10.com', 'ituser10', 'd57bebaa348a2a1d48f01ff03a71e16a', 'hXME', 'activated', '70TQoM72Mu1hUDg'),
(350, 'ituser11', 'ituser11', 'ituser11@ituser11.com', 'ituser11', '31c8873d2d4f6b6c47056edbd3db1afd', 'tPnZ', 'activated', 'PrU3doNGvSW3gyF'),
(351, 'ituser12', 'ituser12', 'ituser12@ituser12.com', 'ituser12', '0022f7f6ffdb73e40f27dcb50cf667e2', '6CJs', 'activated', 'EZIukEbSg4fHNNp'),
(352, 'ituser13', 'ituser13', 'ituser13@ituser13.com', 'ituser13', 'fb25ac48e9a3611f629fd0376182aa26', 'JZki', 'activated', 'JIJvVWsGbLVgQmI'),
(353, 'ituser14', 'ituser14', 'ituser14@ituser14.com', 'ituser14', 'f557e1a81e42a21a5fbe73993648e500', 'wQlU', 'activated', 'dzZnJwdTb2Y6YDv'),
(354, 'ituser15', 'ituser15', 'ituser15@ituser15.com', 'ituser15', '405575ad8bd4c79f5c1ab9d8429dc98e', 'eYW5', 'activated', 'YsUCCu0SGk8kWHK'),
(355, 'ituser16', 'ituser16', 'ituser16@ituser16.com', 'ituser16', '8fe08c1467adc452228dc00f91e93b2c', 'jIWJ', 'activated', 's44aTzZmsTufA4r'),
(356, 'ituser17', 'ituser17', 'ituser17@ituser17.com', 'ituser17', '5b62f284e6a02fdc67794c3193bc89eb', 'ygaf', 'activated', 'Lc4YVNyYPVzBCQc'),
(357, 'ituser18', 'ituser18', 'ituser18@ituser18.com', 'ituser18', '3a42ae01ab4828e7d7c64932d7896d6b', '0gPn', 'activated', 'XWOgkQGrnklHwOC'),
(358, 'ituser19', 'ituser19', 'ituser19@ituser19.com', 'ituser19', '255b081f68975ef3f6d026a27203e670', '4vTn', 'activated', 'QNIFhwJvu6yXTvE'),
(359, 'ituser20', 'ituser20', 'ituser20@ituser20.com', 'ituser20', 'c447570e42d2adcaa1cea859d08782ef', 'G8PU', 'activated', 'qvkA0Z2J0tntzcB'),
(360, 'ituser21', 'ituser21', 'ituser21@ituser21.com', 'ituser21', 'c2df828711028cdf60a1a00dc671b6e7', 'LC3J', 'activated', '3adgbTksZ7PboUG'),
(361, 'ituser22', 'ituser22', 'ituser22@ituser22.com', 'ituser22', '668bf42cb3802eb8f727943e076b8f47', 'HHFC', 'activated', 'PYV85yOayIPU2Z2'),
(362, 'ituser23', 'ituser23', 'ituser23@ituser23.com', 'ituser23', '70f938f327aabd948e45f8ca6ad1cf2f', 'Suzw', 'activated', 'zYn7dOXkYhMIDSh'),
(363, 'ituser24', 'ituser24', 'ituser24@ituser24.com', 'ituser24', 'c3c772a29a1a11f2cca57427bda9bc06', 'ATUl', 'activated', 'L3FC9qA2wQ4a0nb'),
(364, 'ituser25', 'ituser25', 'ituser25@ituser25.com', 'ituser25', '05cf21ad76d13f3b343033621bb692b9', '7sTX', 'activated', 'tOZ2RfgCfdT1Rzr'),
(365, 'ituser26', 'ituser26', 'ituser26@ituser26.com', 'ituser26', 'a2395cc18338b1550b94f0b539fdc286', '6gBF', 'activated', 'P7sZGypIDt4J7BG'),
(366, 'ituser27', 'ituser27', 'ituser27@ituser27.com', 'ituser27', '5c84cd69489c35ce3521ad51b1d7fbf5', 'kXqp', 'activated', 'OJLbKeqYI9TGZQE'),
(367, 'ituser28', 'ituser28', 'ituser28@ituser28.com', 'ituser28', '875a8bd8640d8fbffafbc47a43b64bff', 'bt9D', 'activated', '8aCkPiwsbhMOrxs'),
(368, 'ituser29', 'ituser29', 'ituser29@ituser29.com', 'ituser29', 'c13d0e83c17553fadb268ba431f85e7e', '2hsF', 'activated', '1PW6HizwTOAKoiG'),
(369, 'ituser30', 'ituser30', 'ituser30@ituser30.com', 'ituser30', 'af64e21c4c1cef95d2909bc682abbb1b', 'XYQZ', 'activated', 'xw6yYyBbYEsrr2H'),
(370, 'ituser31', 'ituser31', 'ituser31@ituser31.com', 'ituser31', '86c6dfac11933dd057e29ffd4ce7fa88', 'wwaD', 'activated', 'b8y0Q944qhpCOi9'),
(371, 'ituser32', 'ituser32', 'ituser32@ituser32.com', 'ituser32', '178e34aae05d6b1ae2906ec2f9fc635c', 'fkNO', 'activated', 'WiGGHDZRSjQ3JnF'),
(372, 'ituser33', 'ituser33', 'ituser33@ituser33.com', 'ituser33', '6a122e053888c9f7a2d29cc2e770d7a2', '2sHY', 'activated', 'tP6vGmY5MCOfRI2'),
(373, 'ituser34', 'ituser34', 'ituser34@ituser34.com', 'ituser34', '2590f8cbe600abfe4eef949444dea33e', 'aBnS', 'activated', '00oz6MzmaBOSHJu'),
(374, 'ituser35', 'ituser35', 'ituser35@ituser35.com', 'ituser35', '5a67963c5b5254c210289e1eebcb3986', 'bYjl', 'activated', 'srQwVdTGaAm0QSX'),
(375, 'ituser36', 'ituser36', 'ituser36@ituser36.com', 'ituser36', '27a38a58ce883dcb4609f8a0aeeac3fa', 'vidq', 'activated', 'KfWavSnIOUd6m1W'),
(376, 'ituser37', 'ituser37', 'ituser37@ituser37.com', 'ituser37', '24c18c0b88303000c0b1f0ecd3ef4325', 'XNh1', 'activated', '5bnEKjwpMp1K8zQ'),
(377, 'ituser38', 'ituser38', 'ituser38@ituser38.com', 'ituser38', 'f247bc576427353511921a746bb5c362', 'pP7G', 'activated', 'G7m4ZLstBA9uEqC'),
(378, 'ituser39', 'ituser39', 'ituser39@ituser39.com', 'ituser39', '431b78840e2474ee0e2a60b17bf80ec3', 'm8lD', 'activated', '3nbECfETD1q9y9r'),
(379, 'ituser40', 'ituser40', 'ituser40@ituser40.com', 'ituser40', '4b40d14beb0384d79a31cce10b0945f7', '0wCc', 'activated', 'XzvRLOzxn1XNN7a'),
(380, 'ituser41', 'ituser41', 'ituser41@ituser41.com', 'ituser41', '0050d9c5f85717932c87bc53e54ce6fd', 'JSIS', 'activated', 'yTcQQFqc16RJNLQ'),
(381, 'ituser42', 'ituser42', 'ituser42@ituser42.com', 'ituser42', '064bd377f0e3e0788f042dd050a67dfe', 'tCnf', 'activated', 'YWRtVNnekWev6b1'),
(382, 'ituser43', 'ituser43', 'ituser43@ituser43.com', 'ituser43', '95a22836f17c3bb95356008d2443d975', 'tHJm', 'activated', 'hqfWkBJwMeirK55'),
(383, 'ituser44', 'ituser44', 'ituser44@ituser44.com', 'ituser44', '7cb358527f200c266a7eca67383b07c4', 'BXBO', 'activated', 'V1cymBmlsDDTVJ8'),
(384, 'ituser45', 'ituser45', 'ituser45@ituser45.com', 'ituser45', '78b298a4970313d9c637b61169444e7c', 'Pgpx', 'activated', 'Ftq807qCBQ8I4Gc'),
(385, 'ituser46', 'ituser46', 'ituser46@ituser46.com', 'ituser46', '32e26ddc8368e9a538f1b627c0013a3c', 'OLFa', 'activated', 'lCIVAW5564bjIi4'),
(386, 'ituser47', 'ituser47', 'ituser47@ituser47.com', 'ituser47', 'a6fee46ae1933bf75bd676d0832338f5', 'OEF4', 'activated', 'RgAZUBf2rFgl3dX'),
(387, 'ituser48', 'ituser48', 'ituser48@ituser48.com', 'ituser48', 'ff97631c4d70c3b9cfd6eb1d3b0700c0', 'YCY0', 'activated', '8rpZePrCBOZM4z1'),
(388, 'ituser49', 'ituser49', 'ituser49@ituser49.com', 'ituser49', 'b174472eef98d5a874b083b68059c912', 'GF2d', 'activated', 'eeoAdxfZUPGUGPl'),
(389, 'compuser1', 'compuser1', 'compuser1@compuser1.com', 'compuser1', '808b922ef216bc814d2cdc0a94a0b7f0', '9Nj1', 'activated', '03KsO9jZy3AOf25'),
(390, 'compuser2', 'compuser2', 'compuser2@compuser2.com', 'compuser2', 'd46190851062aaa9134bdcf16ac57562', 'kqYE', 'activated', 's0JvKlDYhu0vpxE'),
(391, 'compuser3', 'compuser3', 'compuser3@compuser3.com', 'compuser3', 'cb059741f14b08f42a938a5eceaa206f', 'gOmC', 'activated', '61L4fsEYpv5iBBp'),
(392, 'compuser4', 'compuser4', 'compuser4@compuser4.com', 'compuser4', '9577a3565408f07a9a422f4a54aa35d6', 'RneA', 'activated', 'B66eWbfsgTRvgYb'),
(393, 'compuser5', 'compuser5', 'compuser5@compuser5.com', 'compuser5', '832ceb37125f29366927ffcd11279968', 'n4Ne', 'activated', 'IdTZ2Lo34e1nxIh'),
(394, 'compuser6', 'compuser6', 'compuser6@compuser6.com', 'compuser6', 'a69874f74da65842eb32c29e43179b2c', 'UKVy', 'activated', 'GltHTQT7z2J18Tu'),
(395, 'compuser7', 'compuser7', 'compuser7@compuser7.com', 'compuser7', '0e109f5605cb873f11f8d3899c6fbf68', 'BTll', 'activated', '373X8zlAEQxLAdG'),
(396, 'compuser8', 'compuser8', 'compuser8@compuser8.com', 'compuser8', 'ccdb8570d9e44a91b853534b87927229', 'hHYF', 'activated', 'PqRNUEGQRZODcpv'),
(397, 'compuser9', 'compuser9', 'compuser9@compuser9.com', 'compuser9', 'efd1de81850e2542431eae6ad5a80bf6', 'U3YS', 'activated', '4p9vUKDkGYw86zY'),
(398, 'compuser10', 'compuser10', 'compuser10@compuser10.com', 'compuser10', '85de7e86490a4f006ea7ec6f12283ced', '7isy', 'activated', '5B9E0q5o5iAH8bt'),
(399, 'compuser11', 'compuser11', 'compuser11@compuser11.com', 'compuser11', 'efffc4f912e9dd57355d7058815b5f01', 'ZVFm', 'activated', 'pQOG244nkthvXDu'),
(400, 'compuser12', 'compuser12', 'compuser12@compuser12.com', 'compuser12', 'e424f34ff14ded2578bf9b54cec752fb', 'GmS9', 'activated', 'EF5TAADs5v11Glu'),
(401, 'compuser13', 'compuser13', 'compuser13@compuser13.com', 'compuser13', '82be309db806df5bf539d0c93d73fd00', 'xVrQ', 'activated', 'aJiQnT70WZxFDRx'),
(402, 'compuser14', 'compuser14', 'compuser14@compuser14.com', 'compuser14', '78dd6157ab3dfe12b1f1acba865668bf', '9oSh', 'activated', 'Afl8mNHf3Jb0m8T'),
(403, 'compuser15', 'compuser15', 'compuser15@compuser15.com', 'compuser15', 'e88226d323770e94296596d6fc6f9f30', 'SHFy', 'activated', '0kYyTwNwbzqQeQc'),
(404, 'compuser16', 'compuser16', 'compuser16@compuser16.com', 'compuser16', '605253ede1c43bd566b864d0f3cfe653', 'iIRd', 'activated', 'D3y9RNs3JVYavHe'),
(405, 'compuser17', 'compuser17', 'compuser17@compuser17.com', 'compuser17', '6049a049c5e6bf2a07f34c562696bf04', 'RWgp', 'activated', 'pzI3XHmWU8jBY4t'),
(406, 'compuser18', 'compuser18', 'compuser18@compuser18.com', 'compuser18', '17a4d8affabd012d7e33f9aceae229a2', 'IAyB', 'activated', 'iS1vP01SRy9Riwu'),
(407, 'compuser19', 'compuser19', 'compuser19@compuser19.com', 'compuser19', '73cefdf966ed473bab5f7b41a1785b08', 'ZrSI', 'activated', 'KHboKCumrL1uxsG'),
(408, 'compuser20', 'compuser20', 'compuser20@compuser20.com', 'compuser20', 'f0988bde460ee5d07876a14b1755d3b9', 'xrMX', 'activated', 'MHj85O70vfcURRC'),
(409, 'compuser21', 'compuser21', 'compuser21@compuser21.com', 'compuser21', 'b3e683411968a12d8d691d69f27a3d58', '2P4n', 'activated', 'Qnpi3SqQMp2Vkx6'),
(410, 'compuser22', 'compuser22', 'compuser22@compuser22.com', 'compuser22', '37bcca0f06b7a561776624f047d141f9', 'vXUS', 'activated', 'PKPgb5wUayRzIRX'),
(411, 'compuser23', 'compuser23', 'compuser23@compuser23.com', 'compuser23', '13df6a400e73efb8bb8b59af786b45b5', 'VL1A', 'activated', 'WjtfQ3rbsIqHwfe'),
(412, 'compuser24', 'compuser24', 'compuser24@compuser24.com', 'compuser24', '42d79c5090bb3ab0adba92dec8eeb63b', 'xVFX', 'activated', 'vpbD9GR3iQWzofC'),
(413, 'compuser25', 'compuser25', 'compuser25@compuser25.com', 'compuser25', '28a31e8e0852806a28bd51831950d8cf', '6Rfw', 'activated', '09uYqoScl9zAvyf'),
(414, 'compuser26', 'compuser26', 'compuser26@compuser26.com', 'compuser26', '67f32a2954c109e497de405c7612858c', '7KgM', 'activated', 'qKwYrVHghdwCiii'),
(415, 'compuser27', 'compuser27', 'compuser27@compuser27.com', 'compuser27', 'dacd64dda452e3bdc3dffb29d87c7e80', '86JQ', 'activated', 'KhE3jYpeDgOy7zx'),
(416, 'compuser28', 'compuser28', 'compuser28@compuser28.com', 'compuser28', 'e487f07879dcb2f27a96307c98f874ed', '1iKv', 'activated', 'PdRbKHBDhu9b48M'),
(417, 'compuser29', 'compuser29', 'compuser29@compuser29.com', 'compuser29', '3f96b3da60d57cc8f8c69b819383f8bd', 'x58x', 'activated', 'RGorsFjffkFoXt8'),
(418, 'compuser30', 'compuser30', 'compuser30@compuser30.com', 'compuser30', '59294eeb333e951775702d25388a9487', 'CvV8', 'activated', 'adV2ppUNVqTdFLj'),
(419, 'compuser31', 'compuser31', 'compuser31@compuser31.com', 'compuser31', '3dca6fb0f043e7c4af7d451c369ccde2', 'Hvsw', 'activated', '4PhBVeOwADvdDom'),
(420, 'compuser32', 'compuser32', 'compuser32@compuser32.com', 'compuser32', '672d21856acbdd737cf6e93fadfd21a2', 'iY5S', 'activated', 'PboNw0J6c7siDxE'),
(421, 'compuser33', 'compuser33', 'compuser33@compuser33.com', 'compuser33', '294c7053a76d974ed8836118d58bf66c', 'k0lZ', 'activated', 'bG6yaIPhQwsD6jm'),
(422, 'compuser34', 'compuser34', 'compuser34@compuser34.com', 'compuser34', 'b311718598ddfb59392af86807185c44', 'zVMY', 'activated', 'm2O43FLvIaWEJms'),
(423, 'compuser35', 'compuser35', 'compuser35@compuser35.com', 'compuser35', '1b90d36a36c4f11380bde705be909d97', '2Ly0', 'activated', 'J52QjdW9DUs3lwh'),
(424, 'compuser36', 'compuser36', 'compuser36@compuser36.com', 'compuser36', 'bf3f613f2bd9db9b8ae2b75234ceb512', 'jrbI', 'activated', 'Vr5rTwEUl06xX0e'),
(425, 'compuser37', 'compuser37', 'compuser37@compuser37.com', 'compuser37', 'fac7724ab9be3e4b31283254ee1b9c28', 'HtVd', 'activated', '3x6iVKREDArVBbv'),
(426, 'compuser38', 'compuser38', 'compuser38@compuser38.com', 'compuser38', '13e52a6606799dd8daddb55b45e202c3', 'wTWI', 'activated', 'yvNYbpwup3PiR4e'),
(427, 'compuser39', 'compuser39', 'compuser39@compuser39.com', 'compuser39', '6e47d4c78559068e3825fd3c8f618457', 'egLE', 'activated', 'BBwxVSUs5O3HnFQ'),
(428, 'compuser40', 'compuser40', 'compuser40@compuser40.com', 'compuser40', '8231c705973a64878a48d8e7bcf7b1f7', 'tOYn', 'activated', 'OHtERc3qiWAhExt'),
(429, 'compuser41', 'compuser41', 'compuser41@compuser41.com', 'compuser41', 'fdc01d3a06e1c892c621f772b68e2498', 'TevN', 'activated', 'PNNx12jmWP4ZWou'),
(430, 'compuser42', 'compuser42', 'compuser42@compuser42.com', 'compuser42', '048164b3f74b301f2592e34855b13af0', 'HVXK', 'activated', 'BJQTfyBTmUuBrtS'),
(431, 'compuser43', 'compuser43', 'compuser43@compuser43.com', 'compuser43', '5b37ad5951b2d3718aedf0a600a01780', 'Wcfc', 'activated', 'Y0fCWrrfqmXD2r4'),
(432, 'compuser44', 'compuser44', 'compuser44@compuser44.com', 'compuser44', '732c77fbf145059bda9ca26e17ab5da2', '9lav', 'activated', '8Zdz9jWYS4kRXmj'),
(433, 'compuser45', 'compuser45', 'compuser45@compuser45.com', 'compuser45', '96f61c483df9bffeacc9cfa46d0fa74e', 'udOY', 'activated', 'Uegi5nzOrOWoTYj'),
(434, 'compuser46', 'compuser46', 'compuser46@compuser46.com', 'compuser46', '5b38957351e5db2b0f90840147d28817', 'E5gj', 'activated', 'OFL8CjfSBGRX1zB'),
(435, 'compuser47', 'compuser47', 'compuser47@compuser47.com', 'compuser47', 'c527241bf3d7d920eec0aae2fa4f9eba', 'khbl', 'activated', 'TdNW4Ou0fzkNTUS'),
(436, 'compuser48', 'compuser48', 'compuser48@compuser48.com', 'compuser48', '15e4da79151c25f8c2d53a5b1824969d', 'H3Yv', 'activated', 'enrJ9Qg6GAmmU9q'),
(437, 'compuser49', 'compuser49', 'compuser49@compuser49.com', 'compuser49', 'e5e97431036124be1761777a79ff31eb', 'RJOj', 'activated', 'sj1wotjcBZAvM7n');

-- --------------------------------------------------------

--
-- Table structure for table `secondary`
--

CREATE TABLE IF NOT EXISTS `secondary` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `unique_code` varchar(255) NOT NULL,
  `board name` varchar(255) NOT NULL,
  `institute name` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_record`
--

CREATE TABLE IF NOT EXISTS `student_record` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(255) NOT NULL,
  `info_link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `student_record`
--

INSERT INTO `student_record` (`id`, `unique_id`, `info_link`) VALUES
(1, 'krT3QxCML5fGPDb', '../UserJson/Dashboard/krT3QxCML5fGPDb.json');

-- --------------------------------------------------------

--
-- Table structure for table `sub_type`
--

CREATE TABLE IF NOT EXISTS `sub_type` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `form_no` varchar(255) NOT NULL,
  `sub_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `sub_type`
--

INSERT INTO `sub_type` (`id`, `form_no`, `sub_type`) VALUES
(1, '301010103', 'undergraduate'),
(2, '301010104', 'undergraduate'),
(3, '501020101', 'GRE_Practice_Test'),
(4, '301010101', 'undergraduate'),
(5, '301010102', 'undergraduate'),
(6, '301010105', 'undergraduate'),
(7, '301010106', 'undergraduate'),
(8, '301010107', 'undergraduate'),
(9, '301010108', 'undergraduate'),
(10, '301020101', 'undergraduate'),
(11, '301020102', 'undergraduate'),
(12, '301020103', 'undergraduate'),
(13, '301020104', 'undergraduate'),
(14, '301020105', 'undergraduate'),
(15, '301020106', 'undergraduate'),
(16, '301020107', 'undergraduate'),
(17, '301020108', 'undergraduate'),
(18, '301030101', 'undergraduate'),
(19, '301030102', 'undergraduate'),
(20, '301030103', 'undergraduate'),
(21, '301030104', 'undergraduate'),
(22, '301030105', 'undergraduate'),
(23, '301030106', 'undergraduate'),
(24, '301030107', 'undergraduate'),
(25, '301030108', 'undergraduate'),
(26, '301040101', 'undergraduate'),
(27, '301040102', 'undergraduate'),
(28, '301040103', 'undergraduate'),
(29, '301040104', 'undergraduate'),
(30, '301040105', 'undergraduate'),
(31, '301040106', 'undergraduate'),
(32, '301040107', 'undergraduate'),
(33, '301040108', 'undergraduate'),
(34, '5010202', 'GRE_Practice_Test'),
(35, '50202', 'TOEFL'),
(36, '10101', '10th'),
(37, '501010101', 'GRE_Final'),
(39, '10102', '10th'),
(40, '10103', '10th'),
(41, '10104', '10th'),
(42, '501010102', 'GRE_Final'),
(43, '501020102', 'GRE_Practice_Test'),
(44, '501020103', 'GRE_Practice_Test'),
(45, '501020104', 'GRE_Practice_Test'),
(46, '501020105', 'GRE_Practice_Test'),
(47, '501020201', 'GRE_Practice_Test'),
(48, '501020202', 'GRE_Practice_Test'),
(49, '501020203', 'GRE_Practice_Test'),
(50, '501020204', 'GRE_Practice_Test'),
(51, '501020205', 'GRE_Practice_Test');

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate`
--

CREATE TABLE IF NOT EXISTS `undergraduate` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `unique_code` varchar(255) NOT NULL,
  `university name` varchar(255) NOT NULL,
  `institute name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=400 ;

--
-- Dumping data for table `undergraduate`
--

INSERT INTO `undergraduate` (`id`, `unique_code`, `university name`, `institute name`) VALUES
(302, 'tKJ2e3LX1TYLdKr', 'mumbai', 'PVPP COE'),
(303, 'gNfowLizedMDVdV', 'mumbai', 'DJ'),
(304, 'mHBL5YjaLdZTIKC', 'mumbai', 'DBIT'),
(305, 'zxkiX8ehTMDXHEZ', 'mumbai', 'DJ'),
(306, 'cWTbJzATO6GsMXD', 'mumbai', 'RJIT'),
(307, 'SgXcUxW3MtDAnje', 'mumbai', 'ACE'),
(308, 'QJlf4Q4Pbhv9kJZ', 'mumbai', 'DBIT'),
(309, 'weCfCjhy34j9lRd', 'mumbai', 'DBIT'),
(310, 'firfDHCR3A6uM4G', 'mumbai', 'DJ'),
(311, '70TQoM72Mu1hUDg', 'mumbai', 'PVPP COE'),
(312, 'PrU3doNGvSW3gyF', 'mumbai', 'CRIT'),
(313, 'EZIukEbSg4fHNNp', 'mumbai', 'RJIT'),
(314, 'JIJvVWsGbLVgQmI', 'mumbai', 'RJIT'),
(315, 'dzZnJwdTb2Y6YDv', 'mumbai', 'RJIT'),
(316, 'YsUCCu0SGk8kWHK', 'mumbai', 'RJIT'),
(317, 's44aTzZmsTufA4r', 'mumbai', 'KJSCE'),
(318, 'Lc4YVNyYPVzBCQc', 'mumbai', 'KJSCE'),
(319, 'XWOgkQGrnklHwOC', 'mumbai', 'CRIT'),
(320, 'QNIFhwJvu6yXTvE', 'mumbai', 'RJIT'),
(321, 'qvkA0Z2J0tntzcB', 'mumbai', 'CRIT'),
(322, '3adgbTksZ7PboUG', 'mumbai', 'KJSCE'),
(323, 'PYV85yOayIPU2Z2', 'mumbai', 'PVPP COE'),
(324, 'zYn7dOXkYhMIDSh', 'mumbai', 'ACE'),
(325, 'L3FC9qA2wQ4a0nb', 'mumbai', 'DBIT'),
(326, 'tOZ2RfgCfdT1Rzr', 'mumbai', 'PVPP COE'),
(327, 'P7sZGypIDt4J7BG', 'mumbai', 'KJSCE'),
(328, 'OJLbKeqYI9TGZQE', 'mumbai', 'PVPP COE'),
(329, '8aCkPiwsbhMOrxs', 'mumbai', 'ACE'),
(330, '1PW6HizwTOAKoiG', 'mumbai', 'KJSCE'),
(331, 'xw6yYyBbYEsrr2H', 'mumbai', 'DJ'),
(332, 'b8y0Q944qhpCOi9', 'mumbai', 'CRIT'),
(333, 'WiGGHDZRSjQ3JnF', 'mumbai', 'CRIT'),
(334, 'tP6vGmY5MCOfRI2', 'mumbai', 'PVPP COE'),
(335, '00oz6MzmaBOSHJu', 'mumbai', 'DBIT'),
(336, 'srQwVdTGaAm0QSX', 'mumbai', 'CRIT'),
(337, 'KfWavSnIOUd6m1W', 'mumbai', 'KJSCE'),
(338, '5bnEKjwpMp1K8zQ', 'mumbai', 'CRIT'),
(339, 'G7m4ZLstBA9uEqC', 'mumbai', 'PVPP COE'),
(340, '3nbECfETD1q9y9r', 'mumbai', 'DJ'),
(341, 'XzvRLOzxn1XNN7a', 'mumbai', 'KJSCE'),
(342, 'yTcQQFqc16RJNLQ', 'mumbai', 'KJSCE'),
(343, 'YWRtVNnekWev6b1', 'mumbai', 'RJIT'),
(344, 'hqfWkBJwMeirK55', 'mumbai', 'KJSCE'),
(345, 'V1cymBmlsDDTVJ8', 'mumbai', 'DBIT'),
(346, 'Ftq807qCBQ8I4Gc', 'mumbai', 'KJSCE'),
(347, 'lCIVAW5564bjIi4', 'mumbai', 'RJIT'),
(348, 'RgAZUBf2rFgl3dX', 'mumbai', 'DJ'),
(349, '8rpZePrCBOZM4z1', 'mumbai', 'RJIT'),
(350, 'eeoAdxfZUPGUGPl', 'mumbai', 'KJSCE'),
(351, '03KsO9jZy3AOf25', 'mumbai', 'RJIT'),
(352, 's0JvKlDYhu0vpxE', 'mumbai', 'ACE'),
(353, '61L4fsEYpv5iBBp', 'mumbai', 'RJIT'),
(354, 'B66eWbfsgTRvgYb', 'mumbai', 'KJSCE'),
(355, 'IdTZ2Lo34e1nxIh', 'mumbai', 'DBIT'),
(356, 'GltHTQT7z2J18Tu', 'mumbai', 'ACE'),
(357, '373X8zlAEQxLAdG', 'mumbai', 'KJSCE'),
(358, 'PqRNUEGQRZODcpv', 'mumbai', 'PVPP COE'),
(359, '4p9vUKDkGYw86zY', 'mumbai', 'ACE'),
(360, '5B9E0q5o5iAH8bt', 'mumbai', 'KJSCE'),
(361, 'pQOG244nkthvXDu', 'mumbai', 'DBIT'),
(362, 'EF5TAADs5v11Glu', 'mumbai', 'DBIT'),
(363, 'aJiQnT70WZxFDRx', 'mumbai', 'DBIT'),
(364, 'Afl8mNHf3Jb0m8T', 'mumbai', 'ACE'),
(365, '0kYyTwNwbzqQeQc', 'mumbai', 'DBIT'),
(366, 'D3y9RNs3JVYavHe', 'mumbai', 'DBIT'),
(367, 'pzI3XHmWU8jBY4t', 'mumbai', 'CRIT'),
(368, 'iS1vP01SRy9Riwu', 'mumbai', 'CRIT'),
(369, 'KHboKCumrL1uxsG', 'mumbai', 'CRIT'),
(370, 'MHj85O70vfcURRC', 'mumbai', 'PVPP COE'),
(371, 'Qnpi3SqQMp2Vkx6', 'mumbai', 'KJSCE'),
(372, 'PKPgb5wUayRzIRX', 'mumbai', 'ACE'),
(373, 'WjtfQ3rbsIqHwfe', 'mumbai', 'RJIT'),
(374, 'vpbD9GR3iQWzofC', 'mumbai', 'ACE'),
(375, '09uYqoScl9zAvyf', 'mumbai', 'KJSCE'),
(376, 'qKwYrVHghdwCiii', 'mumbai', 'DJ'),
(377, 'KhE3jYpeDgOy7zx', 'mumbai', 'DBIT'),
(378, 'PdRbKHBDhu9b48M', 'mumbai', 'KJSCE'),
(379, 'RGorsFjffkFoXt8', 'mumbai', 'ACE'),
(380, 'adV2ppUNVqTdFLj', 'mumbai', 'KJSCE'),
(381, '4PhBVeOwADvdDom', 'mumbai', 'PVPP COE'),
(382, 'PboNw0J6c7siDxE', 'mumbai', 'CRIT'),
(383, 'bG6yaIPhQwsD6jm', 'mumbai', 'RJIT'),
(384, 'm2O43FLvIaWEJms', 'mumbai', 'DJ'),
(385, 'J52QjdW9DUs3lwh', 'mumbai', 'DBIT'),
(386, 'Vr5rTwEUl06xX0e', 'mumbai', 'RJIT'),
(387, '3x6iVKREDArVBbv', 'mumbai', 'CRIT'),
(388, 'yvNYbpwup3PiR4e', 'mumbai', 'PVPP COE'),
(389, 'BBwxVSUs5O3HnFQ', 'mumbai', 'RJIT'),
(390, 'OHtERc3qiWAhExt', 'mumbai', 'CRIT'),
(391, 'PNNx12jmWP4ZWou', 'mumbai', 'KJSCE'),
(392, 'BJQTfyBTmUuBrtS', 'mumbai', 'CRIT'),
(393, 'Y0fCWrrfqmXD2r4', 'mumbai', 'ACE'),
(394, '8Zdz9jWYS4kRXmj', 'mumbai', 'DBIT'),
(395, 'Uegi5nzOrOWoTYj', 'mumbai', 'ACE'),
(396, 'OFL8CjfSBGRX1zB', 'mumbai', 'DBIT'),
(397, 'TdNW4Ou0fzkNTUS', 'mumbai', 'KJSCE'),
(398, 'enrJ9Qg6GAmmU9q', 'mumbai', 'DJ'),
(399, 'sj1wotjcBZAvM7n', 'mumbai', 'DBIT');

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate_record`
--

CREATE TABLE IF NOT EXISTS `undergraduate_record` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
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
  `total` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3143 ;

--
-- Dumping data for table `undergraduate_record`
--

INSERT INTO `undergraduate_record` (`id`, `user_code`, `form_code`, `data_field_8`, `data_field_1`, `data_field_2`, `data_field_3`, `data_field_4`, `data_field_5`, `data_field_6`, `data_field_7`, `last_modified`, `data_field_9`, `data_field_10`, `data_field_11`, `data_field_12`, `data_field_13`, `data_field_14`, `data_field_15`, `attempt`, `total`) VALUES
(2359, 'tKJ2e3LX1TYLdKr', '301010101', 'D', '2010-12-15', 'C', 'D', 'P', 'P', 'E', 'C', '2015-06-02 13:03:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.57'),
(2360, 'tKJ2e3LX1TYLdKr', '301010102', 'P', '2011-06-15', 'C', 'C', 'E', 'D', 'D', 'O', '2015-06-02 13:03:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(2361, 'tKJ2e3LX1TYLdKr', '301010103', NULL, '2011-12-15', 'A', 'D', 'B', 'O', 'O', 'B', '2015-06-02 13:03:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.5'),
(2362, 'tKJ2e3LX1TYLdKr', '301010104', NULL, '2012-06-15', 'E', 'C', 'C', 'P', 'C', 'B', '2015-06-02 13:03:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(2363, 'tKJ2e3LX1TYLdKr', '301010105', 'C', '2012-12-15', 'A', 'P', 'B', 'D', 'C', 'C', '2015-06-02 13:03:49', 'D', 'O', 'E', 'B', NULL, NULL, NULL, 0, '7.0'),
(2364, 'tKJ2e3LX1TYLdKr', '301010106', 'E', '2013-06-15', 'A', 'B', 'D', 'A', 'E', 'C', '2015-06-02 13:03:49', 'O', 'E', 'A', NULL, NULL, NULL, NULL, 0, '7.3'),
(2365, 'tKJ2e3LX1TYLdKr', '301010107', 'D', '2013-12-15', 'P', 'B', 'A', 'E', 'C', 'O', '2015-06-02 13:03:49', 'E', 'P', 'B', 'B', NULL, NULL, NULL, 0, '6.73'),
(2366, 'tKJ2e3LX1TYLdKr', '301010108', 'C', '2014-06-15', 'C', 'C', 'D', 'P', 'D', 'O', '2015-06-02 13:03:49', 'O', 'P', NULL, NULL, NULL, NULL, NULL, 0, '6.78'),
(2367, 'gNfowLizedMDVdV', '301010101', 'P', '2010-12-15', 'B', 'D', 'D', 'D', 'P', 'A', '2015-06-02 13:03:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.14'),
(2368, 'gNfowLizedMDVdV', '301010102', 'E', '2011-06-15', 'D', 'D', 'B', 'B', 'O', 'A', '2015-06-02 13:03:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(2369, 'gNfowLizedMDVdV', '301010103', NULL, '2011-12-15', 'B', 'E', 'A', 'E', 'P', 'P', '2015-06-02 13:03:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.83'),
(2370, 'gNfowLizedMDVdV', '301010104', NULL, '2012-06-15', 'B', 'E', 'A', 'P', 'O', 'E', '2015-06-02 13:03:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2371, 'gNfowLizedMDVdV', '301010105', 'O', '2012-12-15', 'E', 'B', 'E', 'C', 'C', 'E', '2015-06-02 13:03:49', 'A', 'B', 'C', 'E', NULL, NULL, NULL, 0, '6.91'),
(2372, 'gNfowLizedMDVdV', '301010106', 'E', '2013-06-15', 'C', 'D', 'D', 'P', 'E', 'D', '2015-06-02 13:03:49', 'B', 'A', 'A', NULL, NULL, NULL, NULL, 0, '6.5'),
(2373, 'gNfowLizedMDVdV', '301010107', 'P', '2013-12-15', 'D', 'C', 'B', 'B', 'C', 'P', '2015-06-02 13:03:49', 'C', 'B', 'B', 'D', NULL, NULL, NULL, 0, '6.64'),
(2374, 'gNfowLizedMDVdV', '301010108', 'P', '2014-06-15', 'A', 'A', 'P', 'B', 'P', 'E', '2015-06-02 13:03:49', 'A', 'D', NULL, NULL, NULL, NULL, NULL, 0, '6.44'),
(2375, 'mHBL5YjaLdZTIKC', '301010101', 'P', '2010-12-15', 'C', 'O', 'P', 'A', 'A', 'A', '2015-06-02 13:03:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(2376, 'mHBL5YjaLdZTIKC', '301010102', 'O', '2011-06-15', 'D', 'O', 'O', 'P', 'B', 'C', '2015-06-02 13:03:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.86'),
(2377, 'mHBL5YjaLdZTIKC', '301010103', NULL, '2011-12-15', 'P', 'O', 'P', 'E', 'B', 'P', '2015-06-02 13:03:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.83'),
(2378, 'mHBL5YjaLdZTIKC', '301010104', NULL, '2012-06-15', 'P', 'D', 'D', 'P', 'E', 'B', '2015-06-02 13:03:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.5'),
(2379, 'mHBL5YjaLdZTIKC', '301010105', 'P', '2012-12-15', 'E', 'B', 'P', 'E', 'P', 'E', '2015-06-02 13:03:49', 'O', 'P', 'E', 'E', NULL, NULL, NULL, 0, '5.36'),
(2380, 'mHBL5YjaLdZTIKC', '301010106', 'D', '2013-06-15', 'C', 'E', 'A', 'C', 'D', 'P', '2015-06-02 13:03:49', 'P', 'O', 'B', NULL, NULL, NULL, NULL, 0, '6.6'),
(2381, 'mHBL5YjaLdZTIKC', '301010107', 'D', '2013-12-15', 'B', 'B', 'P', 'D', 'B', 'P', '2015-06-02 13:03:49', 'O', 'B', 'A', 'A', NULL, NULL, NULL, 0, '7.27'),
(2382, 'mHBL5YjaLdZTIKC', '301010108', 'A', '2014-06-15', 'B', 'D', 'D', 'E', 'O', 'D', '2015-06-02 13:03:49', 'B', 'B', NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2383, 'zxkiX8ehTMDXHEZ', '301010101', 'D', '2010-12-15', 'D', 'D', 'C', 'A', 'P', 'O', '2015-06-02 13:03:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2384, 'zxkiX8ehTMDXHEZ', '301010102', 'O', '2011-06-15', 'D', 'A', 'O', 'O', 'O', 'O', '2015-06-02 13:03:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '9.29'),
(2385, 'zxkiX8ehTMDXHEZ', '301010103', NULL, '2011-12-15', 'A', 'B', 'P', 'B', 'D', 'P', '2015-06-02 13:03:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2386, 'zxkiX8ehTMDXHEZ', '301010104', NULL, '2012-06-15', 'C', 'D', 'O', 'P', 'A', 'B', '2015-06-02 13:03:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2387, 'zxkiX8ehTMDXHEZ', '301010105', 'C', '2012-12-15', 'D', 'D', 'C', 'E', 'E', 'C', '2015-06-02 13:03:50', 'O', 'D', 'E', 'E', NULL, NULL, NULL, 0, '6.27'),
(2388, 'zxkiX8ehTMDXHEZ', '301010106', 'O', '2013-06-15', 'P', 'O', 'C', 'E', 'E', 'A', '2015-06-02 13:03:50', 'E', 'E', 'E', NULL, NULL, NULL, NULL, 0, '6.5'),
(2389, 'zxkiX8ehTMDXHEZ', '301010107', 'A', '2013-12-15', 'C', 'E', 'D', 'E', 'D', 'O', '2015-06-02 13:03:50', 'E', 'A', 'O', 'A', NULL, NULL, NULL, 0, '7.36'),
(2390, 'zxkiX8ehTMDXHEZ', '301010108', 'B', '2014-06-15', 'C', 'A', 'C', 'C', 'O', 'E', '2015-06-02 13:03:50', 'C', 'A', NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(2391, 'cWTbJzATO6GsMXD', '301010101', 'O', '2010-12-15', 'E', 'E', 'A', 'O', 'B', 'A', '2015-06-02 13:03:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2392, 'cWTbJzATO6GsMXD', '301010102', 'E', '2011-06-15', 'A', 'B', 'C', 'O', 'O', 'E', '2015-06-02 13:03:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.71'),
(2393, 'cWTbJzATO6GsMXD', '301010103', NULL, '2011-12-15', 'C', 'C', 'A', 'D', 'C', 'B', '2015-06-02 13:03:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2394, 'cWTbJzATO6GsMXD', '301010104', NULL, '2012-06-15', 'B', 'E', 'O', 'B', 'P', 'O', '2015-06-02 13:03:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2395, 'cWTbJzATO6GsMXD', '301010105', 'A', '2012-12-15', 'C', 'B', 'A', 'E', 'C', 'B', '2015-06-02 13:03:50', 'P', 'C', 'C', 'E', NULL, NULL, NULL, 0, '6.91'),
(2396, 'cWTbJzATO6GsMXD', '301010106', 'B', '2013-06-15', 'D', 'P', 'O', 'O', 'B', 'O', '2015-06-02 13:03:50', 'D', 'B', 'D', NULL, NULL, NULL, NULL, 0, '7.6'),
(2397, 'cWTbJzATO6GsMXD', '301010107', 'P', '2013-12-15', 'O', 'O', 'C', 'B', 'A', 'P', '2015-06-02 13:03:50', 'O', 'A', 'P', 'B', NULL, NULL, NULL, 0, '7.55'),
(2398, 'cWTbJzATO6GsMXD', '301010108', 'D', '2014-06-15', 'P', 'D', 'A', 'E', 'P', 'B', '2015-06-02 13:03:50', 'C', 'B', NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(2399, 'SgXcUxW3MtDAnje', '301010101', 'C', '2010-12-15', 'C', 'E', 'B', 'A', 'P', 'B', '2015-06-02 13:03:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2400, 'SgXcUxW3MtDAnje', '301010102', 'B', '2011-06-15', 'C', 'B', 'P', 'O', 'D', 'D', '2015-06-02 13:03:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2401, 'SgXcUxW3MtDAnje', '301010103', NULL, '2011-12-15', 'D', 'B', 'D', 'D', 'O', 'B', '2015-06-02 13:03:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2402, 'SgXcUxW3MtDAnje', '301010104', NULL, '2012-06-15', 'P', 'B', 'D', 'D', 'P', 'B', '2015-06-02 13:03:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2403, 'SgXcUxW3MtDAnje', '301010105', 'D', '2012-12-15', 'C', 'E', 'A', 'A', 'B', 'P', '2015-06-02 13:03:50', 'A', 'C', 'P', 'C', NULL, NULL, NULL, 0, '6.82'),
(2404, 'SgXcUxW3MtDAnje', '301010106', 'E', '2013-06-15', 'E', 'E', 'O', 'A', 'O', 'E', '2015-06-02 13:03:50', 'A', 'P', 'D', NULL, NULL, NULL, NULL, 0, '6.8'),
(2405, 'SgXcUxW3MtDAnje', '301010107', 'C', '2013-12-15', 'E', 'A', 'P', 'E', 'P', 'B', '2015-06-02 13:03:51', 'O', 'D', 'B', 'D', NULL, NULL, NULL, 0, '6.55'),
(2406, 'SgXcUxW3MtDAnje', '301010108', 'D', '2014-06-15', 'B', 'A', 'A', 'O', 'C', 'O', '2015-06-02 13:03:51', 'B', 'O', NULL, NULL, NULL, NULL, NULL, 0, '8.56'),
(2407, 'QJlf4Q4Pbhv9kJZ', '301010101', 'A', '2010-12-15', 'D', 'B', 'C', 'O', 'P', 'D', '2015-06-02 13:03:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.14'),
(2408, 'QJlf4Q4Pbhv9kJZ', '301010102', 'B', '2011-06-15', 'C', 'D', 'P', 'C', 'E', 'E', '2015-06-02 13:03:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2409, 'QJlf4Q4Pbhv9kJZ', '301010103', NULL, '2011-12-15', 'C', 'D', 'D', 'C', 'P', 'O', '2015-06-02 13:03:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.67'),
(2410, 'QJlf4Q4Pbhv9kJZ', '301010104', NULL, '2012-06-15', 'B', 'A', 'C', 'O', 'O', 'C', '2015-06-02 13:03:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.5'),
(2411, 'QJlf4Q4Pbhv9kJZ', '301010105', 'E', '2012-12-15', 'P', 'C', 'E', 'P', 'B', 'A', '2015-06-02 13:03:51', 'E', 'E', 'P', 'E', NULL, NULL, NULL, 0, '5.55'),
(2412, 'QJlf4Q4Pbhv9kJZ', '301010106', 'C', '2013-06-15', 'C', 'D', 'C', 'P', 'A', 'A', '2015-06-02 13:03:51', 'C', 'E', 'P', NULL, NULL, NULL, NULL, 0, '6.5'),
(2413, 'QJlf4Q4Pbhv9kJZ', '301010107', 'P', '2013-12-15', 'O', 'E', 'O', 'A', 'B', 'A', '2015-06-02 13:03:51', 'D', 'B', 'A', 'D', NULL, NULL, NULL, 0, '7.64'),
(2414, 'QJlf4Q4Pbhv9kJZ', '301010108', 'O', '2014-06-15', 'D', 'E', 'A', 'E', 'D', 'P', '2015-06-02 13:03:51', 'E', 'C', NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(2415, 'weCfCjhy34j9lRd', '301010101', 'E', '2010-12-15', 'B', 'D', 'P', 'O', 'A', 'P', '2015-06-02 13:03:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.57'),
(2416, 'weCfCjhy34j9lRd', '301010102', 'P', '2011-06-15', 'A', 'C', 'P', 'A', 'O', 'B', '2015-06-02 13:03:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.29'),
(2417, 'weCfCjhy34j9lRd', '301010103', NULL, '2011-12-15', 'B', 'E', 'B', 'C', 'A', 'P', '2015-06-02 13:03:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2418, 'weCfCjhy34j9lRd', '301010104', NULL, '2012-06-15', 'C', 'D', 'O', 'P', 'O', 'O', '2015-06-02 13:03:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2419, 'weCfCjhy34j9lRd', '301010105', 'B', '2012-12-15', 'A', 'P', 'D', 'E', 'C', 'D', '2015-06-02 13:03:51', 'P', 'O', 'A', 'A', NULL, NULL, NULL, 0, '7.0'),
(2420, 'weCfCjhy34j9lRd', '301010106', 'B', '2013-06-15', 'O', 'P', 'E', 'C', 'D', 'B', '2015-06-02 13:03:51', 'D', 'B', 'P', NULL, NULL, NULL, NULL, 0, '6.6'),
(2421, 'weCfCjhy34j9lRd', '301010107', 'D', '2013-12-15', 'B', 'C', 'P', 'D', 'O', 'D', '2015-06-02 13:03:51', 'C', 'O', 'P', 'A', NULL, NULL, NULL, 0, '7.0'),
(2422, 'weCfCjhy34j9lRd', '301010108', 'C', '2014-06-15', 'B', 'C', 'A', 'A', 'D', 'D', '2015-06-02 13:03:51', 'E', 'B', NULL, NULL, NULL, NULL, NULL, 0, '7.22'),
(2423, 'firfDHCR3A6uM4G', '301010101', 'A', '2010-12-15', 'D', 'C', 'D', 'A', 'O', 'O', '2015-06-02 13:03:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.14'),
(2424, 'firfDHCR3A6uM4G', '301010102', 'B', '2011-06-15', 'D', 'D', 'A', 'D', 'E', 'O', '2015-06-02 13:03:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.14'),
(2425, 'firfDHCR3A6uM4G', '301010103', NULL, '2011-12-15', 'A', 'P', 'P', 'E', 'D', 'O', '2015-06-02 13:03:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(2426, 'firfDHCR3A6uM4G', '301010104', NULL, '2012-06-15', 'B', 'P', 'B', 'E', 'D', 'D', '2015-06-02 13:03:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2427, 'firfDHCR3A6uM4G', '301010105', 'C', '2012-12-15', 'O', 'O', 'O', 'E', 'C', 'B', '2015-06-02 13:03:51', 'B', 'A', 'P', 'D', NULL, NULL, NULL, 0, '7.64'),
(2428, 'firfDHCR3A6uM4G', '301010106', 'A', '2013-06-15', 'D', 'D', 'C', 'E', 'A', 'B', '2015-06-02 13:03:51', 'P', 'O', 'D', NULL, NULL, NULL, NULL, 0, '7.0'),
(2429, 'firfDHCR3A6uM4G', '301010107', 'E', '2013-12-15', 'O', 'P', 'P', 'D', 'E', 'E', '2015-06-02 13:03:51', 'A', 'O', 'B', 'D', NULL, NULL, NULL, 0, '6.55'),
(2430, 'firfDHCR3A6uM4G', '301010108', 'C', '2014-06-15', 'A', 'D', 'B', 'B', 'E', 'B', '2015-06-02 13:03:51', 'E', 'E', NULL, NULL, NULL, NULL, NULL, 0, '6.78'),
(2431, '70TQoM72Mu1hUDg', '301010101', 'O', '2010-12-15', 'O', 'D', 'P', 'B', 'B', 'P', '2015-06-02 13:03:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.14'),
(2432, '70TQoM72Mu1hUDg', '301010102', 'B', '2011-06-15', 'D', 'C', 'C', 'D', 'D', 'B', '2015-06-02 13:03:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2433, '70TQoM72Mu1hUDg', '301010103', NULL, '2011-12-15', 'P', 'A', 'O', 'D', 'A', 'B', '2015-06-02 13:03:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(2434, '70TQoM72Mu1hUDg', '301010104', NULL, '2012-06-15', 'O', 'P', 'B', 'E', 'D', 'D', '2015-06-02 13:03:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2435, '70TQoM72Mu1hUDg', '301010105', 'O', '2012-12-15', 'O', 'B', 'B', 'C', 'B', 'P', '2015-06-02 13:03:52', 'O', 'O', 'P', 'C', NULL, NULL, NULL, 0, '7.82'),
(2436, '70TQoM72Mu1hUDg', '301010106', 'E', '2013-06-15', 'D', 'E', 'D', 'A', 'P', 'D', '2015-06-02 13:03:52', 'C', 'A', 'P', NULL, NULL, NULL, NULL, 0, '6.1'),
(2437, '70TQoM72Mu1hUDg', '301010107', 'O', '2013-12-15', 'A', 'D', 'O', 'C', 'B', 'C', '2015-06-02 13:03:52', 'O', 'B', 'D', 'E', NULL, NULL, NULL, 0, '7.82'),
(2438, '70TQoM72Mu1hUDg', '301010108', 'E', '2014-06-15', 'E', 'O', 'P', 'C', 'B', 'C', '2015-06-02 13:03:52', 'E', 'C', NULL, NULL, NULL, NULL, NULL, 0, '6.44'),
(2439, 'PrU3doNGvSW3gyF', '301010101', 'B', '2010-12-15', 'B', 'P', 'C', 'E', 'O', 'P', '2015-06-02 13:03:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.57'),
(2440, 'PrU3doNGvSW3gyF', '301010102', 'C', '2011-06-15', 'B', 'D', 'E', 'O', 'A', 'A', '2015-06-02 13:03:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.71'),
(2441, 'PrU3doNGvSW3gyF', '301010103', NULL, '2011-12-15', 'E', 'D', 'C', 'B', 'P', 'E', '2015-06-02 13:03:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.83'),
(2442, 'PrU3doNGvSW3gyF', '301010104', NULL, '2012-06-15', 'C', 'B', 'A', 'D', 'C', 'P', '2015-06-02 13:03:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2443, 'PrU3doNGvSW3gyF', '301010105', 'O', '2012-12-15', 'P', 'P', 'E', 'C', 'B', 'D', '2015-06-02 13:03:52', 'E', 'D', 'C', 'C', NULL, NULL, NULL, 0, '6.27'),
(2444, 'PrU3doNGvSW3gyF', '301010106', 'C', '2013-06-15', 'O', 'C', 'A', 'B', 'P', 'D', '2015-06-02 13:03:52', 'E', 'E', 'O', NULL, NULL, NULL, NULL, 0, '7.1'),
(2445, 'PrU3doNGvSW3gyF', '301010107', 'E', '2013-12-15', 'D', 'B', 'O', 'C', 'O', 'B', '2015-06-02 13:03:52', 'C', 'P', 'D', 'C', NULL, NULL, NULL, 0, '7.09'),
(2446, 'PrU3doNGvSW3gyF', '301010108', 'E', '2014-06-15', 'B', 'O', 'A', 'O', 'O', 'B', '2015-06-02 13:03:52', 'E', 'A', NULL, NULL, NULL, NULL, NULL, 0, '8.22'),
(2447, 'EZIukEbSg4fHNNp', '301010101', 'A', '2010-12-15', 'D', 'O', 'C', 'D', 'E', 'D', '2015-06-02 13:03:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2448, 'EZIukEbSg4fHNNp', '301010102', 'C', '2011-06-15', 'C', 'E', 'C', 'P', 'A', 'P', '2015-06-02 13:03:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.14'),
(2449, 'EZIukEbSg4fHNNp', '301010103', NULL, '2011-12-15', 'B', 'D', 'E', 'B', 'E', 'C', '2015-06-02 13:03:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2450, 'EZIukEbSg4fHNNp', '301010104', NULL, '2012-06-15', 'P', 'A', 'C', 'C', 'P', 'D', '2015-06-02 13:03:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2451, 'EZIukEbSg4fHNNp', '301010105', 'B', '2012-12-15', 'E', 'P', 'B', 'D', 'O', 'C', '2015-06-02 13:03:52', 'O', 'C', 'D', 'D', NULL, NULL, NULL, 0, '7.0'),
(2452, 'EZIukEbSg4fHNNp', '301010106', 'P', '2013-06-15', 'C', 'E', 'O', 'B', 'B', 'D', '2015-06-02 13:03:52', 'D', 'E', 'B', NULL, NULL, NULL, NULL, 0, '6.7'),
(2453, 'EZIukEbSg4fHNNp', '301010107', 'P', '2013-12-15', 'D', 'D', 'A', 'E', 'O', 'C', '2015-06-02 13:03:52', 'O', 'C', 'P', 'O', NULL, NULL, NULL, 0, '7.09'),
(2454, 'EZIukEbSg4fHNNp', '301010108', 'B', '2014-06-15', 'P', 'P', 'D', 'B', 'D', 'E', '2015-06-02 13:03:52', 'D', 'E', NULL, NULL, NULL, NULL, NULL, 0, '5.78'),
(2455, 'JIJvVWsGbLVgQmI', '301010101', 'C', '2010-12-15', 'C', 'D', 'E', 'O', 'O', 'C', '2015-06-02 13:03:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(2456, 'JIJvVWsGbLVgQmI', '301010102', 'B', '2011-06-15', 'B', 'D', 'O', 'D', 'O', 'A', '2015-06-02 13:03:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.14'),
(2457, 'JIJvVWsGbLVgQmI', '301010103', NULL, '2011-12-15', 'P', 'E', 'E', 'D', 'A', 'D', '2015-06-02 13:03:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.83'),
(2458, 'JIJvVWsGbLVgQmI', '301010104', NULL, '2012-06-15', 'E', 'A', 'P', 'B', 'A', 'C', '2015-06-02 13:03:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2459, 'JIJvVWsGbLVgQmI', '301010105', 'P', '2012-12-15', 'C', 'E', 'P', 'B', 'P', 'B', '2015-06-02 13:03:53', 'D', 'P', 'C', 'A', NULL, NULL, NULL, 0, '6.0'),
(2460, 'JIJvVWsGbLVgQmI', '301010106', 'O', '2013-06-15', 'B', 'O', 'C', 'C', 'E', 'B', '2015-06-02 13:03:53', 'C', 'P', 'B', NULL, NULL, NULL, NULL, 0, '7.4'),
(2461, 'JIJvVWsGbLVgQmI', '301010107', 'B', '2013-12-15', 'B', 'B', 'E', 'C', 'B', 'C', '2015-06-02 13:03:53', 'O', 'C', 'D', 'B', NULL, NULL, NULL, 0, '7.45'),
(2462, 'JIJvVWsGbLVgQmI', '301010108', 'O', '2014-06-15', 'E', 'D', 'O', 'P', 'C', 'D', '2015-06-02 13:03:53', 'O', 'A', NULL, NULL, NULL, NULL, NULL, 0, '7.44'),
(2463, 'dzZnJwdTb2Y6YDv', '301010101', 'D', '2010-12-15', 'O', 'A', 'P', 'C', 'A', 'B', '2015-06-02 13:03:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.57'),
(2464, 'dzZnJwdTb2Y6YDv', '301010102', 'O', '2011-06-15', 'A', 'C', 'O', 'B', 'D', 'E', '2015-06-02 13:03:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.86'),
(2465, 'dzZnJwdTb2Y6YDv', '301010103', NULL, '2011-12-15', 'E', 'A', 'D', 'A', 'O', 'D', '2015-06-02 13:03:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2466, 'dzZnJwdTb2Y6YDv', '301010104', NULL, '2012-06-15', 'O', 'D', 'E', 'B', 'E', 'E', '2015-06-02 13:03:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2467, 'dzZnJwdTb2Y6YDv', '301010105', 'B', '2012-12-15', 'A', 'C', 'O', 'A', 'D', 'P', '2015-06-02 13:03:53', 'O', 'B', 'D', 'C', NULL, NULL, NULL, 0, '7.64'),
(2468, 'dzZnJwdTb2Y6YDv', '301010106', 'A', '2013-06-15', 'E', 'B', 'P', 'O', 'A', 'A', '2015-06-02 13:03:53', 'A', 'E', 'D', NULL, NULL, NULL, NULL, 0, '7.4'),
(2469, 'dzZnJwdTb2Y6YDv', '301010107', 'P', '2013-12-15', 'E', 'A', 'C', 'D', 'P', 'B', '2015-06-02 13:03:53', 'A', 'E', 'B', 'E', NULL, NULL, NULL, 0, '6.36'),
(2470, 'dzZnJwdTb2Y6YDv', '301010108', 'E', '2014-06-15', 'D', 'B', 'B', 'B', 'C', 'A', '2015-06-02 13:03:53', 'E', 'D', NULL, NULL, NULL, NULL, NULL, 0, '6.89'),
(2471, 'YsUCCu0SGk8kWHK', '301010101', 'O', '2010-12-15', 'E', 'O', 'O', 'P', 'P', 'O', '2015-06-02 13:03:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.57'),
(2472, 'YsUCCu0SGk8kWHK', '301010102', 'A', '2011-06-15', 'D', 'D', 'B', 'E', 'E', 'B', '2015-06-02 13:03:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.71'),
(2473, 'YsUCCu0SGk8kWHK', '301010103', NULL, '2011-12-15', 'E', 'E', 'D', 'E', 'B', 'E', '2015-06-02 13:03:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.67'),
(2474, 'YsUCCu0SGk8kWHK', '301010104', NULL, '2012-06-15', 'B', 'B', 'B', 'B', 'B', 'E', '2015-06-02 13:03:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2475, 'YsUCCu0SGk8kWHK', '301010105', 'E', '2012-12-15', 'O', 'D', 'O', 'D', 'B', 'B', '2015-06-02 13:03:53', 'O', 'B', 'C', 'C', NULL, NULL, NULL, 0, '7.73'),
(2476, 'YsUCCu0SGk8kWHK', '301010106', 'E', '2013-06-15', 'E', 'D', 'O', 'P', 'O', 'B', '2015-06-02 13:03:53', 'E', 'O', 'P', NULL, NULL, NULL, NULL, 0, '6.7'),
(2477, 'YsUCCu0SGk8kWHK', '301010107', 'E', '2013-12-15', 'O', 'E', 'B', 'C', 'B', 'A', '2015-06-02 13:03:53', 'D', 'D', 'E', 'C', NULL, NULL, NULL, 0, '6.91'),
(2478, 'YsUCCu0SGk8kWHK', '301010108', 'C', '2014-06-15', 'D', 'B', 'A', 'O', 'B', 'E', '2015-06-02 13:03:53', 'O', 'E', NULL, NULL, NULL, NULL, NULL, 0, '7.56'),
(2479, 's44aTzZmsTufA4r', '301010101', 'O', '2010-12-15', 'A', 'A', 'E', 'C', 'E', 'P', '2015-06-02 13:03:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2480, 's44aTzZmsTufA4r', '301010102', 'D', '2011-06-15', 'P', 'B', 'D', 'O', 'B', 'C', '2015-06-02 13:03:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2481, 's44aTzZmsTufA4r', '301010103', NULL, '2011-12-15', 'P', 'A', 'D', 'E', 'A', 'D', '2015-06-02 13:03:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2482, 's44aTzZmsTufA4r', '301010104', NULL, '2012-06-15', 'P', 'E', 'B', 'O', 'C', 'E', '2015-06-02 13:03:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2483, 's44aTzZmsTufA4r', '301010105', 'A', '2012-12-15', 'C', 'E', 'B', 'D', 'E', 'E', '2015-06-02 13:03:54', 'E', 'P', 'D', 'E', NULL, NULL, NULL, 0, '5.91'),
(2484, 's44aTzZmsTufA4r', '301010106', 'A', '2013-06-15', 'B', 'P', 'B', 'B', 'C', 'A', '2015-06-02 13:03:54', 'A', 'O', 'E', NULL, NULL, NULL, NULL, 0, '7.7'),
(2485, 's44aTzZmsTufA4r', '301010107', 'E', '2013-12-15', 'D', 'B', 'O', 'B', 'C', 'A', '2015-06-02 13:03:54', 'O', 'E', 'D', 'C', NULL, NULL, NULL, 0, '7.36'),
(2486, 's44aTzZmsTufA4r', '301010108', 'C', '2014-06-15', 'P', 'A', 'O', 'A', 'B', 'O', '2015-06-02 13:03:54', 'O', 'P', NULL, NULL, NULL, NULL, NULL, 0, '7.89'),
(2487, 'Lc4YVNyYPVzBCQc', '301010101', 'E', '2010-12-15', 'A', 'A', 'E', 'C', 'A', 'E', '2015-06-02 13:03:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2488, 'Lc4YVNyYPVzBCQc', '301010102', 'D', '2011-06-15', 'O', 'A', 'B', 'C', 'E', 'B', '2015-06-02 13:03:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.57'),
(2489, 'Lc4YVNyYPVzBCQc', '301010103', NULL, '2011-12-15', 'C', 'D', 'P', 'D', 'E', 'A', '2015-06-02 13:03:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2490, 'Lc4YVNyYPVzBCQc', '301010104', NULL, '2012-06-15', 'E', 'E', 'P', 'B', 'A', 'D', '2015-06-02 13:03:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2491, 'Lc4YVNyYPVzBCQc', '301010105', 'C', '2012-12-15', 'E', 'O', 'D', 'A', 'O', 'O', '2015-06-02 13:03:54', 'A', 'E', 'O', 'C', NULL, NULL, NULL, 0, '8.0'),
(2492, 'Lc4YVNyYPVzBCQc', '301010106', 'A', '2013-06-15', 'D', 'E', 'A', 'E', 'A', 'E', '2015-06-02 13:03:54', 'C', 'O', 'C', NULL, NULL, NULL, NULL, 0, '7.2'),
(2493, 'Lc4YVNyYPVzBCQc', '301010107', 'A', '2013-12-15', 'P', 'D', 'A', 'A', 'D', 'D', '2015-06-02 13:03:54', 'E', 'O', 'B', 'D', NULL, NULL, NULL, 0, '7.09'),
(2494, 'Lc4YVNyYPVzBCQc', '301010108', 'C', '2014-06-15', 'C', 'P', 'E', 'P', 'O', 'D', '2015-06-02 13:03:54', 'P', 'E', NULL, NULL, NULL, NULL, NULL, 0, '5.78'),
(2495, 'XWOgkQGrnklHwOC', '301010101', 'A', '2010-12-15', 'A', 'A', 'O', 'P', 'O', 'E', '2015-06-02 13:03:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2496, 'XWOgkQGrnklHwOC', '301010102', 'B', '2011-06-15', 'O', 'B', 'P', 'O', 'P', 'P', '2015-06-02 13:03:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2497, 'XWOgkQGrnklHwOC', '301010103', NULL, '2011-12-15', 'O', 'E', 'O', 'E', 'P', 'A', '2015-06-02 13:03:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(2498, 'XWOgkQGrnklHwOC', '301010104', NULL, '2012-06-15', 'D', 'O', 'C', 'B', 'O', 'B', '2015-06-02 13:03:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.17'),
(2499, 'XWOgkQGrnklHwOC', '301010105', 'A', '2012-12-15', 'E', 'A', 'D', 'E', 'C', 'C', '2015-06-02 13:03:54', 'B', 'E', 'D', 'C', NULL, NULL, NULL, 0, '6.73'),
(2500, 'XWOgkQGrnklHwOC', '301010106', 'A', '2013-06-15', 'O', 'P', 'P', 'D', 'E', 'B', '2015-06-02 13:03:54', 'D', 'B', 'P', NULL, NULL, NULL, NULL, 0, '6.4'),
(2501, 'XWOgkQGrnklHwOC', '301010107', 'O', '2013-12-15', 'E', 'P', 'C', 'C', 'A', 'D', '2015-06-02 13:03:54', 'O', 'D', 'E', 'B', NULL, NULL, NULL, 0, '7.0'),
(2502, 'XWOgkQGrnklHwOC', '301010108', 'P', '2014-06-15', 'B', 'E', 'C', 'E', 'C', 'O', '2015-06-02 13:03:54', 'B', 'B', NULL, NULL, NULL, NULL, NULL, 0, '6.89'),
(2503, 'QNIFhwJvu6yXTvE', '301010101', 'O', '2010-12-15', 'E', 'D', 'B', 'O', 'O', 'A', '2015-06-02 13:03:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.29'),
(2504, 'QNIFhwJvu6yXTvE', '301010102', 'A', '2011-06-15', 'E', 'P', 'D', 'P', 'O', 'P', '2015-06-02 13:03:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2505, 'QNIFhwJvu6yXTvE', '301010103', NULL, '2011-12-15', 'E', 'A', 'E', 'O', 'B', 'E', '2015-06-02 13:03:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2506, 'QNIFhwJvu6yXTvE', '301010104', NULL, '2012-06-15', 'E', 'B', 'A', 'P', 'B', 'B', '2015-06-02 13:03:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2507, 'QNIFhwJvu6yXTvE', '301010105', 'O', '2012-12-15', 'P', 'A', 'O', 'P', 'E', 'E', '2015-06-02 13:03:54', 'B', 'P', 'C', 'O', NULL, NULL, NULL, 0, '6.91'),
(2508, 'QNIFhwJvu6yXTvE', '301010106', 'O', '2013-06-15', 'B', 'D', 'A', 'O', 'B', 'P', '2015-06-02 13:03:54', 'D', 'B', 'O', NULL, NULL, NULL, NULL, 0, '7.9'),
(2509, 'QNIFhwJvu6yXTvE', '301010107', 'B', '2013-12-15', 'B', 'E', 'E', 'D', 'B', 'O', '2015-06-02 13:03:54', 'D', 'C', 'E', 'O', NULL, NULL, NULL, 0, '7.09'),
(2510, 'QNIFhwJvu6yXTvE', '301010108', 'E', '2014-06-15', 'P', 'O', 'E', 'A', 'B', 'A', '2015-06-02 13:03:55', 'P', 'A', NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2511, 'qvkA0Z2J0tntzcB', '301010101', 'C', '2010-12-15', 'B', 'E', 'D', 'O', 'P', 'B', '2015-06-02 13:03:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2512, 'qvkA0Z2J0tntzcB', '301010102', 'D', '2011-06-15', 'P', 'E', 'D', 'P', 'A', 'B', '2015-06-02 13:03:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2513, 'qvkA0Z2J0tntzcB', '301010103', NULL, '2011-12-15', 'E', 'O', 'B', 'E', 'A', 'O', '2015-06-02 13:03:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2514, 'qvkA0Z2J0tntzcB', '301010104', NULL, '2012-06-15', 'B', 'C', 'P', 'C', 'A', 'A', '2015-06-02 13:03:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2515, 'qvkA0Z2J0tntzcB', '301010105', 'O', '2012-12-15', 'P', 'P', 'C', 'O', 'B', 'B', '2015-06-02 13:03:55', 'D', 'A', 'B', 'D', NULL, NULL, NULL, 0, '7.27'),
(2516, 'qvkA0Z2J0tntzcB', '301010106', 'P', '2013-06-15', 'C', 'P', 'P', 'P', 'C', 'B', '2015-06-02 13:03:55', 'B', 'O', 'E', NULL, NULL, NULL, NULL, 0, '6.1'),
(2517, 'qvkA0Z2J0tntzcB', '301010107', 'B', '2013-12-15', 'P', 'A', 'A', 'P', 'E', 'D', '2015-06-02 13:03:55', 'C', 'D', 'C', 'O', NULL, NULL, NULL, 0, '6.82'),
(2518, 'qvkA0Z2J0tntzcB', '301010108', 'P', '2014-06-15', 'P', 'O', 'E', 'B', 'D', 'O', '2015-06-02 13:03:55', 'O', 'E', NULL, NULL, NULL, NULL, NULL, 0, '6.89'),
(2519, '3adgbTksZ7PboUG', '301010101', 'C', '2010-12-15', 'A', 'C', 'D', 'A', 'B', 'A', '2015-06-02 13:03:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.86'),
(2520, '3adgbTksZ7PboUG', '301010102', 'P', '2011-06-15', 'D', 'D', 'P', 'P', 'B', 'D', '2015-06-02 13:03:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.43'),
(2521, '3adgbTksZ7PboUG', '301010103', NULL, '2011-12-15', 'E', 'P', 'O', 'A', 'O', 'D', '2015-06-02 13:03:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2522, '3adgbTksZ7PboUG', '301010104', NULL, '2012-06-15', 'P', 'P', 'D', 'D', 'O', 'C', '2015-06-02 13:03:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2523, '3adgbTksZ7PboUG', '301010105', 'O', '2012-12-15', 'A', 'D', 'A', 'D', 'O', 'P', '2015-06-02 13:03:55', 'D', 'C', 'E', 'A', NULL, NULL, NULL, 0, '7.36'),
(2524, '3adgbTksZ7PboUG', '301010106', 'P', '2013-06-15', 'A', 'O', 'A', 'B', 'E', 'E', '2015-06-02 13:03:55', 'D', 'A', 'D', NULL, NULL, NULL, NULL, 0, '7.1'),
(2525, '3adgbTksZ7PboUG', '301010107', 'P', '2013-12-15', 'D', 'E', 'D', 'E', 'D', 'P', '2015-06-02 13:03:55', 'A', 'P', 'P', 'P', NULL, NULL, NULL, 0, '5.18'),
(2526, '3adgbTksZ7PboUG', '301010108', 'C', '2014-06-15', 'C', 'B', 'E', 'O', 'D', 'E', '2015-06-02 13:03:55', 'O', 'B', NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2527, 'PYV85yOayIPU2Z2', '301010101', 'A', '2010-12-15', 'E', 'A', 'D', 'B', 'E', 'C', '2015-06-02 13:03:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2528, 'PYV85yOayIPU2Z2', '301010102', 'B', '2011-06-15', 'A', 'E', 'O', 'P', 'E', 'P', '2015-06-02 13:03:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(2529, 'PYV85yOayIPU2Z2', '301010103', NULL, '2011-12-15', 'E', 'C', 'A', 'P', 'C', 'A', '2015-06-02 13:03:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2530, 'PYV85yOayIPU2Z2', '301010104', NULL, '2012-06-15', 'P', 'A', 'P', 'O', 'B', 'B', '2015-06-02 13:03:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(2531, 'PYV85yOayIPU2Z2', '301010105', 'O', '2012-12-15', 'P', 'E', 'D', 'A', 'E', 'D', '2015-06-02 13:03:55', 'P', 'A', 'O', 'O', NULL, NULL, NULL, 0, '7.09'),
(2532, 'PYV85yOayIPU2Z2', '301010106', 'E', '2013-06-15', 'C', 'E', 'P', 'D', 'P', 'C', '2015-06-02 13:03:55', 'A', 'A', 'D', NULL, NULL, NULL, NULL, 0, '6.2'),
(2533, 'PYV85yOayIPU2Z2', '301010107', 'E', '2013-12-15', 'B', 'B', 'A', 'E', 'E', 'D', '2015-06-02 13:03:56', 'E', 'O', 'C', 'E', NULL, NULL, NULL, 0, '6.64'),
(2534, 'PYV85yOayIPU2Z2', '301010108', 'A', '2014-06-15', 'B', 'D', 'C', 'D', 'C', 'C', '2015-06-02 13:03:56', 'D', 'D', NULL, NULL, NULL, NULL, NULL, 0, '6.89'),
(2535, 'zYn7dOXkYhMIDSh', '301010101', 'E', '2010-12-15', 'B', 'D', 'E', 'P', 'P', 'B', '2015-06-02 13:03:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.71'),
(2536, 'zYn7dOXkYhMIDSh', '301010102', 'O', '2011-06-15', 'A', 'B', 'C', 'P', 'O', 'P', '2015-06-02 13:03:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(2537, 'zYn7dOXkYhMIDSh', '301010103', NULL, '2011-12-15', 'O', 'P', 'O', 'B', 'B', 'O', '2015-06-02 13:03:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.33'),
(2538, 'zYn7dOXkYhMIDSh', '301010104', NULL, '2012-06-15', 'O', 'B', 'A', 'C', 'A', 'E', '2015-06-02 13:03:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2539, 'zYn7dOXkYhMIDSh', '301010105', 'P', '2012-12-15', 'O', 'P', 'A', 'O', 'C', 'E', '2015-06-02 13:03:56', 'E', 'P', 'D', 'C', NULL, NULL, NULL, 0, '6.45'),
(2540, 'zYn7dOXkYhMIDSh', '301010106', 'O', '2013-06-15', 'E', 'C', 'A', 'P', 'D', 'D', '2015-06-02 13:03:56', 'E', 'C', 'A', NULL, NULL, NULL, NULL, 0, '6.8'),
(2541, 'zYn7dOXkYhMIDSh', '301010107', 'C', '2013-12-15', 'E', 'P', 'B', 'O', 'O', 'B', '2015-06-02 13:03:56', 'O', 'P', 'B', 'E', NULL, NULL, NULL, 0, '7.18'),
(2542, 'zYn7dOXkYhMIDSh', '301010108', 'E', '2014-06-15', 'E', 'O', 'P', 'D', 'P', 'O', '2015-06-02 13:03:56', 'C', 'C', NULL, NULL, NULL, NULL, NULL, 0, '6.44'),
(2543, 'L3FC9qA2wQ4a0nb', '301010101', 'P', '2010-12-15', 'D', 'E', 'E', 'A', 'B', 'E', '2015-06-02 13:03:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2544, 'L3FC9qA2wQ4a0nb', '301010102', 'E', '2011-06-15', 'C', 'C', 'D', 'P', 'C', 'C', '2015-06-02 13:03:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.14'),
(2545, 'L3FC9qA2wQ4a0nb', '301010103', NULL, '2011-12-15', 'P', 'O', 'C', 'B', 'P', 'A', '2015-06-02 13:03:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2546, 'L3FC9qA2wQ4a0nb', '301010104', NULL, '2012-06-15', 'O', 'A', 'P', 'D', 'A', 'A', '2015-06-02 13:03:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2547, 'L3FC9qA2wQ4a0nb', '301010105', 'E', '2012-12-15', 'C', 'P', 'E', 'C', 'C', 'P', '2015-06-02 13:03:56', 'E', 'B', 'P', 'P', NULL, NULL, NULL, 0, '5.45'),
(2548, 'L3FC9qA2wQ4a0nb', '301010106', 'P', '2013-06-15', 'D', 'E', 'B', 'B', 'C', 'A', '2015-06-02 13:03:56', 'D', 'C', 'O', NULL, NULL, NULL, NULL, 0, '7.0'),
(2549, 'L3FC9qA2wQ4a0nb', '301010107', 'D', '2013-12-15', 'B', 'P', 'E', 'A', 'E', 'O', '2015-06-02 13:03:56', 'D', 'D', 'P', 'E', NULL, NULL, NULL, 0, '6.18'),
(2550, 'L3FC9qA2wQ4a0nb', '301010108', 'D', '2014-06-15', 'C', 'C', 'A', 'D', 'E', 'D', '2015-06-02 13:03:56', 'A', 'A', NULL, NULL, NULL, NULL, NULL, 0, '7.11'),
(2551, 'tOZ2RfgCfdT1Rzr', '301010101', 'P', '2010-12-15', 'E', 'E', 'B', 'O', 'E', 'B', '2015-06-02 13:03:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(2552, 'tOZ2RfgCfdT1Rzr', '301010102', 'B', '2011-06-15', 'A', 'P', 'C', 'B', 'C', 'D', '2015-06-02 13:03:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2553, 'tOZ2RfgCfdT1Rzr', '301010103', NULL, '2011-12-15', 'O', 'E', 'A', 'O', 'B', 'D', '2015-06-02 13:03:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2554, 'tOZ2RfgCfdT1Rzr', '301010104', NULL, '2012-06-15', 'D', 'E', 'A', 'D', 'D', 'B', '2015-06-02 13:03:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.67'),
(2555, 'tOZ2RfgCfdT1Rzr', '301010105', 'P', '2012-12-15', 'D', 'P', 'O', 'D', 'B', 'C', '2015-06-02 13:03:57', 'B', 'D', 'P', 'E', NULL, NULL, NULL, 0, '6.18'),
(2556, 'tOZ2RfgCfdT1Rzr', '301010106', 'O', '2013-06-15', 'A', 'P', 'E', 'A', 'C', 'O', '2015-06-02 13:03:57', 'B', 'A', 'B', NULL, NULL, NULL, NULL, 0, '7.9'),
(2557, 'tOZ2RfgCfdT1Rzr', '301010107', 'A', '2013-12-15', 'D', 'A', 'E', 'O', 'A', 'C', '2015-06-02 13:03:57', 'B', 'O', 'B', 'D', NULL, NULL, NULL, 0, '7.91'),
(2558, 'tOZ2RfgCfdT1Rzr', '301010108', 'B', '2014-06-15', 'B', 'D', 'D', 'C', 'P', 'O', '2015-06-02 13:03:57', 'C', 'B', NULL, NULL, NULL, NULL, NULL, 0, '7.11'),
(2559, 'P7sZGypIDt4J7BG', '301010101', 'B', '2010-12-15', 'A', 'E', 'D', 'B', 'E', 'A', '2015-06-02 13:03:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.14'),
(2560, 'P7sZGypIDt4J7BG', '301010102', 'A', '2011-06-15', 'E', 'D', 'D', 'C', 'C', 'D', '2015-06-02 13:03:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.57'),
(2561, 'P7sZGypIDt4J7BG', '301010103', NULL, '2011-12-15', 'E', 'A', 'A', 'O', 'O', 'C', '2015-06-02 13:03:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.33'),
(2562, 'P7sZGypIDt4J7BG', '301010104', NULL, '2012-06-15', 'E', 'B', 'P', 'D', 'A', 'P', '2015-06-02 13:03:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2563, 'P7sZGypIDt4J7BG', '301010105', 'P', '2012-12-15', 'E', 'C', 'O', 'D', 'B', 'C', '2015-06-02 13:03:57', 'D', 'E', 'O', 'C', NULL, NULL, NULL, 0, '6.82'),
(2564, 'P7sZGypIDt4J7BG', '301010106', 'B', '2013-06-15', 'A', 'B', 'E', 'P', 'O', 'O', '2015-06-02 13:03:57', 'B', 'C', 'B', NULL, NULL, NULL, NULL, 0, '7.7'),
(2565, 'P7sZGypIDt4J7BG', '301010107', 'P', '2013-12-15', 'B', 'P', 'P', 'D', 'B', 'B', '2015-06-02 13:03:57', 'A', 'O', 'D', 'E', NULL, NULL, NULL, 0, '6.55'),
(2566, 'P7sZGypIDt4J7BG', '301010108', 'E', '2014-06-15', 'O', 'O', 'A', 'P', 'P', 'P', '2015-06-02 13:03:57', 'P', 'E', NULL, NULL, NULL, NULL, NULL, 0, '6.11'),
(2567, 'OJLbKeqYI9TGZQE', '301010101', 'D', '2010-12-15', 'O', 'E', 'P', 'C', 'D', 'C', '2015-06-02 13:03:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(2568, 'OJLbKeqYI9TGZQE', '301010102', 'P', '2011-06-15', 'P', 'P', 'P', 'D', 'B', 'P', '2015-06-02 13:03:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '4.86'),
(2569, 'OJLbKeqYI9TGZQE', '301010103', NULL, '2011-12-15', 'O', 'B', 'B', 'B', 'O', 'P', '2015-06-02 13:03:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2570, 'OJLbKeqYI9TGZQE', '301010104', NULL, '2012-06-15', 'A', 'A', 'D', 'E', 'B', 'B', '2015-06-02 13:03:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2571, 'OJLbKeqYI9TGZQE', '301010105', 'C', '2012-12-15', 'E', 'E', 'A', 'E', 'A', 'O', '2015-06-02 13:03:57', 'C', 'C', 'P', 'C', NULL, NULL, NULL, 0, '6.82'),
(2572, 'OJLbKeqYI9TGZQE', '301010106', 'D', '2013-06-15', 'B', 'B', 'B', 'C', 'P', 'P', '2015-06-02 13:03:57', 'O', 'E', 'O', NULL, NULL, NULL, NULL, 0, '7.0'),
(2573, 'OJLbKeqYI9TGZQE', '301010107', 'O', '2013-12-15', 'C', 'D', 'A', 'P', 'C', 'D', '2015-06-02 13:03:57', 'B', 'C', 'A', 'B', NULL, NULL, NULL, 0, '7.36'),
(2574, 'OJLbKeqYI9TGZQE', '301010108', 'O', '2014-06-15', 'C', 'O', 'A', 'D', 'E', 'B', '2015-06-02 13:03:57', 'O', 'E', NULL, NULL, NULL, NULL, NULL, 0, '7.78'),
(2575, '8aCkPiwsbhMOrxs', '301010101', 'O', '2010-12-15', 'D', 'E', 'D', 'A', 'A', 'C', '2015-06-02 13:03:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(2576, '8aCkPiwsbhMOrxs', '301010102', 'B', '2011-06-15', 'A', 'O', 'A', 'P', 'B', 'C', '2015-06-02 13:03:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.86'),
(2577, '8aCkPiwsbhMOrxs', '301010103', NULL, '2011-12-15', 'E', 'E', 'O', 'A', 'C', 'O', '2015-06-02 13:03:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(2578, '8aCkPiwsbhMOrxs', '301010104', NULL, '2012-06-15', 'O', 'B', 'P', 'B', 'B', 'O', '2015-06-02 13:03:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2579, '8aCkPiwsbhMOrxs', '301010105', 'E', '2012-12-15', 'E', 'A', 'O', 'D', 'O', 'D', '2015-06-02 13:03:58', 'P', 'B', 'A', 'E', NULL, NULL, NULL, 0, '7.0'),
(2580, '8aCkPiwsbhMOrxs', '301010106', 'D', '2013-06-15', 'P', 'C', 'E', 'C', 'O', 'C', '2015-06-02 13:03:58', 'O', 'C', 'E', NULL, NULL, NULL, NULL, 0, '6.8'),
(2581, '8aCkPiwsbhMOrxs', '301010107', 'D', '2013-12-15', 'E', 'P', 'D', 'D', 'A', 'P', '2015-06-02 13:03:58', 'A', 'B', 'D', 'B', NULL, NULL, NULL, 0, '6.45'),
(2582, '8aCkPiwsbhMOrxs', '301010108', 'B', '2014-06-15', 'D', 'A', 'E', 'O', 'C', 'B', '2015-06-02 13:03:58', 'O', 'A', NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2583, '1PW6HizwTOAKoiG', '301010101', 'A', '2010-12-15', 'E', 'C', 'O', 'C', 'E', 'P', '2015-06-02 13:03:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.71'),
(2584, '1PW6HizwTOAKoiG', '301010102', 'E', '2011-06-15', 'A', 'B', 'B', 'A', 'B', 'D', '2015-06-02 13:03:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.57'),
(2585, '1PW6HizwTOAKoiG', '301010103', NULL, '2011-12-15', 'E', 'C', 'A', 'D', 'C', 'A', '2015-06-02 13:03:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(2586, '1PW6HizwTOAKoiG', '301010104', NULL, '2012-06-15', 'E', 'A', 'B', 'B', 'B', 'D', '2015-06-02 13:03:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2587, '1PW6HizwTOAKoiG', '301010105', 'E', '2012-12-15', 'A', 'D', 'B', 'O', 'A', 'A', '2015-06-02 13:03:58', 'P', 'O', 'C', 'P', NULL, NULL, NULL, 0, '7.36'),
(2588, '1PW6HizwTOAKoiG', '301010106', 'C', '2013-06-15', 'A', 'C', 'A', 'C', 'D', 'D', '2015-06-02 13:03:58', 'A', 'D', 'B', NULL, NULL, NULL, NULL, 0, '7.4'),
(2589, '1PW6HizwTOAKoiG', '301010107', 'O', '2013-12-15', 'C', 'A', 'C', 'B', 'B', 'E', '2015-06-02 13:03:58', 'A', 'D', 'D', 'O', NULL, NULL, NULL, 0, '7.73'),
(2590, '1PW6HizwTOAKoiG', '301010108', 'D', '2014-06-15', 'E', 'P', 'P', 'B', 'O', 'C', '2015-06-02 13:03:58', 'D', 'C', NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(2591, 'xw6yYyBbYEsrr2H', '301010101', 'P', '2010-12-15', 'C', 'D', 'O', 'C', 'P', 'D', '2015-06-02 13:03:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.29'),
(2592, 'xw6yYyBbYEsrr2H', '301010102', 'A', '2011-06-15', 'D', 'A', 'O', 'D', 'B', 'D', '2015-06-02 13:03:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.71'),
(2593, 'xw6yYyBbYEsrr2H', '301010103', NULL, '2011-12-15', 'P', 'B', 'A', 'O', 'P', 'P', '2015-06-02 13:03:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2594, 'xw6yYyBbYEsrr2H', '301010104', NULL, '2012-06-15', 'B', 'E', 'D', 'D', 'B', 'P', '2015-06-02 13:03:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2595, 'xw6yYyBbYEsrr2H', '301010105', 'A', '2012-12-15', 'D', 'E', 'E', 'D', 'C', 'O', '2015-06-02 13:03:58', 'D', 'D', 'E', 'P', NULL, NULL, NULL, 0, '6.27'),
(2596, 'xw6yYyBbYEsrr2H', '301010106', 'B', '2013-06-15', 'A', 'A', 'O', 'B', 'B', 'D', '2015-06-02 13:03:58', 'C', 'A', 'C', NULL, NULL, NULL, NULL, 0, '8.1'),
(2597, 'xw6yYyBbYEsrr2H', '301010107', 'B', '2013-12-15', 'D', 'A', 'B', 'A', 'D', 'A', '2015-06-02 13:03:58', 'E', 'P', 'A', 'E', NULL, NULL, NULL, 0, '7.09'),
(2598, 'xw6yYyBbYEsrr2H', '301010108', 'B', '2014-06-15', 'B', 'D', 'D', 'D', 'B', 'C', '2015-06-02 13:03:58', 'E', 'E', NULL, NULL, NULL, NULL, NULL, 0, '6.56'),
(2599, 'b8y0Q944qhpCOi9', '301010101', 'A', '2010-12-15', 'O', 'O', 'B', 'A', 'O', 'A', '2015-06-02 13:03:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '9.29'),
(2600, 'b8y0Q944qhpCOi9', '301010102', 'A', '2011-06-15', 'D', 'B', 'P', 'E', 'D', 'E', '2015-06-02 13:03:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.14'),
(2601, 'b8y0Q944qhpCOi9', '301010103', NULL, '2011-12-15', 'E', 'E', 'A', 'P', 'O', 'E', '2015-06-02 13:03:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(2602, 'b8y0Q944qhpCOi9', '301010104', NULL, '2012-06-15', 'A', 'D', 'C', 'E', 'B', 'E', '2015-06-02 13:03:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.67'),
(2603, 'b8y0Q944qhpCOi9', '301010105', 'E', '2012-12-15', 'P', 'O', 'O', 'P', 'P', 'D', '2015-06-02 13:03:58', 'C', 'P', 'A', 'A', NULL, NULL, NULL, 0, '6.55'),
(2604, 'b8y0Q944qhpCOi9', '301010106', 'O', '2013-06-15', 'C', 'A', 'O', 'C', 'O', 'O', '2015-06-02 13:03:59', 'O', 'A', 'C', NULL, NULL, NULL, NULL, 0, '8.9'),
(2605, 'b8y0Q944qhpCOi9', '301010107', 'D', '2013-12-15', 'E', 'C', 'P', 'B', 'A', 'P', '2015-06-02 13:03:59', 'C', 'E', 'E', 'O', NULL, NULL, NULL, 0, '6.36'),
(2606, 'b8y0Q944qhpCOi9', '301010108', 'B', '2014-06-15', 'D', 'P', 'B', 'C', 'O', 'O', '2015-06-02 13:03:59', 'C', 'O', NULL, NULL, NULL, NULL, NULL, 0, '7.78'),
(2607, 'WiGGHDZRSjQ3JnF', '301010101', 'E', '2010-12-15', 'P', 'E', 'P', 'E', 'P', 'O', '2015-06-02 13:03:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.29'),
(2608, 'WiGGHDZRSjQ3JnF', '301010102', 'B', '2011-06-15', 'P', 'B', 'O', 'E', 'O', 'E', '2015-06-02 13:03:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.14'),
(2609, 'WiGGHDZRSjQ3JnF', '301010103', NULL, '2011-12-15', 'A', 'A', 'D', 'E', 'O', 'E', '2015-06-02 13:03:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2610, 'WiGGHDZRSjQ3JnF', '301010104', NULL, '2012-06-15', 'E', 'A', 'C', 'O', 'O', 'C', '2015-06-02 13:03:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2611, 'WiGGHDZRSjQ3JnF', '301010105', 'D', '2012-12-15', 'E', 'P', 'B', 'P', 'E', 'E', '2015-06-02 13:03:59', 'A', 'A', 'O', 'D', NULL, NULL, NULL, 0, '6.45'),
(2612, 'WiGGHDZRSjQ3JnF', '301010106', 'O', '2013-06-15', 'C', 'P', 'D', 'O', 'D', 'C', '2015-06-02 13:03:59', 'D', 'B', 'C', NULL, NULL, NULL, NULL, 0, '7.1'),
(2613, 'WiGGHDZRSjQ3JnF', '301010107', 'B', '2013-12-15', 'E', 'B', 'C', 'B', 'E', 'C', '2015-06-02 13:03:59', 'E', 'C', 'E', 'D', NULL, NULL, NULL, 0, '6.45'),
(2614, 'WiGGHDZRSjQ3JnF', '301010108', 'P', '2014-06-15', 'P', 'D', 'D', 'C', 'E', 'C', '2015-06-02 13:03:59', 'O', 'D', NULL, NULL, NULL, NULL, NULL, 0, '6.11'),
(2615, 'tP6vGmY5MCOfRI2', '301010101', 'D', '2010-12-15', 'D', 'E', 'P', 'P', 'A', 'O', '2015-06-02 13:03:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.29'),
(2616, 'tP6vGmY5MCOfRI2', '301010102', 'D', '2011-06-15', 'B', 'P', 'P', 'D', 'B', 'P', '2015-06-02 13:03:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.71'),
(2617, 'tP6vGmY5MCOfRI2', '301010103', NULL, '2011-12-15', 'E', 'E', 'E', 'B', 'A', 'O', '2015-06-02 13:03:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2618, 'tP6vGmY5MCOfRI2', '301010104', NULL, '2012-06-15', 'B', 'A', 'D', 'D', 'P', 'E', '2015-06-02 13:03:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(2619, 'tP6vGmY5MCOfRI2', '301010105', 'D', '2012-12-15', 'O', 'D', 'B', 'E', 'D', 'O', '2015-06-02 13:03:59', 'O', 'P', 'B', 'E', NULL, NULL, NULL, 0, '7.09'),
(2620, 'tP6vGmY5MCOfRI2', '301010106', 'A', '2013-06-15', 'B', 'O', 'E', 'C', 'A', 'O', '2015-06-02 13:03:59', 'C', 'P', 'A', NULL, NULL, NULL, NULL, 0, '7.8'),
(2621, 'tP6vGmY5MCOfRI2', '301010107', 'O', '2013-12-15', 'D', 'E', 'E', 'P', 'P', 'E', '2015-06-02 13:03:59', 'O', 'B', 'C', 'P', NULL, NULL, NULL, 0, '6.18'),
(2622, 'tP6vGmY5MCOfRI2', '301010108', 'P', '2014-06-15', 'P', 'P', 'D', 'D', 'C', 'E', '2015-06-02 13:04:00', 'E', 'E', NULL, NULL, NULL, NULL, NULL, 0, '5.11'),
(2623, '00oz6MzmaBOSHJu', '301010101', 'O', '2010-12-15', 'E', 'C', 'E', 'C', 'A', 'A', '2015-06-02 13:04:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(2624, '00oz6MzmaBOSHJu', '301010102', 'C', '2011-06-15', 'O', 'C', 'C', 'D', 'C', 'B', '2015-06-02 13:04:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(2625, '00oz6MzmaBOSHJu', '301010103', NULL, '2011-12-15', 'C', 'P', 'C', 'A', 'P', 'E', '2015-06-02 13:04:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2626, '00oz6MzmaBOSHJu', '301010104', NULL, '2012-06-15', 'O', 'O', 'A', 'E', 'P', 'C', '2015-06-02 13:04:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2627, '00oz6MzmaBOSHJu', '301010105', 'B', '2012-12-15', 'O', 'P', 'A', 'C', 'P', 'O', '2015-06-02 13:04:00', 'P', 'E', 'P', 'O', NULL, NULL, NULL, 0, '6.82'),
(2628, '00oz6MzmaBOSHJu', '301010106', 'D', '2013-06-15', 'D', 'B', 'D', 'O', 'C', 'B', '2015-06-02 13:04:00', 'P', 'P', 'P', NULL, NULL, NULL, NULL, 0, '6.3'),
(2629, '00oz6MzmaBOSHJu', '301010107', 'P', '2013-12-15', 'E', 'A', 'B', 'A', 'C', 'D', '2015-06-02 13:04:00', 'P', 'A', 'B', 'A', NULL, NULL, NULL, 0, '7.09'),
(2630, '00oz6MzmaBOSHJu', '301010108', 'O', '2014-06-15', 'E', 'O', 'A', 'B', 'C', 'P', '2015-06-02 13:04:00', 'O', 'B', NULL, NULL, NULL, NULL, NULL, 0, '7.89'),
(2631, 'srQwVdTGaAm0QSX', '301010101', 'O', '2010-12-15', 'E', 'B', 'O', 'E', 'D', 'O', '2015-06-02 13:04:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.71'),
(2632, 'srQwVdTGaAm0QSX', '301010102', 'B', '2011-06-15', 'D', 'D', 'D', 'C', 'P', 'D', '2015-06-02 13:04:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.14'),
(2633, 'srQwVdTGaAm0QSX', '301010103', NULL, '2011-12-15', 'P', 'E', 'D', 'O', 'D', 'B', '2015-06-02 13:04:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2634, 'srQwVdTGaAm0QSX', '301010104', NULL, '2012-06-15', 'O', 'D', 'A', 'C', 'A', 'C', '2015-06-02 13:04:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2635, 'srQwVdTGaAm0QSX', '301010105', 'E', '2012-12-15', 'E', 'O', 'C', 'O', 'O', 'B', '2015-06-02 13:04:00', 'C', 'E', 'O', 'A', NULL, NULL, NULL, 0, '7.82'),
(2636, 'srQwVdTGaAm0QSX', '301010106', 'P', '2013-06-15', 'B', 'C', 'D', 'O', 'P', 'D', '2015-06-02 13:04:00', 'P', 'B', 'B', NULL, NULL, NULL, NULL, 0, '6.5'),
(2637, 'srQwVdTGaAm0QSX', '301010107', 'B', '2013-12-15', 'B', 'P', 'P', 'E', 'P', 'P', '2015-06-02 13:04:00', 'E', 'B', 'B', 'C', NULL, NULL, NULL, 0, '5.91'),
(2638, 'srQwVdTGaAm0QSX', '301010108', 'B', '2014-06-15', 'B', 'O', 'E', 'E', 'D', 'O', '2015-06-02 13:04:00', 'C', 'P', NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2639, 'KfWavSnIOUd6m1W', '301010101', 'D', '2010-12-15', 'C', 'E', 'O', 'C', 'O', 'C', '2015-06-02 13:04:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(2640, 'KfWavSnIOUd6m1W', '301010102', 'E', '2011-06-15', 'B', 'E', 'D', 'B', 'E', 'E', '2015-06-02 13:04:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2641, 'KfWavSnIOUd6m1W', '301010103', NULL, '2011-12-15', 'A', 'B', 'O', 'C', 'D', 'O', '2015-06-02 13:04:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.33'),
(2642, 'KfWavSnIOUd6m1W', '301010104', NULL, '2012-06-15', 'C', 'B', 'D', 'P', 'D', 'P', '2015-06-02 13:04:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.83'),
(2643, 'KfWavSnIOUd6m1W', '301010105', 'P', '2012-12-15', 'B', 'P', 'O', 'O', 'B', 'O', '2015-06-02 13:04:00', 'O', 'D', 'E', 'O', NULL, NULL, NULL, 0, '7.73'),
(2644, 'KfWavSnIOUd6m1W', '301010106', 'A', '2013-06-15', 'A', 'B', 'A', 'C', 'P', 'E', '2015-06-02 13:04:00', 'D', 'P', 'O', NULL, NULL, NULL, NULL, 0, '7.1'),
(2645, 'KfWavSnIOUd6m1W', '301010107', 'O', '2013-12-15', 'O', 'C', 'O', 'A', 'O', 'B', '2015-06-02 13:04:01', 'E', 'O', 'D', 'C', NULL, NULL, NULL, 0, '8.36'),
(2646, 'KfWavSnIOUd6m1W', '301010108', 'C', '2014-06-15', 'C', 'E', 'O', 'D', 'B', 'C', '2015-06-02 13:04:01', 'C', 'O', NULL, NULL, NULL, NULL, NULL, 0, '7.44'),
(2647, '5bnEKjwpMp1K8zQ', '301010101', 'E', '2010-12-15', 'C', 'O', 'A', 'B', 'O', 'O', '2015-06-02 13:04:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.43'),
(2648, '5bnEKjwpMp1K8zQ', '301010102', 'A', '2011-06-15', 'A', 'E', 'B', 'D', 'B', 'P', '2015-06-02 13:04:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2649, '5bnEKjwpMp1K8zQ', '301010103', NULL, '2011-12-15', 'B', 'P', 'A', 'D', 'A', 'B', '2015-06-02 13:04:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2650, '5bnEKjwpMp1K8zQ', '301010104', NULL, '2012-06-15', 'B', 'B', 'B', 'A', 'O', 'P', '2015-06-02 13:04:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2651, '5bnEKjwpMp1K8zQ', '301010105', 'C', '2012-12-15', 'C', 'C', 'P', 'B', 'P', 'D', '2015-06-02 13:04:01', 'C', 'P', 'B', 'D', NULL, NULL, NULL, 0, '6.18'),
(2652, '5bnEKjwpMp1K8zQ', '301010106', 'O', '2013-06-15', 'P', 'C', 'B', 'A', 'C', 'D', '2015-06-02 13:04:01', 'C', 'O', 'E', NULL, NULL, NULL, NULL, 0, '7.3'),
(2653, '5bnEKjwpMp1K8zQ', '301010107', 'E', '2013-12-15', 'P', 'E', 'P', 'D', 'P', 'O', '2015-06-02 13:04:01', 'P', 'B', 'B', 'O', NULL, NULL, NULL, 0, '6.18'),
(2654, '5bnEKjwpMp1K8zQ', '301010108', 'A', '2014-06-15', 'B', 'B', 'B', 'B', 'E', 'C', '2015-06-02 13:04:01', 'D', 'D', NULL, NULL, NULL, NULL, NULL, 0, '7.22'),
(2655, 'G7m4ZLstBA9uEqC', '301010101', 'P', '2010-12-15', 'D', 'A', 'P', 'P', 'B', 'D', '2015-06-02 13:04:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.86'),
(2656, 'G7m4ZLstBA9uEqC', '301010102', 'C', '2011-06-15', 'C', 'E', 'B', 'P', 'B', 'A', '2015-06-02 13:04:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2657, 'G7m4ZLstBA9uEqC', '301010103', NULL, '2011-12-15', 'E', 'A', 'O', 'E', 'C', 'O', '2015-06-02 13:04:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(2658, 'G7m4ZLstBA9uEqC', '301010104', NULL, '2012-06-15', 'P', 'D', 'A', 'E', 'D', 'C', '2015-06-02 13:04:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2659, 'G7m4ZLstBA9uEqC', '301010105', 'D', '2012-12-15', 'B', 'O', 'O', 'O', 'P', 'D', '2015-06-02 13:04:01', 'D', 'P', 'C', 'C', NULL, NULL, NULL, 0, '7.09'),
(2660, 'G7m4ZLstBA9uEqC', '301010106', 'D', '2013-06-15', 'A', 'P', 'E', 'D', 'D', 'B', '2015-06-02 13:04:01', 'P', 'E', 'A', NULL, NULL, NULL, NULL, 0, '6.2'),
(2661, 'G7m4ZLstBA9uEqC', '301010107', 'C', '2013-12-15', 'P', 'A', 'E', 'C', 'O', 'E', '2015-06-02 13:04:01', 'E', 'P', 'C', 'P', NULL, NULL, NULL, 0, '6.09'),
(2662, 'G7m4ZLstBA9uEqC', '301010108', 'A', '2014-06-15', 'A', 'C', 'P', 'E', 'C', 'C', '2015-06-02 13:04:01', 'C', 'C', NULL, NULL, NULL, NULL, NULL, 0, '6.89'),
(2663, '3nbECfETD1q9y9r', '301010101', 'O', '2010-12-15', 'B', 'C', 'C', 'E', 'B', 'A', '2015-06-02 13:04:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.71'),
(2664, '3nbECfETD1q9y9r', '301010102', 'D', '2011-06-15', 'O', 'E', 'O', 'A', 'A', 'A', '2015-06-02 13:04:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.29'),
(2665, '3nbECfETD1q9y9r', '301010103', NULL, '2011-12-15', 'O', 'D', 'E', 'C', 'B', 'A', '2015-06-02 13:04:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5');
INSERT INTO `undergraduate_record` (`id`, `user_code`, `form_code`, `data_field_8`, `data_field_1`, `data_field_2`, `data_field_3`, `data_field_4`, `data_field_5`, `data_field_6`, `data_field_7`, `last_modified`, `data_field_9`, `data_field_10`, `data_field_11`, `data_field_12`, `data_field_13`, `data_field_14`, `data_field_15`, `attempt`, `total`) VALUES
(2666, '3nbECfETD1q9y9r', '301010104', NULL, '2012-06-15', 'E', 'O', 'P', 'B', 'O', 'P', '2015-06-02 13:04:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2667, '3nbECfETD1q9y9r', '301010105', 'P', '2012-12-15', 'C', 'C', 'A', 'O', 'O', 'A', '2015-06-02 13:04:01', 'E', 'P', 'C', 'D', NULL, NULL, NULL, 0, '7.09'),
(2668, '3nbECfETD1q9y9r', '301010106', 'B', '2013-06-15', 'O', 'A', 'A', 'D', 'E', 'B', '2015-06-02 13:04:01', 'E', 'P', 'B', NULL, NULL, NULL, NULL, 0, '7.2'),
(2669, '3nbECfETD1q9y9r', '301010107', 'B', '2013-12-15', 'D', 'D', 'O', 'A', 'D', 'D', '2015-06-02 13:04:01', 'E', 'C', 'D', 'E', NULL, NULL, NULL, 0, '6.73'),
(2670, '3nbECfETD1q9y9r', '301010108', 'O', '2014-06-15', 'E', 'E', 'O', 'O', 'O', 'P', '2015-06-02 13:04:01', 'D', 'P', NULL, NULL, NULL, NULL, NULL, 0, '7.11'),
(2671, 'XzvRLOzxn1XNN7a', '301010101', 'P', '2010-12-15', 'B', 'E', 'O', 'D', 'D', 'B', '2015-06-02 13:04:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.71'),
(2672, 'XzvRLOzxn1XNN7a', '301010102', 'D', '2011-06-15', 'D', 'E', 'C', 'O', 'P', 'O', '2015-06-02 13:04:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2673, 'XzvRLOzxn1XNN7a', '301010103', NULL, '2011-12-15', 'D', 'A', 'P', 'D', 'O', 'P', '2015-06-02 13:04:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2674, 'XzvRLOzxn1XNN7a', '301010104', NULL, '2012-06-15', 'C', 'C', 'E', 'A', 'E', 'A', '2015-06-02 13:04:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2675, 'XzvRLOzxn1XNN7a', '301010105', 'B', '2012-12-15', 'P', 'E', 'O', 'D', 'E', 'P', '2015-06-02 13:04:02', 'E', 'D', 'P', 'P', NULL, NULL, NULL, 0, '5.55'),
(2676, 'XzvRLOzxn1XNN7a', '301010106', 'C', '2013-06-15', 'B', 'B', 'D', 'O', 'A', 'D', '2015-06-02 13:04:02', 'A', 'A', 'P', NULL, NULL, NULL, NULL, 0, '7.6'),
(2677, 'XzvRLOzxn1XNN7a', '301010107', 'A', '2013-12-15', 'P', 'A', 'C', 'O', 'B', 'B', '2015-06-02 13:04:02', 'C', 'A', 'D', 'P', NULL, NULL, NULL, 0, '7.36'),
(2678, 'XzvRLOzxn1XNN7a', '301010108', 'A', '2014-06-15', 'C', 'E', 'E', 'C', 'C', 'C', '2015-06-02 13:04:02', 'C', 'E', NULL, NULL, NULL, NULL, NULL, 0, '6.56'),
(2679, 'yTcQQFqc16RJNLQ', '301010101', 'C', '2010-12-15', 'C', 'E', 'D', 'D', 'D', 'B', '2015-06-02 13:04:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(2680, 'yTcQQFqc16RJNLQ', '301010102', 'P', '2011-06-15', 'P', 'O', 'E', 'B', 'B', 'C', '2015-06-02 13:04:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.57'),
(2681, 'yTcQQFqc16RJNLQ', '301010103', NULL, '2011-12-15', 'A', 'D', 'C', 'P', 'B', 'C', '2015-06-02 13:04:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2682, 'yTcQQFqc16RJNLQ', '301010104', NULL, '2012-06-15', 'O', 'P', 'P', 'P', 'B', 'C', '2015-06-02 13:04:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2683, 'yTcQQFqc16RJNLQ', '301010105', 'A', '2012-12-15', 'C', 'O', 'B', 'E', 'P', 'O', '2015-06-02 13:04:02', 'D', 'P', 'A', 'C', NULL, NULL, NULL, 0, '7.18'),
(2684, 'yTcQQFqc16RJNLQ', '301010106', 'P', '2013-06-15', 'P', 'E', 'P', 'A', 'A', 'D', '2015-06-02 13:04:02', 'B', 'A', 'A', NULL, NULL, NULL, NULL, 0, '6.7'),
(2685, 'yTcQQFqc16RJNLQ', '301010107', 'P', '2013-12-15', 'O', 'A', 'C', 'O', 'E', 'P', '2015-06-02 13:04:02', 'E', 'O', 'E', 'P', NULL, NULL, NULL, 0, '6.64'),
(2686, 'yTcQQFqc16RJNLQ', '301010108', 'D', '2014-06-15', 'O', 'E', 'P', 'D', 'O', 'A', '2015-06-02 13:04:02', 'E', 'P', NULL, NULL, NULL, NULL, NULL, 0, '6.56'),
(2687, 'YWRtVNnekWev6b1', '301010101', 'C', '2010-12-15', 'D', 'A', 'B', 'B', 'C', 'C', '2015-06-02 13:04:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(2688, 'YWRtVNnekWev6b1', '301010102', 'D', '2011-06-15', 'P', 'D', 'C', 'E', 'D', 'B', '2015-06-02 13:04:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2689, 'YWRtVNnekWev6b1', '301010103', NULL, '2011-12-15', 'P', 'C', 'A', 'P', 'C', 'E', '2015-06-02 13:04:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2690, 'YWRtVNnekWev6b1', '301010104', NULL, '2012-06-15', 'O', 'E', 'D', 'D', 'E', 'A', '2015-06-02 13:04:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2691, 'YWRtVNnekWev6b1', '301010105', 'E', '2012-12-15', 'D', 'E', 'P', 'O', 'C', 'B', '2015-06-02 13:04:02', 'O', 'A', 'E', 'E', NULL, NULL, NULL, 0, '6.73'),
(2692, 'YWRtVNnekWev6b1', '301010106', 'B', '2013-06-15', 'B', 'E', 'C', 'P', 'B', 'A', '2015-06-02 13:04:02', 'C', 'C', 'E', NULL, NULL, NULL, NULL, 0, '6.8'),
(2693, 'YWRtVNnekWev6b1', '301010107', 'P', '2013-12-15', 'E', 'A', 'E', 'D', 'B', 'E', '2015-06-02 13:04:02', 'D', 'O', 'D', 'E', NULL, NULL, NULL, 0, '6.27'),
(2694, 'YWRtVNnekWev6b1', '301010108', 'A', '2014-06-15', 'B', 'D', 'D', 'C', 'A', 'C', '2015-06-02 13:04:02', 'P', 'P', NULL, NULL, NULL, NULL, NULL, 0, '6.67'),
(2695, 'hqfWkBJwMeirK55', '301010101', 'B', '2010-12-15', 'P', 'C', 'C', 'D', 'A', 'O', '2015-06-02 13:04:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.29'),
(2696, 'hqfWkBJwMeirK55', '301010102', 'D', '2011-06-15', 'C', 'A', 'B', 'P', 'C', 'P', '2015-06-02 13:04:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(2697, 'hqfWkBJwMeirK55', '301010103', NULL, '2011-12-15', 'O', 'P', 'P', 'A', 'C', 'P', '2015-06-02 13:04:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(2698, 'hqfWkBJwMeirK55', '301010104', NULL, '2012-06-15', 'O', 'C', 'P', 'O', 'B', 'P', '2015-06-02 13:04:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(2699, 'hqfWkBJwMeirK55', '301010105', 'D', '2012-12-15', 'O', 'B', 'D', 'C', 'A', 'B', '2015-06-02 13:04:03', 'B', 'C', 'E', 'O', NULL, NULL, NULL, 0, '7.64'),
(2700, 'hqfWkBJwMeirK55', '301010106', 'D', '2013-06-15', 'P', 'B', 'P', 'D', 'E', 'D', '2015-06-02 13:04:03', 'D', 'C', 'E', NULL, NULL, NULL, NULL, 0, '5.7'),
(2701, 'hqfWkBJwMeirK55', '301010107', 'A', '2013-12-15', 'E', 'O', 'E', 'A', 'D', 'B', '2015-06-02 13:04:03', 'A', 'D', 'E', 'C', NULL, NULL, NULL, 0, '7.18'),
(2702, 'hqfWkBJwMeirK55', '301010108', 'C', '2014-06-15', 'P', 'O', 'O', 'C', 'O', 'B', '2015-06-02 13:04:03', 'A', 'A', NULL, NULL, NULL, NULL, NULL, 0, '8.22'),
(2703, 'V1cymBmlsDDTVJ8', '301010101', 'P', '2010-12-15', 'E', 'P', 'B', 'D', 'D', 'C', '2015-06-02 13:04:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.71'),
(2704, 'V1cymBmlsDDTVJ8', '301010102', 'B', '2011-06-15', 'E', 'B', 'E', 'A', 'E', 'B', '2015-06-02 13:04:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2705, 'V1cymBmlsDDTVJ8', '301010103', NULL, '2011-12-15', 'A', 'A', 'D', 'A', 'B', 'A', '2015-06-02 13:04:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.33'),
(2706, 'V1cymBmlsDDTVJ8', '301010104', NULL, '2012-06-15', 'O', 'P', 'A', 'B', 'A', 'O', '2015-06-02 13:04:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.33'),
(2707, 'V1cymBmlsDDTVJ8', '301010105', 'D', '2012-12-15', 'C', 'E', 'E', 'C', 'O', 'O', '2015-06-02 13:04:03', 'D', 'C', 'D', 'A', NULL, NULL, NULL, 0, '7.09'),
(2708, 'V1cymBmlsDDTVJ8', '301010106', 'D', '2013-06-15', 'B', 'B', 'P', 'D', 'A', 'D', '2015-06-02 13:04:03', 'E', 'D', 'E', NULL, NULL, NULL, NULL, 0, '6.3'),
(2709, 'V1cymBmlsDDTVJ8', '301010107', 'A', '2013-12-15', 'P', 'D', 'C', 'O', 'A', 'C', '2015-06-02 13:04:03', 'P', 'B', 'D', 'P', NULL, NULL, NULL, 0, '6.73'),
(2710, 'V1cymBmlsDDTVJ8', '301010108', 'P', '2014-06-15', 'P', 'O', 'C', 'E', 'O', 'C', '2015-06-02 13:04:03', 'A', 'P', NULL, NULL, NULL, NULL, NULL, 0, '6.67'),
(2711, 'Ftq807qCBQ8I4Gc', '301010101', 'O', '2010-12-15', 'A', 'B', 'B', 'P', 'A', 'O', '2015-06-02 13:04:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.29'),
(2712, 'Ftq807qCBQ8I4Gc', '301010102', 'E', '2011-06-15', 'A', 'O', 'P', 'C', 'P', 'E', '2015-06-02 13:04:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.29'),
(2713, 'Ftq807qCBQ8I4Gc', '301010103', NULL, '2011-12-15', 'D', 'B', 'A', 'D', 'O', 'D', '2015-06-02 13:04:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2714, 'Ftq807qCBQ8I4Gc', '301010104', NULL, '2012-06-15', 'P', 'B', 'D', 'A', 'E', 'C', '2015-06-02 13:04:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2715, 'Ftq807qCBQ8I4Gc', '301010105', 'E', '2012-12-15', 'B', 'D', 'D', 'A', 'O', 'A', '2015-06-02 13:04:03', 'P', 'O', 'D', 'O', NULL, NULL, NULL, 0, '7.55'),
(2716, 'Ftq807qCBQ8I4Gc', '301010106', 'C', '2013-06-15', 'E', 'P', 'A', 'D', 'B', 'O', '2015-06-02 13:04:03', 'O', 'B', 'B', NULL, NULL, NULL, NULL, 0, '7.5'),
(2717, 'Ftq807qCBQ8I4Gc', '301010107', 'B', '2013-12-15', 'O', 'E', 'P', 'B', 'E', 'O', '2015-06-02 13:04:03', 'A', 'A', 'D', 'A', NULL, NULL, NULL, 0, '7.55'),
(2718, 'Ftq807qCBQ8I4Gc', '301010108', 'P', '2014-06-15', 'A', 'D', 'D', 'C', 'E', 'O', '2015-06-02 13:04:04', 'E', 'B', NULL, NULL, NULL, NULL, NULL, 0, '6.67'),
(2719, 'lCIVAW5564bjIi4', '301010101', 'O', '2010-12-15', 'A', 'C', 'A', 'B', 'D', 'E', '2015-06-02 13:04:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.71'),
(2720, 'lCIVAW5564bjIi4', '301010102', 'P', '2011-06-15', 'A', 'C', 'C', 'D', 'C', 'D', '2015-06-02 13:04:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.57'),
(2721, 'lCIVAW5564bjIi4', '301010103', NULL, '2011-12-15', 'E', 'D', 'A', 'O', 'D', 'D', '2015-06-02 13:04:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2722, 'lCIVAW5564bjIi4', '301010104', NULL, '2012-06-15', 'O', 'C', 'P', 'A', 'A', 'E', '2015-06-02 13:04:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2723, 'lCIVAW5564bjIi4', '301010105', 'A', '2012-12-15', 'P', 'A', 'P', 'D', 'C', 'A', '2015-06-02 13:04:04', 'B', 'C', 'O', 'B', NULL, NULL, NULL, 0, '7.36'),
(2724, 'lCIVAW5564bjIi4', '301010106', 'P', '2013-06-15', 'A', 'D', 'E', 'A', 'P', 'P', '2015-06-02 13:04:04', 'B', 'O', 'D', NULL, NULL, NULL, NULL, 0, '6.5'),
(2725, 'lCIVAW5564bjIi4', '301010107', 'O', '2013-12-15', 'C', 'E', 'E', 'B', 'A', 'B', '2015-06-02 13:04:04', 'C', 'A', 'E', 'A', NULL, NULL, NULL, 0, '7.45'),
(2726, 'lCIVAW5564bjIi4', '301010108', 'P', '2014-06-15', 'A', 'A', 'O', 'D', 'O', 'D', '2015-06-02 13:04:04', 'O', 'O', NULL, NULL, NULL, NULL, NULL, 0, '8.22'),
(2727, 'RgAZUBf2rFgl3dX', '301010101', 'P', '2010-12-15', 'D', 'C', 'B', 'P', 'O', 'D', '2015-06-02 13:04:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(2728, 'RgAZUBf2rFgl3dX', '301010102', 'C', '2011-06-15', 'D', 'O', 'C', 'E', 'D', 'A', '2015-06-02 13:04:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.14'),
(2729, 'RgAZUBf2rFgl3dX', '301010103', NULL, '2011-12-15', 'O', 'P', 'C', 'B', 'B', 'O', '2015-06-02 13:04:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2730, 'RgAZUBf2rFgl3dX', '301010104', NULL, '2012-06-15', 'B', 'E', 'C', 'O', 'B', 'A', '2015-06-02 13:04:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2731, 'RgAZUBf2rFgl3dX', '301010105', 'O', '2012-12-15', 'B', 'C', 'D', 'C', 'O', 'P', '2015-06-02 13:04:04', 'C', 'A', 'A', 'B', NULL, NULL, NULL, 0, '7.73'),
(2732, 'RgAZUBf2rFgl3dX', '301010106', 'B', '2013-06-15', 'P', 'A', 'E', 'C', 'P', 'D', '2015-06-02 13:04:04', 'D', 'P', 'P', NULL, NULL, NULL, NULL, 0, '5.7'),
(2733, 'RgAZUBf2rFgl3dX', '301010107', 'P', '2013-12-15', 'A', 'D', 'D', 'D', 'P', 'A', '2015-06-02 13:04:04', 'A', 'P', 'B', 'D', NULL, NULL, NULL, 0, '6.45'),
(2734, 'RgAZUBf2rFgl3dX', '301010108', 'A', '2014-06-15', 'E', 'C', 'O', 'C', 'O', 'A', '2015-06-02 13:04:04', 'E', 'E', NULL, NULL, NULL, NULL, NULL, 0, '7.44'),
(2735, '8rpZePrCBOZM4z1', '301010101', 'D', '2010-12-15', 'E', 'C', 'E', 'P', 'A', 'A', '2015-06-02 13:04:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(2736, '8rpZePrCBOZM4z1', '301010102', 'O', '2011-06-15', 'D', 'B', 'P', 'D', 'O', 'E', '2015-06-02 13:04:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2737, '8rpZePrCBOZM4z1', '301010103', NULL, '2011-12-15', 'O', 'P', 'C', 'E', 'C', 'E', '2015-06-02 13:04:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(2738, '8rpZePrCBOZM4z1', '301010104', NULL, '2012-06-15', 'E', 'E', 'O', 'O', 'O', 'C', '2015-06-02 13:04:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2739, '8rpZePrCBOZM4z1', '301010105', 'E', '2012-12-15', 'B', 'O', 'C', 'C', 'A', 'O', '2015-06-02 13:04:04', 'C', 'E', 'A', 'C', NULL, NULL, NULL, 0, '7.64'),
(2740, '8rpZePrCBOZM4z1', '301010106', 'E', '2013-06-15', 'B', 'D', 'E', 'E', 'O', 'B', '2015-06-02 13:04:04', 'B', 'B', 'E', NULL, NULL, NULL, NULL, 0, '6.8'),
(2741, '8rpZePrCBOZM4z1', '301010107', 'A', '2013-12-15', 'D', 'C', 'E', 'C', 'B', 'E', '2015-06-02 13:04:04', 'D', 'A', 'E', 'E', NULL, NULL, NULL, 0, '6.55'),
(2742, '8rpZePrCBOZM4z1', '301010108', 'P', '2014-06-15', 'A', 'D', 'P', 'B', 'O', 'P', '2015-06-02 13:04:04', 'B', 'O', NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2743, 'eeoAdxfZUPGUGPl', '301010101', 'E', '2010-12-15', 'E', 'P', 'P', 'A', 'O', 'O', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.71'),
(2744, 'eeoAdxfZUPGUGPl', '301010102', 'D', '2011-06-15', 'C', 'A', 'E', 'D', 'P', 'D', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.14'),
(2745, 'eeoAdxfZUPGUGPl', '301010103', NULL, '2011-12-15', 'B', 'D', 'C', 'C', 'D', 'A', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(2746, 'eeoAdxfZUPGUGPl', '301010104', NULL, '2012-06-15', 'D', 'A', 'B', 'B', 'D', 'C', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2747, 'eeoAdxfZUPGUGPl', '301010105', 'P', '2012-12-15', 'E', 'P', 'A', 'E', 'D', 'P', '2015-06-02 13:04:05', 'O', 'P', 'O', 'E', NULL, NULL, NULL, 0, '6.0'),
(2748, 'eeoAdxfZUPGUGPl', '301010106', 'C', '2013-06-15', 'E', 'E', 'C', 'O', 'P', 'O', '2015-06-02 13:04:05', 'E', 'C', 'D', NULL, NULL, NULL, NULL, 0, '6.6'),
(2749, 'eeoAdxfZUPGUGPl', '301010107', 'B', '2013-12-15', 'O', 'O', 'E', 'O', 'O', 'O', '2015-06-02 13:04:05', 'D', 'A', 'B', 'O', NULL, NULL, NULL, 0, '8.73'),
(2750, 'eeoAdxfZUPGUGPl', '301010108', 'E', '2014-06-15', 'B', 'B', 'C', 'C', 'A', 'B', '2015-06-02 13:04:05', 'E', 'A', NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2751, '03KsO9jZy3AOf25', '301020101', 'C', '2010-12-15', 'D', 'O', 'D', 'P', 'E', 'A', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.71'),
(2752, '03KsO9jZy3AOf25', '301020102', 'A', '2011-06-15', 'O', 'D', 'D', 'P', 'D', 'D', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.71'),
(2753, '03KsO9jZy3AOf25', '301020103', NULL, '2011-12-15', 'B', 'E', 'E', 'C', 'D', 'P', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.83'),
(2754, '03KsO9jZy3AOf25', '301020104', NULL, '2012-06-15', 'E', 'D', 'C', 'A', 'P', 'B', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2755, '03KsO9jZy3AOf25', '301020105', NULL, '2012-12-15', 'B', 'E', 'O', 'A', 'O', 'B', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.33'),
(2756, '03KsO9jZy3AOf25', '301020106', NULL, '2013-06-15', 'A', 'B', 'B', 'B', 'A', 'E', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2757, '03KsO9jZy3AOf25', '301020107', NULL, '2013-12-15', 'C', 'B', 'A', 'D', 'A', 'D', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2758, '03KsO9jZy3AOf25', '301020108', 'B', '2014-06-15', 'B', 'B', 'E', 'O', 'E', 'D', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.14'),
(2759, 's0JvKlDYhu0vpxE', '301020101', 'O', '2010-12-15', 'E', 'E', 'C', 'C', 'C', 'D', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.71'),
(2760, 's0JvKlDYhu0vpxE', '301020102', 'D', '2011-06-15', 'P', 'P', 'P', 'B', 'E', 'B', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.57'),
(2761, 's0JvKlDYhu0vpxE', '301020103', NULL, '2011-12-15', 'D', 'A', 'P', 'E', 'C', 'O', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2762, 's0JvKlDYhu0vpxE', '301020104', NULL, '2012-06-15', 'D', 'A', 'D', 'B', 'B', 'O', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2763, 's0JvKlDYhu0vpxE', '301020105', NULL, '2012-12-15', 'E', 'P', 'E', 'A', 'P', 'D', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.5'),
(2764, 's0JvKlDYhu0vpxE', '301020106', NULL, '2013-06-15', 'E', 'A', 'E', 'C', 'E', 'E', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2765, 's0JvKlDYhu0vpxE', '301020107', NULL, '2013-12-15', 'P', 'P', 'B', 'D', 'C', 'O', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2766, 's0JvKlDYhu0vpxE', '301020108', 'D', '2014-06-15', 'A', 'O', 'D', 'A', 'B', 'A', '2015-06-02 13:04:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.14'),
(2767, '61L4fsEYpv5iBBp', '301020101', 'O', '2010-12-15', 'E', 'A', 'A', 'B', 'D', 'D', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.57'),
(2768, '61L4fsEYpv5iBBp', '301020102', 'D', '2011-06-15', 'P', 'B', 'E', 'E', 'D', 'D', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.71'),
(2769, '61L4fsEYpv5iBBp', '301020103', NULL, '2011-12-15', 'D', 'D', 'O', 'D', 'C', 'C', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2770, '61L4fsEYpv5iBBp', '301020104', NULL, '2012-06-15', 'D', 'O', 'D', 'P', 'E', 'O', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2771, '61L4fsEYpv5iBBp', '301020105', NULL, '2012-12-15', 'B', 'C', 'C', 'P', 'E', 'P', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.83'),
(2772, '61L4fsEYpv5iBBp', '301020106', NULL, '2013-06-15', 'P', 'A', 'C', 'E', 'A', 'O', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2773, '61L4fsEYpv5iBBp', '301020107', NULL, '2013-12-15', 'P', 'P', 'O', 'C', 'D', 'C', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(2774, '61L4fsEYpv5iBBp', '301020108', 'A', '2014-06-15', 'A', 'D', 'P', 'P', 'C', 'D', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(2775, 'B66eWbfsgTRvgYb', '301020101', 'E', '2010-12-15', 'D', 'P', 'D', 'C', 'A', 'O', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.71'),
(2776, 'B66eWbfsgTRvgYb', '301020102', 'O', '2011-06-15', 'D', 'D', 'C', 'B', 'E', 'D', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2777, 'B66eWbfsgTRvgYb', '301020103', NULL, '2011-12-15', 'B', 'D', 'C', 'D', 'C', 'P', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(2778, 'B66eWbfsgTRvgYb', '301020104', NULL, '2012-06-15', 'D', 'B', 'O', 'B', 'B', 'P', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2779, 'B66eWbfsgTRvgYb', '301020105', NULL, '2012-12-15', 'O', 'E', 'P', 'D', 'D', 'C', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(2780, 'B66eWbfsgTRvgYb', '301020106', NULL, '2013-06-15', 'B', 'C', 'D', 'A', 'C', 'E', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2781, 'B66eWbfsgTRvgYb', '301020107', NULL, '2013-12-15', 'D', 'D', 'D', 'D', 'A', 'A', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2782, 'B66eWbfsgTRvgYb', '301020108', 'E', '2014-06-15', 'C', 'O', 'A', 'D', 'E', 'P', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.57'),
(2783, 'IdTZ2Lo34e1nxIh', '301020101', 'A', '2010-12-15', 'P', 'E', 'P', 'O', 'C', 'D', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(2784, 'IdTZ2Lo34e1nxIh', '301020102', 'C', '2011-06-15', 'O', 'A', 'P', 'P', 'P', 'D', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.29'),
(2785, 'IdTZ2Lo34e1nxIh', '301020103', NULL, '2011-12-15', 'P', 'A', 'E', 'C', 'B', 'B', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2786, 'IdTZ2Lo34e1nxIh', '301020104', NULL, '2012-06-15', 'A', 'O', 'D', 'D', 'P', 'A', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2787, 'IdTZ2Lo34e1nxIh', '301020105', NULL, '2012-12-15', 'O', 'O', 'O', 'C', 'B', 'A', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '9.0'),
(2788, 'IdTZ2Lo34e1nxIh', '301020106', NULL, '2013-06-15', 'D', 'O', 'E', 'E', 'B', 'B', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2789, 'IdTZ2Lo34e1nxIh', '301020107', NULL, '2013-12-15', 'O', 'C', 'B', 'O', 'E', 'B', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2790, 'IdTZ2Lo34e1nxIh', '301020108', 'B', '2014-06-15', 'D', 'O', 'D', 'P', 'O', 'A', '2015-06-02 13:04:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.57'),
(2791, 'GltHTQT7z2J18Tu', '301020101', 'B', '2010-12-15', 'O', 'C', 'D', 'B', 'B', 'A', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2792, 'GltHTQT7z2J18Tu', '301020102', 'C', '2011-06-15', 'A', 'B', 'C', 'B', 'P', 'E', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2793, 'GltHTQT7z2J18Tu', '301020103', NULL, '2011-12-15', 'B', 'P', 'O', 'E', 'A', 'C', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(2794, 'GltHTQT7z2J18Tu', '301020104', NULL, '2012-06-15', 'D', 'E', 'A', 'A', 'P', 'P', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2795, 'GltHTQT7z2J18Tu', '301020105', NULL, '2012-12-15', 'B', 'C', 'C', 'O', 'A', 'D', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2796, 'GltHTQT7z2J18Tu', '301020106', NULL, '2013-06-15', 'O', 'D', 'P', 'O', 'O', 'C', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2797, 'GltHTQT7z2J18Tu', '301020107', NULL, '2013-12-15', 'E', 'C', 'C', 'C', 'D', 'O', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2798, 'GltHTQT7z2J18Tu', '301020108', 'C', '2014-06-15', 'C', 'O', 'A', 'P', 'C', 'C', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.29'),
(2799, '373X8zlAEQxLAdG', '301020101', 'O', '2010-12-15', 'A', 'P', 'D', 'B', 'C', 'E', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2800, '373X8zlAEQxLAdG', '301020102', 'P', '2011-06-15', 'E', 'C', 'P', 'O', 'O', 'P', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.29'),
(2801, '373X8zlAEQxLAdG', '301020103', NULL, '2011-12-15', 'D', 'E', 'E', 'C', 'A', 'D', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(2802, '373X8zlAEQxLAdG', '301020104', NULL, '2012-06-15', 'A', 'B', 'E', 'P', 'D', 'O', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2803, '373X8zlAEQxLAdG', '301020105', NULL, '2012-12-15', 'O', 'A', 'E', 'E', 'B', 'A', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(2804, '373X8zlAEQxLAdG', '301020106', NULL, '2013-06-15', 'B', 'E', 'E', 'E', 'E', 'E', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.5'),
(2805, '373X8zlAEQxLAdG', '301020107', NULL, '2013-12-15', 'E', 'B', 'D', 'C', 'C', 'A', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2806, '373X8zlAEQxLAdG', '301020108', 'E', '2014-06-15', 'O', 'O', 'C', 'E', 'D', 'A', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(2807, 'PqRNUEGQRZODcpv', '301020101', 'O', '2010-12-15', 'P', 'E', 'C', 'B', 'P', 'B', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.57'),
(2808, 'PqRNUEGQRZODcpv', '301020102', 'C', '2011-06-15', 'P', 'P', 'E', 'B', 'P', 'O', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2809, 'PqRNUEGQRZODcpv', '301020103', NULL, '2011-12-15', 'P', 'B', 'B', 'D', 'P', 'C', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2810, 'PqRNUEGQRZODcpv', '301020104', NULL, '2012-06-15', 'O', 'A', 'C', 'C', 'O', 'E', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2811, 'PqRNUEGQRZODcpv', '301020105', NULL, '2012-12-15', 'P', 'P', 'O', 'C', 'O', 'O', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2812, 'PqRNUEGQRZODcpv', '301020106', NULL, '2013-06-15', 'A', 'O', 'O', 'B', 'P', 'O', '2015-06-02 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.5'),
(2813, 'PqRNUEGQRZODcpv', '301020107', NULL, '2013-12-15', 'P', 'C', 'O', 'E', 'B', 'A', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(2814, 'PqRNUEGQRZODcpv', '301020108', 'P', '2014-06-15', 'B', 'D', 'E', 'P', 'A', 'C', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.14'),
(2815, '4p9vUKDkGYw86zY', '301020101', 'A', '2010-12-15', 'P', 'A', 'B', 'E', 'C', 'C', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2816, '4p9vUKDkGYw86zY', '301020102', 'E', '2011-06-15', 'B', 'D', 'O', 'O', 'C', 'B', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.71'),
(2817, '4p9vUKDkGYw86zY', '301020103', NULL, '2011-12-15', 'E', 'E', 'P', 'P', 'O', 'B', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2818, '4p9vUKDkGYw86zY', '301020104', NULL, '2012-06-15', 'C', 'P', 'P', 'A', 'C', 'P', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.83'),
(2819, '4p9vUKDkGYw86zY', '301020105', NULL, '2012-12-15', 'D', 'E', 'C', 'O', 'P', 'D', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(2820, '4p9vUKDkGYw86zY', '301020106', NULL, '2013-06-15', 'E', 'P', 'B', 'P', 'P', 'E', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.0'),
(2821, '4p9vUKDkGYw86zY', '301020107', NULL, '2013-12-15', 'B', 'E', 'E', 'O', 'C', 'O', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2822, '4p9vUKDkGYw86zY', '301020108', 'D', '2014-06-15', 'E', 'O', 'P', 'O', 'B', 'A', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(2823, '5B9E0q5o5iAH8bt', '301020101', 'C', '2010-12-15', 'D', 'E', 'E', 'P', 'C', 'A', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.14'),
(2824, '5B9E0q5o5iAH8bt', '301020102', 'P', '2011-06-15', 'A', 'B', 'B', 'A', 'O', 'O', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.29'),
(2825, '5B9E0q5o5iAH8bt', '301020103', NULL, '2011-12-15', 'A', 'P', 'E', 'E', 'A', 'P', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2826, '5B9E0q5o5iAH8bt', '301020104', NULL, '2012-06-15', 'A', 'E', 'D', 'O', 'E', 'A', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2827, '5B9E0q5o5iAH8bt', '301020105', NULL, '2012-12-15', 'E', 'B', 'E', 'O', 'O', 'B', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(2828, '5B9E0q5o5iAH8bt', '301020106', NULL, '2013-06-15', 'O', 'B', 'P', 'C', 'O', 'B', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2829, '5B9E0q5o5iAH8bt', '301020107', NULL, '2013-12-15', 'D', 'E', 'A', 'B', 'B', 'B', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2830, '5B9E0q5o5iAH8bt', '301020108', 'E', '2014-06-15', 'C', 'C', 'B', 'C', 'P', 'B', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.57'),
(2831, 'pQOG244nkthvXDu', '301020101', 'B', '2010-12-15', 'P', 'E', 'A', 'D', 'P', 'A', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(2832, 'pQOG244nkthvXDu', '301020102', 'P', '2011-06-15', 'D', 'C', 'E', 'D', 'C', 'P', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.57'),
(2833, 'pQOG244nkthvXDu', '301020103', NULL, '2011-12-15', 'D', 'O', 'O', 'D', 'B', 'D', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(2834, 'pQOG244nkthvXDu', '301020104', NULL, '2012-06-15', 'E', 'D', 'A', 'C', 'O', 'B', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2835, 'pQOG244nkthvXDu', '301020105', NULL, '2012-12-15', 'D', 'A', 'A', 'E', 'A', 'O', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2836, 'pQOG244nkthvXDu', '301020106', NULL, '2013-06-15', 'O', 'D', 'D', 'A', 'A', 'A', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.17'),
(2837, 'pQOG244nkthvXDu', '301020107', NULL, '2013-12-15', 'P', 'O', 'O', 'E', 'P', 'O', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(2838, 'pQOG244nkthvXDu', '301020108', 'B', '2014-06-15', 'B', 'E', 'P', 'E', 'D', 'E', '2015-06-02 13:04:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.86'),
(2839, 'EF5TAADs5v11Glu', '301020101', 'E', '2010-12-15', 'A', 'D', 'B', 'P', 'E', 'B', '2015-06-02 13:04:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(2840, 'EF5TAADs5v11Glu', '301020102', 'D', '2011-06-15', 'E', 'B', 'D', 'E', 'E', 'O', '2015-06-02 13:04:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(2841, 'EF5TAADs5v11Glu', '301020103', NULL, '2011-12-15', 'D', 'O', 'B', 'P', 'A', 'O', '2015-06-02 13:04:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2842, 'EF5TAADs5v11Glu', '301020104', NULL, '2012-06-15', 'A', 'B', 'O', 'A', 'P', 'C', '2015-06-02 13:04:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2843, 'EF5TAADs5v11Glu', '301020105', NULL, '2012-12-15', 'C', 'P', 'P', 'A', 'P', 'A', '2015-06-02 13:04:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2844, 'EF5TAADs5v11Glu', '301020106', NULL, '2013-06-15', 'P', 'B', 'P', 'O', 'E', 'E', '2015-06-02 13:04:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2845, 'EF5TAADs5v11Glu', '301020107', NULL, '2013-12-15', 'A', 'A', 'B', 'P', 'O', 'D', '2015-06-02 13:04:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(2846, 'EF5TAADs5v11Glu', '301020108', 'A', '2014-06-15', 'P', 'E', 'O', 'B', 'O', 'P', '2015-06-02 13:04:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.14'),
(2847, 'aJiQnT70WZxFDRx', '301020101', 'O', '2010-12-15', 'B', 'D', 'C', 'D', 'A', 'P', '2015-06-02 13:04:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.14'),
(2848, 'aJiQnT70WZxFDRx', '301020102', 'P', '2011-06-15', 'P', 'O', 'E', 'P', 'C', 'A', '2015-06-02 13:04:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.14'),
(2849, 'aJiQnT70WZxFDRx', '301020103', NULL, '2011-12-15', 'O', 'A', 'D', 'D', 'C', 'O', '2015-06-02 13:04:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2850, 'aJiQnT70WZxFDRx', '301020104', NULL, '2012-06-15', 'O', 'P', 'A', 'P', 'O', 'B', '2015-06-02 13:04:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2851, 'aJiQnT70WZxFDRx', '301020105', NULL, '2012-12-15', 'D', 'P', 'E', 'E', 'P', 'B', '2015-06-02 13:04:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.33'),
(2852, 'aJiQnT70WZxFDRx', '301020106', NULL, '2013-06-15', 'C', 'A', 'A', 'E', 'E', 'O', '2015-06-02 13:04:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2853, 'aJiQnT70WZxFDRx', '301020107', NULL, '2013-12-15', 'E', 'P', 'O', 'E', 'C', 'O', '2015-06-02 13:04:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2854, 'aJiQnT70WZxFDRx', '301020108', 'A', '2014-06-15', 'C', 'O', 'P', 'C', 'C', 'E', '2015-06-02 13:04:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2855, 'Afl8mNHf3Jb0m8T', '301020101', 'D', '2010-12-15', 'E', 'A', 'O', 'O', 'D', 'B', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.71'),
(2856, 'Afl8mNHf3Jb0m8T', '301020102', 'C', '2011-06-15', 'B', 'A', 'E', 'B', 'P', 'C', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2857, 'Afl8mNHf3Jb0m8T', '301020103', NULL, '2011-12-15', 'P', 'C', 'E', 'E', 'A', 'B', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(2858, 'Afl8mNHf3Jb0m8T', '301020104', NULL, '2012-06-15', 'E', 'O', 'D', 'O', 'O', 'O', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.5'),
(2859, 'Afl8mNHf3Jb0m8T', '301020105', NULL, '2012-12-15', 'E', 'P', 'O', 'E', 'P', 'B', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2860, 'Afl8mNHf3Jb0m8T', '301020106', NULL, '2013-06-15', 'E', 'D', 'B', 'E', 'O', 'O', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2861, 'Afl8mNHf3Jb0m8T', '301020107', NULL, '2013-12-15', 'D', 'C', 'P', 'P', 'B', 'E', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.67'),
(2862, 'Afl8mNHf3Jb0m8T', '301020108', 'A', '2014-06-15', 'A', 'C', 'P', 'P', 'E', 'C', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(2863, '0kYyTwNwbzqQeQc', '301020101', 'E', '2010-12-15', 'A', 'A', 'P', 'C', 'C', 'C', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2864, '0kYyTwNwbzqQeQc', '301020102', 'P', '2011-06-15', 'E', 'A', 'O', 'P', 'E', 'C', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.29'),
(2865, '0kYyTwNwbzqQeQc', '301020103', NULL, '2011-12-15', 'C', 'E', 'A', 'C', 'B', 'A', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2866, '0kYyTwNwbzqQeQc', '301020104', NULL, '2012-06-15', 'O', 'P', 'P', 'P', 'O', 'P', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2867, '0kYyTwNwbzqQeQc', '301020105', NULL, '2012-12-15', 'A', 'D', 'B', 'E', 'E', 'A', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2868, '0kYyTwNwbzqQeQc', '301020106', NULL, '2013-06-15', 'P', 'D', 'D', 'C', 'O', 'D', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2869, '0kYyTwNwbzqQeQc', '301020107', NULL, '2013-12-15', 'E', 'O', 'O', 'E', 'A', 'P', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(2870, '0kYyTwNwbzqQeQc', '301020108', 'B', '2014-06-15', 'C', 'E', 'A', 'D', 'O', 'O', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.86'),
(2871, 'D3y9RNs3JVYavHe', '301020101', 'P', '2010-12-15', 'C', 'D', 'C', 'O', 'O', 'D', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.14'),
(2872, 'D3y9RNs3JVYavHe', '301020102', 'A', '2011-06-15', 'O', 'E', 'B', 'D', 'B', 'P', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.14'),
(2873, 'D3y9RNs3JVYavHe', '301020103', NULL, '2011-12-15', 'E', 'C', 'D', 'A', 'A', 'D', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2874, 'D3y9RNs3JVYavHe', '301020104', NULL, '2012-06-15', 'B', 'C', 'E', 'E', 'P', 'E', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.67'),
(2875, 'D3y9RNs3JVYavHe', '301020105', NULL, '2012-12-15', 'O', 'E', 'B', 'A', 'O', 'C', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.17'),
(2876, 'D3y9RNs3JVYavHe', '301020106', NULL, '2013-06-15', 'D', 'C', 'O', 'B', 'P', 'P', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2877, 'D3y9RNs3JVYavHe', '301020107', NULL, '2013-12-15', 'O', 'D', 'D', 'O', 'E', 'E', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2878, 'D3y9RNs3JVYavHe', '301020108', 'O', '2014-06-15', 'A', 'B', 'O', 'B', 'D', 'C', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.29'),
(2879, 'pzI3XHmWU8jBY4t', '301020101', 'C', '2010-12-15', 'O', 'E', 'B', 'P', 'C', 'O', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.29'),
(2880, 'pzI3XHmWU8jBY4t', '301020102', 'P', '2011-06-15', 'B', 'A', 'B', 'C', 'O', 'B', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.71'),
(2881, 'pzI3XHmWU8jBY4t', '301020103', NULL, '2011-12-15', 'D', 'A', 'P', 'O', 'O', 'D', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2882, 'pzI3XHmWU8jBY4t', '301020104', NULL, '2012-06-15', 'B', 'B', 'O', 'C', 'D', 'A', '2015-06-02 13:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2883, 'pzI3XHmWU8jBY4t', '301020105', NULL, '2012-12-15', 'D', 'B', 'A', 'D', 'B', 'O', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2884, 'pzI3XHmWU8jBY4t', '301020106', NULL, '2013-06-15', 'E', 'A', 'P', 'O', 'A', 'D', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(2885, 'pzI3XHmWU8jBY4t', '301020107', NULL, '2013-12-15', 'O', 'C', 'E', 'E', 'P', 'D', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2886, 'pzI3XHmWU8jBY4t', '301020108', 'B', '2014-06-15', 'A', 'C', 'C', 'P', 'P', 'C', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.57'),
(2887, 'iS1vP01SRy9Riwu', '301020101', 'E', '2010-12-15', 'P', 'P', 'P', 'C', 'P', 'P', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '4.57'),
(2888, 'iS1vP01SRy9Riwu', '301020102', 'O', '2011-06-15', 'P', 'P', 'B', 'E', 'E', 'A', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(2889, 'iS1vP01SRy9Riwu', '301020103', NULL, '2011-12-15', 'P', 'E', 'B', 'D', 'C', 'B', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(2890, 'iS1vP01SRy9Riwu', '301020104', NULL, '2012-06-15', 'B', 'C', 'O', 'D', 'E', 'P', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.67'),
(2891, 'iS1vP01SRy9Riwu', '301020105', NULL, '2012-12-15', 'E', 'C', 'O', 'D', 'E', 'P', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2892, 'iS1vP01SRy9Riwu', '301020106', NULL, '2013-06-15', 'B', 'B', 'C', 'A', 'E', 'B', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2893, 'iS1vP01SRy9Riwu', '301020107', NULL, '2013-12-15', 'D', 'D', 'O', 'D', 'B', 'C', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(2894, 'iS1vP01SRy9Riwu', '301020108', 'A', '2014-06-15', 'P', 'A', 'D', 'O', 'P', 'B', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.14'),
(2895, 'KHboKCumrL1uxsG', '301020101', 'B', '2010-12-15', 'P', 'C', 'E', 'P', 'O', 'O', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2896, 'KHboKCumrL1uxsG', '301020102', 'P', '2011-06-15', 'C', 'O', 'B', 'B', 'C', 'O', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.71'),
(2897, 'KHboKCumrL1uxsG', '301020103', NULL, '2011-12-15', 'B', 'E', 'P', 'B', 'B', 'D', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2898, 'KHboKCumrL1uxsG', '301020104', NULL, '2012-06-15', 'A', 'A', 'A', 'O', 'O', 'D', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.83'),
(2899, 'KHboKCumrL1uxsG', '301020105', NULL, '2012-12-15', 'C', 'P', 'O', 'P', 'B', 'P', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2900, 'KHboKCumrL1uxsG', '301020106', NULL, '2013-06-15', 'O', 'P', 'A', 'A', 'O', 'D', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2901, 'KHboKCumrL1uxsG', '301020107', NULL, '2013-12-15', 'O', 'O', 'A', 'E', 'P', 'C', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2902, 'KHboKCumrL1uxsG', '301020108', 'C', '2014-06-15', 'E', 'P', 'P', 'D', 'B', 'E', '2015-06-02 13:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.57'),
(2903, 'MHj85O70vfcURRC', '301020101', 'C', '2010-12-15', 'A', 'P', 'P', 'A', 'A', 'O', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(2904, 'MHj85O70vfcURRC', '301020102', 'C', '2011-06-15', 'E', 'E', 'O', 'B', 'O', 'B', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.57'),
(2905, 'MHj85O70vfcURRC', '301020103', NULL, '2011-12-15', 'B', 'E', 'E', 'B', 'D', 'E', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2906, 'MHj85O70vfcURRC', '301020104', NULL, '2012-06-15', 'O', 'D', 'B', 'O', 'O', 'A', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.83'),
(2907, 'MHj85O70vfcURRC', '301020105', NULL, '2012-12-15', 'P', 'A', 'C', 'D', 'D', 'E', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2908, 'MHj85O70vfcURRC', '301020106', NULL, '2013-06-15', 'A', 'D', 'B', 'P', 'C', 'D', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.67'),
(2909, 'MHj85O70vfcURRC', '301020107', NULL, '2013-12-15', 'A', 'E', 'C', 'O', 'C', 'B', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(2910, 'MHj85O70vfcURRC', '301020108', 'B', '2014-06-15', 'A', 'O', 'E', 'O', 'P', 'C', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.57'),
(2911, 'Qnpi3SqQMp2Vkx6', '301020101', 'O', '2010-12-15', 'P', 'O', 'P', 'E', 'E', 'O', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2912, 'Qnpi3SqQMp2Vkx6', '301020102', 'P', '2011-06-15', 'B', 'P', 'E', 'P', 'B', 'P', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.29'),
(2913, 'Qnpi3SqQMp2Vkx6', '301020103', NULL, '2011-12-15', 'A', 'C', 'P', 'C', 'E', 'A', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2914, 'Qnpi3SqQMp2Vkx6', '301020104', NULL, '2012-06-15', 'E', 'B', 'A', 'P', 'D', 'A', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2915, 'Qnpi3SqQMp2Vkx6', '301020105', NULL, '2012-12-15', 'O', 'B', 'D', 'C', 'D', 'O', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2916, 'Qnpi3SqQMp2Vkx6', '301020106', NULL, '2013-06-15', 'O', 'B', 'O', 'A', 'O', 'D', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.83'),
(2917, 'Qnpi3SqQMp2Vkx6', '301020107', NULL, '2013-12-15', 'D', 'P', 'E', 'P', 'C', 'O', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2918, 'Qnpi3SqQMp2Vkx6', '301020108', 'E', '2014-06-15', 'O', 'O', 'C', 'A', 'C', 'B', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2919, 'PKPgb5wUayRzIRX', '301020101', 'O', '2010-12-15', 'E', 'O', 'C', 'C', 'D', 'B', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.57'),
(2920, 'PKPgb5wUayRzIRX', '301020102', 'O', '2011-06-15', 'D', 'O', 'E', 'O', 'A', 'O', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.57'),
(2921, 'PKPgb5wUayRzIRX', '301020103', NULL, '2011-12-15', 'D', 'B', 'O', 'A', 'E', 'P', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2922, 'PKPgb5wUayRzIRX', '301020104', NULL, '2012-06-15', 'C', 'O', 'D', 'O', 'E', 'O', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2923, 'PKPgb5wUayRzIRX', '301020105', NULL, '2012-12-15', 'B', 'P', 'D', 'B', 'O', 'A', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2924, 'PKPgb5wUayRzIRX', '301020106', NULL, '2013-06-15', 'O', 'P', 'B', 'E', 'O', 'D', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(2925, 'PKPgb5wUayRzIRX', '301020107', NULL, '2013-12-15', 'O', 'D', 'D', 'C', 'B', 'O', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2926, 'PKPgb5wUayRzIRX', '301020108', 'E', '2014-06-15', 'C', 'P', 'B', 'D', 'P', 'D', '2015-06-02 13:04:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.71'),
(2927, 'WjtfQ3rbsIqHwfe', '301020101', 'D', '2010-12-15', 'D', 'E', 'E', 'O', 'O', 'D', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2928, 'WjtfQ3rbsIqHwfe', '301020102', 'A', '2011-06-15', 'B', 'C', 'C', 'D', 'D', 'A', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(2929, 'WjtfQ3rbsIqHwfe', '301020103', NULL, '2011-12-15', 'C', 'C', 'C', 'C', 'C', 'D', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2930, 'WjtfQ3rbsIqHwfe', '301020104', NULL, '2012-06-15', 'C', 'O', 'D', 'O', 'P', 'P', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2931, 'WjtfQ3rbsIqHwfe', '301020105', NULL, '2012-12-15', 'O', 'D', 'D', 'O', 'O', 'P', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(2932, 'WjtfQ3rbsIqHwfe', '301020106', NULL, '2013-06-15', 'O', 'O', 'B', 'B', 'E', 'P', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2933, 'WjtfQ3rbsIqHwfe', '301020107', NULL, '2013-12-15', 'O', 'A', 'B', 'O', 'D', 'C', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.33'),
(2934, 'WjtfQ3rbsIqHwfe', '301020108', 'A', '2014-06-15', 'C', 'O', 'D', 'P', 'D', 'D', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2935, 'vpbD9GR3iQWzofC', '301020101', 'D', '2010-12-15', 'E', 'O', 'C', 'P', 'C', 'O', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2936, 'vpbD9GR3iQWzofC', '301020102', 'P', '2011-06-15', 'A', 'E', 'O', 'C', 'P', 'E', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.29'),
(2937, 'vpbD9GR3iQWzofC', '301020103', NULL, '2011-12-15', 'C', 'D', 'B', 'A', 'P', 'C', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2938, 'vpbD9GR3iQWzofC', '301020104', NULL, '2012-06-15', 'P', 'P', 'P', 'E', 'O', 'O', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2939, 'vpbD9GR3iQWzofC', '301020105', NULL, '2012-12-15', 'A', 'B', 'P', 'O', 'C', 'D', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2940, 'vpbD9GR3iQWzofC', '301020106', NULL, '2013-06-15', 'E', 'C', 'O', 'D', 'O', 'C', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2941, 'vpbD9GR3iQWzofC', '301020107', NULL, '2013-12-15', 'D', 'A', 'D', 'D', 'E', 'A', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2942, 'vpbD9GR3iQWzofC', '301020108', 'D', '2014-06-15', 'C', 'O', 'D', 'B', 'E', 'D', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2943, '09uYqoScl9zAvyf', '301020101', 'D', '2010-12-15', 'B', 'C', 'D', 'B', 'C', 'A', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.29'),
(2944, '09uYqoScl9zAvyf', '301020102', 'C', '2011-06-15', 'B', 'B', 'E', 'E', 'D', 'O', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2945, '09uYqoScl9zAvyf', '301020103', NULL, '2011-12-15', 'B', 'O', 'E', 'B', 'P', 'C', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2946, '09uYqoScl9zAvyf', '301020104', NULL, '2012-06-15', 'P', 'C', 'A', 'C', 'E', 'C', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2947, '09uYqoScl9zAvyf', '301020105', NULL, '2012-12-15', 'E', 'E', 'A', 'A', 'C', 'O', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2948, '09uYqoScl9zAvyf', '301020106', NULL, '2013-06-15', 'B', 'E', 'A', 'C', 'C', 'C', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(2949, '09uYqoScl9zAvyf', '301020107', NULL, '2013-12-15', 'D', 'A', 'C', 'E', 'A', 'B', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2950, '09uYqoScl9zAvyf', '301020108', 'P', '2014-06-15', 'C', 'P', 'C', 'B', 'B', 'P', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2951, 'qKwYrVHghdwCiii', '301020101', 'B', '2010-12-15', 'O', 'B', 'P', 'P', 'C', 'B', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2952, 'qKwYrVHghdwCiii', '301020102', 'D', '2011-06-15', 'A', 'P', 'A', 'P', 'E', 'A', '2015-06-02 13:04:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.57'),
(2953, 'qKwYrVHghdwCiii', '301020103', NULL, '2011-12-15', 'P', 'B', 'P', 'D', 'P', 'C', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.5'),
(2954, 'qKwYrVHghdwCiii', '301020104', NULL, '2012-06-15', 'D', 'B', 'E', 'O', 'D', 'P', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2955, 'qKwYrVHghdwCiii', '301020105', NULL, '2012-12-15', 'P', 'C', 'P', 'O', 'E', 'C', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2956, 'qKwYrVHghdwCiii', '301020106', NULL, '2013-06-15', 'E', 'E', 'P', 'D', 'E', 'D', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.17'),
(2957, 'qKwYrVHghdwCiii', '301020107', NULL, '2013-12-15', 'C', 'A', 'D', 'B', 'A', 'A', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2958, 'qKwYrVHghdwCiii', '301020108', 'C', '2014-06-15', 'E', 'P', 'C', 'P', 'A', 'D', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2959, 'KhE3jYpeDgOy7zx', '301020101', 'E', '2010-12-15', 'B', 'E', 'P', 'C', 'B', 'D', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.14'),
(2960, 'KhE3jYpeDgOy7zx', '301020102', 'D', '2011-06-15', 'C', 'P', 'P', 'C', 'C', 'A', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.29'),
(2961, 'KhE3jYpeDgOy7zx', '301020103', NULL, '2011-12-15', 'P', 'O', 'P', 'P', 'D', 'B', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2962, 'KhE3jYpeDgOy7zx', '301020104', NULL, '2012-06-15', 'E', 'D', 'O', 'B', 'D', 'B', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(2963, 'KhE3jYpeDgOy7zx', '301020105', NULL, '2012-12-15', 'C', 'A', 'B', 'P', 'C', 'A', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2964, 'KhE3jYpeDgOy7zx', '301020106', NULL, '2013-06-15', 'C', 'O', 'C', 'E', 'C', 'D', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2965, 'KhE3jYpeDgOy7zx', '301020107', NULL, '2013-12-15', 'E', 'A', 'B', 'A', 'B', 'E', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(2966, 'KhE3jYpeDgOy7zx', '301020108', 'C', '2014-06-15', 'P', 'B', 'B', 'C', 'B', 'C', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2967, 'PdRbKHBDhu9b48M', '301020101', 'O', '2010-12-15', 'C', 'E', 'O', 'B', 'O', 'O', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.57'),
(2968, 'PdRbKHBDhu9b48M', '301020102', 'D', '2011-06-15', 'A', 'C', 'C', 'O', 'E', 'E', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2969, 'PdRbKHBDhu9b48M', '301020103', NULL, '2011-12-15', 'C', 'E', 'C', 'P', 'B', 'O', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2970, 'PdRbKHBDhu9b48M', '301020104', NULL, '2012-06-15', 'A', 'B', 'O', 'E', 'O', 'E', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83');
INSERT INTO `undergraduate_record` (`id`, `user_code`, `form_code`, `data_field_8`, `data_field_1`, `data_field_2`, `data_field_3`, `data_field_4`, `data_field_5`, `data_field_6`, `data_field_7`, `last_modified`, `data_field_9`, `data_field_10`, `data_field_11`, `data_field_12`, `data_field_13`, `data_field_14`, `data_field_15`, `attempt`, `total`) VALUES
(2971, 'PdRbKHBDhu9b48M', '301020105', NULL, '2012-12-15', 'O', 'C', 'D', 'O', 'A', 'P', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(2972, 'PdRbKHBDhu9b48M', '301020106', NULL, '2013-06-15', 'D', 'E', 'A', 'O', 'P', 'E', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2973, 'PdRbKHBDhu9b48M', '301020107', NULL, '2013-12-15', 'C', 'E', 'B', 'E', 'C', 'A', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(2974, 'PdRbKHBDhu9b48M', '301020108', 'E', '2014-06-15', 'A', 'A', 'D', 'B', 'O', 'O', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.14'),
(2975, 'RGorsFjffkFoXt8', '301020101', 'O', '2010-12-15', 'P', 'D', 'D', 'A', 'E', 'B', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.86'),
(2976, 'RGorsFjffkFoXt8', '301020102', 'O', '2011-06-15', 'B', 'O', 'C', 'P', 'E', 'C', '2015-06-02 13:04:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.29'),
(2977, 'RGorsFjffkFoXt8', '301020103', NULL, '2011-12-15', 'B', 'O', 'B', 'P', 'A', 'D', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(2978, 'RGorsFjffkFoXt8', '301020104', NULL, '2012-06-15', 'B', 'B', 'B', 'P', 'A', 'O', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(2979, 'RGorsFjffkFoXt8', '301020105', NULL, '2012-12-15', 'B', 'P', 'C', 'E', 'D', 'A', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2980, 'RGorsFjffkFoXt8', '301020106', NULL, '2013-06-15', 'P', 'D', 'B', 'D', 'E', 'B', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2981, 'RGorsFjffkFoXt8', '301020107', NULL, '2013-12-15', 'O', 'B', 'P', 'P', 'E', 'E', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(2982, 'RGorsFjffkFoXt8', '301020108', 'O', '2014-06-15', 'O', 'C', 'E', 'O', 'B', 'B', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.29'),
(2983, 'adV2ppUNVqTdFLj', '301020101', 'O', '2010-12-15', 'P', 'E', 'E', 'D', 'B', 'E', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.14'),
(2984, 'adV2ppUNVqTdFLj', '301020102', 'A', '2011-06-15', 'D', 'C', 'C', 'D', 'E', 'E', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(2985, 'adV2ppUNVqTdFLj', '301020103', NULL, '2011-12-15', 'A', 'O', 'E', 'D', 'D', 'D', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2986, 'adV2ppUNVqTdFLj', '301020104', NULL, '2012-06-15', 'B', 'E', 'B', 'C', 'P', 'E', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2987, 'adV2ppUNVqTdFLj', '301020105', NULL, '2012-12-15', 'E', 'O', 'E', 'C', 'D', 'D', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(2988, 'adV2ppUNVqTdFLj', '301020106', NULL, '2013-06-15', 'A', 'B', 'E', 'O', 'A', 'C', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(2989, 'adV2ppUNVqTdFLj', '301020107', NULL, '2013-12-15', 'A', 'D', 'C', 'P', 'D', 'E', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.17'),
(2990, 'adV2ppUNVqTdFLj', '301020108', 'P', '2014-06-15', 'A', 'O', 'O', 'P', 'B', 'C', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(2991, '4PhBVeOwADvdDom', '301020101', 'P', '2010-12-15', 'P', 'C', 'P', 'E', 'E', 'B', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.29'),
(2992, '4PhBVeOwADvdDom', '301020102', 'P', '2011-06-15', 'D', 'A', 'E', 'D', 'B', 'B', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.57'),
(2993, '4PhBVeOwADvdDom', '301020103', NULL, '2011-12-15', 'D', 'A', 'C', 'P', 'D', 'O', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2994, '4PhBVeOwADvdDom', '301020104', NULL, '2012-06-15', 'A', 'C', 'P', 'B', 'A', 'E', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2995, '4PhBVeOwADvdDom', '301020105', NULL, '2012-12-15', 'D', 'A', 'O', 'A', 'O', 'D', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.33'),
(2996, '4PhBVeOwADvdDom', '301020106', NULL, '2013-06-15', 'P', 'B', 'P', 'O', 'C', 'E', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(2997, '4PhBVeOwADvdDom', '301020107', NULL, '2013-12-15', 'O', 'C', 'O', 'B', 'D', 'O', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.5'),
(2998, '4PhBVeOwADvdDom', '301020108', 'D', '2014-06-15', 'B', 'C', 'C', 'A', 'D', 'D', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(2999, 'PboNw0J6c7siDxE', '301020101', 'D', '2010-12-15', 'C', 'C', 'E', 'P', 'E', 'P', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.43'),
(3000, 'PboNw0J6c7siDxE', '301020102', 'E', '2011-06-15', 'A', 'E', 'A', 'D', 'O', 'E', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(3001, 'PboNw0J6c7siDxE', '301020103', NULL, '2011-12-15', 'E', 'A', 'B', 'E', 'A', 'P', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.67'),
(3002, 'PboNw0J6c7siDxE', '301020104', NULL, '2012-06-15', 'E', 'A', 'D', 'A', 'B', 'P', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(3003, 'PboNw0J6c7siDxE', '301020105', NULL, '2012-12-15', 'C', 'D', 'B', 'B', 'D', 'E', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.67'),
(3004, 'PboNw0J6c7siDxE', '301020106', NULL, '2013-06-15', 'O', 'B', 'P', 'E', 'A', 'O', '2015-06-02 13:04:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(3005, 'PboNw0J6c7siDxE', '301020107', NULL, '2013-12-15', 'E', 'P', 'A', 'D', 'P', 'D', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.67'),
(3006, 'PboNw0J6c7siDxE', '301020108', 'B', '2014-06-15', 'B', 'O', 'D', 'E', 'E', 'A', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.29'),
(3007, 'bG6yaIPhQwsD6jm', '301020101', 'P', '2010-12-15', 'E', 'O', 'B', 'A', 'P', 'D', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.57'),
(3008, 'bG6yaIPhQwsD6jm', '301020102', 'C', '2011-06-15', 'O', 'C', 'D', 'E', 'C', 'O', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(3009, 'bG6yaIPhQwsD6jm', '301020103', NULL, '2011-12-15', 'P', 'P', 'P', 'A', 'A', 'P', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.67'),
(3010, 'bG6yaIPhQwsD6jm', '301020104', NULL, '2012-06-15', 'A', 'D', 'B', 'B', 'C', 'D', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(3011, 'bG6yaIPhQwsD6jm', '301020105', NULL, '2012-12-15', 'A', 'D', 'B', 'A', 'B', 'D', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(3012, 'bG6yaIPhQwsD6jm', '301020106', NULL, '2013-06-15', 'A', 'B', 'P', 'B', 'C', 'E', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(3013, 'bG6yaIPhQwsD6jm', '301020107', NULL, '2013-12-15', 'E', 'D', 'B', 'P', 'D', 'D', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.83'),
(3014, 'bG6yaIPhQwsD6jm', '301020108', 'A', '2014-06-15', 'A', 'B', 'A', 'O', 'B', 'B', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.71'),
(3015, 'm2O43FLvIaWEJms', '301020101', 'P', '2010-12-15', 'D', 'C', 'C', 'P', 'O', 'P', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(3016, 'm2O43FLvIaWEJms', '301020102', 'A', '2011-06-15', 'A', 'A', 'O', 'C', 'E', 'E', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.71'),
(3017, 'm2O43FLvIaWEJms', '301020103', NULL, '2011-12-15', 'E', 'E', 'A', 'E', 'B', 'O', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(3018, 'm2O43FLvIaWEJms', '301020104', NULL, '2012-06-15', 'D', 'E', 'P', 'B', 'A', 'P', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(3019, 'm2O43FLvIaWEJms', '301020105', NULL, '2012-12-15', 'A', 'E', 'O', 'C', 'C', 'A', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(3020, 'm2O43FLvIaWEJms', '301020106', NULL, '2013-06-15', 'A', 'D', 'B', 'C', 'D', 'B', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(3021, 'm2O43FLvIaWEJms', '301020107', NULL, '2013-12-15', 'B', 'C', 'A', 'A', 'A', 'O', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.67'),
(3022, 'm2O43FLvIaWEJms', '301020108', 'O', '2014-06-15', 'O', 'A', 'A', 'D', 'C', 'P', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.86'),
(3023, 'J52QjdW9DUs3lwh', '301020101', 'D', '2010-12-15', 'D', 'B', 'P', 'D', 'B', 'D', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.29'),
(3024, 'J52QjdW9DUs3lwh', '301020102', 'E', '2011-06-15', 'P', 'A', 'P', 'C', 'P', 'C', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.71'),
(3025, 'J52QjdW9DUs3lwh', '301020103', NULL, '2011-12-15', 'E', 'A', 'A', 'A', 'O', 'C', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.17'),
(3026, 'J52QjdW9DUs3lwh', '301020104', NULL, '2012-06-15', 'O', 'O', 'P', 'O', 'P', 'D', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(3027, 'J52QjdW9DUs3lwh', '301020105', NULL, '2012-12-15', 'E', 'E', 'P', 'O', 'C', 'B', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(3028, 'J52QjdW9DUs3lwh', '301020106', NULL, '2013-06-15', 'C', 'A', 'B', 'B', 'A', 'E', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(3029, 'J52QjdW9DUs3lwh', '301020107', NULL, '2013-12-15', 'P', 'C', 'C', 'O', 'O', 'B', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(3030, 'J52QjdW9DUs3lwh', '301020108', 'C', '2014-06-15', 'E', 'P', 'P', 'D', 'E', 'O', '2015-06-02 13:04:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.86'),
(3031, 'Vr5rTwEUl06xX0e', '301020101', 'E', '2010-12-15', 'P', 'E', 'D', 'A', 'D', 'A', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.29'),
(3032, 'Vr5rTwEUl06xX0e', '301020102', 'O', '2011-06-15', 'B', 'B', 'B', 'D', 'A', 'B', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.14'),
(3033, 'Vr5rTwEUl06xX0e', '301020103', NULL, '2011-12-15', 'A', 'P', 'D', 'O', 'A', 'P', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(3034, 'Vr5rTwEUl06xX0e', '301020104', NULL, '2012-06-15', 'P', 'D', 'O', 'E', 'C', 'C', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(3035, 'Vr5rTwEUl06xX0e', '301020105', NULL, '2012-12-15', 'O', 'O', 'E', 'D', 'B', 'P', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(3036, 'Vr5rTwEUl06xX0e', '301020106', NULL, '2013-06-15', 'C', 'O', 'A', 'A', 'D', 'C', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(3037, 'Vr5rTwEUl06xX0e', '301020107', NULL, '2013-12-15', 'O', 'A', 'O', 'B', 'E', 'P', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(3038, 'Vr5rTwEUl06xX0e', '301020108', 'A', '2014-06-15', 'B', 'P', 'C', 'C', 'A', 'A', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.57'),
(3039, '3x6iVKREDArVBbv', '301020101', 'A', '2010-12-15', 'O', 'O', 'E', 'P', 'C', 'E', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.14'),
(3040, '3x6iVKREDArVBbv', '301020102', 'A', '2011-06-15', 'B', 'C', 'E', 'O', 'D', 'E', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.14'),
(3041, '3x6iVKREDArVBbv', '301020103', NULL, '2011-12-15', 'P', 'C', 'A', 'A', 'D', 'D', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(3042, '3x6iVKREDArVBbv', '301020104', NULL, '2012-06-15', 'B', 'O', 'C', 'C', 'B', 'D', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(3043, '3x6iVKREDArVBbv', '301020105', NULL, '2012-12-15', 'E', 'P', 'O', 'D', 'P', 'D', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.83'),
(3044, '3x6iVKREDArVBbv', '301020106', NULL, '2013-06-15', 'E', 'C', 'A', 'D', 'O', 'D', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(3045, '3x6iVKREDArVBbv', '301020107', NULL, '2013-12-15', 'P', 'O', 'D', 'P', 'C', 'C', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(3046, '3x6iVKREDArVBbv', '301020108', 'C', '2014-06-15', 'B', 'C', 'A', 'O', 'D', 'B', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.86'),
(3047, 'yvNYbpwup3PiR4e', '301020101', 'C', '2010-12-15', 'P', 'P', 'A', 'P', 'B', 'A', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(3048, 'yvNYbpwup3PiR4e', '301020102', 'C', '2011-06-15', 'D', 'D', 'D', 'P', 'B', 'A', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.57'),
(3049, 'yvNYbpwup3PiR4e', '301020103', NULL, '2011-12-15', 'E', 'P', 'A', 'A', 'B', 'D', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(3050, 'yvNYbpwup3PiR4e', '301020104', NULL, '2012-06-15', 'E', 'D', 'P', 'A', 'O', 'O', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(3051, 'yvNYbpwup3PiR4e', '301020105', NULL, '2012-12-15', 'A', 'O', 'E', 'P', 'P', 'A', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(3052, 'yvNYbpwup3PiR4e', '301020106', NULL, '2013-06-15', 'C', 'D', 'B', 'A', 'D', 'C', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(3053, 'yvNYbpwup3PiR4e', '301020107', NULL, '2013-12-15', 'O', 'D', 'B', 'E', 'O', 'E', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(3054, 'yvNYbpwup3PiR4e', '301020108', 'O', '2014-06-15', 'A', 'B', 'P', 'E', 'B', 'A', '2015-06-02 13:04:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.57'),
(3055, 'BBwxVSUs5O3HnFQ', '301020101', 'D', '2010-12-15', 'E', 'O', 'E', 'E', 'A', 'P', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.29'),
(3056, 'BBwxVSUs5O3HnFQ', '301020102', 'E', '2011-06-15', 'C', 'A', 'D', 'C', 'A', 'O', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.57'),
(3057, 'BBwxVSUs5O3HnFQ', '301020103', NULL, '2011-12-15', 'O', 'D', 'E', 'D', 'A', 'O', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.67'),
(3058, 'BBwxVSUs5O3HnFQ', '301020104', NULL, '2012-06-15', 'D', 'E', 'P', 'B', 'C', 'P', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.67'),
(3059, 'BBwxVSUs5O3HnFQ', '301020105', NULL, '2012-12-15', 'C', 'B', 'O', 'P', 'D', 'A', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(3060, 'BBwxVSUs5O3HnFQ', '301020106', NULL, '2013-06-15', 'P', 'P', 'E', 'E', 'A', 'B', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.83'),
(3061, 'BBwxVSUs5O3HnFQ', '301020107', NULL, '2013-12-15', 'E', 'D', 'B', 'O', 'C', 'P', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.67'),
(3062, 'BBwxVSUs5O3HnFQ', '301020108', 'D', '2014-06-15', 'A', 'C', 'E', 'B', 'B', 'O', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.57'),
(3063, 'OHtERc3qiWAhExt', '301020101', 'O', '2010-12-15', 'D', 'P', 'B', 'O', 'P', 'A', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.29'),
(3064, 'OHtERc3qiWAhExt', '301020102', 'D', '2011-06-15', 'O', 'A', 'A', 'D', 'O', 'D', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(3065, 'OHtERc3qiWAhExt', '301020103', NULL, '2011-12-15', 'P', 'A', 'E', 'E', 'P', 'C', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.67'),
(3066, 'OHtERc3qiWAhExt', '301020104', NULL, '2012-06-15', 'A', 'E', 'P', 'P', 'C', 'D', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.83'),
(3067, 'OHtERc3qiWAhExt', '301020105', NULL, '2012-12-15', 'A', 'C', 'B', 'E', 'B', 'E', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(3068, 'OHtERc3qiWAhExt', '301020106', NULL, '2013-06-15', 'D', 'D', 'E', 'C', 'E', 'C', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(3069, 'OHtERc3qiWAhExt', '301020107', NULL, '2013-12-15', 'B', 'O', 'E', 'B', 'C', 'C', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(3070, 'OHtERc3qiWAhExt', '301020108', 'C', '2014-06-15', 'P', 'A', 'A', 'O', 'A', 'P', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(3071, 'PNNx12jmWP4ZWou', '301020101', 'O', '2010-12-15', 'C', 'O', 'A', 'A', 'C', 'D', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.29'),
(3072, 'PNNx12jmWP4ZWou', '301020102', 'B', '2011-06-15', 'B', 'B', 'O', 'P', 'C', 'A', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.71'),
(3073, 'PNNx12jmWP4ZWou', '301020103', NULL, '2011-12-15', 'O', 'D', 'B', 'D', 'O', 'O', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.33'),
(3074, 'PNNx12jmWP4ZWou', '301020104', NULL, '2012-06-15', 'B', 'A', 'C', 'C', 'B', 'O', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.17'),
(3075, 'PNNx12jmWP4ZWou', '301020105', NULL, '2012-12-15', 'D', 'P', 'A', 'B', 'A', 'B', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(3076, 'PNNx12jmWP4ZWou', '301020106', NULL, '2013-06-15', 'C', 'D', 'P', 'D', 'P', 'C', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.67'),
(3077, 'PNNx12jmWP4ZWou', '301020107', NULL, '2013-12-15', 'E', 'C', 'P', 'O', 'P', 'D', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(3078, 'PNNx12jmWP4ZWou', '301020108', 'B', '2014-06-15', 'D', 'B', 'C', 'B', 'C', 'D', '2015-06-02 13:04:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.14'),
(3079, 'BJQTfyBTmUuBrtS', '301020101', 'E', '2010-12-15', 'O', 'C', 'P', 'C', 'A', 'O', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(3080, 'BJQTfyBTmUuBrtS', '301020102', 'B', '2011-06-15', 'B', 'D', 'D', 'P', 'C', 'D', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(3081, 'BJQTfyBTmUuBrtS', '301020103', NULL, '2011-12-15', 'P', 'D', 'P', 'O', 'P', 'B', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.0'),
(3082, 'BJQTfyBTmUuBrtS', '301020104', NULL, '2012-06-15', 'C', 'E', 'A', 'P', 'B', 'C', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.67'),
(3083, 'BJQTfyBTmUuBrtS', '301020105', NULL, '2012-12-15', 'B', 'A', 'D', 'E', 'C', 'A', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(3084, 'BJQTfyBTmUuBrtS', '301020106', NULL, '2013-06-15', 'D', 'C', 'D', 'B', 'O', 'B', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(3085, 'BJQTfyBTmUuBrtS', '301020107', NULL, '2013-12-15', 'C', 'E', 'B', 'O', 'A', 'B', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(3086, 'BJQTfyBTmUuBrtS', '301020108', 'P', '2014-06-15', 'E', 'A', 'E', 'B', 'D', 'B', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.43'),
(3087, 'Y0fCWrrfqmXD2r4', '301020101', 'D', '2010-12-15', 'B', 'A', 'A', 'D', 'O', 'O', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.29'),
(3088, 'Y0fCWrrfqmXD2r4', '301020102', 'C', '2011-06-15', 'O', 'A', 'C', 'C', 'A', 'D', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.86'),
(3089, 'Y0fCWrrfqmXD2r4', '301020103', NULL, '2011-12-15', 'D', 'B', 'A', 'C', 'O', 'C', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(3090, 'Y0fCWrrfqmXD2r4', '301020104', NULL, '2012-06-15', 'D', 'O', 'A', 'P', 'D', 'P', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(3091, 'Y0fCWrrfqmXD2r4', '301020105', NULL, '2012-12-15', 'O', 'P', 'D', 'P', 'C', 'O', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(3092, 'Y0fCWrrfqmXD2r4', '301020106', NULL, '2013-06-15', 'B', 'O', 'E', 'D', 'E', 'P', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(3093, 'Y0fCWrrfqmXD2r4', '301020107', NULL, '2013-12-15', 'O', 'A', 'P', 'C', 'B', 'P', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(3094, 'Y0fCWrrfqmXD2r4', '301020108', 'O', '2014-06-15', 'B', 'P', 'E', 'P', 'A', 'D', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.57'),
(3095, '8Zdz9jWYS4kRXmj', '301020101', 'E', '2010-12-15', 'E', 'O', 'O', 'B', 'A', 'A', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(3096, '8Zdz9jWYS4kRXmj', '301020102', 'E', '2011-06-15', 'B', 'C', 'D', 'P', 'C', 'C', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.29'),
(3097, '8Zdz9jWYS4kRXmj', '301020103', NULL, '2011-12-15', 'E', 'C', 'A', 'O', 'C', 'P', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(3098, '8Zdz9jWYS4kRXmj', '301020104', NULL, '2012-06-15', 'B', 'B', 'E', 'C', 'P', 'B', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.67'),
(3099, '8Zdz9jWYS4kRXmj', '301020105', NULL, '2012-12-15', 'E', 'D', 'B', 'D', 'B', 'A', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(3100, '8Zdz9jWYS4kRXmj', '301020106', NULL, '2013-06-15', 'D', 'D', 'C', 'A', 'A', 'P', '2015-06-02 13:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(3101, '8Zdz9jWYS4kRXmj', '301020107', NULL, '2013-12-15', 'A', 'C', 'D', 'O', 'A', 'O', '2015-06-02 13:04:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.5'),
(3102, '8Zdz9jWYS4kRXmj', '301020108', 'O', '2014-06-15', 'C', 'B', 'B', 'B', 'P', 'P', '2015-06-02 13:04:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(3103, 'Uegi5nzOrOWoTYj', '301020101', 'D', '2010-12-15', 'D', 'E', 'O', 'O', 'C', 'E', '2015-06-02 13:04:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(3104, 'Uegi5nzOrOWoTYj', '301020102', 'O', '2011-06-15', 'A', 'B', 'D', 'O', 'O', 'A', '2015-06-02 13:04:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.86'),
(3105, 'Uegi5nzOrOWoTYj', '301020103', NULL, '2011-12-15', 'E', 'E', 'B', 'D', 'B', 'O', '2015-06-02 13:04:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0'),
(3106, 'Uegi5nzOrOWoTYj', '301020104', NULL, '2012-06-15', 'B', 'O', 'O', 'P', 'P', 'P', '2015-06-02 13:04:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.67'),
(3107, 'Uegi5nzOrOWoTYj', '301020105', NULL, '2012-12-15', 'E', 'B', 'O', 'E', 'D', 'P', '2015-06-02 13:04:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(3108, 'Uegi5nzOrOWoTYj', '301020106', NULL, '2013-06-15', 'C', 'B', 'C', 'O', 'P', 'C', '2015-06-02 13:04:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(3109, 'Uegi5nzOrOWoTYj', '301020107', NULL, '2013-12-15', 'P', 'B', 'O', 'P', 'O', 'A', '2015-06-02 13:04:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(3110, 'Uegi5nzOrOWoTYj', '301020108', 'O', '2014-06-15', 'E', 'O', 'D', 'D', 'A', 'E', '2015-06-02 13:04:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.29'),
(3111, 'OFL8CjfSBGRX1zB', '301020101', 'A', '2010-12-15', 'D', 'C', 'D', 'A', 'A', 'B', '2015-06-02 13:04:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.71'),
(3112, 'OFL8CjfSBGRX1zB', '301020102', 'B', '2011-06-15', 'A', 'D', 'O', 'C', 'D', 'D', '2015-06-02 13:04:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.43'),
(3113, 'OFL8CjfSBGRX1zB', '301020103', NULL, '2011-12-15', 'E', 'E', 'A', 'C', 'E', 'B', '2015-06-02 13:04:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(3114, 'OFL8CjfSBGRX1zB', '301020104', NULL, '2012-06-15', 'P', 'D', 'O', 'C', 'E', 'C', '2015-06-02 13:04:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.5'),
(3115, 'OFL8CjfSBGRX1zB', '301020105', NULL, '2012-12-15', 'A', 'C', 'B', 'E', 'O', 'D', '2015-06-02 13:04:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(3116, 'OFL8CjfSBGRX1zB', '301020106', NULL, '2013-06-15', 'O', 'E', 'E', 'C', 'O', 'C', '2015-06-02 13:04:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(3117, 'OFL8CjfSBGRX1zB', '301020107', NULL, '2013-12-15', 'C', 'O', 'A', 'P', 'D', 'P', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.67'),
(3118, 'OFL8CjfSBGRX1zB', '301020108', 'B', '2014-06-15', 'O', 'P', 'B', 'E', 'C', 'A', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.29'),
(3119, 'TdNW4Ou0fzkNTUS', '301020101', 'C', '2010-12-15', 'C', 'E', 'A', 'A', 'O', 'P', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.29'),
(3120, 'TdNW4Ou0fzkNTUS', '301020102', 'P', '2011-06-15', 'B', 'D', 'B', 'C', 'P', 'O', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.71'),
(3121, 'TdNW4Ou0fzkNTUS', '301020103', NULL, '2011-12-15', 'P', 'O', 'O', 'P', 'C', 'B', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(3122, 'TdNW4Ou0fzkNTUS', '301020104', NULL, '2012-06-15', 'E', 'P', 'P', 'P', 'A', 'E', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.17'),
(3123, 'TdNW4Ou0fzkNTUS', '301020105', NULL, '2012-12-15', 'B', 'D', 'D', 'A', 'D', 'A', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.33'),
(3124, 'TdNW4Ou0fzkNTUS', '301020106', NULL, '2013-06-15', 'A', 'O', 'C', 'B', 'P', 'E', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(3125, 'TdNW4Ou0fzkNTUS', '301020107', NULL, '2013-12-15', 'O', 'B', 'P', 'O', 'O', 'E', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.83'),
(3126, 'TdNW4Ou0fzkNTUS', '301020108', 'E', '2014-06-15', 'P', 'E', 'O', 'A', 'E', 'B', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.57'),
(3127, 'enrJ9Qg6GAmmU9q', '301020101', 'A', '2010-12-15', 'O', 'P', 'O', 'B', 'P', 'B', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.57'),
(3128, 'enrJ9Qg6GAmmU9q', '301020102', 'D', '2011-06-15', 'B', 'E', 'A', 'A', 'D', 'C', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.14'),
(3129, 'enrJ9Qg6GAmmU9q', '301020103', NULL, '2011-12-15', 'P', 'E', 'P', 'D', 'E', 'A', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.5'),
(3130, 'enrJ9Qg6GAmmU9q', '301020104', NULL, '2012-06-15', 'C', 'C', 'D', 'B', 'C', 'E', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.67'),
(3131, 'enrJ9Qg6GAmmU9q', '301020105', NULL, '2012-12-15', 'D', 'D', 'E', 'P', 'A', 'P', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '5.67'),
(3132, 'enrJ9Qg6GAmmU9q', '301020106', NULL, '2013-06-15', 'P', 'D', 'B', 'B', 'B', 'P', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.33'),
(3133, 'enrJ9Qg6GAmmU9q', '301020107', NULL, '2013-12-15', 'C', 'C', 'C', 'B', 'E', 'C', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(3134, 'enrJ9Qg6GAmmU9q', '301020108', 'D', '2014-06-15', 'O', 'O', 'B', 'O', 'P', 'D', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.71'),
(3135, 'sj1wotjcBZAvM7n', '301020101', 'E', '2010-12-15', 'C', 'B', 'B', 'A', 'O', 'O', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.14'),
(3136, 'sj1wotjcBZAvM7n', '301020102', 'B', '2011-06-15', 'P', 'C', 'E', 'E', 'C', 'C', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.14'),
(3137, 'sj1wotjcBZAvM7n', '301020103', NULL, '2011-12-15', 'C', 'P', 'O', 'O', 'B', 'A', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '8.0'),
(3138, 'sj1wotjcBZAvM7n', '301020104', NULL, '2012-06-15', 'E', 'O', 'A', 'C', 'C', 'C', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.5'),
(3139, 'sj1wotjcBZAvM7n', '301020105', NULL, '2012-12-15', 'E', 'B', 'B', 'E', 'B', 'D', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.67'),
(3140, 'sj1wotjcBZAvM7n', '301020106', NULL, '2013-06-15', 'C', 'B', 'A', 'C', 'E', 'C', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.17'),
(3141, 'sj1wotjcBZAvM7n', '301020107', NULL, '2013-12-15', 'E', 'D', 'B', 'B', 'A', 'E', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '6.83'),
(3142, 'sj1wotjcBZAvM7n', '301020108', 'O', '2014-06-15', 'C', 'E', 'D', 'E', 'B', 'B', '2015-06-02 13:04:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '7.0');

-- --------------------------------------------------------

--
-- Table structure for table `user_analytic_stat`
--

CREATE TABLE IF NOT EXISTS `user_analytic_stat` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `record_update_stat` varchar(50) NOT NULL,
  `record_update_info` varchar(5000) NOT NULL,
  `Completed_Analytics` varchar(5000) DEFAULT '0',
  `Partial_Analytics` varchar(5000) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=304 ;

--
-- Dumping data for table `user_analytic_stat`
--

INSERT INTO `user_analytic_stat` (`ID`, `user_id`, `record_update_stat`, `record_update_info`, `Completed_Analytics`, `Partial_Analytics`) VALUES
(206, 'tKJ2e3LX1TYLdKr', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/tKJ2e3LX1TYLdKr.json', '../UserJson/Partial/tKJ2e3LX1TYLdKrp.json'),
(207, 'gNfowLizedMDVdV', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/gNfowLizedMDVdV.json', '../UserJson/Partial/gNfowLizedMDVdVp.json'),
(208, 'mHBL5YjaLdZTIKC', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/mHBL5YjaLdZTIKC.json', '../UserJson/Partial/mHBL5YjaLdZTIKCp.json'),
(209, 'zxkiX8ehTMDXHEZ', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/zxkiX8ehTMDXHEZ.json', '../UserJson/Partial/zxkiX8ehTMDXHEZp.json'),
(210, 'cWTbJzATO6GsMXD', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/cWTbJzATO6GsMXD.json', '../UserJson/Partial/cWTbJzATO6GsMXDp.json'),
(211, 'SgXcUxW3MtDAnje', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/SgXcUxW3MtDAnje.json', '../UserJson/Partial/SgXcUxW3MtDAnjep.json'),
(212, 'QJlf4Q4Pbhv9kJZ', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/QJlf4Q4Pbhv9kJZ.json', '../UserJson/Partial/QJlf4Q4Pbhv9kJZp.json'),
(213, 'weCfCjhy34j9lRd', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/weCfCjhy34j9lRd.json', '../UserJson/Partial/weCfCjhy34j9lRdp.json'),
(214, 'firfDHCR3A6uM4G', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/firfDHCR3A6uM4G.json', '../UserJson/Partial/firfDHCR3A6uM4Gp.json'),
(215, '70TQoM72Mu1hUDg', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/70TQoM72Mu1hUDg.json', '../UserJson/Partial/70TQoM72Mu1hUDgp.json'),
(216, 'PrU3doNGvSW3gyF', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/PrU3doNGvSW3gyF.json', '../UserJson/Partial/PrU3doNGvSW3gyFp.json'),
(217, 'EZIukEbSg4fHNNp', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/EZIukEbSg4fHNNp.json', '../UserJson/Partial/EZIukEbSg4fHNNpp.json'),
(218, 'JIJvVWsGbLVgQmI', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/JIJvVWsGbLVgQmI.json', '../UserJson/Partial/JIJvVWsGbLVgQmIp.json'),
(219, 'dzZnJwdTb2Y6YDv', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/dzZnJwdTb2Y6YDv.json', '../UserJson/Partial/dzZnJwdTb2Y6YDvp.json'),
(220, 'YsUCCu0SGk8kWHK', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/YsUCCu0SGk8kWHK.json', '../UserJson/Partial/YsUCCu0SGk8kWHKp.json'),
(221, 's44aTzZmsTufA4r', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/s44aTzZmsTufA4r.json', '../UserJson/Partial/s44aTzZmsTufA4rp.json'),
(222, 'Lc4YVNyYPVzBCQc', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/Lc4YVNyYPVzBCQc.json', '../UserJson/Partial/Lc4YVNyYPVzBCQcp.json'),
(223, 'XWOgkQGrnklHwOC', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/XWOgkQGrnklHwOC.json', '../UserJson/Partial/XWOgkQGrnklHwOCp.json'),
(224, 'QNIFhwJvu6yXTvE', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/QNIFhwJvu6yXTvE.json', '../UserJson/Partial/QNIFhwJvu6yXTvEp.json'),
(225, 'qvkA0Z2J0tntzcB', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/qvkA0Z2J0tntzcB.json', '../UserJson/Partial/qvkA0Z2J0tntzcBp.json'),
(226, '3adgbTksZ7PboUG', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/3adgbTksZ7PboUG.json', '../UserJson/Partial/3adgbTksZ7PboUGp.json'),
(227, 'PYV85yOayIPU2Z2', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/PYV85yOayIPU2Z2.json', '../UserJson/Partial/PYV85yOayIPU2Z2p.json'),
(228, 'zYn7dOXkYhMIDSh', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/zYn7dOXkYhMIDSh.json', '../UserJson/Partial/zYn7dOXkYhMIDShp.json'),
(229, 'L3FC9qA2wQ4a0nb', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/L3FC9qA2wQ4a0nb.json', '../UserJson/Partial/L3FC9qA2wQ4a0nbp.json'),
(230, 'tOZ2RfgCfdT1Rzr', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/tOZ2RfgCfdT1Rzr.json', '../UserJson/Partial/tOZ2RfgCfdT1Rzrp.json'),
(231, 'P7sZGypIDt4J7BG', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/P7sZGypIDt4J7BG.json', '../UserJson/Partial/P7sZGypIDt4J7BGp.json'),
(232, 'OJLbKeqYI9TGZQE', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/OJLbKeqYI9TGZQE.json', '../UserJson/Partial/OJLbKeqYI9TGZQEp.json'),
(233, '8aCkPiwsbhMOrxs', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/8aCkPiwsbhMOrxs.json', '../UserJson/Partial/8aCkPiwsbhMOrxsp.json'),
(234, '1PW6HizwTOAKoiG', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/1PW6HizwTOAKoiG.json', '../UserJson/Partial/1PW6HizwTOAKoiGp.json'),
(235, 'xw6yYyBbYEsrr2H', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/xw6yYyBbYEsrr2H.json', '../UserJson/Partial/xw6yYyBbYEsrr2Hp.json'),
(236, 'b8y0Q944qhpCOi9', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/b8y0Q944qhpCOi9.json', '../UserJson/Partial/b8y0Q944qhpCOi9p.json'),
(237, 'WiGGHDZRSjQ3JnF', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/WiGGHDZRSjQ3JnF.json', '../UserJson/Partial/WiGGHDZRSjQ3JnFp.json'),
(238, 'tP6vGmY5MCOfRI2', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/tP6vGmY5MCOfRI2.json', '../UserJson/Partial/tP6vGmY5MCOfRI2p.json'),
(239, '00oz6MzmaBOSHJu', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/00oz6MzmaBOSHJu.json', '../UserJson/Partial/00oz6MzmaBOSHJup.json'),
(240, 'srQwVdTGaAm0QSX', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/srQwVdTGaAm0QSX.json', '../UserJson/Partial/srQwVdTGaAm0QSXp.json'),
(241, 'KfWavSnIOUd6m1W', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/KfWavSnIOUd6m1W.json', '../UserJson/Partial/KfWavSnIOUd6m1Wp.json'),
(242, '5bnEKjwpMp1K8zQ', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/5bnEKjwpMp1K8zQ.json', '../UserJson/Partial/5bnEKjwpMp1K8zQp.json'),
(243, 'G7m4ZLstBA9uEqC', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/G7m4ZLstBA9uEqC.json', '../UserJson/Partial/G7m4ZLstBA9uEqCp.json'),
(244, '3nbECfETD1q9y9r', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/3nbECfETD1q9y9r.json', '../UserJson/Partial/3nbECfETD1q9y9rp.json'),
(245, 'XzvRLOzxn1XNN7a', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/XzvRLOzxn1XNN7a.json', '../UserJson/Partial/XzvRLOzxn1XNN7ap.json'),
(246, 'yTcQQFqc16RJNLQ', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/yTcQQFqc16RJNLQ.json', '../UserJson/Partial/yTcQQFqc16RJNLQp.json'),
(247, 'YWRtVNnekWev6b1', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/YWRtVNnekWev6b1.json', '../UserJson/Partial/YWRtVNnekWev6b1p.json'),
(248, 'hqfWkBJwMeirK55', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/hqfWkBJwMeirK55.json', '../UserJson/Partial/hqfWkBJwMeirK55p.json'),
(249, 'V1cymBmlsDDTVJ8', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/V1cymBmlsDDTVJ8.json', '../UserJson/Partial/V1cymBmlsDDTVJ8p.json'),
(250, 'Ftq807qCBQ8I4Gc', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/Ftq807qCBQ8I4Gc.json', '../UserJson/Partial/Ftq807qCBQ8I4Gcp.json'),
(251, 'lCIVAW5564bjIi4', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/lCIVAW5564bjIi4.json', '../UserJson/Partial/lCIVAW5564bjIi4p.json'),
(252, 'RgAZUBf2rFgl3dX', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/RgAZUBf2rFgl3dX.json', '../UserJson/Partial/RgAZUBf2rFgl3dXp.json'),
(253, '8rpZePrCBOZM4z1', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/8rpZePrCBOZM4z1.json', '../UserJson/Partial/8rpZePrCBOZM4z1p.json'),
(254, 'eeoAdxfZUPGUGPl', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/eeoAdxfZUPGUGPl.json', '../UserJson/Partial/eeoAdxfZUPGUGPlp.json'),
(255, '03KsO9jZy3AOf25', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/03KsO9jZy3AOf25.json', '../UserJson/Partial/03KsO9jZy3AOf25p.json'),
(256, 's0JvKlDYhu0vpxE', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/s0JvKlDYhu0vpxE.json', '../UserJson/Partial/s0JvKlDYhu0vpxEp.json'),
(257, '61L4fsEYpv5iBBp', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/61L4fsEYpv5iBBp.json', '../UserJson/Partial/61L4fsEYpv5iBBpp.json'),
(258, 'B66eWbfsgTRvgYb', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/B66eWbfsgTRvgYb.json', '../UserJson/Partial/B66eWbfsgTRvgYbp.json'),
(259, 'IdTZ2Lo34e1nxIh', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/IdTZ2Lo34e1nxIh.json', '../UserJson/Partial/IdTZ2Lo34e1nxIhp.json'),
(260, 'GltHTQT7z2J18Tu', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/GltHTQT7z2J18Tu.json', '../UserJson/Partial/GltHTQT7z2J18Tup.json'),
(261, '373X8zlAEQxLAdG', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/373X8zlAEQxLAdG.json', '../UserJson/Partial/373X8zlAEQxLAdGp.json'),
(262, 'PqRNUEGQRZODcpv', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/PqRNUEGQRZODcpv.json', '../UserJson/Partial/PqRNUEGQRZODcpvp.json'),
(263, '4p9vUKDkGYw86zY', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/4p9vUKDkGYw86zY.json', '../UserJson/Partial/4p9vUKDkGYw86zYp.json'),
(264, '5B9E0q5o5iAH8bt', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/5B9E0q5o5iAH8bt.json', '../UserJson/Partial/5B9E0q5o5iAH8btp.json'),
(265, 'pQOG244nkthvXDu', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/pQOG244nkthvXDu.json', '../UserJson/Partial/pQOG244nkthvXDup.json'),
(266, 'EF5TAADs5v11Glu', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/EF5TAADs5v11Glu.json', '../UserJson/Partial/EF5TAADs5v11Glup.json'),
(267, 'aJiQnT70WZxFDRx', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/aJiQnT70WZxFDRx.json', '../UserJson/Partial/aJiQnT70WZxFDRxp.json'),
(268, 'Afl8mNHf3Jb0m8T', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/Afl8mNHf3Jb0m8T.json', '../UserJson/Partial/Afl8mNHf3Jb0m8Tp.json'),
(269, '0kYyTwNwbzqQeQc', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/0kYyTwNwbzqQeQc.json', '../UserJson/Partial/0kYyTwNwbzqQeQcp.json'),
(270, 'D3y9RNs3JVYavHe', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/D3y9RNs3JVYavHe.json', '../UserJson/Partial/D3y9RNs3JVYavHep.json'),
(271, 'pzI3XHmWU8jBY4t', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/pzI3XHmWU8jBY4t.json', '../UserJson/Partial/pzI3XHmWU8jBY4tp.json'),
(272, 'iS1vP01SRy9Riwu', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/iS1vP01SRy9Riwu.json', '../UserJson/Partial/iS1vP01SRy9Riwup.json'),
(273, 'KHboKCumrL1uxsG', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/KHboKCumrL1uxsG.json', '../UserJson/Partial/KHboKCumrL1uxsGp.json'),
(274, 'MHj85O70vfcURRC', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/MHj85O70vfcURRC.json', '../UserJson/Partial/MHj85O70vfcURRCp.json'),
(275, 'Qnpi3SqQMp2Vkx6', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/Qnpi3SqQMp2Vkx6.json', '../UserJson/Partial/Qnpi3SqQMp2Vkx6p.json'),
(276, 'PKPgb5wUayRzIRX', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/PKPgb5wUayRzIRX.json', '../UserJson/Partial/PKPgb5wUayRzIRXp.json'),
(277, 'WjtfQ3rbsIqHwfe', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/WjtfQ3rbsIqHwfe.json', '../UserJson/Partial/WjtfQ3rbsIqHwfep.json'),
(278, 'vpbD9GR3iQWzofC', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/vpbD9GR3iQWzofC.json', '../UserJson/Partial/vpbD9GR3iQWzofCp.json'),
(279, '09uYqoScl9zAvyf', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/09uYqoScl9zAvyf.json', '../UserJson/Partial/09uYqoScl9zAvyfp.json'),
(280, 'qKwYrVHghdwCiii', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/qKwYrVHghdwCiii.json', '../UserJson/Partial/qKwYrVHghdwCiiip.json'),
(281, 'KhE3jYpeDgOy7zx', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/KhE3jYpeDgOy7zx.json', '../UserJson/Partial/KhE3jYpeDgOy7zxp.json'),
(282, 'PdRbKHBDhu9b48M', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/PdRbKHBDhu9b48M.json', '../UserJson/Partial/PdRbKHBDhu9b48Mp.json'),
(283, 'RGorsFjffkFoXt8', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/RGorsFjffkFoXt8.json', '../UserJson/Partial/RGorsFjffkFoXt8p.json'),
(284, 'adV2ppUNVqTdFLj', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/adV2ppUNVqTdFLj.json', '../UserJson/Partial/adV2ppUNVqTdFLjp.json'),
(285, '4PhBVeOwADvdDom', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/4PhBVeOwADvdDom.json', '../UserJson/Partial/4PhBVeOwADvdDomp.json'),
(286, 'PboNw0J6c7siDxE', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/PboNw0J6c7siDxE.json', '../UserJson/Partial/PboNw0J6c7siDxEp.json'),
(287, 'bG6yaIPhQwsD6jm', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/bG6yaIPhQwsD6jm.json', '../UserJson/Partial/bG6yaIPhQwsD6jmp.json'),
(288, 'm2O43FLvIaWEJms', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/m2O43FLvIaWEJms.json', '../UserJson/Partial/m2O43FLvIaWEJmsp.json'),
(289, 'J52QjdW9DUs3lwh', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/J52QjdW9DUs3lwh.json', '../UserJson/Partial/J52QjdW9DUs3lwhp.json'),
(290, 'Vr5rTwEUl06xX0e', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/Vr5rTwEUl06xX0e.json', '../UserJson/Partial/Vr5rTwEUl06xX0ep.json'),
(291, '3x6iVKREDArVBbv', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/3x6iVKREDArVBbv.json', '../UserJson/Partial/3x6iVKREDArVBbvp.json'),
(292, 'yvNYbpwup3PiR4e', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/yvNYbpwup3PiR4e.json', '../UserJson/Partial/yvNYbpwup3PiR4ep.json'),
(293, 'BBwxVSUs5O3HnFQ', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/BBwxVSUs5O3HnFQ.json', '../UserJson/Partial/BBwxVSUs5O3HnFQp.json'),
(294, 'OHtERc3qiWAhExt', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/OHtERc3qiWAhExt.json', '../UserJson/Partial/OHtERc3qiWAhExtp.json'),
(295, 'PNNx12jmWP4ZWou', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/PNNx12jmWP4ZWou.json', '../UserJson/Partial/PNNx12jmWP4ZWoup.json'),
(296, 'BJQTfyBTmUuBrtS', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/BJQTfyBTmUuBrtS.json', '../UserJson/Partial/BJQTfyBTmUuBrtSp.json'),
(297, 'Y0fCWrrfqmXD2r4', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/Y0fCWrrfqmXD2r4.json', '../UserJson/Partial/Y0fCWrrfqmXD2r4p.json'),
(298, '8Zdz9jWYS4kRXmj', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/8Zdz9jWYS4kRXmj.json', '../UserJson/Partial/8Zdz9jWYS4kRXmjp.json'),
(299, 'Uegi5nzOrOWoTYj', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/Uegi5nzOrOWoTYj.json', '../UserJson/Partial/Uegi5nzOrOWoTYjp.json'),
(300, 'OFL8CjfSBGRX1zB', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/OFL8CjfSBGRX1zB.json', '../UserJson/Partial/OFL8CjfSBGRX1zBp.json'),
(301, 'TdNW4Ou0fzkNTUS', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/TdNW4Ou0fzkNTUS.json', '../UserJson/Partial/TdNW4Ou0fzkNTUSp.json'),
(302, 'enrJ9Qg6GAmmU9q', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/enrJ9Qg6GAmmU9q.json', '../UserJson/Partial/enrJ9Qg6GAmmU9qp.json'),
(303, 'sj1wotjcBZAvM7n', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/sj1wotjcBZAvM7n.json', '../UserJson/Partial/sj1wotjcBZAvM7np.json');

-- --------------------------------------------------------

--
-- Table structure for table `user_filled_form`
--

CREATE TABLE IF NOT EXISTS `user_filled_form` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(255) NOT NULL,
  `form_filled` varchar(3000) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=502 ;

--
-- Dumping data for table `user_filled_form`
--

INSERT INTO `user_filled_form` (`id`, `user_code`, `form_filled`, `last_modified`) VALUES
(404, 'tKJ2e3LX1TYLdKr', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:49'),
(405, 'gNfowLizedMDVdV', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:49'),
(406, 'mHBL5YjaLdZTIKC', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:49'),
(407, 'zxkiX8ehTMDXHEZ', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:50'),
(408, 'cWTbJzATO6GsMXD', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:50'),
(409, 'SgXcUxW3MtDAnje', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:51'),
(410, 'QJlf4Q4Pbhv9kJZ', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:51'),
(411, 'weCfCjhy34j9lRd', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:51'),
(412, 'firfDHCR3A6uM4G', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:51'),
(413, '70TQoM72Mu1hUDg', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:52'),
(414, 'PrU3doNGvSW3gyF', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:52'),
(415, 'EZIukEbSg4fHNNp', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:52'),
(416, 'JIJvVWsGbLVgQmI', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:53'),
(417, 'dzZnJwdTb2Y6YDv', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:53'),
(418, 'YsUCCu0SGk8kWHK', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:53'),
(419, 's44aTzZmsTufA4r', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:54'),
(420, 'Lc4YVNyYPVzBCQc', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:54'),
(421, 'XWOgkQGrnklHwOC', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:54'),
(422, 'QNIFhwJvu6yXTvE', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:55'),
(423, 'qvkA0Z2J0tntzcB', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:55'),
(424, '3adgbTksZ7PboUG', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:55'),
(425, 'PYV85yOayIPU2Z2', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:56'),
(426, 'zYn7dOXkYhMIDSh', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:56'),
(427, 'L3FC9qA2wQ4a0nb', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:56'),
(428, 'tOZ2RfgCfdT1Rzr', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:57'),
(429, 'P7sZGypIDt4J7BG', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:57'),
(430, 'OJLbKeqYI9TGZQE', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:57'),
(431, '8aCkPiwsbhMOrxs', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:58'),
(432, '1PW6HizwTOAKoiG', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:58'),
(433, 'xw6yYyBbYEsrr2H', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:58'),
(434, 'b8y0Q944qhpCOi9', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:59'),
(435, 'WiGGHDZRSjQ3JnF', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:03:59'),
(436, 'tP6vGmY5MCOfRI2', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:04:00'),
(437, '00oz6MzmaBOSHJu', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:04:00'),
(438, 'srQwVdTGaAm0QSX', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:04:00'),
(439, 'KfWavSnIOUd6m1W', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:04:01'),
(440, '5bnEKjwpMp1K8zQ', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:04:01'),
(441, 'G7m4ZLstBA9uEqC', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:04:01'),
(442, '3nbECfETD1q9y9r', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:04:01'),
(443, 'XzvRLOzxn1XNN7a', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:04:02'),
(444, 'yTcQQFqc16RJNLQ', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:04:02'),
(445, 'YWRtVNnekWev6b1', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:04:02'),
(446, 'hqfWkBJwMeirK55', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:04:03'),
(447, 'V1cymBmlsDDTVJ8', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:04:03'),
(448, 'Ftq807qCBQ8I4Gc', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:04:04'),
(449, 'lCIVAW5564bjIi4', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:04:04'),
(450, 'RgAZUBf2rFgl3dX', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:04:04'),
(451, '8rpZePrCBOZM4z1', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:04:04');
INSERT INTO `user_filled_form` (`id`, `user_code`, `form_filled`, `last_modified`) VALUES
(452, 'eeoAdxfZUPGUGPl', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301010108"}]}', '2015-06-02 13:04:05'),
(453, '03KsO9jZy3AOf25', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:05'),
(454, 's0JvKlDYhu0vpxE', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:05'),
(455, '61L4fsEYpv5iBBp', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:06'),
(456, 'B66eWbfsgTRvgYb', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:06'),
(457, 'IdTZ2Lo34e1nxIh', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:07'),
(458, 'GltHTQT7z2J18Tu', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:07'),
(459, '373X8zlAEQxLAdG', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:07'),
(460, 'PqRNUEGQRZODcpv', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:08'),
(461, '4p9vUKDkGYw86zY', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:08'),
(462, '5B9E0q5o5iAH8bt', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:08'),
(463, 'pQOG244nkthvXDu', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:08'),
(464, 'EF5TAADs5v11Glu', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:09'),
(465, 'aJiQnT70WZxFDRx', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:09'),
(466, 'Afl8mNHf3Jb0m8T', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:10'),
(467, '0kYyTwNwbzqQeQc', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:10'),
(468, 'D3y9RNs3JVYavHe', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:10'),
(469, 'pzI3XHmWU8jBY4t', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:11'),
(470, 'iS1vP01SRy9Riwu', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:11'),
(471, 'KHboKCumrL1uxsG', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:11'),
(472, 'MHj85O70vfcURRC', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:12'),
(473, 'Qnpi3SqQMp2Vkx6', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:12'),
(474, 'PKPgb5wUayRzIRX', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:12'),
(475, 'WjtfQ3rbsIqHwfe', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:13'),
(476, 'vpbD9GR3iQWzofC', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:13'),
(477, '09uYqoScl9zAvyf', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:13'),
(478, 'qKwYrVHghdwCiii', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:14'),
(479, 'KhE3jYpeDgOy7zx', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:14'),
(480, 'PdRbKHBDhu9b48M', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:14'),
(481, 'RGorsFjffkFoXt8', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:15'),
(482, 'adV2ppUNVqTdFLj', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:15'),
(483, '4PhBVeOwADvdDom', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:15'),
(484, 'PboNw0J6c7siDxE', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:16'),
(485, 'bG6yaIPhQwsD6jm', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:16'),
(486, 'm2O43FLvIaWEJms', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:16'),
(487, 'J52QjdW9DUs3lwh', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:16'),
(488, 'Vr5rTwEUl06xX0e', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:17'),
(489, '3x6iVKREDArVBbv', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:17'),
(490, 'yvNYbpwup3PiR4e', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:17'),
(491, 'BBwxVSUs5O3HnFQ', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:18'),
(492, 'OHtERc3qiWAhExt', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:18'),
(493, 'PNNx12jmWP4ZWou', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:19'),
(494, 'BJQTfyBTmUuBrtS', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:19'),
(495, 'Y0fCWrrfqmXD2r4', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:19'),
(496, '8Zdz9jWYS4kRXmj', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:20'),
(497, 'Uegi5nzOrOWoTYj', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:20'),
(498, 'OFL8CjfSBGRX1zB', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:21'),
(499, 'TdNW4Ou0fzkNTUS', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:21');
INSERT INTO `user_filled_form` (`id`, `user_code`, `form_filled`, `last_modified`) VALUES
(500, 'enrJ9Qg6GAmmU9q', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:21'),
(501, 'sj1wotjcBZAvM7n', '{"Comp_Exam": [], "Parameter": {"Total_Comp_Exam_Field": 0, "Total_Simple_Exam_Field": 8}, "Simple_Exam": [{"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020101"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020102"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020103"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020104"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020105"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020106"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020107"}, {"form_type": "undergraduate", "Attempt": 0, "Table_name": "undergraduate_record", "Form_Code": "301020108"}]}', '2015-06-02 13:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(500) NOT NULL,
  `primary` varchar(1000) NOT NULL,
  `secondary` varchar(1000) DEFAULT NULL,
  `undergraduate` varchar(1000) DEFAULT NULL,
  `postgraduation` varchar(1000) DEFAULT NULL,
  `doctorate` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_code`, `primary`, `secondary`, `undergraduate`, `postgraduation`, `doctorate`) VALUES
(1, 'krT3QxCML5fGPDb', '../forms/data/primary/primary.json', '../forms/data/secondary/secondary.json', '../forms/data/undergraduate/undergraduate.json', '../forms/data/postgraduate/postgraduate.json', '../forms/data/doctorate/doctorate.json');

-- --------------------------------------------------------

--
-- Table structure for table `user_record`
--

CREATE TABLE IF NOT EXISTS `user_record` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
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
  `total` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=94 ;

--
-- Dumping data for table `user_record`
--

INSERT INTO `user_record` (`id`, `user_code`, `form_code`, `data_field_8`, `data_field_1`, `data_field_2`, `data_field_3`, `data_field_4`, `data_field_5`, `data_field_6`, `data_field_7`, `last_modified`, `data_field_9`, `data_field_10`, `data_field_11`, `data_field_12`, `attempt`, `total`) VALUES
(38, 'krT3QxCML5fGPDb', '301010101', 'f', '2010-12-15', 'e', 'o', 'o', 'o', 'f', 'f', '2015-06-01 18:27:18', NULL, NULL, NULL, NULL, 0, '5.74'),
(39, 'krT3QxCML5fGPDb', '301010102', 'a', '2011-06-08', 'e', 'e', 'e', 'b', 'b', 'o', '2015-05-28 07:44:28', NULL, NULL, NULL, NULL, 0, '6.96'),
(41, 'krT3QxCML5fGPDb', '301010103', NULL, '2011-12-15', 'd', 'c', 'o', 'b', 'o', 'a', '2015-05-18 12:13:34', NULL, NULL, NULL, NULL, 0, '8.25'),
(44, 'krT3QxCML5fGPDb', '301010104', NULL, '2015-05-06', 'o', 'o', 'o', 'a', 'a', 'b', '2015-05-19 08:19:43', NULL, NULL, NULL, NULL, 0, '9.32'),
(46, 'krT3QxCML5fGPDb', '301010105', 'd', '2015-05-12', 'a', 'a', 'a', 'd', 'd', 'd', '2015-05-19 18:25:03', 'd', 'd', 'd', 'd', 0, '7.20'),
(48, 'krT3QxCML5fGPDb', '301010106', 'd', '2015-05-05', 'a', 'a', 'd', 'd', 'd', 'd', '2015-05-19 18:23:12', 'd', 'd', 'd', NULL, 0, '6.96'),
(51, '6CzfTcQwIW8M42l', '301020101', 'c', '2011-06-15', 'a', 'a', 'a', 'b', 'e', 'c', '2015-05-26 06:57:19', NULL, NULL, NULL, NULL, 0, '7.74'),
(52, '6CzfTcQwIW8M42l', '301020102', 'b', '2011-12-15', 'b', 'b', 'b', 'b', 'b', 'b', '2015-05-19 09:43:14', NULL, NULL, NULL, NULL, 0, '8.00'),
(53, '6CzfTcQwIW8M42l', '301020103', NULL, '2013-06-15', 'c', 'c', 'c', 'a', 'a', 'a', '2015-05-19 09:49:19', NULL, NULL, NULL, NULL, 0, '7.93'),
(54, '6CzfTcQwIW8M42l', '301020104', NULL, '2013-12-15', 'o', 'c', 'd', 'e', 'd', 'o', '2015-05-19 09:50:02', NULL, NULL, NULL, NULL, 0, '7.29'),
(55, '6CzfTcQwIW8M42l', '301020105', NULL, '2015-02-15', 'a', 'b', 'b', 'b', 'a', 'a', '2015-05-19 09:50:35', NULL, NULL, NULL, NULL, 0, '8.38'),
(56, '6CzfTcQwIW8M42l', '301020106', NULL, '2013-12-15', 'c', 'd', 'd', 'd', 'd', 'd', '2015-05-19 09:51:11', NULL, NULL, NULL, NULL, 0, '6.21'),
(60, 'krT3QxCML5fGPDb', '301010107', 'd', '2013-12-15', 'a', 'b', 'c', 'c', 'c', 'd', '2015-05-19 19:08:22', 'o', 'o', 'c', 'c', 0, '7.62'),
(61, '6CzfTcQwIW8M42l', '301020107', NULL, '2015-05-12', 'a', 'b', 'b', 'c', 'c', 'c', '2015-05-19 19:13:50', NULL, NULL, NULL, NULL, 0, '7.80'),
(62, 'V6ZxzM2fR10gnqG', '301010101', 'a', '2010-12-15', 'e', 'e', 'e', 'a', 'b', 'd', '2015-05-28 07:45:16', NULL, NULL, NULL, NULL, 0, '6.81'),
(63, 'V6ZxzM2fR10gnqG', '301010102', 'a', '2011-06-15', 'b', 'b', 'c', 'd', 'd', 'a', '2015-05-26 05:00:58', NULL, NULL, NULL, NULL, 0, '7.31'),
(64, 'V6ZxzM2fR10gnqG', '301010103', NULL, '2012-12-15', 'a', 'a', 'd', 'd', 'd', 'd', '2015-05-26 05:01:21', NULL, NULL, NULL, NULL, 0, '7.07'),
(65, 'V6ZxzM2fR10gnqG', '301010104', NULL, '2012-06-15', 'd', 'e', 'o', 'a', 'o', 'a', '2015-05-26 05:01:50', NULL, NULL, NULL, NULL, 0, '8.07'),
(66, 'V6ZxzM2fR10gnqG', '301010105', 'd', '2012-12-15', 'a', 'a', 'b', 'c', 'd', 'a', '2015-05-26 05:02:31', 'c', 'd', 'a', 'a', 0, '8.03'),
(67, 'V6ZxzM2fR10gnqG', '301010106', 'd', '2013-06-15', 'a', 'a', 'e', 'd', 'd', 'd', '2015-05-26 05:03:02', 'd', 'd', 'd', NULL, 0, '6.80'),
(68, 'V6ZxzM2fR10gnqG', '301010107', 'a', '2013-12-15', 'd', 'd', 'e', 'a', 'a', 'd', '2015-05-26 05:03:28', 'd', 'a', 'a', 'e', 0, '7.08'),
(69, 'V6ZxzM2fR10gnqG', '301010108', 'e', '2014-06-15', 'o', 'a', 'a', 'o', 'e', 'e', '2015-05-26 05:03:56', 'e', 'e', NULL, NULL, 0, '7.77'),
(70, 'SGlajBVJXEQkfFP', '301010101', 'p', '2010-12-15', 'a', 'b', 'd', 'd', 'a', 'o', '2015-05-26 05:07:03', NULL, NULL, NULL, NULL, 0, '7.52'),
(71, 'SGlajBVJXEQkfFP', '301010102', 'p', '2011-06-15', 'a', 'a', 'o', 'o', 'a', 'd', '2015-05-26 05:07:56', NULL, NULL, NULL, NULL, 0, '8.61'),
(72, 'SGlajBVJXEQkfFP', '301010103', NULL, '2011-12-15', 'p', 'p', 'p', 'a', 'a', 'a', '2015-05-26 05:08:18', NULL, NULL, NULL, NULL, 0, '6.32'),
(73, 'SGlajBVJXEQkfFP', '301010104', NULL, '2012-06-15', 'a', 'a', 'd', 'd', 'd', 'd', '2015-05-26 05:08:58', NULL, NULL, NULL, NULL, 0, '7.07'),
(74, 'SGlajBVJXEQkfFP', '301010105', 'a', '2012-12-15', 'd', 'd', 'd', 'd', 'd', 'd', '2015-05-26 05:10:25', 'd', 'd', 'd', 'd', 0, '6.10'),
(75, 'SGlajBVJXEQkfFP', '301010106', 'p', '2013-06-15', 'e', 'o', 'o', 'p', 'a', 'o', '2015-05-26 05:11:21', 'a', 'a', 'a', NULL, 0, '7.72'),
(76, 'SGlajBVJXEQkfFP', '301010107', 'e', '2013-12-15', 'a', 'a', 'e', 'e', 'e', 'e', '2015-05-26 05:12:08', 'e', 'e', 'a', 'p', 0, '6.35'),
(77, 'SGlajBVJXEQkfFP', '301010108', 'e', '2014-06-15', 'p', 'a', 'p', 'p', 'p', 'e', '2015-05-26 05:12:39', 'e', 'a', NULL, NULL, 0, '6.04'),
(78, 'n5tuiU03KMlWCxN', '301010101', 'a', '2010-12-15', 'a', 'o', 'o', 'a', 'a', 'a', '2015-05-28 07:27:46', NULL, NULL, NULL, NULL, 0, '9.26'),
(79, 'n5tuiU03KMlWCxN', '301010102', 'a', '2011-06-15', 'b', 'b', 'b', 'a', 'c', 'b', '2015-05-28 07:28:09', NULL, NULL, NULL, NULL, 0, '8.07'),
(80, 'n5tuiU03KMlWCxN', '301010103', NULL, '2011-12-15', 'o', 'c', 'c', 'o', 'c', 'e', '2015-05-28 07:28:30', NULL, NULL, NULL, NULL, 0, '7.79'),
(81, 'n5tuiU03KMlWCxN', '301010104', NULL, '2012-06-15', 'o', 'a', 'a', 'c', 'a', 'd', '2015-05-28 07:29:02', NULL, NULL, NULL, NULL, 0, '8.36'),
(82, 'n5tuiU03KMlWCxN', '301010105', 'o', '2012-12-15', 'o', 'a', 'a', 'o', 'o', 'a', '2015-05-28 07:29:29', 'e', 'd', 'd', 'd', 0, '8.57'),
(83, 'n5tuiU03KMlWCxN', '301010106', 'e', '2013-06-15', 'o', 'e', 'e', 'e', 'e', 'e', '2015-05-28 07:30:00', 'e', 'o', 'o', NULL, 0, '6.20'),
(84, 'n5tuiU03KMlWCxN', '301010107', 'e', '2013-12-15', 'o', 'e', 'e', 'e', 'e', 'e', '2015-05-28 07:30:24', 'p', 'p', 'p', 'a', 0, '5.81'),
(85, 'n5tuiU03KMlWCxN', '301010108', 'd', '2014-06-15', 'o', 'a', 'e', 'd', 'e', 'd', '2015-05-28 07:30:54', 'e', 'd', NULL, NULL, 0, '6.85'),
(86, 'f0QmCz3bqej5sKw', '301010101', 'e', '2011-06-15', 'o', 'e', 'e', 'a', 'e', 'd', '2015-05-28 07:31:43', NULL, NULL, NULL, NULL, 0, '6.89'),
(87, 'f0QmCz3bqej5sKw', '301010102', 'a', '2011-06-15', 'o', 'p', 'a', 'a', 'o', 'p', '2015-05-28 07:32:04', NULL, NULL, NULL, NULL, 0, '8.17'),
(88, 'f0QmCz3bqej5sKw', '301010103', NULL, '2011-12-15', 'e', 'd', 'd', 'd', 'd', 'd', '2015-05-28 07:32:27', NULL, NULL, NULL, NULL, 0, '5.82'),
(89, 'f0QmCz3bqej5sKw', '301010104', NULL, '2012-06-15', 'o', 'a', 'a', 'p', 'a', 'a', '2015-05-28 07:32:53', NULL, NULL, NULL, NULL, 0, '8.46'),
(90, 'f0QmCz3bqej5sKw', '301010105', 'a', '2012-12-15', 'o', 'p', 'a', 'a', 'o', 'a', '2015-05-28 07:33:37', 'a', 'd', 'd', 'd', 0, '7.87'),
(91, 'f0QmCz3bqej5sKw', '301010106', 'p', '2013-06-15', 'e', 'e', 'e', 'e', 'a', 'o', '2015-05-28 07:34:04', 'p', 'a', 'd', NULL, 0, '5.96'),
(92, 'f0QmCz3bqej5sKw', '301010107', 'd', '2013-12-15', 'p', 'o', 'd', 'd', 'd', 'e', '2015-05-28 07:34:31', 'd', 'a', 'd', 'a', 0, '6.50'),
(93, 'f0QmCz3bqej5sKw', '301010108', 'a', '2014-06-15', 'o', 'a', 'b', 'e', 'd', 'd', '2015-05-28 07:34:57', 'e', 'e', NULL, NULL, 0, '7.08');

-- --------------------------------------------------------

--
-- Table structure for table `variable1`
--

CREATE TABLE IF NOT EXISTS `variable1` (
  `id` int(150) NOT NULL AUTO_INCREMENT,
  `sub_variable` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sub_variable` (`sub_variable`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `variable1`
--

INSERT INTO `variable1` (`id`, `sub_variable`) VALUES
(1, 'sub_variable1'),
(2, 'sub_variable2'),
(3, 'sub_variable3'),
(4, 'sub_variable4');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
