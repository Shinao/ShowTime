-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2015 at 10:41 PM
-- Server version: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `showtime`
--

-- --------------------------------------------------------

--
-- Table structure for table `showtv`
--

CREATE TABLE IF NOT EXISTS `showtv` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `id_user` int(55) NOT NULL,
  `api_id` varchar(10) NOT NULL,
  `picture` varchar(1000) NOT NULL,
  `name` varchar(100) NOT NULL,
  `current_season` int(4) NOT NULL,
  `desired_season` int(4) NOT NULL,
  `date_season_final` date NOT NULL,
  `rating` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `produced_year` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=459 ;

--
-- Dumping data for table `showtv`
--

INSERT INTO `showtv` (`id`, `id_user`, `api_id`, `picture`, `name`, `current_season`, `desired_season`, `date_season_final`, `rating`, `status`, `produced_year`) VALUES
(376, 1, '32', 'http://tvmazecdn.com/uploads/images/medium_portrait/25/63121.jpg', 'Fargo', 2, 2, '2015-12-14', '8.8', 'Running', 2014),
(330, 1, '804', 'http://tvmazecdn.com/uploads/images/medium_portrait/6/15614.jpg', 'Strike Back', 5, 5, '2015-07-29', '8.8', 'Ended', 2010),
(331, 1, '5', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/61.jpg', 'True Detective', 2, 2, '2015-08-09', '8.7', 'Running', 2014),
(321, 1, '221', 'http://tvmazecdn.com/uploads/images/medium_portrait/1/3655.jpg', 'Rectify', 3, 4, '2015-08-13', '8.5', 'Running', 2013),
(320, 1, '64', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/474.jpg', 'Utopia', 2, 2, '2014-08-12', '9.2', 'Ended', 2013),
(306, 1, '106', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/808.jpg', 'Justified', 6, 4, '2015-04-14', '8.8', 'Ended', 2010),
(307, 1, '174', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/2439.jpg', 'Parks and Recreation', 7, 2, '2015-02-24', '8.8', 'Ended', 2009),
(305, 1, '182', 'http://tvmazecdn.com/uploads/images/medium_portrait/29/72774.jpg', 'Black Sails', 3, 3, '2016-01-23', '8.3', 'Running', 2014),
(319, 1, '196', 'http://tvmazecdn.com/uploads/images/medium_portrait/1/2868.jpg', 'The Following', 3, 4, '2015-05-18', '7', 'Ended', 2013),
(447, 1, '2473', 'http://tvmazecdn.com/uploads/images/medium_portrait/19/48811.jpg', 'Limitless', 1, 1, '2016-01-05', '8.1', 'Running', 2015),
(448, 1, '2244', 'http://tvmazecdn.com/uploads/images/medium_portrait/27/68344.jpg', 'The Player', 1, 1, '2015-11-19', '7.9', 'Ended', 2015),
(299, 1, '170', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/2414.jpg', 'Orange Is the New Black', 3, 4, '2015-06-11', '8.4', 'Running', 2013),
(312, 1, '335', 'http://tvmazecdn.com/uploads/images/medium_portrait/2/5311.jpg', 'Sherlock', 3, 4, '2014-01-12', '9.3', 'Running', 2010),
(296, 1, '670', 'http://tvmazecdn.com/uploads/images/medium_portrait/5/14769.jpg', 'Luther', 4, 4, '2015-12-15', '9', 'Running', 2010),
(445, 1, '1819', 'http://tvmazecdn.com/uploads/images/medium_portrait/11/29062.jpg', 'Dark Matter', 1, 2, '2015-08-28', '7.9', 'Running', 2015),
(349, 1, '164', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/2282.jpg', 'Banshee', 4, 4, '2016-03-19', '9.3', 'Running', 2013),
(337, 1, '82', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/581.jpg', 'Game of Thrones', 5, 6, '2015-06-14', '9.4', 'Running', 2011),
(347, 1, '29', 'http://tvmazecdn.com/uploads/images/medium_portrait/28/70747.jpg', 'Vikings', 3, 4, '2015-04-23', '9', 'Running', 2013),
(346, 1, '172', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/2432.jpg', 'Suits', 5, 5, '2016-01-27', '8.6', 'Running', 2011),
(348, 1, '5615', 'http://tvmazecdn.com/uploads/images/medium_portrait/22/56669.jpg', 'Braquo', 3, 4, '2014-03-03', '', 'Running', 2009),
(362, 1, '73', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/509.jpg', 'The Walking Dead', 6, 6, '2016-02-28', '8.6', 'Running', 2010),
(457, 1, '1179', 'http://tvmazecdn.com/uploads/images/medium_portrait/7/17608.jpg', 'Wayward Pines', 1, 2, '2015-07-23', '7.9', 'Ended', 2015),
(367, 1, '377', 'http://tvmazecdn.com/uploads/images/medium_portrait/2/5545.jpg', 'The Musketeers', 2, 2, '2015-03-27', '8.3', 'Running', 2014),
(368, 1, '1128', 'http://tvmazecdn.com/uploads/images/medium_portrait/6/17275.jpg', 'Cosmos: A Space-Time Odyssey', 1, 1, '2014-06-08', '9.2', 'Ended', 2014),
(407, 1, '43', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/373.jpg', 'Outlander', 1, 2, '2015-05-30', '7.7', 'Running', 2014),
(386, 1, '565', 'http://tvmazecdn.com/uploads/images/medium_portrait/4/11724.jpg', 'Deadwood', 3, 1, '2006-08-27', '9.3', 'Ended', 2004),
(425, 1, '216', 'http://tvmazecdn.com/uploads/images/medium_portrait/1/3603.jpg', 'Rick and Morty', 2, 3, '2015-10-04', '9.3', 'Running', 2013),
(372, 1, '1139', 'http://tvmazecdn.com/uploads/images/medium_portrait/6/17323.jpg', 'Impractical Jokers', 4, 4, '2015-10-22', '7', 'Running', 2011),
(377, 1, '49', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/406.jpg', 'Brooklyn Nine-Nine', 3, 3, '2015-12-13', '8.8', 'Running', 2013),
(384, 1, '16', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/156.jpg', 'Penny Dreadful', 2, 3, '2015-07-05', '8.1', 'Running', 2014),
(435, 1, '306', 'http://tvmazecdn.com/uploads/images/medium_portrait/22/56930.jpg', 'Broadchurch', 2, 1, '2015-02-23', '8.7', 'Running', 2013),
(390, 1, '51', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/417.jpg', 'The Knick', 2, 2, '2015-12-18', '8.5', 'Running', 2014),
(444, 1, '1871', 'http://tvmazecdn.com/uploads/images/medium_portrait/11/28281.jpg', 'Mr. Robot', 1, 2, '2015-09-02', '9', 'Running', 2015),
(446, 1, '1824', 'http://tvmazecdn.com/uploads/images/medium_portrait/13/32534.jpg', 'Fear The Walking Dead', 1, 1, '2015-10-04', '7.5', 'Running', 2015),
(399, 1, '269', 'http://tvmazecdn.com/uploads/images/medium_portrait/1/4710.jpg', 'Peaky Blinders', 2, 3, '2014-11-06', '9', 'Running', 2013),
(422, 1, '305', 'http://tvmazecdn.com/uploads/images/medium_portrait/12/31071.jpg', 'Black Mirror', 2, 3, '2013-02-25', '8.8', 'Running', 2011),
(442, 1, '708', 'http://tvmazecdn.com/uploads/images/medium_portrait/6/15009.jpg', 'Lilyhammer', 3, 1, '2014-12-17', '8.8', 'Ended', 2012),
(436, 1, '1369', 'http://tvmazecdn.com/uploads/images/medium_portrait/21/52981.jpg', 'Marvel''s Daredevil', 1, 2, '2015-04-10', '8.5', 'Running', 2015),
(404, 1, '1415', 'http://tvmazecdn.com/uploads/images/medium_portrait/16/40116.jpg', 'Heroes Reborn', 1, 1, '2016-01-21', '7.2', 'Running', 2015),
(434, 1, '321', 'http://tvmazecdn.com/uploads/images/medium_portrait/2/5210.jpg', 'Arrested Development', 4, 1, '2013-05-26', '8.8', 'Running', 2003),
(413, 1, '52', 'http://tvmazecdn.com/uploads/images/medium_portrait/28/70733.jpg', 'How to Get Away with Murder', 2, 2, '2016-02-11', '7.5', 'Running', 2014),
(449, 1, '1821', 'http://tvmazecdn.com/uploads/images/medium_portrait/11/27544.jpg', 'Ballers', 1, 1, '2015-08-23', '6.3', 'Running', 2015),
(437, 1, '195', 'http://tvmazecdn.com/uploads/images/medium_portrait/1/2855.jpg', 'Bates Motel', 3, 4, '2015-05-11', '8', 'Running', 2013),
(450, 1, '201', 'http://tvmazecdn.com/uploads/images/medium_portrait/1/3005.jpg', 'Devious Maids', 3, 3, '2015-08-24', '9', 'Running', 2013),
(451, 1, '2757', 'http://tvmazecdn.com/uploads/images/medium_portrait/14/37150.jpg', 'Colony', 1, 1, '2016-01-14', '8', 'Running', 2016),
(452, 1, '1855', 'http://tvmazecdn.com/uploads/images/medium_portrait/28/70723.jpg', 'Blindspot', 1, 1, '2015-11-23', '7.8', 'Running', 2015),
(453, 1, '2753', 'http://tvmazecdn.com/uploads/images/medium_portrait/14/37130.jpg', 'The Bastard Executioner', 1, 1, '2015-11-17', '7.2', 'Ended', 2015),
(456, 1, '3964', 'http://tvmazecdn.com/uploads/images/medium_portrait/19/49118.jpg', 'Okkupert', 1, 1, '2015-12-06', '2', 'Running', 2015);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'rmonnerat.pro@gmail.com', 'showtime'),
(2, 'raphaelmonnerat@msn.com', 'showtime');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
