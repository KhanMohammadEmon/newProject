-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2022 at 06:59 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edushare`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_name` varchar(50) NOT NULL,
  `a_email` varchar(50) NOT NULL,
  `a_gender` varchar(50) NOT NULL,
  `a_password` varchar(50) NOT NULL,
  `a_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_name`, `a_email`, `a_gender`, `a_password`, `a_date`) VALUES
('admin2', 'admin2@gmail.com', 'male', '123456', '2022-01-12'),
('admin3', 'admin3@gmail.com', ' Female', '123456', '2022-01-28'),
('admin', 'admin@gmail.com', 'male', '123456', '2021-12-15'),
('shad', 'shad@gmail.com', ' Female', '123456', '2022-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `after_verification`
--

CREATE TABLE `after_verification` (
  `S_no` int(11) NOT NULL,
  `uploader_name` varchar(50) NOT NULL,
  `uploader_email` varchar(50) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `after_verification`
--

INSERT INTO `after_verification` (`S_no`, `uploader_name`, `uploader_email`, `teacher_name`, `subject`, `type`, `link`) VALUES
(3, 'Abir Chowdhury', 'abir@gmail.com ', 'abir', 'math', ' MP4', 'https://www.youtube.com/watch?v=I86TArVgnNs'),
(4, 'Abir Chowdhury', 'abir@gmail.com ', 'adnan', 'math', ' MP4', 'https://www.youtube.com/watch?v=I86TArVgnNs'),
(6, 'Abir Chowdhury', 'abir@gmail.com ', 'abir', 'spl', ' MP4', 'https://www.youtube.com/watch?v=I86TArVgnNs'),
(7, 'rakib', 'rakib@gmail', 'sagor', 'math', 'pdf', 'https://www.youtube.com/watch?v=I86TArVgnNs'),
(11, 'Abir Chowdhury', 'abir@gmail.com ', 'monir', 'math', ' PDF', 'https://www.youtube.com/watch?v=I86TArVgnNs'),
(12, 'Abir Chowdhury', 'abir@gmail.com ', 'abir', 'oop', ' MP4', 'https://www.youtube.com/watch?v=I86TArVgnNs'),
(14, 'rakib', 'rakib@gmail', 'sagor', 'math', 'pdf', 'https://www.youtube.com/watch?v=I86TArVgnNs'),
(16, 'Abir Chowdhury', 'abir@gmail.com ', 'abir', 'math', ' JPG', 'https://www.youtube.com/watch?v=I86TArVgnNs'),
(17, 'shad', 'a@gmail.com ', 'Rubaiya Rahtin', 'AOOP', ' MP4', 'https://www.youtube.com/watch?v=6nOavbvFvbY&list=PLgH5QX0i9K3pCMBZcul1fta6UivHDbXvz'),
(18, 'shad', 'a@gmail.com ', 'Rubaiya Rahtin', 'DBMS', ' MP4', 'https://www.youtube.com/watch?v=6nOavbvFvbY&list=PLgH5QX0i9K3pCMBZcul1fta6UivHDbXvz');

-- --------------------------------------------------------

--
-- Table structure for table `ans_before_varification`
--

CREATE TABLE `ans_before_varification` (
  `S_no` int(11) NOT NULL,
  `qs_id` int(11) NOT NULL,
  `qs` varchar(255) NOT NULL,
  `ans_name` varchar(25) NOT NULL,
  `ans` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ans_before_varification`
--

INSERT INTO `ans_before_varification` (`S_no`, `qs_id`, `qs`, `ans_name`, `ans`) VALUES
(8, 1, 'sfad', 'abir', 'sdf');

-- --------------------------------------------------------

--
-- Table structure for table `before_verification`
--

CREATE TABLE `before_verification` (
  `S_no` int(11) NOT NULL,
  `uploader_name` varchar(50) NOT NULL,
  `uploader_email` varchar(50) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `link` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `before_verification`
--

INSERT INTO `before_verification` (`S_no`, `uploader_name`, `uploader_email`, `teacher_name`, `subject`, `type`, `link`) VALUES
(8, 'Abir Chowdhury', 'abir@gmail.com ', 'sdf', 'dfsa', ' MP4', 'https://www.youtube.com/watch?v=I86TArVgnNs');

-- --------------------------------------------------------

--
-- Table structure for table `carrier`
--

CREATE TABLE `carrier` (
  `no` int(11) NOT NULL,
  `uploder_name` varchar(50) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `details` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carrier`
--

INSERT INTO `carrier` (`no`, `uploder_name`, `topic`, `heading`, `details`) VALUES
(1, 'fsda', 'sdf', 'afds', 'df'),
(2, 'fds', 'fsd', 'sfa', 'sdf'),
(3, 'abir', 'math', 'matrix', 'like 2d array'),
(4, 'Jubayer Hossen', 'CSE', 'What Can You Do With A Computer Science Degree?', 'If you’ve studied computer science, you will have gained many technical and non-technical skills which are highly valued by employers, from leadership to programming.  The increasing scope of computer science means you have plenty of choice in a wide variety of highly specialized areas. \r\n\r\nComputer technologies are integral to modern life, so you’re likely to find your computer science skills in high demand across many different industries. These include financial organizations, management consultancy firms, software houses, communications companies, data warehouses, multinational companies, governmental agencies, universities and hospitals. \r\n\r\nAs always, it’s extremely beneficial to have completed relevant work experience. You should also consider compiling a portfolio of your own independent projects outside of your degree, which could be in the form of programming, moderating online or even building an app. This will demonstrate to employers your interest in the subject and your problem-solving skills, creativity and initiative.\r\n\r\nWorking in partnership with clients, an IT consultant advises clients on the planning, design, installation and usage of information technology systems to meet their business objectives, overcome problems or improve the structure and efficiency of their IT systems.\r\n\r\nAs you represent a broad role in IT, your job will be similar to that of systems analysts, systems designers and applications programmers, whose roles are more specialized but nonetheless work on a consultancy basis.\r\n\r\nYou may also become involved in sales and business development, identifying potential clients and maintaining good business contacts. There is fierce competition in this role, so gaining work experience in a commercial environment would help increase your prospects.'),
(5, 'Jubayer Hossen', 'EEE', 'What is EEE?', 'fbhsdbjkfnsjkdmflksm mkoksmfoksdlfdskfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdslf sopdkfiojskdiofjisod idjsfiojsidofjk sdjkfiopsdopfksodkfopskdopfksopdkf osdkfops dopfksopkfopskdopfksopdkfops dfo kiosdfiojiosdjfiojs ijfiosjdfiosjdiofjsiojfiosdj fsdjkfiopskdopfksopdf iojf iojsdof sdof ops kfsdkfopopsdofl');

-- --------------------------------------------------------

--
-- Table structure for table `quize`
--

CREATE TABLE `quize` (
  `S_no` int(11) NOT NULL,
  `course` varchar(50) NOT NULL,
  `topic` varchar(50) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quize`
--

INSERT INTO `quize` (`S_no`, `course`, `topic`, `link`) VALUES
(2, 'spl', 'for loop', 'https://docs.google.com/forms/d/16ynfrN1z_DzU4SOHZ4GEhJMlckzH5D03CIWqp5EYiMI/edit'),
(3, 'oop', 'arraylist', 'https://docs.google.com/forms/d/16ynfrN1z_DzU4SOHZ4GEhJMlckzH5D03CIWqp5EYiMI/edit'),
(4, 'sad', 'diagram', 'https://docs.google.com/forms/d/1n2aYerNowg5u88lSjudkLOiEgGPe1w3a4sA8KHh5O_Q/edit'),
(5, '', '', ''),
(6, 'Math', 'Matrix', 'https://forms.gle/3j3vcJY9gaznJYCi8'),
(7, 'Math', 'Matrix', 'https://forms.gle/3j3vcJY9gaznJYCi8');

-- --------------------------------------------------------

--
-- Table structure for table `req_qs`
--

CREATE TABLE `req_qs` (
  `S_no` int(11) NOT NULL,
  `User_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `qs` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `req_qs_accept`
--

CREATE TABLE `req_qs_accept` (
  `S_no` int(11) NOT NULL,
  `User_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `qs` varchar(255) NOT NULL,
  `ans_name` varchar(50) NOT NULL,
  `ans` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `req_qs_accept`
--

INSERT INTO `req_qs_accept` (`S_no`, `User_name`, `user_email`, `qs`, `ans_name`, `ans`) VALUES
(2, 'Abir Chowdhury', 'abir@gmail.com', 'what is php?\r\n                                            ', 'abir', 'PHP is a widely-used, open source scripting language '),
(19, 'Abir Chowdhury', 'abir@gmail.com', 'what is php?\r\n                                            ', 'None', 'None'),
(29, 'shad', 'afdsf', 'html', 'Abir Chowdhury', 'language'),
(30, 'chowdhury', 'fsajfa', 'java', 'Abir Chowdhury', 'progamming'),
(31, 'shad', 'afdsf', 'html', 'Abir Chowdhury', 'hypertxt'),
(32, 'shad', 'afdsf', 'html', 'Abir Chowdhury', 'language'),
(33, 'shad', 'afdsf', 'html', 'Abir Chowdhury', 'hypertxt'),
(34, 'chowdhury', 'fsajfa', 'java', 'Abir Chowdhury', 'progamming'),
(35, 'Abir Chowdhury', 'abir@gmail.com', 'what is php?\r\n                                            ', 'Abir Chowdhury', 'is a language'),
(36, 'Abir Chowdhury', 'abir@gmail.com', 'what is php?\r\n                                            ', 'Abir Chowdhury', 'is a website'),
(37, 'Abir Chowdhury', 'abir@gmail.com', 'what is math?\r\n                                            ', 'Abir Chowdhury', 'math is very hard'),
(38, 'Abir Chowdhury', 'abir@gmail.com', 'what is math?\r\n                                            ', 'Abir Chowdhury', 'math is nice'),
(39, 'Abir Chowdhury', 'abir@gmail.com', 'what is oop?\r\n                                            ', 'Abir Chowdhury', 'progrem'),
(40, 'shad', 'a@gmail.com', 'what is biology?', 'shad', 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_name` varchar(50) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_gender` varchar(50) NOT NULL,
  `u_password` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_name`, `u_email`, `u_gender`, `u_password`, `date`) VALUES
('shad', 'a@gmail.com', 'Female', '1234', '2021-12-10'),
('Abir Chowdhury', 'abir@gmail.com', 'Male', '1234ff', '2021-12-11'),
('Chowdhury', 'c@gmail.com', 'male', '1234', '2021-12-01'),
('user', 'user@gmail.com', 'male', '1234', '2021-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE `user_feedback` (
  `S_no` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `feedback` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`S_no`, `user_name`, `u_email`, `feedback`) VALUES
(1, 'abir', 'user@gmail.com', 'good work'),
(3, 'Shad', 'user@gmail.com', 'improve UI'),
(5, 'Abir Chowdhury', 'abir@gmail.com', 'show mark on quiz\r\n                                            '),
(9, 'Abir Chowdhury', 'abir@gmail.com', 'dfsafk\r\n                                            '),
(10, 'shad', 'a@gmail.com', 'This is very good website\r\n                                            ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_email`);

--
-- Indexes for table `after_verification`
--
ALTER TABLE `after_verification`
  ADD PRIMARY KEY (`S_no`);

--
-- Indexes for table `ans_before_varification`
--
ALTER TABLE `ans_before_varification`
  ADD PRIMARY KEY (`S_no`);

--
-- Indexes for table `before_verification`
--
ALTER TABLE `before_verification`
  ADD PRIMARY KEY (`S_no`);

--
-- Indexes for table `carrier`
--
ALTER TABLE `carrier`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `quize`
--
ALTER TABLE `quize`
  ADD PRIMARY KEY (`S_no`);

--
-- Indexes for table `req_qs`
--
ALTER TABLE `req_qs`
  ADD PRIMARY KEY (`S_no`);

--
-- Indexes for table `req_qs_accept`
--
ALTER TABLE `req_qs_accept`
  ADD PRIMARY KEY (`S_no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_email`);

--
-- Indexes for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD PRIMARY KEY (`S_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `after_verification`
--
ALTER TABLE `after_verification`
  MODIFY `S_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `ans_before_varification`
--
ALTER TABLE `ans_before_varification`
  MODIFY `S_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `before_verification`
--
ALTER TABLE `before_verification`
  MODIFY `S_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `carrier`
--
ALTER TABLE `carrier`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quize`
--
ALTER TABLE `quize`
  MODIFY `S_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `req_qs`
--
ALTER TABLE `req_qs`
  MODIFY `S_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `req_qs_accept`
--
ALTER TABLE `req_qs_accept`
  MODIFY `S_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user_feedback`
--
ALTER TABLE `user_feedback`
  MODIFY `S_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
