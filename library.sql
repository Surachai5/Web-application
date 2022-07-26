-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2022 at 06:39 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `borrowing equipment`
--

CREATE TABLE `borrowing equipment` (
  `Borrowing Reference Code` varchar(150) NOT NULL,
  `Date_Borrowing` date NOT NULL,
  `name_student` varchar(150) NOT NULL,
  `equipment list` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `borrowing equipment`
--

INSERT INTO `borrowing equipment` (`Borrowing Reference Code`, `Date_Borrowing`, `name_student`, `equipment list`) VALUES
('1122', '2022-07-31', 'Surachai Asi', '0033');

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `ID_Device` varchar(150) NOT NULL,
  `Name_Device` varchar(150) NOT NULL,
  `remaining` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`ID_Device`, `Name_Device`, `remaining`) VALUES
('D-566', 'Fifa', 31);

-- --------------------------------------------------------

--
-- Table structure for table `device return`
--

CREATE TABLE `device return` (
  `return reference code` int(150) NOT NULL,
  `Borrowing Reference Code` int(150) NOT NULL,
  `date-time at night` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `device return`
--

INSERT INTO `device return` (`return reference code`, `Borrowing Reference Code`, `date-time at night`) VALUES
(5, 1122, '2022-07-06');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id student` int(9) NOT NULL,
  `Name_lasname` varchar(150) NOT NULL,
  `room number` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id student`, `Name_lasname`, `room number`) VALUES
(6122089, 'Surachai Asi', 351);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
