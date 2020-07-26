-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 26, 2020 at 01:20 PM
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

--
-- Database: `alrumanahnew`
--

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
-- Table structure for table `blogcat`
--

DROP TABLE IF EXISTS `blogcat`;
CREATE TABLE IF NOT EXISTS `blogcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `slug` varchar(40) DEFAULT NULL,
  `img` text,
  `desp` text,
  `feat` text,
  `ordr` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogcat`
--

INSERT INTO `blogcat` (`id`, `name`, `slug`, `img`, `desp`, `feat`, `ordr`) VALUES
(30, 'Blogs Cat 2', 'computers-electronics_29', '6abd0eeba85ed0ccd247e92c181e5ad31.png', NULL, '1', 2),
(34, 'BlogsMain Category', 'home-gardens_53', '13095237f596e64d8265c0c68c2963231.png', NULL, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `pid`, `pslug`, `name`, `slug`, `metak`, `metad`, `cover`, `post`, `ordr`) VALUES
(25, 34, 'home-gardens_53', 'Little Dress 1', 'little-dress-1', 'Boys Jeans 1', 'New Services', 'd1ff4b02181db8bb258810aba2f70fc01.png', '<p>kjlkjlkj</p>\r\n', 8),
(24, 34, 'home-gardens_53', 'Rent Your Ride', 'rent-your-ride', 'Must show on home', 'desp', 'e2535cafade8b574678959fbdba72d701.png', '<p>344qerwerqwefqwe</p>\r\n', 5);

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `catid`, `catslug`, `name`, `img`, `url`, `ordr`, `feat`) VALUES
(1, 14, 'add-brands', 'Default Brand', '704eaecd9e0e1b3dd2ab671863602a0d1.png', '', 1, 1),
(4, 14, 'add-brands', 'Summer Brand', '75bb6a7413a7cf8804e013e47b2e6f541.png', '', 2, 1),
(5, 15, 'new-brand-7', 'JOHN DOE', 'a0ac684a24e4f402e83fdecb42bbcd9c1.png', 'www.hamzapervaiz.com', 2, 1),
(6, 15, 'new-brand-7', 'Little Dress 1', 'bc2be75e0b9b752d1e4ecf2b45b797231.png', 'www.hamzapervaiz.com', 8, 1);

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
(15, 'New Brand', 'new-brand-7', 'e2a093eeb2cf491cd5f6cd5b63e2dfe51.png', 2);

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
(1, 'Al Rumanah Packaging', '43b4f4933ac483b0752528d6f50c19861.png', '+971 65247177', 'sales@alrumanah.com', 'P.O BOX : P-72900, Sharjah, UAE.  ', 'Map Code            ', 'b83d69d563a0d0469c59dbfe1cec621f1.png', '<p>lol</p>\r\n', ' Al Rumanah Packaging was established to provide packaging solutions to Middle East market. Quality, low price and on time delivery are key factors which distinguish us from other suppliers. \r\n<br>\r\nCustomer satisfaction is kept as a primary driver in our business model, we focus on maintaining quality in affordable price and provide customized solution to different industries according to their requirements, 7 Ply Corrugated cartons are manufactured on fully automated plants.\r\n<br> We deal in Products including Corrugated boxes, Cargo boxes, Pizza boxes, Perfume boxes, 3 to 9 ply corrugated sheets, Bubble rolls, Tapes.\r\n             ', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.instagram.com', 'http://www.youtube.com');

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
(1, '<h1>Welcome to Al Rumanah Packaging</h1>\r\n\r\n<p style=\"text-align:center\"><br />\r\n<span style=\"font-family:Lucida Sans Unicode,Lucida Grande,sans-serif\"><span style=\"color:#ffffff\"><span style=\"font-size:20px\"><span style=\"background-color:black\">&nbsp;Innovation in Packaging&nbsp;</span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Cambria,serif; font-size:12pt\"><span style=\"font-family:Tahoma\">Al Rumanah Packaging has been established to provide packaging solutions to Middle East market. Quality, low price and </span><span style=\"font-family:Tahoma\">on-time</span><span style=\"font-family:Tahoma\"> delivery are the key factors which makes </span><span style=\"font-family:Tahoma\">it stand out</span><span style=\"font-family:Tahoma\"> from other suppliers. Customer satisfaction is kept as a primary driver in our business model</span><span style=\"font-family:Tahoma\">.</span><span style=\"font-family:Tahoma\"> We focus on maintaining quality in affordable price and provide customized solution to different industries according to their requirements</span><span style=\"font-family:Tahoma\">.</span><span style=\"font-family:Tahoma\">&nbsp;</span><strong><span style=\"font-family:Tahoma\">7 Ply Corrugated cartons are manufactured on fully automated plants.&nbsp;</span></strong><span style=\"font-family:Tahoma\">We deal in packaging which </span><span style=\"font-family:Tahoma\">is not limited to</span><span style=\"font-family:Tahoma\"><em> Corrugated boxes, Cargo boxes, Pizza boxes, Perfume boxes, 3 to 9 ply corrugated sheets, Bubble rolls, Tapes. </em></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\">&nbsp;</span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:center\"><strong><span style=\"font-size:12pt\">What to say about&nbsp;Al Rumanah Packaging</span></strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\">Reliable</span><span style=\"font-size:12.0pt\"> leaders in packaging industry.</span></p>\r\n', '438c269b1ddcc2eab388c85a9b1eb8541.png', '         Custom Video URL         ', '<!-- /.recent-projects-home end-->\r\n<div class=\"animated container fadeInUpNow notransition\">\r\n<h2 style=\"text-align:center\">What to say about <span style=\"font-size:30px\">Al Rumanah Packaging</span></h2>\r\n\r\n<div class=\"cbp-qtcontent\">\r\n<blockquote>\r\n<p style=\"text-align:center\"><span style=\"font-size:14px\">Undisputed Leaders in Packaging Industry.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000; font-size:32px\">Al-Rumanah Packaging</span></p>\r\n</blockquote>\r\n</div>\r\n</div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n<!-- /.recent-projects-home end-->', '4709c35999256ec9b2bcb750135058b71.png', '<p>National Development Consultants Pvt. Ltd. Pakistan, is one of the Pakistan&#39;s premier consulting engineering organization, which has attained international standard and is ranked among the Pakistan&#39;s top 5 consulting firms.</p>\r\n');

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
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `icon`, `metak`, `metad`, `cover`, `post`, `res`, `ordr`, `hide`) VALUES
(1, 'Home', 'home', 'home', 'Site Name', 'Site Name', '16221544bd7db1d546fd5d83855d330b1.png', '<h2>Hello World</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>234</p>\r\n', 1, 2, 0),
(9, 'Contact Us', 'contacts', 'envelope', 'Contacts', 'Contacts', '50328b0848a675537220aa34a602f2041.png', '', 1, 20, 0),
(24, 'Clients', 'clients', 'group', 'clients ', 'clients ', '9de10abac4b0183b85d6c341daf581431.png', '<p>Some Test Posting</p>\r\n', 1, 10, 0),
(5, 'Services', 'services', 'briefcase', 'Services', 'meta description', '', '', 1, 12, 0),
(4, 'Brands', 'brands', 'tags', 'Brands', 'Brands of Products', 'c9a4f94b46d91e28e7a65838354d03451.png', '', 1, 8, 0),
(28, 'Profile', 'profile', NULL, 'Key', 'Meta Dsesp', 'e9991f4cca0364464bf1139545d483e51.png', '<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><img src=\"/AlrumnahaNew/browse/upload/images/logo.png\" style=\"width:350px\" /></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\">WHY USE CARTON BOXES</span></h2>\r\n\r\n<h3><span style=\"color:#000000\">Presentation:</span></h3>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Carton boxes can be customized to suit the product and their needs of consumers therefore adding an element of design in terms of presentation brands may also use the presentation of their carton boxes as a marketing tool to &quot;wow&quot; their consumer, as part of their consumer engagement strategies.</span></span></p>\r\n\r\n<h3><span style=\"color:#000000\">Consumer Friendly:</span></h3>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Carton boxes are used by industries to display the information of their products, such as putting dietary information on food packaging in addition, boxes folding design can allow for ease of repeated opening product.&nbsp;</span></span></p>\r\n\r\n<h3><span style=\"color:#000000\">Seller-Friendly</span></h3>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:16px\">Using carton boxes make its easier for the products to be stacked,stored,presented they are efficient and can be broken down to be recycled, these&nbsp; illustrates the advantages products&nbsp;manufacturers and retailers get when carton boxes are used as packaging.</span></span></p>\r\n\r\n<h3><span style=\"color:#000000\">Environment-Friendly&nbsp;</span></h3>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:16px\">As a paper based product carton boxes offer the best recycling opportunities compared to other forms of packing.</span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><br />\r\n<span style=\"color:#000000\"><span style=\"font-size:28px\"><strong>We listen :</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\">Our staff is helpful customer oriented and want to hear from you.we are committed to responding to you promptly and with courtesy. &nbsp;</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:28px\"><strong>We learn:</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\">We provide regular on going products and services training to our staff to ensure timely,accurate advise and service.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:28px\"><strong>We develop:</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\">We grow our relationships with our suppliers insure&nbsp;the best pricing and provide the most up to date minute technical Solutions to the new products.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><strong><span style=\"font-size:28px\">We deliver: </span></strong></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\">We offer prompt and&nbsp;efficient management of stock levels and delivery, In addition to competitive pricing a across our&nbsp; range.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:28px\"><strong>We Assist: </strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\">We&nbsp;provide a comprehensive and growing range of stock lines to make your purchasing tasks easier with a one stop shop solution.</span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:28px\"><strong>We Assist: </strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\">We offer and supply &#39;greener&#39; alternatives where available and&nbsp;pursue ethical business practices internally and externally.</span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><!-- /.intro-note end--></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n<!-- SERVICE BOXES\r\n================================================== -->\r\n\r\n<div class=\"animated container fadeInUpNow notransition\">\r\n<h1><span style=\"color:#000000\">Certificates</span></h1>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-2\">&nbsp;</div>\r\n\r\n<div class=\"col-md-4\" style=\"width:100%\">\r\n<p style=\"margin-left:160px\"><span style=\"color:#000000\"><img src=\"/AlrumnahaNew/browse/upload/images/cer1.jpg\" style=\"margin-top:40px; width:180px\" />&nbsp; &nbsp;<img alt=\"\" src=\"/AlrumnahaNew/browse/upload/images/cer2.jpg\" style=\"height:171px; width:300px\" /></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n', 0, 2, 0),
(7, 'Images Gallery', 'image', 'camera', 'Images Gallery', 'Images Gallery', 'c960d16f3cf63f31067161bff94108f81.png', '', 1, 16, 0),
(3, 'Products', 'products', 'list', 'products', 'products', '', '', 1, 6, 0),
(6, 'News / Events', 'news', 'info-circle', 'News/Events', 'News / Events', '53bb95cfdc5c32765745bcbc6747d9b31.png', '<p>lol this</p>\r\n', 1, 14, 0),
(2, 'Blogs', 'blogs', 'book', 'Blogs', 'Blog Pages', '', '', 1, 4, 0),
(8, 'Videos', 'video', 'video-camera', 'Videos Gallery', 'Videos Gallery', '395a08298e40fdd55b41d04d13cc9ff61.png', '', 1, 18, 0),
(29, 'Request a Product', 'requestpro', 'book', 'Pages', 'pages', '', '', 1, 8, 1),
(30, 'Search', 'searchs', 'book', 'Searches', 'Searches Desp', '', '', 1, 5, 0),
(31, 'CORRUGATED BOXES', 'corrugated', NULL, 'CORRUGATED BOXES', 'CORRUGATED BOXES', 'Null', '<div class=\"entry-content\" style=\"background-color:none; box-sizing:inherit; color:white\">\r\n<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:16px\"><span style=\"color:#000000\"><img alt=\"Corrugated Cardboard Boxes, Michigan Corrugated Manufacturing Landaal-Packaging-Systems-Bay-City-Delta-Containers-Corrugated-EMBA2\" class=\"alignright lazyloaded size-thumbnail wp-image-2972\" src=\"https://landaal-wpengine.netdna-ssl.com/wp-content/uploads/2018/01/Landaal-Packaging-Systems-Bay-City-Delta-Containers-Corrugated-EMBA2-350x212.jpg\" style=\"border-style:none; box-sizing:inherit; float:right; height:auto; margin:0px 0px 20px 20px; max-width:100%; text-align:right; width:350px\" />For over 10 years, Al Rumanah Packaging has specialized in designing and packaging solution provider custom boxes and corrugated (cardboard) packaging. You could say it&rsquo;s at the &ldquo;corr&rdquo; of what we do! Everything we produce is made using the latest equipment and technology. We&nbsp;</span><a href=\"https://www.landaal.com/our-process/\" style=\"box-sizing: inherit; background-color: transparent; transition: all 0.2s ease-in-out 0s; color: rgb(181, 0, 0); text-decoration-line: none;\"><span style=\"color:#000000\">design to your exact specifications</span></a><span style=\"color:#000000\">, choosing from a wide range of weights, flute sizes, colors, inserts and more. We make sure every detail meets the needs of your product, your industry and your brand. Our personal commitment is to ensure that you receive the best in quality and service each and every time.</span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:16px\"><span style=\"color:#000000\">Promote and protect your goods with confidence, let us be your packaging partner!</span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:16px\"><a class=\"button2\" href=\"contact.php\" style=\"box-sizing: inherit; background-color: rgb(181, 0, 0); transition: all 0.2s ease-in-out 0s; color: rgb(255, 255, 255); text-decoration-line: none; border: 0px; border-radius: 0px; cursor: pointer; font-family: Prompt, sans-serif; font-size: 1.4rem; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 1.5px; line-height: 1; padding: 14px 20px; text-transform: uppercase; max-width: 200px; text-align: center; margin-left: auto; margin-right: auto; display: flex; justify-content: center;\"><span style=\"color:#ffffff\">REQUEST A QUOTE</span></a></span></p>\r\n\r\n<h2 style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:20px\"><span style=\"color:#000000\">WHY USE CORRUGATED? 5 BENEFITS OF CORRUGATED PACKAGING:</span></span></h2>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:16px\"><span style=\"color:#000000\">Corrugated cardboard boxes have been the packaging material of choice for brands and industries all over the world for many years. Corrugated packaging is:</span></span></p>\r\n\r\n<ol style=\"margin-left:40px; margin-right:0px\">\r\n	<li style=\"list-style-type:decimal\"><span style=\"font-size:16px\"><span style=\"color:#000000\">Versatile: Even though it&rsquo;s just paper and starch, corrugated cardboard is strong yet pliable and moisture resistant. It&rsquo;s perfect for transporting, protecting, and promoting products of all shapes and sizes. It&rsquo;s also a great medium for high-quality printing and is often used for displays and retail packaging. Colorful graphics and creative designs help to set you apart from competitors and deliver your brand&rsquo;s message in a crowded marketplace.</span></span></li>\r\n	<li style=\"list-style-type:decimal\"><span style=\"font-size:16px\"><span style=\"color:#000000\">Cost-Effective: Corrugated containers are one of the most affordable packaging options available. With modern manufacturing processes, they require very little labor to produce or fill. Many boxes can be shipped flat and assembled off site and then re-used or recycled.</span></span></li>\r\n	<li style=\"list-style-type:decimal\"><span style=\"font-size:16px\"><span style=\"color:#000000\">Sustainable: Corrugated is also one of the most eco-friendly packaging options on the market. The paper is made from sustainably harvested trees and then converted into corrugated sheets. At the end of the life-cycle, corrugated cardboard is easily recyclable and completely biodegradable.</span></span></li>\r\n	<li style=\"list-style-type:decimal\"><span style=\"font-size:16px\"><span style=\"color:#000000\">Made in the USA: Our corrugated packaging is all sourced and made right here in the U.S. We take pride in providing and supporting local manufacturing jobs. Family-owned and operated for over 10 years, we are committed to serving our clients and our community.</span></span></li>\r\n	<li style=\"list-style-type:decimal\"><span style=\"font-size:16px\"><span style=\"color:#000000\">Customizable: With corrugated, there are so many options available. From specialty, coatings to fluting sizes, everything we create is done specifically with you and your packaging goals in mind. We design to your exact specifications and provide prototypes for testing and approval. Once we&rsquo;ve finalized a concept, it&rsquo;s off to the press, made in any quantity, and delivered to you when you need it. We also offer warehousing and fulfilment as value added services to help you manage your supply chain and keep things simple.</span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:16px\"><span style=\"color:#000000\">Got a project in mind? Let us help you get started! Connect with one of our packaging specialists today.</span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:16px\"><a class=\"button2\" href=\"contact.php\" style=\"box-sizing: inherit; background-color: rgb(181, 0, 0); transition: all 0.2s ease-in-out 0s; color: rgb(255, 255, 255); text-decoration-line: none; border: 0px; border-radius: 0px; cursor: pointer; font-family: Prompt, sans-serif; font-size: 1.4rem; -webkit-font-smoothing: subpixel-antialiased; letter-spacing: 1.5px; line-height: 1; padding: 14px 20px; text-transform: uppercase; max-width: 200px; text-align: center; margin-left: auto; margin-right: auto; display: flex; justify-content: center;\"><span style=\"color:#000000\">CONTACT US</span></a></span></p>\r\n\r\n<h2 style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:16px\"><span style=\"color:#000000\">IS IT CORRUGATED OR IS IT CARDBOARD?</span></span></h2>\r\n\r\n<div class=\"first one-half\" style=\"box-sizing:inherit; clear:both; float:left; margin-left:0px; width:428.708px\">\r\n<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:16px\"><span style=\"color:#000000\">Many, if not most, people look at a box and naturally associate the term &ldquo;cardboard.&rdquo;&nbsp; In most cases however, they should be referring to these cartons as &ldquo;corrugated.&rdquo;&nbsp; Cardboard is just a thick paper stock used to make folding cartons, like cereal boxes for example. Corrugated has three layers, an inside liner, an outside liner (also called facings), and the wavy layer in between called a &ldquo;flute.&rdquo; Fluting is what gives corrugated boxes their strength.</span></span></p>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px\"><span style=\"font-size:16px\"><span style=\"color:#000000\">Flutes come in a variety of sizes: A, B, C, D, E and specialty flutes (such as AC and BC).</span></span></p>\r\n</div>\r\n\r\n<div class=\"one-half\" style=\"box-sizing:inherit; float:left; margin-left:22.5625px; width:428.708px\"><span style=\"font-size:16px\"><a href=\"https://landaal-wpengine.netdna-ssl.com/wp-content/uploads/2017/11/Landaal-Packaging-Systems-Corrugated-Flute-Sizes.jpg\" style=\"box-sizing: inherit; background-color: transparent; transition: all 0.2s ease-in-out 0s; color: rgb(181, 0, 0); text-decoration-line: none;\"><span style=\"color:#000000\"><img alt=\"Corrugated Cardboard Boxes, Michigan Corrugated Manufacturing Landaal-Packaging-Systems-Corrugated-Flute-Sizes\" class=\"aligncenter lazyloaded size-medium wp-image-2700\" src=\"https://landaal-wpengine.netdna-ssl.com/wp-content/uploads/2017/11/Landaal-Packaging-Systems-Corrugated-Flute-Sizes-520x547.jpg\" style=\"border-style:none; box-sizing:inherit; display:block; height:547px; margin:0px auto 30px; max-width:100%; width:520px\" /></span></a></span></div>\r\n\r\n<div class=\"clearfix\" style=\"box-sizing:inherit\">&nbsp;</div>\r\n\r\n<p style=\"margin-left:0px; margin-right:0px\">&nbsp;</p>\r\n</div>\r\n', 0, 4, 0),
(32, 'Order Boxes Online', 'shippingbox', NULL, 'Order Shipping Boxes ', 'Order Shipping Boxes ', 'Null', '', 0, 6, 0),
(33, 'Custom Box', 'custombox', NULL, 'Custom Box Keywords', 'Custom Box KeywordsDescroption', 'Null', '<h1 style=\"text-align:center\">Al Rumanah Packaging</h1>\r\n\r\n<h2 style=\"text-align:center\">Custom Boxes</h2>\r\n\r\n<p style=\"text-align:center\"><img src=\"/AlrumnahaNew/browse/upload/images/boxguide.jpg\" style=\"width:900px\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div class=\"para\">\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<h1 style=\"text-align:center\"><strong>FLUTE TYPE</strong></h1>\r\n\r\n<p style=\"text-align:center\"><img src=\"https://cdnimg.webstaurantstore.com/blog_content/images/Flutes.png\" style=\"margin:49px; width:450px\" /></p>\r\n\r\n<p style=\"text-align:center\"><img src=\"http://www.technologystudent.com/despro_flsh/charbx17.png\" style=\"margin:50px\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#000000\">&#39;Flute&#39; is the corrugation between the internal and external lining papers of the board. The various flutes available offer different properties over each other such as Compression, Crush or Burst strength, Print-ability or storage space.</span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#000000\"><strong>B Flute</strong></span></span></h3>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#000000\">Board thickness approximately 3mm.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#000000\">The most widely used flute profile due to its all round compression strength, compactness, printability and cost effectiveness.</span></span></p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#000000\"><strong>C Flute</strong></span></span></h3>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#000000\">Board thickness approximately 4mm.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#000000\">A larger flute than &#39;B&#39; offering greater compression strength, but can be more easily crushed.</span></span></p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#000000\"><strong>BC Flute (double wall)</strong></span></span></h3>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#000000\">Board thickness approximately 7mm.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#000000\">A combination of &#39;B&#39; and &#39;C&#39; flute is normally used when compression and stacking strength is important.</span></span></p>\r\n</div>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', 0, 8, 0);

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
  `feat` int(11) NOT NULL DEFAULT '0',
  `ordr` int(11) NOT NULL DEFAULT '1',
  `pending` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pid`, `pslug`, `name`, `slug`, `brand`, `price`, `sale`, `saleprice`, `sizesm`, `sizemd`, `sizelg`, `metak`, `metad`, `desp`, `img1`, `img2`, `img3`, `img4`, `img5`, `feat`, `ordr`, `pending`) VALUES
(80, 14, 'electronic', '3 Ply E Flute Computer Box', '19', 1, 0, 0, 0, 0, 0, 0, '', '', '', 'fb2af4d5fd5bdd4067c8e804da1e313b1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(81, 14, 'electronic', '7 PlyTelescopic Box', '18', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'e9ed8a4979e14e7d7777b0f9358a2e531.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(82, 14, 'electronic', 'Electronic Item Box', '17', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'f21beb7871f77d98c0c237c208870c4a1.png', NULL, NULL, NULL, NULL, 1, 0, 0),
(83, 13, 'food', 'B Flute Fruit Tray', '15', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '8b31e5ba04396447b3a6b756c80dbb691.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(84, 13, 'food', 'Different Sizes Pizza Boxes', '16', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '6f4b60e86578fd136a274181c31bc13f1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(85, 13, 'food', '3 Ply Vegetable Tray', '14', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '49fe15a4eb31b1662b4b4f741f2586d31.png', NULL, NULL, NULL, NULL, 1, 0, 0),
(86, 14, 'electronic', 'Die Cut Electronic Box', '20', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '4e3dbff3934f74bc3ac6b0b9f30343551.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(87, 15, 'autombile', '3 Ply C Flute White Box', '21', 1, 0, 0, 0, 0, 0, 0, '', '', '', 'bfd20f9c00a7b64c30ec9c0c4ab247cf1.png', NULL, NULL, NULL, NULL, 1, 0, 0),
(88, 15, 'automobile', 'Automobile Corrugated Box ', '22', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '5a5fde2e85f6343d2aa0a26350587dd61.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(89, 15, 'automobile', 'Automobile Dividers', '23', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '1bb711ff43566049564bfbc032f3effc1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(90, 13, 'food', '3 Ply B & C Flute Vegetable Box', '24', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'ef30615ade197b71aa36848c60b2b2481.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(91, 16, 'cargo-shipping', '7 Ply Cargo Corrugated ', '25', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '2a0047a6042d9e43dc1877cebcfb59821.png', NULL, NULL, NULL, NULL, 1, 0, 0),
(92, 16, 'cargo-shipping', '5 Ply Box 45 45 x 45 CM', '26', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '736259be83b78ee7976b54e4b1ec673a1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(93, 16, 'cargo-shipping', '5 Ply Cargo Box', '27', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '5c123121e084f3e04f2e808f8633b3781.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(94, 16, 'cargo-shipping', '7 PlyTelescopic Box', '28', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'ef7947f059215f6534c6ecbf5a15c4a01.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(95, 16, 'cargo-shipping', '5 Ply Cargo Box', '29', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '7396212092649b13f677ccbcf69915b81.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(96, 17, 'paper', '3 Ply Recycle Paper Roll', '30', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'e7f5f1422b2aa47824222b4301b9fc1b1.png', NULL, NULL, NULL, NULL, 1, 0, 0),
(97, 17, 'paper', '3 Ply Recycle Paper Box', '31', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '883ba97a380108047a16240c6d99af591.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(98, 17, 'paper', 'B & C Flute File Box', '32', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'dcb47a80f06e194334a1eb4926abdb531.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(99, 17, 'paper', 'E Flute Gift Box', '33', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '55ec4daae760aa5f21e58c4dd2c036651.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(100, 13, 'food', 'Pizza box', '34', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'c29e559bef40e4fda18f6489d9cac0481.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(101, 13, 'food', 'Pizza box', '35', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '44debdf031ca29d114986791d515a9201.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(102, 13, 'food', 'Pizza Board box', '36', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'bfe00db87da947e331648fb2cf6ab52c1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(103, 16, 'cargo-shipping', 'Shipping Box', '37', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'b547c124bd725d2f907eafa68662f98d1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(104, 15, 'automobile', 'automobile E', '42', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'cc6a0aa1276899628b87b4a6159af4dc1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(105, 15, 'automobile', 'automobile D', '41', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '4457242f2884dc41897b22678e6a46851.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(106, 15, 'automobile', 'glass pack kit', '43', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '30bb4063739cf0d869e0a5610004505d1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(107, 15, 'automobile', 'Cell Kit', '46', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'a232959f4185aea3541f3d0554f076de1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(108, 15, 'automobile', 'hardware packing Boc', '45', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '8054d8ad0dd36316f50c3a221f4edc3f1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(109, 15, 'automobile', 'Die Cut BOX', '47', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'dfa138e3e12bbf816cfee179bc7dce3f1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(110, 15, 'automobile', 'Printed Boxes', '48', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '97543556ce149dd8a5494329697981251.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(111, 15, 'automobile', 'Custom Boxes', '49', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '69cf4c3fc6143479bffb4949e3b695b01.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(112, 15, 'automobile', 'Die Cut BOX 2', '50', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '7c4c571b5dd5148a08b7c98cf27e07111.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(113, 15, 'automobile', 'Box', '51', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'fdf714d72500544f5bbd2d6872632eeb1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(114, 15, 'automobile', 'Box', '52', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'e9d586e4a479231b3cf62bf2e137c7091.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(115, 15, 'automobile', 'Box 3', '53', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '876bb766deabec3acb62dd243510ad2a1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(116, 15, 'automobile', ' Box 4', '54', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '2c479d380ff02e26817d1bbb0f10fb191.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(117, 15, 'automobile', ' Box 5', '55', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'ba94fd418a56291f90a6303aec61d98c1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(118, 16, 'cargo-shipping', 'Bulk Crago Box', '57', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '11265e9f3bded63b40b76f2b9a8a38041.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(119, 16, 'cargo-shipping', 'Double Wall Box', '58', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'b4856b0b4ad6dd1bedb926bb9ec2ec7f1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(120, 16, 'cargo-shipping', 'Cargo Box', '59', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '33a71657e9319d91a4bec1cd52a19ccd1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(121, 16, 'cargo-shipping', 'Corrugated cardboard Box', '60', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'fcc6595629a1fc91b054b74c07a195001.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(122, 16, 'cargo-shipping', 'kraft Brown Square Box', '61', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '6f2a33e93f08c83320f55d5d0aa70fb31.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(123, 16, 'cargo-shipping', 'Side Loader Boxes', '64', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'b1aa3f570a999841d144ee234968da1d1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(124, 16, 'cargo-shipping', 'Shipping Box', '65', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '61440cdbf0b024f29d00a6224e6b32431.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(125, 16, 'cargo-shipping', 'Bike Parts Boxes', '66', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '4989d7600fb391521e2482fa8e17d2e01.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(126, 16, 'cargo-shipping', 'Heavy Load Boxes', '67', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'c4ed9a0e029da79f097036ccefa90e981.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(127, 16, 'cargo-shipping', 'Shipping Box', '68', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'c017a35d0746f8bc89509d4ce1c726771.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(128, 14, 'electronic', 'Triple Walled Box', '69', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'c4e90e072d5e328e551ec21a8e5b42c71.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(129, 14, 'electronic', 'E-Flute box Exporter', '70', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '97d5b15515edc572b6a84e4382394d101.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(130, 14, 'electronic', 'Electronic box', '71', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'caf0301678740bd4c32512dbe00565d81.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(131, 14, 'electronic', 'Electronic Printed Boxes', '72', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'e5758b0f447ff80e99c0466ae46bbb761.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(132, 13, 'food', 'Pizza Take Away Boxes', '74', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '062fb02eb2294235536c84038beca6f21.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(133, 13, 'food', 'Pizza Boxes', '75', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '31e9cd24efb97213d43eea14b878f3bc1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(134, 13, 'food', 'Kraft Card Take Away Boxes', '76', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'ff633e2614549eb9c5a5646f7ab45ffb1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(135, 13, 'food', 'Food shopping Loader Boxes', '77', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'bffa311c2aaafed70c98bd9e5a4148b01.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(136, 13, 'food', 'Delivery Boxes', '78', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'cb5fa1389c0c2d92b3046044ce7ccc3b1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(137, 13, 'food', 'Custom Coated Kraft parer Liner Boxes', '79', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '46e410ff7d7d264895f7d5b4d7184e431.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(138, 13, 'food', 'Cake Gift Boxes', '81', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '262b51ccb18b32ce5cc516a6c7df23211.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(139, 13, 'food', 'Pizza box', '82', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'dad260ac1bc729d9e45f8b42ecd61ff61.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(140, 13, 'food', 'Vegetables_Packing_Boxes', '83', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'f62495d15f9c2485317e6440714aeb861.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(141, 13, 'food', 'Fruits Delivery Boxes', '84', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'bb5c90547ef95f8851220e0258327aa51.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(142, 17, 'paper', '6*6 inch collapsible wood Boxes', '85', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '5bc0df568920f0788f4f5bb6cf9c2e641.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(143, 17, 'paper', 'Kraft paper Gift packing Boxes', '86', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '48c2cf8be149d63f989270ea43e4e1bb1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(144, 17, 'paper', 'Kraft Boxe with Handle', '87', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '4ad94c1913167a139454a45417cdaa451.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(145, 17, 'paper', 'Bulk small Gift Boxes', '88', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '4f3462bb504926e6858b6b1aed1d2bc61.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(146, 17, 'paper', 'paper Gift Boxes', '89', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '2949767ffcf7560ecb514bab92efa1061.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(147, 17, 'paper', 'Double wall kraft paper Boxes', '90', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'e343e80f24b2761af7cc28fd7c9903461.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(148, 17, 'paper', 'Car perfume Packaging Boxes', '92', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '8209715be2e96f4e8e44d2be51b227131.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(149, 17, 'paper', 'Perfume Paper Boxes', '93', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '22a4d7b0a037232fc714d3a26a3efc751.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(150, 17, 'paper', 'Perfume Gift Packaging Boxes', '94', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '1602bf471c8738ce95561d2313c46e881.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(151, 17, 'paper', 'Gift Box with Flower Clasp', '95', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '515a5bff9fb78f87b0d470d46db296291.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(152, 17, 'paper', 'Gift Shipping Boxes', '96', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '765469c392dc2e680cc309f7cefec31b1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(153, 17, 'paper', 'Paper Gift Boxes', '97', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '11e6efbd55c4896cbb37add73a27cfb41.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(154, 13, 'food', 'Dates Corrugated Carton Packaging Box', '98', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '5cc19e9af8278e300f2b4283fe3418381.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(155, 13, 'food', 'Citrus Box 2', '99', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'a32f81604ef7da0ee6caf8ea50e478571.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(156, 13, 'food', 'Custom Printed Corrugated Carton', '100', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '2c2dec9b33f20de2132edc423a982ae01.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(157, 13, 'food', 'Corrugated Box Colored', '101', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'e88ef2d9cbe9800f892124431754c84f1.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(158, 13, 'food', 'Elegant Corrugated Carton', '102', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '74d13dccb16d4d1dafb3e7f5c79781d11.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(159, 13, 'food', 'Corrugated Open Boxes', '103', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, 'd78038b83b5ae7a26509c8581d3520701.png', NULL, NULL, NULL, NULL, 0, 0, 0),
(160, 13, 'food', 'Air Open Corrugated Carton', '104', NULL, 0, 0, NULL, 0, 0, 0, NULL, NULL, NULL, '9f9fa4af772bc01a65856cb9159100241.png', NULL, NULL, NULL, NULL, 0, 0, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productcat`
--

