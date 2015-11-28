-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2015 at 01:08 AM
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=436 ;

--
-- Dumping data for table `showtv`
--

INSERT INTO `showtv` (`id`, `id_user`, `url`, `picture`, `name`, `current_season`, `desired_season`, `date_season_final`) VALUES
(376, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=35276', 'http://images.tvrage.com/shows/36/35276.jpg', 'Fargo', 2, 2, '1970-01-01'),
(365, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=18967', 'http://images.tvrage.com/shows/19/18967.jpg', 'The Mentalist', 7, 7, '2015-02-18'),
(330, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=25652', 'http://images.tvrage.com/shows/26/25652.jpg', 'Strike Back', 5, 5, '1970-01-01'),
(331, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=31369', 'http://images.tvrage.com/shows/32/31369.jpg', 'True Detective', 2, 2, '1970-01-01'),
(322, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=31286', 'http://images.tvrage.com/shows/32/31286.jpg', 'The Newsroom (2012)', 3, 4, '2014-12-14'),
(321, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=30069', 'http://images.tvrage.com/shows/31/30069.jpg', 'Rectify', 3, 3, '1970-01-01'),
(320, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=32276', 'http://images.tvrage.com/shows/33/32276.jpg', 'Utopia', 2, 2, '2014-08-12'),
(342, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=6061', 'http://images.tvrage.com/shows/7/6061.jpg', 'The Office (US)', 9, 1, '1970-01-01'),
(308, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=30449', 'http://images.tvrage.com/shows/31/30449.jpg', 'The Americans (2013)', 3, 3, '2015-03-25'),
(306, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=23472', 'http://images.tvrage.com/shows/24/23472.jpg', 'Justified', 6, 3, '2015-03-24'),
(307, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=21686', 'http://images.tvrage.com/shows/22/21686.jpg', 'Parks and Recreation', 7, 2, '2015-02-24'),
(305, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=32725', 'http://images.tvrage.com/shows/33/32725.jpg', 'Black Sails', 2, 2, '2015-03-28'),
(319, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=31672', 'http://images.tvrage.com/shows/32/31672.jpg', 'The Following', 3, 3, '2015-03-09'),
(432, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=45148', 'http://images.tvrage.com/shows/46/45148.jpg', 'Kingdom (2014)', 1, 1, '2014-12-10'),
(430, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=37307', 'http://images.tvrage.com/shows/38/37307.jpg', 'How To Get Away With Murder', 1, 1, '2015-02-26'),
(299, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=32950', 'http://images.tvrage.com/shows/33/32950.jpg', 'Orange is the New Black', 3, 3, '1970-01-01'),
(298, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=28776', 'http://images.tvrage.com/shows/29/28776.jpg', 'American Horror Story', 5, 4, '1970-01-01'),
(297, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=30909', 'http://images.tvrage.com/shows/31/30909.png', 'Hannibal', 2, 3, '2014-05-23'),
(312, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=23433', 'http://images.tvrage.com/shows/24/23433.jpg', 'Sherlock', 4, 4, '1970-01-01'),
(310, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=27822', 'http://images.tvrage.com/shows/28/27822.png', 'House of Cards (2013)', 3, 3, '2015-02-27'),
(431, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=41419', 'http://images.tvrage.com/shows/42/41419.jpg', 'Ascension', 1, 1, '2014-12-17'),
(296, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=25522', 'http://images.tvrage.com/shows/26/25522.jpg', 'Luther', 4, 4, '1970-01-01'),
(433, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=41038', 'http://images.tvrage.com/shows/42/41038.jpg', 'Forever (2014)', 1, 1, '2015-02-24'),
(317, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=23354', 'http://images.tvrage.com/shows/24/23354.jpg', 'Archer (2009)', 6, 3, '2015-03-05'),
(370, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=34770', 'http://images.tvrage.com/shows/35/34770.jpg', 'The 100', 2, 2, '2015-03-11'),
(349, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=30823', 'http://images.tvrage.com/shows/31/30823.jpg', 'Banshee', 3, 3, '2015-02-27'),
(337, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=24493', 'http://images.tvrage.com/shows/25/24493.png', 'Game of Thrones', 5, 5, '2015-04-12'),
(347, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=31136', 'http://images.tvrage.com/shows/32/31136.jpg', 'Vikings', 3, 3, '2015-03-26'),
(346, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=27518', 'http://images.tvrage.com/shows/28/27518.jpg', 'Suits', 5, 4, '1970-01-01'),
(348, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=24507', 'http://images.tvrage.com/shows/25/24507.jpg', 'Braquo', 3, 4, '2014-03-03'),
(362, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=25056', 'http://images.tvrage.com/shows/26/25056.png', 'The Walking Dead', 5, 5, '2015-03-01'),
(366, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=25117', 'http://images.tvrage.com/shows/26/25117.jpg', 'Shameless (US)', 5, 5, '2015-04-05'),
(367, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=34791', 'http://images.tvrage.com/shows/35/34791.jpg', 'The Musketeers', 3, 2, '1970-01-01'),
(368, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=29336', 'http://images.tvrage.com/shows/30/29336.jpg', 'Cosmos: A Space-Time Odyssey', 1, 1, '2014-06-08'),
(407, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=36202', 'http://images.tvrage.com/shows/37/36202.jpg', 'Outlander', 1, 1, '2015-05-23'),
(386, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=3267', 'http://images.tvrage.com/shows/4/3267.jpg', 'Deadwood', 3, 1, '2006-08-27'),
(425, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=33381', 'http://images.tvrage.com/shows/34/33381.jpg', 'Rick and Morty', 2, 1, '1970-01-01'),
(372, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=29118', 'http://images.tvrage.com/shows/30/29118.jpg', 'Impractical Jokers', 4, 4, '2015-02-19'),
(377, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=35774', 'http://images.tvrage.com/shows/36/35774.png', 'Brooklyn Nine-Nine', 2, 2, '2015-03-08'),
(384, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=34172', 'http://images.tvrage.com/shows/35/34172.jpg', 'Penny Dreadful', 2, 2, '2015-05-03'),
(435, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=34118', 'http://images.tvrage.com/shows/35/34118.jpg', 'Broadchurch', 2, 1, '2015-02-23'),
(390, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=36033', 'http://images.tvrage.com/shows/37/36033.jpg', 'The Knick', 1, 1, '2014-10-17'),
(409, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=18174', 'http://images.tvrage.com/shows/19/18174.jpg', 'Sons of Anarchy', 7, 6, '2014-12-09'),
(428, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=37780', 'http://images.tvrage.com/shows/38/37780.jpg', 'Better Call Saul', 1, 1, '2015-03-02'),
(396, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=36939', 'http://images.tvrage.com/shows/37/36939.jpg', 'The Flash (2014)', 2, 1, '1970-01-01'),
(399, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=37240', 'http://images.tvrage.com/shows/38/37240.jpg', 'Peaky Blinders', 2, 3, '2014-11-06'),
(422, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=30348', 'http://images.tvrage.com/shows/31/30348.jpg', 'Black Mirror', 3, 3, '2014-12-16'),
(429, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=38162', 'http://images.tvrage.com/shows/39/38162.jpg', 'The Last Man On Earth', 1, 1, '2015-03-15'),
(403, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=30309', 'http://images.tvrage.com/shows/31/30309.jpg', 'Ray Donovan', 2, 2, '2014-09-28'),
(404, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=41064', 'http://images.tvrage.com/shows/42/41064.jpg', 'Heroes Reborn', 1, 1, '1970-01-01'),
(405, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=41213', 'http://images.tvrage.com/shows/42/41213.jpg', 'Stalker', 1, 1, '2015-02-18'),
(427, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=33283', 'http://images.tvrage.com/shows/34/33283.jpg', 'Marco Polo (2014)', 2, 2, '1970-01-01'),
(434, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=2649', 'http://images.tvrage.com/shows/3/2649.jpg', 'Arrested Development', 5, 1, '1970-01-01'),
(413, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=37307', 'http://images.tvrage.com/shows/38/37307.jpg', 'How To Get Away With Murder', 1, 1, '2015-02-26'),
(417, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=38109', 'http://images.tvrage.com/shows/39/38109.jpg', 'Constantine', 1, 1, '2015-02-13'),
(414, 1, 'http://services.tvrage.com/feeds/full_show_info.php?sid=38049', 'http://images.tvrage.com/shows/39/38049.jpg', 'Gotham', 2, 1, '1970-01-01');

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
