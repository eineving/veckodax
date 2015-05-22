-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Host: 10.246.17.16:3306
-- Generation Time: May 22, 2015 at 08:09 AM
-- Server version: 5.5.43-MariaDB-1~wheezy
-- PHP Version: 5.3.3-7+squeeze15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `danieleineving_`
--
CREATE DATABASE `danieleineving_` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `danieleineving_`;

-- --------------------------------------------------------

--
-- Table structure for table `Club`
--

CREATE TABLE IF NOT EXISTS `Club` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Club`
--

INSERT INTO `Club` (`id`, `name`) VALUES
(1, 'Chalmers GK');

-- --------------------------------------------------------

--
-- Table structure for table `Course`
--

CREATE TABLE IF NOT EXISTS `Course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `clubID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`clubID`),
  KEY `clubID` (`clubID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Course`
--

INSERT INTO `Course` (`id`, `name`, `clubID`) VALUES
(1, '18-hålsbanan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Distance`
--

CREATE TABLE IF NOT EXISTS `Distance` (
  `hole` int(11) NOT NULL DEFAULT '0',
  `tee` varchar(20) NOT NULL DEFAULT '',
  `courseID` int(11) NOT NULL DEFAULT '0',
  `clubID` int(11) NOT NULL DEFAULT '0',
  `meters` int(11) NOT NULL,
  PRIMARY KEY (`hole`,`tee`,`courseID`,`clubID`),
  KEY `courseID` (`courseID`),
  KEY `clubID` (`clubID`),
  KEY `tee` (`tee`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Distance`
--

INSERT INTO `Distance` (`hole`, `tee`, `courseID`, `clubID`, `meters`) VALUES
(1, 'Vit', 1, 1, 359),
(1, 'Gul', 1, 1, 359),
(1, 'Blå', 1, 1, 324),
(1, 'Röd', 1, 1, 324),
(1, 'Orange', 1, 1, 210),
(2, 'Vit', 1, 1, 135),
(2, 'Gul', 1, 1, 135),
(2, 'Blå', 1, 1, 135),
(2, 'Röd', 1, 1, 113),
(2, 'Orange', 1, 1, 108),
(3, 'Vit', 1, 1, 325),
(3, 'Gul', 1, 1, 302),
(3, 'Blå', 1, 1, 294),
(3, 'Röd', 1, 1, 248),
(3, 'Orange', 1, 1, 220),
(4, 'Vit', 1, 1, 419),
(4, 'Gul', 1, 1, 419),
(4, 'Blå', 1, 1, 339),
(4, 'Röd', 1, 1, 339),
(4, 'Orange', 1, 1, 256),
(5, 'Vit', 1, 1, 306),
(5, 'Gul', 1, 1, 291),
(5, 'Blå', 1, 1, 286),
(5, 'Röd', 1, 1, 255),
(5, 'Orange', 1, 1, 196),
(6, 'Vit', 1, 1, 506),
(6, 'Gul', 1, 1, 506),
(6, 'Blå', 1, 1, 457),
(6, 'Röd', 1, 1, 457),
(6, 'Orange', 1, 1, 316),
(7, 'Vit', 1, 1, 187),
(7, 'Gul', 1, 1, 187),
(7, 'Blå', 1, 1, 154),
(7, 'Röd', 1, 1, 154),
(7, 'Orange', 1, 1, 124),
(8, 'Vit', 1, 1, 382),
(8, 'Gul', 1, 1, 342),
(8, 'Blå', 1, 1, 300),
(8, 'Röd', 1, 1, 300),
(8, 'Orange', 1, 1, 230),
(9, 'Vit', 1, 1, 140),
(9, 'Gul', 1, 1, 129),
(9, 'Blå', 1, 1, 120),
(9, 'Röd', 1, 1, 110),
(9, 'Orange', 1, 1, 107),
(10, 'Vit', 1, 1, 347),
(10, 'Gul', 1, 1, 327),
(10, 'Blå', 1, 1, 315),
(10, 'Röd', 1, 1, 300),
(10, 'Orange', 1, 1, 190),
(11, 'Vit', 1, 1, 177),
(11, 'Gul', 1, 1, 177),
(11, 'Blå', 1, 1, 146),
(11, 'Röd', 1, 1, 146),
(11, 'Orange', 1, 1, 143),
(12, 'Vit', 1, 1, 477),
(12, 'Gul', 1, 1, 447),
(12, 'Blå', 1, 1, 435),
(12, 'Röd', 1, 1, 375),
(12, 'Orange', 1, 1, 265),
(13, 'Vit', 1, 1, 343),
(13, 'Gul', 1, 1, 333),
(13, 'Blå', 1, 1, 320),
(13, 'Röd', 1, 1, 290),
(13, 'Orange', 1, 1, 200),
(14, 'Vit', 1, 1, 269),
(14, 'Gul', 1, 1, 269),
(14, 'Blå', 1, 1, 260),
(14, 'Röd', 1, 1, 228),
(14, 'Orange', 1, 1, 190),
(15, 'Vit', 1, 1, 159),
(15, 'Gul', 1, 1, 159),
(15, 'Blå', 1, 1, 128),
(15, 'Röd', 1, 1, 128),
(15, 'Orange', 1, 1, 125),
(16, 'Vit', 1, 1, 300),
(16, 'Gul', 1, 1, 294),
(16, 'Blå', 1, 1, 288),
(16, 'Röd', 1, 1, 272),
(16, 'Orange', 1, 1, 219),
(17, 'Vit', 1, 1, 483),
(17, 'Gul', 1, 1, 483),
(17, 'Blå', 1, 1, 390),
(17, 'Röd', 1, 1, 390),
(17, 'Orange', 1, 1, 300),
(18, 'Vit', 1, 1, 410),
(18, 'Gul', 1, 1, 370),
(18, 'Blå', 1, 1, 312),
(18, 'Röd', 1, 1, 312),
(18, 'Orange', 1, 1, 252);

-- --------------------------------------------------------

--
-- Table structure for table `Hole`
--

CREATE TABLE IF NOT EXISTS `Hole` (
  `number` int(11) NOT NULL DEFAULT '0',
  `clubID` int(11) NOT NULL DEFAULT '0',
  `courseID` int(11) NOT NULL DEFAULT '0',
  `par` int(11) NOT NULL,
  `hcp` int(11) DEFAULT NULL,
  PRIMARY KEY (`number`,`courseID`,`clubID`),
  KEY `courseID` (`courseID`),
  KEY `clubID` (`clubID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Hole`
--

INSERT INTO `Hole` (`number`, `clubID`, `courseID`, `par`, `hcp`) VALUES
(1, 1, 1, 4, 6),
(2, 1, 1, 3, 18),
(3, 1, 1, 4, 16),
(4, 1, 1, 5, 10),
(5, 1, 1, 4, 12),
(6, 1, 1, 5, 2),
(7, 1, 1, 3, 4),
(8, 1, 1, 4, 8),
(9, 1, 1, 3, 14),
(10, 1, 1, 4, 9),
(11, 1, 1, 3, 17),
(12, 1, 1, 5, 1),
(13, 1, 1, 4, 11),
(14, 1, 1, 4, 13),
(15, 1, 1, 3, 5),
(16, 1, 1, 4, 15),
(17, 1, 1, 5, 3),
(18, 1, 1, 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `Player`
--

CREATE TABLE IF NOT EXISTS `Player` (
  `golfID` char(9) NOT NULL DEFAULT '',
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `clubID` int(11) DEFAULT NULL,
  PRIMARY KEY (`golfID`),
  KEY `sex` (`sex`),
  KEY `clubID` (`clubID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Player`
--

INSERT INTO `Player` (`golfID`, `firstName`, `lastName`, `mail`, `sex`, `clubID`) VALUES
('950501002', 'Adam', 'Eineving', 'adam@eineving.se', 'male', 1),
('930311006', 'Daniel', 'Eineving', 'daniel@eineving.se', 'male', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Round`
--

CREATE TABLE IF NOT EXISTS `Round` (
  `dateAndTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hcp` double DEFAULT NULL,
  `player` varchar(9) NOT NULL DEFAULT '',
  `marquer` varchar(9) DEFAULT NULL,
  `courseID` int(11) DEFAULT NULL,
  `clubID` int(11) DEFAULT NULL,
  `teeName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dateAndTime`,`player`),
  KEY `player` (`player`),
  KEY `marquer` (`marquer`),
  KEY `teeName` (`teeName`),
  KEY `courseID` (`courseID`),
  KEY `clubID` (`clubID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Round`
--

INSERT INTO `Round` (`dateAndTime`, `hcp`, `player`, `marquer`, `courseID`, `clubID`, `teeName`) VALUES
('2015-05-19 15:30:00', 1.3, '950501002', '930311006', 1, 1, 'Vit'),
('2015-05-19 15:30:00', 4.3, '930311006', '950501002', 1, 1, 'Vit');

-- --------------------------------------------------------

--
-- Table structure for table `Score`
--

CREATE TABLE IF NOT EXISTS `Score` (
  `number` int(11) NOT NULL DEFAULT '0',
  `clubID` int(11) NOT NULL DEFAULT '0',
  `courseID` int(11) NOT NULL DEFAULT '0',
  `roundStart` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `player` char(9) NOT NULL DEFAULT '',
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`number`,`courseID`,`clubID`,`roundStart`,`player`),
  KEY `courseID` (`courseID`),
  KEY `clubID` (`clubID`),
  KEY `player` (`player`),
  KEY `roundStart` (`roundStart`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Score`
--

INSERT INTO `Score` (`number`, `clubID`, `courseID`, `roundStart`, `player`, `score`) VALUES
(1, 1, 1, '2015-05-19 15:30:00', '950501002', 4),
(2, 1, 1, '2015-05-19 15:30:00', '950501002', 2),
(3, 1, 1, '2015-05-19 15:30:00', '950501002', 4),
(4, 1, 1, '2015-05-19 15:30:00', '950501002', 4),
(5, 1, 1, '2015-05-19 15:30:00', '950501002', 3),
(6, 1, 1, '2015-05-19 15:30:00', '950501002', 4),
(7, 1, 1, '2015-05-19 15:30:00', '950501002', 3),
(8, 1, 1, '2015-05-19 15:30:00', '950501002', 4),
(9, 1, 1, '2015-05-19 15:30:00', '950501002', 3),
(10, 1, 1, '2015-05-19 15:30:00', '950501002', 4),
(11, 1, 1, '2015-05-19 15:30:00', '950501002', 4),
(12, 1, 1, '2015-05-19 15:30:00', '950501002', 6),
(13, 1, 1, '2015-05-19 15:30:00', '950501002', 4),
(14, 1, 1, '2015-05-19 15:30:00', '950501002', 4),
(15, 1, 1, '2015-05-19 15:30:00', '950501002', 3),
(16, 1, 1, '2015-05-19 15:30:00', '950501002', 4),
(17, 1, 1, '2015-05-19 15:30:00', '950501002', 5),
(18, 1, 1, '2015-05-19 15:30:00', '950501002', 4),
(1, 1, 1, '2015-05-19 15:30:00', '930311006', 4),
(2, 1, 1, '2015-05-19 15:30:00', '930311006', 4),
(3, 1, 1, '2015-05-19 15:30:00', '930311006', 4),
(4, 1, 1, '2015-05-19 15:30:00', '930311006', 4),
(5, 1, 1, '2015-05-19 15:30:00', '930311006', 7),
(6, 1, 1, '2015-05-19 15:30:00', '930311006', 6),
(7, 1, 1, '2015-05-19 15:30:00', '930311006', 4),
(8, 1, 1, '2015-05-19 15:30:00', '930311006', 4),
(9, 1, 1, '2015-05-19 15:30:00', '930311006', 3),
(10, 1, 1, '2015-05-19 15:30:00', '930311006', 5),
(11, 1, 1, '2015-05-19 15:30:00', '930311006', 3),
(12, 1, 1, '2015-05-19 15:30:00', '930311006', 5),
(13, 1, 1, '2015-05-19 15:30:00', '930311006', 4),
(14, 1, 1, '2015-05-19 15:30:00', '930311006', 4),
(15, 1, 1, '2015-05-19 15:30:00', '930311006', 3),
(16, 1, 1, '2015-05-19 15:30:00', '930311006', 4),
(17, 1, 1, '2015-05-19 15:30:00', '930311006', 6),
(18, 1, 1, '2015-05-19 15:30:00', '930311006', 5);

-- --------------------------------------------------------

--
-- Table structure for table `Sex`
--

CREATE TABLE IF NOT EXISTS `Sex` (
  `sex` varchar(6) NOT NULL,
  PRIMARY KEY (`sex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Sex`
--

INSERT INTO `Sex` (`sex`) VALUES
('female'),
('male');

-- --------------------------------------------------------

--
-- Table structure for table `Tee`
--

CREATE TABLE IF NOT EXISTS `Tee` (
  `name` varchar(20) NOT NULL DEFAULT '',
  `courseID` int(11) NOT NULL DEFAULT '0',
  `clubID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`,`courseID`,`clubID`),
  KEY `courseID` (`courseID`),
  KEY `clubID` (`clubID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Tee`
--

INSERT INTO `Tee` (`name`, `courseID`, `clubID`) VALUES
('Blå', 1, 1),
('Gul', 1, 1),
('Orange', 1, 1),
('Röd', 1, 1),
('Vit', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `TeeRating`
--

CREATE TABLE IF NOT EXISTS `TeeRating` (
  `teeName` varchar(20) NOT NULL DEFAULT '',
  `courseID` int(11) NOT NULL DEFAULT '0',
  `clubID` int(11) NOT NULL DEFAULT '0',
  `sex` varchar(6) NOT NULL DEFAULT '',
  `cr` double NOT NULL,
  `slope` int(11) NOT NULL,
  PRIMARY KEY (`teeName`,`courseID`,`clubID`,`sex`),
  KEY `courseID` (`courseID`),
  KEY `clubID` (`clubID`),
  KEY `sex` (`sex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TeeRating`
--

INSERT INTO `TeeRating` (`teeName`, `courseID`, `clubID`, `sex`, `cr`, `slope`) VALUES
('Vit', 1, 1, 'male', 70.1, 122),
('Vit', 1, 1, 'female', 76.5, 131),
('Gul', 1, 1, 'male', 69.4, 121),
('Gul', 1, 1, 'female', 75.2, 129),
('Blå', 1, 1, 'male', 66.9, 116),
('Blå', 1, 1, 'female', 72.2, 123),
('Röd', 1, 1, 'male', 65.5, 113),
('Röd', 1, 1, 'female', 70.5, 119),
('Orange', 1, 1, 'male', 63, 110),
('Orange', 1, 1, 'female', 67, 113);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
