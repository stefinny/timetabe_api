-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2020 at 08:27 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timetable`
--

-- --------------------------------------------------------

--
-- Table structure for table `allunits`
--

CREATE TABLE `allunits` (
  `id` int(11) NOT NULL,
  `unitcode` varchar(10) NOT NULL,
  `unitname` text,
  `course` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allunits`
--

INSERT INTO `allunits` (`id`, `unitcode`, `unitname`, `course`) VALUES
(1, 'COSC 380', 'DIGITAL ELECTRONICS', 'computer science'),
(2, 'COSC 361', 'COMPUTER NETWORKS', 'computer science'),
(3, 'COSC 312', 'DATA STRUCTURES', 'computer science');

-- --------------------------------------------------------

--
-- Table structure for table `coursedetails`
--

CREATE TABLE `coursedetails` (
  `id` int(11) NOT NULL,
  `coursename` varchar(50) NOT NULL,
  `units` varchar(200) DEFAULT NULL,
  `year` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursedetails`
--

INSERT INTO `coursedetails` (`id`, `coursename`, `units`, `year`) VALUES
(1, 'Computer science', 'COSC 381.COSC 341.COSC 362.COSC 333.COSC 327.COSC 371', 3),
(5, 'ecotourism', 'WIEM 452.BCOM 353.WIEM 343.BECO 482.ENSC 456.ENSC  445', 4),
(6, 'education (math-physics)', 'PHYS 271.PHYS 281.MATH 242.MATH 201.EDCI 221.EPSC 221.EPSC 222', 2),
(7, 'education (eng-lit)', 'LITT 103.EPSC 121.LITT 104.EPSC 123.PHIL 104.EDFO 112.COSC 103', 1),
(8, 'applied computer science', 'ACSC 111.ACSC 122.COSC 102.ECON 100.MATH 141.COMS 101', 1),
(9, 'computer science', 'COSC 101.COSC 120.COSC 130.COSC 100.MATH 121.MATH 141.ECON 100.PHYS 153', 1),
(10, 'computer science', 'COSC 223.COSC 224.COSC 250.COSC 260.MATH 242.PHYS 342', 2),
(11, 'applied computer science', 'ACSC 224.ACSC 225.ACSC 226.ACSC 231.ACS 272.ACSC 273', 2);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `name` varchar(50) NOT NULL,
  `faculty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`name`, `faculty`) VALUES
