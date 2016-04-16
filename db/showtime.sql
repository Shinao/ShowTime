-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2016 at 10:10 PM
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=485 ;

--
-- Dumping data for table `showtv`
--

INSERT INTO `showtv` (`id`, `id_user`, `api_id`, `picture`, `name`, `current_season`, `desired_season`, `date_season_final`, `rating`, `status`, `produced_year`) VALUES
(376, 1, '32', 'http://tvmazecdn.com/uploads/images/medium_portrait/34/86243.jpg', 'Fargo', 2, 2, '2015-12-14', '9', 'Running', 2014),
(330, 1, '804', 'http://tvmazecdn.com/uploads/images/medium_portrait/6/15614.jpg', 'Strike Back', 5, 5, '2015-07-29', '8.6', 'Ended', 2010),
(331, 1, '5', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/61.jpg', 'True Detective', 2, 2, '2015-08-09', '8.5', 'To Be Determined', 2014),
(321, 1, '221', 'http://tvmazecdn.com/uploads/images/medium_portrait/1/3655.jpg', 'Rectify', 3, 4, '2015-08-13', '8.7', 'Running', 2013),
(320, 1, '64', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/474.jpg', 'Utopia', 2, 2, '2014-08-12', '8.8', 'Ended', 2013),
(461, 1, '2999', 'http://tvmazecdn.com/uploads/images/medium_portrait/35/87835.jpg', 'The Shannara Chronicles', 1, 1, '2016-03-01', '7.8', 'To Be Determined', 2016),
(306, 1, '106', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/808.jpg', 'Justified', 6, 4, '2015-04-14', '8.7', 'Ended', 2010),
(307, 1, '174', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/2439.jpg', 'Parks and Recreation', 7, 2, '2015-02-24', '8.8', 'Ended', 2009),
(305, 1, '182', 'http://tvmazecdn.com/uploads/images/medium_portrait/29/72774.jpg', 'Black Sails', 3, 3, '2016-03-26', '8.3', 'Running', 2014),
(319, 1, '196', 'http://tvmazecdn.com/uploads/images/medium_portrait/1/2868.jpg', 'The Following', 3, 4, '2015-05-18', '7.2', 'Ended', 2013),
(447, 1, '2473', 'http://tvmazecdn.com/uploads/images/medium_portrait/44/110345.jpg', 'Limitless', 1, 1, '2016-04-26', '8.2', 'Running', 2015),
(299, 1, '170', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/2414.jpg', 'Orange is the New Black', 4, 4, '2016-06-17', '8.5', 'Running', 2013),
(312, 1, '335', 'http://tvmazecdn.com/uploads/images/medium_portrait/2/5311.jpg', 'Sherlock', 3, 4, '2014-01-12', '9.3', 'Running', 2010),
(480, 1, '2942', 'http://tvmazecdn.com/uploads/images/medium_portrait/31/78541.jpg', 'Childhood''s End', 1, 1, '2015-12-16', '7.3', 'Ended', 2015),
(296, 1, '670', 'http://tvmazecdn.com/uploads/images/medium_portrait/5/14769.jpg', 'Luther', 4, 5, '2015-12-22', '9', 'Ended', 2010),
(445, 1, '1819', 'http://tvmazecdn.com/uploads/images/medium_portrait/51/129300.jpg', 'Dark Matter', 2, 2, '0000-00-00', '8', 'Running', 2015),
(349, 1, '164', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/2282.jpg', 'Banshee', 4, 4, '2016-05-20', '9.2', 'Running', 2013),
(337, 1, '82', 'http://tvmazecdn.com/uploads/images/medium_portrait/53/132622.jpg', 'Game of Thrones', 6, 6, '2016-05-29', '9.4', 'Running', 2011),
(346, 1, '172', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/2432.jpg', 'Suits', 5, 6, '2016-03-02', '8.5', 'Running', 2011),
(348, 1, '5615', 'http://tvmazecdn.com/uploads/images/medium_portrait/22/56669.jpg', 'Braquo', 3, 4, '2014-03-03', '8', 'Running', 2009),
(362, 1, '73', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/509.jpg', 'The Walking Dead', 7, 6, '2016-10-09', '8.7', 'Running', 2010),
(367, 1, '377', 'http://tvmazecdn.com/uploads/images/medium_portrait/2/5545.jpg', 'The Musketeers', 2, 2, '2015-03-27', '8.2', 'Running', 2014),
(368, 1, '1128', 'http://tvmazecdn.com/uploads/images/medium_portrait/6/17275.jpg', 'Cosmos: A Space-Time Odyssey', 1, 1, '2014-06-08', '9.2', 'Ended', 2014),
(407, 1, '43', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/373.jpg', 'Outlander', 2, 2, '2016-07-02', '8.2', 'Running', 2014),
(386, 1, '565', 'http://tvmazecdn.com/uploads/images/medium_portrait/4/11724.jpg', 'Deadwood', 3, 1, '2006-08-27', '9.1', 'Ended', 2004),
(425, 1, '216', 'http://tvmazecdn.com/uploads/images/medium_portrait/1/3603.jpg', 'Rick and Morty', 2, 3, '2015-10-04', '9.4', 'Running', 2013),
(372, 1, '1139', 'http://tvmazecdn.com/uploads/images/medium_portrait/6/17323.jpg', 'Impractical Jokers', 5, 4, '2016-04-21', '7', 'Running', 2011),
(377, 1, '49', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/406.jpg', 'Brooklyn Nine-Nine', 3, 3, '2016-04-19', '8.5', 'Running', 2013),
(384, 1, '16', 'http://tvmazecdn.com/uploads/images/medium_portrait/48/122237.jpg', 'Penny Dreadful', 3, 3, '2016-05-29', '8.1', 'Running', 2014),
(435, 1, '306', 'http://tvmazecdn.com/uploads/images/medium_portrait/2/5036.jpg', 'Broadchurch', 2, 1, '2015-02-23', '8.7', 'Running', 2013),
(390, 1, '51', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/417.jpg', 'The Knick', 2, 2, '2015-12-18', '8.6', 'Running', 2014),
(444, 1, '1871', 'http://tvmazecdn.com/uploads/images/medium_portrait/48/120305.jpg', 'Mr. Robot', 1, 2, '2015-09-02', '9', 'Running', 2015),
(446, 1, '1824', 'http://tvmazecdn.com/uploads/images/medium_portrait/47/118621.jpg', 'Fear The Walking Dead', 2, 2, '2016-05-22', '7.7', 'Running', 2015),
(422, 1, '305', 'http://tvmazecdn.com/uploads/images/medium_portrait/12/31071.jpg', 'Black Mirror', 2, 3, '2013-02-25', '9', 'Running', 2011),
(442, 1, '708', 'http://tvmazecdn.com/uploads/images/medium_portrait/6/15009.jpg', 'Lilyhammer', 3, 1, '2014-12-17', '8.6', 'Ended', 2012),
(436, 1, '1369', 'http://tvmazecdn.com/uploads/images/medium_portrait/48/122498.jpg', 'Marvel''s Daredevil', 2, 3, '2016-03-18', '8.5', 'Running', 2015),
(434, 1, '321', 'http://tvmazecdn.com/uploads/images/medium_portrait/2/5210.jpg', 'Arrested Development', 4, 1, '2013-05-26', '8.7', 'Running', 2003),
(413, 1, '52', 'http://tvmazecdn.com/uploads/images/medium_portrait/28/70733.jpg', 'How to Get Away with Murder', 2, 2, '2016-03-17', '7.8', 'Running', 2014),
(437, 1, '195', 'http://tvmazecdn.com/uploads/images/medium_portrait/1/2855.jpg', 'Bates Motel', 4, 4, '2016-05-16', '8', 'Running', 2013),
(450, 1, '201', 'http://tvmazecdn.com/uploads/images/medium_portrait/1/3005.jpg', 'Devious Maids', 4, 3, '2016-07-25', '8.7', 'Running', 2013),
(451, 1, '2757', 'http://tvmazecdn.com/uploads/images/medium_portrait/14/37150.jpg', 'Colony', 1, 1, '2016-03-17', '7.7', 'Running', 2016),
(452, 1, '1855', 'http://tvmazecdn.com/uploads/images/medium_portrait/47/119512.jpg', 'Blindspot', 1, 1, '2016-05-23', '7.8', 'Running', 2015),
(453, 1, '2753', 'http://tvmazecdn.com/uploads/images/medium_portrait/14/37130.jpg', 'The Bastard Executioner', 1, 1, '2015-11-17', '7', 'Ended', 2015),
(460, 1, '1825', 'http://tvmazecdn.com/uploads/images/medium_portrait/31/78533.jpg', 'The Expanse', 1, 2, '2016-02-02', '8.3', 'Running', 2015),
(459, 1, '1851', 'http://tvmazecdn.com/uploads/images/medium_portrait/41/104633.jpg', 'DC''s Legends of Tomorrow', 1, 1, '2016-05-19', '7.6', 'Running', 2016),
(456, 1, '3964', 'http://tvmazecdn.com/uploads/images/medium_portrait/19/49118.jpg', 'Okkupert', 1, 1, '2015-12-06', '7.7', 'Ended', 2015),
(462, 1, '1858', 'http://tvmazecdn.com/uploads/images/medium_portrait/39/99142.jpg', 'Minority Report', 1, 1, '2015-11-30', '6.8', 'Ended', 2015),
(463, 1, '2759', 'http://tvmazecdn.com/uploads/images/medium_portrait/14/37165.jpg', 'The Last Kingdom', 1, 2, '2015-11-28', '8.4', 'Running', 2015),
(464, 1, '2114', 'http://tvmazecdn.com/uploads/images/medium_portrait/50/125908.jpg', 'Quantico', 1, 1, '2016-05-15', '6.9', 'Running', 2015),
(472, 1, '1804', 'http://tvmazecdn.com/uploads/images/medium_portrait/34/85998.jpg', 'The Man in the High Castle', 1, 1, '2015-11-20', '7.9', 'Running', 2015),
(477, 1, '4201', 'http://tvmazecdn.com/uploads/images/medium_portrait/20/50491.jpg', 'One-Punch Man', 1, 2, '2015-12-21', '9.4', 'Running', 2015),
(478, 1, '2300', 'http://tvmazecdn.com/uploads/images/medium_portrait/35/89413.jpg', 'Into the Badlands', 1, 1, '2015-12-20', '8.1', 'Running', 2015),
(479, 1, '1367', 'http://tvmazecdn.com/uploads/images/medium_portrait/11/28936.jpg', 'Sense8', 1, 2, '2015-06-05', '8.2', 'Running', 2015),
(481, 1, '1859', 'http://tvmazecdn.com/uploads/images/medium_portrait/46/115964.jpg', 'Lucifer', 1, 1, '2016-04-25', '8.5', 'Running', 2016),
(482, 1, '6392', 'http://tvmazecdn.com/uploads/images/medium_portrait/49/123969.jpg', 'The Path', 1, 1, '2016-05-25', '6', 'Running', 2016),
(483, 1, '2029', 'http://tvmazecdn.com/uploads/images/medium_portrait/49/124188.jpg', 'American Crime Story', 1, 1, '2016-04-05', '7.4', 'Running', 2016);

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