INSERT INTO `productcat` (`id`, `name`, `slug`, `img`, `desp`, `feat`, `ordr`) VALUES
(17, 'Paper & Gift', 'paper', '4bde5413dd223d7f8054c26748a83fce1.png', NULL, '1', 5),
(14, 'Electric', 'electronic', '8acf56c4061239ae31566f57162691401.png', NULL, '1', 3),
(13, 'Food', 'food', '7e5e29431ff210fafc018b29328ca6be1.png', NULL, '1', 4),
(16, 'Cargo & Shipping', 'cargo-shipping', 'fcc714396af8b34d6f06c83823058daa1.png', NULL, '1', 2),
(15, 'Autombile', 'autombile', '7258a2ffa0c51c8a94b369edbf46b9581.png', NULL, '1', 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

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
(1, 13, 'name-26', 1, 'boys_82', 'Name', 'name-68', NULL, 0, 0, NULL, 0, 0, 0, '', '', '<p>kolol</p>\r\n', '5220cfbda7ac8910ea710b543d65b5f41.png', 'cbc8d33be6ca7585868c96414ce678171.png', '6d5ce3fead37a73129364ff2fb95ad2d1.png', NULL, NULL, '1', 0);

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
(10, 'Our Services', 'add-services', '15b8e40d18212e11c814e9c702ae5dd61.png', '<p>lol</p>\r\n', NULL, 1),
(13, 'Name', 'name-26', 'cb521085ed800dd1c24d4a46b8a074831.png', '', NULL, 2);

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
(1, 10, 'add-services', 'Boys', 'boys_82', '390fd5a92728e19a7bd65e05c39c42ff1.png', '', NULL, 2);

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
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `img`, `ordr`) VALUES
(30, '2', 'c43c2835fe30578d2ecb01d906ffe5a91.png', 2),
(29, '1', '014084aaff76ce4abe0a0106edf0646f1.png', 1),
(31, '3', 'a8b5eb658e67204e15c8f4eb216a0af51.png', 3);

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
(32, 16, 'vid-cat1', 'Boys', '64b0ee6b3dceea459ed960c75d220ee51.png', 'www.hamzapervaiz.com', 2, 1);

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
(16, 'Vid Cat1', 'vid-cat1', '743ed4942f8295e7e6636c8361e6ac581.png', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
