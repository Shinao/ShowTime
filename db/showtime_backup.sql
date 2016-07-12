-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2016 at 09:54 AM
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=511 ;

--
-- Dumping data for table `showtv`
--

INSERT INTO `showtv` (`id`, `id_user`, `api_id`, `picture`, `name`, `current_season`, `desired_season`, `date_season_final`, `rating`, `status`, `produced_year`) VALUES
(376, 1, '32', 'http://tvmazecdn.com/uploads/images/medium_portrait/34/86243.jpg', 'Fargo', 2, 2, '2015-12-14', '9', 'Running', 2014),
(330, 1, '804', 'http://tvmazecdn.com/uploads/images/medium_portrait/6/15614.jpg', 'Strike Back', 5, 5, '2015-07-29', '8.6', 'Ended', 2010),
(331, 1, '5', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/61.jpg', 'True Detective', 2, 2, '2015-08-09', '8.6', 'To Be Determined', 2014),
(321, 1, '221', 'http://tvmazecdn.com/uploads/images/medium_portrait/1/3655.jpg', 'Rectify', 3, 4, '2015-08-13', '8.7', 'Running', 2013),
(320, 1, '64', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/474.jpg', 'Utopia', 2, 2, '2014-08-12', '8.8', 'Ended', 2013),
(488, 1, '150', 'http://tvmazecdn.com/uploads/images/medium_portrait/45/114890.jpg', 'Shameless', 7, 6, '2016-10-02', '8.8', 'Running', 2011),
(306, 1, '106', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/808.jpg', 'Justified', 6, 4, '2015-04-14', '8.7', 'Ended', 2010),
(307, 1, '174', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/2439.jpg', 'Parks and Recreation', 7, 2, '2015-02-24', '8.8', 'Ended', 2009),
(305, 1, '182', 'http://tvmazecdn.com/uploads/images/medium_portrait/29/72774.jpg', 'Black Sails', 3, 3, '2016-03-26', '8.3', 'Running', 2014),
(319, 1, '196', 'http://tvmazecdn.com/uploads/images/medium_portrait/1/2868.jpg', 'The Following', 3, 4, '2015-05-18', '7.2', 'Ended', 2013),
(447, 1, '2473', 'http://tvmazecdn.com/uploads/images/medium_portrait/44/110345.jpg', 'Limitless', 1, 1, '2016-04-26', '8.2', 'Ended', 2015),
(299, 1, '170', 'http://tvmazecdn.com/uploads/images/medium_portrait/58/147441.jpg', 'Orange is the New Black', 4, 5, '2016-06-17', '8.5', 'Running', 2013),
(312, 1, '335', 'http://tvmazecdn.com/uploads/images/medium_portrait/2/5311.jpg', 'Sherlock', 3, 4, '2014-01-12', '9.3', 'Running', 2010),
(445, 1, '1819', 'http://tvmazecdn.com/uploads/images/medium_portrait/65/163275.jpg', 'Dark Matter', 2, 2, '2016-08-26', '8.1', 'Running', 2015),
(349, 1, '164', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/2282.jpg', 'Banshee', 4, 5, '2016-05-20', '9.2', 'Ended', 2013),
(337, 1, '82', 'http://tvmazecdn.com/uploads/images/medium_portrait/53/132622.jpg', 'Game of Thrones', 6, 7, '2016-06-26', '9.4', 'Running', 2011),
(346, 1, '172', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/2432.jpg', 'Suits', 6, 6, '2016-09-14', '8.5', 'Running', 2011),
(348, 1, '5615', 'http://tvmazecdn.com/uploads/images/medium_portrait/22/56669.jpg', 'Braquo', 3, 4, '2014-03-03', '8', 'Running', 2009),
(362, 1, '73', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/509.jpg', 'The Walking Dead', 7, 7, '2016-10-09', '8.7', 'Running', 2010),
(367, 1, '377', 'http://tvmazecdn.com/uploads/images/medium_portrait/2/5545.jpg', 'The Musketeers', 3, 2, '2016-06-12', '8', 'Ended', 2014),
(368, 1, '1128', 'http://tvmazecdn.com/uploads/images/medium_portrait/6/17275.jpg', 'Cosmos: A Space-Time Odyssey', 1, 1, '2014-06-08', '9.2', 'Ended', 2014),
(407, 1, '43', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/373.jpg', 'Outlander', 2, 2, '2016-07-09', '8.3', 'Running', 2014),
(386, 1, '565', 'http://tvmazecdn.com/uploads/images/medium_portrait/4/11724.jpg', 'Deadwood', 3, 1, '2006-08-27', '9.1', 'Ended', 2004),
(425, 1, '216', 'http://tvmazecdn.com/uploads/images/medium_portrait/1/3603.jpg', 'Rick and Morty', 2, 3, '2015-10-04', '9.4', 'Running', 2013),
(372, 1, '1139', 'http://tvmazecdn.com/uploads/images/medium_portrait/6/17323.jpg', 'Impractical Jokers', 6, 4, '2016-07-28', '7.4', 'Running', 2011),
(377, 1, '49', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/406.jpg', 'Brooklyn Nine-Nine', 4, 3, '2016-09-20', '8.4', 'Running', 2013),
(384, 1, '16', 'http://tvmazecdn.com/uploads/images/medium_portrait/48/122237.jpg', 'Penny Dreadful', 3, 3, '2016-06-19', '8.2', 'Ended', 2014),
(435, 1, '306', 'http://tvmazecdn.com/uploads/images/medium_portrait/2/5036.jpg', 'Broadchurch', 3, 1, '2017-01-03', '8.7', 'Running', 2013),
(390, 1, '51', 'http://tvmazecdn.com/uploads/images/medium_portrait/0/417.jpg', 'The Knick', 2, 2, '2015-12-18', '8.6', 'To Be Determined', 2014),
(444, 1, '1871', 'http://tvmazecdn.com/uploads/images/medium_portrait/62/155508.jpg', 'Mr. Robot', 2, 2, '2016-09-14', '9', 'Running', 2015),
(446, 1, '1824', 'http://tvmazecdn.com/uploads/images/medium_portrait/47/118621.jpg', 'Fear the Walking Dead', 2, 2, '2016-08-21', '7.6', 'Running', 2015),
(422, 1, '305', 'http://tvmazecdn.com/uploads/images/medium_portrait/12/31071.jpg', 'Black Mirror', 2, 3, '2013-02-25', '9', 'Running', 2011),
(487, 1, '2993', 'http://tvmazecdn.com/uploads/images/medium_portrait/61/154035.jpg', 'Stranger Things', 1, 1, '2016-07-15', '', 'In Development', 2016),
(485, 1, '157', 'http://tvmazecdn.com/uploads/images/medium_portrait/47/118626.jpg', 'The Americans', 4, 5, '2016-06-08', '8.1', 'Running', 2013),
(436, 1, '1369', 'http://tvmazecdn.com/uploads/images/medium_portrait/48/122498.jpg', 'Marvel''s Daredevil', 2, 3, '2016-03-18', '8.6', 'To Be Determined', 2015),
(434, 1, '321', 'http://tvmazecdn.com/uploads/images/medium_portrait/2/5210.jpg', 'Arrested Development', 4, 1, '2013-05-26', '8.7', 'Running', 2003),
(413, 1, '52', 'http://tvmazecdn.com/uploads/images/medium_portrait/28/70733.jpg', 'How to Get Away with Murder', 3, 3, '2016-09-22', '7.8', 'Running', 2014),
(437, 1, '195', 'http://tvmazecdn.com/uploads/images/medium_portrait/1/2855.jpg', 'Bates Motel', 4, 4, '2016-05-16', '8', 'Running', 2013),
(451, 1, '2757', 'http://tvmazecdn.com/uploads/images/medium_portrait/14/37150.jpg', 'Colony', 1, 1, '2016-03-17', '7.7', 'Running', 2016),
(452, 1, '1855', 'http://tvmazecdn.com/uploads/images/medium_portrait/47/119512.jpg', 'Blindspot', 2, 1, '2016-10-12', '7.8', 'Running', 2015),
(453, 1, '2753', 'http://tvmazecdn.com/uploads/images/medium_portrait/14/37130.jpg', 'The Bastard Executioner', 1, 1, '2015-11-17', '7', 'Ended', 2015),
(486, 1, '700', 'http://tvmazecdn.com/uploads/images/medium_portrait/61/153841.jpg', 'Marco Polo', 2, 2, '2016-07-01', '8.2', 'Running', 2014),
(456, 1, '3964', 'http://tvmazecdn.com/uploads/images/medium_portrait/19/49118.jpg', 'Okkupert', 1, 1, '2015-12-06', '7.8', 'Ended', 2015),
(462, 1, '1858', 'http://tvmazecdn.com/uploads/images/medium_portrait/39/99142.jpg', 'Minority Report', 1, 1, '2015-11-30', '6.8', 'Ended', 2015),
(463, 1, '2759', 'http://tvmazecdn.com/uploads/images/medium_portrait/14/37165.jpg', 'The Last Kingdom', 1, 2, '2015-11-28', '8.5', 'Running', 2015),
(464, 1, '2114', 'http://tvmazecdn.com/uploads/images/medium_portrait/50/125908.jpg', 'Quantico', 2, 1, '2016-09-25', '6.8', 'Running', 2015),
(472, 1, '1804', 'http://tvmazecdn.com/uploads/images/medium_portrait/34/85998.jpg', 'The Man in the High Castle', 1, 1, '2015-11-20', '7.9', 'Running', 2015),
(477, 1, '4201', 'http://tvmazecdn.com/uploads/images/medium_portrait/20/50491.jpg', 'One-Punch Man', 1, 2, '2015-12-21', '9.2', 'Ended', 2015),
(478, 1, '2300', 'http://tvmazecdn.com/uploads/images/medium_portrait/35/89413.jpg', 'Into the Badlands', 1, 1, '2015-12-20', '8.3', 'Running', 2015),
(479, 1, '1367', 'http://tvmazecdn.com/uploads/images/medium_portrait/42/106753.jpg', 'Sense8', 2, 2, '2016-12-25', '8.3', 'Running', 2015),
(481, 1, '1859', 'http://tvmazecdn.com/uploads/images/medium_portrait/46/115964.jpg', 'Lucifer', 2, 2, '2016-09-26', '8.4', 'Running', 2016),
(482, 1, '6392', 'http://tvmazecdn.com/uploads/images/medium_portrait/49/123969.jpg', 'The Path', 1, 1, '2016-05-25', '6.3', 'Running', 2016),
(483, 1, '2029', 'http://tvmazecdn.com/uploads/images/medium_portrait/49/124188.jpg', 'American Crime Story', 1, 1, '2016-04-05', '7.5', 'Running', 2016),
(489, 1, '3144', 'http://tvmazecdn.com/uploads/images/medium_portrait/58/146084.jpg', 'Preacher', 1, 1, '2016-07-17', '8.2', 'Running', 2016),
(490, 1, '8897', 'http://tvmazecdn.com/uploads/images/medium_portrait/58/147010.jpg', 'Dead of Summer', 1, 1, '2016-08-16', '6.3', 'Running', 2016),
(491, 1, '2705', 'http://tvmazecdn.com/uploads/images/medium_portrait/14/36416.jpg', 'Narcos', 2, 2, '2016-09-02', '8.7', 'Running', 2015),
(492, 1, '138', 'http://tvmazecdn.com/uploads/images/medium_portrait/62/155378.jpg', 'The Leftovers', 2, 1, '2015-12-06', '7.8', 'Running', 2014),
(493, 1, '1862', 'http://tvmazecdn.com/uploads/images/medium_portrait/48/120675.jpg', 'Scream Queens', 2, 1, '2016-09-20', '6.7', 'Running', 2015);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'rmonnerat.pro@gmail.com', 'showtime');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
