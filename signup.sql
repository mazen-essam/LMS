-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 11, 2023 at 02:51 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signup`
--

-- --------------------------------------------------------

--
-- Table structure for table `cources_table`
--

DROP TABLE IF EXISTS `cources_table`;
CREATE TABLE IF NOT EXISTS `cources_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `code` varchar(30) NOT NULL,
  `statuss` varchar(30) NOT NULL,
  `assigned_instructor` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ;

--
-- Dumping data for table `cources_table`
--

INSERT INTO `cources_table` (`id`, `name`, `code`, `statuss`, `assigned_instructor`) VALUES
(9, 'css', '201a', 'active', ''),
(10, 'cython', 'asd4', 'active', ''),
(12, 'c#', 'aa3', 'active', '');

-- --------------------------------------------------------

--
-- Table structure for table `courses_student`
--

DROP TABLE IF EXISTS `courses_student`;
CREATE TABLE IF NOT EXISTS `courses_student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `course_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code` varchar(50) NOT NULL,
  `grad` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `courses_student`
--

INSERT INTO `courses_student` (`id`, `name`, `course_name`, `code`, `grad`) VALUES
(11, 'ahmed mohamed', 'c++', 'c5041', 20),
(3, 'ss', 'ssssssssssss', 'ssss', 50),
(10, 'newwwwwwww', 'wwwww', 'www', 120),
(5, 'ss', 'ssssssssssss', 'ssss', 12),
(6, 'ss', 'ssssssssssss', 'ssss', 12),
(7, 'ss', 'ssssssssssss', 'ssss', 12),
(8, 'test', 'test', 'sss', 0),
(9, 'asdasd', 'asdasdasd', 'asdasd', 90),
(12, 'ezzat', 'python', 'ss3', 30);

-- --------------------------------------------------------

--
-- Table structure for table `ins_login`
--

DROP TABLE IF EXISTS `ins_login`;
CREATE TABLE IF NOT EXISTS `ins_login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `statuss` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ins_login`
--

INSERT INTO `ins_login` (`id`, `statuss`, `email`, `password`, `phone`, `type`) VALUES
(1, 'very active', 'waledali@gmail.com', 'asdfAS9999', '01120093197', 'instructor'),
(6, 'active', 'sdfsdfsdfsdf@gmail.c', 'asdfASX123', '021968790', 'instructor'),
(7, 'active', 'samer@gmail.com', 'asdasdasdc', '021968790', 'instructor');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `statuss` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(12) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `statuss`, `email`, `password`, `phone`, `type`) VALUES
(1, 'ezzat', 'ezzatali91@yahoo.com', 'asdfAS1234', '0', ''),
(2, 'wwwww', 'ezzatali907@gmail.com', 'asdfAS1234', 'asdas123', ''),
(3, 'active', 'delhab2011@gmail.com', 'asdfAS1233', '+20093197', ''),
(4, 'active', 'ezzatali908@gmail.com', 'asdfAS1235', '01234567893', 'admin'),
(5, 'active', 'ezzatali908@gmail.com', 'asdfAS4567', '021234987', 'admin'),
(6, 'active', 'ezzatali908@gmail.com', 'asdfAS1324', '0123459785', 'admin'),
(7, 'active', 'delhab2015@gmail.com', 'asdfAS1234', '+20093197', 'admin'),
(8, 'active', 'ezzatali906@mail.com', 'sadf1123aA', '123459875', 'admin'),
(9, 'active', 'azzatali906@mail.com', 'asdfAS1234', '0123456789', 'admin'),
(10, 'active', 'admin2222@gmail.com', 'aa11ss22ddA', '01234546711', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

DROP TABLE IF EXISTS `student_login`;
CREATE TABLE IF NOT EXISTS `student_login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `statuss` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`id`, `statuss`, `email`, `password`, `phone`, `type`) VALUES
(1, 'active', 'ezzatali906@mail.com', 'asdfAS1234', '01120093197', 'student'),
(2, 'active', 'ezzatali906@mail.com', 'asdfAS1234', '0123459875', 'admin'),
(3, 'active', 'ezzatali906@mail.com', 'asdfAS123456', '+20093197', 'admin'),
(4, 'active', 'studernt22@gmail.com', 'zxcvAS1239', '002228910', 'student');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