('biological sciences', 1),
('computer science', 1),
('environamental and resource development', 3),
('social sciences', 4),
('education', 5);

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(11) NOT NULL,
  `facultyname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `facultyname`) VALUES
(1, 'FSET'),
(2, 'FBUST'),
(3, 'FAES'),
(4, 'FAHU'),
(5, 'FARED');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `name` varchar(50) NOT NULL,
  `department` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`name`, `department`) VALUES
('applied computer science', 'computer science'),
('computer science', 'computer science'),
('education (eng-lit)', 'education'),
('education (math-physics)', 'education'),
('ecotourism', 'environamental and resource development'),
('criminology', 'social sciences');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `regnumber` varchar(30) NOT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `surname` varchar(30) DEFAULT NULL,
  `courseid` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`regnumber`, `firstname`, `surname`, `courseid`, `year`) VALUES
('ab1/1111/27', 'jay', 'doe', 6, 2),
('ab1/40884/19', 'Diana', 'Kwamboka', 7, 1),
('ab5/36247/18', 'Steven', 'Maingi', 6, 2),
('db1/28207/16', 'Martin', 'Ngunjiri', 5, 4),
('eb1/1111/17', 'John', 'Doe', 1, 3),
('EB1/22222/22', 'Torie', 'Gee', 4, 2),
('eb1/26243/16', 'steven', 'ondieki', 1, 3),
('eb1/26243/17', 'James', 'Ngare', 2, 3),
('eb1/32735/17', 'Charles', 'Mwangi', 2, 3),
('EB1/343444/18', 'test', 'user', 2, 2),
('eb1/77777/17', 'test', 'testuser', 1, 1),
('eb5/0000/17', 'Tecno', 'Mobile', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `7to9` text,
  `9to11` text,
  `11to1` text,
  `1to3` text,
  `3to5` text,
  `5to7` text,
  `day` varchar(15) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`7to9`, `9to11`, `11to1`, `1to3`, `3to5`, `5to7`, `day`, `id`) VALUES
('EAPE 421', 'MATH 422', 'SOCI 106 ', 'EDCI 321', 'SOCI 103 ', 'EDCI 221', 'monday', 1),
('ENHE 131', 'NURS 155', 'ENHE 112', 'NURS 115', 'NURS 262', 'NURS 116', 'monday', 2),
('HRIM 171', 'NURS 114', 'NURS 133', 'NURS 202', 'NURS 373', 'HRIM 142', 'monday', 3),
('NURS 283', 'COMS 101', ' NURS 263', 'COSC 103', 'CHEM 304', 'NURU 123', 'monday', 4),
('NURS 352', 'NURS 353', 'NURS 454', 'NURS 449', 'NURU 132', 'NURU 276', 'monday', 5),
('NURU 101 ', 'ENGL 422', 'EDCI 337', 'EDCI 321', 'CHEM 431', 'EDCI 221', 'monday', 6),
('BOTA 131', 'AGEC 331', 'BUST 421', 'NUPM 842', 'BOTA 111', 'KISW 103', 'monday', 7),
('EAPE 421', 'KISW 412', 'EDCI 336', 'RELI 474', 'HIST 422', 'MATH 304', 'monday', 8),
('HORT 371', 'AGEC 241', 'HORT 325', 'AGEC 343', 'GEOG 223', 'ENGL 203', 'monday', 9),
('EAPE 421', 'RELI 122', 'EDCI 343', 'KISW 204', 'EDCI 338', 'LITT 326', 'monday', 10),
('ZOOL 341', 'MATH 422', 'GEOG 120', 'FOST 222', 'PHYS 326', 'AGED 333', 'monday', 11),
('EAPE 421', 'PHYS 134', 'ZOOL 102', 'EDCI 321', 'EPSC 123', 'EDCI 122', 'monday', 12),
('NURU 283', 'NURU 275', 'NUED 814', 'NUMW 841', 'NUCH 841', 'NUMS 841', 'monday', 13),
('PHYS 352', 'MATH 422', 'FOST 222', 'SOIL 0100', 'ENSC 0100', 'AGRI 322', 'monday', 14),
('EAPE 421', 'COSC 102', 'COSC 120', 'EDCI 321', 'ECON 100', 'CHEM 130', 'monday', 15),
('COSC 260', 'COSC 381', 'COSC 468', 'COSC 327', 'COSC 476', 'COSC 333', 'monday', 16),
('AGRI 0211', 'FOST 324', 'ENSC 0100', 'FOST 131', 'SOIL 0100', 'FOST 336', 'monday', 17),
('ECDE 143', 'ECDE 415', 'ECDE 236', 'ECDE 421', 'ECDE 343', 'ECDE 237', 'monday', 18),
('ECDE 0211', 'ECDE 0211', 'ECDE 00221', 'AGRI 411', 'ECDE 0235', 'NARE 453', 'monday', 19),
('ANSC 241', 'AGRI 482', 'BIOC 204', 'AGEN 112', 'AGEN 131', 'ANHE 0121', 'monday', 20),
('AGBM 406', 'ENSC 405', 'AGEC 452', 'FOST 344', 'BOTA 400', 'FOST 414', 'monday', 21),
('AGEC 343', 'NARE 0112', 'AGEC 00243', 'WIEM 102', 'AGRI 00271', 'COSC 00102', 'monday', 22),
('NARE 213', 'NARE 444', 'NARE 211', 'NARE 326', 'NARE 212', 'NARE 371', 'monday', 23),
('WIEM 341', 'WIEM 421', 'WIEM 342', 'NARE 445', 'WIEM 343', 'ANSC 464', 'monday', 24),
('ENSC 331', 'ENSC 457', 'ENSC 332', 'ENSC 464', 'ENSC 343', 'ENSC 470', 'monday', 25),
('BCHM 161', 'BECO 321', 'ENSC 446', 'BECO 331', 'BTOM 141', 'BECO 371', 'monday', 26),
('CHTM 00101', 'BTOM 475', 'CHTM 00102', 'CHTM 00201', 'DTHM 0121', 'CHTM 00303', 'monday', 27),
('CHTM 00105', 'ACSC 484', 'COSC 0140', 'ACSC 462', 'COSC 0120', 'ACSC 429', 'monday', 28),
('COSC 00104', 'COSC 00106', 'PHYS 0111', 'MATH 00101', 'COSC 00101', 'PHIL 140', 'monday', 29),
('EENG 222', 'EENG 241', 'BIOC 205', 'BIOC 222', 'ZOOL 231', 'CHEM 334', 'monday', 30),
('MATH 427', 'BIOC 424', 'BIOC 461', 'MATH 448', 'CHIN 433', 'MATH 445', 'monday', 31),
('NARE 450', 'BECO 251', 'ANSC 467', 'AGED 334', 'ANSC 466', 'AGEN 331', 'monday', 32),
('BCHM 254', 'BECO 461', 'BCOM 212', 'BTOM 252', 'BCOM 202', 'BTOM 222', 'monday', 33),
('WIEM 242', 'BTOM 151', 'BTOM 291', 'ACSC 122', 'ENSC 261', 'BCOM 212', 'monday', 34),
('BTOM 322', 'ACSC 111', 'BTOM 323', 'ACSC 272', 'ACSC 273', 'COSC 333', 'monday', 35),
('BCOM 404', 'BCOM 355', 'BCOM 104', 'BCOM  464', 'BCOM  112', 'BCOM  409', 'monday', 36),
('BCOM 241', 'BCOM 263', 'BCOM 101', 'BCOM 356', 'ECON 111', 'BPLM 312', 'monday', 37),
('BCOM 103', 'ECON 121', 'BCOM 321', 'BCOM 324', 'BCOM 202', 'BCOM  213', 'monday', 38),
('BEEM 405', 'BEEM 429', 'DIBM 0121', 'BCOM 345', 'BEEM 410', 'BCOM  464', 'monday', 39),
('BCOM 351', 'ECON 222', 'DIBM 0103', 'BCOM 336', 'BCOM 213', 'DIAC 0111', 'monday', 40),
('BCOM 364', 'BPLM 412', 'BPLM 413', 'BCOM 313', 'DIBM 0112', 'DIBM 0113', 'monday', 41),
('BCOM 361', 'BCOM 335', 'BPLM 214', 'BCOM 112', 'BCOM 162', 'BCOM  365', 'monday', 42),
('BPLM 113', 'BPLM 121', 'BCOP 211', 'DPLM 0222', 'BCOM 315', 'BPLM 215', 'monday', 43),
('DPLM 0112', 'ACSC 352', 'DPLM 0151', 'CPLM 00131', 'BPLM 171', 'BCOP 233', 'monday', 44),
('COMM 331', 'COMM 474', 'COMM 370', 'COMM  473', 'COMM 474', 'COMM 372', 'monday', 45),
('SOCI 0101', 'ECON 304', 'DJMC 0115', 'ECON 332', 'SOCI 343', 'ECON 409', 'monday', 46),
('SOCI 422', 'RELI 476', 'SOCI 454', 'RELI 474 ', 'LITT 405', 'RELI 434', 'monday', 47),
('SOWK 0121', 'CRSS 210', 'SOWK 0122', 'CRSS 241', 'SOWK 0123', 'SOCI 353', 'monday', 48),
('CHAL 101', 'CHEM 103', 'PHYS 151 ', 'CHIN 101', 'MATH 141', 'COSC 104', 'monday', 49),
('CHEM 241', 'MATH 223', 'MATH 206', 'ACMT 202', 'MATH 390', 'MATH 343', 'monday', 50),
('EENG 114', 'EENG 113', 'CHEM 212', 'MATH 201', 'MATH 141', 'BIOC 333', 'monday', 51),
('DIMA 00224', 'MATH 303', 'BIOC 334', 'MSEC 802', 'DIMA 00120', 'DIMA 0235', 'monday', 52),
('PPMA 0124', 'PPMA 0221', 'PPMA 00121', 'PPMA 0125', 'PPMA 00120', 'CDEV 324', 'monday', 53),
('COMM 105', 'ENGL 442 ', 'CRSS 428', 'SOCI 0101', 'CRSS 420', 'CRSS 0100', 'monday', 54),
('COMM 241', 'COMM 242 ', 'COMM 106', 'LAPA 0112', 'LAPA 0120', 'SOCI 111', 'monday', 55),
('ENGL 231', 'MBAD 804', 'HIST 253', 'MBAD 812', 'DIAC 0231', 'DIBM 0224', 'monday', 56),
('CIBM 00101', 'DIBM 0218', 'COMP 00161', 'DIAC 0112', 'DPLM  0111', 'BCOM 351 E', 'monday', 57),
('DIAC 0224', 'DJMC 0127', 'LAPA 00140', 'LAPA 00141', 'RELI 232', 'MBAD 801', 'monday', 58),
('GEOG 312', 'LITT 312 ', 'LITT 325', 'GEOG 322', 'HIST 323', 'MPLM 811', 'monday', 59),
('BSIS 102', 'BSIS 206 ', 'SOWK 00124', 'BSIS 103', 'BSIS 211', 'BSIS 131', 'monday', 60),
('BLIS 404', 'BSIS 381 ', 'BRMT 414', 'BSIS 457', 'BSIS 314', 'BSIS 321', 'monday', 61),
('PSYC 122', 'PSYC 224 ', 'PSYC 131', 'PSYC 225', 'PSYC 125', 'PSYC 124', 'monday', 62),
('PSYC 431', 'PSYC 333 ', 'PSYC 442', 'PSYC 463', 'CRSS 402', 'PSYC 323', 'monday', 63),
('CPSY 0122', 'CRSS  0220', 'CPSY 0114', 'PPMA 0110', 'CRSS 0221', 'CPSY 0115', 'monday', 64),
('COSC 00102', 'CRSS 800 ', 'CRSS 00105', 'CRSS 801', 'CDEV 253', 'CDEV 120', 'monday', 65),
('CDEV 00104', 'CDEV 00106 ', 'CDEV 00120', 'CDEV 00107', 'EPSY 00121', 'ANHE 435', 'monday', 66),
('CDEV 0103', 'PPMA 00126 ', 'CDEV 0104', 'PPMA 00132', 'CDEV 0111', 'CDEV 00131', 'monday', 67),
('EAPE 422', 'MATH 121', 'EPSC 121 ', 'ACSC 333 ', 'EPSC 221', 'EDFO 423', 'Tuesday', 68),
('HRIM 141', 'ENHE 113', 'NURS 112', 'HRM 121', 'NURS 227', 'HRM 113', 'tuesday', 69),
('NURS 133', 'NURS 171', 'NURS 226', 'NURS 181', 'NURS 203', 'COSC 341', 'tuesday', 70),
('NURS 225', 'ZOOL 143', 'NURS 274', 'NURS 448', 'NURS 374', 'NURS 375', 'tuesday', 71),
('COSC 101', 'NURU 277', 'NUED 813', 'NURU 241', 'NUOP 841', 'NUOP 842', 'tuesday', 72),
('LITT 103', 'MATH 121', 'AGRI 383', 'WIEM 121', 'ACSC 231', 'AGRI 322', 'tuesday', 73),
('HORT 341', ' AGEN 353', ' PHYS 372', ' FOST 242', ' FOST 241', ' ZOOL 143', 'tuesday', 74),
('EAPE 422', 'LITT 432', 'HIST 355', 'KISW 405', 'RELI 372', 'EDFO 423', 'tuesday', 75),
('AGEC 111', 'FOST 212', 'BEEM 111', 'FOST 346', 'COSC 100', 'AGED 332', 'tuesday', 76),
('EAPE 422', 'MATH 121', 'EPSC 121', 'MATH 305', 'ENGL 371', 'GEOG 144', 'tuesday', 77),
('KISW 104', 'FOST 345', 'BOTA 361', 'EDCI 341', 'CHEM 313', 'ENGL 104', 'tuesday', 78),
('EAPE 422', 'CHEM 433', 'COSC 130', 'RELI 161', 'EPSC 221', 'RELI 231', 'tuesday', 79),
('NUMW 842', 'NUCH 827', 'MATH 00100', 'NUMS 842', 'AGEN 0241', 'COSC 484', 'tuesday', 80),
('ZOOL 103', 'CHEM 0102', 'COSC 224', 'COSC 250', 'HIST 152', 'EPSC 111', 'tuesday', 81),
('EAPE 422', 'MATH 201', 'EPSC 121', 'CHEM 130', 'EPSC 221', 'BOTA 271', 'tuesday', 82),
('COSC 341', 'COSC 362', 'COSC 475', 'ACSC 374', 'CHEM 437', 'PHYS 281', 'tuesday', 83),
('ECDE 0236', 'ECDE 239', 'ECDE 413', 'ECDE 339', 'ECDE 448', 'ECDE 238', 'tuesday', 84),
('ECDE 00231', 'COSC 0102', 'ECDE 00241', 'AGEC 424', 'AGEC 0112', 'AGRI 232', 'tuesday', 85),
('AGRI 233', 'ANSC 460', 'AGRI 234', 'BOTA 131', 'ANSC 362', 'SOIL 00100', 'tuesday', 86),
('ANSC 342', 'ANHE 0122', 'ANSC 351', 'ANHE 00260', 'ENSC 112', 'BTOM 151', 'tuesday', 87),
('HORT 434', 'FOST 437', 'HORT 443', 'FOST 464', 'HORT 463', 'FOST 465', 'tuesday', 88),
('NARE 221', 'NARE 457', 'WIEM 223', 'NARE 461', 'NARE 222', 'NARE 481', 'tuesday', 89),
('ENSC 354', 'WIEM 452', 'ENSC 452', 'BECO 482', 'ENSC 362', 'BTOM 361', 'tuesday', 90),
('WIEM 351', 'NARE 446', 'WIEM 344', 'WIEM 423', 'WIEM 345', 'DTHM 0122', 'tuesday', 91),
('ENSC 444', 'BECO 372', 'ENSC 359 ', 'BECO 381', 'ENSC 456', 'NARE 331', 'tuesday', 92),
('BTOM 353', 'BTOM 473', 'BECO 371', 'BTOM 474', 'CHTM 00103', 'CHTM 00104', 'tuesday', 93),
('ACSC 478', 'CHTM 00304', 'DIAC 0225', 'ACSC 441', 'COSC 0172', 'COSC 0130', 'tuesday', 94),
('COSC 00108', 'COSC 0171', 'COSC 00102', 'SOCI 352', 'PHIL 112', 'COSC 00107', 'tuesday', 95),
('HIST 120', 'LAPA 0130', 'LAPA 0131', 'GEOG 326', 'LITT 351', 'RELI 373', 'tuesday', 96),
('EENG 222', 'EENG 241', 'BIOC 205', 'EENG 251', 'BIOC 222', 'CHEM 334', 'tuesday', 97),
('BMET 222', 'BMET 231', '', '', '', '', 'tuesday', 98),
('BCHM 242', 'ANSC 464', 'BCHM 151', 'ANSC 463', 'BTOM 122', 'BCHM 253', 'tuesday', 99),
('BCHM 332', 'BCHM 475', 'BCHM 361', 'ZOOL 104', 'BCHM 391', 'GEOG 120', 'tuesday', 100),
('BECO 243', 'BTOM 222', 'BTOM 254', 'WIEM 241', 'BTOM 391', 'COSC 102', 'tuesday', 101),
('DIMA 00121', 'EENG 114', 'EENG 113', 'DIMA 00126', 'PHYS 335', 'BIOC 335', 'tuesday', 102),
('BCOM 405', 'BCOM 302', 'BCOM 418', 'BCOM 357', 'BCOM 434', 'BCOM 314', 'tuesday', 103),
('ECON 222A', 'ECON 222B', 'BCOM 424', 'BCOM 325', 'BPLM 412', 'BPLM 313', 'tuesday', 104),
('COSC 105', 'BCOM 111', 'BCOM 444', 'BCOM 346', 'BCOM 221', 'BCOM 231', 'tuesday', 105),
('BCOM 403', 'BEEM 437', 'BCOM 454', 'BCOP 337', 'BCOP 111', 'BPLM 111', 'tuesday', 106),
('BCOM 339', 'DIBM 0101', 'BEEM 334', 'BCOM 161', 'BEEM 449', 'BEEM 405', 'tuesday', 107),
('BCOM 221', 'DIBM 0122', 'BCOM 231', 'DIBM 0102', 'BCOM 341', 'DIBM 0132', 'tuesday', 108),
('BPLM 422', 'BPLM 414', 'BCOM 464', 'BPLM 313', 'BPLM 314', 'BPLM 414', 'tuesday', 109),
('BPLM 216', 'BPLM 114', 'BPLM 115', 'BPLM 223', 'BCOP 311', 'BCOM 241', 'tuesday', 110),
('BCOP 201', 'BCOP 312', 'BCOP 202', 'BCOM 121', 'BCOM 162', 'BCOM 335', 'tuesday', 111),
('COMM 381', 'PSYC 411', 'COMM 354', 'COMM 420', 'COMM 353', 'BCOM 263', 'tuesday', 112),
('DPLM 0215', 'COSC 465', 'DJMC 0121', 'DJMC 0122', 'ECON 323', 'COMM 104', 'tuesday', 113),
('COMM 103', 'DPLM 0161', 'CPLM 00112', 'CPLM 00113', 'COSC 436', 'DPLM 0113', 'tuesday', 114),
('BSIS 230', 'CPSY 111', 'BSIS 241', 'SOCI 463', 'BSIS 251', 'REST 412', 'tuesday', 115),
('CRSS 352', 'CRSS 428/429', 'CRSS 220', 'CRSS  351', 'CRSS  439', 'CRSS  230', 'tuesday', 116),
('PHYS 111/103', 'PHYS 153', 'MATH 223', 'MATH 206', 'CHIN 221', 'CHEM 241', 'tuesday', 117),
('BIOC 351', 'BMET 316', 'BMET 335', 'CHEM 437', 'CHIN 432', 'MATH 402', 'tuesday', 118),
('BIOC 241', 'CHEM 315', 'CHEM 326', 'PHYS 393', 'PHYS 314', 'CHEM 335', 'tuesday', 119),
('PPMA 00122', 'CDEV 00103', 'CDEV 0120', 'EDFO 414', 'CDEV 00103', 'CDEV 305', 'tuesday', 120),
('PPMA 0126', 'CDEV 0211', 'PPMA 0222', 'CDEV 0216', 'DIMA 0236', 'PPMA 0223', 'tuesday', 121),
('ENGL 103', 'COMM 253', 'ENGL 104', 'COMM 231', 'LAPA 00150', 'GEOG 346', 'tuesday', 122),
('HIST 121', 'MBAD 841', 'EDFO 211', 'LITT 212', 'RELI 100', 'ENGL 211', 'tuesday', 123),
('ENGL 101', 'DIBM 0219', 'ECON 00121', 'MBAD 871', 'LITT 102', 'BCOM 301E', 'tuesday', 124),
('DJMC 0126', 'DIAC 0113', 'DIAC 0231', 'DIAC 0226', 'DIBM 0299', 'MBAD 802', 'tuesday', 125),
('RELI 392', 'SOCI 418', 'RELI 362', 'RELI 406', 'DPLM 0141', 'MBAD 803', 'tuesday', 126),
('SOWK 0125', 'BSIS 140', 'SOWK 0124', 'SOWK  00122', 'SOWK  0126', 'BSIS 120', 'tuesday', 127),
('BSIS 307', 'BSIS 458', 'BSIS 308', 'BSIS 480', 'BLIS 406', 'BSIS 313', 'tuesday', 128),
('PSYC 125', 'PSYC 226', 'PSYC 131', 'PSYC 232', 'PSYC 336', 'PSYC 335', 'tuesday', 129),
('ECON 453', 'DIBM 0251', 'CIBM 00112', 'SOCI 103', 'LITT 408', 'HIST 131', 'tuesday', 130),
('CRSS 0110', 'CPSY 0116', 'PSYC 464', 'CRSS 0101', 'CPSY 0117', 'PSYC 465', 'tuesday', 131),
('CRSS 00106', 'CRSS 0233', 'CRSS 00104', 'CRSS 00107', 'CRSS 0232', 'CRSS  0231', 'tuesday', 132),
('CDEV 00140', 'CDEV 802', 'CDEV 141', 'CDEV 803', 'CDEV 121', 'CDEV 254', 'tuesday', 133),
('CDEV 00130', 'CDEV 0270', 'CDEV 00131', 'DIMA 00113', 'CDEV 0262', 'CDEV 0263', 'tuesday', 134),
('MATH 242', 'EDFO 423 ', 'MATH 242 ', 'EDFO 112', 'COMS 101 ', 'ACSC 328', 'Wednesday', 135),
('ENHE 141', 'NURS 155', 'HRIM 123', 'ENHE 131', 'NURS 112', 'HRIM 123', 'wednesday', 136),
('NURS 171', 'NURS 192', 'NURS 114', 'NURS 263', 'NURS 115', 'NURS 283', 'wednesday', 137),
('NURS 376 ', 'NURS 307', 'NURS 394', 'NURU 161', 'NURU 203', 'NURU 127', 'wednesday', 138),
('NURU 293', 'NULM 811', 'NURU 202', 'NUED 812', 'NWOP 843', 'NWOP 841', 'wednesday', 139),
('LITT 104', 'KISW 203', 'ZOOL 143', 'PHIL 104', 'SOIL 100', 'AGRI 361', 'wednesday', 140),
('CHEM 120', 'ENSC 100', 'CHEM 130', 'AGRI 391 ', 'HORT 325', 'HORT 371', 'wednesday', 141),
('RELI 342', 'EDFO 423', 'KISW 412', 'EDFO 112', 'EDFO 112', 'COSC 103', 'wednesday', 142),
('BUST 121', 'HORT 434', 'ICEN 206', 'FOST 347', 'AGRI 291', 'AGRI 391', 'wednesday', 143),
('PHYS 352', 'MATH 323', 'MATH 409', 'MATH 345', 'MATH 442', 'MATH 426', 'wednesday', 144),
('MATH 0121', 'COSC 100', 'ZOOL 0143', 'MATH 242', 'GEOG 224', 'BUST 221', 'wednesday', 145),
('ENGL 333', 'EDFO 423', 'LITT 425', 'EDCI 331', 'LITT 351', 'EDCI 333', 'wednesday', 146),
('COSC 270', 'ACSC 111', 'COSC 223', 'ACSC 122', 'ACSC 224', 'ACSC 225', 'wednesday', 147),
('ZOOL 331', 'CHEM 212', 'MATH 403', 'CHEM 439', 'PHYS 271', 'SOCI 233', 'wednesday', 148),
('MATH 242', 'ENGL 221', 'MATH 242', 'RELI 232', 'CDEV 316', 'COSC 103', 'wednesday', 149),
('CHEM 120', 'ZOOL 102', 'COSC 363', 'COSC 436', 'COSC 442', 'COSC 371', 'wednesday', 150),
('ANHE 00141', 'ECDE 414', 'ANHE 0281', 'ECDE 446', 'WIEM 102', 'COSC 00103', 'wednesday', 151),
('ECDE 337', 'ECDE 133', 'ECDE 338', 'ECDE 243', 'ECDE 142', 'FOST 131', 'wednesday', 152),
('ECDE 00242', 'ECDE 0237', 'AGEC 452', 'ANSC 241', 'BIOC 204', 'ANSC 351', 'wednesday', 153),
('SOIL 312 ', 'SOIL 213', 'HORT 170', 'ANHE 0123', 'ANSC 00250', 'BTOM 152', 'wednesday', 154),
('FOST 466', 'HORT 451', 'FOST 346', 'FOST 481', 'NARE 472', 'WIEM 461', 'wednesday', 155),
('ANSC 372', 'CHEM 00102', 'BIOC 00113', 'ENSC 00100', 'NARE 00112', 'ENSC 354', 'wednesday', 156),
('WIEM 362', 'WIEM 422', 'WIEM 347', 'WIEM 421', 'ENSC 102', 'WIEM 425', 'wednesday', 157),
('ENSC 253', 'NARE 326', 'ENSC 224', 'ENSC 359', 'NARE 342', 'BECO 151', 'wednesday', 158),
('NARE 444', 'ENSC 331', 'NARE 457 ', 'ENSC 433', 'NARE 461', 'BECO 371', 'wednesday', 159),
('ENSC 464', 'BECO 321', 'ENSC 470 ', 'BECO 331', 'ENSC 433', 'ENSC 434', 'wednesday', 160),
('BCHM 391', 'WIEM 343', 'BTOM 475', 'CHTM 00302', 'BTOM 452', 'BTOM 453', 'wednesday', 161),
('DTHM 0151', 'CTHM 00301', 'CHTM 00305', 'DTHM 0141', 'ACSC 432', 'ACSC 429', 'wednesday', 162),
('COSC 0141', 'COSC 00190', 'COSC 0160', 'PHYS 00141', 'PHIL 105', 'COSC 0172', 'wednesday', 163),
('EENG 251', 'EENG 272', 'BIOC 221', 'BIOC 230', 'BIOC 220', 'COSC 221', 'wednesday', 164),
('BMET 232', '', '', '', '', 'BMET 233', 'wednesday', 165),
('BTOM 122', 'ANSC 456', 'BCHM 151', 'ANSC 455', 'BTOM 222', 'BCHM 212', 'wednesday', 166),
('BCOM 353', 'BECO 461', 'BECO 251', 'BCHM 421', 'BTOM 252', 'BCHM 472', 'wednesday', 167),
('ENSC 261', 'BCOM 212', 'BCHM 212', 'BECO 241', 'BCOM 353', 'BECO 242', 'wednesday', 168),
('DIMA 0237', 'DIMA 00233', 'BMET 462', 'DIMA 0238', 'BMET 455', 'BCOM 353', 'wednesday', 169),
('BCOM 404', 'BCOM 425', 'BCOM 464 ', 'BCOM 435 BSR303', 'BCOM 415 ', 'BCOM 405', 'wednesday', 170),
('BCOM 329', 'BCOM 445', 'BPLM 223', 'BPLM 413', 'BCOM 358', 'BCOM 338', 'wednesday', 171),
('BCOM 316', 'BCOM 455', 'BCOM 101', 'ECON 121', 'BCOM 326', 'BCOM 315', 'wednesday', 172),
('BCOM 303', 'BCOM 241', 'BCOM 263', 'BCOM 315', 'BCOM 347', 'BPLM 315', 'wednesday', 173),
('BCOM 103', 'ECON 121', 'BEEM 429', 'BEEM 410', 'BCOM 202', 'BCOM 213', 'wednesday', 174),
('BPLM 313', 'BEEM 325', 'BCOM 364', 'BCOM 251', 'BCOM 103', 'BCOM 162', 'wednesday', 175),
('DIAC 0111', 'DIBM 0141', 'BCOM 339', 'BCOM 366', 'DIAC 0112', 'ZOOL 0143', 'wednesday', 176),
('BPLM 415', 'BCOM 335', 'BCOM 361', 'BPLM 451', 'BCOM 231', 'BCOM 263', 'wednesday', 177),
('BCOM 315', 'BCOM 103', 'DPLM 0216', 'DPLM 0114', 'CPLM 00114', 'BCOM 321', 'wednesday', 178),
('ACSC 374', 'COMM 362', 'COMM 481', 'DJMC 0123', 'DJMC 0112', 'COMP 101', 'wednesday', 179),
('PHIL 100', 'CRSS 350', 'CRSS 203', 'CRSS 333', 'CRSS 437', 'CRSS 436', 'wednesday', 180),
('MATH 141 ', 'FNMT 101 ', 'MATH 121', 'ACMT 111 ', 'MATH 141 ', 'CDEV 326', 'wednesday', 181),
('CHEM 221', 'PHYS 113', 'MATH 121', 'CHEM 221', 'MATH 141 ', 'PHYS 153', 'wednesday', 182),
('PHYS 394', 'BIOC 342', 'MATH 201', 'BIOC 314', 'MATH 242', 'MATH 201', 'wednesday', 183),
('MATH 202', 'MATH 244', 'PHYS 373', 'ACMT 202', 'MATH 203', 'CHIN 221', 'wednesday', 184),
('BIOC 315', 'BMET 336', 'BMET 337', 'CHIN 431', 'CHEM 453', 'MATH 404', 'wednesday', 185),
('BIOC 417', 'BIOC 443', 'BMET 454', 'PHYS 00111', 'PHYS 00141', 'BIOC 0113', 'wednesday', 186),
('PPMA 00123', 'PPMA 00133 ', 'DIMA 00113', 'PPMA 00124 BSL 502', 'PPMA 00134 BSL 502', 'PPMA 0212', 'wednesday', 187),
('PPMA 0210 BSL 503', 'PHYS 485', 'BIOC 0113', 'PPMA 0211', 'MSEC 812', 'PPMA 0224', 'wednesday', 188),
('COMM 243', 'LITT 102', 'COMM 252', 'LITT 103', 'COMM 263', 'DJMC 0125', 'wednesday', 189),
('DPLM 0222', 'LITT 221', 'ENGL 101', 'HIST 151', 'MBAD 831', 'DIAC 0226', 'wednesday', 190),
('CPLM 00131', 'RELI 230', 'CIBM 00111', 'DIAC 0227', 'DIAC 0241', 'BCOM 331E', 'wednesday', 191),
('DIAC 0111', 'COSC 0170', 'DIAC 0114', 'DPLM 0213', 'RELI 160', 'MBD 803', 'wednesday', 192),
('LAPA 0132', 'LAPA 00160', 'LAPA 0140', 'LAPA 00253', 'LAPA 0141', 'MPLM 812', 'wednesday', 193),
('SOCI 353', 'RELI 402', 'LITT 417', 'HIST 485', 'LITT 435', 'HIST 487', 'wednesday', 194),
('BSIS 381', 'SOWK 0127', 'SOWK 00126', 'SOWK 0127', 'BSIS 262', 'BSIS 307', 'wednesday', 195),
('BLIS 406', 'BRMT 415', 'PSYC 125', 'PSYC 125', 'PSYC 233', 'BPMS 425', 'wednesday', 196),
('DIBM 0242', 'CPLM 00141', 'KISW 313', 'RELI 342', 'KISW 311', 'GEOG 435', 'wednesday', 197),
('PSYC 234', 'PSYC 334', 'CPSY 0118', 'PSYC 474', 'PSYC 335', 'PSYC 473', 'wednesday', 198),
('CRSS 0230', 'CRSS 0234', 'CRSS 00103', 'CRSS 00110', 'CRSS 0210', 'CRSS 0111', 'wednesday', 199),
('CDEV 122', 'CDEV 225', 'CDEV 429', 'CDEV 210', 'CRSS 804', 'CDEV 462', 'wednesday', 200),
('CDEV 0211', 'CDEV 0140 ', 'CDEV 0209', 'CDEV 00105', 'CDEV 0141 ', 'CDEV 0261', 'wednesday', 201),
('EPSC 123', 'EDCI 411', 'MATH 422', 'EPSC 331', 'MATH 242', 'PHIL 104 ', 'Thursday', 202),
('HNDS 132', 'ENHE 152', 'HRIM 113', 'HRIM 142', 'ENHE 112', 'NURS 171', 'thursday', 203),
('NURS 116', 'NURS 226', 'NURS 171', 'NURS 227', 'NURS 133', 'NURS 262', 'thursday', 204),
('NURS 352', 'NURS 307', 'NURS 305', 'NURS 373', 'NURU 125', 'NURS 394', 'thursday', 205),
('NURU 126', 'NURU 203', 'NURU 202', 'NUCH 811', 'NUWP 842', 'NURU 293', 'thursday', 206),
('EPSC 123', 'EDCI 342', 'MATH 141', 'BOTA 131', 'EDCI 341', 'CHEM 416', 'thursday', 207),
('BOTA 111', 'AGEN 353', 'ZOOL 220', 'PHYS 111/103', 'BOTA 413', 'AGEC 331', 'thursday', 208),
('KISW 310', 'EDCI 411', 'HIST 356', 'EPSC 331', 'KISW 311 S303', 'MATH 304', 'thursday', 209),
('AGEC 343', 'HORT 323', 'BIOC 204', 'HORT 331', 'HORT 463', 'HORT 341', 'thursday', 210),
('AGRI 291', 'EDCI 411', 'MATH 422', 'BUST 422', 'GEOG 425', 'EDCI 332', 'thursday', 211),
('CHEM 313', 'CHEM 212', 'PHYS 271', 'BOTA 121', 'MATH 326', 'GEOG 223', 'thursday', 212),
('HIST 254', 'EDCI 411', 'RELI 470', 'EPSC 331', 'MATH 242', 'PHIL 104', 'thursday', 213),
('NWOP 842', 'AGRI 391', 'FOST 347', 'WIEM 121', 'COSC 130', 'FOST 346', 'thursday', 214),
('EDCI 101', 'MATH 123', 'MATH 422', 'PHYS 428', 'HIST 131', 'MATH 100', 'thursday', 215),
('LITT 211', 'EDCI 411', 'MATH 141', 'EPSC 331', 'MATH 242', 'CHEM 416', 'thursday', 216),
('ZOOL 103', 'ZOOL 00143', 'COSC 0102', 'PHYS 151', 'PHYS 476 S602', 'ENSC 100', 'thursday', 217),
('ANHE 0114', 'ANHE 0252', 'ANHE 0126', 'WIEM 461', 'BIOC 0113', 'MICB 0131', 'thursday', 218),
('ECDE 433', 'ECDE 336', 'ECDE 132', 'ECDE 445', 'ECDE 244', 'ECDE 0237', 'thursday', 219),
('ECDE 00243', 'AGRI 223', 'ANSC 460', 'ECDE 0239', 'AGRI 234', 'ANSC 00268', 'thursday', 220),
('AGEC 424', 'ANSC 362', 'ANSC 00260', 'ANSC 372', 'ANHE 00124', 'BTOM 141', 'thursday', 221),
('FOST 414', 'AGEC 452', 'FOST 437', 'FOST 464', 'ANSC 467', 'ANSC 466', 'thursday', 222),
('ANHE 00122', 'ANHE 00126', 'ANHE 00123', 'BIOL 00100', 'ENSC 112', 'NARE 341 ', 'thursday', 223),
('WIEM 341', 'WIEM 445', 'WIEM 342', 'WIEM 424', 'WIEM 343', 'WIEM 423', 'thursday', 224),
('ENSC 224', 'NARE 342', 'ENSC 253', 'ENSC 359', 'NARE 222', 'WIEM 223', 'thursday', 225),
('ENSC 343', 'ENSC 452', 'ENSC 332', 'ENSC 456', 'GEOG 120', 'ENSC 457', 'thursday', 226),
('BECO 372', 'BECO 482', 'BECO 381', 'ENSC 00100', 'ENSC 446', 'BTOM 291', 'thursday', 227),
('BTOM 271', 'BTOM 322', 'BTOM 473', 'BTOM 323', 'BTOM 474', 'BTOM 353', 'thursday', 228),
('DTHM 0152', 'COSC 260', 'CHTM 00101', 'CHTM 00401', 'DTHM 0112', 'ACSC 478', 'thursday', 229),
('COSC 0140', 'COSC 00104', 'COSC 0120', 'COSC 00106', 'COSC 0101', 'COSC 0150', 'thursday', 230),
('EENG 272', 'EENG 292', 'BIOC 221', 'BIOC 230', 'ZOOL 231', 'CHEM 345', 'thursday', 231),
('BCHM 254', 'BCOM 112', 'BCOM 212', 'BCHM 475', 'BCOM 202', 'BCHM 361', 'thursday', 232),
('BCOM 353', 'BCHM 474', 'BCHM 391', 'WIEM 241', 'COSC 371', 'WIEM 242', 'thursday', 233),
('COSC 381', 'COSC  475', 'COSC 327', 'COSC 465', 'COSC 102', 'ACSC 272', 'thursday', 234),
('CHEM 428', 'BMET 453', 'MSEC 822', 'BMET 444', 'PHYS 00111', 'PHYS 418', 'thursday', 235),
('BCOM 409', 'BCOM 414', 'BPLM 314', 'BCOM 418 ', 'BCOM 335', 'BPLM 413 ', 'thursday', 236),
('BCOM 339', 'BCOM 427', 'BCOM 335', 'BCOM 424', 'BCOM 231', 'BCOM 435', 'thursday', 237),
('BCOM 348', 'BCOM 446', 'BCOM 221', 'BCOM 444', 'BPLM 111', 'BCOM 455', 'thursday', 238),
('ECON 222', 'BCOM 458', 'BCOM 111', 'BCOM 454', 'BCOM 161', 'BCOM 445', 'thursday', 239),
('COSC 105', 'BCOM 437', 'BCOP 111', 'BCOM 434', 'BCOM 321', 'BCOM 425', 'thursday', 240),
('BCOM 464', 'BCOM 403', 'BEEM 334', 'BPLM 412', 'BCOM 221', 'BCOM 415', 'thursday', 241),
('ECON 222', 'BEEM 113', 'BCOM 213', 'DIBM 0121', 'DIAC 0227', 'DIBM 0131', 'thursday', 242),
('ACSC 273', 'BPLM 412', 'BPLM 413', 'BPLM 325', 'BCOM 315', 'DPLM 422', 'thursday', 243),
('BCOP 432', 'DPLM 0223', 'BPLM 113', 'BPLM 121', 'BCOM 333', 'BCOM 464', 'thursday', 244),
('BPLM 214', 'BPLM 215', 'ACSC 352', 'COMM 363', 'COMM 370', 'BPLM 216', 'thursday', 245),
('COMM 473', 'DIAC 0112', 'SOCI 0101', 'COMM 474', 'DJMC 0115', 'SOCI 232', 'thursday', 246),
('CPLM 00115', 'SOCI 315', 'ENGL 371', 'ECON 447', 'ECON 408', 'ENGL 333', 'thursday', 247),
('CRSS 102', 'CRSS 204', 'CRSS 332', 'SOCI 407', 'SOCI 101', 'PHIL 109', 'thursday', 248),
('BMET 111', 'BMET 110', 'ZOOL 143', 'COSC 104', 'CHEM 221', 'MATH 242', 'thursday', 249),
('MATH 202', 'MATH 244', 'PHYS 382', 'ACMT 211', 'MATH 203', 'BIOC 305', 'thursday', 250),
('MATH 201', 'PHYS 393', 'BMET 340', 'BMET 350', 'BIOC 418', 'PHYS 342', 'thursday', 251),
('MATH 406', 'CHEM 438', 'CHIN 433', 'CHEM 437', 'CHEM 416', 'DIMA 0233', 'thursday', 252),
('DIBM 0216', 'CDEV 0207 ', 'PPMA 00125', 'CDEV 0208', 'EPSY 0233 ', 'CDEV 334', 'thursday', 253),
('PPMA 0121', 'PPMA 0213', 'DIMA 0232', 'PPMA 0120', 'PPMA 00100', 'DIBM 00211', 'thursday', 254),
('COMM 264', 'LAPA 00140', 'KISW 312', 'COMM 242', 'LAPA 00160', 'COMM 253', 'thursday', 255),
('EDCI 201', 'LITT 212', 'RELI 120', 'KISW 202', 'KISW 102', 'MBAD 881', 'thursday', 256),
('ZOOL 00143', 'DIAC 0228', 'DIAC 0223', 'DIAC 0225', 'ENGL 102', 'BCOM 341E', 'thursday', 257),
('DPLM 0212', 'COSC 00131', 'DIBM 0251', 'SOCI 101', 'RELI 120', 'MBAD 811', 'thursday', 258),
('DJMC 0124', 'DJMC 0127', 'DJMC 0125', 'LAPA 0170', 'DJMC 0126', 'MPLM 831', 'thursday', 259),
('GEOG 425', 'SOWK 0121', 'GEOG 424', 'SOWK 0122', 'GEOG 417', 'SOWK 0123', 'thursday', 260),
('SOWK 00124', 'BSIS 102', 'CDEV 00120 ', 'BSIS 103', 'BSIS 241', 'BSIS 206', 'thursday', 261),
('BSIS 313', 'BLIS 404', 'BSIS 314', 'BRMT 414', 'BSIS 457', 'BSIS 321', 'thursday', 262),
('DIBM 0216', 'CIBM 00114', 'DIBM 0217', 'CIBM 00113', 'DIBM 0223', 'HIST 317', 'thursday', 263),
('PSYC 325', 'PSYC 333', 'PSYC 475 ', 'PSYC 124', 'PSYC 235', 'PSYC 123', 'thursday', 264),
('CRSS 0235', 'CRSS 0202', 'CPSY 0132', 'CRSS 0236', 'CRSS 0201', 'CPSY 0111', 'thursday', 265),
('CRSS 00101', 'CRSS 00111', 'CDEV 123', 'CDEV 00150', 'CDEV 250', 'CRSS 00102', 'thursday', 266),
('SOCI 403', 'CDEV 00150', 'CDEV 416', 'CDEV 00103', 'CDEV 417', 'CDEV 00105', 'thursday', 267),
('CDEV 325', '', 'EPSC 222', '', '', '', 'Friday', 268),
('ENHE 141', 'NURS 219', 'ENHE 152', 'ENHE 113', 'HNDS 132', 'NURS 218 S104', 'friday', 269),
('NURS 133', 'HRIM 141', 'NURS 181', 'HRIM 121', 'NURS 192', 'NURS 204', 'friday', 270),
('NURS 225', 'NURS 376', 'NURS 375', 'NURS 306', 'NURU 124', 'NUPM 841', 'friday', 271),
('NURU 132', 'NURU 123', 'NURU 241', 'NWOP 843', 'AGRI 322', 'BOTA 131', 'friday', 272),
('AGEC 111', 'AGED 332', 'BEEM 111', 'MATH 123', 'MATH 141', 'BCOM  220', 'friday', 273),
('BUST 321', 'MATH 403', 'MATH 442', 'MATH 426', 'GEOG 426', 'COSC 103', 'friday', 274),
('LITT 222', 'CHEM 130', 'HIST 421', 'HIST 222', 'ENGL 222', 'EDCI  334', 'friday', 275),
('AGRI 383', 'GEOG 322', 'AGRI 322', 'HORT 451', 'FOST 212', 'HORT 463', 'friday', 276),
('MATH 442', 'MATH 409', 'GEOG 312', 'MATH 303', 'MATH 341', 'COSC 103', 'friday', 277),
('BUST 222', 'CHEM 221', 'FOST 241', 'PHYS 281', 'CHEM 416', 'CHEM 325', 'friday', 278),
('MATH 141', 'BOTA 121', 'ENGL 442 ', 'PHIL 104', 'HIST 222', 'EDCI 335', 'friday', 279),
('ICEN 206', 'NUED 811', 'FOST 324', 'FOST 336', 'AGED 0232', 'PHYS 224', 'friday', 280),
('MATH 442', 'PHYS 122', 'COSC 102', 'BOTA 271', 'ENSC 00100', 'PHYS 443', 'friday', 281),
('MATH 201', 'COSC 00102', 'EPSC 222', 'ACSC 224', 'CHEM 416', 'ZOOL 412', 'friday', 282),
('COSC 223', 'COSC 333', 'COSC 224', 'COSC 341', 'COSC 250', 'BOTA 251', 'friday', 283),
('ANHE 0233', 'ANHE 0112', 'ANHE 0243', 'AGBM  0111', 'ANHE 0111', 'DATM 00241', 'friday', 284),
('ECDE 312', 'ECDE 446', 'ECDE 236', 'ECDE 448', 'ECDE 335', 'ECDE 237', 'friday', 285),
('ECDE 0245', 'ECDE 124', 'ECDE 0246', 'ECDE 00244', 'ECDE 00245', 'SOIL 213', 'friday', 286),
('SOIL 212', 'AGRI 411', 'NARE 453', 'HORT 170', 'FOST 346', 'AGRI 482', 'friday', 287),
('FOST 465', 'AGEC 452', 'FOST 466', 'ANSC 455', 'FOST 481', 'AGBM 332', 'friday', 288),
('AGED 00112', 'ANHE 00115 ', 'AGEN 00134', 'ANHE 00120', 'ANHE 00122', 'AGEC 343', 'friday', 289),
('WIEM 347', 'WIEM 425', 'WIEM 362', 'NARE 446', 'WIEM 345', 'WEM 344', 'friday', 290),
('NARE 221', 'NARE 372', 'NARE 212', 'ANSC 359', 'NARE 213', 'ANSC 456', 'friday', 291),
('ENSC 434', 'NARE 481', 'ENSC 102', 'ENSC 331', 'ENSC 444', 'NARE 371', 'friday', 292),
('WIEM 343', 'BTOM 151', 'NARE 331', 'BCOM 353', 'BTOM 152', 'WIEM 452', 'friday', 293),
('BCHM 212', 'BECO 371', 'BTOM 222', 'BTOM 361', 'BCHM 391', 'BTOM 254', 'friday', 294),
('DTHM 0111', 'BTOM 452', 'CHTM 00601', 'CHTM 00102', 'BTOM 453', 'DTHM 0161', 'friday', 295),
('DWLM 0101', 'ACSC 441', 'COSC 0172', 'COSC 0130', 'COSC 00190', 'COSC 483', 'friday', 296),
('EENG 292', 'BIOC 241', 'BMET 232', 'BIOC 220', 'CHEM 345', 'CHEM 361', 'friday', 297),
('BCHM 212', 'DIBM 0211 ', 'BCOM 104', 'BCHM 242', 'BCHM  161', 'BCHM 253', 'friday', 298),
('BCHM 421', 'BCHM 332', 'BCHM 472', 'BTOM 151 BSR 202', 'ECON 100', 'BCHM 473', 'friday', 299),
('BECO 243', 'COSC 483', 'COSC 442', 'BECO 242', 'COSC 484', 'BECO 241', 'friday', 300),
('ACSC 225', 'COSC 333', 'ACSC 226', 'ACSC 333', 'COSC 341', 'ACSC 231', 'friday', 301),
('BPLM 314', 'BCOM 458', 'BCOM 202', 'BCOM 103', 'BCOM 427', 'COMS 101', 'friday', 302),
('BCOM 437', 'BCOM 446', 'BCOM 241', 'BCOM 315', 'BCOM 414', 'BCOM 339', 'friday', 303),
('ECON 222', 'BCOM 103', 'ECON 121', 'BEEM 112', 'BCOM 112', 'BCOM 162', 'friday', 304),
('BCOM  355', 'BEEM 325', 'BEEM 437', 'BEEM 449', 'BCOM 364', 'DIBM 0111', 'friday', 305),
('BCOM  231', 'DIBM 0101', 'BCOM 341', 'DIBM 0102', 'DIBM 0214', 'DIBM 0215', 'friday', 306),
('BCOM 464', 'BPLM 223', 'BPLM 414', 'BCOM 331', 'BPLM 415', 'BPLM 451 ', 'friday', 307),
('BPLM  313', 'BPLM 314', 'BPLM 223', 'BPLM 315', 'BCOM 241', 'BPLM 115', 'friday', 308),
('DPLM 0217', 'BCOP 121', 'DPLM 0218', 'CPLM 00141', 'BCOP 112', 'BCOP 471', 'friday', 309),
('BCOP 412', 'BCOP 402', 'CPLM 00111', 'COMM 381', 'COMM 472', 'COMM 362', 'friday', 310),
('COMM 420', 'DJMC 0112', 'COMM 471', 'DJMC 0123', 'LAPA 0112', 'DJMC 0122', 'friday', 311),
('CRSS 331', 'CRSS 423', 'CRSS 427', 'CRSS 241', 'SOCI 353', 'CRSS 210', 'friday', 312),
('CDEV 220', 'CDEV 351', 'CDEV 215', 'CRSS 00100', 'CRS 0240', 'CRSS 0200', 'friday', 313),
('MATH 121', 'FNMT 101 ', 'PHYS 134 ', 'MATH 121', 'ACMT 111 ', 'MATH 121', 'friday', 314),
('PHIL 100', 'PHYS 113', 'BMET 111', 'CHEM 212', 'BMET 110', 'COSC 104', 'friday', 315),
('ACMT 211 ', 'MATH 447', 'MATH 444', 'BIOC 425', 'BIOC 426', 'MATH 445', 'friday', 316),
('PHYS 482', 'BMET 424', '', 'MATH 424', 'PHYS 417', 'BMET 452', 'friday', 317),
('', '', '', 'MBAD 821', 'BCOM 354', 'DIMA 0234', 'friday', 318),
('PPMA 0122', 'PPMA 0214', 'PPMA 0123', 'CDEV 0207', 'PPMA 0219', 'PPMA 0220', 'friday', 319),
('COMM 243', 'COMM 105', 'COMM 252', 'COMM 106', 'LAPA 00253', 'ENGL 104', 'friday', 320),
('EDCI 211', 'EDFO 111', 'HIST 213', 'LITT 101', 'KISW 201', 'RELI 221', 'friday', 321),
('MBAD 841', 'DIBM 0218', 'ENGL 211', 'MBAD 821', 'MBAD 831', 'BCOM 352E', 'friday', 322),
('MPLM 831', 'DIAC 0221', 'MBAD 871', 'CPLM 00131', 'DIAC 0222', 'BCOM 321E', 'friday', 323),
('DPLM  0214', 'DIAC 0231', 'DPLM 0111', 'DIAC 0111', 'DPLM 0211', 'BCOM 342E', 'friday', 324),
('COSC 0100', 'SOCI 102', 'COSC 0110', 'COSC 00171', 'PHIL 106', 'BCOM 332E', 'friday', 325),
('RELI 103', 'DJMC 0121', 'DJMC 0122', 'RELI 205', 'RELI 231', 'BCOM 311E', 'friday', 326),
('LAPA 0120', 'LAPA 0130', 'HIST 344', 'HIST 356', 'KISW 313', 'BPLM 116', 'friday', 327),
('CIBM 00142', 'ENGL 363', 'CIBM 00141', 'ENGL 372', 'SOCI  353', 'BCOM 361', 'friday', 328),
('ENGL 417', 'SOWK 0126', 'ENGL 422', 'HIST 481', 'CDEV 0125', 'MSOM 821', 'friday', 329),
('SOWK 00121', 'BSIS 307', 'SOWK 00122', 'BSIS 308', 'SOWK 00123', 'MBAD 861', 'friday', 330),
('BPMS 425', 'FOND 121', 'BRMT 415', 'PSYC 122', 'BLIS 406', 'BSIS 480', 'friday', 331),
('PSYC 224', 'PSYC 225', 'PSYC 323', 'PSYC 226', 'PSYC 324', 'PSYC 232', 'friday', 332),
('', '', '', 'BCOM 353', 'COSC 260', '', 'friday', 333),
('', '', '', 'BCOM  332', 'BPLM 414', '', 'friday', 334),
('', '', '', 'BCOM 353', 'BCOM 312', '', 'friday', 335),
('', '', '', 'BCOM 327', 'BCOM 334', '', 'friday', 336),
('', '', '', 'BCOM 343', 'BCOM 344', '', 'friday', 337),
('', '', '', 'BCOM 333', 'BCOM 323', '', 'friday', 338),
('', '', '', 'BPLM 324', '', '', 'friday', 339),
('', '', '', 'BCOM 362', '', '', 'friday', 340);

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `7to9` text,
  `9to11` text,
  `11to1` text,
  `1to3` text,
  `3to5` text,
  `5to7` text,
  `day` varchar(15) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`7to9`, `9to11`, `11to1`, `1to3`, `3to5`, `5to7`, `day`, `id`) VALUES
('SGT 1', 'SGT1', 'SGT1', 'SGT1', 'SGT1', 'SGT1', 'monday', 1),
('S104', 'S104', 'S104', 'S104', 'S104', 'S104', 'monday', 2),
('S105', 'S105', 'S105', 'S105', 'S105', 'S105', 'monday', 3),
('S203', 'S203', 'S203', 'S203', 'S203', 'S203', 'monday', 4),
('S204', 'S204', 'S204', 'S204', 'S204', 'S204', 'monday', 5),
('S207', 'S207', 'S207', 'S207', 'S207', 'S207', 'monday', 6),
('S302', 'S302', 'S302', 'S302', 'S302', 'S302', 'monday', 7),
('S303', 'S303', 'S303', 'S303', 'S303', 'S303', 'monday', 8),
('S304', 'S304', 'S304', 'S304', 'S304', 'S304', 'monday', 9),
('S306', 'S306', 'S306', 'S306', 'S306', 'S306', 'monday', 10),
('S402', 'S402', 'S402', 'S402', 'S402', 'S402', 'monday', 11),
('S403', 'S403', 'S403', 'S403', 'S403', 'S403', 'monday', 12),
('S404', 'S404', 'S404', 'S404', 'S404', 'S404', 'monday', 13),
('S502', 'S502', 'S502', 'S502', 'S502', 'S502', 'monday', 14),
('503', 'S503', 'S503', 'S503', 'S503', 'S503', 'monday', 15),
('S602', 'S602', 'S602', 'S602', 'S602', 'S602', 'monday', 16),
('L1', 'L1', 'L1 ', 'L1', 'L1', 'L1', 'monday', 17),
('L2', 'L2', 'L2', 'L2', 'L2', 'L2', 'monday', 18),
('L3', 'L3', 'L3', 'L3', 'L3', 'L3', 'monday', 19),
('L4', 'L4', 'L4', 'L4', 'L4', 'L4', 'monday', 20),
('L8', 'L8', 'L8', 'L8', 'L8', 'L8', 'monday', 21),
('L10', 'L10', 'L10', 'L10', 'L10', 'L10', 'monday', 22),
('L11', 'L11', 'L11', 'L11', 'L11', 'L11', 'monday', 23),
('L12', 'L12', 'L12', 'L12', 'L12', 'L12', 'monday', 24),
('S209', 'S209', 'S209', 'S209', 'S209', 'S209', 'monday', 25),
('S308', 'S308', 'S308', 'S308', 'S308', 'S308', 'monday', 26),
('S408', 'S408', 'S408', 'S408', 'S408', 'S408', 'monday', 27),
('S508', 'S508', 'S508', 'S508', 'S508', 'S508', 'monday', 28),
('S608', 'S608', 'S608', 'S608', 'S608', 'S608', 'monday', 29),
('S701', 'S701', 'S701', 'S701', 'S701', 'S701', 'monday', 30),
('BSR 001', 'BSR 001', 'BSR 001', 'BSR 001', 'BSR 001', 'BSR 001', 'monday', 31),
('BSR 201', 'BSR 201', 'BSR 201', 'BSR 201', 'BSR 201', 'BSR 201', 'monday', 32),
('BSR 202', 'BSR 202', 'BSR 202', 'BSR 202', 'BSR 202', 'BSR 202', 'monday', 33),
('BSR 301', 'BSR 301', 'BSR 301', 'BSR 301', 'BSR 301', 'BSR 301', 'monday', 34),
('BSR 302', 'BSR 302', 'BSR 302', 'BSR 302', 'BSR 302', 'BSR 302', 'monday', 35),
('BSR 303', 'BSR 303', 'BSR 303', 'BSR 303', 'BSR 303', 'BSR 303', 'monday', 36),
('BSR 401', 'BSR 401', 'BSR 401', 'BSR 401', 'BSR 401', 'BSR 401', 'monday', 37),
('BSR 402', 'BSR 402', 'BSR 402', 'BSR 402', 'BSR 402', 'BSR 402', 'monday', 38),
('BSR 403', 'BSR 403', 'BSR 403', 'BSR 403', 'BSR 403', 'BSR 403', 'monday', 39),
('BSR 501', 'BSR 501', 'BSR 501', 'BSR 501', 'BSR 501', 'BSR 501', 'monday', 40),
('BSR 502', 'BSR 502', 'BSR 502', 'BSR 502', 'BSR 502', 'BSR 502', 'monday', 41),
('BSR 503', 'BSR 503', 'BSR 503', 'BSL 201', 'BSR 503', 'BSL 503', 'monday', 42),
('BSL 201', 'BSL 201', 'BSL 201', 'BSL  201', 'BSL 201', 'BSR 201', 'monday', 43),
('BSL 202', 'BSL 202', 'BSL 202', 'BSL 202', 'BSL 202', 'BSL 202', 'monday', 44),
('BSL 203', 'BSL 203', 'BSL 203', 'BSL 203', 'BSL 203', 'BSL 203', 'monday', 45),
('BSL 301', 'BSL 301', 'BSL 301', 'BSL 301', 'BSL301', 'BSL 301', 'monday', 46),
('BSL 302', 'BSL 302', 'BSR 302', 'BSL 302', 'BSL302', 'BSL 302', 'monday', 47),
('BSL 303', 'BSL 303', 'BSR 303', 'BSL 303', 'BSL 303', 'BSL 303', 'monday', 48),
('BSL 401', 'BSL 401', 'BSL 401', 'BSL 401', 'BSL 401', 'BSL 401', 'monday', 49),
('BSL 402', 'BSL 402', 'BSL 402', 'BSL 402', 'BSL 402', 'BSL 402', 'monday', 50),
('BSL 403', 'BSL 403', 'BSL 403', 'BSL 403', 'BSL 403', 'BSL 403', 'monday', 51),
('BSL 501', 'BSL 501', 'BSL 501', 'BSL 501', 'BSL 501', 'BSL 501', 'monday', 52),
('BSL 502', 'BSL 502', 'BSL 502', 'BSL 502', 'BSL 502', 'BSL 502', 'monday', 53),
('BSL 503', 'BSL 503', 'BSL 503', 'BSL 503', 'BSL 503', 'BSL 503', 'monday', 54),
('MS 03', 'MS 03', 'MS 03', ' MS03', 'MS 03', 'MS 03', 'monday', 55),
('MS 04', ' MS 04', 'MS 04', 'MS 04', 'MS 04', 'MS 04', 'monday', 56),
('MS 05', 'MS 05', 'MS 05', 'MS 05', 'MS 05', 'MS 05', 'monday', 57),
('MS 07', 'MS 07', 'MS 07', 'MS 07', 'MS 07', 'MS 07', 'monday', 58),
('MS 08', ' MS 08', 'MS 08', 'MS 08', 'MS 08', 'MS 08', 'monday', 59),
('MS 17', 'MS 17', 'MS 17', 'MS17', 'MS 17', 'MS 17', 'monday', 60),
('MS 20', 'MS 20', 'MS 20', 'MS 20', 'MS 20', 'MS 20', 'monday', 61),
('MS 21', ' MS 21', 'MS 21', 'MS 21', 'MS 21', 'MS 21', 'monday', 62),
('MS 23', ' MS 23', 'MS 23', 'MS 23', 'MS 23', 'MS 23', 'monday', 63),
('MS 24', ' MS 24', 'MS 24', ' MS24', 'MS 24', 'MS 24', 'monday', 64),
('MS 26', ' MS 26', 'MS 26', 'MS 26', 'MS 26', 'MS 26', 'monday', 65),
('MS 27', ' MS 27', 'MS 27', 'MS 27', 'MS 27', 'MS 27', 'monday', 66),
('MS 30', ' MS 30', 'MS 30', 'MS 30', 'MS 30', 'MS 30', 'monday', 67),
('SGT1', 'SGT1', 'SGT1', 'SGT1', 'SGT1', 'SGT1', 'Tuesday', 68),
('S104', 'S104', 'S104', 'S104', 'S104', 'S104', 'tuesday', 69),
('S105', 'S105', 'S105', 'S105', 'S105', 'S105', 'tuesday', 70),
('S203', 'S203', 'S203', 'S203', 'S203', 'S203', 'tuesday', 71),
('S204', 'S204', 'S204', 'S204', 'S204', 'S204', 'tuesday', 72),
('S207', 'S207', 'S207', 'S207', 'S207', 'S207', 'tuesday', 73),
('S302', 'S302', 'S302', 'S302', 'S302', 'S302', 'tuesday', 74),
('S303', 'S303', 'S303', 'S303', 'S303', 'S303', 'tuesday', 75),
('S304', 'S304', 'S304', 'S304', 'S304', 'S304', 'tuesday', 76),
('S306', 'S306', 'S306', 'S306', 'S306', 'S306', 'tuesday', 77),
('S402', 'S402', 'S402', 'S402', 'S402', 'S402', 'tuesday', 78),
('S403', 'S403', 'S403', 'S403', 'S403', 'S403', 'tuesday', 79),
('S404', 'S404', 'S404', 'S404', 'S404', 'S404', 'tuesday', 80),
('S502', 'S502', 'S502', 'S502', 'S502', 'S502', 'tuesday', 81),
('S503', 'S503', 'S503', 'S503', 'S503', 'S503', 'tuesday', 82),
('S602', 'S602', 'S602', 'S602', 'S602', 'S602', 'tuesday', 83),
('L1', 'L1', 'L1', 'L1', 'L1', 'L1', 'tuesday', 84),
('L2', 'L2', 'L2', 'L2', 'L2', 'L2', 'tuesday', 85),
('L3', 'L3', 'L3', 'L3', 'L3', 'L3', 'tuesday', 86),
('L4', 'L4', 'L4', 'L4', 'L4', 'L4', 'tuesday', 87),
('L8', 'L8', 'L8', 'L8', 'L8', 'L8', 'tuesday', 88),
('L10', 'L10', 'L10', 'L10', 'L10', 'L10', 'tuesday', 89),
('L11', 'L11', 'L11', 'L11', 'L11', 'L11', 'tuesday', 90),
('L12', 'L12', 'L12', 'L12', 'L12', 'L12', 'tuesday', 91),
('S209', 'S209', 'S209', 'S209', 'S209', 'S209', 'tuesday', 92),
('S308', 'S308', 'S308', 'S308', 'S308', 'S308', 'tuesday', 93),
('S408', 'S408', 'S408', 'S408', 'S408', 'S408', 'tuesday', 94),
('S508', 'S508', 'S508', 'S508', 'S508', 'S508', 'tuesday', 95),
('S608', 'S608', 'S608', 'S608', 'S608', 'S608', 'tuesday', 96),
('S701', 'S701', 'S701', 'S701', 'S701', 'S701', 'tuesday', 97),
('BSR 001', 'BSR 001', '', '', '', '', 'tuesday', 98),
('BSR 201', 'BSR 201', 'BSR 201', 'BSR 201', 'BSR 201', 'BSR 201', 'tuesday', 99),
('BSR 202', 'BSR 202', 'BSR 202', 'BSR 202', 'BSR 202', 'BSR 202', 'tuesday', 100),
('BSR 301', 'BSR 301', 'BSR 301', 'BSR 301', 'BSR 301', 'BSR 301', 'tuesday', 101),
('BSR 302', 'BSR 302', 'BSR 302', 'BSR 302', 'BSR 302', 'BSR 302', 'tuesday', 102),
('BSR 303', 'BSR 303', 'BSR 303', 'BSR 303', 'BSR 303', 'BSR 303', 'tuesday', 103),
('BSR 401', 'BSR 401', 'BSR 401', 'BSR 401', 'BSR 401', 'BSR 401', 'tuesday', 104),
('BSR 402', 'BSR 402', 'BSR 402', 'BSR 402', 'BSR 402', 'BSR 402', 'tuesday', 105),
('BSR 403', 'BSR 403', 'BSR 403', 'BSR 403', 'BSR 403', 'BSR 403', 'tuesday', 106),
('BSR 501', 'BSR 501', 'BSR 501', 'BSR 501', 'BSR 501', 'BSR 501', 'tuesday', 107),
('BSR 502', 'BSR 502', 'BSR 502', 'BSR 502', 'BSR 502', 'BSR 502', 'tuesday', 108),
('BSR 503', 'BSR 503', 'BSR 503', 'BSR 503', 'BSR 503', 'BSR 503', 'tuesday', 109),
('BSL 201', 'BSL 201', 'BSL 201', 'BSL 201', 'BSL 201', 'BSL 201', 'tuesday', 110),
('BSL 202', 'BSL 202', 'BSL 202', 'BSL 202', 'BSL 202', 'BSL 202', 'tuesday', 111),
('BSL 203', 'BSL 203', 'BSL 203', 'BSL 203', 'BSL 203', 'BSL 203', 'tuesday', 112),
('BSL 301', 'BSL 301', 'BSL 301', 'BSL 301', 'BSL 301', 'BSL 301', 'tuesday', 113),
('BSL 302', 'BSL 302', 'BSL 302', 'BSL 302', 'BSL 302', 'BSL 302', 'tuesday', 114),
('BSL 303', 'BSL 303', 'BSL 303', 'BSL 303', 'BSL 303', 'BSL 303', 'tuesday', 115),
('BSL 401', 'BSL 401', 'BSL 401', 'BSL 401', 'BSL 401', 'BSL 401', 'tuesday', 116),
('BSL 402', 'BSL 402', 'BSL 402', 'BSL 402', 'BSL 402', 'BSL 402', 'tuesday', 117),
('BSL 403', 'BSL 403', 'BSL 403', 'BSL 403', 'BSL 403', 'BSL 403', 'tuesday', 118),
('BSL 501', 'BSL 501', 'BSL 501', 'BSL 501', 'BSL 501', 'BSL 501', 'tuesday', 119),
('BSL 502', 'BSL 502', 'BSL 502', 'BSL 502', 'BSL 502', 'BSL 502', 'tuesday', 120),
('BSL 503', 'BSL 503', 'BSL 503', 'BSL 503', 'BSL 503', 'BSL 503', 'tuesday', 121),
('MS 03', 'MS 03', 'MS 03', 'MS 03', 'MS 03', 'MS 03', 'tuesday', 122),
('MS 04', 'MS 04', 'MS 04', 'MS 04', 'MS 04', 'MS 04', 'tuesday', 123),
('MS 05', 'MS 05', 'MS 05', 'MS 05', 'MS 05', 'MS 05', 'tuesday', 124),
('MS 07', 'MS 07', 'MS 07', 'MS 07', 'MS 07', 'MS 07', 'tuesday', 125),
('MS 08', 'MS 08', 'MS 08', 'MS 08', 'MS 08', 'MS 08', 'tuesday', 126),
('MS 17', 'MS 17', 'MS 17', 'MS 17', 'MS 17', 'MS 17', 'tuesday', 127),
('MS 20', 'MS 20', 'MS 20', 'MS 20', 'MS 20', 'MS 20', 'tuesday', 128),
('MS 21', 'MS 21', 'MS 21', 'MS 21', 'MS 21', 'MS 21', 'tuesday', 129),
('MS 23', 'MS 23', 'MS 23', 'MS 23', 'MS 23', 'MS 23', 'tuesday', 130),
('MS 24', 'MS 24', 'MS 24', 'MS 24', 'MS 24', 'MS 24', 'tuesday', 131),
('MS 26', 'MS 26', 'MS 26', 'MS 26', 'MS 26', 'MS 26', 'tuesday', 132),
('MS 27', 'MS 27', 'MS 27', 'MS 27', 'MS 27', 'MS 27', 'tuesday', 133),
('MS 30', 'MS 30', 'MS 30', 'MS 30', 'MS 30', 'MS 30', 'tuesday', 134),
('SGTI', 'SGTI ', 'SGTI ', 'SGTI', 'SGTI', 'SGTI', 'Wednesday', 135),
('S104', 'S104', 'S104', 'S104', 'S104', 'S104', 'wednesday', 136),
('S105', 'S105', 'S103', 'S105', 'S105', 'S105', 'wednesday', 137),
('S202', 'S203', 'S203', 'S203', 'S203', 'S203', 'wednesday', 138),
('S204', 'S204', 'S204', 'S204', 'S204', 'S204', 'wednesday', 139),
('S207', 'S207', 'S207', 'S207', 'S207', 'S207', 'wednesday', 140),
('S302', 'S302', 'S302', 'S302', 'S302', 'S302', 'wednesday', 141),
('S303', 'S303', 'S303', 'S303', 'S303', 'S303', 'wednesday', 142),
('S304', 'S304', 'S304', 'S304', 'S304', 'S304', 'wednesday', 143),
('S306', 'S306', 'S306', 'S306', 'S306', 'S306', 'wednesday', 144),
('S402', 'S402', 'S402', 'S402', 'S402', 'S402', 'wednesday', 145),
('S403', 'S403', 'S403', 'S403', 'S403', 'S403', 'wednesday', 146),
('S404', 'S404', 'S404', 'S404', 'S404', 'S404', 'wednesday', 147),
('S502', 'S502', 'S502', 'S502', 'S502', 'S403', 'wednesday', 148),
('S503', 'S503', 'S503', 'S503', 'S503', 'S503', 'wednesday', 149),
('S602', 'S602', 'S602', 'S602', 'S602', 'S602', 'wednesday', 150),
('L1', 'L1', 'L1', 'L1', 'L1', 'L1', 'wednesday', 151),
('L2', 'L2', 'L2', 'L2', 'L2', 'L2', 'wednesday', 152),
('L3', 'L3', 'L3', 'L3', 'L3', 'L3', 'wednesday', 153),
('L4', 'L4', 'L4', 'L4', 'L4', 'L14', 'wednesday', 154),
('L8', 'L8', 'L8', 'L8', 'L8', 'L8', 'wednesday', 155),
('L10', 'L10 ', 'L10', 'L10 ', 'L10 ', 'L10 ', 'wednesday', 156),
('L11', 'L11', 'L11', 'L11', 'L11', 'L11', 'wednesday', 157),
('L12', 'L12', 'L12', 'L12', 'L12', 'L12', 'wednesday', 158),
('S209', 'S209', 'S209', 'S209', 'S209', 'S208', 'wednesday', 159),
('S308', 'S308', 'S308', 'S308', 'S308', 'S308', 'wednesday', 160),
('S408', 'S408', 'S408', 'S400', 'S408', 'S408', 'wednesday', 161),
('S508', 'S508', 'S508', 'S508', 'S508', 'S508', 'wednesday', 162),
('S608', 'S608', 'S608', 'S608', 'S608', 'S608', 'wednesday', 163),
('S701', 'S701', 'S701', 'S701', 'S701', 'S701', 'wednesday', 164),
('BSR 001', '', '', '', '', 'BSR 001', 'wednesday', 165),
('BSR 201', 'BSR 201', 'BSR 201', 'BSR 201', 'BSR 201', 'BSR 201', 'wednesday', 166),
('BSR 202', 'BSR 202', 'BSR 202', 'BSR 202', 'BSR 202 ', 'BSR 301', 'wednesday', 167),
('BSR 301', 'BSR 301', 'BSR 301', 'BSR 301', 'BSR 301', 'BSR 301', 'wednesday', 168),
('BSR 302', 'BSR 302', 'BSR 302', 'BSR 302', 'BSR 302', 'BSR 302', 'wednesday', 169),
('BSR 303', 'BSR 303', 'BSR 303', '', 'BSR 303', 'BSR 303', 'wednesday', 170),
('BSR 401', 'BSR 401', 'BSR 401', 'BSR 401', 'BSR 401', 'BSR 401', 'wednesday', 171),
('BSR 402', 'BSR 402', 'BSR 402', 'BSR 402', 'BSR 402', 'BSR 402', 'wednesday', 172),
('BSR 403', 'BSR 403', 'BSR 403', 'BSR 403', 'BSR 403', 'BSR 403', 'wednesday', 173),
('BSR 501', 'BSR 501', 'BSR 501', 'BSR 501', 'BSR 501', 'BSR 501', 'wednesday', 174),
('BSR 502', 'BSR 502', 'BSR 502', 'BSR 502', 'BSR 502', 'BSR 502', 'wednesday', 175),
('BSR 503', 'BSR 503', 'BSR 503', 'BSR 503', 'BSR 503', 'BSR 503', 'wednesday', 176),
('BSL 201', 'BSL 201', 'BSL 201', 'BSL 201', 'BSL 201', 'BSL 201', 'wednesday', 177),
('BSL 202', 'BSL 202', 'BSL 202', 'BSL 202', 'BSL 202', 'BSL 202', 'wednesday', 178),
('BSL 203', 'BSL 203', 'BSL 203', 'BSL 203', 'BSL 203', 'BSL 203', 'wednesday', 179),
('BSL 301', 'BSL 301', 'BSL 301', 'BSL 301', 'BSL 301', 'BSL 301', 'wednesday', 180),
('BSL 302 ', 'BSL 302', 'BSL 302', 'BSL 302', 'BSL 302', 'BSL 302', 'wednesday', 181),
('BSL 303', 'BSL 303', 'BSL 303', 'BSL 303', 'BSL 303', 'BSL 303', 'wednesday', 182),
('BSL 401', 'BSL 401', 'BSL 401', 'BSL 401', 'BSL 401', 'BSL 401', 'wednesday', 183),
('BSL 402 ', 'BSL 402', 'BSL 402', 'BSL 402', 'BSL 402', 'BSL 402', 'wednesday', 184),
('BSL 403', 'BSL 403', 'BSL 403', 'BSL 403', 'BSL 403', 'BSL 403', 'wednesday', 185),
('BSL 501', 'BSL 501', 'BSL 501', 'BSL 501', 'BSL 501', 'BSL 501', 'wednesday', 186),
('BSL 502', 'BSL 502', 'BSL 502', '', '', 'BSL 502', 'wednesday', 187),
('', 'BSL 503', 'BSL 503', 'BSL 503', 'BSL 503', 'BSL 503', 'wednesday', 188),
('MS03', 'MS03', 'MS03', 'MS03', 'MS03', 'MS03', 'wednesday', 189),
('MS04', 'MS04', 'MS04', 'MS04', 'MS04', 'MS04', 'wednesday', 190),
('MS05', 'MS05', 'MS05', 'MS05', 'MS05', 'MS05', 'wednesday', 191),
('MS07', 'MS07', 'MS07', 'MS07', 'MS07', 'MS07', 'wednesday', 192),
('MS08', 'MS08', 'MS08', 'MS08', 'MS08', 'MS08', 'wednesday', 193),
('MS17', 'MS17', 'MS17', 'MS17', 'MS17', 'MS07', 'wednesday', 194),
('MS20', 'MS20', 'MS20', 'MS20', 'MS20', 'MS20', 'wednesday', 195),
('MS21', 'MS21', 'MS21', 'MS31', 'MS21', 'MS21', 'wednesday', 196),
('MS23', 'MS23', 'MS23', 'MS23', 'MS23', 'MS23', 'wednesday', 197),
('MS24', 'MS24', 'MS24', 'MS24', 'MS24', 'MS24', 'wednesday', 198),
('MS26', 'MS26', 'MS26', 'MS26', 'MS26', 'MS26', 'wednesday', 199),
('MS27', 'MS27', 'MS27', 'MS27', 'MS27', 'MS27', 'wednesday', 200),
('MS30', 'MS30', 'MS30', 'MS30', 'MS30', 'MS30', 'wednesday', 201),
('SGTI', 'SGTI ', 'SGTI', 'SGTI', 'SGTI', 'SGTI ', 'Thursday', 202),
('S104', 'S104', 'S104', 'S104', 'S104', 'S104', 'thursday', 203),
('S105', 'S105', 'S105', 'S105', 'S105', 'S105', 'thursday', 204),
('S203', 'S203', 'S203', 'S203', 'S203', 'S203', 'thursday', 205),
('S204', 'S204', 'S204', 'S204', 'S204', 'S204', 'thursday', 206),
('S207', 'S207', 'S207', 'S207', 'S207', 'S207', 'thursday', 207),
('S302', 'S302', 'S302', 'S302', 'S302', 'S302', 'thursday', 208),
('S303', 'S303', 'S303', 'S303', '', 'S303', 'thursday', 209),
('S304', 'S304', 'S304', 'S304', 'S304', 'S304', 'thursday', 210),
('S306', 'S306', 'S306', 'S306', 'S306', 'S308', 'thursday', 211),
('S402', 'S402', 'S402', 'S402', 'S402', 'S402', 'thursday', 212),
('S403', 'S403', 'S403', 'S403', 'S403', 'S403', 'thursday', 213),
('S404', 'S404', 'S404', 'S404', 'S404', 'S404', 'thursday', 214),
('S502', 'S502', 'S502', 'S502', 'S502', 'S502', 'thursday', 215),
('S503', 'S503', 'S503', 'S503', 'S503', 'S503', 'thursday', 216),
('S602', 'S602', 'S602', 'S602', '', 'S602', 'thursday', 217),
('L1', 'L1', 'L1', 'L1', 'L1', 'L1', 'thursday', 218),
('L2', 'L2', 'L2', 'L2', 'L2', 'L2', 'thursday', 219),
('L3', 'L3', 'L3', 'L3', 'L3', '', 'thursday', 220),
('L4', 'L4', 'L4', 'L4', 'L4', 'L4', 'thursday', 221),
('L8', 'S209', 'L8', 'L8', 'L8', 'L8', 'thursday', 222),
('L10 ', 'L10', 'L10 ', 'L10', 'L10 ', 'L10', 'thursday', 223),
('L11', 'L11', 'L11', 'L11', 'L11', 'L11', 'thursday', 224),
('L12', 'L12', 'L12', 'L12', 'L12', 'L12', 'thursday', 225),
('S209', 'S209', 'S209', 'S209', 'S209', 'S209', 'thursday', 226),
('S308', 'S308', 'S308', 'S308', 'S308', 'S308', 'thursday', 227),
('S406', 'S408', 'S408', 'S408', 'S408', 'S408', 'thursday', 228),
('S508', 'S508', 'S508', 'S508', 'S508', 'S508', 'thursday', 229),
('S608', 'S608', 'S608', 'S608', 'S608', 'S608', 'thursday', 230),
('S701', 'S701', 'S701', 'S701', 'S701', 'S701', 'thursday', 231),
('BSR 201', 'BSR 201', 'BSR 201', 'BSR 201', 'BSR 201', 'BSR 201', 'thursday', 232),
('BSR 202', 'BSR 202', 'BSR 202', 'BSR 202', 'BSR 202', 'BSR 202', 'thursday', 233),
('BSR 301', 'BSR 301', 'BSR 301', 'BSR 301', 'BSR 301', 'BSR 301', 'thursday', 234),
('BSR 302', 'BSR 302', 'BSR 302', 'BSR 302', 'BSR 302', 'BSR 302', 'thursday', 235),
('BSR 303', 'BSR 303', 'BSR 303', 'BSR 303', 'BSR 303', 'BSR 303', 'thursday', 236),
('BSR 401', 'BSR 401', 'BSR 401', 'BSR 401', 'BSR 401', 'BSR 401', 'thursday', 237),
('BSR 402', 'BSR 402', 'BSR 402', 'BSR 402', 'BSR 402', 'BSR 402', 'thursday', 238),
('BSR 403', 'BSR 403', 'BSR 501', 'BSR 403', 'BSR 403', 'BSR 403', 'thursday', 239),
('BSR 501', 'BSR 501', 'BSR 501', 'BSR 501', 'BSR 501', 'BSR 501', 'thursday', 240),
('BSR 502', 'BSR 502', 'BSR 502', 'BSR 502', 'BSR 502', 'BSR 502', 'thursday', 241),
('BSR 503', 'BSR 503', 'BSR 503', 'BSR 403', 'BSR 403', 'BSR 403', 'thursday', 242),
('BSR 201', 'BSL 201', 'BSL 201', 'BSL 201', 'BSL 201', 'BSL 201', 'thursday', 243),
('BSL 202', 'BSL 202', 'BSL 202', 'BSL 202', 'BSL 202', 'BSL 202', 'thursday', 244),
('BSL 203', 'BSL 203', 'BSL 203', 'BSL 203', 'BSL 203', 'BSL 203', 'thursday', 245),
('BSL 301', 'BSL 301', 'BSL 301', 'BSL 301', 'BSL 301', 'BSL 301', 'thursday', 246),
('BSL 202', 'BSL 302', 'BSL 302', 'BSL 302', 'BSL 302', 'BSL 302', 'thursday', 247),
('BSL 303', 'BSL 303', 'BSL 303', 'BSL 303', 'BSL 303', 'BSL 303', 'thursday', 248),
('BSL 401', 'BSL 401', 'BSL 401', 'BSL 401', 'BSL 401', 'BSL 401', 'thursday', 249),
('BSL 402', 'BSL 402', 'BSL 402', 'BSL 402', 'BSL 402', 'BSL 501', 'thursday', 250),
('BSL 403', 'BSL 403', 'BSL 403', 'BSL 403', 'BSL 501', 'BSL 403', 'thursday', 251),
('BSL 501', 'BSL 501', 'BSL 501', 'BSL 501', 'BSL 501', 'BSL 501', 'thursday', 252),
('BSL 502', 'BSL 502', ' BSL 502', 'BSL 502', 'BSL 502', 'BSL 502', 'thursday', 253),
('BSL 503', 'BSL 503', 'BSL 503', 'BSL 503', 'BSL 503', 'BSL 503', 'thursday', 254),
('MS03', 'MS03', 'MS03', 'MS03', 'MS03', 'MS03', 'thursday', 255),
('MS04', 'MS04', 'MS04', 'MS04', 'MS04', 'MS04', 'thursday', 256),
('MS05', 'MS05', 'MS05', 'MS05', 'MS05', 'MS05', 'thursday', 257),
('MS07', 'MS07', 'MS07', 'MS07', 'MS07', 'MS07', 'thursday', 258),
('MS08', 'MS08', 'MS08', 'MS08', 'MS08', 'MS08', 'thursday', 259),
('MS17', 'MS17', 'MS17', 'MS17', 'MS17', 'MS17', 'thursday', 260),
('MS20', 'MS20', 'MS20', 'MS20', 'MS20', 'MS20', 'thursday', 261),
('MS21', 'MS21', 'MS21', 'MS21', 'MS21', 'MS21', 'thursday', 262),
('MS23', 'MS23', 'MS23', 'MS23', 'MS23', 'MS23', 'thursday', 263),
('MS24', 'MS24', 'MS24', 'MS24', 'MS24', 'MS24', 'thursday', 264),
('MS26', 'MS26', 'MS26', 'MS26', 'MS26', 'MS26', 'thursday', 265),
('MS27', 'MS27', 'MS27', 'MS27', 'MS27', 'MS27', 'thursday', 266),
('MS30', 'MS30', 'MS30', 'MS30', 'MS30', 'MS30', 'thursday', 267),
('SGT1', '', 'SGT1', '', '', '', 'Friday', 268),
('S104', 'S104', 'S104', 'S104', 'S104', '', 'friday', 269),
('S105', 'S105', 'S105', 'S105', 'S105', 'S105', 'friday', 270),
('S203', 'S203', 'S203', 'S203', 'S203', 'S203', 'friday', 271),
('S204', 'S204', 'S204', 'S204', 'S204', 'S204', 'friday', 272),
('S207', 'S207', 'S207', 'S207', 'S207', 'S207', 'friday', 273),
('S302', 'S302', 'S302', 'S302', 'S302', 'S302', 'friday', 274),
('S303', 'S303', 'S303', 'S303', 'S303', 'S303', 'friday', 275),
('S304', 'S304', 'S304', 'S304', 'S304', 'S304', 'friday', 276),
('S306', 'S306', 'S306', 'S306', 'S306', 'S306', 'friday', 277),
('S402', 'S402', 'S402', 'S402', 'S402', 'S402', 'friday', 278),
('S403', 'S403', ' S403', 'S403', 'S403', 'S403', 'friday', 279),
('S404', 'S404', 'S404', 'S404', 'S404', 'S404', 'friday', 280),
('S502', 'S502', 'S502', 'S502', 'S502', 'S502', 'friday', 281),
('S503', 'S503', 'S503', 'S503', 'S503', 'S503', 'friday', 282),
('S602', 'S602', 'S602', 'S602', 'S602', 'S602', 'friday', 283),
('L1', 'L1', 'L1', 'L1', 'L1', 'L1', 'friday', 284),
('L2', 'L2', 'L2', 'L2', 'L2', 'L2', 'friday', 285),
('L3', 'L3', 'L3', 'L3', 'L3', 'L3', 'friday', 286),
('L4', 'L4', 'L4', 'L4', 'L4', 'L4', 'friday', 287),
('L8', 'L8', 'L8', 'L8', 'L8', 'L8', 'friday', 288),
('L10', 'L10', 'L10', 'L10', 'L10', 'L10', 'friday', 289),
('L11', 'L11', 'L11', 'L11', 'L11', 'L11', 'friday', 290),
('L12', 'L12', 'L12', 'L12', 'L12', 'L12', 'friday', 291),
('S209', 'S209', 'S209', 'S209', 'S209', 'S209', 'friday', 292),
('S308', 'S308', 'S308', 'S308', 'S308', 'S308', 'friday', 293),
('S408', 'S408', 'S408', 'S408', 'S408', 'S408', 'friday', 294),
('S508', 'S508', 'S508', 'S508', 'S508', 'S508', 'friday', 295),
('S608', 'S608', 'S608', 'S608', 'S608', 'S608', 'friday', 296),
('S701', 'S701', 'S701', 'S701', 'S701', 'S701', 'friday', 297),
('BSR201', 'BSR 201', 'BSR 201', 'BSR 201', 'BSR 201', 'BSR 201', 'friday', 298),
('BSR 202', 'BSR 202', 'BSR 202', '', 'BSR 202', 'BSR 202', 'friday', 299),
('BSR 301', 'BSR 301', 'BSR 301', 'BSR 301', 'BSR 301', 'BSR 301', 'friday', 300),
('BSR 302', 'BSR 302', 'BSR 302', 'BSR302', 'BSR 302', 'BSR 302', 'friday', 301),
('BSR 303', 'BSR 303', 'BSR 303', 'BSR 303', 'BSR 303', 'BSR 303', 'friday', 302),
('BSR 401', 'BSR 401', 'BSR 401', 'BSR 401', 'BSR 401', 'BSR401', 'friday', 303),
('BSR 402', 'BSR 402', 'BSR 402', 'BSR 402', 'BSR 402', 'BSR 402', 'friday', 304),
('BSR 403', 'BSR 403', 'BSR 403', 'BSR 403', 'BSR 403', 'BSR 403', 'friday', 305),
('BSR 501', 'BSR 501', 'BSR 501', 'BSR 501', 'BSR 501', 'BSR 501', 'friday', 306),
('BSR 502', 'BSR 502', 'BSR 502', 'BSR 502', 'BSR 502', 'BSR 502', 'friday', 307),
('BSR 503', 'BSR 503', 'BSR 503', 'BSR 503', 'BSR 503', 'BSR 503', 'friday', 308),
('BSL 201', 'BSL 201', 'BSL 201', 'BSL 201', 'BSL 201', 'BSL 201', 'friday', 309),
('BSL 202', 'BSL 202', 'BSL 202', 'BSL 202', 'BSL 202', 'BSL 202', 'friday', 310),
('BSL 203', 'BSL 203', 'BSL 203', 'BSL 203', ' BSL 203', 'BSL 203', 'friday', 311),
('BSL 301', 'BSL 301', 'BSL 301', 'BSL 301', 'BSL 301', 'BSL 301', 'friday', 312),
('BSL 302', 'BSL 302', 'BSL 302', 'BSL 302', 'BSL 302', 'BSL 302', 'friday', 313),
('BSL 303', 'BSL 303', 'BSL 303', 'BSL 303', 'BSL 303', 'BSL 303', 'friday', 314),
('BSL 401', 'BSL 401', 'BSL 401', 'BSL 401', 'BSL 401', 'BSL 401', 'friday', 315),
('BSL 402', 'BSL 402', 'BSL 402', 'BSL 402', 'BSL 402', 'BSL 402', 'friday', 316),
('BSL 403', 'BSL 403', '', 'BSL 403', 'BSL 403', 'BSL 403', 'friday', 317),
('', '', '', 'L12', 'L11', 'BSL 502', 'friday', 318),
('BSL 503', 'BSL 503', 'BSL 503', 'BSL 503', 'BSL 503', 'BSL503', 'friday', 319),
('MS03', 'MS03', 'MS03', 'MS03', 'MS03', 'MS03', 'friday', 320),
('MS04', 'MS04', 'MS04', 'MS04', 'MS04', 'MS04', 'friday', 321),
('MS05', 'MS05', 'MS05', 'MS05', 'MS05', 'MS05', 'friday', 322),
('MS07', 'MS07', 'MS07', 'MS07', 'MS07', 'MS07', 'friday', 323),
('MS08', 'MS08', 'MS08', 'MS08', 'MS08', 'MS08', 'friday', 324),
('MS17', 'MS17', 'MS27', 'MS17', 'MS17', 'MS07', 'friday', 325),
('MS20', 'MS20', 'MS20', 'MS20', 'MS20', 'MS20', 'friday', 326),
('MS21', 'MS21', 'MS21', 'MS21', 'MS21', 'MS21', 'friday', 327),
('MS23', 'MS23', 'MS23', 'MS23', 'MS23', 'MS23', 'friday', 328),
('MS24', 'MS24', 'MS24', 'MS24', 'MS24', 'MS24', 'friday', 329),
('MS26', 'MS26', 'MS26', 'MS26', 'MS26', 'MS26', 'friday', 330),
('MS27', 'MS27', 'MS27', 'MS27', 'MS27', 'MS27', 'friday', 331),
('MS30', 'MS30', 'MS30', 'MS30', 'MS30S', 'MS30', 'friday', 332),
('', '', '', 'SGT1', 'L1', '', 'friday', 333),
('', '', '', 'L1', 'L2', '', 'friday', 334),
('', '', '', 'L2', 'L3', '', 'friday', 335),
('', '', '', 'L3', 'L4', '', 'friday', 336),
('', '', '', 'L4', 'L8', '', 'friday', 337),
('', '', '', 'L8', 'L10', '', 'friday', 338),
('', '', '', 'L10', '', '', 'friday', 339),
('', '', '', 'L11', '', '', 'friday', 340);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allunits`
--
ALTER TABLE `allunits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursedetails`
--
ALTER TABLE `coursedetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coursedetails_ibfk_1` (`coursename`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`name`),
  ADD KEY `faculty` (`faculty`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`name`),
  ADD KEY `department` (`department`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`regnumber`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allunits`
--
ALTER TABLE `allunits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coursedetails`
--
ALTER TABLE `coursedetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coursedetails`
--
ALTER TABLE `coursedetails`
  ADD CONSTRAINT `coursedetails_ibfk_1` FOREIGN KEY (`coursename`) REFERENCES `programs` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`faculty`) REFERENCES `faculties` (`id`);

--
-- Constraints for table `programs`
--
ALTER TABLE `programs`
  ADD CONSTRAINT `programs_ibfk_1` FOREIGN KEY (`department`) REFERENCES `departments` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
