-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2025 at 02:11 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emergency`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_tbl`
--

CREATE TABLE `about_tbl` (
  `id` int(10) NOT NULL,
  `about` text NOT NULL,
  `mission` varchar(500) NOT NULL,
  `vision` varchar(500) NOT NULL,
  `services` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_tbl`
--

INSERT INTO `about_tbl` (`id`, `about`, `mission`, `vision`, `services`) VALUES
(1, '<p>Welcome to Crest Islamic School, an Islamic secondary school dedicated to providing quality education rooted in Islamic principles and values. Located in Nigeria, our school is committed to nurturing young minds, fostering academic excellence, and promoting spiritual growth among our students. With a dynamic blend of traditional Islamic teachings and modern education practices, we strive to empower our students to become well-rounded individuals who positively contribute to society.</p>', '<p>Our mission at Crest Islamic School is to provide a comprehensive education that integrates Islamic teachings with academic excellence, enabling students to develop strong moral character, critical thinking skills, and a lifelong commitment to serving humanity.</p>', '<p>We envision Crest Islamic School as a premier educational institution that produces future leaders who embody the principles of Islam, possess a thirst for knowledge, and actively contribute to the advancement of their communities and the world at large.</p>', '<ol start=\"1\">\r\n<li><strong>Islamic Studies Curriculum:</strong> Our school offers a robust Islamic studies curriculum that encompasses Quranic studies, Hadith, Islamic history, and ethics, providing students with a deep understanding of their faith.</li>\r\n<li><strong>Academic Excellence:</strong> We provide a rigorous academic program aligned with national standards, ensuring that students receive a well-rounded education in subjects such as mathematics, science, language arts, and social studies.</li>\r\n<li><strong>Qualified Faculty:</strong> Our dedicated team of educators consists of highly qualified teachers who are committed to providing personalized attention and guidance to each student.</li>\r\n<li><strong>Modern Facilities:</strong> Crest Islamic School boasts state-of-the-art facilities, including well-equipped classrooms, science laboratories, libraries, and computer labs, to facilitate a conducive learning environment.</li>\r\n<li><strong>Extracurricular Activities:</strong> We offer a variety of extracurricular activities, including sports, arts, and community service initiatives, to encourage holistic development and character-building among our students.</li>\r\n<li><strong>Islamic Environment:</strong> Our school fosters an Islamic environment where students are encouraged to practice their faith freely, participate in daily prayers, and engage in Islamic events and celebrations throughout the academic year.</li>\r\n<li><strong>Parental Involvement:</strong> We believe in the importance of parental involvement in a child\'s education, and we encourage parents to actively participate in school activities, parent-teacher conferences, and decision-making processes.</li>\r\n</ol>');

-- --------------------------------------------------------

--
-- Table structure for table `cart_tbl`
--

CREATE TABLE `cart_tbl` (
  `cid` int(10) NOT NULL,
  `prod_id` varchar(10) NOT NULL,
  `user` varchar(10) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `qty` varchar(10) NOT NULL DEFAULT '1',
  `date` varchar(50) NOT NULL,
  `ref` varchar(30) NOT NULL,
  `trans` varchar(200) NOT NULL,
  `arrive` varchar(100) NOT NULL,
  `depart` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_tbl`
--

INSERT INTO `cart_tbl` (`cid`, `prod_id`, `user`, `amount`, `qty`, `date`, `ref`, `trans`, `arrive`, `depart`, `status`) VALUES
(37, '28', '9', '70000', '2', '2023-11-30', '2311301127132', '2023-11-3000009', '', '', '2'),
(38, '29', '9', '150000', '3', '2024-03-07', 'F24030710389', '2024-03-0700009', '', '', '2'),
(39, '29', '9', '150000', '1', '2024-03-07', 'F2403072319', '2024-03-0700009', '2024-03-08', '2024-03-09', '2'),
(40, '28', '9', '70000', '1', '2024-03-09', '2024-03-0900009', '2024-03-0900009', '2024-03-13', '2024-03-29', '2'),
(41, '26', '9', '30000', '1', '2024-03-09', 'F24030967099', '2024-03-0900009', '2024-03-12', '2024-03-25', '2'),
(44, '31', '9', '50000', '1', '2024-03-15', 'F24031519049', '2024-03-1500009', '2024-03-20', '2024-03-27', '2');

-- --------------------------------------------------------

--
-- Table structure for table `cases_tbl`
--

CREATE TABLE `cases_tbl` (
  `id` int(10) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `msg` text NOT NULL,
  `image` varchar(300) NOT NULL,
  `user` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cases_tbl`
--

INSERT INTO `cases_tbl` (`id`, `subject`, `msg`, `image`, `user`, `status`, `time`) VALUES
(1, 'Girls Hotel B on Fire', 'There is fire outbreak in Girls Hotel B. Everyone on campus should try calling the fire service', 'uploads/22705fire.jpg', '11', '1', '28-July-2025 02:02'),
(2, 'Massive Student Riot', 'there is a massive student riot on campus. students not allowed to write their exams are revolting. call the police', 'uploads/7861riot.jpg', '11', '1', '28-July-2025 02:04'),
(3, 'Flood in Library Way', 'There is a massive flood at the library road. Avoid for now', 'uploads/4283flood.jpg', '11', '1', '28-July-2025 02:15');

-- --------------------------------------------------------

--
-- Table structure for table `category_tbl`
--

CREATE TABLE `category_tbl` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL DEFAULT 'uploads/cartfine.jpg',
  `status` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_tbl`
--

INSERT INTO `category_tbl` (`id`, `name`, `img`, `status`) VALUES
(1, 'Mobile Phones', 'uploads/27509phones.jpg', '0'),
(2, 'Laptops', 'uploads/19067laptops.avif', '0'),
(3, 'Laptop Accessories', 'uploads/27765lap access.jpg', '0'),
(4, 'Desktops', 'uploads/15708desktop.webp', '0'),
(5, 'Desktop Accessories', 'uploads/29194desktop accessories.avif', '0'),
(6, '5 Bedroom', 'uploads/29660room6.png', '1'),
(7, '4 Bedroom', 'uploads/4820room6.png', '1'),
(8, '3 Bedroom', 'uploads/24766room6.png', '1'),
(9, '2 Bedroom', 'uploads/12327room6.png', '1'),
(10, 'Royal Room (Exclusive)', 'uploads/20559room6.png', '1'),
(11, 'you', 'uploads/cartfine.jpg', '0'),
(12, 'Royal Room', 'uploads/cartfine.jpg', '1'),
(13, 'Connecting Room', 'uploads/cartfine.jpg', '1'),
(14, 'Super Deluxe Room', 'uploads/cartfine.jpg', '1'),
(15, 'Deluxe room', 'uploads/cartfine.jpg', '1'),
(16, 'Standard Room', 'uploads/cartfine.jpg', '1'),
(17, 'Single Rooms', 'uploads/cartfine.jpg', '0'),
(18, 'Delux (Pent House)', 'uploads/cartfine.jpg', '1'),
(19, 'Exclusive Self Contain', 'uploads/cartfine.jpg', '1'),
(20, 'Executive Suites', 'uploads/cartfine.jpg', '1'),
(21, 'Kings Suites', 'uploads/cartfine.jpg', '1'),
(22, 'Superior Suites', 'uploads/cartfine.jpg', '1'),
(23, 'Premier Suites', 'uploads/cartfine.jpg', '1'),
(24, 'Noble Rooms', 'uploads/cartfine.jpg', '1'),
(25, 'Abasifreke Hall', 'uploads/cartfine.jpg', '1'),
(26, 'Uduak Abasi Hall', 'uploads/cartfine.jpg', '1'),
(27, 'Adiaha Hall', 'uploads/cartfine.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cities_tbl`
--

CREATE TABLE `cities_tbl` (
  `id` int(11) NOT NULL,
  `state_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COMMENT='Local governments in Ghana.';

--
-- Dumping data for table `cities_tbl`
--

INSERT INTO `cities_tbl` (`id`, `state_id`, `name`) VALUES
(14, 0, 'Ghana'),
(15, 1, 'Umuahia'),
(38, 2, 'Yola'),
(69, 3, 'Uyo'),
(75, 4, 'Awka'),
(92, 5, 'Bauchi'),
(118, 6, 'Yenagoa'),
(131, 7, 'Makurdi'),
(162, 8, 'Maiduguri'),
(176, 9, 'Calabar'),
(187, 10, 'Asaba'),
(212, 11, 'Abakaliki'),
(243, 13, 'Ado Ekiti'),
(261, 14, 'Enugu'),
(287, 16, 'Gombe'),
(316, 17, 'Owerri'),
(325, 18, 'Dutse'),
(355, 19, 'Kaduna'),
(390, 20, 'Kano'),
(434, 21, 'Katsina'),
(453, 22, 'Birnin Kebbi'),
(480, 23, 'Lokoja'),
(495, 24, 'Ilorin'),
(516, 25, 'Ikeja'),
(533, 26, 'Lafia'),
(561, 27, 'Suleja'),
(565, 28, 'Abeokuta'),
(588, 29, 'Akure'),
(631, 30, 'Osogbo'),
(637, 31, 'Ibadan'),
(668, 32, 'Jos'),
(703, 33, 'Port Harcourt'),
(720, 34, 'Sokoto'),
(734, 35, 'Jalingo'),
(767, 37, 'Gusau');

-- --------------------------------------------------------

--
-- Table structure for table `colour_tbl`
--

CREATE TABLE `colour_tbl` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `pcode` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colour_tbl`
--

INSERT INTO `colour_tbl` (`id`, `name`, `pcode`, `status`) VALUES
(5, 'White', '08202385659', '0'),
(6, 'White', '08202385659', '1'),
(7, 'Green', '08202385659', '1');

-- --------------------------------------------------------

--
-- Table structure for table `colour_type_tbl`
--

CREATE TABLE `colour_type_tbl` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colour_type_tbl`
--

INSERT INTO `colour_type_tbl` (`id`, `name`, `status`) VALUES
(1, 'White', '1'),
(2, 'Green', '1');

-- --------------------------------------------------------

--
-- Table structure for table `company_tbl`
--

CREATE TABLE `company_tbl` (
  `id` int(10) NOT NULL,
  `cname` varchar(300) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `descc` text NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `state` varchar(50) NOT NULL,
  `kmfee` varchar(10) NOT NULL,
  `kgfee` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  `paypk` varchar(500) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `shipfee` varchar(20) NOT NULL,
  `stype` varchar(10) NOT NULL,
  `payd` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_tbl`
--

INSERT INTO `company_tbl` (`id`, `cname`, `logo`, `descc`, `address`, `phone`, `email`, `state`, `kmfee`, `kgfee`, `city`, `paypk`, `currency`, `shipfee`, `stype`, `payd`) VALUES
(1, 'Hotels', 'hhhhh', '<p>This is the best e-commerce PHP script available online. It carries powerful features suitable for modern day ecommerce transactions.</p>', '101 Apapa Lagos', '08132722283', 'hello@shopper.ng', 'Lagos', '5', '50', 'Ikeja', 'pk_live_b5b0a97d9e1fdb5d23075c22e6a1f1740307b198', 'â‚¦', '0', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `contact_tbl`
--

CREATE TABLE `contact_tbl` (
  `id` int(10) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `msg` text NOT NULL,
  `tdate` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_tbl`
--

INSERT INTO `contact_tbl` (`id`, `name`, `email`, `phone`, `subject`, `msg`, `tdate`, `status`) VALUES
(1, 'Raf', 'vdavid@gmail.com', '33333', 'hello', 'hello', '2023-11-23', '1'),
(2, 'ojo', 'teste@gmail.com', '4556', 'New Webmail', 'hi', '2024-03-19', '1');

-- --------------------------------------------------------

--
-- Table structure for table `country_tbl`
--

CREATE TABLE `country_tbl` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country_tbl`
--

INSERT INTO `country_tbl` (`id`, `sortname`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'AS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua And Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas The'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CD', 'Congo The Democratic Republic Of The'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)'),
(54, 'HR', 'Croatia (Hrvatska)'),
(55, 'CU', 'Cuba'),
(56, 'CY', 'Cyprus'),
(57, 'CZ', 'Czech Republic'),
(58, 'DK', 'Denmark'),
(59, 'DJ', 'Djibouti'),
(60, 'DM', 'Dominica'),
(61, 'DO', 'Dominican Republic'),
(62, 'TP', 'East Timor'),
(63, 'EC', 'Ecuador'),
(64, 'EG', 'Egypt'),
(65, 'SV', 'El Salvador'),
(66, 'GQ', 'Equatorial Guinea'),
(67, 'ER', 'Eritrea'),
(68, 'EE', 'Estonia'),
(69, 'ET', 'Ethiopia'),
(70, 'XA', 'External Territories of Australia'),
(71, 'FK', 'Falkland Islands'),
(72, 'FO', 'Faroe Islands'),
(73, 'FJ', 'Fiji Islands'),
(74, 'FI', 'Finland'),
(75, 'FR', 'France'),
(76, 'GF', 'French Guiana'),
(77, 'PF', 'French Polynesia'),
(78, 'TF', 'French Southern Territories'),
(79, 'GA', 'Gabon'),
(80, 'GM', 'Gambia The'),
(81, 'GE', 'Georgia'),
(82, 'DE', 'Germany'),
(83, 'GH', 'Ghana'),
(84, 'GI', 'Gibraltar'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'XU', 'Guernsey and Alderney'),
(92, 'GN', 'Guinea'),
(93, 'GW', 'Guinea-Bissau'),
(94, 'GY', 'Guyana'),
(95, 'HT', 'Haiti'),
(96, 'HM', 'Heard and McDonald Islands'),
(97, 'HN', 'Honduras'),
(98, 'HK', 'Hong Kong S.A.R.'),
(99, 'HU', 'Hungary'),
(100, 'IS', 'Iceland'),
(101, 'IN', 'India'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'JM', 'Jamaica'),
(109, 'JP', 'Japan'),
(110, 'XJ', 'Jersey'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea North'),
(116, 'KR', 'Korea South'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Laos'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libya'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macau S.A.R.'),
(129, 'MK', 'Macedonia'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'XM', 'Man (Isle of)'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'YT', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia'),
(144, 'MD', 'Moldova'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'MS', 'Montserrat'),
(148, 'MA', 'Morocco'),
(149, 'MZ', 'Mozambique'),
(150, 'MM', 'Myanmar'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'AN', 'Netherlands Antilles'),
(155, 'NL', 'Netherlands The'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Island'),
(163, 'MP', 'Northern Mariana Islands'),
(164, 'NO', 'Norway'),
(165, 'OM', 'Oman'),
(166, 'PK', 'Pakistan'),
(167, 'PW', 'Palau'),
(168, 'PS', 'Palestinian Territory Occupied'),
(169, 'PA', 'Panama'),
(170, 'PG', 'Papua new Guinea'),
(171, 'PY', 'Paraguay'),
(172, 'PE', 'Peru'),
(173, 'PH', 'Philippines'),
(174, 'PN', 'Pitcairn Island'),
(175, 'PL', 'Poland'),
(176, 'PT', 'Portugal'),
(177, 'PR', 'Puerto Rico'),
(178, 'QA', 'Qatar'),
(179, 'RE', 'Reunion'),
(180, 'RO', 'Romania'),
(181, 'RU', 'Russia'),
(182, 'RW', 'Rwanda'),
(183, 'SH', 'Saint Helena'),
(184, 'KN', 'Saint Kitts And Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'PM', 'Saint Pierre and Miquelon'),
(187, 'VC', 'Saint Vincent And The Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'XG', 'Smaller Territories of the UK'),
(200, 'SB', 'Solomon Islands'),
(201, 'SO', 'Somalia'),
(202, 'ZA', 'South Africa'),
(203, 'GS', 'South Georgia'),
(204, 'SS', 'South Sudan'),
(205, 'ES', 'Spain'),
(206, 'LK', 'Sri Lanka'),
(207, 'SD', 'Sudan'),
(208, 'SR', 'Suriname'),
(209, 'SJ', 'Svalbard And Jan Mayen Islands'),
(210, 'SZ', 'Swaziland'),
(211, 'SE', 'Sweden'),
(212, 'CH', 'Switzerland'),
(213, 'SY', 'Syria'),
(214, 'TW', 'Taiwan'),
(215, 'TJ', 'Tajikistan'),
(216, 'TZ', 'Tanzania'),
(217, 'TH', 'Thailand'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad And Tobago'),
(222, 'TN', 'Tunisia'),
(223, 'TR', 'Turkey'),
(224, 'TM', 'Turkmenistan'),
(225, 'TC', 'Turks And Caicos Islands'),
(226, 'TV', 'Tuvalu'),
(227, 'UG', 'Uganda'),
(228, 'UA', 'Ukraine'),
(229, 'AE', 'United Arab Emirates'),
(230, 'GB', 'United Kingdom'),
(231, 'US', 'United States'),
(232, 'UM', 'United States Minor Outlying Islands'),
(233, 'UY', 'Uruguay'),
(234, 'UZ', 'Uzbekistan'),
(235, 'VU', 'Vanuatu'),
(236, 'VA', 'Vatican City State (Holy See)'),
(237, 'VE', 'Venezuela'),
(238, 'VN', 'Vietnam'),
(239, 'VG', 'Virgin Islands (British)'),
(240, 'VI', 'Virgin Islands (US)'),
(241, 'WF', 'Wallis And Futuna Islands'),
(242, 'EH', 'Western Sahara'),
(243, 'YE', 'Yemen'),
(244, 'YU', 'Yugoslavia'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_tbl`
--

CREATE TABLE `coupon_tbl` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `tdate` varchar(50) NOT NULL,
  `expdate` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_tbl`
--

INSERT INTO `coupon_tbl` (`id`, `name`, `discount`, `tdate`, `expdate`, `status`) VALUES
(1, 'SABINUS', '0.03', '2023-11-16', '2023-11-30', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `STATUS` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUMBER`, `EMAIL`, `STATUS`) VALUES
(9, 'Walk-in', 'Customer', 'nill', '', '1'),
(10, 'Fair Customer', 'Fair Customer', '4455', 'ff@gmail.com', '1'),
(11, 'Black Customer', 'Black Customer', '234', 'bb@gmail.com', '1'),
(12, 'dofu', 'dofu', '56', 'chidirafael@gmail.com', '1'),
(13, 'olu', 'olu', '4455', '', '1'),
(14, 'chido', 'raf', '34454', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  `JOB_ID` int(11) DEFAULT NULL,
  `HIRED_DATE` varchar(50) NOT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  `STATUS` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `EMAIL`, `PHONE_NUMBER`, `JOB_ID`, `HIRED_DATE`, `LOCATION_ID`, `STATUS`) VALUES
(1, 'Admin', 'Admin', 'Male', '', '09124033805', 1, '2021-01-22', 113, '1');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `JOB_ID` int(11) NOT NULL,
  `JOB_TITLE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`JOB_ID`, `JOB_TITLE`) VALUES
(1, 'Manager'),
(2, 'Cashier');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LOCATION_ID` int(11) NOT NULL,
  `PROVINCE` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LOCATION_ID`, `PROVINCE`, `CITY`) VALUES
(111, 'Negros Occidental', 'Bacolod City'),
(112, 'Negros Occidental', 'Bacolod City'),
(113, 'Uyo', 'Uyo'),
(114, 'Negros Occidental', 'Himamaylan'),
(115, 'Negros Oriental', 'Dumaguette City'),
(116, 'Negros Occidental', 'Isabella'),
(126, 'Negros Occidental', 'Binalbagan'),
(130, 'Cebu', 'Bogo City'),
(131, 'Negros Occidental', 'Himamaylan'),
(132, 'Negros', 'Jupiter'),
(133, 'Aincrad', 'Floor 91'),
(134, 'negros', 'binalbagan'),
(135, 'hehe', 'tehee'),
(136, 'PLANET YEKOK', 'KOKEY'),
(137, 'Camiguin', 'Catarman'),
(138, 'Camiguin', 'Catarman'),
(139, 'Negros Occidental', 'Binalbagan'),
(140, 'Batangas', 'Lemery'),
(141, 'Capiz', 'Panay'),
(142, 'Camarines Norte', 'Labo'),
(143, 'Camarines Norte', 'Labo'),
(144, 'Camarines Norte', 'Labo'),
(145, 'Camarines Norte', 'Labo'),
(146, 'Capiz', 'Pilar'),
(147, 'Negros Occidental', 'Moises Padilla'),
(148, 'a', 'a'),
(149, '1', '1'),
(150, 'Negros Occidental', 'Himamaylan'),
(151, 'Masbate', 'Mandaon'),
(152, 'Aklanas', 'Madalagsasa'),
(153, 'Batangas', 'Mabini'),
(154, 'Bataan', 'Morong'),
(155, 'Capiz', 'Pillar'),
(156, 'Negros Occidental', 'Bacolod'),
(157, 'Camarines Norte', 'Labo'),
(158, 'Negros Occidental', 'Binalbagan'),
(159, 'Benguet', 'Sablan'),
(160, '0', '0'),
(161, '0', '0'),
(162, '', ''),
(163, '0', '0'),
(164, '0', '0'),
(165, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `measurement_tbl`
--

CREATE TABLE `measurement_tbl` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `measurement_tbl`
--

INSERT INTO `measurement_tbl` (`id`, `name`, `status`) VALUES
(1, 'XL', '1'),
(2, 'L', '1'),
(3, 'M', '1'),
(4, 'S', '1'),
(5, 'XS', '1');

-- --------------------------------------------------------

--
-- Table structure for table `movement_tbl`
--

CREATE TABLE `movement_tbl` (
  `id` int(10) NOT NULL,
  `ref` varchar(10) NOT NULL,
  `ppcode` varchar(50) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `activity` varchar(50) NOT NULL,
  `operator` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1',
  `tdate` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movement_tbl`
--

INSERT INTO `movement_tbl` (`id`, `ref`, `ppcode`, `qty`, `activity`, `operator`, `status`, `tdate`, `type`) VALUES
(30, '', '103', '10', 'Opening Stock', 'Admin', '1', '09-03-2024', '1'),
(31, '', '104', '10', 'Opening Stock', 'Admin', '1', '09-03-2024', '1'),
(32, '', '105', '100', 'Opening Stock', 'Admin', '1', '09-03-2024', '1'),
(33, '', '106', '10', 'Opening Stock', 'Admin', '1', '09-03-2024', '1'),
(34, '', '107', '10', 'Opening Stock', 'Admin', '1', '09-03-2024', '1'),
(35, '', '108', '10', 'Opening Stock', 'Admin', '1', '09-03-2024', '1'),
(36, '', '109', '10', 'Opening Stock', 'Admin', '1', '09-03-2024', '1'),
(37, '', '110', '10', 'Opening Stock', 'Admin', '1', '09-03-2024', '1'),
(38, '', '111', '10', 'Opening Stock', 'Admin', '1', '09-03-2024', '1'),
(39, '', '115', '1000', 'Opening Stock', 'Admin', '1', '15-03-2024', '1'),
(40, '', '116', '1000', 'Opening Stock', 'Admin', '1', '15-03-2024', '1'),
(41, '', '117', '100', 'Opening Stock', 'Admin', '1', '15-03-2024', '1'),
(42, '', '118', '100', 'Opening Stock', 'Admin', '1', '15-03-2024', '1'),
(43, '', '119', '100', 'Opening Stock', 'Admin', '1', '15-03-2024', '1'),
(44, '', '120', '100', 'Opening Stock', 'Admin', '1', '15-03-2024', '1'),
(45, '', '121', '100', 'Opening Stock', 'Admin', '1', '15-03-2024', '1'),
(46, '', '122', '100', 'Opening Stock', 'Admin', '1', '15-03-2024', '1'),
(47, '', '123', '1000', 'Opening Stock', 'Admin', '1', '15-03-2024', '1'),
(48, '', '124', '1000', 'Opening Stock', 'Admin', '1', '15-03-2024', '1');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_tbl`
--

CREATE TABLE `newsletter_tbl` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `tdate` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter_tbl`
--

INSERT INTO `newsletter_tbl` (`id`, `name`, `email`, `tdate`, `status`) VALUES
(1, 'ojo', 'ojo@gmail.com', '2023-11-23', '1'),
(2, 'annonymous', 'dseatouthub01@gmail.com', '2023-11-23', '1');

-- --------------------------------------------------------

--
-- Table structure for table `policy_tbl`
--

CREATE TABLE `policy_tbl` (
  `id` int(10) NOT NULL,
  `descc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `policy_tbl`
--

INSERT INTO `policy_tbl` (`id`, `descc`) VALUES
(1, '<p>this is the privacy policy page</p>');

-- --------------------------------------------------------

--
-- Table structure for table `products_tbl`
--

CREATE TABLE `products_tbl` (
  `id` int(10) NOT NULL,
  `pcode` varchar(20) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `price` varchar(20) NOT NULL,
  `discount` varchar(20) NOT NULL,
  `over` varchar(500) NOT NULL,
  `descc` text NOT NULL,
  `cat` varchar(10) NOT NULL,
  `upc` varchar(50) NOT NULL,
  `vendor` varchar(10) NOT NULL,
  `datein` varchar(20) NOT NULL,
  `store` varchar(10) NOT NULL,
  `emp` varchar(10) NOT NULL,
  `nature` varchar(10) NOT NULL,
  `img1` varchar(20) NOT NULL,
  `img2` varchar(20) NOT NULL,
  `img3` varchar(20) NOT NULL,
  `feat` varchar(10) NOT NULL DEFAULT '0',
  `pimg` varchar(100) NOT NULL DEFAULT 'uploads/cartfine.png',
  `pimg2` varchar(200) NOT NULL DEFAULT 'uploads/cartfine.png',
  `pimg3` varchar(200) NOT NULL DEFAULT 'uploads/cartfine.png',
  `status` varchar(10) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT '1',
  `kg` varchar(10) NOT NULL DEFAULT '1',
  `rank` varchar(10) NOT NULL,
  `typeid` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_tbl`
--

INSERT INTO `products_tbl` (`id`, `pcode`, `pname`, `price`, `discount`, `over`, `descc`, `cat`, `upc`, `vendor`, `datein`, `store`, `emp`, `nature`, `img1`, `img2`, `img3`, `feat`, `pimg`, `pimg2`, `pimg3`, `status`, `type`, `kg`, `rank`, `typeid`) VALUES
(30, '101', 'Single Rooms', '45000', '0', 'Our facilities and contents in the room includes; 40 inches TV, Air-Conditioner, Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress.', 'Our facilities and contents in the room includes; 40 inches TV, Air-Conditioner, Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress.', '17', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/24832single.jpeg', 'uploads/15583single.jpeg', 'uploads/30090single.jpeg', '0', '1', '1', '', '1'),
(31, '102', 'Standard Room', '50000', '0', 'Standard Rooms It is a bigger size room than the single room. Facilities and contents in the room includes; 40 inches TV, Air-Conditioner, Refrigerator, FREE WiFi, , Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress.', 'Standard Rooms\r\nIt is a bigger size room than the single room. Facilities and contents in the room includes; 40 inches TV, Air-Conditioner, Refrigerator, FREE WiFi, , Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress.', '16', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/19869standard.jpeg', 'uploads/21472standard.jpeg', 'uploads/16806standard.jpeg', '1', '1', '1', '', '1'),
(32, '103', 'Deluxe room', '55000', '0', 'Deluxe Rooms A spacious room with 40 inches TV, Air-Conditioner, Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress.', 'Deluxe Rooms\r\nA spacious room with 40 inches TV, Air-Conditioner, Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress.', '15', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/27900deluxe.jpeg', 'uploads/17931deluxe.jpeg', 'uploads/886deluxe.jpeg', '1', '1', '1', '', '1'),
(33, '104', 'Super Deluxe Room', '65000', '0', 'Super Deluxe Rooms A more spacious room with 40 inches TV, Air-Conditioner, Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress.', 'Super Deluxe Rooms\r\nA more spacious room with 40 inches TV, Air-Conditioner, Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress.', '14', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/973super del.jpeg', 'uploads/25552super del.jpeg', 'uploads/30101super del.jpeg', '1', '1', '1', '', '1'),
(34, '105', '2 Connecting Rooms', '135000', '', 'Connecting Room This room has a twin door in-between and the facilities and contents in the room includes; 40 inches TV, Air-Conditioner, Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress.', 'Connecting Room\r\nThis room has a twin door in-between and the facilities and contents in the room includes; 40 inches TV, Air-Conditioner, Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress.', '13', '<br /><b>Notice</b>:  Undefined variable: upc in <', '13', '', '1', 'Admin', '1', '', '', '', '0', 'uploads/6698connect.jpeg', 'uploads/32657connect.jpeg', 'uploads/19563connect.jpeg', '1', '1', '1', '', '1'),
(35, '106', 'Royal Room', '70000', '0', 'Royal Room A well furnished room with 40 inches TV, Air-Conditioner, Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress.', 'Royal Room\r\nA well furnished room with 40 inches TV, Air-Conditioner, Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress.', '12', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/10310royal.jpeg', 'uploads/2397royal.jpeg', 'uploads/4768royal.jpeg', '1', '1', '1', '', '1'),
(36, '107', 'Royal Room (Exclusive)', '75000', '0', 'Royal Room Exclusive A well furnished room with 40 inches TV, Air-Conditioner, Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress.', 'Royal Room Exclusive\r\nA well furnished room with 40 inches TV, Air-Conditioner, Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress.', '10', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/25123royal exc.jpeg', 'uploads/16030royal exc.jpeg', 'uploads/28828royal exc.jpeg', '1', '1', '1', '', '1'),
(37, '108', '2 Bedroom', '200000', '0', '2 Bedroom Apartment Each of the two(2) rooms is en-suite with 40 inches TV in each room inclusive of the sitting room , Air-Conditioner, Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress. There is a well equipped kitchenette facilities.', '2 Bedroom Apartment\r\nEach of the two(2) rooms is en-suite with 40 inches TV in each room inclusive of the sitting room , Air-Conditioner, Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress. There is a well equipped kitchenette facilities.', '9', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/33622bed.jpeg', 'uploads/268572bed.jpeg', 'uploads/196302bed.jpeg', '1', '1', '1', '', '2'),
(38, '109', '3 Bedroom', '230000', '0', '3 Bedroom Apartment Each of the three (3) bed rooms is en-suite with 40 inches TV, Air-Conditioner, -Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress. There is a well equipped kitchenette facilities.', '3 Bedroom Apartment\r\nEach of the three (3) bed rooms is en-suite with 40 inches TV, Air-Conditioner, -Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress. There is a well equipped kitchenette facilities.', '8', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/175983bed.jpeg', 'uploads/189973bed.jpeg', 'uploads/29043bed.jpeg', '1', '1', '1', '', '2'),
(39, '110', '4 Bedroom', '280000', '0', '4 Bedroom Apartment Each of the four (4) bed rooms is en-suite with 40 inches TV, Air-Conditioner, -Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress. There is a well equipped kitchenette facilities.', '4 Bedroom Apartment\r\nEach of the four (4) bed rooms is en-suite with 40 inches TV, Air-Conditioner, -Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress. There is a well equipped kitchenette facilities.', '7', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/314964bed.jpeg', 'uploads/11594bed.jpeg', 'uploads/160844bed.jpeg', '1', '1', '1', '', '2'),
(40, '111', '5 Bedroom', '350000', '0', '5 Bedroom Apartment Each of the five (5) bed rooms is en-suite with 40 inches TV, Air-Conditioner, -Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress. There is a well equipped kitchenette facilities.', '5 Bedroom Apartment\r\nEach of the five (5) bed rooms is en-suite with 40 inches TV, Air-Conditioner, -Refrigerator, FREE WiFi, Electric Kettle, Tea/Coffee, Sweet & Biscuit, Mini Safe, Sofa Chair, Coffee Table, Reading Table & a Chair and 10 inches size Orthopedic Mattress. There is a well equipped kitchenette facilities.', '6', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/274415bed.jpeg', 'uploads/280365bed.jpeg', 'uploads/15875bed.jpeg', '1', '1', '1', '', '2'),
(41, '115', 'Delux (Pent House)', '60000', '0', 'Delux (Pent House)', 'Delux (Pent House)', '18', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/cartfine.png', 'uploads/cartfine.png', 'uploads/cartfine.png', '1', '1', '1', '', '1'),
(42, '116', 'Exclusive Self Contain', '90000', '0', 'Exclusive Self Contain', 'Exclusive Self Contain', '19', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/cartfine.png', 'uploads/cartfine.png', 'uploads/cartfine.png', '1', '1', '1', '', '1'),
(43, '117', 'Executive Suites', '130000', '0', 'Executive Suites', 'Executive Suites', '20', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/cartfine.png', 'uploads/cartfine.png', 'uploads/cartfine.png', '1', '1', '1', '', '1'),
(44, '118', 'Kings Suites', '140000', '0', 'Kings Suites', 'Kings Suites', '21', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/cartfine.png', 'uploads/cartfine.png', 'uploads/cartfine.png', '1', '1', '1', '', '1'),
(45, '119', 'Superior Suites', '145000', '0', 'Superior Suites', 'Superior Suites', '22', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/cartfine.png', 'uploads/cartfine.png', 'uploads/cartfine.png', '1', '1', '1', '', '1'),
(46, '120', 'Premier Suites', '150000', '0', 'Premier Suites', 'Premier Suites', '23', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/cartfine.png', 'uploads/cartfine.png', 'uploads/cartfine.png', '1', '1', '1', '', '1'),
(47, '121', 'Noble Room', '75000', '0', 'Noble Room', 'Noble Room', '24', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/cartfine.png', 'uploads/cartfine.png', 'uploads/cartfine.png', '1', '1', '1', '', '1'),
(48, '122', 'Abasifreke Hall', '600000', '0', 'Abasifreke Hall', 'Abasifreke Hall', '25', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/cartfine.png', 'uploads/cartfine.png', 'uploads/cartfine.png', '1', '1', '1', '', '3'),
(49, '123', 'Uduak Abasi Hall', '200000', '0', 'Uduak Abasi Hall', 'Uduak Abasi Hall', '26', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/cartfine.png', 'uploads/cartfine.png', 'uploads/cartfine.png', '1', '1', '1', '', '3'),
(50, '124', 'Adiaha Hall', '250000', '0', 'Adiaha Hall', 'Adiaha Hall', '27', '0', '0', '0', '0', 'Admin', '0', '', '', '', '0', 'uploads/cartfine.png', 'uploads/cartfine.png', 'uploads/cartfine.png', '1', '1', '1', '', '3');

-- --------------------------------------------------------

--
-- Table structure for table `refund_tbl`
--

CREATE TABLE `refund_tbl` (
  `id` int(10) NOT NULL,
  `descc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refund_tbl`
--

INSERT INTO `refund_tbl` (`id`, `descc`) VALUES
(1, '<p>this is the refund policy</p>');

-- --------------------------------------------------------

--
-- Table structure for table `review_tbl`
--

CREATE TABLE `review_tbl` (
  `id` int(10) NOT NULL,
  `star` varchar(10) NOT NULL,
  `comment` text NOT NULL,
  `user` varchar(10) NOT NULL,
  `pcode` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '0',
  `tdate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review_tbl`
--

INSERT INTO `review_tbl` (`id`, `star`, `comment`, `user`, `pcode`, `status`, `tdate`) VALUES
(2, '3', '', '9', '08202334329', '0', ''),
(4, '4', 'Great product', 'Chidiebere', '08202385659', '1', '2023-11-21'),
(5, '5', '', 'Chidiebere', '08202369140', '0', '2023-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `roles_tbl`
--

CREATE TABLE `roles_tbl` (
  `id` int(10) NOT NULL,
  `page` varchar(100) NOT NULL,
  `cashier` varchar(10) NOT NULL DEFAULT '0',
  `manager` int(11) NOT NULL DEFAULT '0',
  `groupie` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles_tbl`
--

INSERT INTO `roles_tbl` (`id`, `page`, `cashier`, `manager`, `groupie`) VALUES
(1, 'Make a Sale', '1', 0, '1'),
(2, 'Back Date Sales', '0', 1, '1'),
(3, 'Create Sales Orders', '1', 1, '1'),
(4, 'Add New Customer', '1', 1, '1'),
(5, 'Edit/Delete Customer', '0', 1, '1'),
(6, 'Receive Customer Payments', '1', 1, '1'),
(7, 'Track Customer Invoices', '1', 1, '1'),
(8, 'Reprint Invoices', '0', 1, '1'),
(9, 'Reverse Sales', '0', 0, '1'),
(10, 'Add New Vendors', '0', 1, '2'),
(11, 'Edit/Delete Vendors', '0', 0, '2'),
(12, 'Make a Purchase/Receive Inventory', '0', 1, '2'),
(13, 'View Purchase History', '1', 1, '2'),
(14, 'Pay Outstanding Bills', '1', 1, '2'),
(15, 'Track Bills', '0', 1, '2'),
(16, 'Add New Product', '0', 1, '3'),
(17, 'Edit/Delete Product', '1', 0, '3'),
(18, 'Adjust Inventory', '0', 0, '3'),
(19, 'View Product History', '0', 1, '3'),
(20, 'View Master Stock', '0', 1, '3'),
(21, 'Add New Category', '0', 1, '3'),
(22, 'Edit/Delete Category', '1', 1, '3'),
(23, 'Add Expenses', '1', 1, '4'),
(24, 'Add New Transfers/Deposits', '0', 1, '5'),
(25, 'Edit Transfers/Deposits', '0', 1, '5'),
(26, 'View Sales Report', '0', 0, '6'),
(27, 'View Inventory Report', '0', 1, '6'),
(28, 'View Profit & Loss Report', '0', 0, '6'),
(29, 'View Account Balances', '0', 1, '6'),
(30, 'Send Reports', '0', 0, '6'),
(31, 'Manage Employee Settings', '0', 0, '7'),
(32, 'Manage User Settings', '0', 0, '7'),
(33, 'Manage SMTP Settings', '0', 0, '7'),
(34, 'Edit Expenses', '0', 1, '4'),
(35, 'End of Day Report', '0', 1, '1'),
(50, 'Allow Sales When Quantity is Zero or Negative', '0', 0, '0'),
(51, 'Display Item Quantity When Selling', '1', 0, '0'),
(52, 'Activate Default Walk-in Customer', '0', 0, '0'),
(53, 'Set Item Re-Order Quantity Level', '5', 0, '10'),
(54, 'Set Days to Product Expiry Notification', '60', 0, '10');

-- --------------------------------------------------------

--
-- Table structure for table `size_tbl`
--

CREATE TABLE `size_tbl` (
  `id` int(10) NOT NULL,
  `pcode` varchar(400) NOT NULL,
  `size` varchar(400) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `size_tbl`
--

INSERT INTO `size_tbl` (`id`, `pcode`, `size`, `status`) VALUES
(2, '08202385659', 'XL', '1'),
(3, '08202385659', 'L', '1'),
(4, '08202385659', 'S', '1'),
(5, '08202385659', 'White', '1');

-- --------------------------------------------------------

--
-- Table structure for table `slider_tbl`
--

CREATE TABLE `slider_tbl` (
  `id` int(10) NOT NULL,
  `imagesrc` varchar(200) NOT NULL,
  `sectext` varchar(200) NOT NULL,
  `maintxt` varchar(300) NOT NULL,
  `linko` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_tbl`
--

INSERT INTO `slider_tbl` (`id`, `imagesrc`, `sectext`, `maintxt`, `linko`) VALUES
(1, 'uploads/12712royal.jpeg', '', 'We are everything Comfort', ''),
(2, 'uploads/9127standard.jpeg', ' ', ' ', 'dddd'),
(3, 'uploads/7188offer-2.png', '20% off the all order', 'Ad Banner Text 1 Here', 'dddd'),
(4, 'uploads/5973offer-1.png', '20% off the all order', 'Ad Banner Text 2 Here', 'dddd');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_tbl`
--

CREATE TABLE `smtp_tbl` (
  `id` int(10) NOT NULL,
  `host` varchar(200) NOT NULL,
  `email` varchar(500) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `name` varchar(500) NOT NULL,
  `port` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smtp_tbl`
--

INSERT INTO `smtp_tbl` (`id`, `host`, `email`, `pass`, `name`, `port`) VALUES
(1, 'your host name here', 'your username here', 'email password here', 'Ultra Ecommerce', '465');

-- --------------------------------------------------------

--
-- Table structure for table `states_tbl`
--

CREATE TABLE `states_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COMMENT='States in Nigeria.';

--
-- Dumping data for table `states_tbl`
--

INSERT INTO `states_tbl` (`id`, `name`) VALUES
(1, 'Abia'),
(2, 'Adamawa'),
(3, 'Akwa Ibom'),
(4, 'Anambra'),
(5, 'Bauchi'),
(6, 'Bayelsa'),
(7, 'Benue'),
(8, 'Borno'),
(9, 'Cross River'),
(10, 'Delta'),
(11, 'Ebonyi'),
(12, 'Edo'),
(13, 'Ekiti'),
(14, 'Enugu'),
(15, 'FCT Abuja'),
(16, 'Gombe'),
(17, 'Imo'),
(18, 'Jigawa'),
(19, 'Kaduna'),
(20, 'Kano'),
(21, 'Katsina'),
(22, 'Kebbi'),
(23, 'Kogi'),
(24, 'Kwara'),
(25, 'Lagos'),
(26, 'Nasarawa'),
(27, 'Niger'),
(28, 'Ogun'),
(29, 'Ondo'),
(30, 'Osun'),
(31, 'Oyo'),
(32, 'Plateau'),
(33, 'Rivers'),
(34, 'Sokoto'),
(35, 'Taraba'),
(36, 'Yobe'),
(37, 'Zamfara');

-- --------------------------------------------------------

--
-- Table structure for table `store_tbl`
--

CREATE TABLE `store_tbl` (
  `id` int(10) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_tbl`
--

INSERT INTO `store_tbl` (`id`, `sname`, `status`) VALUES
(1, 'Lagos General Warehouse', '1');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPPLIER_ID` int(11) NOT NULL,
  `COMPANY_NAME` varchar(50) DEFAULT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL,
  `STATUS` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `COMPANY_NAME`, `LOCATION_ID`, `PHONE_NUMBER`, `STATUS`) VALUES
(11, 'System', 114, '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `track_tbl`
--

CREATE TABLE `track_tbl` (
  `id` int(10) NOT NULL,
  `ref` varchar(200) NOT NULL,
  `activity` varchar(500) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_tbl`
--

INSERT INTO `track_tbl` (`id`, `ref`, `activity`, `time`) VALUES
(1, '2023-11-1800009', 'Item Shipped from Lagos to Ogun', '2023-11-21 02:07:23'),
(2, 'F23111756509', 'Item Shipped from Lagos to Ogun', '2023-11-21 02:16:11'),
(3, '2023-11-1800009', 'Item has arrived Ogun and ready for collection', '2023-11-21 02:33:48'),
(4, '2023-11-1800009', 'Item has been delivered', '2023-11-21 02:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TYPE_ID` int(11) NOT NULL,
  `TYPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TYPE_ID`, `TYPE`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `TYPE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `EMPLOYEE_ID`, `USERNAME`, `PASSWORD`, `TYPE_ID`) VALUES
(1, 1, 'admin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `u_id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `type` varchar(9) NOT NULL DEFAULT '2',
  `lname` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `active` varchar(20) NOT NULL DEFAULT '1',
  `token` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(400) NOT NULL,
  `state` varchar(200) NOT NULL,
  `zip` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`u_id`, `email`, `pass`, `type`, `lname`, `fname`, `country`, `phone`, `active`, `token`, `address`, `city`, `state`, `zip`) VALUES
(1, 'admin@admin.com', '123', '1', '', '', '', '', '1', '', '', '', '', ''),
(9, 'user@user.com', '123', '2', 'Rafael', 'Chidiebere', '160', '09010638860', '1', '876647', 'Grace bill Road', 'uyo', 'Ogun', '234567'),
(10, 'gracebill@gmail.com', '123', '2', 'dert', 'rtyy', '160', '45677', '1', '925415', 'derr', '0', '0', '0'),
(11, 'ekems@gmail.com', '815', '2', '', 'Ekemini', 'Nigeria', '34566', '1', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_tbl`
--

CREATE TABLE `vendor_tbl` (
  `id` int(10) NOT NULL,
  `vname` varchar(300) NOT NULL,
  `vphone` varchar(15) NOT NULL,
  `vemail` varchar(100) NOT NULL,
  `vabout` text NOT NULL,
  `vadd` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_tbl`
--

INSERT INTO `vendor_tbl` (`id`, `vname`, `vphone`, `vemail`, `vabout`, `vadd`, `status`) VALUES
(1, 'Admin', '08132722283', 'hello@softwarehub.ng', 'Admin Store is a one stop shop for everything technology. We offer the best technological gadgets and wears with world best standards.\r\n\r\nOur Rates are the best when it comes to ecommerce. Try us today and you will always come back.', '#105 Ikeja Main Mall, Lagos', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_tbl`
--
ALTER TABLE `about_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_tbl`
--
ALTER TABLE `cart_tbl`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `cases_tbl`
--
ALTER TABLE `cases_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_tbl`
--
ALTER TABLE `category_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities_tbl`
--
ALTER TABLE `cities_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `colour_tbl`
--
ALTER TABLE `colour_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colour_type_tbl`
--
ALTER TABLE `colour_type_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_tbl`
--
ALTER TABLE `company_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_tbl`
--
ALTER TABLE `contact_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_tbl`
--
ALTER TABLE `country_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_tbl`
--
ALTER TABLE `coupon_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_ID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`JOB_ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LOCATION_ID`);

--
-- Indexes for table `measurement_tbl`
--
ALTER TABLE `measurement_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movement_tbl`
--
ALTER TABLE `movement_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_tbl`
--
ALTER TABLE `newsletter_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policy_tbl`
--
ALTER TABLE `policy_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_tbl`
--
ALTER TABLE `products_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_tbl`
--
ALTER TABLE `refund_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_tbl`
--
ALTER TABLE `review_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_tbl`
--
ALTER TABLE `roles_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size_tbl`
--
ALTER TABLE `size_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_tbl`
--
ALTER TABLE `slider_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_tbl`
--
ALTER TABLE `smtp_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states_tbl`
--
ALTER TABLE `states_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_tbl`
--
ALTER TABLE `store_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUPPLIER_ID`),
  ADD KEY `LOCATION_ID` (`LOCATION_ID`);

--
-- Indexes for table `track_tbl`
--
ALTER TABLE `track_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`TYPE_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TYPE_ID` (`TYPE_ID`),
  ADD KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `vendor_tbl`
--
ALTER TABLE `vendor_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_tbl`
--
ALTER TABLE `about_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart_tbl`
--
ALTER TABLE `cart_tbl`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `cases_tbl`
--
ALTER TABLE `cases_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category_tbl`
--
ALTER TABLE `category_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cities_tbl`
--
ALTER TABLE `cities_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=768;

--
-- AUTO_INCREMENT for table `colour_tbl`
--
ALTER TABLE `colour_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `colour_type_tbl`
--
ALTER TABLE `colour_type_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company_tbl`
--
ALTER TABLE `company_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_tbl`
--
ALTER TABLE `contact_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `country_tbl`
--
ALTER TABLE `country_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupon_tbl`
--
ALTER TABLE `coupon_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `measurement_tbl`
--
ALTER TABLE `measurement_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movement_tbl`
--
ALTER TABLE `movement_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `newsletter_tbl`
--
ALTER TABLE `newsletter_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `policy_tbl`
--
ALTER TABLE `policy_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products_tbl`
--
ALTER TABLE `products_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `refund_tbl`
--
ALTER TABLE `refund_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review_tbl`
--
ALTER TABLE `review_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles_tbl`
--
ALTER TABLE `roles_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `size_tbl`
--
ALTER TABLE `size_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider_tbl`
--
ALTER TABLE `slider_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `smtp_tbl`
--
ALTER TABLE `smtp_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_tbl`
--
ALTER TABLE `store_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SUPPLIER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `track_tbl`
--
ALTER TABLE `track_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `u_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vendor_tbl`
--
ALTER TABLE `vendor_tbl`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
