-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2024 at 11:01 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dept`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_name`, `password`) VALUES
(210518, 'Anto F', '17/06/2003');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `co_id` int(10) NOT NULL AUTO_INCREMENT,
  `course_code` text NOT NULL,
  `name` text NOT NULL,
  `type` text NOT NULL,
  `year` text NOT NULL,
  `credit` int(10) NOT NULL,
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`co_id`, `course_code`, `name`, `type`, `year`, `credit`) VALUES
(1, 'LT114', 'Tamil-I', 'Theory', '1-1', 2),
(2, 'LE115AT', 'English-I', 'Theory', '1-1', 2),
(3, 'AM114C', 'Allied Mathematics-I', 'Theory', '1-1', 3),
(4, 'CS120', 'Problem Solving Techniques', 'Theory', '1-1', 3),
(5, 'CS121', 'Web Development Using HTML', 'Theory', '1-1', 3),
(6, 'VE105A1', 'Value Education', 'Theory', '1-1', 2),
(7, 'SK104', 'Communication Skills', 'Theory', '1-1', 2),
(8, 'CE103', 'Communicative English-I', 'Theory', '1-1', 3),
(9, 'LE115AP', 'Computer Programming with C Lab', 'Lab', '1-1', 2),
(10, 'PCS108', 'PRACTICAL-I:Web Development Using HTML', 'Lab', '1-1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE IF NOT EXISTS `hall` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hall_name` varchar(100) NOT NULL,
  `building_name` varchar(100) NOT NULL,
  `capability` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`id`, `hall_name`, `building_name`, `capability`) VALUES
(1, 'Pop-Francis hall', 'Bisentery Building', '200'),
(2, 'Mother Therasa', 'Bisentery Building', '200'),
(3, 'Abragama Painnaparame ', 'Bisentery Building', '200'),
(4, 'Kamaraja Arangam', 'Arangam', '1500'),
(5, 'Carrono Hall', 'Main Buinding Opposite', '400');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `message`, `time`) VALUES
(11, 'Workshop About Mechine Learning', 'Its very useful for Learning About the Meachine Language', '2024-02-18 09:00:00'),
(12, 'Career Fair 2024', 'Career Fair 2024 job test and distribution will be held in Jain college, Feb 28. 2024', '2024-02-28 09:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `session` varchar(50) NOT NULL,
  `year` varchar(10) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `roll` int(10) NOT NULL,
  `individual_result` text NOT NULL,
  `total_result` double NOT NULL,
  `grade` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `name`, `session`, `year`, `semester`, `roll`, `individual_result`, `total_result`, `grade`) VALUES
