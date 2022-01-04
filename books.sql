-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2022 at 06:10 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `author_name`) VALUES
(427, 'susmita1'),
(428, 'Kazi Aftabur Rahman palak'),
(429, 'Kazi Abudur Rahman'),
(430, 'Afrin Rahman'),
(433, 'Reza Alam'),
(434, 'Sojib Hossain'),
(435, 'Nowshin Laila'),
(436, 'susmita'),
(437, '');

-- --------------------------------------------------------

--
-- Table structure for table `book_info`
--

CREATE TABLE `book_info` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `series_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `publication_date` date NOT NULL,
  `language_name` varchar(255) NOT NULL,
  `syllabus_id` int(11) NOT NULL,
  `book_price` decimal(10,2) NOT NULL,
  `book_image` varchar(255) NOT NULL,
  `author_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_info`
--

INSERT INTO `book_info` (`book_id`, `book_name`, `author_name`, `series_id`, `subject_id`, `publisher_id`, `publication_date`, `language_name`, `syllabus_id`, `book_price`, `book_image`, `author_image`) VALUES
(23, 'Harry Potter caroused child ', 'susmita Sen aftab', 1, 1, 1, '2021-10-02', 'bangla4', 1, '400.00', '1456fb.jpg', '2505banner_foodcombo+-yellow-nov_2021.jpg'),
(26, 'Harry Potter caroused child', 'susmita', 1, 6, 3, '2021-08-04', 'bangla', 2, '300.00', '8494Screenshot_1.png', '8607design-1.png'),
(27, 'Harry Potter caroused', 'susmita', 1, 0, 0, '2022-01-27', 'bangla4', 0, '700.00', '1906dad1.png', '7551design-1.png'),
(28, 'Ram', 'Kazi Aftabur Rahman', 1, 5, 0, '0000-00-00', 'English', 0, '300.00', '81581.jpg', '61984.jpg'),
(29, 'Harry Potter caroused child', 'Sojib', 0, 0, 0, '2021-10-02', 'bangla3', 0, '400.00', '9667IMG-20211108-WA0001.jpg', '2925IMG-20211108-WA0004.jpg'),
(30, 'Carnel', 'Aftab', 4, 1, 7, '2022-01-11', 'English', 1, '10000.00', '33341.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `publisher_name`, `address`, `phone`, `email`) VALUES
(1, 'boibichitra x', '6 kolabagan', '01711241125', 'aftab267@gmail.com'),
(2, 'boibichitra', '6 kolabagan', '01711241125', 'aftab267@gmail.com'),
(3, 'boibichitra', '6 kolabagan road', '01711241125', 'aftab267@gmail.com'),
(4, 'boibichitra', '6 kolabagan', '017112411256', 'aftab267@gmail.com'),
(7, 'jan kodh', '18 sobanbagh', '01711254878', 'ad@gmail.com'),
(8, 'boibichitra', '6 kolabagan', '01711241125', 'ad@gmail.com'),
(9, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `series_id` int(11) NOT NULL,
  `series_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`series_id`, `series_name`) VALUES
(1, 'goosbump'),
(4, 'Tofel'),
(5, 'harry potter'),
(6, 'Tom gates'),
(7, 'tom gates'),
(8, 'goosbump'),
(9, '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`) VALUES
(1, 'Chemistry  2'),
(3, 'Physics'),
(4, 'Biology'),
(5, 'Marketing'),
(6, 'Biology'),
(7, 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `syllabus_id` int(11) NOT NULL,
  `syllabus_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`syllabus_id`, `syllabus_name`) VALUES
(1, 'Class 1'),
(2, 'Class 2'),
(4, 'O-level'),
(5, 'A-level');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `book_info`
--
ALTER TABLE `book_info`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`series_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`syllabus_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=438;

--
-- AUTO_INCREMENT for table `book_info`
--
ALTER TABLE `book_info`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `syllabus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
