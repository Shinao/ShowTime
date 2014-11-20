-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2014 at 10:15 AM
-- Server version: 5.6.15-log
-- PHP Version: 5.4.24

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
  `url` varchar(1000) NOT NULL,
  `picture` varchar(1000) NOT NULL,
  `name` varchar(100) NOT NULL,
  `current_season` int(4) NOT NULL,
  `desired_season` int(4) NOT NULL,
  `date_season_final` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=387 ;

--
-- Dumping data for table `showtv`
--

INSERT INTO `showtv` (`id`, `id_user`, `url`, `picture`, `name`, `current_season`, `desired_season`, `date_season_final`) VALUES
(376, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=35276', 'http://images.tvrage.com/shows/36/35276.jpg', 'Fargo', 1, 1, '2014-06-17'),
(365, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=18967', 'http://images.tvrage.com/shows/19/18967.jpg', 'The Mentalist', 6, 6, '2014-05-18'),
(330, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=25652', 'http://images.tvrage.com/shows/26/25652.jpg', 'Strike Back', 5, 5, '1970-01-01'),
(331, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=31369', 'http://images.tvrage.com/shows/32/31369.jpg', 'True Detective', 1, 2, '2014-03-09'),
(322, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=31286', 'http://images.tvrage.com/shows/32/31286.jpg', 'The Newsroom (2012)', 3, 3, '2014-07-13'),
(321, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=30069', 'http://images.tvrage.com/shows/31/30069.jpg', 'Rectify', 2, 2, '2014-06-26'),
(320, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=32276', 'http://images.tvrage.com/shows/33/32276.jpg', 'Utopia', 1, 2, '2013-02-19'),
(342, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=6061', 'http://images.tvrage.com/shows/7/6061.jpg', 'The Office (US)', 9, 1, '1970-01-01'),
(308, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=30449', 'http://images.tvrage.com/shows/31/30449.jpg', 'The Americans (2013)', 2, 3, '2014-05-21'),
(306, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=23472', 'http://images.tvrage.com/shows/24/23472.jpg', 'Justified', 5, 1, '2014-04-08'),
(307, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=21686', 'http://images.tvrage.com/shows/22/21686.jpg', 'Parks and Recreation', 6, 2, '2014-04-24'),
(305, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=32725', 'http://images.tvrage.com/shows/33/32725.jpg', 'Black Sails', 2, 2, '1970-01-01'),
(319, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=31672', 'http://images.tvrage.com/shows/32/31672.jpg', 'The Following', 3, 3, '1970-01-01'),
(374, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=32656', 'http://images.tvrage.com/shows/33/32656.jpg', 'Marvel''s Agents of S.H.I.E.L.D.', 2, 1, '1970-01-01'),
(301, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=22622', 'http://images.tvrage.com/shows/23/22622.png', 'Modern Family', 5, 1, '2014-05-21'),
(299, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=32950', 'http://images.tvrage.com/shows/33/32950.jpg', 'Orange is the New Black', 2, 2, '2014-06-06'),
(298, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=28776', 'http://images.tvrage.com/shows/29/28776.jpg', 'American Horror Story', 4, 4, '1970-01-01'),
(297, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=30909', 'http://images.tvrage.com/shows/31/30909.png', 'Hannibal', 2, 3, '2014-05-23'),
(312, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=23433', 'http://images.tvrage.com/shows/24/23433.jpg', 'Sherlock', 3, 3, '2014-01-12'),
(310, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=27822', 'http://images.tvrage.com/shows/28/27822.png', 'House of Cards (2013)', 3, 3, '1970-01-01'),
(313, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=30715', 'http://images.tvrage.com/shows/31/30715.jpg', 'Arrow', 3, 2, '1970-01-01'),
(296, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=25522', 'http://images.tvrage.com/shows/26/25522.jpg', 'Luther', 3, 4, '2013-07-23'),
(291, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=35048', 'http://images.tvrage.com/shows/36/35048.jpg', 'The Blacklist', 2, 1, '2014-09-22'),
(317, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=23354', 'http://images.tvrage.com/shows/24/23354.jpg', 'Archer (2009)', 6, 3, '1970-01-01'),
(370, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=34770', 'http://images.tvrage.com/shows/35/34770.jpg', 'The 100', 1, 1, '2014-06-11'),
(382, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=33293', 'http://images.tvrage.com/shows/34/33293.jpg', 'Orphan Black', 2, 2, '2014-06-14'),
(349, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=30823', 'http://images.tvrage.com/shows/31/30823.jpg', 'Banshee', 3, 3, '1970-01-01'),
(337, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=24493', 'http://images.tvrage.com/shows/25/24493.png', 'Game of Thrones', 4, 4, '2014-06-15'),
(347, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=31136', 'http://images.tvrage.com/shows/32/31136.jpg', 'Vikings', 3, 3, '1970-01-01'),
(346, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=27518', 'http://images.tvrage.com/shows/28/27518.jpg', 'Suits', 4, 4, '2014-06-25'),
(348, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=24507', 'http://images.tvrage.com/shows/25/24507.jpg', 'Braquo', 3, 4, '2014-03-03'),
(362, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=25056', 'http://images.tvrage.com/shows/26/25056.png', 'The Walking Dead', 5, 5, '1970-01-01'),
(366, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=25117', 'http://images.tvrage.com/shows/26/25117.jpg', 'Shameless (US)', 5, 4, '2015-01-11'),
(367, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=34791', 'http://images.tvrage.com/shows/35/34791.jpg', 'The Musketeers', 1, 2, '2014-03-30'),
(368, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=29336', 'http://images.tvrage.com/shows/30/29336.jpg', 'Cosmos: A Space-Time Odyssey', 1, 1, '2014-06-08'),
(369, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=34327', 'http://images.tvrage.com/shows/35/34327.jpg', 'Believe', 1, 1, '2014-06-15'),
(386, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=3267', 'http://images.tvrage.com/shows/4/3267.jpg', 'Deadwood', 3, 1, '2006-08-27'),
(375, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=33759', 'http://images.tvrage.com/shows/34/33759.jpg', 'Silicon Valley', 1, 1, '2014-06-01'),
(372, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=29118', 'http://images.tvrage.com/shows/30/29118.jpg', 'Impractical Jokers', 3, 3, '2014-05-22'),
(377, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=35774', 'http://images.tvrage.com/shows/36/35774.png', 'Brooklyn Nine-Nine', 2, 1, '1970-01-01'),
(384, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=34172', 'http://images.tvrage.com/shows/35/34172.jpg', 'Penny Dreadful', 1, 1, '2014-06-29'),
(383, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=36364', 'http://images.tvrage.com/shows/37/36364.jpg', 'The Wrong Mans', 2, 1, '1970-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'rmonnerat.pro@gmail.com', 'showtime');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
