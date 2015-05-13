-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2015 at 06:49 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `acadmic`
--

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comp_exam_mapping`
--

INSERT INTO `comp_exam_mapping` (`id`, `form_code`, `table_name`, `exam_name`, `exam_type`, `multiple`) VALUES
(2, '50102', 'comp_toefl', 'TOEFL exam', 'competitive', 1),
(22, '50202', 'comp_toefl', 'TOEFL exam', 'competitive', 1),
(23, '501010101', 'comp_gre', 'GRE exam', 'competitive', 1),
(24, '501010102', 'comp_gre', 'GRE exam', 'competitive', 1),
(25, '501010103', 'comp_gre', 'GRE exam', 'competitive', 1),
(26, '5010301', 'comp_gate', 'GATE exam', 'competitive', 1),
(27, '5010302', 'comp_gate', 'GATE exam', 'competitive', 1),
(28, '5010303', 'comp_gate', 'GATE exam', 'competitive', 1),
(29, '5010201', 'comp_gre', 'GRE exam', 'competitive', 1),
(30, '5010202', 'comp_gre', 'GRE exam', 'competitive', 1),
(31, '5020301', 'comp_gate', 'GATE exam', 'competitive', 1),
(32, '5020302', 'comp_gate', 'GATE exam', 'competitive', 1),
(33, '5020303', 'comp_gate', 'GATE exam', 'competitive', 1),
(34, '10101', 'primary_record', 'SSC', 'academic', 0);

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
  `multiple` int(10) NOT NULL,
  `form_title` varchar(300) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_field`
--