(1, 'Priyadharshini D', '2023-2026', '1st', 'Odd', 230501, 'LT114-3.00,LE115AT-3.25,AM114C-3.75,CS120-3.25,CS121-3.25,VE105A1-3.25,SK104-3.5,LE115AP-3.20,PCS108-3.5', 3.43, 'B+'),
(2, 'Arun P', '2023-2026', '1st', 'Odd', 230502, 'LT114-3.00,LE115AT-3.25,AM114C-3.75,CS120-3.25,CS121-3.25,VE105A1-3.25,SK104-3.5,LE115AP-3.20,PCS108-3.5', 3.43, 'B+'),
(3, 'Devadharshini K', '2023-2026', '1st', 'Odd', 230503, 'LT114-3.00,LE115AT-3.25,AM114C-3.75,CS120-3.25,CS121-3.25,VE105A1-3.25,SK104-3.5,LE115AP-3.20,PCS108-3.5', 3.43, 'B+'),
(4, 'Lalli Shee S', '2023-2026', '1st', 'Odd', 230504, 'LT114-3.00,LE115AT-3.25,AM114C-3.75,CS120-3.25,CS121-3.25,VE105A1-3.25,SK104-3.5,LE115AP-3.20,PCS108-3.5', 3.43, 'B+'),
(5, 'Venkatesh S', '2023-2026', '1st', 'Odd', 230505, 'LT114-3.00,LE115AT-3.25,AM114C-3.75,CS120-3.25,CS121-3.25,VE105A1-3.25,SK104-3.5,LE115AP-3.20,PCS108-3.5', 3.43, 'B+'),
(6, 'Priya E', '2022-2025', '2nd', 'Odd', 220501, 'Eng111-3.50,Math111-3.75,Chem111-2.75,CSE111-3.75,CSE112-3.25,CSE121-3.25,CSE122-3.5,APEE131-3.00,APEE132-3.5', 3.5, 'A-'),
(7, 'Lenus William M', '2022-2025', '2nd', 'Odd', 220502, 'Eng111-3.00,Math111-3.25,Chem111-3.75,CSE111-3.25,CSE112-3.25,CSE121-3.25,CSE122-3.5,APEE131-3.20,APEE132-3.5', 3.43, 'B+'),
(8, 'Karthikeyan M', '2022-2025', '2nd', 'Odd', 220503, 'Eng111-3.25,Math111-3.25,Chem111-3.50,CSE111-3.25,CSE112-3.25,CSE121-3.75,CSE122-3.5,APEE131-3.50,APEE132-3.25', 3.35, 'B+'),
(9, 'Bharathiraja A', '2022-2025', '2nd', 'Odd', 220504, 'Eng111-3.75,Math111-3.75,Chem111-3.5,CSE111-3.25,CSE112-3.25,CSE121-3.25,CSE122-3.5,APEE131-3.70,APEE132-3.75', 3.68, 'A-'),
(10, 'Rathinavel Rajan S', '2022-2025', '2nd', 'Odd', 220505, 'Eng111-3.50,Math111-3.75,Chem111-2.75,CSE111-4.00,CSE112-3.75,CSE121-3.75,CSE122-3.5,APEE131-3.75,APEE132-3.5', 3.76, 'A'),
(11, 'Subashree N', '2021-2024', '3rd', 'Odd', 210501, 'Eng11-3.00,Math11-3.25,Chem11-3.75,CSE11-3.25,CSE12-3.25,CSE21-3.25,CSE22-3.5,APEE31-3.20,APEE32-3.5', 3.43, 'B+'),
(12, 'Poovarasan S', '2021-2024', '3rd', 'Odd', 210502, 'Eng11-3.00,Math11-3.25,Chem11-3.75,CSE11-3.25,CSE12-3.25,CSE11-3.25,CSE12-3.5,APEE31-3.20,APEE32-3.5', 3.43, 'B+'),
(13, 'Gugan R', '2021-2024', '3rd', 'Odd', 210503, 'Eng11-3.00,Math11-3.25,Chem11-3.75,CSE11-3.25,CSE12-3.25,CSE21-3.25,CSE22-3.5,APEE31-3.20,APEE32-3.5', 3.43, 'B+'),
(14, 'Raymond Raj Y', '2021-2024', '3rd', 'Odd', 210505, 'Eng11-3.00,Math11-3.25,Chem11-3.75,CSE11-3.25,CSE12-3.25,CSE21-3.25,CSE22-3.5,APEE31-3.20,APEE32-3.5', 3.43, 'B+'),
(15, 'Mariya Jestin J', '2021-2024', '3rd', 'Odd', 210506, 'Eng11-3.00,Math11-3.25,Chem11-3.75,CSE11-3.25,CSE12-3.25,CSE21-3.25,CSE22-3.5,APEE31-3.20,APEE32-3.5', 3.43, 'B+');


-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `room_id` int(10) NOT NULL AUTO_INCREMENT,
  `room_no` int(10) NOT NULL,
  `room_name` text NOT NULL,
  `room_type` text NOT NULL,
  `room_capacity` int(10) NOT NULL,
  PRIMARY KEY (`room_id`),
  KEY `room_no` (`room_no`),
  KEY `room_id` (`room_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_no`, `room_name`, `room_type`, `room_capacity`) VALUES
