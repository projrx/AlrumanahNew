-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 27, 2020 at 12:25 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;




-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `role`) VALUES
(1, 'hamza56', 'admin990', 'admin'),
(2, 'admin', 'admin9', '');

-- --------------------------------------------------------

--
-- Table structure for table `associates`
--

DROP TABLE IF EXISTS `associates`;
CREATE TABLE IF NOT EXISTS `associates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `slug` varchar(90) NOT NULL,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `associates`
--

INSERT INTO `associates` (`id`, `name`, `slug`, `metak`, `metad`, `cover`, `post`) VALUES
(1, 'Associates', 'associates', 'Careers', 'Careers', '7833dfb1d1a2f282237730db5d5a20211.png', 'post');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  `feat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `catid`, `catslug`, `name`, `img`, `url`, `ordr`, `feat`) VALUES
(1, 14, 'add-brands', 'Default Brand', '704eaecd9e0e1b3dd2ab671863602a0d1.png', '', 1, 1),
(4, 14, 'add-brands', 'Summer Brand', '75bb6a7413a7cf8804e013e47b2e6f541.png', '', 2, 1),
(5, 15, 'new-brand-7', 'JOHN DOE', '2f39d41f5fc3bbf453c4dc672d59d7e81.png', 'www.hamzapervaiz.com', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `brandscat`
--

DROP TABLE IF EXISTS `brandscat`;
CREATE TABLE IF NOT EXISTS `brandscat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brandscat`
--

INSERT INTO `brandscat` (`id`, `name`, `slug`, `img`, `ordr`) VALUES
(14, 'Brands', 'add-brands', '7e69217aed0e94170b03198627fb61491.png', 1),
(15, 'New Brand', 'new-brand-7', '8a44fa650597cfd867a24323431a99f51.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
CREATE TABLE IF NOT EXISTS `careers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `slug` varchar(90) NOT NULL,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `name`, `slug`, `metak`, `metad`, `cover`, `post`) VALUES
(1, 'Careers', 'careers', 'Careers', 'Careers', '7833dfb1d1a2f282237730db5d5a20211.png', 'post');

-- --------------------------------------------------------

--
-- Table structure for table `childpages`
--

DROP TABLE IF EXISTS `childpages`;
CREATE TABLE IF NOT EXISTS `childpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) DEFAULT NULL,
  `name` text,
  `slug` varchar(90) NOT NULL,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childpages`
--

INSERT INTO `childpages` (`id`, `pid`, `pslug`, `name`, `slug`, `metak`, `metad`, `cover`, `post`, `ordr`) VALUES
(17, 2, 'pages', 'Car Player X5556', 'page-car-player-x5556', 'Car Player X5556', 'Car Player X5556', '12cc2438ad0ec779ee4049b013bb38d61.png', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n', 0),
(18, 2, 'pages', 'The Best Restutrants in Lahore', 'page-the-best-restutrants-in-lahore', 'The Best Restutrants in Lahore', 'The Best Restutrants in Lahore', 'fb3a88c9001f3695b9281ea5cd03b5601.png', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n', 1),
(19, 2, 'pages', 'The Most Afforable Displays', 'page-the-most-afforable-displays', 'The Most Afforable Displays', 'The Most Afforable Displays', '15e6b2f5ed3ec1ea4e4fab04b83ebc151.png', '<p>Lorem ipsum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n', 3),
(20, 2, 'pages', 'USB Converting to Type C', 'page-usb-converting-to-type-c', 'USB Converting to Type C', 'USB Converting to Type C', '77a346a04fe5ba9c05e109d3257bcbd41.png', '<p>Consectetur adipiscing elit, sed do eiusmod tempor incididunt, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n', 4);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `ctval` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(22) NOT NULL,
  PRIMARY KEY (`ctval`)
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`ctval`, `city`) VALUES
(1, 'Abdul Hakeem'),
(2, 'Abottabad'),
(3, 'Adda jahan khan'),
(4, 'Adda shaiwala'),
(5, 'Ahmed Pur East'),
(6, 'Ahmedpur Lamma'),
(7, 'Akhora khattak'),
(8, 'Ali chak'),
(9, 'Alipur Chatta'),
(10, 'Allahabad'),
(11, 'Amangarh'),
(12, 'Arifwala'),
(13, 'Attock'),
(14, 'Babarloi'),
(15, 'Babri banda'),
(16, 'Badin'),
(17, 'Bahawal Nagar'),
(18, 'Balakot'),
(19, 'Bannu'),
(20, 'Baroute'),
(21, 'Basirpur'),
(22, 'Basti Shorekot'),
(23, 'Bat khela'),
(24, 'Batang'),
(25, 'Bhai pheru'),
(26, 'Bhakkar'),
(27, 'Bhalwal'),
(28, 'Bhan saeedabad'),
(29, 'Bhawalpur'),
(30, 'Bhera'),
(31, 'Bhikky'),
(32, 'Bhimber'),
(33, 'Bhirya road'),
(34, 'Bhuawana'),
(35, 'Buchay key'),
(36, 'Burewala'),
(37, 'Chacklala'),
(38, 'Chaininda'),
(39, 'Chak 4 b c'),
(40, 'Chak 46'),
(41, 'Chak jamal'),
(42, 'Chak jhumra'),
(43, 'Chak Shahzad'),
(44, 'Chaksawari'),
(45, 'Chakwal'),
(46, 'Charsadda'),
(47, 'Chashma'),
(48, 'Chawinda'),
(49, 'Chichawatni'),
(50, 'Chiniot'),
(51, 'Chishtian'),
(52, 'Chitral'),
(53, 'Chohar jamali'),
(54, 'Choppar hatta'),
(55, 'Chowha saidan shah'),
(56, 'Chowk azam'),
(57, 'Chowk mailta'),
(58, 'Chowk munda'),
(59, 'Chunian'),
(60, 'D.G.Khan'),
(61, 'Dadakhel'),
(62, 'Dadu'),
(63, 'Dadyal Ak'),
(64, 'Daharki'),
(65, 'Dandot'),
(66, 'Dargai'),
(67, 'Darya khan'),
(68, 'Daska'),
(69, 'Daud khel'),
(70, 'Daulatpur'),
(71, 'Deh pathaan'),
(72, 'Depal pur'),
(73, 'Dera Allah Yar'),
(74, 'Dera ismail khan'),
(75, 'Dera murad jamali'),
(76, 'Dera nawab sahib'),
(77, 'Dhatmal'),
(78, 'Dhoun kal'),
(79, 'Digri'),
(80, 'Dijkot'),
(81, 'Dina'),
(82, 'Dinga'),
(83, 'Dir'),
(84, 'Doaaba'),
(85, 'Doltala'),
(86, 'Domeli'),
(87, 'Donga Bonga'),
(88, 'Dudial'),
(89, 'Dunia Pur'),
(90, 'Eminabad'),
(91, 'Esa Khel'),
(92, 'Faisalabad'),
(93, 'Faqirwali'),
(94, 'Farooqabad'),
(95, 'Fateh Jang'),
(96, 'Fateh pur'),
(97, 'Feroz walla'),
(98, 'Feroz watan'),
(99, 'Ferozwatowan'),
(100, 'Fiza got'),
(101, 'Fort Abbass'),
(102, 'Gadoon amazai'),
(103, 'Gaggo mandi'),
(104, 'Gakhar mandi'),
(105, 'Gambat'),
(106, 'Gambet'),
(107, 'Garh maharaja'),
(108, 'Garh more'),
(109, 'Garhi yaseen'),
(110, 'Gari habibullah'),
(111, 'Gari mori'),
(112, 'Gharo'),
(113, 'Ghazi'),
(114, 'Ghotki'),
(115, 'Gilgit'),
(116, 'Gohar ghoushti'),
(117, 'Gojar khan'),
(118, 'Gojra'),
(119, 'Goth Machi'),
(120, 'Goular khel'),
(121, 'Guddu'),
(122, 'Gujar Khan'),
(123, 'Gujranwala'),
(124, 'Gujrat'),
(125, 'Gwadar'),
(126, 'Hafizabad'),
(127, 'Hala'),
(128, 'Hangu'),
(129, 'Harappa'),
(130, 'Hari pur'),
(131, 'Hariwala'),
(132, 'Haroonabad'),
(133, 'Hasilpur'),
(134, 'hamza abdal'),
(135, 'Hattar'),
(136, 'Hattian'),
(137, 'Hattian lawrencepur'),
(138, 'Havali Lakhan'),
(139, 'Hawilian'),
(140, 'Hayatabad'),
(141, 'Hazro'),
(142, 'Head marala'),
(143, 'Hub'),
(144, 'Hub-Balochistan'),
(145, 'Hujra Shah Mukeem'),
(146, 'Hunza'),
(147, 'Hyderabad'),
(148, 'Iskandarabad'),
(149, 'Jacobabad'),
(150, 'Jahaniya'),
(151, 'Jaja abasian'),
(152, 'Jalalpur Jattan'),
(153, 'Jalalpur Pirwala'),
(154, 'Jampur'),
(155, 'Jamrud road'),
(156, 'Jamshoro'),
(157, 'Jan pur'),
(158, 'Jand'),
(159, 'Jandanwala'),
(160, 'Jaranwala'),
(161, 'Jatlaan'),
(162, 'Jatoi'),
(163, 'Jauharabad'),
(164, 'Jehangira'),
(165, 'Jehlum'),
(166, 'Jhal Magsi'),
(167, 'Jhand'),
(168, 'Jhang'),
(169, 'Jhatta bhutta'),
(170, 'Jhudo'),
(171, 'Jin Pur'),
(172, 'K.N. Shah'),
(173, 'Kabirwala'),
(174, 'Kacha khooh'),
(175, 'Kahuta'),
(176, 'Kakul'),
(177, 'Kakur town'),
(178, 'Kala bagh'),
(179, 'Kala shah kaku'),
(180, 'Kalaswala'),
(181, 'Kallar Kahar'),
(182, 'Kallar Saddiyian'),
(183, 'Kallur kot'),
(184, 'Kamalia'),
(185, 'Kamalia musa'),
(186, 'Kamber ali khan'),
(187, 'Kameer'),
(188, 'Kamoke'),
(189, 'Kamra'),
(190, 'Kandh kot'),
(191, 'Kandiaro'),
(192, 'Karak'),
(193, 'Karoor pacca'),
(194, 'Karore lalisan'),
(195, 'Kashmir'),
(196, 'Kashmore'),
(197, 'Kasur'),
(198, 'Kazi ahmed'),
(199, 'Khair Pur Mirs'),
(200, 'Khairpur'),
(201, 'Khan Bela'),
(202, 'Khan qah sharif'),
(203, 'Khandabad'),
(204, 'Khanewal'),
(205, 'Khangarh'),
(206, 'Khanqah dogran'),
(207, 'Khanqah sharif'),
(208, 'Kharian'),
(209, 'Khebar'),
(210, 'Khewra'),
(211, 'Khoski'),
(212, 'Khudian Khas'),
(213, 'Khurian wala'),
(214, 'Khurrianwala'),
(215, 'Khushab'),
(216, 'Khushal kot'),
(217, 'Khuzdar'),
(218, 'Klaske'),
(219, 'Kohat'),
(220, 'Kot addu'),
(221, 'Kot bunglow'),
(222, 'Kot ghulam mohd'),
(223, 'Kot mithan'),
(224, 'Kot Momin'),
(225, 'Kot radha kishan'),
(226, 'Kotla'),
(227, 'Kotla arab ali khan'),
(228, 'Kotla jam'),
(229, 'Kotla Pathan'),
(230, 'Kotly Ak'),
(231, 'Kotly Loharana'),
(232, 'Kotri'),
(233, 'Kumbh'),
(234, 'Kundina'),
(235, 'Kunjah'),
(236, 'Kunri'),
(237, 'Laki marwat'),
(238, 'Lala musa'),
(239, 'Lala rukh'),
(240, 'Laliah'),
(241, 'Lalshanra'),
(242, 'Larkana'),
(243, 'Lasbella'),
(244, 'Lawrence pur'),
(245, 'Layya'),
(246, 'Liaqat Pur'),
(247, 'Lodhran'),
(248, 'Lower Dir'),
(249, 'Ludhan'),
(250, 'Madina'),
(251, 'Makli'),
(252, 'Malakand Agency'),
(253, 'Malikwal'),
(254, 'Mamu kunjan'),
(255, 'Mandi bahauddin'),
(256, 'Mandra'),
(257, 'Manga mandi'),
(258, 'Mangal sada'),
(259, 'Mangi'),
(260, 'Mangla'),
(261, 'Mangowal'),
(262, 'Manoabad'),
(263, 'Mansahra'),
(264, 'Mardan'),
(265, 'Mari indus'),
(266, 'Mastoi'),
(267, 'Matli'),
(268, 'Mehar'),
(269, 'Mehmood kot'),
(270, 'Mehrabpur'),
(271, 'Melsi'),
(272, 'Mian Channu'),
(273, 'Mian Wali'),
(274, 'Minchanaabad'),
(275, 'Mingora'),
(276, 'Mir ali'),
(277, 'Miran shah'),
(278, 'Mirpur A.K.'),
(279, 'Mirpur khas'),
(280, 'Mirpur mathelo'),
(281, 'Mithi'),
(282, 'Mitiari'),
(283, 'Mohen jo daro'),
(284, 'More kunda'),
(285, 'Morgah'),
(286, 'Moro'),
(287, 'Mubarik pur'),
(288, 'Multan'),
(289, 'Muridkay'),
(290, 'Murree'),
(291, 'Musafir khana'),
(292, 'Mustung'),
(293, 'Muzaffar Gargh'),
(294, 'Muzaffarabad'),
(295, 'Nankana sahib'),
(296, 'Narang mandi'),
(297, 'Narowal'),
(298, 'Naseerabad'),
(299, 'Naukot'),
(300, 'Naukundi'),
(301, 'Nawabshah'),
(302, 'New saeedabad'),
(303, 'Nilore'),
(304, 'Noor kot'),
(305, 'Nooriabad'),
(306, 'Noorpur nooranga'),
(307, 'Noshero Feroze'),
(308, 'Noudero'),
(309, 'Nowshera'),
(310, 'Nowshera cantt'),
(311, 'Nowshera Virka'),
(312, 'Okara'),
(313, 'Other'),
(314, 'Padidan'),
(315, 'Pak china fertilizer'),
(316, 'Pak pattan sharif'),
(317, 'Panjan kisan'),
(318, 'Panjgoor'),
(319, 'Panno Aqil'),
(320, 'Panu Aqil'),
(321, 'Pasni'),
(322, 'Pasroor'),
(323, 'Pattoki'),
(324, 'Phagwar'),
(325, 'Phalia'),
(326, 'Phool nagar'),
(327, 'Piaro goth'),
(328, 'Pind Dadan Khan'),
(329, 'Pindi Bhattiya'),
(330, 'Pindi bhohri'),
(331, 'Pindi gheb'),
(332, 'Piplan'),
(333, 'Pir mahal'),
(334, 'Pishin'),
(335, 'Qalandarabad'),
(336, 'Qamber Ali Khan'),
(337, 'Qasba gujrat'),
(338, 'Qazi ahmed'),
(339, 'Qila Deedar Singh'),
(340, 'Quaid Abad'),
(341, 'Quetta'),
(342, 'Rabwah'),
(343, 'Rahim Yar Khan'),
(344, 'Rahwali'),
(345, 'Raiwind'),
(346, 'Rajana'),
(347, 'Rajanpur'),
(348, 'Rangoo'),
(349, 'Ranipur'),
(350, 'Rato Dero'),
(351, 'Rawala kot'),
(352, 'Rawat'),
(353, 'Renala khurd'),
(354, 'Risalpur'),
(355, 'Rohri'),
(356, 'Sadiqabad'),
(357, 'Sagri'),
(358, 'Sahiwal'),
(359, 'Saidu sharif'),
(360, 'Sajawal'),
(361, 'Sakhi Sarwar'),
(362, 'Samanabad'),
(363, 'Sambrial'),
(364, 'Samma satta'),
(365, 'Sanghar'),
(366, 'Sanghi'),
(367, 'Sangla Hills'),
(368, 'Sangote'),
(369, 'Sanjarpur'),
(370, 'Sanjwal'),
(371, 'Sara e naurang'),
(372, 'Sara-E-Alamgir'),
(373, 'Sargodha'),
(374, 'Satiayana'),
(375, 'Sawabi'),
(376, 'Sehar baqlas'),
(377, 'Sehwan Sharif'),
(378, 'Sekhat'),
(379, 'Serai alamgir'),
(380, 'Shadiwal'),
(381, 'Shah kot'),
(382, 'Shahdad kot'),
(383, 'Shahdara'),
(384, 'Shahpur chakar'),
(385, 'Shahpur Saddar'),
(386, 'Sheikhupura'),
(387, 'Shakargarh'),
(388, 'Shamsabad'),
(389, 'Shankiari'),
(390, 'Shedani sharif'),
(391, 'Shehdadpur'),
(392, 'Shemier'),
(394, 'Shikar pur'),
(395, 'Shorekot Cantt'),
(396, 'Shorkot'),
(397, 'Shuja Abad'),
(398, 'Sialkot'),
(399, 'Sibi'),
(400, 'Sihala'),
(401, 'Sikandarabad'),
(402, 'Sillanwali'),
(403, 'Sita road'),
(404, 'Skardu'),
(405, 'Skrand'),
(406, 'Sohawa'),
(407, 'Sohawa district daska'),
(408, 'Sukkur'),
(409, 'Sumandari'),
(410, 'Swat'),
(411, 'Swatmingora'),
(412, 'Takhtbai'),
(413, 'Talagang'),
(414, 'Talamba'),
(415, 'Talhur'),
(416, 'Tandiliyawala'),
(417, 'Tando adam'),
(418, 'Tando Allah Yar'),
(419, 'Tando jam'),
(420, 'Tando Muhammad Khan'),
(421, 'Tank'),
(422, 'Tarbela'),
(423, 'Tarmatan'),
(424, 'Tatlay Wali'),
(425, 'Taunsa sharif'),
(426, 'Taxila'),
(427, 'Tharo shah'),
(428, 'Thatta'),
(429, 'Theing jattan more'),
(430, 'Thull'),
(431, 'Tibba sultanpur'),
(432, 'Toba Tek Singh'),
(433, 'Topi'),
(434, 'Toru'),
(435, 'Tranda Muhammad Pannah'),
(436, 'Turbat'),
(437, 'Ubaro'),
(438, 'Ubauro'),
(439, 'Ugoke'),
(440, 'Ukba'),
(441, 'Umer Kot'),
(442, 'Upper deval'),
(443, 'Usta Muhammad'),
(444, 'Vehari'),
(445, 'Village Sunder'),
(446, 'Wah cantt'),
(447, 'Wahi hassain'),
(448, 'Wahn Bachran'),
(449, 'Wan radha ram'),
(450, 'Warah'),
(451, 'Warburton'),
(452, 'Wazirabad'),
(453, 'Yazman mandi'),
(454, 'Zafarwal'),
(455, 'Zahir Peer'),
(456, 'Lahore'),
(457, 'Karachi'),
(458, 'Islamabad'),
(459, 'Rawalpindi'),
(460, 'Peshawar');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  `feat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `catid`, `catslug`, `name`, `img`, `url`, `ordr`, `feat`) VALUES
(27, 14, 'add-clients', 'hello', '6d92ddfe8519de07c4635c2d5fbbce701.png', 'www.hamzapervaiz.com', 9, 1),
(28, 14, 'add-clients', 'Best in Class', '687311a399f64d866b7413a4d6e543911.png', 'www.hamzapervaiz.com', 3, 1),
(29, 14, 'add-clients', 'Honda', '79dcf7757be1d7f2f727f44960dca2001.png', 'www.lol.123', 1, 1),
(30, 14, 'add-clients', 'Name', 'ae3eb7745aedc87e61c442292ed6a0921.png', '112.qlol.q12', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `clientscat`
--

DROP TABLE IF EXISTS `clientscat`;
CREATE TABLE IF NOT EXISTS `clientscat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientscat`
--

INSERT INTO `clientscat` (`id`, `name`, `slug`, `img`, `ordr`) VALUES
(14, 'Clients', 'add-clients', '1a242f37060cac2e1e56b05369ac96e61.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` text,
  `logo` text,
  `phone` text,
  `email` text,
  `address` text,
  `gmaps` text,
  `cover` text,
  `post` text,
  `fpost` text,
  `facebook` text,
  `twitter` text,
  `insta` text,
  `youtube` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `sitename`, `logo`, `phone`, `email`, `address`, `gmaps`, `cover`, `post`, `fpost`, `facebook`, `twitter`, `insta`, `youtube`) VALUES
(1, 'Company Pvt. Ltd.                   ', '566e36cbb9380bc94171caf431a3fe011.png', '+92 123 456789', 'company@email.com', 'Company, Lahore. (Pakistan).                          ', 'Map Code     ', 'b83d69d563a0d0469c59dbfe1cec621f1.png', '<p>lol</p>\r\n', 'Sample Footer Text  ðŸ˜‰ðŸ¤ž   ', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.instagram.com', 'http://www.youtube.com');

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

DROP TABLE IF EXISTS `field`;
CREATE TABLE IF NOT EXISTS `field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `img` text NOT NULL,
  `desp` text NOT NULL,
  `ordr` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`id`, `name`, `img`, `desp`, `ordr`) VALUES
(3, 'Hydropower  & Dams', 'f6bda39b9e56d33c5b4b3bb208d62fcf1.png', 'Over the last 40 Years, NDC has been engaged in feasibility detailed, design & construction supervision of more than 20,000 MW of Hydropower Projects including worldâ€™s highest RCC dams i.e. 272 m high Diamer Basha Dam and 242 m high Dasu ', 1),
(2, 'River Training & Flood Protection', 'b953c0a05b20bd4cc14eca52045a4e4a1.png', 'NDC has contributed, over the years, in water resources projects for river training, flood protection & control. Projects successfully completed by NDC in this field include Second Flood Sector Project, Flood Protection Works in Sindhâ€¦..', 3),
(4, 'Irrigation', '9f6719a449cccf7f7bf4b75cb4d963a21.png', 'NDC has undertaken detailed design and construction supervision of irrigation projects & rehabilitation of mega irrigation and drainage projects including Sulemanki Barrage, Taunsa Barrage, Sukkur Barrage, Kachhi Canal Project, New Khanki Barrage,  National Drainage Program, Chashma', 2),
(5, 'Irrigation & Hydraulics', 'e7d83d1ed2452a0b619534bc81f7f67e1.png', 'Isst  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 4),
(6, 'River Training & Flood Protetion', '2413c767f30a48f93cd75d3f07f773921.png', ' adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 5),
(7, 'Drainage & Groundwater Resource', '1cc50c07166f99e0216d0b09ada6f9c71.png', '  adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 6),
(8, 'Transportation', 'a82177f5973ad7b5b1022963388b98d81.png', '   adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 7),
(9, 'Urban Infrastructure Development', 'cb9d2bf166244d97b43322e82cd53a001.png', 'adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 8),
(10, 'Physical and Numerical Hydraulic Modeling', '04865cef1631adc07b535b90353b7fd31.png', ' labore et dolore magna aliqua. Ut enim ad minim ', 9),
(11, 'Heading', '0de1b71f2c045a1551d5b9ccef582fd61.png', ' adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 10),
(12, 'Heading', '1d91a12b29ffaf1408643ff4d5667f931.png', ' adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ', 11),
(13, 'Heading', 'c3170bd38420563fa4548f143741ed071.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et ..Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et ..', 12);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallerycat`
--

DROP TABLE IF EXISTS `gallerycat`;
CREATE TABLE IF NOT EXISTS `gallerycat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
CREATE TABLE IF NOT EXISTS `home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post` text NOT NULL,
  `img` text NOT NULL,
  `vid` text,
  `vidpost` text,
  `vidimg` text NOT NULL,
  `msg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `post`, `img`, `vid`, `vidpost`, `vidimg`, `msg`) VALUES
(1, '<h4>&nbsp;</h4>\r\n\r\n<h3>About the Company:</h3>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<p><span style=\"font-size:13px\">Employment respond committed meaningful fight against oppression social challenges rural legal aid governance.&nbsp;</span></p>\r\n\r\n<p>Meaningful work, implementation, process cooperation, campaign inspire.</p>\r\n\r\n<p>Smartly Coded &amp; Maintained.</p>\r\n\r\n<p>Medecins du Monde Jane Addams reduce child mortality challenges Ford Foundation. Diversification shifting landscape advocate pathway to a better life rights international. Assessment.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#c0392b\"><u>View More...</u></span></p>\r\n', '438c269b1ddcc2eab388c85a9b1eb8541.png', '   Custom Video URL   ', '<h2 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:20px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">Shaping the future through</span></span></span></h2>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\">EVEN MORE FEATURE RICH</span></h2>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\">Philanthropy convener livelihoods, initiative end hunger gender rights local. John Lennon storytelling; advocate, altruism impact catalyst.<span style=\"font-size:20px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\"> creative solutions and visionary leadership.</span></span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:20px\"><span style=\"font-family:Tahoma,Geneva,sans-serif\">Testing</span></span></span></p>\r\n', '4709c35999256ec9b2bcb750135058b71.png', '<p>National Development Consultants Pvt. Ltd. Pakistan, is one of the Pakistan&#39;s premier consulting engineering organization, which has attained international standard and is ranked among the Pakistan&#39;s top 5 consulting firms.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  `feat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `catid`, `catslug`, `name`, `img`, `url`, `ordr`, `feat`) VALUES
(28, 15, 'image-gallery1', 'Test', '1f40dcf29c529a095c8b6b873133f9d41.png', 'www.hamzapervaiz.com', 0, 1),
(29, 15, 'image-gallery1', 'Test 2', 'f4b0bf8ae34bc216c301b98cc32c84221.png', 'test.com', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `imagescat`
--

DROP TABLE IF EXISTS `imagescat`;
CREATE TABLE IF NOT EXISTS `imagescat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imagescat`
--

INSERT INTO `imagescat` (`id`, `name`, `slug`, `img`, `ordr`) VALUES
(15, 'Image Gallery1', 'image-gallery1', '7f3e135916f408ffb2256bddbb6f0a111.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `marquee`
--

DROP TABLE IF EXISTS `marquee`;
CREATE TABLE IF NOT EXISTS `marquee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` text,
  `text` text,
  `heading` text,
  `month` text,
  `year` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marquee`
--

INSERT INTO `marquee` (`id`, `img`, `text`, `heading`, `month`, `year`, `url`, `ordr`) VALUES
(9, NULL, 'Testing Event', NULL, '2020', '10', '<p>hello Event Description</p>\r\n', 1),
(10, NULL, 'Another  Testing Event Andorid', NULL, '10', '2020', '<p>Sample Testing Event</p>\r\n', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `slug` varchar(90) NOT NULL,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `slug`, `metak`, `metad`, `cover`, `post`) VALUES
(1, 'News and Events', '', 'Careers', 'Careers', '15562240ad0d6bfc4be7dcd977c92aaf1.png', '<p>post</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `slug` varchar(90) NOT NULL,
  `icon` text,
  `metak` text,
  `metad` text,
  `cover` text,
  `post` text,
  `res` int(11) NOT NULL DEFAULT '0',
  `ordr` int(11) NOT NULL,
  `hide` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `icon`, `metak`, `metad`, `cover`, `post`, `res`, `ordr`, `hide`) VALUES
(1, 'Home', 'home', 'home', 'Site Name', 'Site Name', '16221544bd7db1d546fd5d83855d330b1.png', '<h2>Hello World</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>234</p>\r\n', 1, 2, 0),
(9, 'Contact Us', 'contacts', 'envelope', 'Contacts', 'Contacts', '50328b0848a675537220aa34a602f2041.png', '', 1, 20, 0),
(24, 'Clients', 'clients', 'group', 'clients ', 'clients ', '9de10abac4b0183b85d6c341daf581431.png', '<p>Some Test Posting</p>\r\n', 1, 10, 1),
(5, 'Services', 'services', 'briefcase', 'Services', 'meta description', '', '', 1, 12, 1),
(4, 'Brands', 'brands', 'tags', 'Brands', 'Brands of Products', 'c9a4f94b46d91e28e7a65838354d03451.png', '', 1, 8, 1),
(28, 'About Us', 'page-about', NULL, 'Key', 'Meta Dsesp', 'e9991f4cca0364464bf1139545d483e51.png', '<p>909</p>\r\n', 0, 2, 0),
(7, 'Images Gallery', 'image', 'camera', 'Images Gallery', 'Images Gallery', 'c960d16f3cf63f31067161bff94108f81.png', '', 1, 16, 1),
(3, 'Products', 'products', 'list', 'products', 'products', '', '', 1, 6, 0),
(6, 'News / Events', 'news', 'info-circle', 'News/Events', 'News / Events', '53bb95cfdc5c32765745bcbc6747d9b31.png', '<p>lol this</p>\r\n', 1, 14, 1),
(2, 'Blogs', 'pages', 'book', 'Pages', 'pages', '', '', 1, 4, 0),
(8, 'Videos', 'video', 'video-camera', 'Videos Gallery', 'Videos Gallery', '395a08298e40fdd55b41d04d13cc9ff61.png', '', 1, 18, 1),
(29, 'Request a Product', 'requestpro', 'book', 'Pages', 'pages', '', '', 1, 8, 0),
(30, 'Search', 'searchs', 'book', 'Pages', 'pages', '', '', 1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pimgs`
--

DROP TABLE IF EXISTS `pimgs`;
CREATE TABLE IF NOT EXISTS `pimgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) NOT NULL,
  `img` text,
  `feat` int(11) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pimgs`
--

INSERT INTO `pimgs` (`id`, `pid`, `pslug`, `img`, `feat`, `ordr`) VALUES
(180, 61, 'new-jens', '9846ab56f3cb9ea8e14d922e871cff611.png', 1, 0),
(181, 61, 'new-jens', '3afb5476d8ef57cfc3afaf97430eab611.png', 0, 1),
(189, 63, 'men-dress-pant-1', 'dacf7d919b1d941578a5023043f7d52e1.png', 1, 0),
(182, 61, 'new-jens', '6a1395a64bb5be8865077acc73157c6b1.png', 0, 2),
(174, 59, 'rent-your-ride', 'b0a32c0e306fe73ebde3cb3bc16ea2611.png', 1, 0),
(183, 62, 'del-pro', '8530ea18330e31520dab7c1761b80fa51.png', 1, 0),
(184, 62, 'del-pro', 'a8e061b515e7fff0b3a864c396842cad1.png', 0, 1),
(188, 60, 'boys-jeans-1', '4d7424ea180ceda1869c8435ea703bdd1.png', 0, 1),
(187, 60, 'boys-jeans-1', '99e758b55c729eac5e8be4280cb18f331.png', 1, 0),
(190, 63, 'men-dress-pant-1', 'a236b4042ca32650c40a18cbd1b84ce11.png', 0, 1),
(191, 63, 'men-dress-pant-1', 'fc45f4cbb17d692dd22db537ccb6e8411.png', 0, 2),
(192, 64, 'new-pant-l778-', 'd4971954314c592e478b65db692e04791.png', 1, 0),
(193, 64, 'new-pant-l778-', '99831a44a03403d1522e831085383f161.png', 0, 1),
(194, 65, 'black-night-trouser', '90c3c90dabe6a17e71adb794b979a2a01.png', 1, 0),
(195, 66, 'v-neck-grey', 'ddd47dc2b98560ba2c1f04d58e6042581.png', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `mslug` varchar(40) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) DEFAULT NULL,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) NOT NULL DEFAULT '0',
  `saleprice` int(11) DEFAULT NULL,
  `sizesm` int(11) NOT NULL DEFAULT '0',
  `sizemd` int(11) NOT NULL DEFAULT '0',
  `sizelg` int(11) NOT NULL DEFAULT '0',
  `metak` text,
  `metad` text,
  `desp` text,
  `img1` text,
  `img2` text,
  `img3` text,
  `img4` text,
  `img5` int(11) DEFAULT NULL,
  `feat` text,
  `ordr` int(11) DEFAULT NULL,
  `pending` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `mid`, `mslug`, `pid`, `pslug`, `name`, `slug`, `brand`, `price`, `sale`, `saleprice`, `sizesm`, `sizemd`, `sizelg`, `metak`, `metad`, `desp`, `img1`, `img2`, `img3`, `img4`, `img5`, `feat`, `ordr`, `pending`) VALUES
(73, 35, 'kitchen_5', 24, 'oven_89', 'Dawlance â€“ Built-In-Oven (208120-B)', 'dawlance-built-in-oven-208120-b--79', 1, 0, 0, 0, 0, 0, 0, '', '', '<p>Specifications:, 72L Capacity, Multifunction Oven With 8 Functions, Electric Grill, Booster Function (Fast Preheat), Black Glass Control ...</p>\r\n\r\n<p>* Check website for latest pricing and availability.&nbsp;Images may be subject to copyright.</p>\r\n', '82abc14f549d91c2c5b89f61c52e19bf1.png', NULL, NULL, NULL, NULL, '1', 2, 0),
(74, 34, 'home-gardens_53', 21, 'sofa_35', 'BoConcept Indivi sofa', 'boconcept-indivi-sofa-48', 1, 0, 0, 0, 0, 0, 0, '', '', '<p>Rial3,984.00 SAR*&middot;Brand: BoConcept, Seasons pass and trends come and go, but the modern elegance of the Indivi sofa is timeless. With low armrests that provide a grounded and ...</p>\r\n\r\n<p>* Check website for latest pricing and availability.&nbsp;Images may be subject to copyright.</p>\r\n', '5e027bdfce8b48fd192e97026e9ce5f41.png', NULL, NULL, NULL, NULL, '0', 1, 0),
(72, 30, 'computers-electronics_29', 16, 'laptops_29', 'Dell XPS 13', 'name-30', 1, 0, 0, 0, 0, 0, 0, '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n\r\n<ul>\r\n	<li>Brand: Store name: iShopping.Pk, phone: +92 21-111 222 202 or Whatsapp us: +923111222202. Monday - Saturday, 9:30AM - 6:30PM PST, address: Office 506, Continental Trade Centre, (CTC), Block 8, , Clifton, Karachi - 74200 Pakistan.</li>\r\n	<li>Processor: Intel Core i7-10510U QuadCore Processor (1.3 GHz) &bull; Ram: 16GB &bull; Hard Drive: 512GB SSD &bull; Display: 13.3&quot; FHD InfinityEdge Display</li>\r\n</ul>\r\n', '5bda91b1f0df28ca1086ccce5b5740731.png', 'bfe8364f3f88a01cc4b90530ed2be2011.png', NULL, NULL, NULL, '0', 1, 0),
(75, 36, 'health-beauty_6', 27, 'face-masks_74', 'IIR Surgical Face Masks', 'iir-surgical-face-masks-81', 1, 0, 0, 0, 0, 0, 0, '', '', '<p>&pound;45.00 GBP*&middot;&nbsp;In stock&middot;Brand: Martek Lifecare Sold as a box of 100 masks, 3 PLY antivirus and bacteria protection mask, Type IIR, CE Marked, EN 14683 Standard</p>\r\n\r\n<p>* Check website for latest pricing and availability.&nbsp;Images may be subject to copyright.</p>\r\n', 'e837f4ef77cb2c9156c1c6f32e5124bc1.png', NULL, NULL, NULL, NULL, '1', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `productcat`
--

DROP TABLE IF EXISTS `productcat`;
CREATE TABLE IF NOT EXISTS `productcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(40) DEFAULT NULL,
  `img` text,
  `desp` text,
  `feat` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productcat`
--

INSERT INTO `productcat` (`id`, `name`, `slug`, `img`, `desp`, `feat`, `ordr`) VALUES
(30, 'Computers & Electronics', 'computers-electronics_29', 'desktop', NULL, '1', 1),
(35, 'Kitchen', 'kitchen_5', 'cutlery', NULL, '0', 3),
(34, 'Home & Gardens', 'home-gardens_53', 'home', NULL, '1', 2),
(36, 'Health & Beauty', 'health-beauty_6', 'heart', NULL, '1', 4);

-- --------------------------------------------------------

--
-- Table structure for table `productsubcat`
--

DROP TABLE IF EXISTS `productsubcat`;
CREATE TABLE IF NOT EXISTS `productsubcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `pslug` varchar(90) NOT NULL,
  `name` text NOT NULL,
  `slug` varchar(40) NOT NULL,
  `img` text NOT NULL,
  `desp` text,
  `feat` text,
  `ordr` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productsubcat`
--

INSERT INTO `productsubcat` (`id`, `pid`, `pslug`, `name`, `slug`, `img`, `desp`, `feat`, `ordr`) VALUES
(16, 30, 'computers-electronics_29', 'Laptops', 'laptops_29', 'd8fc6214974932fa8f88fe468fa8e4a31.png', NULL, NULL, 2),
(15, 30, 'computers-electronics_29', 'Cell Phones Players', 'cell-phones-players_68', '21158fb8cb6fd3ff07cc2d29d38a608a1.png', NULL, NULL, 1),
(14, 30, 'computers-electronics_29', 'Car Players', 'car-players_41', '774d01196c5232e19d9d65b9aee775d41.png', NULL, NULL, 0),
(17, 30, 'computers-electronics_29', 'Mobile Phones', 'mobile-phones_73', '91f010b7fa664bd55aeb5a853950e61d1.png', NULL, NULL, 3),
(18, 34, 'home-gardens_53', 'Clothes', 'clothes_99', '6ea490f4f5a6ca3d2a165df63e0617231.png', '', NULL, 0),
(19, 34, 'home-gardens_53', 'Home Tubs', 'home-tubs_38', 'f916ca5cf5f34b31f308088e2a3f02e51.png', NULL, NULL, 1),
(20, 34, 'home-gardens_53', 'Mattress', 'mattress_27', 'a6f3b50f8993807c5aa5dc85bea6aaff1.png', NULL, NULL, 3),
(21, 34, 'home-gardens_53', 'Sofa', 'sofa_35', 'b6218b61a09b427339e4248b96c67c7a1.png', NULL, NULL, 4),
(22, 35, 'kitchen_5', 'Blenders', 'blenders_42', '0f84724779a37c31dab93d1c72982e1a1.png', NULL, NULL, 0),
(23, 35, 'kitchen_5', 'Cutlery', 'cutlery_52', '3b332a58e704fb4bacdc95c71fcd0b691.png', NULL, NULL, 2),
(24, 35, 'kitchen_5', 'Oven', 'oven_89', '3bd66083746b84e33363a80516fafd471.png', NULL, NULL, 1),
(26, 35, 'kitchen_5', 'Dish Washers', 'dish-washers_19', 'c46d158d230c1f4a0dfdfba9c08848831.png', NULL, NULL, 4),
(27, 36, 'health-beauty_6', 'Face Masks', 'face-masks_74', '87cfcbd6530a853535afcc592309f45e1.png', NULL, NULL, 0),
(28, 36, 'health-beauty_6', 'Moisturizers ', 'moisturizers-_18', '1c348a649e7bb33a82d8a2a9b2b706f01.png', NULL, NULL, 3),
(29, 36, 'health-beauty_6', 'Toothpaste', 'toothpaste_21', '4cead6415850ed4d1d4f17d6b60acb461.png', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actid` int(11) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` text,
  `datec` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `actid`, `proid`, `rating`, `review`, `datec`) VALUES
(6, 8, 72, 4, 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna.', '2020-06-26 13:48:58'),
(7, 8, 73, 2, 'ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labo.', '2020-06-27 03:00:44'),
(8, 8, 75, 4, 'Capacity, Multifunction Oven With 8 Functions, Electric Grill', '2020-06-27 03:03:11'),
(9, 9, 72, 5, 'Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante.', '2020-06-27 03:46:41'),
(21, 9, 74, 5, 'Seasons pass and trends come and go, but the modern elegance of the Indivi sofa is timeless. With low armrests that provide a grounded and ', '2020-06-27 06:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `mslug` varchar(40) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) DEFAULT NULL,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) NOT NULL DEFAULT '0',
  `saleprice` int(11) DEFAULT NULL,
  `sizesm` int(11) NOT NULL DEFAULT '0',
  `sizemd` int(11) NOT NULL DEFAULT '0',
  `sizelg` int(11) NOT NULL DEFAULT '0',
  `metak` text,
  `metad` text,
  `desp` text,
  `img1` text,
  `img2` text,
  `img3` text,
  `img4` text,
  `img5` int(11) DEFAULT NULL,
  `feat` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `mid`, `mslug`, `pid`, `pslug`, `name`, `slug`, `brand`, `price`, `sale`, `saleprice`, `sizesm`, `sizemd`, `sizelg`, `metak`, `metad`, `desp`, `img1`, `img2`, `img3`, `img4`, `img5`, `feat`, `ordr`) VALUES
(1, 13, 'name_26', 1, 'boys_82', 'Name', 'name-68', NULL, 0, 0, NULL, 0, 0, 0, '', '', '<p>kolol</p>\r\n', 'def4a8aaaeb168c681b7d67f50c08cd41.png', '4b6a89ac3e2f94d910066711a622b9a61.png', 'a0cc7656545aa5d75207b6583fbadce21.png', NULL, NULL, '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `servicecat`
--

DROP TABLE IF EXISTS `servicecat`;
CREATE TABLE IF NOT EXISTS `servicecat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(40) DEFAULT NULL,
  `img` text,
  `desp` text,
  `feat` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicecat`
--

INSERT INTO `servicecat` (`id`, `name`, `slug`, `img`, `desp`, `feat`, `ordr`) VALUES
(10, 'Our Services', 'add-services', '15b8e40d18212e11c814e9c702ae5dd61.png', '<p>lol</p>\r\n', NULL, 0),
(13, 'Name', 'name_26', 'ed742f3db91f74b9674df140a425c81f1.png', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `servicesubcat`
--

DROP TABLE IF EXISTS `servicesubcat`;
CREATE TABLE IF NOT EXISTS `servicesubcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `pslug` varchar(90) NOT NULL,
  `name` text NOT NULL,
  `slug` varchar(40) NOT NULL,
  `img` text NOT NULL,
  `desp` text,
  `feat` text,
  `ordr` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `servicesubcat`
--

INSERT INTO `servicesubcat` (`id`, `pid`, `pslug`, `name`, `slug`, `img`, `desp`, `feat`, `ordr`) VALUES
(1, 10, 'add-services', 'Boys', 'boys_82', 'd81616c99aefa736aaffe341b693d8201.png', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
CREATE TABLE IF NOT EXISTS `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actid` varchar(40) NOT NULL,
  `pid` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  `size` varchar(40) DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `totalprice` int(11) DEFAULT '0',
  `bfname` text,
  `blname` text,
  `bcompany` text,
  `baddress1` text,
  `baddress2` text,
  `bcity` text,
  `bcountry` text,
  `bmobile` text,
  `bemail` text,
  `spostal` text,
  `bpostal` text,
  `sfname` text,
  `slname` text,
  `scompany` text,
  `saddress1` text,
  `saddress2` text,
  `scity` text,
  `scountry` text,
  `smobile` text,
  `semail` text,
  `inst` text,
  `status` text,
  `datec` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pdate` date DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `ddate` date DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  `expreason` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `actid`, `pid`, `qty`, `size`, `price`, `totalprice`, `bfname`, `blname`, `bcompany`, `baddress1`, `baddress2`, `bcity`, `bcountry`, `bmobile`, `bemail`, `spostal`, `bpostal`, `sfname`, `slname`, `scompany`, `saddress1`, `saddress2`, `scity`, `scountry`, `smobile`, `semail`, `inst`, `status`, `datec`, `pdate`, `edate`, `ddate`, `expdate`, `expreason`) VALUES
(21, '4', 71, 6, 'S', 9000, 0, 'HAMZA', 'PERVAIZ', NULL, 'House # 604, C Block,', 'Al-Rehman Garden Phase 2,', 'Lahore', NULL, '03204157040', 'hamzapervaiz5@gmail.com', '54000', '54000', 'HAMZA', 'PERVAIZ', NULL, 'House # 604, C Block,', 'Al-Rehman Garden Phase 2,', 'Lahore', NULL, '03204157040', 'hamzapervaiz5@gmail.com', 'Special', 'delivered', '2020-06-25 12:55:36', '2020-06-25', '2020-06-25', '2020-06-25', NULL, NULL),
(22, '4', 70, 3, '', 2000, 0, 'HAMZA', 'PERVAIZ', NULL, 'House # 604, C Block,', 'Al-Rehman Garden Phase 2,', 'Lahore', NULL, '03204157040', 'hamzapervaiz5@gmail.com', '54000', '54000', 'HAMZA', 'PERVAIZ', NULL, 'House # 604, C Block,', 'Al-Rehman Garden Phase 2,', 'Lahore', NULL, '03204157040', 'hamzapervaiz5@gmail.com', 'Special', 'pending', '2020-06-25 13:05:57', '2020-06-25', NULL, NULL, NULL, NULL),
(23, '', 71, 1, 'S', 9000, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cart', '2020-06-25 13:26:06', NULL, NULL, NULL, NULL, NULL),
(24, '7', 70, 3, '', 2000, 0, 'HAMZA', 'PERVAIZ', NULL, 'Al Rehman Garden P II', 'Al-Rehman Garden Phase 2,', 'Lahore', NULL, '03494965879', 'hamzapervaiz5@gmail.com', '54000', '54000', 'HAMZA', 'PERVAIZ', NULL, 'Al Rehman Garden P II', 'Al-Rehman Garden Phase 2,', 'Lahore', NULL, '03494965879', 'hamzapervaiz5@gmail.com', 'ioioioio', 'delivered', '2020-06-25 13:31:34', '2020-06-25', '2020-06-25', '2020-06-25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simgs`
--

DROP TABLE IF EXISTS `simgs`;
CREATE TABLE IF NOT EXISTS `simgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `pslug` varchar(90) NOT NULL,
  `img` text,
  `feat` int(11) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simgs`
--

INSERT INTO `simgs` (`id`, `pid`, `pslug`, `img`, `feat`, `ordr`) VALUES
(122, 28, 'not-show', '4d1cc98ce7e783223f020ddc8dea93f71.png', 0, 0),
(111, 25, 'another-serveice', '426f967cc6d0fcb2254462a854d8b35a1.png', 1, 0),
(112, 25, 'another-serveice', 'e2a324e7a423c441be0c793d691f49d31.png', 0, 2),
(113, 26, 'more', '124513a35bcca744e2d12a9334487da61.png', 1, 0),
(114, 27, 'must-show-on-home', '2d9cec06d36bf1521df9c2ef0a05b2671.png', 1, 0),
(121, 28, 'not-show', '6339fd77e1059c684c8feb109aa5676a1.png', 1, 0),
(116, 36, 'pro-20', '8493c168a080a9aa42323db7aef5fe251.png', 1, 0),
(118, 39, 'new-product-10', 'f90bc793c85d11511f50ca0be2efce5c1.png', 1, 0),
(119, 40, 'slud', 'a55ffefe04018b2f05720bb1d1d95f8b1.png', 1, 0),
(123, 24, 'new-services', 'd62f57f2c4c820c616bf93418190dec21.png', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `img`, `ordr`) VALUES
(28, 'SEARCH PRODUCTS AND SERVICES', '3fadd96a8bf22790a0ca30f660bc67c31.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `img` text,
  `bfname` text,
  `blname` text,
  `bcompany` text,
  `baddress1` text,
  `baddress2` text,
  `bcity` text,
  `bcountry` text,
  `bmobile` text,
  `bemail` text,
  `spostal` text,
  `bpostal` text,
  `sfname` text,
  `slname` text,
  `scompany` text,
  `saddress1` text,
  `saddress2` text,
  `scity` text,
  `scountry` text,
  `smobile` text,
  `semail` text,
  `datec` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `block` int(11) NOT NULL DEFAULT '0',
  `blockres` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `img`, `bfname`, `blname`, `bcompany`, `baddress1`, `baddress2`, `bcity`, `bcountry`, `bmobile`, `bemail`, `spostal`, `bpostal`, `sfname`, `slname`, `scompany`, `saddress1`, `saddress2`, `scity`, `scountry`, `smobile`, `semail`, `datec`, `block`, `blockres`) VALUES
(8, 'HAMZA PERVAIZ1', 'hamzapervaiz5@gmail.com', '1234', 'e026c87132fc14ecd5983702fffae66b1.png', '', '', NULL, '', '', 'Abdul Hakeem', NULL, '', '', '', '', '', '', NULL, '', '', 'Abdul Hakeem', NULL, '', '', '2020-06-26 08:15:57', 0, NULL),
(9, 'Mehar Hamza', 'mehar@hamza.com', '1234', 'e2d8852b6b6eaf37cc6bb4435cf91cd31.png', NULL, NULL, NULL, NULL, NULL, 'Abdul Hakeem', NULL, '123456879', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-27 03:22:23', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL,
  `catslug` varchar(90) DEFAULT NULL,
  `name` text,
  `img` text,
  `url` text,
  `ordr` int(11) DEFAULT NULL,
  `feat` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `catid`, `catslug`, `name`, `img`, `url`, `ordr`, `feat`) VALUES
(32, 16, 'vid-cat1', 'Boys', 'e614836c77b93b0f23c6672e214d355e1.png', 'www.hamzapervaiz.com', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `videoscat`
--

DROP TABLE IF EXISTS `videoscat`;
CREATE TABLE IF NOT EXISTS `videoscat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(90) DEFAULT NULL,
  `img` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videoscat`
--

INSERT INTO `videoscat` (`id`, `name`, `slug`, `img`, `ordr`) VALUES
(16, 'Vid Cat1', 'vid-cat1', 'a053355994c8b15ae79accf7e3b249281.png', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
