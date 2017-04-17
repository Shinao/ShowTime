-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2017 at 12:24 AM
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=541 ;

--
-- Dumping data for table `showtv`
--

INSERT INTO `showtv` (`id`, `id_user`, `api_id`, `picture`, `name`, `current_season`, `desired_season`, `date_season_final`, `rating`, `status`, `produced_year`) VALUES
(376, 1, '32', 'http://static.tvmaze.com/uploads/images/medium_portrait/104/261285.jpg', 'Fargo', 3, 2, '2017-06-21', '9', 'Running', 2014),
(331, 1, '5', 'http://static.tvmaze.com/uploads/images/medium_portrait/0/61.jpg', 'True Detective', 2, 2, '2015-08-09', '8.5', 'To Be Determined', 2014),
(515, 1, '1371', 'http://static.tvmaze.com/uploads/images/medium_portrait/79/198046.jpg', 'Westworld', 1, 2, '2016-12-04', '8.9', 'Running', 2016),
(320, 1, '64', 'http://static.tvmaze.com/uploads/images/medium_portrait/0/474.jpg', 'Utopia', 2, 2, '2014-08-12', '8.7', 'Ended', 2013),
(488, 1, '150', 'http://static.tvmaze.com/uploads/images/medium_portrait/45/114890.jpg', 'Shameless', 7, 8, '2016-12-18', '8.8', 'Running', 2011),
(306, 1, '106', 'http://static.tvmaze.com/uploads/images/medium_portrait/0/808.jpg', 'Justified', 6, 4, '2015-04-14', '8.8', 'Ended', 2010),
(307, 1, '174', 'http://static.tvmaze.com/uploads/images/medium_portrait/0/2439.jpg', 'Parks and Recreation', 7, 2, '2015-02-24', '8.8', 'Ended', 2009),
(305, 1, '182', 'http://static.tvmaze.com/uploads/images/medium_portrait/78/195951.jpg', 'Black Sails', 4, 3, '2017-04-02', '8.5', 'Ended', 2014),
(299, 1, '170', 'http://static.tvmaze.com/uploads/images/medium_portrait/58/147441.jpg', 'Orange is the New Black', 5, 5, '2017-06-09', '8.2', 'Running', 2013),
(312, 1, '335', 'http://static.tvmaze.com/uploads/images/medium_portrait/2/5311.jpg', 'Sherlock', 4, 5, '2017-01-15', '9.2', 'To Be Determined', 2010),
(445, 1, '1819', 'http://static.tvmaze.com/uploads/images/medium_portrait/65/163275.jpg', 'Dark Matter', 3, 2, '2017-08-04', '8', 'Running', 2015),
(337, 1, '82', 'http://static.tvmaze.com/uploads/images/medium_portrait/53/132622.jpg', 'Game of Thrones', 7, 7, '2017-07-16', '9.3', 'Running', 2011),
(346, 1, '172', 'http://static.tvmaze.com/uploads/images/medium_portrait/0/2432.jpg', 'Suits', 6, 7, '2017-03-01', '8.5', 'Running', 2011),
(348, 1, '5615', 'http://static.tvmaze.com/uploads/images/medium_portrait/22/56669.jpg', 'Braquo', 4, 5, '2016-10-03', '7.8', 'Ended', 2009),
(362, 1, '73', 'http://static.tvmaze.com/uploads/images/medium_portrait/104/261726.jpg', 'The Walking Dead', 7, 7, '2017-04-02', '8.5', 'Running', 2010),
(367, 1, '377', 'http://static.tvmaze.com/uploads/images/medium_portrait/2/5545.jpg', 'The Musketeers', 3, 2, '2016-06-12', '8.1', 'Ended', 2014),
(368, 1, '1128', 'http://static.tvmaze.com/uploads/images/medium_portrait/6/17275.jpg', 'Cosmos: A Space-Time Odyssey', 1, 1, '2014-06-08', '9.3', 'Ended', 2014),
(407, 1, '43', 'http://static.tvmaze.com/uploads/images/medium_portrait/0/373.jpg', 'Outlander', 2, 2, '2016-07-09', '8.4', 'Running', 2014),
(425, 1, '216', 'http://static.tvmaze.com/uploads/images/medium_portrait/1/3603.jpg', 'Rick and Morty', 3, 3, '2017-04-01', '9.4', 'Running', 2013),
(372, 1, '1139', 'http://static.tvmaze.com/uploads/images/medium_portrait/6/17323.jpg', 'Impractical Jokers', 6, 4, '2017-04-27', '7.6', 'Running', 2011),
(377, 1, '49', 'http://static.tvmaze.com/uploads/images/medium_portrait/89/224747.jpg', 'Brooklyn Nine-Nine', 4, 3, '2017-05-23', '8.3', 'Running', 2013),
(384, 1, '16', 'http://static.tvmaze.com/uploads/images/medium_portrait/48/122237.jpg', 'Penny Dreadful', 3, 3, '2016-06-19', '8.2', 'Ended', 2014),
(435, 1, '306', 'http://static.tvmaze.com/uploads/images/medium_portrait/2/5036.jpg', 'Broadchurch', 3, 1, '2017-04-17', '8.7', 'Running', 2013),
(390, 1, '51', 'http://static.tvmaze.com/uploads/images/medium_portrait/0/417.jpg', 'The Knick', 2, 2, '2015-12-18', '8.7', 'Ended', 2014),
(444, 1, '1871', 'http://static.tvmaze.com/uploads/images/medium_portrait/81/204118.jpg', 'Mr. Robot', 2, 2, '2016-09-21', '8.6', 'Running', 2015),
(446, 1, '1824', 'http://static.tvmaze.com/uploads/images/medium_portrait/67/167812.jpg', 'Fear the Walking Dead', 3, 3, '2017-07-09', '7.3', 'Running', 2015),
(422, 1, '305', 'http://static.tvmaze.com/uploads/images/medium_portrait/81/204665.jpg', 'Black Mirror', 3, 4, '2016-10-21', '9', 'Running', 2011),
(487, 1, '2993', 'http://static.tvmaze.com/uploads/images/medium_portrait/65/163146.jpg', 'Stranger Things', 2, 2, '2017-10-31', '8.8', 'Running', 2016),
(485, 1, '157', 'http://static.tvmaze.com/uploads/images/medium_portrait/100/251858.jpg', 'The Americans', 5, 5, '2017-05-30', '8.2', 'Running', 2013),
(436, 1, '1369', 'http://static.tvmaze.com/uploads/images/medium_portrait/48/122498.jpg', 'Marvel''s Daredevil', 2, 3, '2016-03-18', '8.5', 'Running', 2015),
(434, 1, '321', 'http://static.tvmaze.com/uploads/images/medium_portrait/2/5210.jpg', 'Arrested Development', 4, 1, '2013-05-26', '8.8', 'To Be Determined', 2003),
(413, 1, '52', 'http://static.tvmaze.com/uploads/images/medium_portrait/70/176534.jpg', 'How to Get Away with Murder', 3, 4, '2017-02-23', '7.8', 'Running', 2014),
(437, 1, '195', 'http://static.tvmaze.com/uploads/images/medium_portrait/1/2855.jpg', 'Bates Motel', 5, 4, '2017-04-24', '8.1', 'Running', 2013),
(525, 1, '17128', 'http://static.tvmaze.com/uploads/images/medium_portrait/70/175831.jpg', 'This Is Us', 1, 1, '2017-03-14', '8.1', 'Running', 2016),
(452, 1, '1855', 'http://static.tvmaze.com/uploads/images/medium_portrait/69/174907.jpg', 'Blindspot', 2, 1, '2017-05-17', '7.9', 'Running', 2015),
(517, 1, '8167', 'http://static.tvmaze.com/uploads/images/medium_portrait/101/253490.jpg', 'Designated Survivor', 1, 1, '2017-04-26', '8.1', 'Running', 2016),
(486, 1, '700', 'http://static.tvmaze.com/uploads/images/medium_portrait/61/153841.jpg', 'Marco Polo', 2, 2, '2016-07-01', '8', 'Ended', 2014),
(529, 1, '6393', 'http://static.tvmaze.com/uploads/images/medium_portrait/90/225002.jpg', 'Legion', 1, 1, '2017-03-29', '7.7', 'Running', 2017),
(533, 1, '33', 'http://static.tvmaze.com/uploads/images/medium_portrait/0/305.jpg', 'Hemlock Grove', 3, 2, '2015-10-23', '7.1', 'Ended', 2013),
(516, 1, '6508', 'http://static.tvmaze.com/uploads/images/medium_portrait/73/184047.jpg', 'Atlanta', 1, 2, '2016-11-01', '6.4', 'Running', 2016),
(463, 1, '2759', 'http://static.tvmaze.com/uploads/images/medium_portrait/102/256470.jpg', 'The Last Kingdom', 2, 2, '2017-05-04', '8.4', 'Running', 2015),
(539, 1, '1804', 'http://static.tvmaze.com/uploads/images/medium_portrait/34/85998.jpg', 'The Man in the High Castle', 2, 3, '2016-12-15', '7.9', 'Running', 2015),
(513, 1, '5495', 'http://static.tvmaze.com/uploads/images/medium_portrait/93/234808.jpg', 'Lethal Weapon', 1, 2, '2017-03-15', '7.6', 'Running', 2016),
(477, 1, '4201', 'http://static.tvmaze.com/uploads/images/medium_portrait/20/50491.jpg', 'One-Punch Man', 1, 2, '2015-12-20', '9.3', 'Running', 2015),
(478, 1, '2300', 'http://static.tvmaze.com/uploads/images/medium_portrait/97/243739.jpg', 'Into the Badlands', 2, 2, '2017-05-21', '8.3', 'Running', 2015),
(479, 1, '1367', 'http://static.tvmaze.com/uploads/images/medium_portrait/91/227951.jpg', 'Sense8', 2, 2, '2017-05-05', '8.4', 'Running', 2015),
(481, 1, '1859', 'http://static.tvmaze.com/uploads/images/medium_portrait/70/175546.jpg', 'Lucifer', 2, 2, '2017-09-19', '8.4', 'Running', 2016),
(530, 1, '14612', 'http://static.tvmaze.com/uploads/images/medium_portrait/96/241678.jpg', 'Santa Clarita Diet', 1, 1, '2017-02-03', '7.4', 'Running', 2017),
(526, 1, '15996', 'http://static.tvmaze.com/uploads/images/medium_portrait/80/201929.jpg', 'Travelers', 1, 2, '2017-01-02', '7.8', 'Running', 2016),
(489, 1, '3144', 'http://static.tvmaze.com/uploads/images/medium_portrait/58/146084.jpg', 'Preacher', 2, 2, '2017-06-26', '8.1', 'Running', 2016),
(534, 1, '1372', 'http://static.tvmaze.com/uploads/images/medium_portrait/59/149046.jpg', 'Bloodline', 2, 1, '2016-05-27', '8.2', 'Running', 2015),
(491, 1, '2705', 'http://static.tvmaze.com/uploads/images/medium_portrait/14/36416.jpg', 'Narcos', 2, 2, '2016-09-02', '8.5', 'Running', 2015),
(518, 1, '2175', 'http://static.tvmaze.com/uploads/images/medium_portrait/100/250123.jpg', 'Marvel''s Iron Fist', 1, 1, '2017-03-17', '7.7', 'Running', 2017),
(519, 1, '2761', 'http://static.tvmaze.com/uploads/images/medium_portrait/26/67217.jpg', 'Master of None', 2, 2, '2017-05-12', '8.1', 'Running', 2015),
(528, 1, '6763', 'http://static.tvmaze.com/uploads/images/medium_portrait/88/222149.jpg', 'The OA', 1, 2, '2016-12-16', '8.1', 'Running', 2016),
(523, 1, '312', 'http://static.tvmaze.com/uploads/images/medium_portrait/2/5092.jpg', 'You''re the Worst', 3, 2, '2016-11-16', '7.7', 'Running', 2014),
(527, 1, '11405', 'http://static.tvmaze.com/uploads/images/medium_portrait/87/219868.jpg', 'Dirk Gently''s Holistic Detective Agency', 1, 2, '2016-12-10', '8.9', 'Running', 2016),
(532, 1, '2686', 'http://static.tvmaze.com/uploads/images/medium_portrait/92/232497.jpg', 'Sneaky Pete', 1, 2, '2017-01-12', '8.1', 'Running', 2015),
(524, 1, '29', 'http://static.tvmaze.com/uploads/images/medium_portrait/28/70747.jpg', 'Vikings', 4, 4, '2017-02-01', '9', 'Running', 2013),
(538, 1, '1825', 'http://static.tvmaze.com/uploads/images/medium_portrait/90/226124.jpg', 'The Expanse', 2, 2, '2017-04-19', '8.5', 'Running', 2015),
(536, 1, '6776', 'http://static.tvmaze.com/uploads/images/medium_portrait/40/100883.jpg', 'Flaked', 1, 1, '2016-03-11', '7.3', 'Running', 2016),
(540, 1, '7194', 'http://static.tvmaze.com/uploads/images/medium_portrait/94/237076.jpg', '13 Reasons Why', 1, 1, '2017-03-31', '8.7', 'Running', 2017);

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
