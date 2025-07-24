-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2021 at 06:39 AM
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
-- Database: `library4`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(10) NOT NULL,
  `Book_id` varchar(30) COLLATE utf8_bin NOT NULL,
  `Book_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `Book_img` varchar(30) CHARACTER SET latin1 NOT NULL,
  `Book_catagory` enum('การ์ตูน','สารคดี') COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `Book_id`, `Book_name`, `Book_img`, `Book_catagory`) VALUES
(111, '112', '1221', 'Upload2021092534509.PNG', 'การ์ตูน'),
(112, '12311', '121', 'Upload202109259444.jpg', 'การ์ตูน'),
(113, '22', '22', 'Upload202110047272.png', 'การ์ตูน');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_book`
--

CREATE TABLE `borrow_book` (
  `borrow_id` int(10) NOT NULL,
  `men_stu_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `Book_id` int(20) NOT NULL,
  `Book_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `Book_catagory` varchar(20) COLLATE utf8_bin NOT NULL,
  `borrow_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `borrow_book`
--

INSERT INTO `borrow_book` (`borrow_id`, `men_stu_id`, `Book_id`, `Book_name`, `Book_catagory`, `borrow_date`) VALUES
(10, '1321', 112, '1221', 'การ์ตูน', '2021-10-14'),
(12, '1321', 112, '1221', 'การ์ตูน', '2021-10-04'),
(13, '1', 112, '1221', 'การ์ตูน', '2021-10-05'),
(14, '13345544', 112, '1221', 'การ์ตูน', '2021-10-06'),
(15, '13345544', 112, '1221', 'การ์ตูน', '2021-10-05');

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `ID` int(11) NOT NULL,
  `Lib_id` int(10) NOT NULL COMMENT 'รหัสเจ้าหน้าที',
  `Lib_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `Lib_tel` varchar(10) COLLATE utf8_bin NOT NULL,
  `Lib_birth` text COLLATE utf8_bin NOT NULL COMMENT 'รหัสผ่าน\r\n',
  `dev` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`ID`, `Lib_id`, `Lib_name`, `Lib_tel`, `Lib_birth`, `dev`) VALUES
(1, 1050, 'Tanutchapol tipsoon', '132131', '19/02/2547', ''),
(2, 1, 'Tanutchapol tipsoon', '', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mem_id` int(10) NOT NULL,
  `men_stu_id` varchar(20) COLLATE utf8_bin NOT NULL,
  `mem_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `mem_for` enum('เด็กชาย','เด็กหญิง','นาย','นางสาว','นาง') COLLATE utf8_bin NOT NULL,
  `mem_class` enum('ป.1','ป.2','ป.3','ป.4','ป.5','ป.6','อ.1','อ.2','อ.3') COLLATE utf8_bin NOT NULL,
  `mem_room` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mem_id`, `men_stu_id`, `mem_name`, `mem_for`, `mem_class`, `mem_room`) VALUES
(35, '13345544', 'ธนัชพล', 'เด็กชาย', 'ป.1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `return_book`
--

CREATE TABLE `return_book` (
  `return_id` int(20) NOT NULL,
  `return_date` date NOT NULL,
  `borrow_date` date NOT NULL,
  `men_stu_id` varchar(20) COLLATE utf8_bin NOT NULL,
  `Book_id` varchar(11) COLLATE utf8_bin NOT NULL,
  `stauts` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `return_book`
--

INSERT INTO `return_book` (`return_id`, `return_date`, `borrow_date`, `men_stu_id`, `Book_id`, `stauts`) VALUES
(14, '2021-10-17', '2021-10-02', '13345544', '112', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrow_book`
--
ALTER TABLE `borrow_book`
  ADD PRIMARY KEY (`borrow_id`);

--
-- Indexes for table `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mem_id`);

--
-- Indexes for table `return_book`
--
ALTER TABLE `return_book`
  ADD PRIMARY KEY (`return_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `borrow_book`
--
ALTER TABLE `borrow_book`
  MODIFY `borrow_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `librarian`
--
ALTER TABLE `librarian`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `mem_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `return_book`
--
ALTER TABLE `return_book`
  MODIFY `return_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
