-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 02, 2012 at 09:46 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vs`
--

-- --------------------------------------------------------

--
-- Table structure for table `competition`
--

CREATE TABLE IF NOT EXISTS `competition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `competition`
--

INSERT INTO `competition` (`id`, `name`) VALUES
(1, 'Fooseball'),
(2, 'Street Fighter');

-- --------------------------------------------------------

--
-- Table structure for table `competitor`
--

CREATE TABLE IF NOT EXISTS `competitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `competitor`
--

INSERT INTO `competitor` (`id`, `name`) VALUES
(1, 'dean'),
(2, 'liam');

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE IF NOT EXISTS `detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `competition_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id`, `competition_id`, `name`) VALUES
(1, 1, 'yellow'),
(2, 1, 'blue');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE IF NOT EXISTS `game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `competition_id` int(11) NOT NULL,
  `winner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=270 ;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id`, `date`, `competition_id`, `winner_id`) VALUES
(1, '2012-03-22 11:00:00', 1, 2),
(2, '2012-03-22 11:00:00', 1, 2),
(3, '2012-03-22 11:00:00', 1, 2),
(4, '2012-03-22 11:00:00', 1, 2),
(5, '2012-03-22 11:00:00', 1, 2),
(6, '2012-03-22 11:00:00', 1, 1),
(7, '2012-03-22 11:00:00', 1, 1),
(8, '2012-03-22 11:00:00', 1, 2),
(9, '2012-03-25 11:00:00', 1, 1),
(10, '2012-03-25 11:00:00', 1, 2),
(11, '2012-03-25 11:00:00', 1, 1),
(12, '2012-03-26 11:00:00', 1, 1),
(13, '2012-03-26 11:00:00', 1, 2),
(14, '2012-03-27 11:00:00', 1, 1),
(15, '2012-03-27 11:00:00', 1, 2),
(16, '2012-03-27 11:00:00', 1, 2),
(17, '2012-03-27 11:00:00', 1, 2),
(18, '2012-03-28 11:00:00', 1, 2),
(19, '2012-03-29 11:00:00', 1, 1),
(20, '2012-04-02 12:00:00', 1, 1),
(21, '2012-04-02 12:00:00', 1, 2),
(22, '2012-04-03 12:00:00', 1, 2),
(23, '2012-04-03 12:00:00', 1, 2),
(24, '2012-04-03 12:00:00', 1, 2),
(25, '2012-04-03 12:00:00', 1, 1),
(26, '2012-04-03 12:00:00', 1, 1),
(27, '2012-04-03 12:00:00', 1, 1),
(28, '2012-04-04 12:00:00', 1, 2),
(29, '2012-04-04 12:00:00', 1, 1),
(30, '2012-04-04 12:00:00', 1, 2),
(31, '2012-04-04 12:00:00', 1, 1),
(32, '2012-04-04 12:00:00', 1, 1),
(33, '2012-04-09 12:00:00', 1, 2),
(34, '2012-04-09 12:00:00', 1, 2),
(35, '2012-04-09 12:00:00', 1, 1),
(36, '2012-04-09 12:00:00', 1, 1),
(37, '2012-04-10 12:00:00', 1, 2),
(38, '2012-04-10 12:00:00', 1, 2),
(39, '2012-04-10 12:00:00', 1, 1),
(40, '2012-04-10 12:00:00', 1, 1),
(41, '2012-04-10 12:00:00', 1, 2),
(42, '2012-04-11 12:00:00', 1, 2),
(43, '2012-04-11 12:00:00', 1, 2),
(44, '2012-04-11 12:00:00', 1, 1),
(45, '2012-04-11 12:00:00', 1, 2),
(46, '2012-04-12 12:00:00', 1, 1),
(47, '2012-04-12 12:00:00', 1, 2),
(48, '2012-04-12 12:00:00', 1, 2),
(49, '2012-04-12 12:00:00', 1, 1),
(50, '2012-04-12 12:00:00', 1, 2),
(51, '2012-04-12 12:00:00', 1, 2),
(52, '2012-04-12 12:00:00', 1, 1),
(53, '2012-04-12 12:00:00', 1, 2),
(54, '2012-04-17 12:00:00', 1, 2),
(55, '2012-04-17 12:00:00', 1, 1),
(56, '2012-04-17 12:00:00', 1, 2),
(57, '2012-04-18 12:00:00', 1, 2),
(58, '2012-04-18 12:00:00', 1, 2),
(59, '2012-04-18 12:00:00', 1, 2),
(60, '2012-04-18 12:00:00', 1, 2),
(61, '2012-04-18 12:00:00', 1, 2),
(62, '2012-04-19 12:00:00', 1, 1),
(63, '2012-04-19 12:00:00', 1, 2),
(64, '2012-04-19 12:00:00', 1, 2),
(65, '2012-04-19 12:00:00', 1, 1),
(66, '2012-04-23 12:00:00', 1, 1),
(67, '2012-04-23 12:00:00', 1, 1),
(68, '2012-04-23 12:00:00', 1, 2),
(69, '2012-04-25 12:00:00', 1, 2),
(70, '2012-04-25 12:00:00', 1, 2),
(71, '2012-04-25 12:00:00', 1, 1),
(72, '2012-04-25 12:00:00', 1, 1),
(73, '2012-04-25 12:00:00', 1, 2),
(74, '2012-04-26 12:00:00', 1, 1),
(75, '2012-04-26 12:00:00', 1, 2),
(76, '2012-04-26 12:00:00', 1, 2),
(77, '2012-04-26 12:00:00', 1, 1),
(78, '2012-04-26 12:00:00', 1, 1),
(79, '2012-04-30 12:00:00', 1, 2),
(80, '2012-04-30 12:00:00', 1, 2),
(81, '2012-05-01 12:00:00', 1, 2),
(82, '2012-05-01 12:00:00', 1, 1),
(83, '2012-05-01 12:00:00', 1, 1),
(84, '2012-05-02 12:00:00', 1, 2),
(85, '2012-05-02 12:00:00', 1, 2),
(86, '2012-05-02 12:00:00', 1, 1),
(87, '2012-05-02 12:00:00', 1, 1),
(88, '2012-05-03 12:00:00', 1, 1),
(89, '2012-05-03 12:00:00', 1, 1),
(90, '2012-05-03 12:00:00', 1, 2),
(91, '2012-05-03 12:00:00', 1, 1),
(92, '2012-05-03 12:00:00', 1, 2),
(93, '2012-05-07 12:00:00', 1, 2),
(94, '2012-05-07 12:00:00', 1, 2),
(95, '2012-05-08 12:00:00', 1, 2),
(96, '2012-05-08 12:00:00', 1, 2),
(97, '2012-05-08 12:00:00', 1, 1),
(98, '2012-05-08 12:00:00', 1, 1),
(99, '2012-05-08 12:00:00', 1, 1),
(100, '2012-05-09 12:00:00', 1, 2),
(101, '2012-05-09 12:00:00', 1, 2),
(102, '2012-05-09 12:00:00', 1, 1),
(103, '2012-05-09 12:00:00', 1, 2),
(104, '2012-05-10 12:00:00', 1, 1),
(105, '2012-05-10 12:00:00', 1, 1),
(106, '2012-05-10 12:00:00', 1, 2),
(107, '2012-05-10 12:00:00', 1, 1),
(108, '2012-05-10 12:00:00', 1, 2),
(109, '2012-05-10 12:00:00', 1, 2),
(110, '2012-05-10 12:00:00', 1, 1),
(111, '2012-05-13 12:00:00', 1, 1),
(112, '2012-05-13 12:00:00', 1, 2),
(113, '2012-05-13 12:00:00', 1, 2),
(114, '2012-05-13 12:00:00', 1, 1),
(115, '2012-05-14 12:00:00', 1, 2),
(116, '2012-05-15 12:00:00', 1, 1),
(117, '2012-05-15 12:00:00', 1, 2),
(118, '2012-05-15 12:00:00', 1, 2),
(119, '2012-05-16 12:00:00', 1, 2),
(120, '2012-05-16 12:00:00', 1, 1),
(121, '2012-05-16 12:00:00', 1, 2),
(122, '2012-05-16 12:00:00', 1, 2),
(123, '2012-05-16 12:00:00', 1, 1),
(124, '2012-05-17 12:00:00', 1, 1),
(125, '2012-05-17 12:00:00', 1, 2),
(126, '2012-05-17 12:00:00', 1, 1),
(127, '2012-05-17 12:00:00', 1, 2),
(128, '2012-05-17 12:00:00', 1, 1),
(129, '2012-05-21 12:00:00', 1, 2),
(130, '2012-05-21 12:00:00', 1, 2),
(131, '2012-05-21 12:00:00', 1, 2),
(132, '2012-05-21 12:00:00', 1, 2),
(133, '2012-05-23 12:00:00', 1, 2),
(134, '2012-05-23 12:00:00', 1, 1),
(135, '2012-05-23 12:00:00', 1, 2),
(136, '2012-05-23 12:00:00', 1, 1),
(137, '2012-05-23 12:00:00', 1, 1),
(138, '2012-05-23 12:00:00', 1, 2),
(139, '2012-05-23 12:00:00', 1, 1),
(140, '2012-05-24 12:00:00', 1, 1),
(141, '2012-05-24 12:00:00', 1, 2),
(142, '2012-05-24 12:00:00', 1, 2),
(143, '2012-05-24 12:00:00', 1, 1),
(144, '2012-05-24 12:00:00', 1, 1),
(145, '2012-05-28 12:00:00', 1, 2),
(146, '2012-05-28 12:00:00', 1, 1),
(147, '2012-05-28 12:00:00', 1, 1),
(148, '2012-05-29 12:00:00', 1, 1),
(149, '2012-05-29 12:00:00', 1, 2),
(150, '2012-05-29 12:00:00', 1, 2),
(151, '2012-05-29 12:00:00', 1, 2),
(152, '2012-05-30 12:00:00', 1, 2),
(153, '2012-05-30 12:00:00', 1, 2),
(154, '2012-06-05 12:00:00', 1, 2),
(155, '2012-06-05 12:00:00', 1, 2),
(156, '2012-06-05 12:00:00', 1, 2),
(157, '2012-06-06 12:00:00', 1, 2),
(158, '2012-06-06 12:00:00', 1, 1),
(159, '2012-06-06 12:00:00', 1, 1),
(160, '2012-06-06 12:00:00', 1, 1),
(161, '2012-06-07 12:00:00', 1, 2),
(162, '2012-06-07 12:00:00', 1, 1),
(163, '2012-06-07 12:00:00', 1, 1),
(164, '2012-06-10 12:00:00', 1, 2),
(165, '2012-06-12 12:00:00', 1, 1),
(166, '2012-06-12 12:00:00', 1, 1),
(167, '2012-06-12 12:00:00', 1, 2),
(168, '2012-06-13 12:00:00', 1, 1),
(169, '2012-06-13 12:00:00', 1, 2),
(170, '2012-06-13 12:00:00', 1, 1),
(171, '2012-06-14 12:00:00', 1, 2),
(172, '2012-06-14 12:00:00', 1, 1),
(173, '2012-06-14 12:00:00', 1, 2),
(174, '2012-06-14 12:00:00', 1, 2),
(175, '2012-06-14 12:00:00', 1, 2),
(176, '2012-06-14 12:00:00', 1, 1),
(177, '2012-06-18 12:00:00', 1, 1),
(178, '2012-06-18 12:00:00', 1, 2),
(179, '2012-06-18 12:00:00', 1, 1),
(180, '2012-06-19 12:00:00', 1, 1),
(181, '2012-06-19 12:00:00', 1, 2),
(182, '2012-06-19 12:00:00', 1, 2),
(183, '2012-06-20 12:00:00', 1, 2),
(184, '2012-06-21 12:00:00', 1, 2),
(185, '2012-06-26 12:00:00', 1, 1),
(186, '2012-06-28 12:00:00', 1, 2),
(187, '2012-06-28 12:00:00', 1, 2),
(188, '2012-07-04 12:00:00', 1, 2),
(189, '2012-07-04 12:00:00', 1, 1),
(190, '2012-07-04 12:00:00', 1, 2),
(191, '2012-07-05 12:00:00', 1, 2),
(192, '2012-07-05 12:00:00', 1, 2),
(193, '2012-07-06 12:00:00', 1, 1),
(194, '2012-07-16 12:00:00', 1, 2),
(195, '2012-07-17 12:00:00', 1, 2),
(196, '2012-07-17 12:00:00', 1, 2),
(197, '2012-07-17 12:00:00', 1, 2),
(198, '2012-07-18 12:00:00', 1, 1),
(199, '2012-07-18 12:00:00', 1, 2),
(200, '2012-07-18 12:00:00', 1, 1),
(201, '2012-07-24 12:00:00', 1, 2),
(202, '2012-07-24 12:00:00', 1, 2),
(203, '2012-08-06 12:00:00', 1, 2),
(204, '2012-08-06 12:00:00', 1, 2),
(205, '2012-08-06 12:00:00', 1, 2),
(206, '2012-08-08 12:00:00', 1, 2),
(207, '2012-08-08 12:00:00', 1, 1),
(208, '2012-08-08 12:00:00', 1, 2),
(209, '2012-08-09 12:00:00', 1, 1),
(210, '2012-08-09 12:00:00', 1, 1),
(211, '2012-08-09 12:00:00', 1, 2),
(212, '2012-08-09 12:00:00', 1, 1),
(213, '2012-08-14 12:00:00', 1, 2),
(214, '2012-08-14 12:00:00', 1, 1),
(215, '2012-08-14 12:00:00', 1, 2),
(216, '2012-08-15 12:00:00', 1, 2),
(217, '2012-08-15 12:00:00', 1, 2),
(218, '2012-08-15 12:00:00', 1, 1),
(219, '2012-08-16 12:00:00', 1, 2),
(220, '2012-08-16 12:00:00', 1, 2),
(221, '2012-08-20 12:00:00', 1, 2),
(222, '2012-08-20 12:00:00', 1, 2),
(223, '2012-08-21 12:00:00', 1, 1),
(224, '2012-08-21 12:00:00', 1, 1),
(225, '2012-08-21 12:00:00', 1, 1),
(226, '2012-08-22 12:00:00', 1, 1),
(227, '2012-08-22 12:00:00', 1, 1),
(228, '2012-08-22 12:00:00', 1, 2),
(229, '2012-08-27 12:00:00', 1, 1),
(230, '2012-08-27 12:00:00', 1, 2),
(231, '2012-08-27 12:00:00', 1, 2),
(232, '2012-08-28 12:00:00', 1, 1),
(233, '2012-08-28 12:00:00', 1, 1),
(234, '2012-08-28 12:00:00', 1, 1),
(235, '2012-08-28 12:00:00', 1, 1),
(236, '2012-08-29 12:00:00', 1, 1),
(237, '2012-08-29 12:00:00', 1, 2),
(238, '2012-08-29 12:00:00', 1, 1),
(239, '2012-08-30 12:00:00', 1, 2),
(240, '2012-08-30 12:00:00', 1, 1),
(241, '2012-08-30 12:00:00', 1, 2),
(242, '2012-09-03 12:00:00', 1, 1),
(243, '2012-09-03 12:00:00', 1, 1),
(244, '2012-09-03 12:00:00', 1, 1),
(245, '2012-09-04 12:00:00', 1, 1),
(246, '2012-09-04 12:00:00', 1, 2),
(247, '2012-09-04 12:00:00', 1, 2),
(248, '2012-09-09 12:00:00', 1, 2),
(249, '2012-09-09 12:00:00', 1, 2),
(250, '2012-09-10 12:00:00', 1, 2),
(251, '2012-09-10 12:00:00', 1, 2),
(252, '2012-09-10 12:00:00', 1, 2),
(253, '2012-09-11 12:00:00', 1, 2),
(254, '2012-09-11 12:00:00', 1, 1),
(255, '2012-09-17 12:00:00', 1, 1),
(256, '2012-09-17 12:00:00', 1, 1),
(257, '2012-09-17 12:00:00', 1, 1),
(258, '2012-09-19 12:00:00', 1, 2),
(259, '2012-09-19 12:00:00', 1, 2),
(260, '2012-09-19 12:00:00', 1, 1),
(261, '2012-09-19 12:00:00', 1, 2),
(262, '2012-09-20 12:00:00', 1, 1),
(263, '2012-09-20 12:00:00', 1, 2),
(264, '2012-09-24 12:00:00', 1, 2),
(265, '2012-09-24 12:00:00', 1, 1),
(266, '2012-09-24 12:00:00', 1, 2),
(267, '2012-09-27 12:00:00', 1, 1),
(268, '2012-09-27 12:00:00', 1, 2),
(269, '2012-09-27 12:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE IF NOT EXISTS `score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `competitor_id` int(11) NOT NULL,
  `detail_id` int(11) DEFAULT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=539 ;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`id`, `game_id`, `competitor_id`, `detail_id`, `score`) VALUES
