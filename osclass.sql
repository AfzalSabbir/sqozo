-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2021 at 03:06 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osclass`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_admin`
--

CREATE TABLE `oc_t_admin` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_username` varchar(40) NOT NULL,
  `s_password` char(60) NOT NULL,
  `s_email` varchar(100) DEFAULT NULL,
  `s_secret` varchar(40) DEFAULT NULL,
  `b_moderator` tinyint(1) NOT NULL DEFAULT '0',
  `s_moderator_access` varchar(1000) DEFAULT NULL,
  `i_login_fails` int(3) DEFAULT '0',
  `dt_login_fail_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_admin`
--

INSERT INTO `oc_t_admin` (`pk_i_id`, `s_name`, `s_username`, `s_password`, `s_email`, `s_secret`, `b_moderator`, `s_moderator_access`, `i_login_fails`, `dt_login_fail_date`) VALUES
(1, 'Administrator', 'root', '$2y$15$DobPCtmgwgneUkATqp9q/uuvnzbvoBZLSAwy9Dy0E1ADV84xkLEta', 'afzalbd1@gmail.com', NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_alerts`
--

CREATE TABLE `oc_t_alerts` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `s_email` varchar(100) DEFAULT NULL,
  `fk_i_user_id` int(10) UNSIGNED DEFAULT NULL,
  `s_search` longtext,
  `s_secret` varchar(40) DEFAULT NULL,
  `b_active` tinyint(1) NOT NULL DEFAULT '0',
  `e_type` enum('INSTANT','HOURLY','DAILY','WEEKLY','CUSTOM') NOT NULL,
  `dt_date` datetime DEFAULT NULL,
  `dt_unsub_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_alerts_sent`
--