INSERT INTO `form_field` (`id`, `total_field`, `form_id`, `form_field`, `security`, `multiple`, `form_title`, `last_modified`) VALUES
(6, 7, '301010101', '../forms/form_data/mum_sem_1.json', '../forms/form_security/mum_semester.js', 0, 'Semester 1', '2015-04-29 09:37:08'),
(7, 4, '50102', '{\\"Append\\":\\"$(document).ready(function(){\\\\r\\\\n var total =0;\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n clean_form_box();\\\\r\\\\n if($(this).val()){\\\\r\\\\n if ($.isNumeric($(this).val())) {\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n res = $(this).val();\\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n if (parseFloat(res)\\\\u003C=parseFloat(obj[\\''Field_\\''+code][\\''limit\\''])) { \\\\r\\\\n adition(); \\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n adition(); \\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n adition(); \\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n adition();\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n adition(); \\\\r\\\\n } \\\\r\\\\n });\\\\r\\\\n \\\\r\\\\n function adition(){\\\\r\\\\n total =0;\\\\r\\\\n for(i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++){\\\\r\\\\n if($.isNumeric($(\\''#data_field_\\''+i).val())){\\\\r\\\\n total =total+ parseFloat($(\\''#data_field_\\''+i).val());\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#final\\'').html(total);\\\\r\\\\n } \\\\r\\\\n });\\",\\"form_data\\":{\\"form_name\\":\\"GRE\\",\\"Field_Parameter\\":2,\\"Total_Fields\\":5,\\"header_field\\":[\\"Exam Name\\",\\"TOEFL\\"],\\"field_name\\":[\\"Field_Name\\",\\"input\\"],\\"Field_1\\":{\\"Field_Name\\":\\"Attempt Date\\",\\"input\\":\\"date\\",\\"input_length\\":\\"5\\",\\"input_type\\":\\"date\\",\\"limit\\":\\"10\\"},\\"Field_2\\":{\\"Field_Name\\":\\"Reading\\",\\"input\\":\\"text\\",\\"input_length\\":\\"2\\",\\"input_type\\":\\"number\\",\\"limit\\":30},\\"Field_3\\":{\\"Field_Name\\":\\"Writing\\",\\"input\\":\\"text\\",\\"input_length\\":\\"2\\",\\"input_type\\":\\"number\\",\\"limit\\":30},\\"Field_4\\":{\\"Field_Name\\":\\"Speaking\\",\\"input\\":\\"text\\",\\"input_length\\":\\"2\\",\\"input_type\\":\\"number\\",\\"limit\\":30},\\"Field_5\\":{\\"Field_Name\\":\\"Listening\\",\\"input\\":\\"text\\",\\"input_length\\":\\"2\\",\\"input_type\\":\\"number\\",\\"limit\\":30}}}', NULL, 0, 'TOEFL', '2015-04-26 07:36:51'),
(8, 7, '301010102', '../forms/form_data/mum_sem_2.json', '../forms/form_security/mum_semester.js', 0, 'Semester 2', '2015-04-29 09:39:36'),
(9, 6, '301010103', '../forms/form_data/IT-mum_sem_3.json', '../forms/form_security/mum_semester.js', 0, 'Semester 3', '2015-04-29 10:37:59'),
(10, 6, '301010104', '../forms/form_data/IT-mum_sem_4.json', '../forms/form_security/mum_semester.js', 0, 'Semester 4', '2015-04-29 19:38:04'),
(11, 7, '301010105', '../forms/form_data/IT-mum_sem_5.json', '../forms/form_security/mum_semester.js', 0, 'Semester 5', '2015-04-29 19:44:30'),
(12, 6, '301010106', '../forms/form_data/IT-mum_sem_6.json', '../forms/form_security/mum_semester.js', 0, 'Semester 6', '2015-04-29 19:44:44'),
(13, 11, '301010107', '../forms/form_data/IT-mum_sem_7.json', '../forms/form_security/mum_semester.js', 0, 'Semester 7', '2015-04-29 19:44:58'),
(14, 9, '301010108', '../forms/form_data/IT-mum_sem_8.json', '../forms/form_security/mum_semester.js', 0, 'Semester 8', '2015-04-29 19:45:10'),
(16, 5, '10201', '../forms/form_data/cbse_10.json', '../forms/form_security/cbse.js', 0, 'CBSE-10th', '2015-05-07 19:41:14'),
(17, 5, '20101', '../forms/form_data/cbse_12.json', '../forms/form_security/cbse.js', 0, 'CBSE-12th', '2015-05-07 19:41:04'),
(18, 7, '301020101', '../forms/form_data/mum_sem_1.json', '../forms/form_security/mum_semester.js', 0, 'Semester 1', '2015-04-29 09:37:08'),
(19, 7, '301030101', '../forms/form_data/mum_sem_1.json', '../forms/form_security/mum_semester.js', 0, 'Semester 1', '2015-04-29 09:37:08'),
(20, 7, '301040101', '../forms/form_data/mum_sem_1.json', '../forms/form_security/mum_semester.js', 0, 'Semester 1', '2015-04-29 09:37:08'),
(21, 7, '301020102', '../forms/form_data/mum_sem_2.json', '../forms/form_security/mum_semester.js', 0, 'Semester 2', '2015-04-29 09:39:36'),
(22, 7, '301030102', '../forms/form_data/mum_sem_2.json', '../forms/form_security/mum_semester.js', 0, 'Semester 2', '2015-04-29 09:39:36'),
(23, 7, '301040102', '../forms/form_data/mum_sem_2.json', '../forms/form_security/mum_semester.js', 0, 'Semester 2', '2015-04-29 09:39:36'),
(24, 6, '301020103', '../forms/form_data/COMP-mum_sem_3.json', '../forms/form_security/mum_semester.js', 0, 'Semester 3', '2015-04-30 12:28:16'),
(25, 6, '301020104', '../forms/form_data/COMP-mum_sem_4.json', '../forms/form_security/mum_semester.js', 0, 'Semester 4', '2015-04-30 12:29:00'),
(26, 6, '301020105', '../forms/form_data/COMP-mum_sem_5.json', '../forms/form_security/mum_semester.js', 0, 'Semester 5', '2015-04-30 12:29:17'),
(27, 6, '301020106', '../forms/form_data/COMP-mum_sem_6.json', '../forms/form_security/mum_semester.js', 0, 'Semester 6', '2015-04-30 12:29:27'),
(28, 11, '301020107', '../forms/form_data/COMP-mum_sem_7.json', '../forms/form_security/mum_semester.js', 0, 'Semester 7', '2015-04-30 12:29:40'),
(29, 6, '301020108', '../forms/form_data/COMP-mum_sem_8.json', '../forms/form_security/mum_semester.js', 0, 'Semester 8', '2015-04-30 12:29:58'),
(30, 9, '301030103', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-3\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":9,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":5,\\"Subject\\":\\"Applied Mathematics III\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Electronic Devices\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Digital Circuits & Design\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Circuit Theory\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Electronic Instruments & Meassurements\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Electronic Devices (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Digital Circuits & Design (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Circuit Theory (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":2,\\"Subject\\":\\"Object Oriented Programming Methodology laboratory (TW)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 0, 'Semester 3', '2015-04-29 09:29:48'),
(31, 10, '301030104', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-4\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":10,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":5,\\"Subject\\":\\"Applied Mathematics IV\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Discrete Electronics Circuits\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Microprocessor $ peripherals\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Principles of COntrol Systems\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"funcdamentals of Communication Engineering\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":3,\\"Subject\\":\\"Electrical Machines\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Discrete Electronic Circuits\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Microprocessor & Peripherals\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Principles of Control Systems\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_10\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Fundamentals of Communication Engineering\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 0, 'Semester 4', '2015-04-29 09:29:53'),
(32, 10, '301030105', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-5\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":10,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Microcontrollers & Applications\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Design with Linear Integrated Circuits\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Electromagnetic Engineeirng\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":5,\\"Subject\\":\\"Signals & Systems\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Digital Communication\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":2,\\"Subject\\":\\"Business communication and Ethics\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Microcontrollers & Applications (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Design with Linear Integrated Circuits (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Digital Communication (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_10\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":2,\\"Subject\\":\\"Mini Project I\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 0, 'Semester 5', '2015-04-29 09:30:01'),
(33, 9, '301030106', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-6\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":9,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Basic VLSI Design\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Advanced Instrumentation Systems\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Power Electronics I\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Digital Signal Processing & Processors\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Modern Information Technology for Management\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":2,\\"Subject\\":\\"Basic VLSI Design (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Microcontrollers & Applications (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Digital Signal Processing & Processors (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":2,\\"Subject\\":\\"Mini Project II\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 0, 'Semester 6', '2015-04-29 09:30:06'),
(34, 9, '301040103', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-3\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":9,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":5,\\"Subject\\":\\"Applied Mathematics III\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Analog Electronics I\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Digital ELectronics\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Circuit & Transmission Lines\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Electronic Intruments & measurements\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Analog Electronics I (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Digital Electronics (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Circuit Theory (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Object Oriented Programming Methodology Laboratory (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 0, 'Semester 3', '2015-04-29 09:29:48'),
(35, 9, '301040104', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-4\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":9,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":5,\\"Subject\\":\\"Applied Mathematics IV\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Analog Electronics II\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Microprocessor & Peripherals\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Wave Theory & Propagation\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":5,\\"Subject\\":\\"Signals $ Systems\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Control Systems\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Analog Electronics II (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Microprocessor $ Peripherals (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"SSW Laboratory\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 0, 'Semester 4', '2015-04-29 09:29:53');
INSERT INTO `form_field` (`id`, `total_field`, `form_id`, `form_field`, `security`, `multiple`, `form_title`, `last_modified`) VALUES
(36, 9, '301040105', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-5\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":10,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Microcontroller & Application\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Analog Communication\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":5,\\"Subject\\":\\"Random Signal Analysis\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"RF Modeling & Antennas\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Integrated Circuits\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":2,\\"Subject\\":\\"Business Communication & Ethics\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Microcontroller & Application (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Communication Engineering I (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Communication Engineering II (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_10\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Mini Project I\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 0, 'Semester 5', '2015-04-29 09:30:01'),
(37, 10, '301040106', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-6\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":10,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Digital Communication\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Discrete Time SIgnal Processing\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Computer Communication & Telcommunication Network\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Television Engineering\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Operating System\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"VLSI Design\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Discrete Time Signal Processing (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Communication Engineering III (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Communication Engineering IV (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_10\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Mini Project II\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 0, 'Semester 6', '2015-04-29 09:30:06'),
(38, 10, '301040107', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-7\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":10,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Image & Video Processing\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Mobile Communication\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Optical Communication & Network\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Microwave & Radar\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Elective\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Image & Video Processing (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Advanced Communication Engineering I (TW \\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Advanced Communication Engineering II (TW \\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Elective (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_10\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":3,\\"Subject\\":\\"Project I\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 0, 'Semester 7', '2015-04-29 09:30:11'),
(39, 10, '301040108', '{\\"Append\\":\\"$(document).ready( function(){\\\\r\\\\n \\\\r\\\\n total_length = $(\\''#\\''+obj[\\''form_name\\'']+\\'' input\\'').length;\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var cgpa = 0;\\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n for(i=1; i\\\\u003C=total_length; i++){\\\\r\\\\n credit = parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n if($(\\''#data_field_\\''+i).val()){\\\\r\\\\n res = ($(\\''#data_field_\\''+i).val()).toUpperCase();\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+i).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+i).html(sum_of_cg);\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' #final\\'').html(cgpa);\\\\r\\\\n \\\\r\\\\n \\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n var total_cgpa =0;\\\\r\\\\n var total_credit = 0;\\\\r\\\\n var grade_point = 0;\\\\r\\\\n var sum_of_cg = 0;\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n credit =parseFloat($(\\''#Fld_Credit_Course_\\''+code).text());\\\\r\\\\n if($(this).val()){\\\\r\\\\n res = ($(this).val()).toUpperCase(); \\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n var function_type = obj[\\''Field_\\''+code][\\''input_type\\''];\\\\r\\\\n if (eval(function_type+\\''(\\\\\\"\\''+res+\\''\\\\\\",\\\\\\"\\''+obj[\\''Field_\\''+code][\\''limit\\'']+\\''\\\\\\")\\'')) { \\\\r\\\\n grade_point_arr = {\\''O\\'':10, \\''A\\'':9, \\''B\\'':8, \\''C\\'':7, \\''D\\'':6, \\''E\\'':5, \\''P\\'':4};\\\\r\\\\n if(res in grade_point_arr){\\\\r\\\\n grade_point = grade_point_arr[res];\\\\r\\\\n sum_of_cg = grade_point*credit;\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n warning(\\''length\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(\\''#Fld_Grade_Point_\\''+code).html(grade_point);\\\\r\\\\n $(\\''#Fld_Sum_of_CG_\\''+code).html(sum_of_cg);\\\\r\\\\n for (i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++) {\\\\r\\\\n total_cgpa += parseFloat($(\\''#Fld_Sum_of_CG_\\''+i).text());\\\\r\\\\n total_credit += parseFloat($(\\''#Fld_Credit_Course_\\''+i).text());\\\\r\\\\n }\\\\r\\\\n cgpa = (total_cgpa\\\\/total_credit).toFixed(2);\\\\r\\\\n $(\\''#final\\'').html(cgpa);\\\\r\\\\n }\\\\r\\\\n });\\\\r\\\\n });\\\\r\\\\n \\",\\"form_data\\":{\\"form_name\\":\\"mum-semester-8\\",\\"Field_Parameter\\":5,\\"Total_Fields\\":9,\\"header_field\\":[\\"Subject\\",\\"Grade\\",\\"Grade Point\\",\\"Credit Course\\",\\"sum of CG\\"],\\"field_name\\":[\\"Subject\\",\\"Grade\\",\\"Grade_Point\\",\\"Credit_Course\\",\\"Sum_of_CG\\",\\"CGPA\\"],\\"Field_1\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Wireless Networks\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_2\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Satelite Communication & Networks\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_3\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Internet & Voice Communication \\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_4\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":4,\\"Subject\\":\\"Elective\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_5\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Wireless Networks (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_6\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\" Satelite Communication & Networks (TW \\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_7\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Internet & Voice Communication (TW \\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_8\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":1,\\"Subject\\":\\"Elective (TW\\\\/P)\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]},\\"Field_9\\":{\\"Grade\\":\\"text\\",\\"Grade_Point\\":\\"0\\",\\"Credit_Course\\":6,\\"Subject\\":\\"Project II\\",\\"Sum_of_CG\\":0,\\"input_length\\":\\"1\\",\\"input_type\\":\\"grade\\",\\"limit\\":[\\"O\\",\\"A\\",\\"B\\",\\"C\\",\\"D\\",\\"E\\",\\"F\\",\\"P\\"]}}}', '../forms/form_security/mum_semester.js', 0, 'Semester 8', '2015-04-29 09:30:17'),
(40, 1, '5010301', '{\\"Append\\":\\"$(document).ready(function(){\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n clean_form_box();\\\\r\\\\n if($(this).val()){\\\\r\\\\n if ($.isNumeric($(this).val())) {\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n res = $(this).val();\\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n if (parseFloat(res)\\\\u003CparseFloat(obj[\\''Field_\\''+code][\\''limit\\''])) { \\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n } \\\\r\\\\n });\\\\r\\\\n });\\",\\"form_data\\":{\\"form_name\\":\\"Gate\\",\\"Field_Parameter\\":2,\\"Total_Fields\\":2,\\"header_field\\":[\\"Field Name\\",\\"Computer Science\\"],\\"field_name\\":[\\"Field_Name\\",\\"input\\"],\\"Field_1\\":{\\"Field_Name\\":\\"Attempt Date\\",\\"input\\":\\"date\\",\\"input_length\\":\\"5\\",\\"input_type\\":\\"date\\",\\"limit\\":\\"10\\"},\\"Field_2\\":{\\"Field_Name\\":\\"Marks Obtained\\",\\"input\\":\\"text\\",\\"input_length\\":\\"3\\",\\"input_type\\":\\"number\\",\\"limit\\":100}}}', NULL, 0, 'Computer Science', '2015-04-26 07:31:34'),
(41, 1, '5010302', '{\\"Append\\":\\"$(document).ready(function(){\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n clean_form_box();\\\\r\\\\n if($(this).val()){\\\\r\\\\n if ($.isNumeric($(this).val())) {\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n res = $(this).val();\\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n if (parseFloat(res)\\\\u003CparseFloat(obj[\\''Field_\\''+code][\\''limit\\''])) { \\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n } \\\\r\\\\n });\\\\r\\\\n });\\",\\"form_data\\":{\\"form_name\\":\\"Gate\\",\\"Field_Parameter\\":2,\\"Total_Fields\\":2,\\"header_field\\":[\\"Field Name\\",\\"Electrical Engineering\\"],\\"field_name\\":[\\"Field_Name\\",\\"input\\"],\\"Field_1\\":{\\"Field_Name\\":\\"Attempt Date\\",\\"input\\":\\"date\\",\\"input_length\\":\\"5\\",\\"input_type\\":\\"date\\",\\"limit\\":\\"10\\"},\\"Field_2\\":{\\"Field_Name\\":\\"Marks Obtained\\",\\"input\\":\\"text\\",\\"input_length\\":\\"3\\",\\"input_type\\":\\"number\\",\\"limit\\":100}}}', NULL, 0, 'Electrical Engineering', '2015-04-26 07:34:21'),
(42, 1, '5010303', '{\\"Append\\":\\"$(document).ready(function(){\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n clean_form_box();\\\\r\\\\n if($(this).val()){\\\\r\\\\n if ($.isNumeric($(this).val())) {\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n res = $(this).val();\\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n if (parseFloat(res)\\\\u003CparseFloat(obj[\\''Field_\\''+code][\\''limit\\''])) { \\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n } \\\\r\\\\n });\\\\r\\\\n });\\",\\"form_data\\":{\\"form_name\\":\\"Gate\\",\\"Field_Parameter\\":2,\\"Total_Fields\\":2,\\"header_field\\":[\\"Field Name\\",\\"Electronics and Communication Engineering\\"],\\"field_name\\":[\\"Field_Name\\",\\"input\\"],\\"Field_1\\":{\\"Field_Name\\":\\"Attempt Date\\",\\"input\\":\\"date\\",\\"input_length\\":\\"5\\",\\"input_type\\":\\"date\\",\\"limit\\":\\"10\\"},\\"Field_2\\":{\\"Field_Name\\":\\"Marks Obtained\\",\\"input\\":\\"text\\",\\"input_length\\":\\"3\\",\\"input_type\\":\\"number\\",\\"limit\\":100}}}', NULL, 0, 'Electronics and Communication Engineering', '2015-04-26 07:34:39'),
(43, 1, '5010304', '{\\"Append\\":\\"$(document).ready(function(){\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n clean_form_box();\\\\r\\\\n if($(this).val()){\\\\r\\\\n if ($.isNumeric($(this).val())) {\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n res = $(this).val();\\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n if (parseFloat(res)\\\\u003CparseFloat(obj[\\''Field_\\''+code][\\''limit\\''])) { \\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n } \\\\r\\\\n });\\\\r\\\\n });\\",\\"form_data\\":{\\"form_name\\":\\"Gate\\",\\"Field_Parameter\\":2,\\"Total_Fields\\":2,\\"header_field\\":[\\"Field Name\\",\\"Mechanical Engineering\\"],\\"field_name\\":[\\"Field_Name\\",\\"input\\"],\\"Field_1\\":{\\"Field_Name\\":\\"Attempt Date\\",\\"input\\":\\"date\\",\\"input_length\\":\\"5\\",\\"input_type\\":\\"date\\",\\"limit\\":\\"10\\"},\\"Field_2\\":{\\"Field_Name\\":\\"Marks Obtained\\",\\"input\\":\\"text\\",\\"input_length\\":\\"3\\",\\"input_type\\":\\"number\\",\\"limit\\":100}}}', NULL, 0, 'Mechanical Engineering', '2015-04-26 07:37:53'),
(44, 4, '5010101', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', 0, 'GRE for Engineering', '2015-04-30 07:18:12'),
(45, 4, '5010102', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', 0, 'GRE for Engineering', '2015-04-30 07:18:12'),
(46, 4, '5010103', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', 0, 'GRE for Engineering', '2015-04-30 07:18:12'),
(47, 4, '5010201', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', 0, 'GRE for Engineering', '2015-04-30 07:18:12'),
(48, 4, '5010202', '../forms/form_data/gre_for_pharmacy.json', '../forms/form_security/gre.js', 0, 'GRE for Pharmacy', '2015-04-30 07:20:26'),
(49, 4, '5010203', '../forms/form_data/gre_for_pharmacy.json', '../forms/form_security/gre.js', 0, 'GRE for Pharmacy', '2015-04-30 07:20:26'),
(50, 1, '5020301', '{\\"Append\\":\\"$(document).ready(function(){\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n clean_form_box();\\\\r\\\\n if($(this).val()){\\\\r\\\\n if ($.isNumeric($(this).val())) {\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n res = $(this).val();\\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n if (parseFloat(res)\\\\u003CparseFloat(obj[\\''Field_\\''+code][\\''limit\\''])) { \\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n } \\\\r\\\\n });\\\\r\\\\n });\\",\\"form_data\\":{\\"form_name\\":\\"Gate\\",\\"Field_Parameter\\":2,\\"Total_Fields\\":2,\\"header_field\\":[\\"Field Name\\",\\"Computer Science\\"],\\"field_name\\":[\\"Field_Name\\",\\"input\\"],\\"Field_1\\":{\\"Field_Name\\":\\"Attempt Date\\",\\"input\\":\\"date\\",\\"input_length\\":\\"5\\",\\"input_type\\":\\"date\\",\\"limit\\":\\"10\\"},\\"Field_2\\":{\\"Field_Name\\":\\"Marks Obtained\\",\\"input\\":\\"text\\",\\"input_length\\":\\"3\\",\\"input_type\\":\\"number\\",\\"limit\\":100}}}', NULL, 0, 'Computer Science', '2015-04-26 07:31:34'),
(51, 4, '50202', '{\\"Append\\":\\"$(document).ready(function(){\\\\r\\\\n var total =0;\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n clean_form_box();\\\\r\\\\n if($(this).val()){\\\\r\\\\n if ($.isNumeric($(this).val())) {\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n res = $(this).val();\\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n if (parseFloat(res)\\\\u003C=parseFloat(obj[\\''Field_\\''+code][\\''limit\\''])) { \\\\r\\\\n adition(); \\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n adition(); \\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n adition(); \\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n adition();\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n adition(); \\\\r\\\\n } \\\\r\\\\n });\\\\r\\\\n \\\\r\\\\n function adition(){\\\\r\\\\n total =0;\\\\r\\\\n for(i=1; i\\\\u003C=obj[\\''Total_Fields\\'']; i++){\\\\r\\\\n if($.isNumeric($(\\''#data_field_\\''+i).val())){\\\\r\\\\n total =total+ parseFloat($(\\''#data_field_\\''+i).val());\\\\r\\\\n }\\\\r\\\\n }\\\\r\\\\n $(\\''#final\\'').html(total);\\\\r\\\\n } \\\\r\\\\n });\\",\\"form_data\\":{\\"form_name\\":\\"GRE\\",\\"Field_Parameter\\":2,\\"Total_Fields\\":5,\\"header_field\\":[\\"Exam Name\\",\\"TOEFL\\"],\\"field_name\\":[\\"Field_Name\\",\\"input\\"],\\"Field_1\\":{\\"Field_Name\\":\\"Attempt Date\\",\\"input\\":\\"date\\",\\"input_length\\":\\"5\\",\\"input_type\\":\\"date\\",\\"limit\\":\\"10\\"},\\"Field_2\\":{\\"Field_Name\\":\\"Reading\\",\\"input\\":\\"text\\",\\"input_length\\":\\"2\\",\\"input_type\\":\\"number\\",\\"limit\\":30},\\"Field_3\\":{\\"Field_Name\\":\\"Writing\\",\\"input\\":\\"text\\",\\"input_length\\":\\"2\\",\\"input_type\\":\\"number\\",\\"limit\\":30},\\"Field_4\\":{\\"Field_Name\\":\\"Speaking\\",\\"input\\":\\"text\\",\\"input_length\\":\\"2\\",\\"input_type\\":\\"number\\",\\"limit\\":30},\\"Field_5\\":{\\"Field_Name\\":\\"Listening\\",\\"input\\":\\"text\\",\\"input_length\\":\\"2\\",\\"input_type\\":\\"number\\",\\"limit\\":30}}}', NULL, 0, 'TOEFL', '2015-04-26 07:36:51'),
(52, 1, '5020304', '{\\"Append\\":\\"$(document).ready(function(){\\\\r\\\\n $(\\''#\\''+obj[\\''form_name\\'']+\\'' tr td\\'').on(\\''keyup\\'',\\''input\\'', function(e){\\\\r\\\\n clean_form_box();\\\\r\\\\n if($(this).val()){\\\\r\\\\n if ($.isNumeric($(this).val())) {\\\\r\\\\n code =$(this).attr(\\''name\\'');\\\\r\\\\n res = $(this).val();\\\\r\\\\n if (res.length\\\\u003C=obj[\\''Field_\\''+code][\\''input_length\\'']){\\\\r\\\\n if (parseFloat(res)\\\\u003CparseFloat(obj[\\''Field_\\''+code][\\''limit\\''])) { \\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else if((e.keyCode\\\\u003E64 && e.keyCode\\\\u003C91) || (e.keyCode\\\\u003E95 && e.keyCode\\\\u003C106) || (e.keyCode\\\\u003E47 && e.keyCode\\\\u003C58)){\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n }\\\\r\\\\n }else{\\\\r\\\\n warning_box(\\''invalid\\'');\\\\r\\\\n $(this).val(\\''\\'');\\\\r\\\\n } \\\\r\\\\n });\\\\r\\\\n });\\",\\"form_data\\":{\\"form_name\\":\\"Gate\\",\\"Field_Parameter\\":2,\\"Total_Fields\\":2,\\"header_field\\":[\\"Field Name\\",\\"Mechanical Engineering\\"],\\"field_name\\":[\\"Field_Name\\",\\"input\\"],\\"Field_1\\":{\\"Field_Name\\":\\"Attempt Date\\",\\"input\\":\\"date\\",\\"input_length\\":\\"5\\",\\"input_type\\":\\"date\\",\\"limit\\":\\"10\\"},\\"Field_2\\":{\\"Field_Name\\":\\"Marks Obtained\\",\\"input\\":\\"text\\",\\"input_length\\":\\"3\\",\\"input_type\\":\\"number\\",\\"limit\\":100}}}', NULL, 0, 'Mechanical Engineering', '2015-04-26 07:37:53'),
(53, 4, '501010101', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', 0, 'GRE for Engineering', '2015-04-30 07:18:12'),
(54, 4, '501010102', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', 0, 'GRE for Engineering', '2015-04-30 07:18:12'),
(55, 4, '501010103', '../forms/form_data/gre_for_engg.json', '../forms/form_security/gre.js', 0, 'GRE for Engineering', '2015-04-30 07:18:12'),
(56, 4, '501010201', '../forms/form_data/gre_for_pharmacy.json', '../forms/form_security/gre.js', 0, 'GRE for Pharmacy', '2015-04-30 07:20:26'),
(57, 4, '501010202', '../forms/form_data/gre_for_pharmacy.json', '../forms/form_security/gre.js', 0, 'GRE for Pharmacy', '2015-04-30 07:20:26'),
(58, 4, '501010203', '../forms/form_data/gre_for_pharmacy.json', '../forms/form_security/gre.js', 0, 'GRE for Pharmacy', '2015-04-30 07:20:26'),
(59, 7, '10101', '../forms/form_data/ssc.json', '../forms/form_security/primary.js', 0, 'SSC', '2015-05-07 13:54:19');

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
(14, '50201', 'GRE for Engineering', '5010201', 'form_field', 1),
(15, '50201', 'GRE for Pharmacy', '5010202', 'form_field', 1),
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

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
(49, '5010102', 'Evening', '501010203', 'form_field', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_type`
--

CREATE TABLE IF NOT EXISTS `sub_type` (
`id` int(255) NOT NULL,
  `form_no` varchar(255) NOT NULL,
  `sub_type` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_type`
--

INSERT INTO `sub_type` (`id`, `form_no`, `sub_type`) VALUES
(1, '301010103', 'undergraduate'),
(2, '301010104', 'undergraduate'),
(3, '5010201', 'GRE'),
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
(34, '5010202', 'GRE'),
(35, '50202', 'TOEFL'),
(36, '10101', '10th');

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
-- Indexes for table `comp_exam_mapping`
--
ALTER TABLE `comp_exam_mapping`
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
-- Indexes for table `sub_type`
--
ALTER TABLE `sub_type`
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
-- AUTO_INCREMENT for table `comp_exam_mapping`
--
ALTER TABLE `comp_exam_mapping`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `form_field`
--
ALTER TABLE `form_field`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
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
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `sub_type`
--
ALTER TABLE `sub_type`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `variable1`
--
ALTER TABLE `variable1`
MODIFY `id` int(150) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;--
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `active_user`
--

INSERT INTO `active_user` (`id`, `username`, `unique_code`, `active_code`) VALUES
(14, 'siddhesh123', 'e1MFjZzOocq8ufL', 'pPbuXCGcxh'),
(20, 'siddhesh', 'krT3QxCML5fGPDb', 'LJdal36wBq');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comp_gre`
--

INSERT INTO `comp_gre` (`id`, `user_code`, `form_code`, `attempt`, `data_field_1`, `data_field_2`, `data_field_3`, `data_field_4`, `data_field_5`, `data_field_6`, `last_modified`, `data_field_7`, `data_field_8`, `data_field_9`, `data_field_10`, `data_field_11`, `data_field_12`, `total`) VALUES
(8, 'krT3QxCML5fGPDb', '5010201', '1', '2015-05-04', '120', '120', NULL, NULL, NULL, '2015-05-07 17:38:35', NULL, NULL, NULL, NULL, NULL, NULL, '240');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `primary_record`
--

INSERT INTO `primary_record` (`id`, `user_code`, `form_code`, `data_field_8`, `data_field_1`, `data_field_2`, `data_field_3`, `data_field_4`, `data_field_5`, `data_field_6`, `data_field_7`, `last_modified`, `data_field_9`, `data_field_10`, `data_field_11`, `data_field_12`, `attempt`, `total`) VALUES
(3, 'krT3QxCML5fGPDb', '10101', NULL, '68', '79', '37', '119', '80', '81', NULL, '2015-05-07 17:48:17', NULL, NULL, NULL, NULL, 0, '71.38');

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fname`, `lname`, `email`, `username`, `password`, `salt`, `status`, `unique_code`) VALUES
(33, 'siddhesh', 'gore', 'sidh711@gmail.com', 'siddhesh', '65ded5353c5ee48d0b7d48c591b8f430', '9TQxF', 'activated', 'krT3QxCML5fGPDb'),
(34, 'ganesh', 'gore', 'sidh711@hotmail.com', 'siddhesh123', '202cb962ac59075b964b07152d234b70', 'BFuE4', 'activated', 'e1MFjZzOocq8ufL'),
(35, 'user1', 'user1', 'user1@gmail.com', 'user1', 'cfcd208495d565ef66e7dff9f98764da', 'KuPHr', 'activated', '6CzfTcQwIW8M42l');

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
-- Table structure for table `undergraduate`
--

CREATE TABLE IF NOT EXISTS `undergraduate` (
`id` int(255) NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `university name` varchar(255) NOT NULL,
  `college name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `undergraduate`
--

INSERT INTO `undergraduate` (`id`, `unique_code`, `university name`, `college name`) VALUES
(1, 'krT3QxCML5fGPDb', 'mumbai', 'ACE'),
(2, '6CzfTcQwIW8M42l', 'mumbai', 'ACE');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_analytic_stat`
--

INSERT INTO `user_analytic_stat` (`ID`, `user_id`, `record_update_stat`, `record_update_info`, `Completed_Analytics`, `Partial_Analytics`) VALUES
(2, 'krT3QxCML5fGPDb', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/krT3QxCML5fGPDb.json', '../UserJson/Partial/krT3QxCML5fGPDbp.json'),
(3, '6CzfTcQwIW8M42l', '0', '{"Total_Edited_Forms":"0","Edited_Form_List":[]}', '../UserJson/Completed/6CzfTcQwIW8M42l.json', '../UserJson/Partial/6CzfTcQwIW8M42lp.json');

-- --------------------------------------------------------

--
-- Table structure for table `user_filled_form`
--

CREATE TABLE IF NOT EXISTS `user_filled_form` (
`id` int(255) NOT NULL,
  `user_code` varchar(255) NOT NULL,
  `form_filled` varchar(3000) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_filled_form`
--

INSERT INTO `user_filled_form` (`id`, `user_code`, `form_filled`, `last_modified`) VALUES
(4, 'krT3QxCML5fGPDb', '{"Parameter":{"Total_Simple_Exam_Field":9,"Total_Comp_Exam_Field":1},"Simple_Exam":[{"form_type":"undergraduate","Form_Code":"301010101","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010102","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010103","Table_name":"user_record","Attempt":0},{"form_type":"10th","Form_Code":"10101","Table_name":"primary_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010104","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010105","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010106","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010107","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010108","Table_name":"user_record","Attempt":0}],"Comp_Exam":[{"form_type":"GRE","Form_Code":"5010201","Table_name":"comp_gre","Attempt":1}]}', '2015-05-13 16:48:26'),
(5, '6CzfTcQwIW8M42l', '{"Parameter":{"Total_Simple_Exam_Field":8,"Total_Comp_Exam_Field":0},"Simple_Exam":[{"form_type":"undergraduate","Form_Code":"301010101","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010102","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010103","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010104","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010105","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010106","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010107","Table_name":"user_record","Attempt":0},{"form_type":"undergraduate","Form_Code":"301010108","Table_name":"user_record","Attempt":0}],"Comp_Exam":[]}', '2015-05-11 06:15:38');

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_record`
--

INSERT INTO `user_record` (`id`, `user_code`, `form_code`, `data_field_8`, `data_field_1`, `data_field_2`, `data_field_3`, `data_field_4`, `data_field_5`, `data_field_6`, `data_field_7`, `last_modified`, `data_field_9`, `data_field_10`, `data_field_11`, `data_field_12`, `attempt`, `total`) VALUES
(19, 'krT3QxCML5fGPDb', '301010101', NULL, 'o', 'a', 'p', 'p', 'p', 'p', 'a', '2015-05-08 06:49:07', NULL, NULL, NULL, NULL, 0, '6.13'),
(20, 'krT3QxCML5fGPDb', '301010102', NULL, 'a', 'b', 'p', 'o', 'o', 'p', 'a', '2015-05-11 19:16:40', NULL, NULL, NULL, NULL, 0, '8.04'),
(21, 'krT3QxCML5fGPDb', '301010103', NULL, 'a', 'b', 'p', 'P', 'O', 'o', NULL, '2015-05-12 08:22:34', NULL, NULL, NULL, NULL, 0, '7.32'),
(22, 'krT3QxCML5fGPDb', '301010104', NULL, 'o', 'a', 'a', 'b', 'o', 'a', NULL, '2015-05-11 19:11:46', NULL, NULL, NULL, NULL, 0, '9.21'),
(23, 'krT3QxCML5fGPDb', '301010105', 'o', 'o', 'a', 'o', 'a', 'b', 'a', 'o', '2015-05-07 19:44:05', 'p', 'a', 'a', NULL, 0, '9.07'),
(24, 'krT3QxCML5fGPDb', '301010106', 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b', '2015-05-07 19:44:34', 'b', 'b', NULL, NULL, 0, '8.00'),
(25, '6CzfTcQwIW8M42l', '301010101', NULL, 'a', 'a', 'a', 'a', 'a', 'b', 'c', '2015-05-11 06:13:10', NULL, NULL, NULL, NULL, 0, '8.78'),
(26, '6CzfTcQwIW8M42l', '301010102', NULL, 'o', 'a', 'b', 'c', 'a', 'p', 'o', '2015-05-11 06:13:58', NULL, NULL, NULL, NULL, 0, '8.20'),
(27, '6CzfTcQwIW8M42l', '301010103', NULL, 'a', 'a', 'd', 'e', 'o', 'o', NULL, '2015-05-11 06:14:20', NULL, NULL, NULL, NULL, 0, '8.04'),
(28, '6CzfTcQwIW8M42l', '301010104', NULL, 'o', 'o', 'o', 'o', 'o', 'e', NULL, '2015-05-11 06:14:37', NULL, NULL, NULL, NULL, 0, '9.11'),
(29, '6CzfTcQwIW8M42l', '301010105', 'p', 'o', 'p', 'o', 'p', 'o', 'p', 'o', '2015-05-12 12:56:10', 'o', 'p', 'o', NULL, 0, '7.60'),
(30, '6CzfTcQwIW8M42l', '301010106', 'c', 'o', 'o', 'o', 'a', 'a', 'c', 'c', '2015-05-11 06:15:04', 'c', 'c', NULL, NULL, 0, '9.08'),
(31, '6CzfTcQwIW8M42l', '301010107', 'a', 'a', 'e', 'e', 'e', 'a', 'a', 'a', '2015-05-11 06:15:21', 'a', 'a', 'a', NULL, 0, '7.15'),
(32, '6CzfTcQwIW8M42l', '301010108', 'a', 'd', 'd', 'd', 'd', 'a', 'a', 'a', '2015-05-11 06:15:38', 'a', NULL, NULL, NULL, 0, '7.15'),
(33, 'krT3QxCML5fGPDb', '301010107', 'a', 'a', 'o', 'o', 'a', 'a', 'o', 'o', '2015-05-11 16:57:11', 'o', 'o', 'o', NULL, 0, '9.50'),
(35, 'krT3QxCML5fGPDb', '301010108', 'o', 'o', 'a', 'p', 'o', 'o', 'o', 'o', '2015-05-13 16:48:26', 'o', NULL, NULL, NULL, 0, '8.92');

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
-- Indexes for table `doctorate`
--
ALTER TABLE `doctorate`
 ADD PRIMARY KEY (`id`);

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
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `analytics_question_record`
--
ALTER TABLE `analytics_question_record`
MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `comp_gate`
--
ALTER TABLE `comp_gate`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comp_gre`
--
ALTER TABLE `comp_gre`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `secondary`
--
ALTER TABLE `secondary`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `undergraduate`
--
ALTER TABLE `undergraduate`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_analytic_stat`
--
ALTER TABLE `user_analytic_stat`
MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_filled_form`
--
ALTER TABLE `user_filled_form`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_record`
--
ALTER TABLE `user_record`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
