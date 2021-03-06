-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 15, 2014 at 08:08 AM
-- Server version: 5.1.73
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `EmailScanner`
--

-- --------------------------------------------------------

--
-- Table structure for table `jusdial`
--

CREATE TABLE IF NOT EXISTS `jusdial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Caller_Name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Caller_Requirement` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Caller_Phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Caller_PhoneExtra` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Caller_Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Caller_Branch` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Caller_City` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Caller_Phone` (`Caller_Phone`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=197 ;

--
-- Dumping data for table `jusdial`
--

INSERT INTO `jusdial` (`id`, `Caller_Name`, `Caller_Requirement`, `Caller_Phone`, `Caller_PhoneExtra`, `Caller_Email`, `Caller_Branch`, `Caller_City`, `Date`) VALUES
(1, 'Mr Mukesh', 'Gynaecologist & Obstetrician Doctors', '8292033383', '', '', 'Sheikhpura', 'Patna', '2014-04-14 15:25:03'),
(2, 'Mr Gulshan Kumar from Boring Road', 'Pathology Labs', '9987988796', '', '', 'Sheikhpura', 'Patna', '2014-04-14 13:59:22'),
(3, 'Mr Adnan', 'General Surgeon Doctors', '9507656453', '', '', 'Sheikhpura', 'Patna', '2014-04-14 09:13:46'),
(4, 'Mr Raja', 'Neurosurgeons', '9973775356', '', '', 'Sheikhpura', 'Patna', '2014-04-13 19:31:38'),
(5, 'Mr Saurabh', 'Dialysis Centres', '8527495177', '61247015406', '', 'Sheikhpura', 'Patna', '2014-04-13 14:00:30'),
(6, 'Ms Prerna', 'Dialysis Centres', '9905649157', '61224481136', '', 'Sheikhpura', 'Patna', '2014-04-12 16:58:35'),
(7, 'Mr Abdul Basit from Patna City', 'Neurosurgeons', '9004666255', '', '', 'Sheikhpura', 'Patna', '2014-04-12 06:58:19'),
(8, 'Mr Shasank', 'Hospitals', '8541954717', '', '', 'Sheikhpura', 'Patna', '2014-04-12 02:31:40'),
(9, 'Mr Mohd Zubair', 'Cardiologists', '8271001760', '', '', 'Sheikhpura', 'Patna', '2014-04-11 15:34:30'),
(10, 'Mr Rajesh', 'Cardiologists', '7355742219', '', '', 'Sheikhpura', 'Patna', '2014-04-11 15:29:04'),
(11, 'Mr Dipak Kumar', 'Cardiologists', '9431049284', '', '', 'Sheikhpura', 'Patna', '2014-04-11 11:45:44'),
(12, 'Mr Sinha', 'Private Hospitals', '7836921405', '', '', 'Sheikhpura', 'Patna', '2014-04-11 08:46:47'),
(13, 'Mr A Kr Singh', 'Hospitals', '8877555298', '', '', 'Sheikhpura', 'Patna', '2014-04-11 07:01:04'),
(14, 'Mr Raj', 'Dialysis Centres', '8507473243', '', '', 'Sheikhpura', 'Patna', '2014-04-08 22:06:46'),
(15, 'Mr Kumar', 'Cardiologists', '9504881369', '', '', 'Sheikhpura', 'Patna', '2014-04-08 17:11:11'),
(16, 'Mr Kumar', 'Cardiologists', '8864009017', '', '', 'Sheikhpura', 'Patna', '2014-04-08 17:04:50'),
(17, 'Mr Manish from Sheikhpura', 'Pathology Labs', '9431248852', '', '', 'Sheikhpura', 'Patna', '2014-04-07 11:13:31'),
(18, 'Mr Jitendra from Rajendranagar', 'Neurosurgeons', '8409737020', '', '', 'Sheikhpura', 'Patna', '2014-04-06 17:04:36'),
(19, 'Mr Ishwar from Rajendranagar', 'Neurosurgeons', '8986562326', '', '', 'Sheikhpura', 'Patna', '2014-04-06 16:56:03'),
(20, 'Mr Kumar', 'Cardiologists', '8252365977', '', '', 'Sheikhpura', 'Patna', '2014-04-06 10:46:20'),
(21, 'Mr Rohit', 'Neurosurgeons', '8084865643', '', '', 'Sheikhpura', 'Patna', '2014-04-06 10:10:04'),
(22, 'Mr Akhil S Kumar', 'Pathology Labs', '8547829569', '', '', 'Sheikhpura', 'Patna', '2014-04-05 14:06:05'),
(23, 'Mr Goutam Kumar', 'Neurosurgeons', '9334713672', '', '', 'Sheikhpura', 'Patna', '2014-04-05 13:25:16'),
(24, 'Mr S Kumar', 'Pathology Labs', '7763096713', '', '', 'Sheikhpura', 'Patna', '2014-04-05 13:22:02'),
(25, 'Mr Kumar', 'Cardiologists', '8294677649', '', '', 'Sheikhpura', 'Patna', '2014-04-05 10:34:44'),
(26, 'Mr Rahul', 'Cardiologists', '9560382208', '', '', 'Sheikhpura', 'Patna', '2014-04-04 19:14:04'),
(27, 'Mr M P Shahoo', 'Private Hospitals', '9777182101', '', '', 'Sheikhpura', 'Patna', '2014-04-04 15:14:25'),
(28, 'Mr Suman', 'Gynaecologist & Obstetrician Doctors', '9931349164', '', '', 'Sheikhpura', 'Patna', '2014-04-04 14:47:14'),
(29, 'Mr Kumar', 'Hospitals', '8595219216', '', '', 'Sheikhpura', 'Patna', '2014-04-04 10:13:50'),
(30, 'Mr Santosh', 'Hospitals', '9939757703', '', '', 'Sheikhpura', 'Patna', '2014-04-04 05:35:39'),
(31, 'Mr Sakid', 'Cardiologists', '9570975550', '', '', 'Sheikhpura', 'Patna', '2014-03-12 22:36:07'),
(32, 'Mr Vinod Kumar from Sadaquat\r\nAshram', 'Hospitals', '9431004138', '', '', 'Sheikhpura', 'Patna', '2014-03-27 17:22:25'),
(33, 'Mr Kumar', 'Gynaecologist & Obstetrician Doctors', '9386779613', '', '', 'Sheikhpura', 'Patna', '2014-04-02 15:56:54'),
(34, 'Mr Abhisekh Kumar from Patna Gpo', 'Hospitals', '9934940721', '', '', 'Sheikhpura', 'Patna', '2014-04-01 20:35:47'),
(35, 'Mr Ashok', 'Hospitals', '9313017723', '', '', 'Sheikhpura', 'Patna', '2014-04-01 16:16:17'),
(36, 'Mr Praveen', 'Pathology Labs', '9304404080', '', '', 'Sheikhpura', 'Patna', '2014-04-01 14:36:34'),
(37, 'Mr Atrndhar', 'Cardiologists', '7739880355', '', '', 'Sheikhpura', 'Patna', '2014-03-31 19:52:59'),
(38, 'Mr Kumar', 'Neurosurgeons', '8102125479', '', '', 'Sheikhpura', 'Patna', '2014-03-31 19:43:35'),
(39, 'Mr Ashoke Kumar from Sadaquat\r\nAshram', 'Hospitals', '9798299478', '', '', 'Sheikhpura', 'Patna', '2014-03-31 10:41:17'),
(40, 'Mr Saurav', 'Cardiologists', '9122313520', '', '', 'Sheikhpura', 'Patna', '2014-03-31 10:27:59'),
(41, 'Mr Sandeep', 'Hospitals', '8862971963', '', '', 'Sheikhpura', 'Patna', '2014-03-31 08:35:46'),
(42, 'Mr Pushkal Kumar', 'Gynaecologist & Obstetrician Doctors', '9582340011', '61249360964', '', 'Sheikhpura', 'Patna', '2014-03-30 11:44:50'),
(43, 'Mr Anand Singh', 'Cardiologists', '7259615187', '', '', 'Sheikhpura', 'Patna', '2014-03-29 20:19:25'),
(44, 'Mr Nitin', 'Cardiologists', '7870811535', '', '', 'Sheikhpura', 'Patna', '2014-03-27 23:32:38'),
(45, 'Ms Sujata from Danapur Bazar', 'Neurosurgeons', '9430935468', '', '', 'Sheikhpura', 'Patna', '2014-03-27 16:03:18'),
(46, 'Mr Kumar', 'Gynaecologist & Obstetrician Doctors', '9546944478', '', '', 'Sheikhpura', 'Patna', '2014-03-27 15:37:09'),
(47, 'Mr Avik', 'Neurosurgeons', '9386947827', '', '', 'Sheikhpura', 'Patna', '2014-03-26 14:44:37'),
(48, 'Mr Manish', 'Cardiologists', '8677941312', '', '', 'Sheikhpura', 'Patna', '2014-03-25 19:31:07'),
(49, 'Mr Jitesh Kumar', 'Neurosurgeons', '8102666478', '', '', 'Sheikhpura', 'Patna', '2014-03-24 15:50:49'),
(50, 'Mr Subhas', 'Hospitals', '9199904140', '', '', 'Sheikhpura', 'Patna', '2014-03-24 11:57:26'),
(51, 'Ms Shagun', 'Gynaecologist & Obstetrician Doctors', '9334159533', '', '', 'Sheikhpura', 'Patna', '2014-03-23 16:45:18'),
(52, 'Mr Adi Mandal', 'Cardiologists', '8294155475', '', '', 'Sheikhpura', 'Patna', '2014-03-23 13:20:16'),
(53, 'Mr Ankur Agarwal', 'Hospitals', '9163335127', '', '', 'Sheikhpura', 'Patna', '2014-03-23 10:52:07'),
(54, 'Mr Sanjiv', 'Cardiologists', '9004970559', '2226718941', '', 'Sheikhpura', 'Patna', '2014-03-22 22:27:01'),
(55, 'Mr Nikhil', 'Cardiologists', '7676922028', '', '', 'Sheikhpura', 'Patna', '2014-03-22 21:38:39'),
(56, 'Mr Animesh', 'Pathology Labs', '9212893343', '', '', 'Sheikhpura', 'Patna', '2014-03-22 13:33:03'),
(57, 'Mr Ravi', 'Pathology Labs', '9931215254', '', '', 'Sheikhpura', 'Patna', '2014-03-22 13:05:13'),
(58, 'Mr S Alam', 'Cardiologists', '7870306180', '', '', 'Sheikhpura', 'Patna', '2014-03-21 17:19:34'),
(59, 'Ms Ruby Rani from Patliputra', 'Pathology Labs', '9430463207', '', '', 'Sheikhpura', 'Patna', '2014-03-21 13:38:08'),
(60, 'Mr Abinash', 'Neurosurgeons', '8521238020', '', '', 'Sheikhpura', 'Patna', '2014-03-21 10:02:46'),
(61, 'Mr Abdul', 'Cardiologists', '7209175385', '', '', 'Sheikhpura', 'Patna', '2014-03-20 18:11:33'),
(62, 'Mr Bijendra', 'Cardiologists', '9939762088', '', '', 'Sheikhpura', 'Patna', '2014-03-20 16:32:42'),
(63, 'Mr C B Sinha', 'Cardiologists', '9771447978', '', '', 'Sheikhpura', 'Patna', '2014-03-20 12:42:00'),
(64, 'Mr Raj Lohani', 'Pathology Labs', '9852600611', '', '', 'Sheikhpura', 'Patna', '2014-03-20 12:30:23'),
(65, 'Mr A Jain', 'Hospitals', '8981700348', '', '', 'Sheikhpura', 'Patna', '2014-03-20 00:43:49'),
(66, 'Mr Avinash', 'Hospitals', '8010196999', '', '', 'Sheikhpura', 'Patna', '2014-03-19 19:50:42'),
(67, 'Mr Rahul from South Gandhi Maidan', 'Pathology Labs', '9525369213', '', '', 'Sheikhpura', 'Patna', '2014-03-19 18:28:45'),
(68, 'Mr Sanjeev', 'Dialysis Centres', '9999809880', '', '', 'Sheikhpura', 'Patna', '2014-03-19 18:14:53'),
(69, 'Mr Vikram', 'Cardiologists', '9852722488', '', '', 'Sheikhpura', 'Patna', '2014-03-19 15:40:14'),
(70, 'Mr Naseef', 'Hospitals', '9473325304', '', '', 'Sheikhpura', 'Patna', '2014-03-19 07:44:40'),
(71, 'Mr Alok', 'Hospitals', '9470887222', '', '', 'Sheikhpura', 'Patna', '2014-03-19 07:29:58'),
(72, 'Mr Chandan Singh', 'Cardiologists', '8873519700', '', '', 'Sheikhpura', 'Patna', '2014-03-18 18:37:06'),
(73, 'Ms Swati', 'Neurosurgeons', '8102446179', '', '', 'Sheikhpura', 'Patna', '2014-03-18 14:20:50'),
(74, 'Mr Kumar', 'Neurosurgeons', '8292877768', '', '', 'Sheikhpura', 'Patna', '2014-03-18 13:42:45'),
(75, 'Mr Kumar', 'Gynaecologist & Obstetrician Doctors', '8969888188', '', '', 'Sheikhpura', 'Patna', '2014-02-21 20:20:15'),
(76, 'Mr Shahid', 'Cardiologists', '8507056060', '', '', 'Sheikhpura', 'Patna', '2014-03-16 11:13:56'),
(77, 'Mr Singh', 'Neurosurgeons', '8264983394', '', '', 'Sheikhpura', 'Patna', '2014-03-15 18:14:31'),
(78, 'Ms J Jasmin', 'Pathology Labs', '7277705898', '', '', 'Sheikhpura', 'Patna', '2014-03-14 20:44:13'),
(79, 'Mr R Kumar', 'Gynaecologist & Obstetrician Doctors', '9798347560', '', '', 'Sheikhpura', 'Patna', '2014-03-12 13:13:58'),
(80, 'Mr Dinesh', 'Neurosurgeons', '8291492655', '', '', 'Sheikhpura', 'Patna', '2014-03-12 11:55:20'),
(81, 'Mr Ajit Kumar Mishra', 'Hospitals', '9304001254', '', '', 'Sheikhpura', 'Patna', '2014-03-12 10:58:44'),
(82, 'Mr C Kumar', 'Neurosurgeons', '9939436971', '', '', 'Sheikhpura', 'Patna', '2014-03-12 09:42:34'),
(83, 'Mr Ahmed from Sheikhpura', 'Gynaecologist & Obstetrician Doctors', '9973745422', '6123091603', '', 'Sheikhpura', 'Patna', '2014-03-12 09:36:49'),
(84, 'Mr Praveen', 'Private Hospitals', '9924449983', '', '', 'Sheikhpura', 'Patna', '2014-03-12 07:20:02'),
(85, 'Mr Sharma', 'Cardiologists', '8376843094', '', '', 'Sheikhpura', 'Patna', '2014-03-11 13:35:44'),
(86, 'Mr Rajesh Ranjan', 'Cardiologists', '9608116130', '', '', 'Sheikhpura', 'Patna', '2014-03-11 12:51:27'),
(87, 'Mr Avinash', 'Hospitals', '7739405369', '', '', 'Sheikhpura', 'Patna', '2014-03-11 11:14:38'),
(88, 'Mr Mayank', 'Cardiologists', '8271491061', '', '', 'Sheikhpura', 'Patna', '2014-03-10 15:58:16'),
(89, 'Mr Ankit Patel', 'Hospitals', '8581805158', '', '', 'Sheikhpura', 'Patna', '2014-03-08 09:19:05'),
(90, 'Mr P Sharma', 'Cardiologists', '9800689306', '', '', 'Sheikhpura', 'Patna', '2014-03-05 17:03:59'),
(91, 'Mr Arindam', 'Gynaecologist & Obstetrician Doctors', '8334973000', '', '', 'Sheikhpura', 'Patna', '2014-03-05 15:47:12'),
(92, 'Ms Sweta Mishra', 'Hospitals', '8521323135', '', '', 'Sheikhpura', 'Patna', '2014-03-05 13:32:20'),
(93, 'Mr T Pratap', 'Cardiologists', '8083641431', '', '', 'Sheikhpura', 'Patna', '2014-03-04 20:35:54'),
(94, 'Mr Ravin', 'Hospitals', '8252219223', '', '', 'Sheikhpura', 'Patna', '2014-03-02 16:43:56'),
(95, 'Mr Kumar', 'Cardiologists', '9798285512', '', '', 'Sheikhpura', 'Patna', '2014-03-02 08:39:12'),
(96, 'Mr Deepak', 'Hospitals', '9953555029', '', '', 'Sheikhpura', 'Patna', '2014-03-01 14:47:07'),
(97, 'Dr P K Yadav', 'Cardiologists', '8804352511', '', '', 'Sheikhpura', 'Patna', '2014-03-01 08:59:27'),
(98, 'Mr Rinku', 'Neurosurgeons', '9507364208', '', '', 'Sheikhpura', 'Patna', '2014-02-28 16:47:01'),
(99, 'Mr Vijay', 'Cardiologists', '9693422542', '', '', 'Sheikhpura', 'Patna', '2014-02-28 08:27:23'),
(100, 'Mr K K Kaushik', 'Hospitals', '9350044441', '', '', 'Sheikhpura', 'Patna', '2014-02-28 02:36:50'),
(101, 'Mr Rahul Singh', 'Neurosurgeons', '7277913579', '', '', 'Sheikhpura', 'Patna', '2014-02-27 18:45:03'),
(102, 'Mr Rajan', 'Neurosurgeons', '8579813293', '', '', 'Sheikhpura', 'Patna', '2014-02-27 16:44:33'),
(103, 'Mr Rabi', 'Cardiologists', '8507726894', '', '', 'Sheikhpura', 'Patna', '2014-02-27 11:39:12'),
(104, 'Mr A Ranjan', 'Cardiologists', '9973226467', '', '', 'Sheikhpura', 'Patna', '2014-02-26 16:10:20'),
(105, 'Mr Rajvardhan Chauhan', 'Cardiologists', '8521999533', '', '', 'Sheikhpura', 'Patna', '2014-02-26 10:37:22'),
(106, 'Mr Rajvardhan Chauhan', 'Cardiologists', '9762012375', '', '', 'Sheikhpura', 'Patna', '2014-02-26 10:22:28'),
(107, 'Mr Pandey', 'Hospitals', '7542978507', '', '', 'Sheikhpura', 'Patna', '2014-02-24 20:36:48'),
(108, 'Mr Sonu', 'Cardiologists', '7677952994', '', '', 'Sheikhpura', 'Patna', '2014-02-24 20:35:30'),
(109, 'Mr Ramaswamy', 'Neurosurgeons', '8227936265', '', '', 'Sheikhpura', 'Patna', '2014-02-24 19:56:16'),
(110, 'Mr Arshad', 'Pathology Labs', '9311081163', '', '', 'Sheikhpura', 'Patna', '2014-02-24 15:31:19'),
(111, 'Mr Gautam from Boring Road', 'Gynaecologist & Obstetrician Doctors', '7277772937', '', '', 'Sheikhpura', 'Patna', '2014-02-24 13:54:59'),
(112, 'Mr Sawhney', 'Hospitals', '8860788396', '', '', 'Sheikhpura', 'Patna', '2014-02-24 00:55:25'),
(113, 'Ms Swati from Ashiana Nagar', 'Gynaecologist & Obstetrician Doctors', '9958809333', '61226154481', '', 'Sheikhpura', 'Patna', '2014-02-23 15:00:17'),
(114, 'Mr Dipak Kumar Pathak', 'Hospitals', '8757650877', '', '', 'Sheikhpura', 'Patna', '2014-02-23 12:09:33'),
(115, 'Mr Rahul', 'Hospitals', '9386854330', '', '', 'Sheikhpura', 'Patna', '2014-02-23 10:58:01'),
(116, 'Mr Kumar', 'Cardiologists', '9006382864', '', '', 'Sheikhpura', 'Patna', '2014-02-22 16:13:22'),
(117, 'Mr Chandan Kumar', 'Cardiologists', '9771495108', '', '', 'Sheikhpura', 'Patna', '2014-02-21 15:36:02'),
(118, 'Ms Aarti from Sheikhpura', 'Hospitals', '9472224189', '', '', 'Sheikhpura', 'Patna', '2014-02-20 20:26:28'),
(119, 'Mr Naveen from Boring Road', 'Pathology Labs', '8860611919', '', '', 'Sheikhpura', 'Patna', '2014-02-20 17:19:01'),
(120, 'Mr K Pandey', 'Hospitals', '7783862255', '', '', 'Sheikhpura', 'Patna', '2014-02-19 19:16:33'),
(121, 'Ms Sonal Singh', 'Neurosurgeons', '8986925827', '', '', 'Sheikhpura', 'Patna', '2014-02-19 18:13:25'),
(122, 'Mr Sanjay', 'Hospitals', '8005435694', '', '', 'Sheikhpura', 'Patna', '2014-02-19 17:55:04'),
(123, 'Mr Vishal', 'Pathology Labs', '8130401116', '', '', 'Sheikhpura', 'Patna', '2014-02-19 17:18:36'),
(124, 'Mr Kumar', 'Hospitals', '9939480282', '', '', 'Sheikhpura', 'Patna', '2014-02-18 16:27:48'),
(125, 'Mr Dilip', 'Cardiologists', '7870901059', '', '', 'Sheikhpura', 'Patna', '2014-02-17 14:20:59'),
(126, 'Ms Saba', 'Cardiologists', '9304018118', '', '', 'Sheikhpura', 'Patna', '2014-02-17 10:35:09'),
(127, 'Mr Vasudha', 'Cardiologists', '9830025483', '', '', 'Sheikhpura', 'Patna', '2014-02-16 18:20:35'),
(128, 'Mr P C Mahato', 'Pathology Labs', '9162296966', '', '', 'Sheikhpura', 'Patna', '2014-02-16 18:15:57'),
(129, 'Mr Amir', 'Neurosurgeons', '9608025527', '', '', 'Sheikhpura', 'Patna', '2014-02-16 13:10:08'),
(130, 'Ms Mahira', 'Hospitals', '7677980105', '', '', 'Sheikhpura', 'Patna', '2014-02-16 11:46:35'),
(131, 'Mr Ratul Kumar', 'Neurosurgeons', '9431602863', '', '', 'Sheikhpura', 'Patna', '2014-02-16 10:47:41'),
(132, 'Mr Pallav from Ashiana Nagar', 'Gynaecologist & Obstetrician Doctors', '7782050921', '7782050921', '', 'Sheikhpura', 'Patna', '2014-02-16 09:48:26'),
(133, 'Mr Rajesh', 'Cardiologists', '9693208358', '', '', 'Sheikhpura', 'Patna', '2014-02-16 09:41:33'),
(134, 'Mr Amitkumar', 'Cardiologists', '9987385295', '', '', 'Sheikhpura', 'Patna', '2014-02-15 21:21:44'),
(135, 'Mr Sharma', 'Hospitals', '9401865521', '', '', 'Sheikhpura', 'Patna', '2014-02-15 14:52:48'),
(136, 'Mr Bhagaswar', 'Cardiologists', '9431813571', '', '', 'Sheikhpura', 'Patna', '2014-02-15 13:16:56'),
(137, 'Mr Nitin', 'Pathology Labs', '8539043777', '', '', 'Sheikhpura', 'Patna', '2014-02-14 23:53:23'),
(138, 'Ms Deepa from Patliputra', 'Pathology Labs', '7503334017', '', '', 'Sheikhpura', 'Patna', '2014-02-14 08:50:03'),
(139, 'Mr Sanjeev', 'Hospitals', '9934247480', '', '', 'Sheikhpura', 'Patna', '2014-02-12 09:43:09'),
(140, 'Mr A Kumar', 'Gynaecologist & Obstetrician Doctors', '8271257983', '', '', 'Sheikhpura', 'Patna', '2014-02-12 08:01:20'),
(141, 'Mr Md Ali', 'Cardiologists', '9334301000', '', '', 'Sheikhpura', 'Patna', '2014-02-12 06:50:15'),
(142, 'Mr M Acharya', 'Neurosurgeons', '8292525721', '', '', 'Sheikhpura', 'Patna', '2014-02-11 19:56:39'),
(143, 'Mr Rajeev Kumar', 'Neurosurgeons', '9905443111', '', '', 'Sheikhpura', 'Patna', '2014-02-09 20:26:46'),
(144, 'Mr Yadav', 'General Surgeon Doctors', '9472483428', '', '', 'Sheikhpura', 'Patna', '2014-02-09 16:53:08'),
(145, 'Mr Asish Kumar', 'Hospitals', '9304468019', '', '', 'Sheikhpura', 'Patna', '2014-02-09 13:42:07'),
(146, 'Mr Rashni', 'Hospitals', '9934681308', '', '', 'Sheikhpura', 'Patna', '2014-02-07 18:43:54'),
(147, 'Mr Shekahar', 'Hospitals', '9566200487', '', '', 'Sheikhpura', 'Patna', '2014-02-07 14:36:50'),
(148, 'Mr K Kumar', 'Pathology Labs', '8409108042', '', '', 'Sheikhpura', 'Patna', '2014-02-07 08:48:18'),
(149, 'Mr Ajay Chaudhry', 'Hospitals', '8271659267', '', '', 'Sheikhpura', 'Patna', '2014-02-06 17:17:48'),
(150, 'Ms Priya', 'Hospitals', '8541807062', '', '', 'Sheikhpura', 'Patna', '2014-02-06 11:55:39'),
(151, 'Mr Anuj from Sheikhpura', 'Hospitals', '8271741649', '', '', 'Sheikhpura', 'Patna', '2014-02-05 18:10:40'),
(152, 'Mr Sonu from Sheikhpura', 'Gynaecologist & Obstetrician Doctors', '8252455569', '', '', 'Sheikhpura', 'Patna', '2014-02-05 11:10:09'),
(153, 'Mr Raja Singh', 'Cardiologists', '9006573124', '', '', 'Sheikhpura', 'Patna', '2014-02-05 08:17:09'),
(154, 'Mr Imam', 'Neurosurgeons', '8083345894', '', '', 'Sheikhpura', 'Patna', '2014-02-04 21:52:20'),
(155, 'Mr Anup Kumar', 'Neurosurgeons', '9771447084', '', '', 'Sheikhpura', 'Patna', '2014-02-04 18:16:58'),
(156, 'Mr Mukesh', 'Cardiologists', '9167233234', '', '', 'Sheikhpura', 'Patna', '2014-02-04 09:29:55'),
(157, 'Mr Dildar Khan', 'Hospitals', '7742065069', '', '', 'Sheikhpura', 'Patna', '2014-02-03 09:36:04'),
(158, 'Mr Manish from Sheikhpura', 'Hospitals', '9987955577', '', '', 'Sheikhpura', 'Patna', '2014-02-02 23:40:30'),
(159, 'Mr Shakir', 'Hospitals', '7631847317', '', '', 'Sheikhpura', 'Patna', '2014-02-02 14:53:18'),
(160, 'Mr Gupta', 'Cardiologists', '9973527352', '', '', 'Sheikhpura', 'Patna', '2014-02-02 11:23:44'),
(161, 'Mr Kundan Lal', 'Pathology Labs', '9011561515', '', '', 'Sheikhpura', 'Patna', '2014-02-02 11:19:53'),
(162, 'Mr Sonu from Patna Gpo', 'Neurosurgeons', '8826613166', '', '', 'Sheikhpura', 'Patna', '2014-02-02 07:59:25'),
(163, 'Mr Rajiv', 'Neurosurgeons', '9955466592', '', '', 'Sheikhpura', 'Patna', '2014-01-28 22:11:10'),
(164, 'Mr Singh', 'Hospitals', '8826844428', '', '', 'Sheikhpura', 'Patna', '2014-01-28 18:29:46'),
(165, 'Mr B Srivastav', 'Cardiologists', '8676828764', '', '', 'Sheikhpura', 'Patna', '2014-01-28 07:09:44'),
(166, 'Ms Priyanka', 'Private Hospitals', '9312526278', '', '', 'Sheikhpura', 'Patna', '2014-01-27 19:42:04'),
(167, 'Mr Pinak Dave', 'Pathology Labs', '9769390895', '', '', 'Sheikhpura', 'Patna', '2014-01-27 14:23:41'),
(168, 'Mr Manish', 'Cardiologists', '7352329381', '', '', 'Sheikhpura', 'Patna', '2014-01-27 10:26:17'),
(169, 'Mr Kumar', 'Cardiologists', '9693879223', '', '', 'Sheikhpura', 'Patna', '2014-01-26 12:18:05'),
(170, 'Mr Ashok Kumar', 'Cardiologists', '8083182542', '', '', 'Sheikhpura', 'Patna', '2014-01-25 14:55:26'),
(171, 'Mr Santunu', 'Hospitals', '7870854916', '', '', 'Sheikhpura', 'Patna', '2014-01-24 22:55:09'),
(172, 'Mr M Haque', 'Gynaecologist & Obstetrician Doctors', '9334337026', '', '', 'Sheikhpura', 'Patna', '2014-01-24 19:37:02'),
(173, 'Mr Amarendra', 'Hospitals', '8002794120', '', '', 'Sheikhpura', 'Patna', '2014-01-24 17:26:52'),
(174, 'Mr R K Shah', 'Neurosurgeons', '9800357968', '', '', 'Sheikhpura', 'Patna', '2014-01-24 17:24:56'),
(175, 'Mr Manish Kumar', 'Cardiologists', '8677909520', '', '', 'Sheikhpura', 'Patna', '2014-01-24 12:08:50'),
(176, 'Mr Jayanta', 'Gynaecologist & Obstetrician Doctors', '9504844334', '', '', 'Sheikhpura', 'Patna', '2014-01-23 21:56:57'),
(177, 'Mr Mohammed Taj', 'Hospitals', '8237867384', '', '', 'Sheikhpura', 'Patna', '2014-01-23 08:14:49'),
(178, 'Mr Arun Kumar', 'Cardiologists', '8873961717', '', '', 'Sheikhpura', 'Patna', '2014-01-22 17:55:31'),
(179, 'Mr Azam Ali', 'Gynaecologist & Obstetrician Doctors', '9576064353', '', '', 'Sheikhpura', 'Patna', '2014-01-22 15:29:29'),
(180, 'Ms Shreya', 'Gynaecologist & Obstetrician Doctors', '7762990308', '7762990308', '', 'Sheikhpura', 'Patna', '2014-01-22 12:29:38'),
(181, 'Mr Peter', 'Hospitals', '9534354910', '', '', 'Sheikhpura', 'Patna', '2014-01-22 11:54:37'),
(182, 'Mr Abhigyan from Kankarbagh', 'Neurosurgeons', '8863841829', '', '', 'Sheikhpura', 'Patna', '2014-01-22 08:01:14'),
(183, 'Mr Manish', 'Neurosurgeons', '9835581294', '', '', 'Sheikhpura', 'Patna', '2014-01-21 21:40:36'),
(184, 'Mr Surendra Singh', 'Cardiologists', '9801390025', '', '', 'Sheikhpura', 'Patna', '2014-01-21 18:09:15'),
(185, 'Mr Mohammad', 'Hospitals', '9279798929', '', '', 'Sheikhpura', 'Patna', '2014-01-20 13:23:34'),
(186, 'Ms Madhu from Sadaquat Ashram', 'Hospitals', '9883835941', '61230084282', '', 'Sheikhpura', 'Patna', '2014-01-20 11:37:52'),
(187, 'Mr Rehman', 'Cardiologists', '9903684836', '', '', 'Sheikhpura', 'Patna', '2014-01-19 19:56:47'),
(188, 'Mr T Rana', 'Gynaecologist & Obstetrician Doctors', '9470490828', '', '', 'Sheikhpura', 'Patna', '2014-01-19 10:44:19'),
(189, 'Mr Ritesh', 'Private Hospitals', '7766902400', '', '', 'Sheikhpura', 'Patna', '2014-01-19 09:27:31'),
(190, 'Mr Caller', 'Pathology Labs', '7276617053', '', '', 'Sheikhpura', 'Patna', '2014-01-18 15:35:06'),
(191, 'Mr Md Shahjaha', 'Neurosurgeons', '9631452571', '', '', 'Sheikhpura', 'Patna', '2014-01-18 12:50:12'),
(192, 'Mr Saluudinn', 'Cardiologists', '9709782603', '', '', 'Sheikhpura', 'Patna', '2014-01-16 21:29:32'),
(193, 'Mr Avinash', 'Cardiologists', '9199189658', '', '', 'Sheikhpura', 'Patna', '2014-01-16 17:04:27'),
(194, 'Mr Ranjan Kumar', 'Hospitals', '9852384076', '', '', 'Sheikhpura', 'Patna', '2014-01-16 11:19:29'),
(195, 'Mr Siddharth Pathak', 'Dialysis Centres', '9823354832', '', '', 'Sheikhpura', 'Patna', '2014-01-15 17:13:30'),
(196, 'Ms Priyanka', 'Hospitals', '9988369619', '', '', 'Sheikhpura', 'Patna', '2014-01-15 14:07:10');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