CREATE TABLE `oc_t_alerts_sent` (
  `d_date` date NOT NULL,
  `i_num_alerts_sent` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_ban_rule`
--

CREATE TABLE `oc_t_ban_rule` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(250) NOT NULL DEFAULT '',
  `s_ip` varchar(50) NOT NULL DEFAULT '',
  `s_email` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_category`
--

CREATE TABLE `oc_t_category` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `fk_i_parent_id` int(10) UNSIGNED DEFAULT NULL,
  `i_expiration_days` int(3) UNSIGNED NOT NULL DEFAULT '0',
  `i_position` int(2) UNSIGNED NOT NULL DEFAULT '0',
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `b_price_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `s_icon` varchar(250) DEFAULT NULL,
  `s_color` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_category`
--

INSERT INTO `oc_t_category` (`pk_i_id`, `fk_i_parent_id`, `i_expiration_days`, `i_position`, `b_enabled`, `b_price_enabled`, `s_icon`, `s_color`) VALUES
(1, NULL, 0, 1, 1, 1, NULL, NULL),
(2, NULL, 0, 2, 1, 1, NULL, NULL),
(3, NULL, 0, 3, 1, 1, NULL, NULL),
(4, NULL, 0, 4, 1, 1, NULL, NULL),
(5, NULL, 0, 5, 1, 1, NULL, NULL),
(6, NULL, 0, 6, 1, 1, NULL, NULL),
(7, NULL, 0, 7, 1, 1, NULL, NULL),
(8, NULL, 0, 8, 1, 1, NULL, NULL),
(9, 1, 0, 1, 1, 1, NULL, NULL),
(10, 1, 0, 2, 1, 1, NULL, NULL),
(11, 1, 0, 3, 1, 1, NULL, NULL),
(12, 1, 0, 4, 1, 1, NULL, NULL),
(13, 1, 0, 5, 1, 1, NULL, NULL),
(14, 1, 0, 6, 1, 1, NULL, NULL),
(15, 1, 0, 7, 1, 1, NULL, NULL),
(16, 1, 0, 8, 1, 1, NULL, NULL),
(17, 1, 0, 9, 1, 1, NULL, NULL),
(18, 1, 0, 10, 1, 1, NULL, NULL),
(19, 1, 0, 11, 1, 1, NULL, NULL),
(20, 1, 0, 12, 1, 1, NULL, NULL),
(21, 1, 0, 13, 1, 1, NULL, NULL),
(22, 1, 0, 14, 1, 1, NULL, NULL),
(23, 1, 0, 15, 1, 1, NULL, NULL),
(24, 1, 0, 16, 1, 1, NULL, NULL),
(25, 1, 0, 17, 1, 1, NULL, NULL),
(26, 1, 0, 18, 1, 1, NULL, NULL),
(27, 1, 0, 19, 1, 1, NULL, NULL),
(28, 1, 0, 20, 1, 1, NULL, NULL),
(29, 1, 0, 21, 1, 1, NULL, NULL),
(30, 1, 0, 22, 1, 1, NULL, NULL),
(31, 2, 0, 1, 1, 1, NULL, NULL),
(32, 2, 0, 2, 1, 1, NULL, NULL),
(33, 2, 0, 3, 1, 1, NULL, NULL),
(34, 2, 0, 4, 1, 1, NULL, NULL),
(35, 2, 0, 5, 1, 1, NULL, NULL),
(36, 2, 0, 6, 1, 1, NULL, NULL),
(37, 2, 0, 7, 1, 1, NULL, NULL),
(38, 3, 0, 1, 1, 1, NULL, NULL),
(39, 3, 0, 2, 1, 1, NULL, NULL),
(40, 3, 0, 3, 1, 1, NULL, NULL),
(41, 3, 0, 4, 1, 1, NULL, NULL),
(42, 3, 0, 5, 1, 1, NULL, NULL),
(43, 4, 0, 1, 1, 1, NULL, NULL),
(44, 4, 0, 2, 1, 1, NULL, NULL),
(45, 4, 0, 3, 1, 1, NULL, NULL),
(46, 4, 0, 4, 1, 1, NULL, NULL),
(47, 4, 0, 5, 1, 1, NULL, NULL),
(48, 4, 0, 6, 1, 1, NULL, NULL),
(49, 4, 0, 7, 1, 1, NULL, NULL),
(50, 4, 0, 8, 1, 1, NULL, NULL),
(51, 4, 0, 9, 1, 1, NULL, NULL),
(52, 5, 0, 1, 1, 1, NULL, NULL),
(53, 5, 0, 2, 1, 1, NULL, NULL),
(54, 5, 0, 3, 1, 1, NULL, NULL),
(55, 5, 0, 4, 1, 1, NULL, NULL),
(56, 5, 0, 5, 1, 1, NULL, NULL),
(57, 5, 0, 6, 1, 1, NULL, NULL),
(58, 5, 0, 7, 1, 1, NULL, NULL),
(59, 5, 0, 8, 1, 1, NULL, NULL),
(60, 5, 0, 9, 1, 1, NULL, NULL),
(61, 5, 0, 10, 1, 1, NULL, NULL),
(62, 5, 0, 11, 1, 1, NULL, NULL),
(63, 6, 0, 1, 1, 1, NULL, NULL),
(64, 6, 0, 2, 1, 1, NULL, NULL),
(65, 6, 0, 3, 1, 1, NULL, NULL),
(66, 6, 0, 4, 1, 1, NULL, NULL),
(67, 6, 0, 5, 1, 1, NULL, NULL),
(68, 6, 0, 6, 1, 1, NULL, NULL),
(69, 7, 0, 1, 1, 1, NULL, NULL),
(70, 7, 0, 2, 1, 1, NULL, NULL),
(71, 7, 0, 3, 1, 1, NULL, NULL),
(72, 7, 0, 4, 1, 1, NULL, NULL),
(73, 7, 0, 5, 1, 1, NULL, NULL),
(74, 7, 0, 6, 1, 1, NULL, NULL),
(75, 8, 0, 1, 1, 1, NULL, NULL),
(76, 8, 0, 2, 1, 1, NULL, NULL),
(77, 8, 0, 3, 1, 1, NULL, NULL),
(78, 8, 0, 4, 1, 1, NULL, NULL),
(79, 8, 0, 5, 1, 1, NULL, NULL),
(80, 8, 0, 6, 1, 1, NULL, NULL),
(81, 8, 0, 7, 1, 1, NULL, NULL),
(82, 8, 0, 8, 1, 1, NULL, NULL),
(83, 8, 0, 9, 1, 1, NULL, NULL),
(84, 8, 0, 10, 1, 1, NULL, NULL),
(85, 8, 0, 11, 1, 1, NULL, NULL),
(86, 8, 0, 12, 1, 1, NULL, NULL),
(87, 8, 0, 13, 1, 1, NULL, NULL),
(88, 8, 0, 14, 1, 1, NULL, NULL),
(89, 8, 0, 15, 1, 1, NULL, NULL),
(90, 8, 0, 16, 1, 1, NULL, NULL),
(91, 8, 0, 17, 1, 1, NULL, NULL),
(92, 8, 0, 18, 1, 1, NULL, NULL),
(93, 8, 0, 19, 1, 1, NULL, NULL),
(94, 8, 0, 20, 1, 1, NULL, NULL),
(95, 8, 0, 21, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_category_delta`
--

CREATE TABLE `oc_t_category_delta` (
  `fk_i_category_id` int(11) UNSIGNED NOT NULL,
  `s_color` varchar(100) DEFAULT NULL,
  `s_icon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_category_delta`
--

INSERT INTO `oc_t_category_delta` (`fk_i_category_id`, `s_color`, `s_icon`) VALUES
(1, NULL, NULL),
(2, NULL, NULL),
(3, NULL, NULL),
(4, NULL, NULL),
(5, NULL, NULL),
(6, NULL, NULL),
(7, NULL, NULL),
(8, NULL, NULL),
(9, NULL, NULL),
(10, NULL, NULL),
(11, NULL, NULL),
(12, NULL, NULL),
(13, NULL, NULL),
(14, NULL, NULL),
(15, NULL, NULL),
(16, NULL, NULL),
(17, NULL, NULL),
(18, NULL, NULL),
(19, NULL, NULL),
(20, NULL, NULL),
(21, NULL, NULL),
(22, NULL, NULL),
(23, NULL, NULL),
(24, NULL, NULL),
(25, NULL, NULL),
(26, NULL, NULL),
(27, NULL, NULL),
(28, NULL, NULL),
(29, NULL, NULL),
(30, NULL, NULL),
(31, NULL, NULL),
(32, NULL, NULL),
(33, NULL, NULL),
(34, NULL, NULL),
(35, NULL, NULL),
(36, NULL, NULL),
(37, NULL, NULL),
(38, NULL, NULL),
(39, NULL, NULL),
(40, NULL, NULL),
(41, NULL, NULL),
(42, NULL, NULL),
(43, NULL, NULL),
(44, NULL, NULL),
(45, NULL, NULL),
(46, NULL, NULL),
(47, NULL, NULL),
(48, NULL, NULL),
(49, NULL, NULL),
(50, NULL, NULL),
(51, NULL, NULL),
(52, NULL, NULL),
(53, NULL, NULL),
(54, NULL, NULL),
(55, NULL, NULL),
(56, NULL, NULL),
(57, NULL, NULL),
(58, NULL, NULL),
(59, NULL, NULL),
(60, NULL, NULL),
(61, NULL, NULL),
(62, NULL, NULL),
(63, NULL, NULL),
(64, NULL, NULL),
(65, NULL, NULL),
(66, NULL, NULL),
(67, NULL, NULL),
(68, NULL, NULL),
(69, NULL, NULL),
(70, NULL, NULL),
(71, NULL, NULL),
(72, NULL, NULL),
(73, NULL, NULL),
(74, NULL, NULL),
(75, NULL, NULL),
(76, NULL, NULL),
(77, NULL, NULL),
(78, NULL, NULL),
(79, NULL, NULL),
(80, NULL, NULL),
(81, NULL, NULL),
(82, NULL, NULL),
(83, NULL, NULL),
(84, NULL, NULL),
(85, NULL, NULL),
(86, NULL, NULL),
(87, NULL, NULL),
(88, NULL, NULL),
(89, NULL, NULL),
(90, NULL, NULL),
(91, NULL, NULL),
(92, NULL, NULL),
(93, NULL, NULL),
(94, NULL, NULL),
(95, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_category_description`
--

CREATE TABLE `oc_t_category_description` (
  `fk_i_category_id` int(10) UNSIGNED NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_name` varchar(100) DEFAULT NULL,
  `s_description` text,
  `s_slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_category_description`
--

INSERT INTO `oc_t_category_description` (`fk_i_category_id`, `fk_c_locale_code`, `s_name`, `s_description`, `s_slug`) VALUES
(1, 'en_US', 'For sale', NULL, 'for-sale'),
(2, 'en_US', 'Vehicles', NULL, 'vehicles'),
(3, 'en_US', 'Classes', NULL, 'classes'),
(4, 'en_US', 'Real estate', NULL, 'real-estate'),
(5, 'en_US', 'Services', NULL, 'services'),
(6, 'en_US', 'Community', NULL, 'community'),
(7, 'en_US', 'Personals', NULL, 'personals'),
(8, 'en_US', 'Jobs', NULL, 'jobs'),
(9, 'en_US', 'Animals', NULL, 'animals'),
(10, 'en_US', 'Art - Collectibles', NULL, 'art-collectibles'),
(11, 'en_US', 'Barter', NULL, 'barter'),
(12, 'en_US', 'Books - Magazines', NULL, 'books-magazines'),
(13, 'en_US', 'Cameras - Camera Accessories', NULL, 'cameras-camera-accessories'),
(14, 'en_US', 'CDs - Records', NULL, 'cds-records'),
(15, 'en_US', 'Cell Phones - Accessories', NULL, 'cell-phones-accessories'),
(16, 'en_US', 'Clothing', NULL, 'clothing'),
(17, 'en_US', 'Computers - Hardware', NULL, 'computers-hardware'),
(18, 'en_US', 'DVD', NULL, 'dvd'),
(19, 'en_US', 'Electronics', NULL, 'electronics'),
(20, 'en_US', 'For Babies - Infants', NULL, 'for-babies-infants'),
(21, 'en_US', 'Garage Sale', NULL, 'garage-sale'),
(22, 'en_US', 'Health - Beauty', NULL, 'health-beauty'),
(23, 'en_US', 'Home - Furniture - Garden Supplies', NULL, 'home-furniture-garden-supplies'),
(24, 'en_US', 'Jewelry - Watches', NULL, 'jewelry-watches'),
(25, 'en_US', 'Musical Instruments', NULL, 'musical-instruments'),
(26, 'en_US', 'Sporting Goods - Bicycles', NULL, 'sporting-goods-bicycles'),
(27, 'en_US', 'Tickets', NULL, 'tickets'),
(28, 'en_US', 'Toys - Games - Hobbies', NULL, 'toys-games-hobbies'),
(29, 'en_US', 'Video Games - Consoles', NULL, 'video-games-consoles'),
(30, 'en_US', 'Everything Else', NULL, 'everything-else'),
(31, 'en_US', 'Cars', NULL, 'cars'),
(32, 'en_US', 'Car Parts', NULL, 'car-parts'),
(33, 'en_US', 'Motorcycles', NULL, 'motorcycles'),
(34, 'en_US', 'Boats - Ships', NULL, 'boats-ships'),
(35, 'en_US', 'RVs - Campers - Caravans', NULL, 'rvs-campers-caravans'),
(36, 'en_US', 'Trucks - Commercial Vehicles', NULL, 'trucks-commercial-vehicles'),
(37, 'en_US', 'Other Vehicles', NULL, 'other-vehicles'),
(38, 'en_US', 'Computer - Multimedia Classes', NULL, 'computer-multimedia-classes'),
(39, 'en_US', 'Language Classes', NULL, 'language-classes'),
(40, 'en_US', 'Music - Theatre - Dance Classes', NULL, 'music-theatre-dance-classes'),
(41, 'en_US', 'Tutoring - Private Lessons', NULL, 'tutoring-private-lessons'),
(42, 'en_US', 'Other Classes', NULL, 'other-classes'),
(43, 'en_US', 'Houses - Apartments for Sale', NULL, 'houses-apartments-for-sale'),
(44, 'en_US', 'Houses - Apartments for Rent', NULL, 'houses-apartments-for-rent'),
(45, 'en_US', 'Rooms for Rent - Shared', NULL, 'rooms-for-rent-shared'),
(46, 'en_US', 'Housing Swap', NULL, 'housing-swap'),
(47, 'en_US', 'Vacation Rentals', NULL, 'vacation-rentals'),
(48, 'en_US', 'Parking Spots', NULL, 'parking-spots'),
(49, 'en_US', 'Land', NULL, 'land'),
(50, 'en_US', 'Office - Commercial Space', NULL, 'office-commercial-space'),
(51, 'en_US', 'Shops for Rent - Sale', NULL, 'shops-for-rent-sale'),
(52, 'en_US', 'Babysitter - Nanny', NULL, 'babysitter-nanny'),
(53, 'en_US', 'Casting - Auditions', NULL, 'casting-auditions'),
(54, 'en_US', 'Computer', NULL, 'computer'),
(55, 'en_US', 'Event Services', NULL, 'event-services'),
(56, 'en_US', 'Health - Beauty - Fitness', NULL, 'health-beauty-fitness'),
(57, 'en_US', 'Horoscopes - Tarot', NULL, 'horoscopes-tarot'),
(58, 'en_US', 'Household - Domestic Help', NULL, 'household-domestic-help'),
(59, 'en_US', 'Moving - Storage', NULL, 'moving-storage'),
(60, 'en_US', 'Repair', NULL, 'repair'),
(61, 'en_US', 'Writing - Editing - Translating', NULL, 'writing-editing-translating'),
(62, 'en_US', 'Other Services', NULL, 'other-services'),
(63, 'en_US', 'Carpool', NULL, 'carpool'),
(64, 'en_US', 'Community Activities', NULL, 'community-activities'),
(65, 'en_US', 'Events', NULL, 'events'),
(66, 'en_US', 'Musicians - Artists - Bands', NULL, 'musicians-artists-bands'),
(67, 'en_US', 'Volunteers', NULL, 'volunteers'),
(68, 'en_US', 'Lost And Found', NULL, 'lost-and-found'),
(69, 'en_US', 'Women looking for Men', NULL, 'women-looking-for-men'),
(70, 'en_US', 'Men looking for Women', NULL, 'men-looking-for-women'),
(71, 'en_US', 'Men looking for Men', NULL, 'men-looking-for-men'),
(72, 'en_US', 'Women looking for Women', NULL, 'women-looking-for-women'),
(73, 'en_US', 'Friendship - Activity Partners', NULL, 'friendship-activity-partners'),
(74, 'en_US', 'Missed Connections', NULL, 'missed-connections'),
(75, 'en_US', 'Accounting - Finance', NULL, 'accounting-finance'),
(76, 'en_US', 'Advertising - Public Relations', NULL, 'advertising-public-relations'),
(77, 'en_US', 'Arts - Entertainment - Publishing', NULL, 'arts-entertainment-publishing'),
(78, 'en_US', 'Clerical - Administrative', NULL, 'clerical-administrative'),
(79, 'en_US', 'Customer Service', NULL, 'customer-service'),
(80, 'en_US', 'Education - Training', NULL, 'education-training'),
(81, 'en_US', 'Engineering - Architecture', NULL, 'engineering-architecture'),
(82, 'en_US', 'Healthcare', NULL, 'healthcare'),
(83, 'en_US', 'Human Resource', NULL, 'human-resource'),
(84, 'en_US', 'Internet', NULL, 'internet'),
(85, 'en_US', 'Legal', NULL, 'legal'),
(86, 'en_US', 'Manual Labor', NULL, 'manual-labor'),
(87, 'en_US', 'Manufacturing - Operations', NULL, 'manufacturing-operations'),
(88, 'en_US', 'Marketing', NULL, 'marketing'),
(89, 'en_US', 'Non-profit - Volunteer', NULL, 'non-profit-volunteer'),
(90, 'en_US', 'Real Estate', NULL, 'real-estate_1'),
(91, 'en_US', 'Restaurant - Food Service', NULL, 'restaurant-food-service'),
(92, 'en_US', 'Retail', NULL, 'retail'),
(93, 'en_US', 'Sales', NULL, 'sales'),
(94, 'en_US', 'Technology', NULL, 'technology'),
(95, 'en_US', 'Other Jobs', NULL, 'other-jobs');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_category_stats`
--

CREATE TABLE `oc_t_category_stats` (
  `fk_i_category_id` int(10) UNSIGNED NOT NULL,
  `i_num_items` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_category_stats`
--

INSERT INTO `oc_t_category_stats` (`fk_i_category_id`, `i_num_items`) VALUES
(1, 1),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 1),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_city`
--

CREATE TABLE `oc_t_city` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `fk_i_region_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(60) NOT NULL,
  `s_name_native` varchar(60) DEFAULT NULL,
  `s_slug` varchar(60) NOT NULL DEFAULT '',
  `fk_c_country_code` char(2) DEFAULT NULL,
  `b_active` tinyint(1) NOT NULL DEFAULT '1',
  `d_coord_lat` decimal(20,10) DEFAULT NULL,
  `d_coord_long` decimal(20,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_city`
--

INSERT INTO `oc_t_city` (`pk_i_id`, `fk_i_region_id`, `s_name`, `s_name_native`, `s_slug`, `fk_c_country_code`, `b_active`, `d_coord_lat`, `d_coord_long`) VALUES
(3185092, 9671048, 'Th??kurgaon', NULL, 'thakurgaon', 'BD', 1, '26.0309700000', '88.4698900000'),
(3185095, 3337200, 'Tekn??f', NULL, 'teknaf', 'BD', 1, '20.8582900000', '92.2977300000'),
(3185098, 3337179, 'Tungi', NULL, 'tungi', 'BD', 1, '23.8915400000', '90.4023200000'),
(3185099, 3477362, 'Sylhet', NULL, 'sylhet', 'BD', 1, '24.8990400000', '91.8719800000'),
(3185100, 3337179, 'Doh??r', NULL, 'dohar', 'BD', 1, '23.5931100000', '90.1425100000'),
(3185106, 13287936, 'Jam??lpur', NULL, 'jamalpur', 'BD', 1, '24.9196500000', '89.9481200000'),
(3185107, 3337166, 'Shibganj', NULL, 'shibganj', 'BD', 1, '25.0014600000', '89.3226600000'),
(3185108, 3337166, 'Shibganj', NULL, 'shibganj', 'BD', 1, '24.6850100000', '88.1563800000'),
(3185111, 3337210, 'S??tkhira', NULL, 'satkhira', 'BD', 1, '22.7081700000', '89.0718500000'),
(3185115, 3337166, 'Sirajganj', NULL, 'sirajganj', 'BD', 1, '24.4577100000', '89.7080200000'),
(3185116, 13287936, 'Netrakona', NULL, 'netrakona', 'BD', 1, '24.8835200000', '90.7289800000'),
(3185117, 3337179, 'Narsingdi', NULL, 'narsingdi', 'BD', 1, '23.9229800000', '90.7176800000'),
(3185120, 3337200, 'Sandw??p', NULL, 'sandwip', 'BD', 1, '22.5140900000', '91.4549100000'),
(3185121, 3337166, 'Sh??hz??dpur', NULL, 'shahzadpur', 'BD', 1, '24.1768700000', '89.5988000000'),
(3185127, 3337200, 'R??mganj', NULL, 'ramganj', 'BD', 1, '23.1006000000', '90.8498900000'),
(3185128, 3337166, 'R??jsh??hi', NULL, 'rajshahi', 'BD', 1, '24.3740000000', '88.6011400000'),
(3185138, 3337229, 'Pirojpur', NULL, 'pirojpur', 'BD', 1, '22.5796500000', '89.9752100000'),
(3185141, 9671048, 'Panchagarh', NULL, 'panchagarh', 'BD', 1, '26.3333800000', '88.5577700000'),
(3185148, 3337200, 'Patiya', NULL, 'patiya', 'BD', 1, '22.2954300000', '91.9790000000'),
(3185149, 9671048, 'Parbatipur', NULL, 'parbatipur', 'BD', 1, '25.6636900000', '88.9309300000'),
(3185155, 3337179, 'N??r??yanganj', NULL, 'narayanganj', 'BD', 1, '23.6135200000', '90.5029800000'),
(3185156, 3337229, 'N??lchiti', NULL, 'nalchiti', 'BD', 1, '22.6369600000', '90.2719500000'),
(3185159, 3337179, 'N??garpur', NULL, 'nagarpur', 'BD', 1, '24.0578300000', '89.8769600000'),
(3185160, 9671048, 'Nageswari', NULL, 'nageswari', 'BD', 1, '25.9681700000', '89.6915300000'),
(3185162, 13287936, 'Mymensingh', NULL, 'mymensingh', 'BD', 1, '24.7563600000', '90.4064600000'),
(3185164, 13287936, 'Mukt??g??cha', NULL, 'muktagacha', 'BD', 1, '24.7648400000', '90.2569800000'),
(3185165, 3337179, 'Mirz??pur', NULL, 'mirzapur', 'BD', 1, '24.1028700000', '90.0984100000'),
(3185166, 3477362, 'Maulavi B??z??r', NULL, 'maulavi-bazar', 'BD', 1, '24.4888800000', '91.7707500000'),
(3185167, 3337210, 'Morrelgonj', NULL, 'morrelgonj', 'BD', 1, '22.4556600000', '89.8558400000'),
(3185171, 3337229, 'Mehendiganj', NULL, 'mehendiganj', 'BD', 1, '22.8225700000', '90.5285900000'),
(3185173, 3337229, 'Mathba', NULL, 'mathba', 'BD', 1, '22.2861600000', '89.9588300000'),
(3185181, 9671048, 'Lalmonirhat', NULL, 'lalmonirhat', 'BD', 1, '25.9171900000', '89.4459500000'),
(3185183, 3337200, 'L??ksh??m', NULL, 'laksham', 'BD', 1, '23.2401800000', '91.1214300000'),
(3185186, 3337200, 'Comilla', NULL, 'comilla', 'BD', 1, '23.4618600000', '91.1850300000'),
(3185188, 9671048, 'Rangpur', NULL, 'rangpur', 'BD', 1, '25.7466400000', '89.2516600000'),
(3185191, 3337210, 'Kushtia', NULL, 'kushtia', 'BD', 1, '23.9028000000', '89.1194300000'),
(3185199, 3337210, 'K??l??ganj', NULL, 'kaliganj', 'BD', 1, '23.4096400000', '89.1380100000'),
(3185204, 3337210, 'Jhingerg??cha', NULL, 'jhingergacha', 'BD', 1, '23.1113400000', '89.0906100000'),
(3185206, 3337166, 'Joypur H??t', NULL, 'joypur-hat', 'BD', 1, '25.1014700000', '89.0273400000'),
(3185207, 3337166, 'Ishurdi', NULL, 'ishurdi', 'BD', 1, '24.1285800000', '89.0657300000'),
(3185209, 3477362, 'Habiganj', NULL, 'habiganj', 'BD', 1, '24.3804400000', '91.4129900000'),
(3185210, 3337229, 'Gaurnadi', NULL, 'gaurnadi', 'BD', 1, '22.9737200000', '90.2237600000'),
(3185218, 13287936, 'Gafargaon', NULL, 'gafargaon', 'BD', 1, '24.4320000000', '90.5585000000'),
(3185224, 3337200, 'Feni', NULL, 'feni', 'BD', 1, '23.0144000000', '91.3966000000'),
(3185236, 3337200, 'R??ipur', NULL, 'raipur', 'BD', 1, '23.0391000000', '90.7680800000'),
(3185239, 3337210, 'Sarankhola', NULL, 'sarankhola', 'BD', 1, '22.3100600000', '89.7911300000'),
(3185241, 3337179, 'Dhaka', NULL, 'dhaka', 'BD', 1, '23.7104000000', '90.4074400000'),
(3185247, 9671048, 'Chilm??ri', NULL, 'chilmari', 'BD', 1, '25.5561300000', '89.6709700000'),
(3185249, 3337200, 'Chh??galn??iya', NULL, 'chhagalnaiya', 'BD', 1, '23.0247500000', '91.5109100000'),
(3185251, 3337229, 'L??lmohan', NULL, 'lalmohan', 'BD', 1, '22.3377400000', '90.7370800000'),
(3185252, 3337200, 'Khagrachhari', NULL, 'khagrachhari', 'BD', 1, '23.1078700000', '91.9700700000'),
(3185254, 3477362, 'Chh??tak', NULL, 'chhatak', 'BD', 1, '25.0385200000', '91.6695800000'),
(3185260, 3337210, 'Bh??tp??ra Abhaynagar', NULL, 'bhatpara-abhaynagar', 'BD', 1, '23.0147200000', '89.4393600000'),
(3185262, 3337210, 'Bher??m??ra', NULL, 'bheramara', 'BD', 1, '24.0245200000', '88.9923400000'),
(3185263, 3337179, 'Bhairab B??z??r', NULL, 'bhairab-bazar', 'BD', 1, '24.0524000000', '90.9764000000'),
(3185270, 3337200, 'B??ndarban', NULL, 'bandarban', 'BD', 1, '22.1953400000', '92.2194600000'),
(3185272, 3337210, 'K??lia', NULL, 'kalia', 'BD', 1, '23.0430000000', '89.6309400000'),
(3185274, 3477362, 'Baniachang', NULL, 'baniachang', 'BD', 1, '24.5186300000', '91.3578700000'),
(3185276, 3337179, 'B??jitpur', NULL, 'bajitpur', 'BD', 1, '24.2162300000', '90.9500200000'),
(3185281, 3337210, 'Bagerhat', NULL, 'bagerhat', 'BD', 1, '22.6565700000', '89.7912300000'),
(3185283, 9671048, 'Badarganj', NULL, 'badarganj', 'BD', 1, '25.6741900000', '89.0537700000'),
(3185293, 3337210, 'Narail', NULL, 'narail', 'BD', 1, '23.1550900000', '89.4951500000'),
(3185920, 3337179, 'Tungip??ra', NULL, 'tungipara', 'BD', 1, '22.8998300000', '89.9032600000'),
(3187530, 3337179, 'Son??rgaon', NULL, 'sonargaon', 'BD', 1, '23.6500000000', '90.6166700000'),
(3188569, 13287936, 'Sarish??b??ri', NULL, 'sarishabari', 'BD', 1, '24.7512700000', '89.8312600000'),
(3189056, 3337179, 'Sakhipur', NULL, 'sakhipur', 'BD', 1, '24.3198800000', '90.1694300000'),
(3189638, 3337200, 'Raoj??n', NULL, 'raojan', 'BD', 1, '22.5351100000', '91.9191900000'),
(3191139, 3337210, 'Phultala', NULL, 'phultala', 'BD', 1, '22.7167300000', '89.5119400000'),
(3191368, 3337179, 'P??lang', NULL, 'palang', 'BD', 1, '23.2182400000', '90.3507600000'),
(3192366, 3337166, 'P??r Naogaon', NULL, 'par-naogaon', 'BD', 1, '24.8041800000', '88.9487500000'),
(3193823, 3337200, 'Nab??nagar', NULL, 'nabinagar', 'BD', 1, '23.8879100000', '90.9679200000'),
(3193946, 3337179, 'Ramnagar', NULL, 'ramnagar', 'BD', 1, '23.7772000000', '90.1760400000'),
(3196292, 3337200, 'Lakshm??pur', NULL, 'lakshmipur', 'BD', 1, '22.9443000000', '90.8300500000'),
(3197895, 3337210, 'Kesabpur', NULL, 'kesabpur', 'BD', 1, '22.9072500000', '89.2195400000'),
(3200474, 3477362, 'Jahedpur', NULL, 'jahedpur', 'BD', 1, '24.8333300000', '91.6500000000'),
(3201753, 3337200, 'H??j??ganj', NULL, 'hajiganj', 'BD', 1, '23.2519100000', '90.8550800000'),
(3203344, 3337179, 'Far??dpur', NULL, 'faridpur', 'BD', 1, '23.6061200000', '89.8406400000'),
(3203891, 9671048, 'Din??jpur', NULL, 'dinajpur', 'BD', 1, '25.6274500000', '88.6377900000'),
(3205481, 3337210, 'Uttar Char Fasson', NULL, 'uttar-char-fasson', 'BD', 1, '22.2264700000', '90.7127500000'),
(3205733, 3337200, 'Chattogram', NULL, 'chattogram', 'BD', 1, '22.3384000000', '91.8316800000'),
(3207047, 3337179, 'Char Bhadr??san', NULL, 'char-bhadrasan', 'BD', 1, '23.3091600000', '90.2269800000'),
(3209562, 3337166, 'Bera', NULL, 'bera', 'BD', 1, '24.0782100000', '89.6326200000'),
(3210565, 3337229, 'Burh??nuddin', NULL, 'burhanuddin', 'BD', 1, '22.4951800000', '90.7239100000'),
(3336133, 3337200, 'S??tkania', NULL, 'satkania', 'BD', 1, '22.0763900000', '92.0495500000'),
(3336134, 3337200, 'Cox???s B??z??r', NULL, 'cox-s-bazar', 'BD', 1, '21.4397300000', '92.0095500000'),
(3336135, 3337210, 'Khulna', NULL, 'khulna', 'BD', 1, '22.8097900000', '89.5643900000'),
(3336136, 3337229, 'Bhola', NULL, 'bhola', 'BD', 1, '22.6875900000', '90.6440300000'),
(3336137, 3337229, 'Barishal', NULL, 'barishal', 'BD', 1, '22.7049700000', '90.3701300000'),
(3336140, 3337210, 'Jessore', NULL, 'jessore', 'BD', 1, '23.1697100000', '89.2137100000'),
(3336143, 3337166, 'P??bna', NULL, 'pabna', 'BD', 1, '24.0064400000', '89.2372000000'),
(3336144, 3337179, 'T??ng??il', NULL, 'tangail', 'BD', 1, '24.2498400000', '89.9165500000'),
(3337233, 3337166, 'Bogra', NULL, 'bogra', 'BD', 1, '24.8509800000', '89.3710800000'),
(3337239, 9671048, 'P??rgaaj', NULL, 'pirgaaj', 'BD', 1, '25.8558700000', '88.3594300000'),
(3337240, 3337166, 'Naw??bganj', NULL, 'nawabganj', 'BD', 1, '24.5902500000', '88.2744400000'),
(3337245, 3337179, 'Madaripur', NULL, 'madaripur', 'BD', 1, '23.1709700000', '90.2093500000'),
(3337248, 13287936, 'Sherpur', NULL, 'sherpur', 'BD', 1, '25.0188100000', '90.0175100000'),
(3337249, 3337179, 'Kishorganj', NULL, 'kishorganj', 'BD', 1, '24.4394400000', '90.7829100000'),
(3462681, 3337200, 'Manikchari', NULL, 'manikchari', 'BD', 1, '22.8395700000', '91.8412800000'),
(3477498, 3337229, 'Bh??nd??ria', NULL, 'bhandaria', 'BD', 1, '22.4889800000', '90.0627300000'),
(8414184, 3337200, 'Bibir Hat', NULL, 'bibir-hat', 'BD', 1, '22.6834700000', '91.7905800000'),
(8545349, 9671048, 'Saidpur', NULL, 'saidpur', 'BD', 1, '25.7776900000', '88.8916900000'),
(9481843, 3337166, 'Paharpur', NULL, 'paharpur', 'BD', 1, '25.0269100000', '88.9759200000'),
(9483743, 3337166, 'Puthia', NULL, 'puthia', 'BD', 1, '24.3653700000', '88.8343100000'),
(9483813, 3337166, 'Natore', NULL, 'natore', 'BD', 1, '24.4111200000', '88.9867300000'),
(9484099, 3337210, 'Ujalpur', NULL, 'ujalpur', 'BD', 1, '23.8056200000', '88.6244400000'),
(9484878, 3337210, 'Nowlamary', NULL, 'nowlamary', 'BD', 1, '23.6734600000', '88.9888500000'),
(9645740, 3477362, 'Bahubal', NULL, 'bahubal', 'BD', 1, '24.3700000000', '91.5400000000'),
(9701354, 3337179, 'Azimpur', NULL, 'azimpur', 'BD', 1, '23.7298000000', '90.3854000000'),
(10740378, 3337210, 'Magura Sadar Upazila', NULL, 'magura-sadar-upazila', 'BD', 1, '23.4845000000', '89.4196100000'),
(11257489, 3337229, 'Rangabali Upazila', NULL, 'rangabali-upazila', 'BD', 1, '21.9333300000', '90.4333300000'),
(11283213, 3337166, 'Mahasthangarh', NULL, 'mahasthangarh', 'BD', 1, '24.9611100000', '89.3427800000'),
(11827976, 3337179, 'Paltan', NULL, 'paltan', 'BD', 1, '23.7362500000', '90.4142600000'),
(13286059, 3337200, 'Dhurung Area 2', NULL, 'dhurung-area-2', 'BD', 1, '22.6742300000', '91.7951400000'),
(13609643, 3337179, 'Parvez Ali Hossain', NULL, 'parvez-ali-hossain', 'BD', 1, '23.7875800000', '90.1648700000'),
(13609980, 3337179, 'Khanbaniara', NULL, 'khanbaniara', 'BD', 1, '23.7822500000', '90.1838200000'),
(13609983, 3337179, 'Char Golora', NULL, 'char-golora', 'BD', 1, '23.8203700000', '90.1217500000'),
(13609984, 3337179, 'Parvez Ali', NULL, 'parvez-ali', 'BD', 1, '23.8174100000', '90.1192100000'),
(13609988, 3337179, 'Joymontop', NULL, 'joymontop', 'BD', 1, '23.7878900000', '90.1647200000'),
(13745960, 3337179, 'Sayani', NULL, 'sayani', 'BD', 1, '23.7911900000', '90.1697200000'),
(13847824, 3337179, 'Purbachal American City', NULL, 'purbachal-american-city', 'BD', 1, '23.8296300000', '90.5682400000'),
(14200062, 3337179, 'Kashimnagar', NULL, 'kashimnagar', 'BD', 1, '23.8177300000', '90.1159500000'),
(14200063, 3337179, 'Swarpur', NULL, 'swarpur', 'BD', 1, '23.8178600000', '90.1148000000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_city_area`
--

CREATE TABLE `oc_t_city_area` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `fk_i_city_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_city_stats`
--

CREATE TABLE `oc_t_city_stats` (
  `fk_i_city_id` int(10) UNSIGNED NOT NULL,
  `i_num_items` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_country`
--

CREATE TABLE `oc_t_country` (
  `pk_c_code` char(2) NOT NULL,
  `s_name` varchar(80) NOT NULL,
  `s_name_native` varchar(80) DEFAULT NULL,
  `s_phone_code` varchar(10) DEFAULT NULL,
  `s_currency` varchar(10) DEFAULT NULL,
  `s_slug` varchar(80) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_country`
--

INSERT INTO `oc_t_country` (`pk_c_code`, `s_name`, `s_name_native`, `s_phone_code`, `s_currency`, `s_slug`) VALUES
('BD', 'Bangladesh', 'Bangladesh', '880', 'BDT', 'bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_country_stats`
--

CREATE TABLE `oc_t_country_stats` (
  `fk_c_country_code` char(2) NOT NULL,
  `i_num_items` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_cron`
--

CREATE TABLE `oc_t_cron` (
  `e_type` enum('INSTANT','HOURLY','DAILY','WEEKLY','CUSTOM') NOT NULL,
  `d_last_exec` datetime NOT NULL,
  `d_next_exec` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_cron`
--

INSERT INTO `oc_t_cron` (`e_type`, `d_last_exec`, `d_next_exec`) VALUES
('HOURLY', '2021-12-19 15:51:45', '2021-12-19 16:51:00'),
('DAILY', '2021-12-19 15:51:45', '2021-12-20 15:51:00'),
('WEEKLY', '2021-12-19 15:51:45', '2021-12-26 15:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_currency`
--

CREATE TABLE `oc_t_currency` (
  `pk_c_code` char(3) NOT NULL,
  `s_name` varchar(40) NOT NULL,
  `s_description` varchar(80) DEFAULT NULL,
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_currency`
--

INSERT INTO `oc_t_currency` (`pk_c_code`, `s_name`, `s_description`, `b_enabled`) VALUES
('EUR', 'European Union Euro', '???', 1),
('GBP', 'United Kingdom Pound', '??', 1),
('USD', 'United States Dollar', '$', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_item`
--

CREATE TABLE `oc_t_item` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `fk_i_user_id` int(10) UNSIGNED DEFAULT NULL,
  `fk_i_category_id` int(10) UNSIGNED NOT NULL,
  `dt_pub_date` datetime NOT NULL,
  `dt_mod_date` datetime DEFAULT NULL,
  `f_price` float DEFAULT NULL,
  `i_price` bigint(20) DEFAULT NULL,
  `fk_c_currency_code` char(3) DEFAULT NULL,
  `s_contact_name` varchar(100) DEFAULT NULL,
  `s_contact_email` varchar(140) NOT NULL,
  `s_contact_phone` varchar(100) DEFAULT NULL,
  `s_contact_other` varchar(100) DEFAULT NULL,
  `s_ip` varchar(64) NOT NULL DEFAULT '',
  `b_premium` tinyint(1) NOT NULL DEFAULT '0',
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `b_active` tinyint(1) NOT NULL DEFAULT '0',
  `b_spam` tinyint(1) NOT NULL DEFAULT '0',
  `s_secret` varchar(40) DEFAULT NULL,
  `b_show_email` tinyint(1) DEFAULT NULL,
  `b_show_phone` tinyint(1) DEFAULT '1',
  `i_renewed` int(3) DEFAULT '0',
  `dt_expiration` datetime NOT NULL DEFAULT '9999-12-31 23:59:59'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_item`
--

INSERT INTO `oc_t_item` (`pk_i_id`, `fk_i_user_id`, `fk_i_category_id`, `dt_pub_date`, `dt_mod_date`, `f_price`, `i_price`, `fk_c_currency_code`, `s_contact_name`, `s_contact_email`, `s_contact_phone`, `s_contact_other`, `s_ip`, `b_premium`, `b_enabled`, `b_active`, `b_spam`, `s_secret`, `b_show_email`, `b_show_phone`, `i_renewed`, `dt_expiration`) VALUES
(1, NULL, 9, '2021-12-19 14:48:05', NULL, NULL, NULL, NULL, 'Example author', 'osclass@example.com', '', '', '127.0.0.1', 0, 1, 1, 0, 'urHK3Ynx', 0, 0, 0, '9999-12-31 23:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_item_comment`
--

CREATE TABLE `oc_t_item_comment` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `fk_i_item_id` int(10) UNSIGNED NOT NULL,
  `dt_pub_date` datetime NOT NULL,
  `s_title` varchar(200) NOT NULL,
  `s_author_name` varchar(100) NOT NULL,
  `s_author_email` varchar(100) NOT NULL,
  `s_body` text NOT NULL,
  `i_rating` int(3) DEFAULT NULL,
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `b_active` tinyint(1) NOT NULL DEFAULT '0',
  `b_spam` tinyint(1) NOT NULL DEFAULT '0',
  `fk_i_user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_item_delta`
--

CREATE TABLE `oc_t_item_delta` (
  `fk_i_item_id` int(11) UNSIGNED NOT NULL,
  `s_phone` varchar(100) DEFAULT NULL,
  `i_condition` varchar(100) DEFAULT NULL,
  `i_transaction` varchar(100) DEFAULT NULL,
  `i_sold` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_item_delta`
--

INSERT INTO `oc_t_item_delta` (`fk_i_item_id`, `s_phone`, `i_condition`, `i_transaction`, `i_sold`) VALUES
(1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_item_description`
--

CREATE TABLE `oc_t_item_description` (
  `fk_i_item_id` int(10) UNSIGNED NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_title` varchar(100) NOT NULL,
  `s_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_item_description`
--

INSERT INTO `oc_t_item_description` (`fk_i_item_id`, `fk_c_locale_code`, `s_title`, `s_description`) VALUES
(1, 'en_US', 'Example Ad', 'Description of the example ad. Insert here some usefull description of your ad.');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_item_location`
--

CREATE TABLE `oc_t_item_location` (
  `fk_i_item_id` int(10) UNSIGNED NOT NULL,
  `fk_c_country_code` char(2) DEFAULT NULL,
  `s_country` varchar(40) DEFAULT NULL,
  `s_country_native` varchar(80) DEFAULT NULL,
  `s_address` varchar(100) DEFAULT NULL,
  `s_zip` varchar(15) DEFAULT NULL,
  `fk_i_region_id` int(10) UNSIGNED DEFAULT NULL,
  `s_region` varchar(100) DEFAULT NULL,
  `s_region_native` varchar(60) DEFAULT NULL,
  `fk_i_city_id` int(10) UNSIGNED DEFAULT NULL,
  `s_city` varchar(100) DEFAULT NULL,
  `s_city_native` varchar(60) DEFAULT NULL,
  `fk_i_city_area_id` int(10) UNSIGNED DEFAULT NULL,
  `s_city_area` varchar(200) DEFAULT NULL,
  `d_coord_lat` decimal(20,10) DEFAULT NULL,
  `d_coord_long` decimal(20,10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_item_location`
--

INSERT INTO `oc_t_item_location` (`fk_i_item_id`, `fk_c_country_code`, `s_country`, `s_country_native`, `s_address`, `s_zip`, `fk_i_region_id`, `s_region`, `s_region_native`, `fk_i_city_id`, `s_city`, `s_city_native`, `fk_i_city_area_id`, `s_city_area`, `d_coord_lat`, `d_coord_long`) VALUES
(1, NULL, 'Example country', '', '', NULL, NULL, 'Example region', NULL, NULL, 'Example city', NULL, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_item_meta`
--

CREATE TABLE `oc_t_item_meta` (
  `fk_i_item_id` int(10) UNSIGNED NOT NULL,
  `fk_i_field_id` int(10) UNSIGNED NOT NULL,
  `s_value` text,
  `s_multi` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_item_resource`
--

CREATE TABLE `oc_t_item_resource` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `fk_i_item_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(60) DEFAULT NULL,
  `s_extension` varchar(10) DEFAULT NULL,
  `s_content_type` varchar(40) DEFAULT NULL,
  `s_path` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_item_stats`
--

CREATE TABLE `oc_t_item_stats` (
  `fk_i_item_id` int(10) UNSIGNED NOT NULL,
  `i_num_views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `i_num_spam` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `i_num_repeated` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `i_num_bad_classified` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `i_num_offensive` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `i_num_expired` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `i_num_premium_views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dt_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_item_stats`
--

INSERT INTO `oc_t_item_stats` (`fk_i_item_id`, `i_num_views`, `i_num_spam`, `i_num_repeated`, `i_num_bad_classified`, `i_num_offensive`, `i_num_expired`, `i_num_premium_views`, `dt_date`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, '2021-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_item_stats_delta`
--

CREATE TABLE `oc_t_item_stats_delta` (
  `fk_i_item_id` int(11) UNSIGNED NOT NULL,
  `i_num_phone_clicks` int(10) DEFAULT '0',
  `dt_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_keywords`
--

CREATE TABLE `oc_t_keywords` (
  `s_md5` varchar(32) NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_original_text` varchar(255) NOT NULL,
  `s_anchor_text` varchar(255) NOT NULL,
  `s_normalized_text` varchar(255) NOT NULL,
  `fk_i_category_id` int(10) UNSIGNED DEFAULT NULL,
  `fk_i_city_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_latest_searches`
--

CREATE TABLE `oc_t_latest_searches` (
  `d_date` datetime NOT NULL,
  `s_search` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_locale`
--

CREATE TABLE `oc_t_locale` (
  `pk_c_code` char(5) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_short_name` varchar(40) NOT NULL,
  `s_description` varchar(100) NOT NULL,
  `s_version` varchar(20) NOT NULL,
  `s_author_name` varchar(100) NOT NULL,
  `s_author_url` varchar(100) NOT NULL,
  `s_currency_format` varchar(50) NOT NULL,
  `s_dec_point` varchar(2) DEFAULT '.',
  `s_thousands_sep` varchar(2) DEFAULT '',
  `i_num_dec` tinyint(4) DEFAULT '2',
  `s_date_format` varchar(20) NOT NULL,
  `s_stop_words` text,
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `b_enabled_bo` tinyint(1) NOT NULL DEFAULT '1',
  `b_locations_native` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_locale`
--

INSERT INTO `oc_t_locale` (`pk_c_code`, `s_name`, `s_short_name`, `s_description`, `s_version`, `s_author_name`, `s_author_url`, `s_currency_format`, `s_dec_point`, `s_thousands_sep`, `i_num_dec`, `s_date_format`, `s_stop_words`, `b_enabled`, `b_enabled_bo`, `b_locations_native`) VALUES
('en_US', 'English (US)', 'English', 'American english translation', '4.2.2', 'OsclassPoint', 'https://osclass-classifieds.com/', '{NUMBER} {CURRENCY}', '.', '', 2, 'm/d/Y', 'i,a,about,an,are,as,at,be,by,com,for,from,how,in,is,it,of,on,or,that,the,this,to,was,what,when,where,who,will,with,the', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_locations_tmp`
--

CREATE TABLE `oc_t_locations_tmp` (
  `id_location` varchar(10) NOT NULL,
  `e_type` enum('COUNTRY','REGION','CITY') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_locations_tmp`
--

INSERT INTO `oc_t_locations_tmp` (`id_location`, `e_type`) VALUES
('10740378', 'CITY'),
('11257489', 'CITY'),
('11283213', 'CITY'),
('11827976', 'CITY'),
('13286059', 'CITY'),
('13287936', 'REGION'),
('13609643', 'CITY'),
('13609980', 'CITY'),
('13609983', 'CITY'),
('13609984', 'CITY'),
('13609988', 'CITY'),
('13745960', 'CITY'),
('13847824', 'CITY'),
('14200062', 'CITY'),
('14200063', 'CITY'),
('3185092', 'CITY'),
('3185095', 'CITY'),
('3185098', 'CITY'),
('3185099', 'CITY'),
('3185100', 'CITY'),
('3185106', 'CITY'),
('3185107', 'CITY'),
('3185108', 'CITY'),
('3185111', 'CITY'),
('3185115', 'CITY'),
('3185116', 'CITY'),
('3185117', 'CITY'),
('3185120', 'CITY'),
('3185121', 'CITY'),
('3185127', 'CITY'),
('3185128', 'CITY'),
('3185138', 'CITY'),
('3185141', 'CITY'),
('3185148', 'CITY'),
('3185149', 'CITY'),
('3185155', 'CITY'),
('3185156', 'CITY'),
('3185159', 'CITY'),
('3185160', 'CITY'),
('3185162', 'CITY'),
('3185164', 'CITY'),
('3185165', 'CITY'),
('3185166', 'CITY'),
('3185167', 'CITY'),
('3185171', 'CITY'),
('3185173', 'CITY'),
('3185181', 'CITY'),
('3185183', 'CITY'),
('3185186', 'CITY'),
('3185188', 'CITY'),
('3185191', 'CITY'),
('3185199', 'CITY'),
('3185204', 'CITY'),
('3185206', 'CITY'),
('3185207', 'CITY'),
('3185209', 'CITY'),
('3185210', 'CITY'),
('3185218', 'CITY'),
('3185224', 'CITY'),
('3185236', 'CITY'),
('3185239', 'CITY'),
('3185241', 'CITY'),
('3185247', 'CITY'),
('3185249', 'CITY'),
('3185251', 'CITY'),
('3185252', 'CITY'),
('3185254', 'CITY'),
('3185260', 'CITY'),
('3185262', 'CITY'),
('3185263', 'CITY'),
('3185270', 'CITY'),
('3185272', 'CITY'),
('3185274', 'CITY'),
('3185276', 'CITY'),
('3185281', 'CITY'),
('3185283', 'CITY'),
('3185293', 'CITY'),
('3185920', 'CITY'),
('3187530', 'CITY'),
('3188569', 'CITY'),
('3189056', 'CITY'),
('3189638', 'CITY'),
('3191139', 'CITY'),
('3191368', 'CITY'),
('3192366', 'CITY'),
('3193823', 'CITY'),
('3193946', 'CITY'),
('3196292', 'CITY'),
('3197895', 'CITY'),
('3200474', 'CITY'),
('3201753', 'CITY'),
('3203344', 'CITY'),
('3203891', 'CITY'),
('3205481', 'CITY'),
('3205733', 'CITY'),
('3207047', 'CITY'),
('3209562', 'CITY'),
('3210565', 'CITY'),
('3336133', 'CITY'),
('3336134', 'CITY'),
('3336135', 'CITY'),
('3336136', 'CITY'),
('3336137', 'CITY'),
('3336140', 'CITY'),
('3336143', 'CITY'),
('3336144', 'CITY'),
('3337166', 'REGION'),
('3337179', 'REGION'),
('3337200', 'REGION'),
('3337210', 'REGION'),
('3337229', 'REGION'),
('3337233', 'CITY'),
('3337239', 'CITY'),
('3337240', 'CITY'),
('3337245', 'CITY'),
('3337248', 'CITY'),
('3337249', 'CITY'),
('3462681', 'CITY'),
('3477362', 'REGION'),
('3477498', 'CITY'),
('8414184', 'CITY'),
('8545349', 'CITY'),
('9481843', 'CITY'),
('9483743', 'CITY'),
('9483813', 'CITY'),
('9484099', 'CITY'),
('9484878', 'CITY'),
('9645740', 'CITY'),
('9671048', 'REGION'),
('9701354', 'CITY'),
('BD', 'COUNTRY');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_log`
--

CREATE TABLE `oc_t_log` (
  `dt_date` datetime NOT NULL,
  `s_section` varchar(50) NOT NULL,
  `s_action` varchar(50) NOT NULL,
  `fk_i_id` int(10) UNSIGNED NOT NULL,
  `s_data` varchar(250) NOT NULL,
  `s_ip` varchar(50) NOT NULL,
  `s_who` varchar(50) NOT NULL,
  `fk_i_who_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_log`
--

INSERT INTO `oc_t_log` (`dt_date`, `s_section`, `s_action`, `fk_i_id`, `s_data`, `s_ip`, `s_who`, `fk_i_who_id`) VALUES
('2021-12-19 14:48:05', 'item', 'add', 1, 'Example Ad', '127.0.0.1', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_meta_categories`
--

CREATE TABLE `oc_t_meta_categories` (
  `fk_i_category_id` int(10) UNSIGNED NOT NULL,
  `fk_i_field_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_meta_fields`
--

CREATE TABLE `oc_t_meta_fields` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `s_slug` varchar(255) NOT NULL,
  `e_type` enum('TEXT','NUMBER','TEL','EMAIL','COLOR','TEXTAREA','DROPDOWN','RADIO','CHECKBOX','URL','DATE','DATEINTERVAL') NOT NULL DEFAULT 'TEXT',
  `s_options` varchar(2048) DEFAULT NULL,
  `b_required` tinyint(1) NOT NULL DEFAULT '0',
  `b_searchable` tinyint(1) NOT NULL DEFAULT '0',
  `i_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_pages`
--

CREATE TABLE `oc_t_pages` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `s_internal_name` varchar(50) DEFAULT NULL,
  `b_indelible` tinyint(1) NOT NULL DEFAULT '0',
  `b_link` tinyint(1) NOT NULL DEFAULT '1',
  `b_index` tinyint(1) NOT NULL DEFAULT '1',
  `dt_pub_date` datetime NOT NULL,
  `dt_mod_date` datetime DEFAULT NULL,
  `i_order` int(3) NOT NULL DEFAULT '0',
  `s_meta` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_pages`
--

INSERT INTO `oc_t_pages` (`pk_i_id`, `s_internal_name`, `b_indelible`, `b_link`, `b_index`, `dt_pub_date`, `dt_mod_date`, `i_order`, `s_meta`) VALUES
(1, 'email_item_inquiry', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(2, 'email_user_validation', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(3, 'email_user_registration', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(4, 'email_send_friend', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(5, 'alert_email_hourly', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(6, 'alert_email_daily', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(7, 'alert_email_weekly', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(8, 'alert_email_instant', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(9, 'email_new_comment_admin', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(10, 'email_new_item_non_register_user', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(11, 'email_item_validation', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(12, 'email_admin_new_item', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(13, 'email_user_forgot_password', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(14, 'email_new_email', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(15, 'email_alert_validation', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(16, 'email_comment_validated', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(17, 'email_item_validation_non_register_user', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(18, 'email_admin_new_user', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(19, 'email_contact_user', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(20, 'email_new_comment_user', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(21, 'email_new_admin', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(22, 'email_warn_expiration', 1, 1, 1, '2021-12-19 20:48:04', NULL, 0, NULL),
(23, 'example_page', 0, 0, 1, '2021-12-19 14:48:05', '2021-12-19 14:48:05', 1, '\"\"');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_pages_description`
--

CREATE TABLE `oc_t_pages_description` (
  `fk_i_pages_id` int(10) UNSIGNED NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_title` varchar(255) NOT NULL,
  `s_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_pages_description`
--

INSERT INTO `oc_t_pages_description` (`fk_i_pages_id`, `fk_c_locale_code`, `s_title`, `s_text`) VALUES
(1, 'en_US', '{WEB_TITLE} - Someone has a question about your listing', '<p>Hi {CONTACT_NAME}!</p><p>{USER_NAME} ({USER_EMAIL}, {USER_PHONE}) left you a message about your listing <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a>:</p><p>{COMMENT}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(2, 'en_US', 'Please validate your {WEB_TITLE} account', '<p>Hi {USER_NAME},</p><p>Please validate your registration by clicking on the following link: {VALIDATION_LINK}</p><p>Thank you!</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(3, 'en_US', '{WEB_TITLE} - Registration successful!', '<p>Hi {USER_NAME},</p><p>You\'ve successfully registered for {WEB_LINK}.</p><p>Thank you!</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(4, 'en_US', 'Look at what I discovered on {WEB_TITLE}', '<p>Hi {FRIEND_NAME},</p><p>Your friend {USER_NAME} wants to share this listing with you <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a>.</p><p>Message:</p><p>{COMMENT}</p><p>Regards,</p><p>{WEB_TITLE}</p>'),
(5, 'en_US', '{WEB_TITLE} - New listings in the last hour', '<p>Hi {USER_NAME},</p><p>New listings have been published in the last hour. Take a look at them:</p><p>{ADS}</p><p>-------------</p><p>To unsubscribe from this alert, click on: {UNSUB_LINK}</p><p>{WEB_LINK}</p>'),
(6, 'en_US', '{WEB_TITLE} - New listings in the last day', '<p>Hi {USER_NAME},</p><p>New listings have been published in the last day. Take a look at them:</p><p>{ADS}</p><p>-------------</p><p>To unsubscribe from this alert, click on: {UNSUB_LINK}</p><p>{WEB_LINK}</p>'),
(7, 'en_US', '{WEB_TITLE} - New listings in the last week', '<p>Hi {USER_NAME},</p><p>New listings have been published in the last week. Take a look at them:</p><p>{ADS}</p><p>-------------</p><p>To unsubscribe from this alert, click on: {UNSUB_LINK}</p><p>{WEB_LINK}</p>'),
(8, 'en_US', '{WEB_TITLE} - New listings', '<p>Hi {USER_NAME},</p><p>A new listing has been published, check it out!</p><p>{ADS}</p><p>-------------</p><p>To unsubscribe from this alert, click on: {UNSUB_LINK}</p><p>{WEB_LINK}</p>'),
(9, 'en_US', '{WEB_TITLE} - New comment', '<p>Someone commented on the listing <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a>.</p><p>Commenter: {COMMENT_AUTHOR}<br />Commenter\'s email: {COMMENT_EMAIL}<br />Title: {COMMENT_TITLE}<br />Comment: {COMMENT_TEXT}</p>'),
(10, 'en_US', '{WEB_TITLE} - Edit options for the listing {ITEM_TITLE}', '<p>Hi {USER_NAME},</p><p>You\'re not registered at {WEB_LINK}, but you can still edit or delete the listing <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a> for a short period of time.</p><p>You can edit your listing by following this link: {EDIT_LINK}</p><p>You can delete your listing by following this link: {DELETE_LINK}</p><p>If you register as a user, you will have full access to editing options.</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(11, 'en_US', '{WEB_TITLE} - Validate your listing', '<p>Hi {USER_NAME},</p><p>You\'re receiving this e-mail because a listing has been published at {WEB_LINK}. Please validate this listing by clicking on the following link: {VALIDATION_LINK}. If you didn\'t publish this listing, please ignore this email.</p><p>Listing details:</p><p>Contact name: {USER_NAME}<br />Contact e-mail: {USER_EMAIL}</p><p>{ITEM_DESCRIPTION}</p><p>Url: {ITEM_URL}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(12, 'en_US', '{WEB_TITLE} - A new listing has been published', '<p>Dear {WEB_TITLE} admin,</p><p>You\'re receiving this email because a listing has been published at {WEB_LINK}.</p><p>Listing details:</p><p>Contact name: {USER_NAME}<br />Contact email: {USER_EMAIL}</p><p>{ITEM_DESCRIPTION}</p><p>Url: {ITEM_URL}</p><p>You can edit this listing by clicking on the following link: {EDIT_LINK}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(13, 'en_US', '{WEB_TITLE} - Recover your password', '<p>Hi {USER_NAME},</p><p>We\'ve sent you this e-mail because you\'ve requested a password reminder. Follow this link to recover it: {PASSWORD_LINK}</p><p>The link will be deactivated in 24 hours.</p><p>If you didn\'t request a password reminder, please ignore this message. This request was made from IP {IP_ADDRESS} on {DATE_TIME}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(14, 'en_US', '{WEB_TITLE} - You requested an email change', '<p>Hi {USER_NAME}</p><p>You\'re receiving this e-mail because you requested an e-mail change. Please confirm this new e-mail address by clicking on the following validation link: {VALIDATION_LINK}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(15, 'en_US', '{WEB_TITLE} - Please validate your alert', '<p>Hi {USER_NAME},</p><p>Please validate your alert registration by clicking on the following link: {VALIDATION_LINK}</p><p>Thank you!</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(16, 'en_US', '{WEB_TITLE} - Your comment has been approved', '<p>Hi {COMMENT_AUTHOR},</p><p>Your comment on <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a> has been approved.</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(17, 'en_US', '{WEB_TITLE} - Validate your listing', '<p>Hi {USER_NAME},</p><p>You\'re receiving this e-mail because you???ve published a listing at {WEB_LINK}. Please validate this listing by clicking on the following link: {VALIDATION_LINK}. If you didn\'t publish this listing, please ignore this e-mail.</p><p>Listing details:</p><p>Contact name: {USER_NAME}<br />Contact e-mail: {USER_EMAIL}</p><p>{ITEM_DESCRIPTION}</p><p>Url: {ITEM_URL}</p><p>Even if you\'re not registered at {WEB_LINK}, you can still edit or delete your listing:</p><p>You can edit your listing by following this link: {EDIT_LINK}</p><p>You can delete your listing by following this link: {DELETE_LINK}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(18, 'en_US', '{WEB_TITLE} - A new user has registered', '<p>Dear {WEB_TITLE} admin,</p><p>You\'re receiving this email because a new user has been created at {WEB_LINK}.</p><p>User details:</p><p>Name: {USER_NAME}<br />E-mail: {USER_EMAIL}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(19, 'en_US', '{WEB_TITLE} - Someone has a question for you', '<p>Hi {CONTACT_NAME}!</p><p>{USER_NAME} ({USER_EMAIL}, {USER_PHONE}) left you a message:</p><p>{COMMENT}</p><p>Regards,</p><p>{WEB_LINK}</p>'),
(20, 'en_US', '{WEB_TITLE} - Someone has commented on your listing', '<p>There\'s a new comment on the listing: <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a>.</p><p>Author: {COMMENT_AUTHOR}<br />Author\'s email: {COMMENT_EMAIL}<br />Title: {COMMENT_TITLE}<br />Comment: {COMMENT_TEXT}</p><p>{WEB_LINK}</p>'),
(21, 'en_US', '{WEB_TITLE} - Success creating admin account!', '<p>Hi {ADMIN_NAME},</p><p>The admin of {WEB_LINK} has created an account for you,</p><ul><li>Username: {USERNAME}</li><li>Password: {PASSWORD}</li></ul><p>You can access the admin panel here {WEB_ADMIN_LINK}.</p><p>Thank you!</p><p>Regards,</p>'),
(22, 'en_US', '{WEB_TITLE} - Your ad is about to expire', '<p>Hi {USER_NAME},</p><p>Your listing <a href=\"{ITEM_URL}\">{ITEM_TITLE}</a> is about to expire at {WEB_LINK}.'),
(23, 'en_US', 'Example page title', 'This is an example page description. This is a good place to put your Terms of Service or any other help information.');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_plugin_category`
--

CREATE TABLE `oc_t_plugin_category` (
  `s_plugin_name` varchar(40) NOT NULL,
  `fk_i_category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_preference`
--

CREATE TABLE `oc_t_preference` (
  `s_section` varchar(128) NOT NULL,
  `s_name` varchar(128) NOT NULL,
  `s_value` longtext NOT NULL,
  `e_type` enum('STRING','INTEGER','BOOLEAN') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_preference`
--

INSERT INTO `oc_t_preference` (`s_section`, `s_name`, `s_value`, `e_type`) VALUES
('bender', 'defaultLocationShowAs', 'dropdown', 'STRING'),
('bender', 'defaultShowAs@all', 'list', 'STRING'),
('bender', 'donation', '0', 'STRING'),
('bender', 'footer_link', '1', 'STRING'),
('bender', 'keyword_placeholder', 'ie. PHP Programmer', 'STRING'),
('bender', 'version', '315', 'STRING'),
('osclass', 'active_plugins', '', 'STRING'),
('osclass', 'admindash_columns_hidden', '', 'STRING'),
('osclass', 'admindash_widgets_collapsed', '', 'STRING'),
('osclass', 'admindash_widgets_hidden', '', 'STRING'),
('osclass', 'admin_color_scheme', '', 'STRING'),
('osclass', 'admin_language', 'en_US', 'STRING'),
('osclass', 'admin_theme', 'omega', 'STRING'),
('osclass', 'admin_toolbar_front', '0', 'BOOLEAN'),
('osclass', 'akismetKey', '', 'STRING'),
('osclass', 'allowedExt', 'png,gif,jpg,jpeg', 'STRING'),
('osclass', 'allow_report_osclass', '0', 'BOOLEAN'),
('osclass', 'auto_cron', '1', 'BOOLEAN'),
('osclass', 'auto_update', 'disabled', 'STRING'),
('osclass', 'best_fit_image', '1', 'BOOLEAN'),
('osclass', 'breadcrumbs_hide', '', 'STRING'),
('osclass', 'breadcrumbs_hide_custom', '', 'STRING'),
('osclass', 'breadcrumbs_item_category', '1', 'BOOLEAN'),
('osclass', 'breadcrumbs_item_city', '0', 'BOOLEAN'),
('osclass', 'breadcrumbs_item_country', '0', 'BOOLEAN'),
('osclass', 'breadcrumbs_item_page_title', '1', 'BOOLEAN'),
('osclass', 'breadcrumbs_item_parent_categories', '0', 'BOOLEAN'),
('osclass', 'breadcrumbs_item_region', '0', 'BOOLEAN'),
('osclass', 'can_deactivate_items', '0', 'BOOLEAN'),
('osclass', 'comments_per_page', '10', 'INTEGER'),
('osclass', 'contactEmail', 'afzalbd1@gmail.com', 'STRING'),
('osclass', 'contact_attachment', '0', 'BOOLEAN'),
('osclass', 'csrf_name', 'CSRF900209536', 'STRING'),
('osclass', 'css_banned_pages', '', 'STRING'),
('osclass', 'css_banned_words', 'font,awesome', 'STRING'),
('osclass', 'css_merge', '0', 'BOOLEAN'),
('osclass', 'css_minify', '0', 'BOOLEAN'),
('osclass', 'currency', 'USD', 'STRING'),
('osclass', 'custom_css', '', 'STRING'),
('osclass', 'custom_html', '', 'STRING'),
('osclass', 'dateFormat', 'Y/m/d', 'STRING'),
('osclass', 'defaultOrderField@search', 'dt_pub_date', 'STRING'),
('osclass', 'defaultOrderType@search', '1', 'BOOLEAN'),
('osclass', 'defaultResultsPerPage@search', '12', 'INTEGER'),
('osclass', 'defaultShowAs@search', 'list', 'STRING'),
('osclass', 'description_character_length', '5000', 'INTEGER'),
('osclass', 'dimNormal', '640x480', 'STRING'),
('osclass', 'dimPreview', '480x340', 'STRING'),
('osclass', 'dimProfileImg', '180x180', 'STRING'),
('osclass', 'dimThumbnail', '240x200', 'STRING'),
('osclass', 'enabled_comments', '1', 'BOOLEAN'),
('osclass', 'enabled_recaptcha_items', '0', 'BOOLEAN'),
('osclass', 'enabled_renewal_items', '0', 'BOOLEAN'),
('osclass', 'enabled_tinymce_items', '0', 'BOOLEAN'),
('osclass', 'enabled_tinymce_users', '0', 'BOOLEAN'),
('osclass', 'enabled_users', '1', 'BOOLEAN'),
('osclass', 'enabled_user_registration', '1', 'BOOLEAN'),
('osclass', 'enabled_user_validation', '1', 'BOOLEAN'),
('osclass', 'enableField#f_price@items', '1', 'BOOLEAN'),
('osclass', 'enableField#images@items', '1', 'BOOLEAN'),
('osclass', 'enable_comment_rating', '0', 'BOOLEAN'),
('osclass', 'enable_profile_img', '1', 'BOOLEAN'),
('osclass', 'force_aspect_image', '0', 'BOOLEAN'),
('osclass', 'installed_plugins', '', 'STRING'),
('osclass', 'items_wait_time', '0', 'INTEGER'),
('osclass', 'item_attachment', '0', 'BOOLEAN'),
('osclass', 'item_post_redirect', '', 'STRING'),
('osclass', 'jquery_version', '1', 'STRING'),
('osclass', 'js_banned_pages', '', 'STRING'),
('osclass', 'js_banned_words', 'tiny', 'STRING'),
('osclass', 'js_merge', '0', 'BOOLEAN'),
('osclass', 'js_minify', '0', 'BOOLEAN'),
('osclass', 'keep_original_image', '1', 'BOOLEAN'),
('osclass', 'language', 'en_US', 'STRING'),
('osclass', 'languages_downloaded', '[\"en_US\"]', 'STRING'),
('osclass', 'languages_last_version_check', '1639925364', 'STRING'),
('osclass', 'languages_to_update', '[]', 'STRING'),
('osclass', 'languages_update_count', '0', 'STRING'),
('osclass', 'last_version_check', '1639925506', 'STRING'),
('osclass', 'location_todo', '131', 'STRING'),
('osclass', 'logged_user_item_validation', '1', 'BOOLEAN'),
('osclass', 'mailserver_auth', '', 'BOOLEAN'),
('osclass', 'mailserver_host', 'localhost', 'STRING'),
('osclass', 'mailserver_mail_from', '', 'STRING'),
('osclass', 'mailserver_name_from', '', 'STRING'),
('osclass', 'mailserver_password', '', 'STRING'),
('osclass', 'mailserver_pop', '', 'BOOLEAN'),
('osclass', 'mailserver_port', '', 'INTEGER'),
('osclass', 'mailserver_ssl', '', 'STRING'),
('osclass', 'mailserver_type', 'custom', 'STRING'),
('osclass', 'mailserver_username', '', 'STRING'),
('osclass', 'market_products_version', '{\"date\":\"2021-12-19 15:49:21\",\"data\":{\"last_update\":\"2021-12-19 01:00:00\",\"0yNxpeRQtrJ1P40QfCn1\":{\"s_product_key\":\"0yNxpeRQtrJ1P40QfCn1\",\"s_version\":\"3.4.2\",\"fk_i_item_id\":\"46\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-12-09 10:52:53\",\"s_comment\":\"Fixed non-functional \\\"Pay per Publish\\\" option.\\nGateways section in backoffice has been split into \\\"Settings\\\" and \\\"Bank Transfers Management\\\" to simplify navigation in backoffice.\\nBank transfers section has been slightly redesigned, design of buttons has been updated and fixed.\"},\"MTZ9Tv7cVAPLzMfIOupg\":{\"s_product_key\":\"MTZ9Tv7cVAPLzMfIOupg\",\"s_version\":\"3.3.1\",\"fk_i_item_id\":\"47\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-24 16:17:43\",\"s_comment\":\"Fixed back links function\"},\"KHrh5ixSocGe8COBeMc7\":{\"s_product_key\":\"KHrh5ixSocGe8COBeMc7\",\"s_version\":\"1.1.1\",\"fk_i_item_id\":\"48\",\"s_osc_version_from\":\"3.3.1\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 13:30:58\",\"s_comment\":\"Notices fixes\"},\"LacliCEGw3BAf1JlcNdU\":{\"s_product_key\":\"LacliCEGw3BAf1JlcNdU\",\"s_version\":\"1.4.3\",\"fk_i_item_id\":\"49\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-12-03 14:47:22\",\"s_comment\":\"Fixed missing parenthesis in republish file\"},\"CNMxiwkWshE8H3F1JyMo\":{\"s_product_key\":\"CNMxiwkWshE8H3F1JyMo\",\"s_version\":\"2.2.4\",\"fk_i_item_id\":\"50\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-18 10:40:47\",\"s_comment\":\"Pagination of threads has been redesigned and is more compact now.\"},\"ac52YupMpzkKcAtcCy8m\":{\"s_product_key\":\"ac52YupMpzkKcAtcCy8m\",\"s_version\":\"3.2.0\",\"fk_i_item_id\":\"51\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-12-17 14:15:52\",\"s_comment\":\"Major update: Removed old styles and fonts.\\nFixed typos in backoffice.\"},\"2mdX3OOMOsFdKnYHx4Cp\":{\"s_product_key\":\"2mdX3OOMOsFdKnYHx4Cp\",\"s_version\":\"1.1.1\",\"fk_i_item_id\":\"52\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 13:39:55\",\"s_comment\":\"Notices fixes\"},\"9xHou3b3OQ1IG3EZ1BmA\":{\"s_product_key\":\"9xHou3b3OQ1IG3EZ1BmA\",\"s_version\":\"2.7.0\",\"fk_i_item_id\":\"53\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-08-03 08:46:42\",\"s_comment\":\"Major update - front-end features has been redesigned\"},\"C7IDtk5QVGn39wsnSOE2\":{\"s_product_key\":\"C7IDtk5QVGn39wsnSOE2\",\"s_version\":\"2.1.1\",\"fk_i_item_id\":\"54\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-22 09:34:53\",\"s_comment\":\"Fixed missing link in user offers;\\nFixed incorrect price in user offers (now offer price instead of item price)\"},\"SdWSefTyq9twKToM6qPk\":{\"s_product_key\":\"SdWSefTyq9twKToM6qPk\",\"s_version\":\"1.1.1\",\"fk_i_item_id\":\"55\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 13:29:23\",\"s_comment\":\"Notices fixes\"},\"PQCkHq7JVdhTpFxeeR3l\":{\"s_product_key\":\"PQCkHq7JVdhTpFxeeR3l\",\"s_version\":\"2.0.0\",\"fk_i_item_id\":\"56\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-09-09 08:50:29\",\"s_comment\":\"Plugin name changed to Banners &amp; Advertisement Plugin; backoffice design has been completely changed; banners and advertisement management is much easier now; added new tips and notices into plugin so it is easy for newcomers to setup the plugin; removed redundant and unnecessary styles &amp; scripts from back-office (removed Open-Sans font at all); front-office styles and scripts has been removed and merged directly into code (due to low size) in order to negate impact of plugin on website \"},\"KlqIQ1ClzI4eQTlNJ7xc\":{\"s_product_key\":\"KlqIQ1ClzI4eQTlNJ7xc\",\"s_version\":\"2.0.1\",\"fk_i_item_id\":\"57\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-25 10:43:04\",\"s_comment\":\"XSS vulnerability fixed\"},\"GlNHp4EtSnbdG9CAQ2z6\":{\"s_product_key\":\"GlNHp4EtSnbdG9CAQ2z6\",\"s_version\":\"2.1.1\",\"fk_i_item_id\":\"58\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 13:38:12\",\"s_comment\":\"Notices fixes\"},\"Ulkh6xNkOv2YT7POQfmO\":{\"s_product_key\":\"Ulkh6xNkOv2YT7POQfmO\",\"s_version\":\"1.2.1\",\"fk_i_item_id\":\"59\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 13:42:35\",\"s_comment\":\"Notices fixes\"},\"0QDgBnwfOyvG8sUOCizo\":{\"s_product_key\":\"0QDgBnwfOyvG8sUOCizo\",\"s_version\":\"1.3.0\",\"fk_i_item_id\":\"60\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-03-09 10:32:41\",\"s_comment\":\"Admin can now enter own validation comment (reusing user field for comment), fixed emails, added comments to mails, fixed design issues in backoffice\"},\"MaN1xZ5SKBJqWjZgD2bm\":{\"s_product_key\":\"MaN1xZ5SKBJqWjZgD2bm\",\"s_version\":\"1.3.1\",\"fk_i_item_id\":\"61\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 13:28:16\",\"s_comment\":\"Notices fixes\"},\"4qqdPpskk98qyFNElHYE\":{\"s_product_key\":\"4qqdPpskk98qyFNElHYE\",\"s_version\":\"2.3.5\",\"fk_i_item_id\":\"62\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-12-08 13:34:36\",\"s_comment\":\"Fixed minor issues with marking premium items as favorite.\"},\"mqiokDukjuGMkrZ1taSX\":{\"s_product_key\":\"mqiokDukjuGMkrZ1taSX\",\"s_version\":\"1.6.1\",\"fk_i_item_id\":\"63\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-12-09 09:37:57\",\"s_comment\":\"New feature added - hide phone number for non-logged users.\\nNew feature added - hide contact form for non-logged users.\"},\"8BBAzI3IDIcFYqA1alzu\":{\"s_product_key\":\"8BBAzI3IDIcFYqA1alzu\",\"s_version\":\"1.6.1\",\"fk_i_item_id\":\"64\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-27 11:39:50\",\"s_comment\":\"Fixed search hooks not visible in search sidebar when category selected.\"},\"8vXVx9jI59dxNSgj38xK\":{\"s_product_key\":\"8vXVx9jI59dxNSgj38xK\",\"s_version\":\"1.6.0\",\"fk_i_item_id\":\"65\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-04-08 12:07:49\",\"s_comment\":\"Major update, javascript libraries update, preparation for jQuery 3.6 and Osclass 4.4, fixed different small PHP bugs\"},\"j3CBbxWhQpEVBK7pouT8\":{\"s_product_key\":\"j3CBbxWhQpEVBK7pouT8\",\"s_version\":\"3.7.0\",\"fk_i_item_id\":\"66\",\"s_osc_version_from\":\"4.4\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-04-22 10:38:38\",\"s_comment\":\"Major update, javascript libraries update, preparation for jQuery 3.6 and Osclass 4.4\"},\"ynMUuxp3sXYa0tMj0dQn\":{\"s_product_key\":\"ynMUuxp3sXYa0tMj0dQn\",\"s_version\":\"3.6.0\",\"fk_i_item_id\":\"67\",\"s_osc_version_from\":\"4.4\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-04-22 10:39:09\",\"s_comment\":\"Major update, javascript libraries update, preparation for jQuery 3.6 and Osclass 4.4\"},\"4bx3pxmTuz0TAszEpoQ9\":{\"s_product_key\":\"4bx3pxmTuz0TAszEpoQ9\",\"s_version\":\"3.3.0\",\"fk_i_item_id\":\"68\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-04-22 10:38:11\",\"s_comment\":\"Major update, javascript libraries update, preparation for jQuery 3.6 and Osclass 4.4\"},\"LeLqCpPszqj7ijcEUJFJ\":{\"s_product_key\":\"LeLqCpPszqj7ijcEUJFJ\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"69\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2019-03-20 14:44:09\",\"s_comment\":\"Added partial support for oc-admin themes\"},\"ag7c6i6dvi5XuOf2GTcb\":{\"s_product_key\":\"ag7c6i6dvi5XuOf2GTcb\",\"s_version\":\"1.0.4\",\"fk_i_item_id\":\"70\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2018-03-17 09:15:13\",\"s_comment\":\"Fixed issue with non-showing flash messages\"},\"2tnYRompS1tuV2SqZ6qy\":{\"s_product_key\":\"2tnYRompS1tuV2SqZ6qy\",\"s_version\":\"1.4.0\",\"fk_i_item_id\":\"72\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-04-07 13:43:44\",\"s_comment\":\"Major update, javascript libraries update, preparation for jQuery 3.6 and Osclass 4.4, multiple notices and issues fixed\"},\"4EdXqRi5wzbIYKjXPhQ1\":{\"s_product_key\":\"4EdXqRi5wzbIYKjXPhQ1\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"73\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 10:16:01\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"ccxff0jHMYEh2ikbyswa\":{\"s_product_key\":\"ccxff0jHMYEh2ikbyswa\",\"s_version\":\"1.2.2\",\"fk_i_item_id\":\"74\",\"s_osc_version_from\":\"3.0.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-09-20 07:57:01\",\"s_comment\":\"Fixed implode notice\\/error reported in functions.php of plugin\"},\"RhTE7SKNogtq8bNVvIcJ\":{\"s_product_key\":\"RhTE7SKNogtq8bNVvIcJ\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"75\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 10:16:18\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"9BgL1gFtkfYIx0KVQJ58\":{\"s_product_key\":\"9BgL1gFtkfYIx0KVQJ58\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"76\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 10:16:46\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"tJvtsgwVfHh2iNVrUKZm\":{\"s_product_key\":\"tJvtsgwVfHh2iNVrUKZm\",\"s_version\":\"2.4.2\",\"fk_i_item_id\":\"77\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-25 10:42:31\",\"s_comment\":\"XSS vulnerability fixed\"},\"FCovG0JwLwogaSRGLSAW\":{\"s_product_key\":\"FCovG0JwLwogaSRGLSAW\",\"s_version\":\"1.1.1\",\"fk_i_item_id\":\"78\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-05-17 12:35:27\",\"s_comment\":\"Fixed several problems with PHP 8 and count functions\"},\"xQGEDiExjTR5UwJUmbRx\":{\"s_product_key\":\"xQGEDiExjTR5UwJUmbRx\",\"s_version\":\"1.0.3\",\"fk_i_item_id\":\"79\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-03-02 12:44:34\",\"s_comment\":\"Minifier will not try to minify external CSS\\/JS files\"},\"aP0ReAUMbQqpEZUi6H1R\":{\"s_product_key\":\"aP0ReAUMbQqpEZUi6H1R\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"80\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 09:18:01\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"UkjJPIxfbNfYCxuTfm2N\":{\"s_product_key\":\"UkjJPIxfbNfYCxuTfm2N\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"82\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 09:14:28\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"FU7UTpHmDThsRKWwXwZO\":{\"s_product_key\":\"FU7UTpHmDThsRKWwXwZO\",\"s_version\":\"1.2.2\",\"fk_i_item_id\":\"83\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-09-10 13:49:13\",\"s_comment\":\"Fixed product archive (zip)\"},\"kK7dgkItDQ66WZX76BzB\":{\"s_product_key\":\"kK7dgkItDQ66WZX76BzB\",\"s_version\":\"1.5.6\",\"fk_i_item_id\":\"84\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-12-04 08:27:15\",\"s_comment\":\"Plugin now updates structured data image on blog page and use blog image instead of website logo.\\nRemoved old and redundant styles &amp; fonts from backoffice.\"},\"3aVxfB6ACekqc6ZUDbVw\":{\"s_product_key\":\"3aVxfB6ACekqc6ZUDbVw\",\"s_version\":\"1.2.1\",\"fk_i_item_id\":\"85\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-08-23 14:01:42\",\"s_comment\":\"Added support of \\\"I want to receive Newsletters\\\" option added into GDPR plugin v1.2.0; Plugin will not work properly with older versions of GDPR plugin\"},\"VVUOjIZMpRwBjbbT8Ue4\":{\"s_product_key\":\"VVUOjIZMpRwBjbbT8Ue4\",\"s_version\":\"1.3.3\",\"fk_i_item_id\":\"86\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-08-01 18:43:15\",\"s_comment\":\"Fixed validation issues when using forms, especially with older jQuery version.\"},\"v8vsj78TTuvBTfS8lLVs\":{\"s_product_key\":\"v8vsj78TTuvBTfS8lLVs\",\"s_version\":\"1.3.1\",\"fk_i_item_id\":\"87\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-25 08:26:32\",\"s_comment\":\"Fixed checkboxes validation of new modal. This verification is no more based on change event only and should work much better across different themes.\"},\"J9wVtDVg2WDgm3cS6fXi\":{\"s_product_key\":\"J9wVtDVg2WDgm3cS6fXi\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"88\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 10:14:13\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"VnwC5tcwCuXffWIOZiEZ\":{\"s_product_key\":\"VnwC5tcwCuXffWIOZiEZ\",\"s_version\":\"1.4.0\",\"fk_i_item_id\":\"89\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-24 08:26:54\",\"s_comment\":\"Added option to upload gif, jpg, jpeg, webp images as icon &amp; cover;\\nAdded option to remove icon &amp; cover;\\nDesign adjustments;\\nRemoved legacy styles and fonts\"},\"Vknlbnj86NQq95u9ebph\":{\"s_product_key\":\"Vknlbnj86NQq95u9ebph\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"90\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 10:14:36\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"7k3yIRZf7pqdTfkqbCct\":{\"s_product_key\":\"7k3yIRZf7pqdTfkqbCct\",\"s_version\":\"1.4.0\",\"fk_i_item_id\":\"91\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-04-07 12:53:13\",\"s_comment\":\"Major update, javascript libraries update, preparation for jQuery 3.6 and Osclass 4.4\"},\"Z0hyzNqGCzOmCfC4NGVn\":{\"s_product_key\":\"Z0hyzNqGCzOmCfC4NGVn\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"92\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 09:14:50\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"vOUF3cgopU8qyNMewkQS\":{\"s_product_key\":\"vOUF3cgopU8qyNMewkQS\",\"s_version\":\"1.6.2\",\"fk_i_item_id\":\"93\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-25 10:42:49\",\"s_comment\":\"XSS vulnerability fixed\"},\"gcNH3W3tlQR3ckJ7XSCq\":{\"s_product_key\":\"gcNH3W3tlQR3ckJ7XSCq\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"94\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-08-18 10:35:33\",\"s_comment\":\"Major update: Redesigned few elements; fixed styling of numerous blocks; added option to define colors of category header, links and buttons\"},\"CW4YOjMfMXI6zvpw75r1\":{\"s_product_key\":\"CW4YOjMfMXI6zvpw75r1\",\"s_version\":\"1.2.1\",\"fk_i_item_id\":\"95\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-09 15:30:14\",\"s_comment\":\"Plugin now cooperates with GDPR and do not cache trigger box thrown by GDPR plugin.\"},\"EuIidjPacShPoibBFu6m\":{\"s_product_key\":\"EuIidjPacShPoibBFu6m\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"96\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 09:13:45\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"FJGisjE1yqVWa3KVoCzY\":{\"s_product_key\":\"FJGisjE1yqVWa3KVoCzY\",\"s_version\":\"1.1.2\",\"fk_i_item_id\":\"97\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-09-27 14:22:53\",\"s_comment\":\"Plugin is now checking for phone number uniqueness in user account profile edit as well\"},\"pBrd68M4b5SiexjdJ5yK\":{\"s_product_key\":\"pBrd68M4b5SiexjdJ5yK\",\"s_version\":\"1.5.3\",\"fk_i_item_id\":\"98\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-07-07 09:40:57\",\"s_comment\":\"Improved several functions, fixed bugs and bring few improvements\"},\"mNqtMxg1zBJRwIDKdLuM\":{\"s_product_key\":\"mNqtMxg1zBJRwIDKdLuM\",\"s_version\":\"1.5.2\",\"fk_i_item_id\":\"99\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-09-02 08:26:59\",\"s_comment\":\"Plugin now try to update location of item &amp; user on edit action each time for 2 reasons: if location has not been changed, it will be retrieved from plugin cache, if location has ben changed, coordinates must be changed anyway\"},\"oxs1OgtBR7lqBtNk9x0j\":{\"s_product_key\":\"oxs1OgtBR7lqBtNk9x0j\",\"s_version\":\"1.3.0\",\"fk_i_item_id\":\"100\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-09-10 15:27:53\",\"s_comment\":\"Redesigned how login listener works, improved compatibility, fixed minor issues on PHP 8.0.\"},\"n2eVCPcgB74fheHF8WMq\":{\"s_product_key\":\"n2eVCPcgB74fheHF8WMq\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"101\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 09:05:25\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"kbUtlUi37pjcT4Do0OI1\":{\"s_product_key\":\"kbUtlUi37pjcT4Do0OI1\",\"s_version\":\"3.1.3\",\"fk_i_item_id\":\"102\",\"s_osc_version_from\":\"4.4.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-04-27 08:32:47\",\"s_comment\":\"Functionality update for Osclass 4.4, many bugs fixed, new sections added, admin color scheme added.\"},\"zQeGvWyO3U0y57KR7CvP\":{\"s_product_key\":\"zQeGvWyO3U0y57KR7CvP\",\"s_version\":\"1.2.2\",\"fk_i_item_id\":\"103\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-08-01 18:31:42\",\"s_comment\":\"Improved login identification of callback functions\"},\"5GbeI4IbxU5ZLeSXlS5F\":{\"s_product_key\":\"5GbeI4IbxU5ZLeSXlS5F\",\"s_version\":\"1.6.0\",\"fk_i_item_id\":\"104\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-19 08:11:12\",\"s_comment\":\"Added connection to Osclass Pay Plugin - membership groups. Admin can now restrict to which customers notifications will be sent based on their membership group (i.e. send sms notifications only to \\\"Gold\\\" members)\"},\"BlUmJrTdUAaDqQ8UXHb4\":{\"s_product_key\":\"BlUmJrTdUAaDqQ8UXHb4\",\"s_version\":\"1.0.0\",\"fk_i_item_id\":\"105\",\"s_osc_version_from\":\"\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2019-06-18 07:47:21\",\"s_comment\":\"Blank file\"},\"MmCdRh47DK88qrFD6L1w\":{\"s_product_key\":\"MmCdRh47DK88qrFD6L1w\",\"s_version\":\"1.4.1\",\"fk_i_item_id\":\"106\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-07-07 09:44:16\",\"s_comment\":\"Improved several functions, fixed bugs and bring few improvements\"},\"zyrLNTohHi1nykfew2hM\":{\"s_product_key\":\"zyrLNTohHi1nykfew2hM\",\"s_version\":\"1.1.1\",\"fk_i_item_id\":\"107\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 13:55:39\",\"s_comment\":\"Notices fixes\"},\"Q3JkTD1eH1LjQKE07IVz\":{\"s_product_key\":\"Q3JkTD1eH1LjQKE07IVz\",\"s_version\":\"1.1.1\",\"fk_i_item_id\":\"108\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-08-04 08:42:45\",\"s_comment\":\"Fixed bug with reduction &amp; minimal amounts those might not load properly when editing voucher\"},\"7wMRIzqJbL8LIILv56Fu\":{\"s_product_key\":\"7wMRIzqJbL8LIILv56Fu\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"109\",\"s_osc_version_from\":\"\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 10:15:05\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"GFE1crrhnvi0AtRiagJp\":{\"s_product_key\":\"GFE1crrhnvi0AtRiagJp\",\"s_version\":\"1.5.0\",\"fk_i_item_id\":\"110\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-06-18 11:09:34\",\"s_comment\":\"Major release: bxSlider library replaced with Swiper that is much more modern, functional and reliable, updated lightGallery to latest version, removed fancybox and replaced with built-in solution for modals, fixed and improved numerous minor bugs and problems.\"},\"58jeUWqcBCc9AyKktvph\":{\"s_product_key\":\"58jeUWqcBCc9AyKktvph\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"111\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 09:14:05\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"GwoMe84Z9fBVqGU7JgPQ\":{\"s_product_key\":\"GwoMe84Z9fBVqGU7JgPQ\",\"s_version\":\"1.4.1\",\"fk_i_item_id\":\"112\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-14 14:07:51\",\"s_comment\":\"Fixed unwanted echo from development\"},\"P2xUxTzHUv8LMkGB14BV\":{\"s_product_key\":\"P2xUxTzHUv8LMkGB14BV\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"113\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 09:17:40\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"tmTcQIQhyfwrseFGqLIr\":{\"s_product_key\":\"tmTcQIQhyfwrseFGqLIr\",\"s_version\":\"1.3.6\",\"fk_i_item_id\":\"114\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-15 08:52:47\",\"s_comment\":\"Fixed issue with Instant Messenger Plugin\"},\"LNlXIJmlaVMAICJ7o728\":{\"s_product_key\":\"LNlXIJmlaVMAICJ7o728\",\"s_version\":\"1.3.3\",\"fk_i_item_id\":\"115\",\"s_osc_version_from\":\"8.0.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-04 15:15:25\",\"s_comment\":\"Numerous improvements and fixes made to Sigma theme.\"},\"aKHCKmKJSHIGDr9W1Gno\":{\"s_product_key\":\"aKHCKmKJSHIGDr9W1Gno\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"116\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 09:17:17\",\"s_comment\":\"Initial community release\"},\"EW7CF1Ut1VyDy7OHSzOz\":{\"s_product_key\":\"EW7CF1Ut1VyDy7OHSzOz\",\"s_version\":\"1.3.0\",\"fk_i_item_id\":\"117\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:15:40\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"DUBVnkh9jwqW17nf6NGj\":{\"s_product_key\":\"DUBVnkh9jwqW17nf6NGj\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"118\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 09:22:51\",\"s_comment\":\"Initial community release\"},\"XvsQRHMyP1UK43q6Yd0J\":{\"s_product_key\":\"XvsQRHMyP1UK43q6Yd0J\",\"s_version\":\"1.3.0\",\"fk_i_item_id\":\"119\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:18:24\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"4JVeSCym2yP23fgntw0Z\":{\"s_product_key\":\"4JVeSCym2yP23fgntw0Z\",\"s_version\":\"1.2.1\",\"fk_i_item_id\":\"120\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-03 13:13:25\",\"s_comment\":\"Fixed different issues (missing images, incorrect image used, ...)\"},\"Lif3TMohLnh8Q04F8Hwz\":{\"s_product_key\":\"Lif3TMohLnh8Q04F8Hwz\",\"s_version\":\"1.3.0\",\"fk_i_item_id\":\"121\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:20:04\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"2NXsQmUKHos7jalBrqXz\":{\"s_product_key\":\"2NXsQmUKHos7jalBrqXz\",\"s_version\":\"1.7.0\",\"fk_i_item_id\":\"122\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 09:33:39\",\"s_comment\":\"Initial community release\"},\"KIRI6jiKUZIAvPQvBPA3\":{\"s_product_key\":\"KIRI6jiKUZIAvPQvBPA3\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"123\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 09:37:58\",\"s_comment\":\"Initial community release\"},\"2W7JWqCbxXdMfrrPLWxv\":{\"s_product_key\":\"2W7JWqCbxXdMfrrPLWxv\",\"s_version\":\"3.3.0\",\"fk_i_item_id\":\"124\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:20:40\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"djkx5sFdRsg4RyNolJyb\":{\"s_product_key\":\"djkx5sFdRsg4RyNolJyb\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"125\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 10:11:40\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"eT3rb042WfSXRc19otYi\":{\"s_product_key\":\"eT3rb042WfSXRc19otYi\",\"s_version\":\"3.2.0\",\"fk_i_item_id\":\"126\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:21:17\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"HBVzMk1O9AachzWTfstj\":{\"s_product_key\":\"HBVzMk1O9AachzWTfstj\",\"s_version\":\"1.4.0\",\"fk_i_item_id\":\"127\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:22:41\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"MjqkDNW8spqvllOvtMSH\":{\"s_product_key\":\"MjqkDNW8spqvllOvtMSH\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"128\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 09:53:36\",\"s_comment\":\"Initial community release\"},\"XX4ccIt1Cj2SZQstJGWm\":{\"s_product_key\":\"XX4ccIt1Cj2SZQstJGWm\",\"s_version\":\"2.2.0\",\"fk_i_item_id\":\"129\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:00:46\",\"s_comment\":\"Initial community release\"},\"U9eN1qT3RP7LxCAq1zRS\":{\"s_product_key\":\"U9eN1qT3RP7LxCAq1zRS\",\"s_version\":\"1.4.0\",\"fk_i_item_id\":\"130\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:23:44\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"CQxEKg0gHAuWK543zXZR\":{\"s_product_key\":\"CQxEKg0gHAuWK543zXZR\",\"s_version\":\"3.0.0\",\"fk_i_item_id\":\"131\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:13:09\",\"s_comment\":\"Initial community release\"},\"NS4N953XMUYGVlbHXtod\":{\"s_product_key\":\"NS4N953XMUYGVlbHXtod\",\"s_version\":\"3.2.2\",\"fk_i_item_id\":\"132\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-05-28 07:46:15\",\"s_comment\":\"Fixed error notices thrown in map, improved several functions\"},\"xJTuuOyytVDITjNjMlSC\":{\"s_product_key\":\"xJTuuOyytVDITjNjMlSC\",\"s_version\":\"3.4.0\",\"fk_i_item_id\":\"133\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:25:05\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"YpmgxnUy99FVT4GREHgu\":{\"s_product_key\":\"YpmgxnUy99FVT4GREHgu\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"134\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:20:50\",\"s_comment\":\"Initial community release\"},\"6dpbDvcouLjIwupfoDvk\":{\"s_product_key\":\"6dpbDvcouLjIwupfoDvk\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"135\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:24:58\",\"s_comment\":\"Initial community release\"},\"KPmC9399OcTmjOMQYjGp\":{\"s_product_key\":\"KPmC9399OcTmjOMQYjGp\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"136\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:26:54\",\"s_comment\":\"Initial community release\"},\"X2JXV9xLTaCvC2Og5CUm\":{\"s_product_key\":\"X2JXV9xLTaCvC2Og5CUm\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"137\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:28:39\",\"s_comment\":\"Initial community release\"},\"B9f8pUVcBeCRWuv3ia19\":{\"s_product_key\":\"B9f8pUVcBeCRWuv3ia19\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"138\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:31:31\",\"s_comment\":\"Initial community release\"},\"300pFzxrhPxGRYxZaHax\":{\"s_product_key\":\"300pFzxrhPxGRYxZaHax\",\"s_version\":\"1.4.1\",\"fk_i_item_id\":\"139\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 13:37:25\",\"s_comment\":\"Notices fixes\"},\"gKtMIByCxLvGXOytRysh\":{\"s_product_key\":\"gKtMIByCxLvGXOytRysh\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"140\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:39:37\",\"s_comment\":\"Initial community release\"},\"HLJg40f8FB4mgEsioqcY\":{\"s_product_key\":\"HLJg40f8FB4mgEsioqcY\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"141\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:25:46\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"FPTeGnz8PxBhqC86O2a8\":{\"s_product_key\":\"FPTeGnz8PxBhqC86O2a8\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"142\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:46:28\",\"s_comment\":\"Initial community release\"},\"LaMjjPzvEjGgHgpLVi6z\":{\"s_product_key\":\"LaMjjPzvEjGgHgpLVi6z\",\"s_version\":\"1.5.0\",\"fk_i_item_id\":\"143\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 10:50:11\",\"s_comment\":\"Initial community release\"},\"CQMi0syigvUJXxnpoVrW\":{\"s_product_key\":\"CQMi0syigvUJXxnpoVrW\",\"s_version\":\"3.2.0\",\"fk_i_item_id\":\"144\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:26:40\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"RvR9IqCQA0IVv57n7PFx\":{\"s_product_key\":\"RvR9IqCQA0IVv57n7PFx\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"145\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:27:30\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"TyVlD2EuU0zqZ6pKXSC9\":{\"s_product_key\":\"TyVlD2EuU0zqZ6pKXSC9\",\"s_version\":\"3.4.0\",\"fk_i_item_id\":\"146\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:28:12\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"9xLZ82VNsdC2cPp14iZh\":{\"s_product_key\":\"9xLZ82VNsdC2cPp14iZh\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"147\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:00:49\",\"s_comment\":\"Initial community release\"},\"MC7C2ERpzFNp4rfv0RJd\":{\"s_product_key\":\"MC7C2ERpzFNp4rfv0RJd\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"148\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:02:31\",\"s_comment\":\"Initial community release\"},\"pcMdYfykmrM4pJJeSOiP\":{\"s_product_key\":\"pcMdYfykmrM4pJJeSOiP\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"149\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:04:13\",\"s_comment\":\"Initial community release\"},\"bmCSP5oQ3V8ku20vmOyI\":{\"s_product_key\":\"bmCSP5oQ3V8ku20vmOyI\",\"s_version\":\"1.3.0\",\"fk_i_item_id\":\"150\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:05:56\",\"s_comment\":\"Initial community release\"},\"vaqhSSRVtwzmb9BN8qxU\":{\"s_product_key\":\"vaqhSSRVtwzmb9BN8qxU\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"151\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:07:23\",\"s_comment\":\"Initial community release\"},\"AmqMvlVTHcXZrgiKnpIy\":{\"s_product_key\":\"AmqMvlVTHcXZrgiKnpIy\",\"s_version\":\"1.0.0\",\"fk_i_item_id\":\"152\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:10:45\",\"s_comment\":\"Initial community release\"},\"DS9mru7ri7zFBwdxxzQW\":{\"s_product_key\":\"DS9mru7ri7zFBwdxxzQW\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"153\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:33:26\",\"s_comment\":\"Initial community release\"},\"jqgduyDOa2J0kzgo2ffP\":{\"s_product_key\":\"jqgduyDOa2J0kzgo2ffP\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"154\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:28:56\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"T2gBQVBvOci6YdA0nNeR\":{\"s_product_key\":\"T2gBQVBvOci6YdA0nNeR\",\"s_version\":\"1.3.0\",\"fk_i_item_id\":\"155\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:37:16\",\"s_comment\":\"Initial community release\"},\"6E9ulx5fwCskM8GIcSMI\":{\"s_product_key\":\"6E9ulx5fwCskM8GIcSMI\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"156\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:39:21\",\"s_comment\":\"Initial community release\"},\"bgX4ETvrv6sIfluntcwz\":{\"s_product_key\":\"bgX4ETvrv6sIfluntcwz\",\"s_version\":\"1.0.0\",\"fk_i_item_id\":\"157\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:41:06\",\"s_comment\":\"Initial community release\"},\"bct0VBUQPl1Po88uVapn\":{\"s_product_key\":\"bct0VBUQPl1Po88uVapn\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"158\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-19 14:29:47\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"MBIDRCC1jT1QPPJgZArG\":{\"s_product_key\":\"MBIDRCC1jT1QPPJgZArG\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"159\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2020-11-18 11:44:15\",\"s_comment\":\"Initial community release\"},\"RINzxtWvLYhfYdW82FDH\":{\"s_product_key\":\"RINzxtWvLYhfYdW82FDH\",\"s_version\":\"3.4.0\",\"fk_i_item_id\":\"160\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-18 13:52:15\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"Y4hZSdyb3dNx8T2K0gvx\":{\"s_product_key\":\"Y4hZSdyb3dNx8T2K0gvx\",\"s_version\":\"1.4.0\",\"fk_i_item_id\":\"161\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-18 14:05:32\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"qgTeAeNLqsFydH18uuCD\":{\"s_product_key\":\"qgTeAeNLqsFydH18uuCD\",\"s_version\":\"3.2.0\",\"fk_i_item_id\":\"162\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-18 14:07:26\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"FjEXeR0nxc8SN0nbZEcQ\":{\"s_product_key\":\"FjEXeR0nxc8SN0nbZEcQ\",\"s_version\":\"2.6.0\",\"fk_i_item_id\":\"163\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-18 14:08:53\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"ClGjGODvxFtx58pACZew\":{\"s_product_key\":\"ClGjGODvxFtx58pACZew\",\"s_version\":\"2.3.0\",\"fk_i_item_id\":\"164\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-18 14:10:35\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"3jyU3nm1Rtj54fdGQ5h9\":{\"s_product_key\":\"3jyU3nm1Rtj54fdGQ5h9\",\"s_version\":\"1.4.0\",\"fk_i_item_id\":\"165\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-18 14:12:32\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"5EU0g0p9MPYAWAiFDXRa\":{\"s_product_key\":\"5EU0g0p9MPYAWAiFDXRa\",\"s_version\":\"1.4.0\",\"fk_i_item_id\":\"166\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-18 14:15:31\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"BV5DvGrgtOg2GsfBdFak\":{\"s_product_key\":\"BV5DvGrgtOg2GsfBdFak\",\"s_version\":\"1.5.0\",\"fk_i_item_id\":\"167\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-01-18 14:25:25\",\"s_comment\":\"PHP 8.0 compatibility update, additional minor fixes\"},\"oPs2Gjn9C8GS86JspY2R\":{\"s_product_key\":\"oPs2Gjn9C8GS86JspY2R\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"168\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-04-28 10:49:21\",\"s_comment\":\"Major update - admin can now set category limits for non-logged, personal and business users separately\"},\"EIvSTp3NyIdV6Dto1Qhx\":{\"s_product_key\":\"EIvSTp3NyIdV6Dto1Qhx\",\"s_version\":\"1.0.2\",\"fk_i_item_id\":\"169\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-03-25 08:25:52\",\"s_comment\":\"Plugin now supports also WebP, JPEG and SVG images on category icons, updated translation file\"},\"L3IN81p4BJP0UU4pc0Xk\":{\"s_product_key\":\"L3IN81p4BJP0UU4pc0Xk\",\"s_version\":\"1.2.0\",\"fk_i_item_id\":\"170\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-11 11:24:47\",\"s_comment\":\"Numerous minor issues and design bugs fixed.\"},\"qcj6opM6HtKfMtlsbAdv\":{\"s_product_key\":\"qcj6opM6HtKfMtlsbAdv\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"171\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-08-29 10:25:13\",\"s_comment\":\"Major update: Added subscription to following user items - when new listing is created, customer is informed about it via built-in alerts feature\"},\"KFHwr9v7MXDv8z7Gaxqf\":{\"s_product_key\":\"KFHwr9v7MXDv8z7Gaxqf\",\"s_version\":\"1.0.1\",\"fk_i_item_id\":\"173\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-09-17 10:36:21\",\"s_comment\":\"Several minor bugs and problems fixed\"},\"5sGWW11Q4k2ZPOiLKmbH\":{\"s_product_key\":\"5sGWW11Q4k2ZPOiLKmbH\",\"s_version\":\"1.0.2\",\"fk_i_item_id\":\"174\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-21 07:51:27\",\"s_comment\":\"Fixed saving some configuration parameters in backoffice.\\nFixed price calculation for Range - Accommodation reservations.\"},\"4Ru93z0aGeUifioD2FZF\":{\"s_product_key\":\"4Ru93z0aGeUifioD2FZF\",\"s_version\":\"1.0.0\",\"fk_i_item_id\":\"175\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-10-25 08:04:52\",\"s_comment\":\"Initial Plugin Release\"},\"aCwcTb5tF8XHaOLMIrjB\":{\"s_product_key\":\"aCwcTb5tF8XHaOLMIrjB\",\"s_version\":\"1.0.0\",\"fk_i_item_id\":\"176\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-04 11:06:38\",\"s_comment\":\"Installation instructions dummy plugin\"},\"nqygcFAScb360OQIyr5L\":{\"s_product_key\":\"nqygcFAScb360OQIyr5L\",\"s_version\":\"1.0.1\",\"fk_i_item_id\":\"177\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-24 07:13:09\",\"s_comment\":\"Fixed possible issues those might be caused by Imagick library\"},\"FxBSA3UNkXmCsJ5Rk5h2\":{\"s_product_key\":\"FxBSA3UNkXmCsJ5Rk5h2\",\"s_version\":\"1.0.2\",\"fk_i_item_id\":\"178\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-11-18 09:13:31\",\"s_comment\":\"Fixed issue with updating old price.\"},\"vliNRyxVet2OKwvL6b9L\":{\"s_product_key\":\"vliNRyxVet2OKwvL6b9L\",\"s_version\":\"1.0.1\",\"fk_i_item_id\":\"179\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-12-05 11:56:38\",\"s_comment\":\"Message generation moved to footer to avoid flickering on page load.\"},\"DxMMDzXC3d39tvALXnGE\":{\"s_product_key\":\"DxMMDzXC3d39tvALXnGE\",\"s_version\":\"1.0.2\",\"fk_i_item_id\":\"180\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-12-17 13:51:37\",\"s_comment\":\"Fixed problem with pagination in user section.\"},\"dI2zdwnHWj1TnMldUVji\":{\"s_product_key\":\"dI2zdwnHWj1TnMldUVji\",\"s_version\":\"1.0.3\",\"fk_i_item_id\":\"181\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-12-05 10:56:58\",\"s_comment\":\"Fixed ban counter possible issues.\"},\"bieyVwillf6RUKpr4hav\":{\"s_product_key\":\"bieyVwillf6RUKpr4hav\",\"s_version\":\"1.1.0\",\"fk_i_item_id\":\"182\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"last_update_date\":\"2021-12-06 14:08:06\",\"s_comment\":\"Added protection for password - after 5 failed attempts, listing edit (from plugin) is blocked for 5 minutes.\"}}}', 'STRING'),
('osclass', 'maxLatestItems@home', '12', 'INTEGER'),
('osclass', 'maxResultsPerPage@search', '50', 'INTEGER'),
('osclass', 'maxSizeKb', '4096', 'INTEGER'),
('osclass', 'moderate_comments', '0', 'INTEGER'),
('osclass', 'moderate_items', '-1', 'INTEGER'),
('osclass', 'mod_rewrite_loaded', '0', 'BOOLEAN'),
('osclass', 'notify_contact_friends', '1', 'BOOLEAN'),
('osclass', 'notify_contact_item', '1', 'BOOLEAN'),
('osclass', 'notify_new_comment', '1', 'BOOLEAN'),
('osclass', 'notify_new_comment_user', '0', 'BOOLEAN'),
('osclass', 'notify_new_item', '1', 'BOOLEAN'),
('osclass', 'notify_new_user', '1', 'BOOLEAN'),
('osclass', 'numImages@items', '4', 'INTEGER'),
('osclass', 'num_rss_items', '50', 'INTEGER'),
('osclass', 'osclasspoint_api_key', '', 'STRING'),
('osclass', 'osclass_installed', '1', 'BOOLEAN'),
('osclass', 'pageDesc', '', 'STRING'),
('osclass', 'pageTitle', 'sqozo', 'STRING'),
('osclass', 'ping_search_engines', '0', 'BOOLEAN'),
('osclass', 'plugins_downloaded', '[]', 'STRING'),
('osclass', 'plugins_last_version_check', '1639925364', 'STRING'),
('osclass', 'plugins_to_update', '[]', 'STRING'),
('osclass', 'plugins_update_count', '0', 'STRING'),
('osclass', 'purge_latest_searches', '1000', 'STRING'),
('osclass', 'recaptchaPrivKey', '', 'STRING'),
('osclass', 'recaptchaPubKey', '', 'STRING'),
('osclass', 'recaptcha_version', '2', 'STRING'),
('osclass', 'regenerate_image_data', '', 'STRING'),
('osclass', 'reg_user_can_contact', '0', 'BOOLEAN'),
('osclass', 'reg_user_can_see_phone', '0', 'BOOLEAN'),
('osclass', 'reg_user_post', '0', 'BOOLEAN'),
('osclass', 'reg_user_post_comments', '0', 'BOOLEAN'),
('osclass', 'renewal_limit', '0', 'INTEGER'),
('osclass', 'renewal_update_pub_date', '0', 'BOOLEAN'),
('osclass', 'rewriteEnabled', '0', 'BOOLEAN'),
('osclass', 'rewrite_cat_url', '{CATEGORIES}', 'STRING'),
('osclass', 'rewrite_contact', 'contact', 'STRING'),
('osclass', 'rewrite_feed', 'feed', 'STRING'),
('osclass', 'rewrite_item_activate', 'item/activate', 'STRING'),
('osclass', 'rewrite_item_contact', 'item/contact', 'STRING'),
('osclass', 'rewrite_item_deactivate', 'item/deactivate', 'STRING'),
('osclass', 'rewrite_item_delete', 'item/delete', 'STRING'),
('osclass', 'rewrite_item_edit', 'item/edit', 'STRING'),
('osclass', 'rewrite_item_mark', 'item/mark', 'STRING'),
('osclass', 'rewrite_item_new', 'item/new', 'STRING'),
('osclass', 'rewrite_item_renew', 'item/renew', 'STRING'),
('osclass', 'rewrite_item_resource_delete', 'resource/delete', 'STRING'),
('osclass', 'rewrite_item_send_friend', 'item/send-friend', 'STRING'),
('osclass', 'rewrite_item_url', '{CATEGORIES}/{ITEM_TITLE}_i{ITEM_ID}', 'STRING'),
('osclass', 'rewrite_language', 'language', 'STRING'),
('osclass', 'rewrite_page_url', '{PAGE_SLUG}-p{PAGE_ID}', 'STRING'),
('osclass', 'rewrite_rules', '', 'STRING'),
('osclass', 'rewrite_search_category', 'category', 'STRING'),
('osclass', 'rewrite_search_city', 'city', 'STRING'),
('osclass', 'rewrite_search_city_area', 'cityarea', 'STRING'),
('osclass', 'rewrite_search_country', 'country', 'STRING'),
('osclass', 'rewrite_search_pattern', 'pattern', 'STRING'),
('osclass', 'rewrite_search_region', 'region', 'STRING'),
('osclass', 'rewrite_search_url', 'search', 'STRING'),
('osclass', 'rewrite_search_user', 'user', 'STRING'),
('osclass', 'rewrite_user_activate', 'user/activate', 'STRING'),
('osclass', 'rewrite_user_activate_alert', 'alert/confirm', 'STRING'),
('osclass', 'rewrite_user_alerts', 'user/alerts', 'STRING'),
('osclass', 'rewrite_user_change_email', 'email/change', 'STRING'),
('osclass', 'rewrite_user_change_email_confirm', 'email/confirm', 'STRING'),
('osclass', 'rewrite_user_change_password', 'password/change', 'STRING'),
('osclass', 'rewrite_user_change_username', 'username/change', 'STRING'),
('osclass', 'rewrite_user_dashboard', 'user/dashboard', 'STRING'),
('osclass', 'rewrite_user_forgot', 'user/forgot', 'STRING'),
('osclass', 'rewrite_user_items', 'user/items', 'STRING'),
('osclass', 'rewrite_user_login', 'user/login', 'STRING'),
('osclass', 'rewrite_user_logout', 'user/logout', 'STRING'),
('osclass', 'rewrite_user_profile', 'user/profile', 'STRING'),
('osclass', 'rewrite_user_recover', 'user/recover', 'STRING'),
('osclass', 'rewrite_user_register', 'user/register', 'STRING'),
('osclass', 'save_latest_searches', '0', 'BOOLEAN'),
('osclass', 'search_pattern_method', '', 'STRING'),
('osclass', 'selectable_parent_categories', '0', 'BOOLEAN'),
('osclass', 'seo_url_search_prefix', '', 'STRING'),
('osclass', 'structured_data', '0', 'BOOLEAN'),
('osclass', 'subdomain_host', '', 'STRING'),
('osclass', 'subdomain_type', '', 'STRING'),
('osclass', 'theme', 'delta', 'STRING'),
('osclass', 'themes_downloaded', '[\"LNlXIJmlaVMAICJ7o728\"]', 'STRING');
INSERT INTO `oc_t_preference` (`s_section`, `s_name`, `s_value`, `e_type`) VALUES
('osclass', 'themes_last_version_check', '1639925364', 'STRING'),
('osclass', 'themes_to_update', '[]', 'STRING'),
('osclass', 'themes_update_count', '0', 'STRING'),
('osclass', 'timeFormat', 'H:i', 'STRING'),
('osclass', 'timezone', 'Europe/Madrid', 'STRING'),
('osclass', 'title_character_length', '100', 'INTEGER'),
('osclass', 'update_core_json', '', 'STRING'),
('osclass', 'username_blacklist', 'admin,user', 'STRING'),
('osclass', 'use_imagick', '0', 'BOOLEAN'),
('osclass', 'version', '800', 'INTEGER'),
('osclass', 'warn_expiration', '0', 'INTEGER'),
('osclass', 'watermark_image', '', 'STRING'),
('osclass', 'watermark_place', 'centre', 'STRING'),
('osclass', 'watermark_text', '', 'STRING'),
('osclass', 'watermark_text_color', '', 'STRING'),
('osclass', 'weekStart', '0', 'STRING'),
('osclass', 'widget_data_api', '', 'STRING'),
('osclass', 'widget_data_blog', '{\"date\":\"2021-12-19 15:49:16\",\"data\":[{\"id\":\"38\",\"slug\":\"multi-vendor-marketplace-classifieds-osclass\",\"image\":\"https:\\/\\/osclasspoint.com\\/oc-content\\/plugins\\/blog\\/img\\/blog\\/blog-default.png\",\"category_id\":\"3\",\"views\":\"235\",\"pub_date\":\"2021-12-06 00:00:00\",\"title\":\"Multi-Vendor Classifieds Marketplace with Osclass Pay Plugin \",\"subtitle\":\"Create multi-vendor marketplace on Osclass classifieds with payment processing, orders, sales and products management, stock &amp; quantities features and shipping support.\",\"description\":\"Latest update of plugin brings major enhancements in eCommerce section of Oclass Pay Plugin that helps you to easily turn your classifieds into multi-vendor marketplace. Shipping and carrier services Seller\'s shipping options Brand new feature in plugin are shippings (carriers) or we can simply call it delivery options for tangible products. Seller can define one or more shippings - delivery options for their orders. Actually there is no limit how many delivery options can be created. Shipping h...\",\"short_description\":\"Create multi-vendor marketplace on Osclass classifieds with payment processing, orders, sales and products management, stock &amp; quantities features and shipping support.\",\"link\":\"https:\\/\\/osclasspoint.com\\/blog\\/multi-vendor-marketplace-classifieds-osclass-b38\"},{\"id\":\"37\",\"slug\":\"osclass-v8-release-continuous-development-setup\",\"image\":\"https:\\/\\/osclasspoint.com\\/oc-content\\/plugins\\/blog\\/img\\/blog\\/37.jpg\",\"category_id\":\"1\",\"views\":\"1428\",\"pub_date\":\"2021-11-04 00:00:00\",\"title\":\"Osclass 8.0 release - Continuous development setup\",\"subtitle\":\"New version of Osclass is there with cool and important updates like new versioning, brand new locations database or child theme improvements\",\"description\":\"Osclass v8.0 release overview Team is working great progress with re-inventing Osclass and boosting it with new features. But that is not all, we are also redesigning and improving existing functionalities and adding numerous new features. \\u00a0 Version has changed to 8.x.x Hard and complicated decission, but rational one. Number \\\"4\\\" has been occupied by multiple branches and it was confusing for customers to understand relation between different branches. We wanted to cut this line and selected num...\",\"short_description\":\"New version of Osclass is there with cool and important updates like new versioning, brand new locations database or child theme improvements\",\"link\":\"https:\\/\\/osclasspoint.com\\/blog\\/osclass-v8-release-continuous-development-setup-b37\"},{\"id\":\"36\",\"slug\":\"osclass-44-major-release\",\"image\":\"https:\\/\\/osclasspoint.com\\/oc-content\\/plugins\\/blog\\/img\\/blog\\/36.jpg\",\"category_id\":\"1\",\"views\":\"7316\",\"pub_date\":\"2021-04-26 00:00:00\",\"title\":\"Osclass 4.4 - May major release\",\"subtitle\":\"May update finally brings jQuery update to latest version (3.6) without breaking compatibility with legacy plugins and themes, admin color schemes to make backoffice in colors you prefer, demo features for themes &amp; plugins developers and as usual, set of bug fixes and improvements.\",\"description\":\"May major release - Osclass 4.4.0 brings very important features and updates It\'s been a while from time when Osclass 4.3 was released, today we bring you important updates and improvements of most favorite classifieds script. Open complete osclass changelog. jQuery updated from 1.8 to 3.6 After 10 years, it is again possible to use latest jQuery version within Osclass. Once you upgrade to 4.4, you will be able to change jQuery version to latest (3.x.x) in Settings &gt; General section. You shou...\",\"short_description\":\"May update finally brings jQuery update to latest version (3.6) without breaking compatibility with legacy plugins and themes, admin color schemes to make backoffice in colors you prefer, demo features for themes &amp; plugins developers and as usual, set of bug fixes and improvements.\",\"link\":\"https:\\/\\/osclasspoint.com\\/blog\\/osclass-44-major-release-b36\"},{\"id\":\"35\",\"slug\":\"osclass-43-major-update\",\"image\":\"https:\\/\\/osclasspoint.com\\/oc-content\\/plugins\\/blog\\/img\\/blog\\/35.jpg\",\"category_id\":\"1\",\"views\":\"7941\",\"pub_date\":\"2021-01-26 00:00:00\",\"title\":\"Osclass 4.3 major update\",\"subtitle\":\"Today we bring new version of osclass that is primarily aimed to provide full compatibility to PHP 8, but also improving existing features as well as brings new features to classifieds script osclass.\",\"description\":\"Osclass release overview Osclass belongs to best classifieds scripts for years and it\'s continuos development is important and today we bring compatibility update of osclass to work properly on newly released PHP 8. \\u00a0 PHP v8 compatibility update It may seem like small step, but actually PHP 8 brings a lot of differences those needed to be checked and considered. We\'ve reviewed all core files of osclass, but not just that. This update indirectly includes also update of more than 120 products avai...\",\"short_description\":\"Today we bring new version of osclass that is primarily aimed to provide full compatibility to PHP 8, but also improving existing features as well as brings new features to classifieds script osclass.\",\"link\":\"https:\\/\\/osclasspoint.com\\/blog\\/osclass-43-major-update-b35\"},{\"id\":\"34\",\"slug\":\"osclass-42-major-update\",\"image\":\"https:\\/\\/osclasspoint.com\\/oc-content\\/plugins\\/blog\\/img\\/blog\\/34.jpg\",\"category_id\":\"1\",\"views\":\"12511\",\"pub_date\":\"2020-11-10 00:00:00\",\"title\":\"Osclass 4.2 major update\",\"subtitle\":\"\\\"Xmas\\\" major release is there as a gift for you! It brings more than 30 features and fixes, improves stability, speed, SEO and add a lot of new functionality to osclass classifieds script.\",\"description\":\"Major osclass release overview \\\"Xmas\\\" release is there and brings ton of new features, let\'s go trough all of them! \\u00a0 CSS style sheets and JS scripts optimization New functionality to optimize, merge and minify CSS style sheets and JS scripts has been integrated directly into osclass. You can now optimize your classifieds even more than ever before. Read more about CSS &amp; JS optimization feature in osclass. \\u00a0 Market built-in to backoffice Market features has been completely rebuilt from scrat...\",\"short_description\":\"\\\"Xmas\\\" major release is there as a gift for you! It brings more than 30 features and fixes, improves stability, speed, SEO and add a lot of new functionality to osclass classifieds script.\",\"link\":\"https:\\/\\/osclasspoint.com\\/blog\\/osclass-42-major-update-b34\"}]}', 'STRING'),
('osclass', 'widget_data_product', '{\"date\":\"2021-12-19 15:49:17\",\"data\":{\"bieyVwillf6RUKpr4hav\":{\"pk_i_id\":\"182\",\"s_title\":\"Item Password Osclass Plugin\",\"s_contact_name\":\"MB Themes\",\"s_url\":\"https:\\/\\/osclasspoint.com\\/osclass-plugins\\/extra-fields-and-other\\/item-password-osclass-plugin-i182\",\"s_thumbnail_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/867_thumbnail.jpg\",\"s_preview_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/867_preview.jpg\",\"s_large_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/867.jpg\",\"s_description\":\"Let customers define their password to manage listing. Using this password, listing can be easily updated or removed without need to login or search for edit\\/delete links in emails. Manage listing via password Item Password Plugin for Oscla...\",\"dt_pub_date\":\"2021-12-06 10:30:13\",\"i_category_id\":\"103\",\"s_category_name\":\"Extra fields and Other\",\"i_price\":\"11.99\",\"b_purchased\":0,\"s_purchase_url\":\"https:\\/\\/osclasspoint.com\\/osclasspay\\/updatecart\\/1101x1x182x11.99\",\"s_download_url\":\"https:\\/\\/osclasspoint.com\\/download\\/182\",\"i_download\":\"2\",\"i_order\":\"1\",\"i_rating\":\"0.0\",\"i_rating_count\":\"0\",\"i_version\":\"1.1.0\",\"i_osc_version_from\":\"3.0\",\"i_osc_version_to\":\"\",\"dt_update_date\":\"2021-12-06 14:08:06\",\"s_product_key\":\"bieyVwillf6RUKpr4hav\",\"s_update_comment\":\"Added protection for password - after 5 failed attempts, listing edit (from plugin) is blocked for 5 minutes.\",\"theme_type\":\"\",\"type\":\"plugin\"},\"dI2zdwnHWj1TnMldUVji\":{\"pk_i_id\":\"181\",\"s_title\":\"Contact Form Limits Plugin\",\"s_contact_name\":\"MB Themes\",\"s_url\":\"https:\\/\\/osclasspoint.com\\/osclass-plugins\\/protection-and-spam\\/contact-form-limits-plugin-i181\",\"s_thumbnail_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/863_thumbnail.jpg\",\"s_preview_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/863_preview.jpg\",\"s_large_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/863.jpg\",\"s_description\":\"Contact form limits plugin protects forms on your Osclass classifieds website and does not allow to spam your customers. Plugin can also create new ban rules for spammers those use banned words (i.e. some domain) or they are trying to conti...\",\"dt_pub_date\":\"2021-12-01 14:40:22\",\"i_category_id\":\"104\",\"s_category_name\":\"Protection and Spam\",\"i_price\":\"23.99\",\"b_purchased\":0,\"s_purchase_url\":\"https:\\/\\/osclasspoint.com\\/osclasspay\\/updatecart\\/1101x1x181x23.99\",\"s_download_url\":\"https:\\/\\/osclasspoint.com\\/download\\/181\",\"i_download\":\"7\",\"i_order\":\"3\",\"i_rating\":\"5.0\",\"i_rating_count\":\"1\",\"i_version\":\"1.0.3\",\"i_osc_version_from\":\"3.0\",\"i_osc_version_to\":\"\",\"dt_update_date\":\"2021-12-05 10:56:58\",\"s_product_key\":\"dI2zdwnHWj1TnMldUVji\",\"s_update_comment\":\"Fixed ban counter possible issues.\",\"theme_type\":\"\",\"type\":\"plugin\"},\"DxMMDzXC3d39tvALXnGE\":{\"pk_i_id\":\"180\",\"s_title\":\"History Logger Osclass Plugin\",\"s_contact_name\":\"MB Themes\",\"s_url\":\"https:\\/\\/osclasspoint.com\\/osclass-plugins\\/protection-and-spam\\/history-logger-osclass-plugin-i180\",\"s_thumbnail_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/859_thumbnail.jpg\",\"s_preview_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/859_preview.jpg\",\"s_large_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/859.jpg\",\"s_description\":\"Plugin store information about listings and users, even these are changed or removed by their owners in order to preserve historical data. Basic stats are collected about data stored by plugin and convenient way to search &amp; filter logs....\",\"dt_pub_date\":\"2021-11-30 14:04:20\",\"i_category_id\":\"104\",\"s_category_name\":\"Protection and Spam\",\"i_price\":\"17.99\",\"b_purchased\":0,\"s_purchase_url\":\"https:\\/\\/osclasspoint.com\\/osclasspay\\/updatecart\\/1101x1x180x17.99\",\"s_download_url\":\"https:\\/\\/osclasspoint.com\\/download\\/180\",\"i_download\":\"9\",\"i_order\":\"6\",\"i_rating\":\"5.0\",\"i_rating_count\":\"1\",\"i_version\":\"1.0.2\",\"i_osc_version_from\":\"3.0\",\"i_osc_version_to\":\"\",\"dt_update_date\":\"2021-12-17 13:51:37\",\"s_product_key\":\"DxMMDzXC3d39tvALXnGE\",\"s_update_comment\":\"Fixed problem with pagination in user section.\",\"theme_type\":\"\",\"type\":\"plugin\"},\"vliNRyxVet2OKwvL6b9L\":{\"pk_i_id\":\"179\",\"s_title\":\"Visitors Checking Item Counter Plugin\",\"s_contact_name\":\"MB Themes\",\"s_url\":\"https:\\/\\/osclasspoint.com\\/osclass-plugins\\/design-and-appearance\\/visitors-checking-item-counter-plugin-i179\",\"s_thumbnail_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/855_thumbnail.jpg\",\"s_preview_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/855_preview.jpg\",\"s_large_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/855.jpg\",\"s_description\":\"Create functionality to identify how many other users are checking particular listing. This information is then shown on listing page to make items more attractive and tries to push buyers to contact seller as listing looks \\\"wanted\\\". XY peo...\",\"dt_pub_date\":\"2021-11-23 13:37:37\",\"i_category_id\":\"106\",\"s_category_name\":\"Design and Appearance\",\"i_price\":\"11.99\",\"b_purchased\":0,\"s_purchase_url\":\"https:\\/\\/osclasspoint.com\\/osclasspay\\/updatecart\\/1101x1x179x11.99\",\"s_download_url\":\"https:\\/\\/osclasspoint.com\\/download\\/179\",\"i_download\":\"6\",\"i_order\":\"5\",\"i_rating\":\"0.0\",\"i_rating_count\":\"0\",\"i_version\":\"1.0.1\",\"i_osc_version_from\":\"3.0\",\"i_osc_version_to\":\"\",\"dt_update_date\":\"2021-12-05 11:56:38\",\"s_product_key\":\"vliNRyxVet2OKwvL6b9L\",\"s_update_comment\":\"Message generation moved to footer to avoid flickering on page load.\",\"theme_type\":\"\",\"type\":\"plugin\"},\"FxBSA3UNkXmCsJ5Rk5h2\":{\"pk_i_id\":\"178\",\"s_title\":\"Price Comparison Plugin\",\"s_contact_name\":\"MB Themes\",\"s_url\":\"https:\\/\\/osclasspoint.com\\/osclass-plugins\\/design-and-appearance\\/price-comparison-plugin-i178\",\"s_thumbnail_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/849_thumbnail.jpg\",\"s_preview_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/849_preview.jpg\",\"s_large_url\":\"https:\\/\\/static-d761.kxcdn.com\\/oc-content\\/uploads\\/1\\/849.jpg\",\"s_description\":\"Price Comparison Plugin for Osclass classifieds add brand new functionality into your website to calculate price index of your listings, price history and evolution of similar items or create advanced related items section. Create price ind...\",\"dt_pub_date\":\"2021-11-15 14:12:00\",\"i_category_id\":\"106\",\"s_category_name\":\"Design and Appearance\",\"i_price\":\"17.99\",\"b_purchased\":0,\"s_purchase_url\":\"https:\\/\\/osclasspoint.com\\/osclasspay\\/updatecart\\/1101x1x178x17.99\",\"s_download_url\":\"https:\\/\\/osclasspoint.com\\/download\\/178\",\"i_download\":\"22\",\"i_order\":\"4\",\"i_rating\":\"5.0\",\"i_rating_count\":\"1\",\"i_version\":\"1.0.2\",\"i_osc_version_from\":\"3.0\",\"i_osc_version_to\":\"\",\"dt_update_date\":\"2021-11-18 09:13:31\",\"s_product_key\":\"FxBSA3UNkXmCsJ5Rk5h2\",\"s_update_comment\":\"Fixed issue with updating old price.\",\"theme_type\":\"\",\"type\":\"plugin\"}}}', 'STRING'),
('osclass', 'widget_data_product_updates', '{\"date\":\"2021-12-19 15:49:20\",\"data\":{\"last_update\":\"2021-12-19 01:00:00\",\"link_all\":\"https:\\/\\/osclasspoint.com\\/product-updates\",\"updates\":[{\"fk_i_item_id\":\"51\",\"i_version\":\"3.2.0\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"s_comment\":\"Major update: Removed old styles and fonts.\\nFixed typos in backoffice.\",\"s_title\":\"Anti-Spam and Bot Protection Osclass Plugin\",\"s_url\":\"https:\\/\\/osclasspoint.com\\/index.php?page=item&id=51\",\"dt_date\":\"2021-12-17 14:15:52\"},{\"fk_i_item_id\":\"180\",\"i_version\":\"1.0.2\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"s_comment\":\"Fixed problem with pagination in user section.\",\"s_title\":\"History Logger Osclass Plugin\",\"s_url\":\"https:\\/\\/osclasspoint.com\\/index.php?page=item&id=180\",\"dt_date\":\"2021-12-17 13:51:37\"},{\"fk_i_item_id\":\"46\",\"i_version\":\"3.4.2\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"s_comment\":\"Fixed non-functional \\\"Pay per Publish\\\" option.\\nGateways section in backoffice has been split into \\\"Settings\\\" and \\\"Bank Transfers Management\\\" to simplify navigation in backoffice.\\nBank transfers section has been slightly redesigned, design of buttons has been updated and fixed.\",\"s_title\":\"Osclass Pay Payment Plugin\",\"s_url\":\"https:\\/\\/osclasspoint.com\\/index.php?page=item&id=46\",\"dt_date\":\"2021-12-09 10:52:53\"},{\"fk_i_item_id\":\"63\",\"i_version\":\"1.6.1\",\"s_osc_version_from\":\"3.3\",\"s_osc_version_to\":\"\",\"s_comment\":\"New feature added - hide phone number for non-logged users.\\nNew feature added - hide contact form for non-logged users.\",\"s_title\":\"Veronika Osclass Theme\",\"s_url\":\"https:\\/\\/osclasspoint.com\\/index.php?page=item&id=63\",\"dt_date\":\"2021-12-09 09:37:57\"},{\"fk_i_item_id\":\"62\",\"i_version\":\"2.3.5\",\"s_osc_version_from\":\"3.0\",\"s_osc_version_to\":\"\",\"s_comment\":\"Fixed minor issues with marking premium items as favorite.\",\"s_title\":\"Favorite Items Plugin\",\"s_url\":\"https:\\/\\/osclasspoint.com\\/index.php?page=item&id=62\",\"dt_date\":\"2021-12-08 13:34:36\"}]}}', 'STRING'),
('osclass', 'widget_data_update', '{\"date\":\"2021-12-19 15:49:19\",\"data\":{\"version\":800,\"version_string\":\"8.0.0\",\"url\":\"https:\\/\\/osclass-classifieds.com\\/file\\/osclass-v8.0.0.zip\",\"s_name\":\"v8.0.0\"}}', 'STRING'),
('sigma', 'defaultLocationShowAs', 'dropdown', 'STRING'),
('sigma', 'defaultShowAs@all', 'list', 'STRING'),
('sigma', 'donation', '0', 'STRING'),
('sigma', 'footer_link', '1', 'STRING'),
('sigma', 'keyword_placeholder', 'ie. PHP Programmer', 'STRING'),
('sigma', 'logo', 'sigma_logo.png', 'STRING'),
('sigma', 'rtl', '0', 'STRING'),
('sigma', 'version', '133', 'STRING'),
('theme-delta', 'banners', '0', 'STRING'),
('theme-delta', 'banner_optimize_adsense', '0', 'STRING'),
('theme-delta', 'blog_home', '1', 'STRING'),
('theme-delta', 'blog_home_count', '4', 'STRING'),
('theme-delta', 'blog_home_design', 'list', 'STRING'),
('theme-delta', 'cat_icons', '0', 'STRING'),
('theme-delta', 'color', '#4182c3', 'STRING'),
('theme-delta', 'color2', '#49b975', 'STRING'),
('theme-delta', 'color3', '#ef404f', 'STRING'),
('theme-delta', 'company_home', '1', 'STRING'),
('theme-delta', 'company_home_count', '8', 'STRING'),
('theme-delta', 'date_format', 'mm/dd', 'STRING'),
('theme-delta', 'default_logo', '1', 'STRING'),
('theme-delta', 'def_cur', '$', 'STRING'),
('theme-delta', 'def_design', '', 'STRING'),
('theme-delta', 'def_locations', 'region', 'STRING'),
('theme-delta', 'def_view', '1', 'STRING'),
('theme-delta', 'favorite_count', '8', 'STRING'),
('theme-delta', 'favorite_design', 'compact', 'STRING'),
('theme-delta', 'favorite_home', '1', 'STRING'),
('theme-delta', 'footer_link', '1', 'STRING'),
('theme-delta', 'forms_ajax', '1', 'STRING'),
('theme-delta', 'latest_category', '', 'STRING'),
('theme-delta', 'latest_design', 'compact', 'STRING'),
('theme-delta', 'latest_picture', '0', 'STRING'),
('theme-delta', 'latest_premium', '0', 'STRING'),
('theme-delta', 'latest_random', '1', 'STRING'),
('theme-delta', 'lazy_load', '0', 'STRING'),
('theme-delta', 'post_extra_exclude', '', 'STRING'),
('theme-delta', 'post_required', '', 'STRING'),
('theme-delta', 'premium_home', '1', 'STRING'),
('theme-delta', 'premium_home_count', '4', 'STRING'),
('theme-delta', 'premium_home_design', '', 'STRING'),
('theme-delta', 'premium_search', '1', 'STRING'),
('theme-delta', 'premium_search_count', '12', 'STRING'),
('theme-delta', 'premium_search_design', 'compact', 'STRING'),
('theme-delta', 'preview', '1', 'STRING'),
('theme-delta', 'promote_home', '1', 'STRING'),
('theme-delta', 'public_items', '24', 'STRING'),
('theme-delta', 'publish_category', '4', 'STRING'),
('theme-delta', 'related', '1', 'STRING'),
('theme-delta', 'related_count', '12', 'STRING'),
('theme-delta', 'related_design', 'tiny', 'STRING'),
('theme-delta', 'save_search_position', '', 'STRING'),
('theme-delta', 'search_ajax', '1', 'STRING'),
('theme-delta', 'site_email', 'support@dot.com', 'STRING'),
('theme-delta', 'site_phone', '+1 (800) 228-5651', 'STRING'),
('theme-delta', 'user_items', '1', 'STRING'),
('theme-delta', 'user_items_count', '12', 'STRING'),
('theme-delta', 'user_items_design', 'compact', 'STRING'),
('theme-delta', 'version', '1.2.0', 'STRING'),
('theme-delta', 'website_name', 'DeltaTheme', 'STRING');

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_region`
--

CREATE TABLE `oc_t_region` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `fk_c_country_code` char(2) NOT NULL,
  `s_name` varchar(60) NOT NULL,
  `s_name_native` varchar(60) DEFAULT NULL,
  `s_slug` varchar(60) NOT NULL DEFAULT '',
  `b_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_t_region`
--

INSERT INTO `oc_t_region` (`pk_i_id`, `fk_c_country_code`, `s_name`, `s_name_native`, `s_slug`, `b_active`) VALUES
(3337166, 'BD', 'Rajshahi Division', NULL, 'rajshahi-division', 1),
(3337179, 'BD', 'Dhaka', NULL, 'dhaka', 1),
(3337200, 'BD', 'Chittagong', NULL, 'chittagong', 1),
(3337210, 'BD', 'Khulna', NULL, 'khulna', 1),
(3337229, 'BD', 'Baris??l', NULL, 'barisal', 1),
(3477362, 'BD', 'Sylhet', NULL, 'sylhet', 1),
(9671048, 'BD', 'Rangpur Division', NULL, 'rangpur-division', 1),
(13287936, 'BD', 'Mymensingh Division', NULL, 'mymensingh-division', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_region_stats`
--

CREATE TABLE `oc_t_region_stats` (
  `fk_i_region_id` int(10) UNSIGNED NOT NULL,
  `i_num_items` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_user`
--

CREATE TABLE `oc_t_user` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `dt_reg_date` datetime NOT NULL,
  `dt_mod_date` datetime DEFAULT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_username` varchar(100) NOT NULL,
  `s_password` char(60) NOT NULL,
  `s_secret` varchar(40) DEFAULT NULL,
  `s_email` varchar(100) NOT NULL,
  `s_website` varchar(100) DEFAULT NULL,
  `s_phone_land` varchar(45) DEFAULT NULL,
  `s_phone_mobile` varchar(45) DEFAULT NULL,
  `b_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `b_active` tinyint(1) NOT NULL DEFAULT '0',
  `s_pass_code` varchar(100) DEFAULT NULL,
  `s_pass_date` datetime DEFAULT NULL,
  `s_pass_ip` varchar(15) DEFAULT NULL,
  `fk_c_country_code` char(2) DEFAULT NULL,
  `s_country` varchar(40) DEFAULT NULL,
  `s_country_native` varchar(80) DEFAULT NULL,
  `s_address` varchar(100) DEFAULT NULL,
  `s_zip` varchar(15) DEFAULT NULL,
  `fk_i_region_id` int(10) UNSIGNED DEFAULT NULL,
  `s_region` varchar(100) DEFAULT NULL,
  `s_region_native` varchar(60) DEFAULT NULL,
  `fk_i_city_id` int(10) UNSIGNED DEFAULT NULL,
  `s_city` varchar(100) DEFAULT NULL,
  `s_city_native` varchar(60) DEFAULT NULL,
  `fk_i_city_area_id` int(10) UNSIGNED DEFAULT NULL,
  `s_city_area` varchar(200) DEFAULT NULL,
  `d_coord_lat` decimal(20,10) DEFAULT NULL,
  `d_coord_long` decimal(20,10) DEFAULT NULL,
  `b_company` tinyint(1) NOT NULL DEFAULT '0',
  `i_items` int(10) UNSIGNED DEFAULT '0',
  `i_comments` int(10) UNSIGNED DEFAULT '0',
  `dt_access_date` datetime DEFAULT NULL,
  `s_access_ip` varchar(15) NOT NULL DEFAULT '',
  `i_login_fails` int(3) DEFAULT '0',
  `dt_login_fail_date` datetime DEFAULT NULL,
  `s_profile_img` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_user_description`
--

CREATE TABLE `oc_t_user_description` (
  `fk_i_user_id` int(10) UNSIGNED NOT NULL,
  `fk_c_locale_code` char(5) NOT NULL,
  `s_info` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_user_email_tmp`
--

CREATE TABLE `oc_t_user_email_tmp` (
  `fk_i_user_id` int(10) UNSIGNED NOT NULL,
  `s_new_email` varchar(100) NOT NULL,
  `dt_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_t_widget`
--

CREATE TABLE `oc_t_widget` (
  `pk_i_id` int(10) UNSIGNED NOT NULL,
  `s_description` varchar(40) NOT NULL,
  `s_location` varchar(40) NOT NULL,
  `e_kind` enum('TEXT','HTML') NOT NULL,
  `s_content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_t_admin`
--
ALTER TABLE `oc_t_admin`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD UNIQUE KEY `s_username` (`s_username`),
  ADD UNIQUE KEY `s_email` (`s_email`);

--
-- Indexes for table `oc_t_alerts`
--
ALTER TABLE `oc_t_alerts`
  ADD PRIMARY KEY (`pk_i_id`);

--
-- Indexes for table `oc_t_alerts_sent`
--
ALTER TABLE `oc_t_alerts_sent`
  ADD PRIMARY KEY (`d_date`);

--
-- Indexes for table `oc_t_ban_rule`
--
ALTER TABLE `oc_t_ban_rule`
  ADD PRIMARY KEY (`pk_i_id`);

--
-- Indexes for table `oc_t_category`
--
ALTER TABLE `oc_t_category`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD KEY `fk_i_parent_id` (`fk_i_parent_id`),
  ADD KEY `i_position` (`i_position`);

--
-- Indexes for table `oc_t_category_delta`
--
ALTER TABLE `oc_t_category_delta`
  ADD PRIMARY KEY (`fk_i_category_id`),
  ADD UNIQUE KEY `fk_i_category_id` (`fk_i_category_id`);

--
-- Indexes for table `oc_t_category_description`
--
ALTER TABLE `oc_t_category_description`
  ADD PRIMARY KEY (`fk_i_category_id`,`fk_c_locale_code`),
  ADD KEY `idx_s_slug` (`s_slug`),
  ADD KEY `fk_c_locale_code` (`fk_c_locale_code`);

--
-- Indexes for table `oc_t_category_stats`
--
ALTER TABLE `oc_t_category_stats`
  ADD PRIMARY KEY (`fk_i_category_id`);

--
-- Indexes for table `oc_t_city`
--
ALTER TABLE `oc_t_city`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD KEY `fk_i_region_id` (`fk_i_region_id`),
  ADD KEY `idx_s_name` (`s_name`),
  ADD KEY `idx_s_slug` (`s_slug`),
  ADD KEY `fk_c_country_code` (`fk_c_country_code`);

--
-- Indexes for table `oc_t_city_area`
--
ALTER TABLE `oc_t_city_area`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD KEY `fk_i_city_id` (`fk_i_city_id`),
  ADD KEY `idx_s_name` (`s_name`);

--
-- Indexes for table `oc_t_city_stats`
--
ALTER TABLE `oc_t_city_stats`
  ADD PRIMARY KEY (`fk_i_city_id`),
  ADD KEY `idx_num_items` (`i_num_items`);

--
-- Indexes for table `oc_t_country`
--
ALTER TABLE `oc_t_country`
  ADD PRIMARY KEY (`pk_c_code`),
  ADD KEY `idx_s_slug` (`s_slug`),
  ADD KEY `idx_s_name` (`s_name`);

--
-- Indexes for table `oc_t_country_stats`
--
ALTER TABLE `oc_t_country_stats`
  ADD PRIMARY KEY (`fk_c_country_code`),
  ADD KEY `idx_num_items` (`i_num_items`);

--
-- Indexes for table `oc_t_currency`
--
ALTER TABLE `oc_t_currency`
  ADD PRIMARY KEY (`pk_c_code`),
  ADD UNIQUE KEY `s_name` (`s_name`);

--
-- Indexes for table `oc_t_item`
--
ALTER TABLE `oc_t_item`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD KEY `fk_i_user_id` (`fk_i_user_id`),
  ADD KEY `idx_b_premium` (`b_premium`),
  ADD KEY `idx_s_contact_email` (`s_contact_email`(10)),
  ADD KEY `fk_i_category_id` (`fk_i_category_id`),
  ADD KEY `fk_c_currency_code` (`fk_c_currency_code`),
  ADD KEY `idx_pub_date` (`dt_pub_date`),
  ADD KEY `idx_price` (`i_price`);

--
-- Indexes for table `oc_t_item_comment`
--
ALTER TABLE `oc_t_item_comment`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD KEY `fk_i_item_id` (`fk_i_item_id`),
  ADD KEY `fk_i_user_id` (`fk_i_user_id`);

--
-- Indexes for table `oc_t_item_delta`
--
ALTER TABLE `oc_t_item_delta`
  ADD PRIMARY KEY (`fk_i_item_id`),
  ADD UNIQUE KEY `fk_i_item_id` (`fk_i_item_id`);

--
-- Indexes for table `oc_t_item_description`
--
ALTER TABLE `oc_t_item_description`
  ADD PRIMARY KEY (`fk_i_item_id`,`fk_c_locale_code`);
ALTER TABLE `oc_t_item_description` ADD FULLTEXT KEY `s_description` (`s_description`,`s_title`);

--
-- Indexes for table `oc_t_item_location`
--
ALTER TABLE `oc_t_item_location`
  ADD PRIMARY KEY (`fk_i_item_id`),
  ADD KEY `fk_c_country_code` (`fk_c_country_code`),
  ADD KEY `fk_i_region_id` (`fk_i_region_id`),
  ADD KEY `fk_i_city_id` (`fk_i_city_id`),
  ADD KEY `fk_i_city_area_id` (`fk_i_city_area_id`);

--
-- Indexes for table `oc_t_item_meta`
--
ALTER TABLE `oc_t_item_meta`
  ADD PRIMARY KEY (`fk_i_item_id`,`fk_i_field_id`,`s_multi`),
  ADD KEY `s_value` (`s_value`(255)),
  ADD KEY `fk_i_field_id` (`fk_i_field_id`);

--
-- Indexes for table `oc_t_item_resource`
--
ALTER TABLE `oc_t_item_resource`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD KEY `fk_i_item_id` (`fk_i_item_id`),
  ADD KEY `idx_s_content_type` (`pk_i_id`,`s_content_type`(10));

--
-- Indexes for table `oc_t_item_stats`
--
ALTER TABLE `oc_t_item_stats`
  ADD PRIMARY KEY (`fk_i_item_id`,`dt_date`),
  ADD KEY `dt_date_fk_i_item_id` (`dt_date`,`fk_i_item_id`);

--
-- Indexes for table `oc_t_item_stats_delta`
--
ALTER TABLE `oc_t_item_stats_delta`
  ADD PRIMARY KEY (`fk_i_item_id`,`dt_date`);

--
-- Indexes for table `oc_t_keywords`
--
ALTER TABLE `oc_t_keywords`
  ADD PRIMARY KEY (`s_md5`,`fk_c_locale_code`),
  ADD KEY `fk_i_category_id` (`fk_i_category_id`),
  ADD KEY `fk_i_city_id` (`fk_i_city_id`),
  ADD KEY `fk_c_locale_code` (`fk_c_locale_code`);

--
-- Indexes for table `oc_t_locale`
--
ALTER TABLE `oc_t_locale`
  ADD PRIMARY KEY (`pk_c_code`),
  ADD UNIQUE KEY `s_short_name` (`s_short_name`);

--
-- Indexes for table `oc_t_locations_tmp`
--
ALTER TABLE `oc_t_locations_tmp`
  ADD PRIMARY KEY (`id_location`,`e_type`);

--
-- Indexes for table `oc_t_meta_categories`
--
ALTER TABLE `oc_t_meta_categories`
  ADD PRIMARY KEY (`fk_i_category_id`,`fk_i_field_id`),
  ADD KEY `fk_i_field_id` (`fk_i_field_id`);

--
-- Indexes for table `oc_t_meta_fields`
--
ALTER TABLE `oc_t_meta_fields`
  ADD PRIMARY KEY (`pk_i_id`);

--
-- Indexes for table `oc_t_pages`
--
ALTER TABLE `oc_t_pages`
  ADD PRIMARY KEY (`pk_i_id`);

--
-- Indexes for table `oc_t_pages_description`
--
ALTER TABLE `oc_t_pages_description`
  ADD PRIMARY KEY (`fk_i_pages_id`,`fk_c_locale_code`),
  ADD KEY `fk_c_locale_code` (`fk_c_locale_code`);

--
-- Indexes for table `oc_t_plugin_category`
--
ALTER TABLE `oc_t_plugin_category`
  ADD KEY `fk_i_category_id` (`fk_i_category_id`);

--
-- Indexes for table `oc_t_preference`
--
ALTER TABLE `oc_t_preference`
  ADD UNIQUE KEY `s_section` (`s_section`,`s_name`);

--
-- Indexes for table `oc_t_region`
--
ALTER TABLE `oc_t_region`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD KEY `fk_c_country_code` (`fk_c_country_code`),
  ADD KEY `idx_s_name` (`s_name`),
  ADD KEY `idx_s_slug` (`s_slug`);

--
-- Indexes for table `oc_t_region_stats`
--
ALTER TABLE `oc_t_region_stats`
  ADD PRIMARY KEY (`fk_i_region_id`),
  ADD KEY `idx_num_items` (`i_num_items`);

--
-- Indexes for table `oc_t_user`
--
ALTER TABLE `oc_t_user`
  ADD PRIMARY KEY (`pk_i_id`),
  ADD UNIQUE KEY `s_email` (`s_email`),
  ADD KEY `idx_s_name` (`s_name`(6)),
  ADD KEY `idx_s_username` (`s_username`),
  ADD KEY `fk_c_country_code` (`fk_c_country_code`),
  ADD KEY `fk_i_region_id` (`fk_i_region_id`),
  ADD KEY `fk_i_city_id` (`fk_i_city_id`),
  ADD KEY `fk_i_city_area_id` (`fk_i_city_area_id`);

--
-- Indexes for table `oc_t_user_description`
--
ALTER TABLE `oc_t_user_description`
  ADD PRIMARY KEY (`fk_i_user_id`,`fk_c_locale_code`),
  ADD KEY `fk_c_locale_code` (`fk_c_locale_code`);

--
-- Indexes for table `oc_t_user_email_tmp`
--
ALTER TABLE `oc_t_user_email_tmp`
  ADD PRIMARY KEY (`fk_i_user_id`);

--
-- Indexes for table `oc_t_widget`
--
ALTER TABLE `oc_t_widget`
  ADD PRIMARY KEY (`pk_i_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_t_admin`
--
ALTER TABLE `oc_t_admin`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_t_alerts`
--
ALTER TABLE `oc_t_alerts`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_t_ban_rule`
--
ALTER TABLE `oc_t_ban_rule`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_t_category`
--
ALTER TABLE `oc_t_category`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `oc_t_city`
--
ALTER TABLE `oc_t_city`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14200064;

--
-- AUTO_INCREMENT for table `oc_t_item`
--
ALTER TABLE `oc_t_item`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_t_item_comment`
--
ALTER TABLE `oc_t_item_comment`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_t_item_resource`
--
ALTER TABLE `oc_t_item_resource`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_t_meta_fields`
--
ALTER TABLE `oc_t_meta_fields`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_t_pages`
--
ALTER TABLE `oc_t_pages`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `oc_t_region`
--
ALTER TABLE `oc_t_region`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13287937;

--
-- AUTO_INCREMENT for table `oc_t_user`
--
ALTER TABLE `oc_t_user`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_t_widget`
--
ALTER TABLE `oc_t_widget`
  MODIFY `pk_i_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `oc_t_category`
--
ALTER TABLE `oc_t_category`
  ADD CONSTRAINT `oc_t_category_ibfk_1` FOREIGN KEY (`fk_i_parent_id`) REFERENCES `oc_t_category` (`pk_i_id`);

--
-- Constraints for table `oc_t_category_delta`
--
ALTER TABLE `oc_t_category_delta`
  ADD CONSTRAINT `oc_t_category_delta_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `oc_t_category_description`
--
ALTER TABLE `oc_t_category_description`
  ADD CONSTRAINT `oc_t_category_description_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_category_description_ibfk_2` FOREIGN KEY (`fk_c_locale_code`) REFERENCES `oc_t_locale` (`pk_c_code`);

--
-- Constraints for table `oc_t_category_stats`
--
ALTER TABLE `oc_t_category_stats`
  ADD CONSTRAINT `oc_t_category_stats_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`);

--
-- Constraints for table `oc_t_city`
--
ALTER TABLE `oc_t_city`
  ADD CONSTRAINT `oc_t_city_ibfk_1` FOREIGN KEY (`fk_i_region_id`) REFERENCES `oc_t_region` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_city_ibfk_2` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oc_t_country` (`pk_c_code`);

--
-- Constraints for table `oc_t_city_area`
--
ALTER TABLE `oc_t_city_area`
  ADD CONSTRAINT `oc_t_city_area_ibfk_1` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oc_t_city` (`pk_i_id`);

--
-- Constraints for table `oc_t_city_stats`
--
ALTER TABLE `oc_t_city_stats`
  ADD CONSTRAINT `oc_t_city_stats_ibfk_1` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oc_t_city` (`pk_i_id`);

--
-- Constraints for table `oc_t_country_stats`
--
ALTER TABLE `oc_t_country_stats`
  ADD CONSTRAINT `oc_t_country_stats_ibfk_1` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oc_t_country` (`pk_c_code`);

--
-- Constraints for table `oc_t_item`
--
ALTER TABLE `oc_t_item`
  ADD CONSTRAINT `oc_t_item_ibfk_1` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oc_t_user` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_item_ibfk_2` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_item_ibfk_3` FOREIGN KEY (`fk_c_currency_code`) REFERENCES `oc_t_currency` (`pk_c_code`);

--
-- Constraints for table `oc_t_item_comment`
--
ALTER TABLE `oc_t_item_comment`
  ADD CONSTRAINT `oc_t_item_comment_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_item_comment_ibfk_2` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oc_t_user` (`pk_i_id`);

--
-- Constraints for table `oc_t_item_delta`
--
ALTER TABLE `oc_t_item_delta`
  ADD CONSTRAINT `oc_t_item_delta_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `oc_t_item_location`
--
ALTER TABLE `oc_t_item_location`
  ADD CONSTRAINT `oc_t_item_location_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_item_location_ibfk_2` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oc_t_country` (`pk_c_code`),
  ADD CONSTRAINT `oc_t_item_location_ibfk_3` FOREIGN KEY (`fk_i_region_id`) REFERENCES `oc_t_region` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_item_location_ibfk_4` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oc_t_city` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_item_location_ibfk_5` FOREIGN KEY (`fk_i_city_area_id`) REFERENCES `oc_t_city_area` (`pk_i_id`);

--
-- Constraints for table `oc_t_item_meta`
--
ALTER TABLE `oc_t_item_meta`
  ADD CONSTRAINT `oc_t_item_meta_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_item_meta_ibfk_2` FOREIGN KEY (`fk_i_field_id`) REFERENCES `oc_t_meta_fields` (`pk_i_id`);

--
-- Constraints for table `oc_t_item_resource`
--
ALTER TABLE `oc_t_item_resource`
  ADD CONSTRAINT `oc_t_item_resource_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`);

--
-- Constraints for table `oc_t_item_stats`
--
ALTER TABLE `oc_t_item_stats`
  ADD CONSTRAINT `oc_t_item_stats_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`);

--
-- Constraints for table `oc_t_item_stats_delta`
--
ALTER TABLE `oc_t_item_stats_delta`
  ADD CONSTRAINT `oc_t_item_stats_delta_ibfk_1` FOREIGN KEY (`fk_i_item_id`) REFERENCES `oc_t_item` (`pk_i_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `oc_t_keywords`
--
ALTER TABLE `oc_t_keywords`
  ADD CONSTRAINT `oc_t_keywords_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_keywords_ibfk_2` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oc_t_city` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_keywords_ibfk_3` FOREIGN KEY (`fk_c_locale_code`) REFERENCES `oc_t_locale` (`pk_c_code`);

--
-- Constraints for table `oc_t_meta_categories`
--
ALTER TABLE `oc_t_meta_categories`
  ADD CONSTRAINT `oc_t_meta_categories_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_meta_categories_ibfk_2` FOREIGN KEY (`fk_i_field_id`) REFERENCES `oc_t_meta_fields` (`pk_i_id`);

--
-- Constraints for table `oc_t_pages_description`
--
ALTER TABLE `oc_t_pages_description`
  ADD CONSTRAINT `oc_t_pages_description_ibfk_1` FOREIGN KEY (`fk_i_pages_id`) REFERENCES `oc_t_pages` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_pages_description_ibfk_2` FOREIGN KEY (`fk_c_locale_code`) REFERENCES `oc_t_locale` (`pk_c_code`);

--
-- Constraints for table `oc_t_plugin_category`
--
ALTER TABLE `oc_t_plugin_category`
  ADD CONSTRAINT `oc_t_plugin_category_ibfk_1` FOREIGN KEY (`fk_i_category_id`) REFERENCES `oc_t_category` (`pk_i_id`);

--
-- Constraints for table `oc_t_region`
--
ALTER TABLE `oc_t_region`
  ADD CONSTRAINT `oc_t_region_ibfk_1` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oc_t_country` (`pk_c_code`);

--
-- Constraints for table `oc_t_region_stats`
--
ALTER TABLE `oc_t_region_stats`
  ADD CONSTRAINT `oc_t_region_stats_ibfk_1` FOREIGN KEY (`fk_i_region_id`) REFERENCES `oc_t_region` (`pk_i_id`);

--
-- Constraints for table `oc_t_user`
--
ALTER TABLE `oc_t_user`
  ADD CONSTRAINT `oc_t_user_ibfk_1` FOREIGN KEY (`fk_c_country_code`) REFERENCES `oc_t_country` (`pk_c_code`),
  ADD CONSTRAINT `oc_t_user_ibfk_2` FOREIGN KEY (`fk_i_region_id`) REFERENCES `oc_t_region` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_user_ibfk_3` FOREIGN KEY (`fk_i_city_id`) REFERENCES `oc_t_city` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_user_ibfk_4` FOREIGN KEY (`fk_i_city_area_id`) REFERENCES `oc_t_city_area` (`pk_i_id`);

--
-- Constraints for table `oc_t_user_description`
--
ALTER TABLE `oc_t_user_description`
  ADD CONSTRAINT `oc_t_user_description_ibfk_1` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oc_t_user` (`pk_i_id`),
  ADD CONSTRAINT `oc_t_user_description_ibfk_2` FOREIGN KEY (`fk_c_locale_code`) REFERENCES `oc_t_locale` (`pk_c_code`);

--
-- Constraints for table `oc_t_user_email_tmp`
--
ALTER TABLE `oc_t_user_email_tmp`
  ADD CONSTRAINT `oc_t_user_email_tmp_ibfk_1` FOREIGN KEY (`fk_i_user_id`) REFERENCES `oc_t_user` (`pk_i_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