(1, 1, 1, 1, 7),
(2, 1, 2, 2, 10),
(3, 2, 1, 2, 5),
(4, 2, 2, 1, 10),
(5, 3, 1, 2, 8),
(6, 3, 2, 1, 10),
(7, 4, 1, 2, 7),
(8, 4, 2, 1, 10),
(9, 5, 1, 1, 8),
(10, 5, 2, 2, 10),
(11, 6, 1, 1, 10),
(12, 6, 2, 2, 2),
(13, 7, 1, 1, 10),
(14, 7, 2, 2, 5),
(15, 8, 1, 2, 8),
(16, 8, 2, 1, 10),
(17, 9, 1, 1, 10),
(18, 9, 2, 2, 3),
(19, 10, 1, 2, 5),
(20, 10, 2, 1, 10),
(21, 11, 1, 2, 10),
(22, 11, 2, 1, 8),
(23, 12, 1, 2, 10),
(24, 12, 2, 1, 8),
(25, 13, 1, 1, 5),
(26, 13, 2, 2, 10),
(27, 14, 1, 2, 10),
(28, 14, 2, 1, 8),
(29, 15, 1, 1, 8),
(30, 15, 2, 2, 10),
(31, 16, 1, 1, 2),
(32, 16, 2, 2, 10),
(33, 17, 1, 1, 9),
(34, 17, 2, 2, 10),
(35, 18, 1, 1, 1),
(36, 18, 2, 2, 10),
(37, 19, 1, 2, 10),
(38, 19, 2, 1, 7),
(39, 20, 1, 1, 10),
(40, 20, 2, 2, 8),
(41, 21, 1, 1, 7),
(42, 21, 2, 2, 10),
(43, 22, 1, 1, 9),
(44, 22, 2, 2, 10),
(45, 23, 1, 2, 9),
(46, 23, 2, 1, 10),
(47, 24, 1, 1, 7),
(48, 24, 2, 2, 10),
(49, 25, 1, 1, 10),
(50, 25, 2, 2, 3),
(51, 26, 1, 2, 10),
(52, 26, 2, 1, 5),
(53, 27, 1, 2, 10),
(54, 27, 2, 1, 5),
(55, 28, 1, 1, 8),
(56, 28, 2, 2, 10),
(57, 29, 1, 2, 10),
(58, 29, 2, 1, 4),
(59, 30, 1, 1, 4),
(60, 30, 2, 2, 10),
(61, 31, 1, 2, 10),
(62, 31, 2, 1, 8),
(63, 32, 1, 1, 10),
(64, 32, 2, 2, 8),
(65, 33, 1, 2, 9),
(66, 33, 2, 1, 10),
(67, 34, 1, 2, 9),
(68, 34, 2, 1, 10),
(69, 35, 1, 1, 10),
(70, 35, 2, 2, 6),
(71, 36, 1, 2, 10),
(72, 36, 2, 1, 9),
(73, 37, 1, 2, 9),
(74, 37, 2, 1, 10),
(75, 38, 1, 1, 6),
(76, 38, 2, 2, 10),
(77, 39, 1, 1, 10),
(78, 39, 2, 2, 5),
(79, 40, 1, 2, 10),
(80, 40, 2, 1, 6),
(81, 41, 1, 2, 5),
(82, 41, 2, 1, 10),
(83, 42, 1, 1, 7),
(84, 42, 2, 2, 10),
(85, 43, 1, 1, 4),
(86, 43, 2, 2, 10),
(87, 44, 1, 2, 10),
(88, 44, 2, 1, 9),
(89, 45, 1, 2, 7),
(90, 45, 2, 1, 10),
(91, 46, 1, 2, 10),
(92, 46, 2, 1, 7),
(93, 47, 1, 1, 4),
(94, 47, 2, 2, 10),
(95, 48, 1, 2, 8),
(96, 48, 2, 1, 10),
(97, 49, 1, 2, 10),
(98, 49, 2, 1, 5),
(99, 50, 1, 1, 7),
(100, 50, 2, 2, 10),
(101, 51, 1, 1, 8),
(102, 51, 2, 2, 10),
(103, 52, 1, 2, 10),
(104, 52, 2, 1, 8),
(105, 53, 1, 2, 4),
(106, 53, 2, 1, 10),
(107, 54, 1, 1, 8),
(108, 54, 2, 2, 10),
(109, 55, 1, 2, 10),
(110, 55, 2, 1, 3),
(111, 56, 1, 1, 4),
(112, 56, 2, 2, 10),
(113, 57, 1, 2, 4),
(114, 57, 2, 1, 10),
(115, 58, 1, 2, 7),
(116, 58, 2, 1, 10),
(117, 59, 1, 2, 2),
(118, 59, 2, 1, 10),
(119, 60, 1, 1, 8),
(120, 60, 2, 2, 10),
(121, 61, 1, 1, 9),
(122, 61, 2, 2, 10),
(123, 62, 1, 1, 10),
(124, 62, 2, 2, 5),
(125, 63, 1, 2, 2),
(126, 63, 2, 1, 10),
(127, 64, 1, 1, 7),
(128, 64, 2, 2, 10),
(129, 65, 1, 1, 10),
(130, 65, 2, 2, 2),
(131, 66, 1, 1, 10),
(132, 66, 2, 2, 9),
(133, 67, 1, 1, 10),
(134, 67, 2, 2, 3),
(135, 68, 1, 2, 4),
(136, 68, 2, 1, 10),
(137, 69, 1, 1, 5),
(138, 69, 2, 2, 10),
(139, 70, 1, 1, 5),
(140, 70, 2, 2, 10),
(141, 71, 1, 2, 10),
(142, 71, 2, 1, 5),
(143, 72, 1, 1, 10),
(144, 72, 2, 2, 8),
(145, 73, 1, 1, 9),
(146, 73, 2, 2, 10),
(147, 74, 1, 1, 10),
(148, 74, 2, 2, 6),
(149, 75, 1, 2, 5),
(150, 75, 2, 1, 10),
(151, 76, 1, 1, 9),
(152, 76, 2, 2, 10),
(153, 77, 1, 2, 10),
(154, 77, 2, 1, 7),
(155, 78, 1, 1, 10),
(156, 78, 2, 2, 5),
(157, 79, 1, 2, 8),
(158, 79, 2, 1, 10),
(159, 80, 1, 2, 3),
(160, 80, 2, 1, 10),
(161, 81, 1, 1, 8),
(162, 81, 2, 2, 10),
(163, 82, 1, 1, 10),
(164, 82, 2, 2, 7),
(165, 83, 1, 2, 10),
(166, 83, 2, 1, 9),
(167, 84, 1, 1, 7),
(168, 84, 2, 2, 10),
(169, 85, 1, 2, 8),
(170, 85, 2, 1, 10),
(171, 86, 1, 2, 10),
(172, 86, 2, 1, 4),
(173, 87, 1, 1, 10),
(174, 87, 2, 2, 7),
(175, 88, 1, 2, 10),
(176, 88, 2, 1, 8),
(177, 89, 1, 2, 10),
(178, 89, 2, 1, 7),
(179, 90, 1, 1, 4),
(180, 90, 2, 2, 10),
(181, 91, 1, 2, 10),
(182, 91, 2, 1, 5),
(183, 92, 1, 1, 8),
(184, 92, 2, 2, 10),
(185, 93, 1, 2, 6),
(186, 93, 2, 1, 10),
(187, 94, 1, 2, 7),
(188, 94, 2, 1, 10),
(189, 95, 1, 1, 4),
(190, 95, 2, 2, 10),
(191, 96, 1, 1, 3),
(192, 96, 2, 2, 10),
(193, 97, 1, 2, 10),
(194, 97, 2, 1, 6),
(195, 98, 1, 1, 10),
(196, 98, 2, 2, 7),
(197, 99, 1, 1, 10),
(198, 99, 2, 2, 7),
(199, 100, 1, 1, 7),
(200, 100, 2, 2, 10),
(201, 101, 1, 2, 8),
(202, 101, 2, 1, 10),
(203, 102, 1, 2, 10),
(204, 102, 2, 1, 5),
(205, 103, 1, 2, 5),
(206, 103, 2, 1, 10),
(207, 104, 1, 2, 10),
(208, 104, 2, 1, 5),
(209, 105, 1, 1, 10),
(210, 105, 2, 2, 7),
(211, 106, 1, 1, 3),
(212, 106, 2, 2, 10),
(213, 107, 1, 2, 10),
(214, 107, 2, 1, 6),
(215, 108, 1, 2, 8),
(216, 108, 2, 1, 10),
(217, 109, 1, 2, 9),
(218, 109, 2, 1, 10),
(219, 110, 1, 2, 10),
(220, 110, 2, 1, 8),
(221, 111, 1, 1, 10),
(222, 111, 2, 2, 8),
(223, 112, 1, 2, 5),
(224, 112, 2, 1, 10),
(225, 113, 1, 2, 7),
(226, 113, 2, 1, 10),
(227, 114, 1, 2, 10),
(228, 114, 2, 1, 9),
(229, 115, 1, 1, 7),
(230, 115, 2, 2, 10),
(231, 116, 1, 2, 10),
(232, 116, 2, 1, 8),
(233, 117, 1, 2, 8),
(234, 117, 2, 1, 10),
(235, 118, 1, 2, 7),
(236, 118, 2, 1, 10),
(237, 119, 1, 2, 7),
(238, 119, 2, 1, 10),
(239, 120, 1, 1, 10),
(240, 120, 2, 2, 6),
(241, 121, 1, 1, 4),
(242, 121, 2, 2, 10),
(243, 122, 1, 1, 8),
(244, 122, 2, 2, 10),
(245, 123, 1, 1, 10),
(246, 123, 2, 2, 8),
(247, 124, 1, 1, 10),
(248, 124, 2, 2, 8),
(249, 125, 1, 1, 7),
(250, 125, 2, 2, 10),
(251, 126, 1, 2, 10),
(252, 126, 2, 1, 8),
(253, 127, 1, 1, 8),
(254, 127, 2, 2, 10),
(255, 128, 1, 2, 10),
(256, 128, 2, 1, 7),
(257, 129, 1, 1, 9),
(258, 129, 2, 2, 10),
(259, 130, 1, 1, 8),
(260, 130, 2, 2, 10),
(261, 131, 1, 1, 7),
(262, 131, 2, 2, 10),
(263, 132, 1, 2, 8),
(264, 132, 2, 1, 10),
(265, 133, 1, 2, 8),
(266, 133, 2, 1, 10),
(267, 134, 1, 2, 10),
(268, 134, 2, 1, 6),
(269, 135, 1, 1, 5),
(270, 135, 2, 2, 10),
(271, 136, 1, 2, 10),
(272, 136, 2, 1, 8),
(273, 137, 1, 1, 10),
(274, 137, 2, 2, 5),
(275, 138, 1, 1, 7),
(276, 138, 2, 2, 10),
(277, 139, 1, 2, 10),
(278, 139, 2, 1, 6),
(279, 140, 1, 1, 10),
(280, 140, 2, 2, 4),
(281, 141, 1, 1, 2),
(282, 141, 2, 2, 10),
(283, 142, 1, 2, 8),
(284, 142, 2, 1, 10),
(285, 143, 1, 2, 10),
(286, 143, 2, 1, 9),
(287, 144, 1, 1, 10),
(288, 144, 2, 2, 9),
(289, 145, 1, 1, 7),
(290, 145, 2, 2, 10),
(291, 146, 1, 2, 10),
(292, 146, 2, 1, 7),
(293, 147, 1, 1, 10),
(294, 147, 2, 2, 9),
(295, 148, 1, 1, 10),
(296, 148, 2, 2, 9),
(297, 149, 1, 1, 1),
(298, 149, 2, 2, 10),
(299, 150, 1, 2, 3),
(300, 150, 2, 1, 10),
(301, 151, 1, 2, 8),
(302, 151, 2, 1, 10),
(303, 152, 1, 2, 9),
(304, 152, 2, 1, 10),
(305, 153, 1, 2, 4),
(306, 153, 2, 1, 10),
(307, 154, 1, 2, 8),
(308, 154, 2, 1, 10),
(309, 155, 1, 2, 6),
(310, 155, 2, 1, 10),
(311, 156, 1, 1, 9),
(312, 156, 2, 2, 10),
(313, 157, 1, 1, 7),
(314, 157, 2, 2, 10),
(315, 158, 1, 1, 10),
(316, 158, 2, 2, 4),
(317, 159, 1, 1, 10),
(318, 159, 2, 2, 6),
(319, 160, 1, 1, 10),
(320, 160, 2, 2, 9),
(321, 161, 1, 2, 7),
(322, 161, 2, 1, 10),
(323, 162, 1, 1, 10),
(324, 162, 2, 2, 7),
(325, 163, 1, 2, 10),
(326, 163, 2, 1, 7),
(327, 164, 1, 2, 7),
(328, 164, 2, 1, 10),
(329, 165, 1, 1, 10),
(330, 165, 2, 2, 5),
(331, 166, 1, 2, 10),
(332, 166, 2, 1, 4),
(333, 167, 1, 2, 8),
(334, 167, 2, 1, 10),
(335, 168, 1, 1, 10),
(336, 168, 2, 2, 7),
(337, 169, 1, 1, 9),
(338, 169, 2, 2, 10),
(339, 170, 1, 1, 10),
(340, 170, 2, 2, 6),
(341, 171, 1, 2, 4),
(342, 171, 2, 1, 10),
(343, 172, 1, 1, 10),
(344, 172, 2, 2, 6),
(345, 173, 1, 2, 6),
(346, 173, 2, 1, 10),
(347, 174, 1, 1, 9),
(348, 174, 2, 2, 10),
(349, 175, 1, 1, 6),
(350, 175, 2, 2, 10),
(351, 176, 1, 2, 10),
(352, 176, 2, 1, 8),
(353, 177, 1, 2, 10),
(354, 177, 2, 1, 7),
(355, 178, 1, 2, 6),
(356, 178, 2, 1, 10),
(357, 179, 1, 1, 10),
(358, 179, 2, 2, 9),
(359, 180, 1, 2, 10),
(360, 180, 2, 1, 7),
(361, 181, 1, 2, 4),
(362, 181, 2, 1, 10),
(363, 182, 1, 1, 8),
(364, 182, 2, 2, 10),
(365, 183, 1, 1, 3),
(366, 183, 2, 2, 10),
(367, 184, 1, 2, 5),
(368, 184, 2, 1, 10),
(369, 185, 1, 1, 10),
(370, 185, 2, 2, 8),
(371, 186, 1, 2, 5),
(372, 186, 2, 1, 10),
(373, 187, 1, 1, 7),
(374, 187, 2, 2, 10),
(375, 188, 1, 1, 2),
(376, 188, 2, 2, 10),
(377, 189, 1, 2, 10),
(378, 189, 2, 1, 5),
(379, 190, 1, 1, 6),
(380, 190, 2, 2, 10),
(381, 191, 1, 2, 6),
(382, 191, 2, 1, 10),
(383, 192, 1, 2, 8),
(384, 192, 2, 1, 10),
(385, 193, 1, 2, 10),
(386, 193, 2, 1, 7),
(387, 194, 1, 2, 4),
(388, 194, 2, 1, 10),
(389, 195, 1, 1, 9),
(390, 195, 2, 2, 10),
(391, 196, 1, 1, 9),
(392, 196, 2, 2, 10),
(393, 197, 1, 2, 8),
(394, 197, 2, 1, 10),
(395, 198, 1, 1, 10),
(396, 198, 2, 2, 7),
(397, 199, 1, 1, 7),
(398, 199, 2, 2, 10),
(399, 200, 1, 2, 10),
(400, 200, 2, 1, 7),
(401, 201, 1, 1, 3),
(402, 201, 2, 2, 10),
(403, 202, 1, 1, 5),
(404, 202, 2, 2, 10),
(405, 203, 1, 1, 6),
(406, 203, 2, 2, 10),
(407, 204, 1, 2, 6),
(408, 204, 2, 1, 10),
(409, 205, 1, 1, 7),
(410, 205, 2, 2, 10),
(411, 206, 1, 1, 3),
(412, 206, 2, 2, 10),
(413, 207, 1, 1, 10),
(414, 207, 2, 2, 7),
(415, 208, 1, 2, 6),
(416, 208, 2, 1, 10),
(417, 209, 1, 1, 10),
(418, 209, 2, 2, 4),
(419, 210, 1, 2, 10),
(420, 210, 2, 1, 5),
(421, 211, 1, 1, 4),
(422, 211, 2, 2, 10),
(423, 212, 1, 1, 10),
(424, 212, 2, 2, 9),
(425, 213, 1, 1, 3),
(426, 213, 2, 2, 10),
(427, 214, 1, 1, 10),
(428, 214, 2, 2, 6),
(429, 215, 1, 2, 8),
(430, 215, 2, 1, 10),
(431, 216, 1, 1, 6),
(432, 216, 2, 2, 10),
(433, 217, 1, 1, 7),
(434, 217, 2, 2, 10),
(435, 218, 1, 1, 10),
(436, 218, 2, 2, 6),
(437, 219, 1, 1, 9),
(438, 219, 2, 2, 10),
(439, 220, 1, 1, 4),
(440, 220, 2, 2, 10),
(441, 221, 1, 1, 4),
(442, 221, 2, 2, 10),
(443, 222, 1, 1, 9),
(444, 222, 2, 2, 10),
(445, 223, 1, 1, 10),
(446, 223, 2, 2, 7),
(447, 224, 1, 1, 10),
(448, 224, 2, 2, 8),
(449, 225, 1, 1, 10),
(450, 225, 2, 2, 5),
(451, 226, 1, 1, 10),
(452, 226, 2, 2, 3),
(453, 227, 1, 2, 10),
(454, 227, 2, 1, 7),
(455, 228, 1, 1, 6),
(456, 228, 2, 2, 10),
(457, 229, 1, 1, 10),
(458, 229, 2, 2, 6),
(459, 230, 1, 1, 7),
(460, 230, 2, 2, 10),
(461, 231, 1, 1, 7),
(462, 231, 2, 2, 10),
(463, 232, 1, 1, 10),
(464, 232, 2, 2, 1),
(465, 233, 1, 1, 10),
(466, 233, 2, 2, 6),
(467, 234, 1, 1, 10),
(468, 234, 2, 2, 7),
(469, 235, 1, 2, 10),
(470, 235, 2, 1, 6),
(471, 236, 1, 2, 10),
(472, 236, 2, 1, 6),
(473, 237, 1, 1, 7),
(474, 237, 2, 2, 10),
(475, 238, 1, 1, 10),
(476, 238, 2, 2, 9),
(477, 239, 1, 2, 7),
(478, 239, 2, 1, 10),
(479, 240, 1, 1, 10),
(480, 240, 2, 2, 8),
(481, 241, 1, 2, 8),
(482, 241, 2, 1, 10),
(483, 242, 1, 1, 10),
(484, 242, 2, 2, 9),
(485, 243, 1, 1, 10),
(486, 243, 2, 2, 4),
(487, 244, 1, 1, 10),
(488, 244, 2, 2, 6),
(489, 245, 1, 1, 10),
(490, 245, 2, 2, 9),
(491, 246, 1, 1, 4),
(492, 246, 2, 2, 10),
(493, 247, 1, 1, 5),
(494, 247, 2, 2, 10),
(495, 248, 1, 2, 8),
(496, 248, 2, 1, 10),
(497, 249, 1, 2, 7),
(498, 249, 2, 1, 10),
(499, 250, 1, 1, 9),
(500, 250, 2, 2, 10),
(501, 251, 1, 1, 6),
(502, 251, 2, 2, 10),
(503, 252, 1, 1, 8),
(504, 252, 2, 2, 10),
(505, 253, 1, 1, 7),
(506, 253, 2, 2, 10),
(507, 254, 1, 1, 10),
(508, 254, 2, 2, 9),
(509, 255, 1, 1, 10),
(510, 255, 2, 2, 9),
(511, 256, 1, 2, 10),
(512, 256, 2, 1, 9),
(513, 257, 1, 2, 10),
(514, 257, 2, 1, 8),
(515, 258, 1, 2, 1),
(516, 258, 2, 1, 10),
(517, 259, 1, 1, 2),
(518, 259, 2, 2, 10),
(519, 260, 1, 1, 10),
(520, 260, 2, 2, 8),
(521, 261, 1, 2, 6),
(522, 261, 2, 1, 10),
(523, 262, 1, 1, 10),
(524, 262, 2, 2, 9),
(525, 263, 1, 2, 5),
(526, 263, 2, 1, 10),
(527, 264, 1, 1, 9),
(528, 264, 2, 2, 10),
(529, 265, 1, 1, 10),
(530, 265, 2, 2, 6),
(531, 266, 1, 1, 4),
(532, 266, 2, 2, 10),
(533, 267, 1, 1, 10),
(534, 267, 2, 2, 4),
(535, 268, 1, 1, 5),
(536, 268, 2, 2, 10),
(537, 269, 1, 1, 10),
(538, 269, 2, 2, 7);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