(1, 0501, 'Head of Depertment cabin', 'cabin', 15),
(2, 0502, 'Teachers Cabin', 'Cabine', 5),
(3, 0503, 'GCC Lab-1', 'Lab', 60),
(4, 0504, 'GCC Lab-2', 'Lab', 50),
(5, 0505, 'Presentation hall', 'Hall', 60),
(6, 0506, '1st Year Class room', 'room', 55),
(7, 0507, '2nd Year Class room', 'room', 55),
(8, 0508, '3rd Year Class room', 'room', 55),
(9, 0509, 'Women Shell', 'Refreshment room', 2),
(10, 0510, 'Students common room', 'cabine', 10);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `s_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `roll` varchar(10) NOT NULL,
  `session` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `hall_id` int(10) DEFAULT NULL,
  `gpa` double DEFAULT NULL,
  PRIMARY KEY (`s_id`,`roll`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `name`, `roll`, `session`, `year`, `hall_id`, `gpa`) VALUES
(01, 'SubaShree', '210501', '2021-2024', 'Third', 4, 3),
(02, 'Poovarasan S', '210502', '2021-2024', 'Third', 4, 4),
(03, 'Gugan R', '210503', '2021-2024', 'Third', 1, 4),
(04, 'Joshava Victor', '210504', '2021-2024', 'Third', 1, 4),
(05, 'Raymond Raj', '210505', '2021-2024', 'Third', 10, 2),
(06, 'Mariya Justin J', '210506', '2021-2024', 'Third', 2, 4),
(07, 'Amale Jeshrune', '210507', '2021-2024', 'Third', 6, 2),
(08, 'Udaya Kumar', '210508', '2021-2024', 'Third', 4, 3),
(09, 'Baptice JohnBosco', '210509', '2021-2024', 'Third', 2, 4),
(10, 'Prasanthe D', '210510', '2021-2024', 'Third', 8, 5),
(11, 'Brinda V', '210511', '2021-2024', 'Third', 10, 0),
(12, 'Keerthika', '210512', '2021-2024', 'Third', 6,4),
(13, 'Kamash', '210513', '2021-2024', 'Third', 1,5),
(14, 'Sathiya Priya', '210514', '2021-2024', 'Third', 7,2),
(15, 'Sathiya', '210515', '2021-2024', 'Third', 6, 2),
(16, 'Thrisha', '210516', '2021-2024', 'Third', 10, 3),
(17, 'SanthoshKumar D', '210517', '2021-2024', 'Third', 1, 3),
(18, 'Anto F', '210518', '2021-2024', 'Third', 6, 5),
(19, 'Brinda R', '210519', '2021-2024', 'Third', 7, 5),
(20, 'Murugan S', '210520', '2021-2024', 'Third', 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE IF NOT EXISTS `student_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Permanent_address` varchar(100) NOT NULL,
  `present_address` varchar(100) NOT NULL,
  `fathers_name` varchar(50) NOT NULL,
  `mothers_name` varchar(50) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `ssc_gpa` double NOT NULL,
  `hsc_gpa` double NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`id`, `permanent_address`, `Present_address`, `fathers_name`, `mothers_name`, `mobile`,  `ssc_gpa`, `hsc_gpa`) VALUES
(1, 'Tirupattur', 'Tirupattur', 'abdus Samad', 'Setara Begum', '017463685', 3, 4),
(2, 'Tirupattur', 'Tirupattur', 'Md. Josim Uddin', 'Nargis Begum', '4511551545', 2, 4,),
(3, 'Tirupattur', 'Tirupattur', 'Abul Kashem', 'Jannatul Ferdous', '0192377', 2, 4,),
(4, 'Tirupattur', 'Tirupattur', 'Md.Jabed', 'Momtaz Shuva', '01832559823', 2, 5),
(5, 'Tirupattur', 'Tirupattur', 'Akram Ali', 'Zerina Begum', '0176516091', 2, 4),
(6, 'Tirupattur', 'Tirupattur', 'Abdus Sattar', 'Shamima', '0175648986', 4, 3.85),
(7, 'Tirupattur', 'Tirupattur', 'Josim Uddin', 'Fatema Begum', '0183257834', 2, 4),
(8, 'Tirupattur', 'Tirupattur', 'Zoynal Abedin', 'Jahanara begum', '0192479753', 2, 4),
(9, 'Tirupattur', 'Tirupattur', 'Abdul Kuddus', 'Rehena Begum', '0192347754', 4, 3.55),
(10, 'Tirupattur', 'Tirupattur', 'Md.Mostofa', 'Suraiya Begum ', '0174379765', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `t_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(100) NOT NULL,
  `qualification` text NOT NULL,
  `course` varchar(250) NOT NULL,
  `research` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`t_id`, `name`, `type`, `qualification`, `course`, `research`, `status`) VALUES 

(1, 'Mariya AntonyRaj', 'Principal', 'M.Sc', 'Database Management Systems,\nDigital Signal Processing', 'N/A', 'Present'),
(2, 'DharamaDevi', 'Professor', 'M.Sc', 'Web Development Using HTML,\nWeb Development Using HTML Lab', 'N/A' , 'Present'),
(3, 'Selva Perumal', 'Professor', 'M.Sc', 'Programming in Java,\nProgramming in Python', 'N/A', 'Present'),
(4, 'Logeshwari', 'Professor', 'M.Sc', 'Digital Image Processing,\nDigital Image Processing Lab', 'N/A', 'Present'),
(5, 'Vigneshwaran', 'Professor', 'M.Sc', 'Programming With C,\nComputer Networks,\nMobile Application', 'N/A', 'Present');
-- --------------------------------------------------------

--
-- Table structure for table `teacher_login`
--

CREATE TABLE IF NOT EXISTS `teacher_login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `password` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `teacher_login`
--

INSERT INTO `teacher_login` (`id`, `user_name`, `password`) VALUES
(1, 'DharamaDevi', 'Staff@01'),
(2, 'Selva Purumal', 'Staff@02'),
(3, 'Vigneshwaran', 'Staff@03'),
(4, 'Logeshwari', 'Staff@04'),
(5, 'Ramya', 'Staff@05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fathers_name` varchar(50) NOT NULL,
  `mothers_name` varchar(50) NOT NULL,
  `present_address` text NOT NULL,
  `permanent_address` text NOT NULL,
  `age` varchar(10) NOT NULL,
  `roll_number` varchar(10) NOT NULL,
  `session` varchar(15) NOT NULL,
  `year` varchar(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  UNIQUE KEY `email` (`email`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `fathers_name`, `mothers_name`, `present_address`, `permanent_address`, `age`, `roll_number`, `session`, `year`, `image`) VALUES
(18, 'Anto F', 'antomass1724@gmail.com', '17/06/2003', 'Francis A', 'Francis Mary M', 'Tirupattur', 'Salem', '20', '210518', '2021-2024', '3rd', 'pics/masumcse2012@gmail.com.jpg');



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
