-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2015 at 07:18 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `active_user`
--

INSERT INTO `active_user` (`id`, `username`, `unique_code`, `active_code`) VALUES
(14, 'siddhesh123', 'e1MFjZzOocq8ufL', 'pPbuXCGcxh'),
(20, 'user1', '6CzfTcQwIW8M42l', 'a7Dw3WRmF9'),
(27, 'ituser3', 'n5tuiU03KMlWCxN', 'wz6Xt3bUZJ'),
(34, 'vesit2015007', 'vesitprinciple', 'zeaik62QsO');

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
-- Table structure for table `comp_exam_mapping`
--

CREATE TABLE IF NOT EXISTS `comp_exam_mapping` (
`id` int(255) NOT NULL,
  `form_code` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `exam_name` varchar(255) DEFAULT NULL,
  `exam_type` varchar(255) DEFAULT NULL,
  `multiple` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

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
(42, '501020105', 'comp_gre', 'GRE exam', 'competitive', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comp_gre`
--

INSERT INTO `comp_gre` (`id`, `user_code`, `form_code`, `attempt`, `data_field_1`, `data_field_2`, `data_field_3`, `data_field_4`, `data_field_5`, `data_field_6`, `last_modified`, `data_field_7`, `data_field_8`, `data_field_9`, `data_field_10`, `data_field_11`, `data_field_12`, `total`) VALUES
(8, 'krT3QxCML5fGPDb', '501020101', '1', '2015-05-14', '120', '160', NULL, NULL, NULL, '2015-05-28 14:17:42', NULL, NULL, NULL, NULL, NULL, NULL, '280'),
(9, 'krT3QxCML5fGPDb', '501010101', '1', '2015-05-16', '160', '162', NULL, NULL, NULL, '2015-05-28 14:18:23', NULL, NULL, NULL, NULL, NULL, NULL, '322');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
`id` int(255) NOT NULL,
  `total_field` int(10) NOT NULL,
  `form_id` char(50) NOT NULL,
  `form_field` varchar(8000) NOT NULL,
  `security` varchar(255) DEFAULT NULL,
  `field_name` text,
  `form_title` varchar(300) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

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
`id` int(100) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `salt` varchar(30) NOT NULL,
  `status` varchar(150) NOT NULL,
  `unique_code` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`id`, `fname`, `lname`, `email`, `username`, `password`, `salt`, `status`, `unique_code`) VALUES
(1, 'Ganesh', 'Gore', 'goreganesh@vesit.com', 'vesit2015007', 'cfcd208495d565ef66e7dff9f98764da', 'vesit', 'activated', 'vesitprinciple');

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
`id` int(255) NOT NULL,
  `Parent_Code` char(255) DEFAULT NULL,
  `Level_Data` varchar(150) NOT NULL,
  `Level_Code` varchar(150) NOT NULL,
  `Next_Table` char(10) NOT NULL,
  `Next_Level` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

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
`id` int(255) NOT NULL,
  `Parent_Code` char(255) DEFAULT NULL,
  `Level_Data` varchar(150) NOT NULL,
  `Level_Code` varchar(150) NOT NULL,
  `Next_Table` char(10) NOT NULL,
  `Next_Level` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

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
`id` int(255) NOT NULL,
  `Parent_Code` char(255) DEFAULT NULL,
  `Level_Data` varchar(150) NOT NULL,
  `Level_Code` varchar(150) NOT NULL,
  `Next_Table` char(10) NOT NULL,
  `Next_Level` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

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
`id` int(255) NOT NULL,
  `Parent_Code` char(255) DEFAULT NULL,
  `Level_Data` varchar(150) NOT NULL,
  `Level_Code` varchar(150) NOT NULL,
  `Next_Table` char(10) NOT NULL,
  `Next_Level` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

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
  `school name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `primary`
--

INSERT INTO `primary` (`id`, `unique_code`, `board name`, `school name`) VALUES
(1, 'krT3QxCML5fGPDb', 'cbse', 'SSV'),
(5, '6CzfTcQwIW8M42l', 'ssc', 'SSV');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
`id` int(100) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `salt` varchar(30) NOT NULL,
  `status` varchar(150) NOT NULL,
  `unique_code` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fname`, `lname`, `email`, `username`, `password`, `salt`, `status`, `unique_code`) VALUES
(33, 'siddhesh', 'gore', 'sidh711@gmail.com', 'siddhesh', '65ded5353c5ee48d0b7d48c591b8f430', '9TQxF', 'activated', 'krT3QxCML5fGPDb'),
(34, 'ganesh', 'gore', 'sidh711@hotmail.com', 'siddhesh123', '202cb962ac59075b964b07152d234b70', 'BFuE4', 'activated', 'e1MFjZzOocq8ufL'),
(35, 'user1', 'user1', 'user1@gmail.com', 'user1', 'cfcd208495d565ef66e7dff9f98764da', 'KuPHr', 'activated', '6CzfTcQwIW8M42l'),
(36, 'ituser1', 'ituser1', 'ituser1@ituser1.com', 'ituser1', '1679091c5a880faf6fb5e6087eb1b2dc', '6L5fh', 'activated', 'V6ZxzM2fR10gnqG'),
(37, 'ituser2', 'ituser2', 'ituser2@user.com', 'ituser2', 'cfcd208495d565ef66e7dff9f98764da', 'B7PhR', 'activated', 'SGlajBVJXEQkfFP'),
(38, 'ituser3', 'ituser3', 'ituser3@ituser3.com', 'ituser3', 'cfcd208495d565ef66e7dff9f98764da', 'CSXbw', 'activated', 'n5tuiU03KMlWCxN'),
(39, 'ituser4', 'ituser4', 'ituser4@ituser4.com', 'ituser4', 'e4da3b7fbbce2345d7772b0674a318d5', '5BO1D', 'activated', 'f0QmCz3bqej5sKw'),
(40, 'ituser5', 'ituser5', 'ituser5@ituser5.com', 'ituser5', 'c9f0f895fb98ab9159f51fd0297e236d', '8HClf', 'activated', '5JaEWxlQN7udmF4'),
(41, 'ituser6', 'ituser6', 'ituser6@ituser6.com', 'ituser6', 'cfcd208495d565ef66e7dff9f98764da', 'rNab9', 'activated', '1FzAMEiC075vbuV');

-- --------------------------------------------------------

--
-- Table structure for table `secondary`
--

CREATE TABLE IF NOT EXISTS `secondary` (
`id` int(255) NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `board name` varchar(255) NOT NULL,
  `college name` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_type`
--

CREATE TABLE IF NOT EXISTS `sub_type` (
`id` int(255) NOT NULL,
  `form_no` varchar(255) NOT NULL,
  `sub_type` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

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
`id` int(255) NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `university name` varchar(255) NOT NULL,
  `college name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `undergraduate`
--

INSERT INTO `undergraduate` (`id`, `unique_code`, `university name`, `college name`) VALUES
(1, 'krT3QxCML5fGPDb', 'mumbai', 'ACE'),
(2, '6CzfTcQwIW8M42l', 'mumbai', 'ACE'),
(3, 'V6ZxzM2fR10gnqG', 'mumbai', 'ACE'),
(4, 'SGlajBVJXEQkfFP', 'mumbai', 'DJ'),
(5, 'n5tuiU03KMlWCxN', 'mumbai', 'ACE');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_analytic_stat`
--

INSERT INTO `user_analytic_stat` (`ID`, `user_id`, `record_update_stat`, `record_update_info`, `Completed_Analytics`, `Partial_Analytics`) VALUES
(2, 'krT3QxCML5fGPDb', '4', '{"Total_Edited_Forms":4,"Edited_Form_List":["501010101","5010201","501020101","501010101"]}', '../UserJson/Completed/krT3QxCML5fGPDb.json', '../UserJson/Partial/krT3QxCML5fGPDbp.json'),
(3, '6CzfTcQwIW8M42l', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/6CzfTcQwIW8M42l.json', '../UserJson/Partial/6CzfTcQwIW8M42lp.json'),
(4, 'V6ZxzM2fR10gnqG', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/V6ZxzM2fR10gnqG.json', '../UserJson/Partial/V6ZxzM2fR10gnqGp.json'),
(5, 'SGlajBVJXEQkfFP', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/SGlajBVJXEQkfFP.json', '../UserJson/Partial/SGlajBVJXEQkfFPp.json'),
(6, 'n5tuiU03KMlWCxN', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/n5tuiU03KMlWCxN.json', '../UserJson/Partial/n5tuiU03KMlWCxNp.json'),
(7, 'f0QmCz3bqej5sKw', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/f0QmCz3bqej5sKw.json', '../UserJson/Partial/f0QmCz3bqej5sKwp.json');

-- --------------------------------------------------------

--
-- Table structure for table `user_filled_form`
--

CREATE TABLE IF NOT EXISTS `user_filled_form` (
`id` int(255) NOT NULL,
  `user_code` varchar(255) NOT NULL,
  `form_filled` varchar(3000) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_filled_form`
--

INSERT INTO `user_filled_form` (`id`, `user_code`, `form_filled`, `last_modified`) VALUES
(4, 'krT3QxCML5fGPDb', '{"Parameter":{"Total_Simple_Exam_Field":8,"Total_Comp_Exam_Field":2},"Simple_Exam":[{"form_type":"undergraduate","Form_Code":"301010101","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010102","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010103","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010104","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010105","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010106","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010107","Table_name":"user_record","Attempt":0},{"form_type":"10th","Form_Code":"10101","Table_name":"primary_record","Attempt":0}],"Comp_Exam":[{"form_type":"GRE_Practice_Test","Form_Code":"501020101","Table_name":"comp_gre","Attempt":1},{"form_type":"GRE_Final","Form_Code":"501010101","Table_name":"comp_gre","Attempt":1}]}', '2015-05-28 14:18:23'),
(5, '6CzfTcQwIW8M42l', '{"Parameter":{"Total_Simple_Exam_Field":7,"Total_Comp_Exam_Field":0},"Simple_Exam":[{"form_type":"undergraduate","Form_Code":"301020101","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301020102","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301020103","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301020104","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301020105","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301020106","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301020107","Table_name":"user_record","Attempt":0}],"Comp_Exam":[]}', '2015-05-19 19:13:50'),
(6, 'V6ZxzM2fR10gnqG', '{"Parameter":{"Total_Simple_Exam_Field":8,"Total_Comp_Exam_Field":0},"Simple_Exam":[{"form_type":"undergraduate","Form_Code":"301010101","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010102","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010103","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010104","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010105","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010106","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010107","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010108","Table_name":"user_record","Attempt":0}],"Comp_Exam":[]}', '2015-05-26 05:03:56'),
(7, 'SGlajBVJXEQkfFP', '{"Parameter":{"Total_Simple_Exam_Field":8,"Total_Comp_Exam_Field":0},"Simple_Exam":[{"form_type":"undergraduate","Form_Code":"301010101","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010102","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010103","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010104","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010105","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010106","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010107","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010108","Table_name":"user_record","Attempt":0}],"Comp_Exam":[]}', '2015-05-26 05:12:39'),
(8, 'n5tuiU03KMlWCxN', '{"Parameter":{"Total_Simple_Exam_Field":8,"Total_Comp_Exam_Field":0},"Simple_Exam":[{"form_type":"undergraduate","Form_Code":"301010101","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010102","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010103","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010104","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010105","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010106","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010107","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010108","Table_name":"user_record","Attempt":0}],"Comp_Exam":[]}', '2015-05-28 07:30:54'),
(9, 'f0QmCz3bqej5sKw', '{"Parameter":{"Total_Simple_Exam_Field":8,"Total_Comp_Exam_Field":0},"Simple_Exam":[{"form_type":"undergraduate","Form_Code":"301010101","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010102","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010103","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010104","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010105","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010106","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010107","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010108","Table_name":"user_record","Attempt":0}],"Comp_Exam":[]}', '2015-05-28 07:34:57');

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

--
-- Dumping data for table `user_record`
--

INSERT INTO `user_record` (`id`, `user_code`, `form_code`, `data_field_8`, `data_field_1`, `data_field_2`, `data_field_3`, `data_field_4`, `data_field_5`, `data_field_6`, `data_field_7`, `last_modified`, `data_field_9`, `data_field_10`, `data_field_11`, `data_field_12`, `attempt`, `total`) VALUES
(38, 'krT3QxCML5fGPDb', '301010101', 'e', '2010-12-15', 'a', 'o', 'o', 'd', 'd', 'd', '2015-05-28 07:43:02', NULL, NULL, NULL, NULL, 0, '7.52'),
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
`id` int(150) NOT NULL,
  `sub_variable` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variable1`
--

INSERT INTO `variable1` (`id`, `sub_variable`) VALUES
(1, 'sub_variable1'),
(2, 'sub_variable2'),
(3, 'sub_variable3'),
(4, 'sub_variable4');

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
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `analytics_question_record`
--
ALTER TABLE `analytics_question_record`
MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `comp_exam_mapping`
--
ALTER TABLE `comp_exam_mapping`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `comp_gate`
--
ALTER TABLE `comp_gate`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comp_gre`
--
ALTER TABLE `comp_gre`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `comp_toefl`
--
ALTER TABLE `comp_toefl`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `doctorate`
--
ALTER TABLE `doctorate`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `form_field`
--
ALTER TABLE `form_field`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `institute`
--
ALTER TABLE `institute`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `level4`
--
ALTER TABLE `level4`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `postgraduate`
--
ALTER TABLE `postgraduate`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `primary`
--
ALTER TABLE `primary`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `primary_record`
--
ALTER TABLE `primary_record`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `secondary`
--
ALTER TABLE `secondary`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_type`
--
ALTER TABLE `sub_type`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `undergraduate`
--
ALTER TABLE `undergraduate`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_analytic_stat`
--
ALTER TABLE `user_analytic_stat`
MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_filled_form`
--
ALTER TABLE `user_filled_form`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
