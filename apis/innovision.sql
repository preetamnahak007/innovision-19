-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2019 at 07:28 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `innovision`
--

-- --------------------------------------------------------

--
-- Table structure for table `ca_selection_questions`
--

CREATE TABLE `ca_selection_questions` (
  `question_id` varchar(3) NOT NULL,
  `question` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ca_selection_questions`
--

INSERT INTO `ca_selection_questions` (`question_id`, `question`) VALUES
('q1', 'Name'),
('q2', 'E-mail'),
('q3', 'Contact'),
('q4', 'Institution'),
('q5', 'Course'),
('q6', 'Year of study'),
('q7', 'Positions of responsibility held in college'),
('q8', 'Have you ever been to Innovision earlier? When?'),
('q9', 'Write in brief about what you know about Innovision.'),
('q10', 'How many students do you think you can convince into bringing to Innovision this year? What\'s your strategy to promote Innovision?'),
('q11', 'Social Media platforms that you are active on?'),
('q12', 'Languages that you are fluent in'),
('q13', 'What makes you unique from others?');

-- --------------------------------------------------------

--
-- Table structure for table `ca_selection_responses`
--

CREATE TABLE `ca_selection_responses` (
  `ca_applicant_id` int(11) NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` varchar(50) NOT NULL,
  `q3` varchar(11) NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL,
  `q6` varchar(10) NOT NULL,
  `q7` mediumtext NOT NULL,
  `q8` mediumtext NOT NULL,
  `q9` mediumtext NOT NULL,
  `q10` mediumtext NOT NULL,
  `q11` mediumtext NOT NULL,
  `q12` mediumtext NOT NULL,
  `q13` mediumtext NOT NULL,
  `q14` mediumtext NOT NULL,
  `selected` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `inno_id` int(11) NOT NULL,
  `img_path` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `id` int(11) NOT NULL,
  `college_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`id`, `college_name`) VALUES
(1, 'VSSUT, Burla'),
(2, 'CET , Bhubaneswar'),
(3, 'ITER , BBSR');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `eid` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `description` longtext NOT NULL,
  `rules` longtext NOT NULL,
  `judging_criteria` longtext NOT NULL,
  `date` tinytext NOT NULL,
  `venue` mediumtext NOT NULL,
  `time` tinytext NOT NULL,
  `date1` tinytext NOT NULL,
  `time1` tinytext NOT NULL,
  `category` mediumtext NOT NULL,
  `coordinatorName1` tinytext NOT NULL,
  `coordinatorContact1` text NOT NULL,
  `coordinatorName2` tinytext NOT NULL,
  `coordinatorContact2` text NOT NULL,
  `loginId` varchar(20) DEFAULT NULL,
  `loginPassword` mediumtext DEFAULT NULL,
  `winner1` mediumtext DEFAULT NULL,
  `winner2` mediumtext DEFAULT NULL,
  `image_path` mediumtext DEFAULT NULL,
  `max_limit` int(11) NOT NULL DEFAULT -1,
  `filled` int(11) NOT NULL DEFAULT 0,
  `results_submitted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`eid`, `title`, `description`, `rules`, `judging_criteria`, `date`, `venue`, `time`, `date1`, `time1`, `category`, `coordinatorName1`, `coordinatorContact1`, `coordinatorName2`, `coordinatorContact2`, `loginId`, `loginPassword`, `winner1`, `winner2`, `image_path`, `max_limit`, `filled`, `results_submitted`) VALUES
(3, 'Event 1', 'Event 1', 'Event 1', 'Event 1', '2019-08-02', 'Event 1', '11:11', '2019-08-03', '22:22', 'Event 1', 'Event 1', 'Event 1', 'Event 1', 'Event 1', '123', '123', NULL, NULL, '../../../assets/images/events/eid_3.png', 1234, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `events_registration`
--

CREATE TABLE `events_registration` (
  `inno_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events_registration`
--

INSERT INTO `events_registration` (`inno_id`, `event_id`) VALUES
(4, 3),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `inno_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` text NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `college` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `paid` int(11) NOT NULL DEFAULT 0,
  `checked_in` int(11) NOT NULL DEFAULT 0,
  `user_password` varchar(100) NOT NULL,
  `qr_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`inno_id`, `name`, `gender`, `phone`, `email`, `college`, `address`, `paid`, `checked_in`, `user_password`, `qr_code`) VALUES
(4, 'innovision', 'male', 2147483647, 'inno@inno.com', 'VSSUT, Burla', 'NIT Rourkela', 0, 1, '25f9e794323b453885f5181f1b624d0b', '../../../assets/images/qrcodes/4.png'),
(5, 'test', 'female', 2147483647, 'test@test.com', 'VSSUT, Burla', 'NIT Rourkela', 0, 0, '25f9e794323b453885f5181f1b624d0b', '../../../assets/images/qrcodes/5.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ca_selection_responses`
--
ALTER TABLE `ca_selection_responses`
  ADD PRIMARY KEY (`ca_applicant_id`),
  ADD UNIQUE KEY `q2` (`q2`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`inno_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ca_selection_responses`
--
ALTER TABLE `ca_selection_responses`
  MODIFY `ca_applicant_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `inno_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
