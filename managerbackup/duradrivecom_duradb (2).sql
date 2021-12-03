-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 19, 2021 at 08:04 AM
-- Server version: 10.3.31-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duradrivecom_duradb`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_type`
--

CREATE TABLE `account_type` (
  `id` int(11) NOT NULL,
  `accountName` text NOT NULL,
  `description` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_type`
--

INSERT INTO `account_type` (`id`, `accountName`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Personal', 'Lorem ipsum dolor sit amet&nbsp;', 'active', '2021-08-17 17:49:24', '2021-09-04 15:05:51'),
(2, 'Corporate', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'active', '2021-08-17 17:49:24', '2021-08-17 17:49:24'),
(3, 'VIP', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'active', '2021-08-17 17:49:24', '2021-08-17 17:49:24'),
(4, 'Test', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'active', '2021-08-19 14:04:50', '2021-08-21 20:08:49'),
(5, 'test5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'active', '2021-08-19 14:06:27', '2021-08-25 16:49:05'),
(6, 'test51', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'inactive', '2021-08-28 17:56:58', '2021-08-28 17:57:38'),
(7, 'test', 'test1111', 'active', '2021-08-28 20:00:04', '2021-08-28 20:00:42'),
(8, 'personal', 'test', 'active', '2021-10-05 16:11:51', '2021-10-05 16:11:51'),
(9, 'personal', '', 'active', '2021-10-05 16:12:14', '2021-10-05 16:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `admin_type` varchar(255) DEFAULT NULL,
  `area_list` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `name`, `phone`, `address`, `password`, `admin_type`, `area_list`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Upendra update', '+917905848333', 'upendrasngh5@gmail.com', 'test@123', 'alltype', 'alltype', 'role', 1, '2021-09-19 21:02:45', '2021-09-19 14:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `app_url`
--

CREATE TABLE `app_url` (
  `id` int(11) NOT NULL,
  `ios_consumer_url` text DEFAULT NULL,
  `adroid_consumer_url` text DEFAULT NULL,
  `ios_driver_url` text DEFAULT NULL,
  `android_driver_url` text DEFAULT NULL,
  `android_merchant_url` text DEFAULT NULL,
  `android_manager_url` text DEFAULT NULL,
  `website_url` text DEFAULT NULL,
  `created_at` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_url`
--

INSERT INTO `app_url` (`id`, `ios_consumer_url`, `adroid_consumer_url`, `ios_driver_url`, `android_driver_url`, `android_merchant_url`, `android_manager_url`, `website_url`, `created_at`, `updated_at`) VALUES
(1, 'ios', 'android', 'ios', 'android', 'android', 'android', 'website', '2021-09-23 20:51:27', '2021-09-23 15:21:27'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-23 21:06:01', '2021-09-23 15:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `areservice`
--

CREATE TABLE `areservice` (
  `id` int(11) NOT NULL,
  `country` int(11) DEFAULT 0,
  `area` int(11) DEFAULT 0,
  `mon` int(11) DEFAULT 0,
  `tue` int(11) DEFAULT 0,
  `wed` int(11) DEFAULT 0,
  `thu` int(11) DEFAULT 0,
  `fri` int(11) DEFAULT 0,
  `sat` int(11) DEFAULT 0,
  `sun` int(11) DEFAULT 0,
  `sunday_start_time` text DEFAULT NULL,
  `sunday_end_time` text DEFAULT NULL,
  `monday_start_time` varchar(255) DEFAULT NULL,
  `monday_end_time` varchar(255) DEFAULT NULL,
  `tuesday_start_time` varchar(255) DEFAULT NULL,
  `tuesday_end_time` varchar(255) DEFAULT NULL,
  `wednesday_start_time` varchar(255) DEFAULT NULL,
  `wednesday_end_time` varchar(255) DEFAULT NULL,
  `thursday_start_time` varchar(255) DEFAULT NULL,
  `thursday_end_time` varchar(255) DEFAULT NULL,
  `friday_start_time` varchar(255) DEFAULT NULL,
  `friday_end_time` varchar(255) DEFAULT NULL,
  `saturday_start_time` varchar(255) DEFAULT NULL,
  `saturday_end_time` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `areservice`
--

INSERT INTO `areservice` (`id`, `country`, `area`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`, `sun`, `sunday_start_time`, `sunday_end_time`, `monday_start_time`, `monday_end_time`, `tuesday_start_time`, `tuesday_end_time`, `wednesday_start_time`, `wednesday_end_time`, `thursday_start_time`, `thursday_end_time`, `friday_start_time`, `friday_end_time`, `saturday_start_time`, `saturday_end_time`, `created_at`, `updated_at`) VALUES
(1, 169, 14, 1, 1, 1, NULL, 1, 1, 1, '09:37', '14:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-16 21:38:03', '2021-09-16 16:08:03'),
(2, 169, 12, 1, 1, NULL, NULL, NULL, NULL, 1, '04:03', '17:04', '04:02', '17:05', '05:04', '17:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-21 15:03:03', '2021-09-21 09:33:03'),
(3, 169, 13, 1, 1, NULL, NULL, NULL, NULL, 1, '14:22', '14:22', '03:00', '12:00', '05:00', '14:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-30 21:06:31', '2021-09-30 15:36:31');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `bannerName` text NOT NULL,
  `bannerImage` text NOT NULL,
  `bannerDescription` text NOT NULL,
  `status` text DEFAULT NULL,
  `created_at` text DEFAULT NULL,
  `updated_at` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `bannerName`, `bannerImage`, `bannerDescription`, `status`, `created_at`, `updated_at`) VALUES
(1, '30% Off', '20210828123955-7-Reasons-You-Should-Ride-Your-Bike-According-to-The-Weather.jpg.webp', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'inactive', '2021-08-18 17:48:52', '2021-08-28 12:39:55'),
(2, 'First Registration', '20210821155127-4.jpg', 'Lorem Ipsum is simply dummy text', 'active', '2021-08-18 17:48:52', '2021-08-21 15:51:27'),
(3, '40% Off', '20210826223917-1.jpg', 'Lorem Ipsum is simply dummy text', 'active', '2021-08-18 20:27:05', '2021-08-26 22:39:17'),
(4, '41% Off', '20210828192150-2.jpg', 'Lorem Ipsum is simply dummy text', 'active', '2021-08-18 20:29:25', '2021-08-28 19:21:50'),
(5, '40% Off', '20211005152141-5e6131e4afff65c9f59d0fd9_5cdd75f59ec2a00550f8b69a_Variants.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'active', '2021-08-18 20:40:54', '2021-10-05 15:21:42'),
(6, '401% Off', '20211005152212-5e6131e4afff65c9f59d0fd9_5cdd75f59ec2a00550f8b69a_Variants.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'active', '2021-08-18 20:41:57', '2021-10-05 15:22:13'),
(7, '51% Off', '20210828193052-2.jpg', 'Lorem Ipsum is simply dummy text', 'active', '2021-08-18 20:45:57', '2021-08-28 19:30:52'),
(8, '60%', '20210827195251-3.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'active', '2021-08-19 22:06:53', '2021-08-27 19:52:51'),
(9, '80%', '20210831112517-viktor-bystrov-Gi0OMNguFaw-unsplash.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'active', '2021-08-28 12:41:37', '2021-08-31 11:25:17'),
(10, '40%', '20211005152048-5e6131e4afff65c9f59d0fd9_5cdd75f59ec2a00550f8b69a_Variants.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'active', '2021-10-05 15:15:07', '2021-10-05 15:20:49');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `upload_by` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '''0''=>Active, ''1''=>Inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `upload_by`, `brand_name`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'ROLEX', '20200930120553-37538.gif', 0, '2020-09-30 16:07:34', ''),
(3, 1, 'Casio', 'casio.png', 0, '2020-08-27 13:15:50', ''),
(11, 1, 'Audemars Piguet', '20201006140740-Audemars_Piguet_logo_logotype.png', 0, '2020-10-06 18:07:40', ''),
(12, 1, 'PATEK PHILIPPE', '20201009113912-1200px-Patek_Philippe_SA_logo.svg.png', 0, '2020-10-09 15:39:12', ''),
(13, 1, 'HUBLOT', '20201015115129-1200px-Hublot_logo.svg.png', 0, '2020-10-15 15:51:29', ''),
(14, 1, 'IWC', '20201015123219-download.png', 0, '2020-10-15 16:32:19', ''),
(15, 1, 'RICHARD MILLE', '20201019124839-richard.png', 0, '2020-11-30 09:55:13', ''),
(16, 1, 'DIOR', '20201021183911-58429610a6515b1e0ad75ad3.png', 0, '2020-10-21 22:39:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `cardmaster`
--

CREATE TABLE `cardmaster` (
  `id` bigint(20) NOT NULL,
  `cardholdername` varchar(200) NOT NULL,
  `cardnumber` varchar(200) NOT NULL,
  `expdate` varchar(100) NOT NULL,
  `cvv` varchar(100) NOT NULL,
  `isdefault` tinyint(1) NOT NULL,
  `createdbyuserid` int(11) NOT NULL,
  `createddatetime` datetime NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cartmaster`
--

CREATE TABLE `cartmaster` (
  `cartid` bigint(20) NOT NULL,
  `productid` int(11) NOT NULL,
  `cartqty` int(11) NOT NULL,
  `cartcreatedbyuserid` int(11) NOT NULL,
  `createddatetime` datetime NOT NULL DEFAULT current_timestamp(),
  `carttotal` decimal(10,0) NOT NULL,
  `cartdeliverytotal` decimal(10,0) NOT NULL,
  `cartothercharge` decimal(10,0) NOT NULL,
  `carttotalcharge` decimal(10,0) NOT NULL,
  `notes` varchar(300) NOT NULL,
  `coupancode` varchar(200) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `service` varchar(255) DEFAULT NULL,
  `upload_by` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(11) NOT NULL DEFAULT 1 COMMENT '''1''=>Active, ''0''=>Inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `service`, `upload_by`, `brand_id`, `category_name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(12, 'Dura Express', 1, NULL, NULL, '<p>Test update</p>', 1, '2021-10-05 06:38:51', '2021-10-05 12:08:51'),
(13, 'Dura Express', NULL, NULL, NULL, '<p>test</p>', 1, '2021-10-05 15:07:35', '');

-- --------------------------------------------------------

--
-- Table structure for table `categorymaster`
--

CREATE TABLE `categorymaster` (
  `categoryid` bigint(20) NOT NULL,
  `categoryname` varchar(200) NOT NULL,
  `categorydesc` varchar(300) NOT NULL,
  `categorycreatedby` bigint(20) NOT NULL,
  `createddatetime` datetime NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chasout_request`
--

CREATE TABLE `chasout_request` (
  `id` int(11) NOT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `commission` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chasout_request`
--

INSERT INTO `chasout_request` (`id`, `merchant_id`, `name`, `country`, `city`, `date`, `payment`, `commission`, `status`, `created_at`, `updated_at`) VALUES
(1, 9348749, 'Food Corner', 'Philippines', 'Manila', '18/09/2021', '$100', '10%', 'Payment Pending', '18/09/2021', '2021-09-18 11:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `province_id` int(11) UNSIGNED NOT NULL,
  `zipcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `province_id`, `zipcode`) VALUES
(1, 'Bangued', 1, '2800'),
(2, 'Boliney', 1, '2815'),
(3, 'Bucay', 1, '2805'),
(4, 'Bucloc', 1, '2817'),
(5, 'Daguioman', 1, '2816'),
(6, 'Danglas', 1, '2825'),
(7, 'Dolores', 1, '2801'),
(8, 'La Paz', 1, '2826'),
(9, 'Lacub', 1, '2821'),
(10, 'Lagangilang', 1, '2902'),
(11, 'Lagayan', 1, '2824'),
(12, 'Langiden', 1, '2807'),
(13, 'Licuan-Baay', 1, ''),
(14, 'Luba', 1, '2813'),
(15, 'Malibcong', 1, '2820'),
(16, 'Manabo', 1, '2810'),
(17, 'Peñarrubia', 1, ''),
(18, 'Pidigan', 1, '2806'),
(19, 'Pilar', 1, '2812'),
(20, 'Sallapadan', 1, '2818'),
(21, 'San Isidro', 1, '2809'),
(22, 'San Juan', 1, '2823'),
(23, 'San Quintin', 1, '2808'),
(24, 'Tayum', 1, '2803'),
(25, 'Tineg', 1, '2822'),
(26, 'Tubo', 1, '2814'),
(27, 'Villaviciosa', 1, '2811'),
(28, 'Butuan City', 2, '8600'),
(29, 'Buenavista', 2, '8601'),
(30, 'Cabadbaran', 2, '8605'),
(31, 'Carmen', 2, '8603'),
(32, 'Jabonga', 2, '8607'),
(33, 'Kitcharao', 2, '8609'),
(34, 'Las Nieves', 2, '8610'),
(35, 'Magallanes', 2, '8604'),
(36, 'Nasipit', 2, '8602'),
(37, 'Remedios T. Romualdez', 2, '8611'),
(38, 'Santiago', 2, '8608'),
(39, 'Tubay', 2, '8606'),
(40, 'Bayugan', 3, '8502'),
(41, 'Bunawan', 3, '8506'),
(42, 'Esperanza', 3, '8513'),
(43, 'La Paz', 3, '8508'),
(44, 'Loreto', 3, '8507'),
(45, 'Prosperidad', 3, '8500'),
(46, 'Rosario', 3, '8504'),
(47, 'San Francisco', 3, '8501'),
(48, 'San Luis', 3, '8511'),
(49, 'Santa Josefa', 3, '8512'),
(50, 'Sibagat', 3, '8503'),
(51, 'Talacogon', 3, '8510'),
(52, 'Trento', 3, '8505'),
(53, 'Veruela', 3, '8509'),
(54, 'Altavas', 4, '5616'),
(55, 'Balete', 4, ''),
(56, 'Banga', 4, '5601'),
(57, 'Batan', 4, '5615'),
(58, 'Buruanga', 4, '5609'),
(59, 'Ibajay', 4, '5613'),
(60, 'Kalibo', 4, '5600'),
(61, 'Lezo', 4, '5605'),
(62, 'Libacao', 4, '5602'),
(63, 'Madalag', 4, '5603'),
(64, 'Makato', 4, '5611'),
(65, 'Malay', 4, '5608'),
(66, 'Malinao', 4, '5606'),
(67, 'Nabas', 4, '5607'),
(68, 'New Washington', 4, '5610'),
(69, 'Numancia', 4, '5604'),
(70, 'Tangalan', 4, '5612'),
(71, 'Legazpi City', 5, '4500'),
(72, 'Ligao City', 5, '4504'),
(73, 'Tabaco City', 5, '4511'),
(74, 'Bacacay', 5, '4509'),
(75, 'Camalig', 5, '4502'),
(76, 'Daraga', 5, '4501'),
(77, 'Guinobatan', 5, '4503'),
(78, 'Jovellar', 5, '4515'),
(79, 'Libon', 5, '4507'),
(80, 'Malilipot', 5, '4510'),
(81, 'Malinao', 5, '4512'),
(82, 'Manito', 5, '4514'),
(83, 'Oas', 5, '4505'),
(84, 'Pio Duran', 5, '4516'),
(85, 'Polangui', 5, '4506'),
(86, 'Rapu-Rapu', 5, '4517'),
(87, 'Santo Domingo', 5, '4508'),
(88, 'Tiwi', 5, '4513'),
(89, 'Anini-y', 6, '5717'),
(90, 'Barbaza', 6, '5706'),
(91, 'Belison', 6, '5701'),
(92, 'Bugasong', 6, '5704'),
(93, 'Caluya', 6, '5711'),
(94, 'Culasi', 6, '5708'),
(95, 'Hamtic', 6, '5715'),
(96, 'Laua-an', 6, '5705'),
(97, 'Libertad', 6, '5710'),
(98, 'Pandan', 6, '5712'),
(99, 'Patnongon', 6, '5702'),
(100, 'San Jose', 6, '6202'),
(101, 'San Remigio', 6, '6011'),
(102, 'Sebaste', 6, '5709'),
(103, 'Sibalom', 6, '5713'),
(104, 'Tibiao', 6, '5707'),
(105, 'Tobias Fornier', 6, '5716'),
(106, 'Valderrama', 6, '5703'),
(107, 'Calanasan', 7, '3814'),
(108, 'Conner', 7, '3807'),
(109, 'Flora', 7, '3810'),
(110, 'Kabugao', 7, '3809'),
(111, 'Luna', 7, '3813'),
(112, 'Pudtol', 7, '3812'),
(113, 'Santa Marcela', 7, '3811'),
(114, 'Baler', 8, '3200'),
(115, 'Casiguran', 8, '3204'),
(116, 'Dilasag', 8, '3205'),
(117, 'Dinalungan', 8, '3206'),
(118, 'Dingalan', 8, '3207'),
(119, 'Dipaculao', 8, '3203'),
(120, 'Maria Aurora', 8, '3202'),
(121, 'San Luis', 8, '3201'),
(122, 'Isabela City', 9, '7300'),
(123, 'Akbar', 9, ''),
(124, 'Al-Barka', 9, ''),
(125, 'Hadji Mohammad Ajul', 9, ''),
(126, 'Hadji Muhtamad', 9, ''),
(127, 'Lamitan', 9, '7302'),
(128, 'Lantawan', 9, '7301'),
(129, 'Maluso', 9, '7303'),
(130, 'Sumisip', 9, '7305'),
(131, 'Tabuan-Lasa', 9, ''),
(132, 'Tipo-Tipo', 9, '7304'),
(133, 'Tuburan', 9, '7306'),
(134, 'Ungkaya Pukan', 9, ''),
(135, 'Balanga City', 10, '2100'),
(136, 'Abucay', 10, '2114'),
(137, 'Bagac', 10, '2107'),
(138, 'Dinalupihan', 10, '2110'),
(139, 'Hermosa', 10, '2111'),
(140, 'Limay', 10, '2103'),
(141, 'Mariveles', 10, '2106'),
(142, 'Morong', 10, '2108'),
(143, 'Orani', 10, '2112'),
(144, 'Orion', 10, '2102'),
(145, 'Pilar', 10, '2101'),
(146, 'Samal', 10, '2113'),
(147, 'Basco', 11, '3900'),
(148, 'Itbayat', 11, '3905'),
(149, 'Ivana', 11, '3902'),
(150, 'Mahatao', 11, '3901'),
(151, 'Sabtang', 11, '3904'),
(152, 'Uyugan', 11, '3903'),
(153, 'Batangas City', 12, '4200'),
(154, 'Lipa City', 12, '4217'),
(155, 'Tanauan City', 12, '4232'),
(156, 'Agoncillo', 12, '4211'),
(157, 'Alitagtag', 12, '4205'),
(158, 'Balayan', 12, '4213'),
(159, 'Balete', 12, ''),
(160, 'Bauan', 12, '4201'),
(161, 'Calaca', 12, '4212'),
(162, 'Calatagan', 12, '4215'),
(163, 'Cuenca', 12, '4222'),
(164, 'Ibaan', 12, '4230'),
(165, 'Laurel', 12, '4221'),
(166, 'Lemery', 12, '4209'),
(167, 'Lian', 12, '4216'),
(168, 'Lobo', 12, '4229'),
(169, 'Mabini', 12, '4202'),
(170, 'Malvar', 12, '4233'),
(171, 'Mataas na Kahoy', 12, '4223'),
(172, 'Nasugbu', 12, '4231'),
(173, 'Padre Garcia', 12, '4224'),
(174, 'Rosario', 12, '4225'),
(175, 'San Jose', 12, '4227'),
(176, 'San Juan', 12, '4226'),
(177, 'San Luis', 12, '4210'),
(178, 'San Nicolas', 12, '4207'),
(179, 'San Pascual', 12, '4204'),
(180, 'Santa Teresita', 12, '4206'),
(181, 'Santo Tomas', 12, '4234'),
(182, 'Taal', 12, '4208'),
(183, 'Talisay', 12, '4220'),
(184, 'Taysan', 12, '4228'),
(185, 'Tingloy', 12, '4203'),
(186, 'Tuy', 12, '4214'),
(187, 'Baguio City', 13, '2600'),
(188, 'Atok', 13, '2612'),
(189, 'Bakun', 13, '2610'),
(190, 'Bokod', 13, '2605'),
(191, 'Buguias', 13, '2607'),
(192, 'Itogon', 13, '2604'),
(193, 'Kabayan', 13, '2606'),
(194, 'Kapangan', 13, '2613'),
(195, 'Kibungan', 13, '2611'),
(196, 'La Trinidad', 13, '2601'),
(197, 'Mankayan', 13, '2608'),
(198, 'Sablan', 13, '2614'),
(199, 'Tuba', 13, '2603'),
(200, 'Tublay', 13, '2615'),
(201, 'Almeria', 14, '6544'),
(202, 'Biliran', 14, '6544'),
(203, 'Cabucgayan', 14, '6550'),
(204, 'Caibiran', 14, '6548'),
(205, 'Culaba', 14, '6547'),
(206, 'Kawayan', 14, '6545'),
(207, 'Maripipi', 14, '6546'),
(208, 'Naval', 14, '6543'),
(209, 'Tagbilaran City', 15, '6300'),
(210, 'Alburquerque', 15, ''),
(211, 'Alicia', 15, '6314'),
(212, 'Anda', 15, '6311'),
(213, 'Antequera', 15, '6335'),
(214, 'Baclayon', 15, '6301'),
(215, 'Balilihan', 15, '6342'),
(216, 'Batuan', 15, '6318'),
(217, 'Bien Unido', 15, '6326'),
(218, 'Bilar', 15, '6317'),
(219, 'Buenavista', 15, '6333'),
(220, 'Calape', 15, '6328'),
(221, 'Candijay', 15, '6312'),
(222, 'Carmen', 15, '6319'),
(223, 'Catigbian', 15, '6343'),
(224, 'Clarin', 15, '6330'),
(225, 'Corella', 15, '6337'),
(226, 'Cortes', 15, ''),
(227, 'Dagohoy', 15, '6322'),
(228, 'Danao', 15, '6344'),
(229, 'Dauis', 15, '6339'),
(230, 'Dimiao', 15, '6305'),
(231, 'Duero', 15, '6309'),
(232, 'Garcia Hernandez', 15, '6307'),
(233, 'Getafe', 15, ''),
(234, 'Guindulman', 15, '6310'),
(235, 'Inabanga', 15, '6332'),
(236, 'Jagna', 15, '6308'),
(237, 'Lila', 15, '6304'),
(238, 'Loay', 15, '6303'),
(239, 'Loboc', 15, '6316'),
(240, 'Loon', 15, '6327'),
(241, 'Mabini', 15, '6313'),
(242, 'Maribojoc', 15, '6336'),
(243, 'Panglao', 15, '6340'),
(244, 'Pilar', 15, '6321'),
(245, 'President Carlos P. Garcia', 15, ''),
(246, 'Sagbayan', 15, '6331'),
(247, 'San Isidro', 15, '6345'),
(248, 'San Miguel', 15, '6323'),
(249, 'Sevilla', 15, '6347'),
(250, 'Sierra Bullones', 15, '6320'),
(251, 'Sikatuna', 15, '6338'),
(252, 'Talibon', 15, '6325'),
(253, 'Trinidad', 15, '6324'),
(254, 'Tubigon', 15, '6329'),
(255, 'Ubay', 15, '6315'),
(256, 'Valencia', 15, '6306'),
(257, 'Malaybalay City', 16, '8700'),
(258, 'Valencia City', 16, '8709'),
(259, 'Baungon', 16, '8707'),
(260, 'Cabanglasan', 16, '8723'),
(261, 'Damulog', 16, '8721'),
(262, 'Dangcagan', 16, '8719'),
(263, 'Don Carlos', 16, '8712'),
(264, 'Impasug-ong', 16, '8702'),
(265, 'Kadingilan', 16, '8713'),
(266, 'Kalilangan', 16, '8718'),
(267, 'Kibawe', 16, '8720'),
(268, 'Kitaotao', 16, '8716'),
(269, 'Lantapan', 16, '8722'),
(270, 'Libona', 16, '8706'),
(271, 'Malitbog', 16, '8704'),
(272, 'Manolo Fortich', 16, '8703'),
(273, 'Maramag', 16, '8714'),
(274, 'Pangantucan', 16, '8717'),
(275, 'Quezon', 16, '8715'),
(276, 'San Fernando', 16, '8711'),
(277, 'Sumilao', 16, '8701'),
(278, 'Talakag', 16, '8708'),
(279, 'Malolos City', 17, '3000'),
(280, 'Meycauayan City', 17, '3020'),
(281, 'San Jose del Monte City', 17, '3023'),
(282, 'Angat', 17, '3012'),
(283, 'Balagtas', 17, '3016'),
(284, 'Baliuag', 17, '3006'),
(285, 'Bocaue', 17, '3018'),
(286, 'Bulacan', 17, '3012'),
(287, 'Bustos', 17, '3007'),
(288, 'Calumpit', 17, '3003'),
(289, 'Doña Remedios Trinidad', 17, ''),
(290, 'Guiguinto', 17, '3015'),
(291, 'Hagonoy', 17, '3002'),
(292, 'Marilao', 17, '3019'),
(293, 'Norzagaray', 17, '3013'),
(294, 'Obando', 17, '3021'),
(295, 'Pandi', 17, '3014'),
(296, 'Paombong', 17, '3001'),
(297, 'Plaridel', 17, '3004'),
(298, 'Pulilan', 17, '3005'),
(299, 'San Ildefonso', 17, '3010'),
(300, 'San Miguel', 17, '3011'),
(301, 'San Rafael', 17, '3008'),
(302, 'Santa Maria', 17, '3022'),
(303, 'Tuguegarao City', 18, '3500'),
(304, 'Abulug', 18, '3517'),
(305, 'Alcala', 18, '3507'),
(306, 'Allacapan', 18, '3523'),
(307, 'Amulung', 18, '3505'),
(308, 'Aparri', 18, '3515'),
(309, 'Baggao', 18, '3506'),
(310, 'Ballesteros', 18, '3516'),
(311, 'Buguey', 18, '3511'),
(312, 'Calayan', 18, '3520'),
(313, 'Camalaniugan', 18, '3510'),
(314, 'Claveria', 18, '3519'),
(315, 'Enrile', 18, '3501'),
(316, 'Gattaran', 18, '3508'),
(317, 'Gonzaga', 18, '3513'),
(318, 'Iguig', 18, '3504'),
(319, 'Lal-lo', 18, '3509'),
(320, 'Lasam', 18, '3524'),
(321, 'Pamplona', 18, '3522'),
(322, 'Peñablanca', 18, '3502'),
(323, 'Piat', 18, '3527'),
(324, 'Rizal', 18, '3526'),
(325, 'Sanchez-Mira', 18, ''),
(326, 'Santa Ana', 18, '3514'),
(327, 'Santa Praxedes', 18, '3521'),
(328, 'Santa Teresita', 18, '3512'),
(329, 'Santo Niño', 18, '3525'),
(330, 'Solana', 18, '3503'),
(331, 'Tuao', 18, '3528'),
(332, 'Basud', 19, '4608'),
(333, 'Capalonga', 19, '4607'),
(334, 'Daet', 19, '4600'),
(335, 'Jose Panganiban', 19, '4606'),
(336, 'Labo', 19, '4604'),
(337, 'Mercedes', 19, '4601'),
(338, 'Paracale', 19, '4605'),
(339, 'San Lorenzo Ruiz', 19, '4610'),
(340, 'San Vicente', 19, '4609'),
(341, 'Santa Elena', 19, '4611'),
(342, 'Talisay', 19, '4602'),
(343, 'Vinzons', 19, '4603'),
(344, 'Iriga City', 20, '4431'),
(345, 'Naga City', 20, '4400'),
(346, 'Baao', 20, '4432'),
(347, 'Balatan', 20, '4436'),
(348, 'Bato', 20, '4435'),
(349, 'Bombon', 20, '4404'),
(350, 'Buhi', 20, '4433'),
(351, 'Bula', 20, '4430'),
(352, 'Cabusao', 20, '4406'),
(353, 'Calabanga', 20, '4405'),
(354, 'Camaligan', 20, '4401'),
(355, 'Canaman', 20, '4402'),
(356, 'Caramoan', 20, '4429'),
(357, 'Del Gallego', 20, '4411'),
(358, 'Gainza', 20, '4412'),
(359, 'Garchitorena', 20, '4428'),
(360, 'Goa', 20, '4422'),
(361, 'Lagonoy', 20, '4425'),
(362, 'Libmanan', 20, '4407'),
(363, 'Lupi', 20, '4409'),
(364, 'Magarao', 20, '4403'),
(365, 'Milaor', 20, '4413'),
(366, 'Minalabac', 20, '4414'),
(367, 'Nabua', 20, '4434'),
(368, 'Ocampo', 20, '4419'),
(369, 'Pamplona', 20, '4416'),
(370, 'Pasacao', 20, '4417'),
(371, 'Pili', 20, '4418'),
(372, 'Presentacion', 20, '4424'),
(373, 'Ragay', 20, '4410'),
(374, 'Sagñay', 20, '4421'),
(375, 'San Fernando', 20, '4415'),
(376, 'San Jose', 20, '4423'),
(377, 'Sipocot', 20, '4408'),
(378, 'Siruma', 20, '4427'),
(379, 'Tigaon', 20, '4420'),
(380, 'Tinambac', 20, '4426'),
(381, 'Catarman', 21, '9104'),
(382, 'Guinsiliban', 21, '9102'),
(383, 'Mahinog', 21, '9101'),
(384, 'Mambajao', 21, '9100'),
(385, 'Sagay', 21, '9103'),
(386, 'Roxas City', 22, '5800'),
(387, 'Cuartero', 22, '5811'),
(388, 'Dao', 22, '5810'),
(389, 'Dumalag', 22, '5813'),
(390, 'Dumarao', 22, '5812'),
(391, 'Ivisan', 22, '5805'),
(392, 'Jamindan', 22, '5808'),
(393, 'Ma-ayon', 22, '5809'),
(394, 'Mambusao', 22, '5807'),
(395, 'Panay', 22, '5801'),
(396, 'Panitan', 22, '5815'),
(397, 'Pilar', 22, '5804'),
(398, 'Pontevedra', 22, '5802'),
(399, 'President Roxas', 22, '5803'),
(400, 'Sapi-an', 22, ''),
(401, 'Sigma', 22, '5816'),
(402, 'Tapaz', 22, '5814'),
(403, 'Bagamanoc', 23, '4807'),
(404, 'Baras', 23, '4803'),
(405, 'Bato', 23, '4801'),
(406, 'Caramoran', 23, '4808'),
(407, 'Gigmoto', 23, '4804'),
(408, 'Pandan', 23, '4809'),
(409, 'Panganiban', 23, '4806'),
(410, 'San Andres', 23, '4810'),
(411, 'San Miguel', 23, '4802'),
(412, 'Viga', 23, '4805'),
(413, 'Virac', 23, '4800'),
(414, 'Cavite City', 24, '4100'),
(415, 'Dasmariñas City', 24, '4114'),
(416, 'Tagaytay City', 24, '4120'),
(417, 'Trece Martires City', 24, '4109'),
(418, 'Alfonso', 24, '4123'),
(419, 'Amadeo', 24, '4119'),
(420, 'Bacoor', 24, '4102'),
(421, 'Carmona', 24, '4116'),
(422, 'General Mariano Alvarez', 24, '4117'),
(423, 'General Emilio Aguinaldo', 24, '4124'),
(424, 'General Trias', 24, '4107'),
(425, 'Imus', 24, '4103'),
(426, 'Indang', 24, '4122'),
(427, 'Kawit', 24, '4104'),
(428, 'Magallanes', 24, '4113'),
(429, 'Maragondon', 24, '4112'),
(430, 'Mendez', 24, '4121'),
(431, 'Naic', 24, '4110'),
(432, 'Noveleta', 24, '4105'),
(433, 'Rosario', 24, '4106'),
(434, 'Silang', 24, '4118'),
(435, 'Tanza', 24, '4108'),
(436, 'Ternate', 24, '4111'),
(437, 'Bogo City', 25, '6010'),
(438, 'Cebu City', 25, '6000'),
(439, 'Carcar City', 25, '6019'),
(440, 'Danao City', 25, '6004'),
(441, 'Lapu-Lapu City', 25, '6015'),
(442, 'Mandaue City', 25, '6014'),
(443, 'Naga City', 25, '6037'),
(444, 'Talisay City', 25, '6045'),
(445, 'Toledo City', 25, '6038'),
(446, 'Alcantara', 25, '6033'),
(447, 'Alcoy', 25, '6023'),
(448, 'Alegria', 25, '6030'),
(449, 'Aloguinsan', 25, '6040'),
(450, 'Argao', 25, '6021'),
(451, 'Asturias', 25, '6042'),
(452, 'Badian', 25, '6031'),
(453, 'Balamban', 25, '6041'),
(454, 'Bantayan', 25, '6052'),
(455, 'Barili', 25, '6036'),
(456, 'Boljoon', 25, '6024'),
(457, 'Borbon', 25, '6008'),
(458, 'Carmen', 25, '6005'),
(459, 'Catmon', 25, '6006'),
(460, 'Compostela', 25, '6003'),
(461, 'Consolacion', 25, '6001'),
(462, 'Cordoba', 25, ''),
(463, 'Daanbantayan', 25, '6013'),
(464, 'Dalaguete', 25, '6022'),
(465, 'Dumanjug', 25, '6035'),
(466, 'Ginatilan', 25, '6028'),
(467, 'Liloan', 25, '6002'),
(468, 'Madridejos', 25, '6053'),
(469, 'Malabuyoc', 25, '6029'),
(470, 'Medellin', 25, '6012'),
(471, 'Minglanilla', 25, '6046'),
(472, 'Moalboal', 25, '6032'),
(473, 'Oslob', 25, '6025'),
(474, 'Pilar', 25, '6048'),
(475, 'Pinamungahan', 25, '6039'),
(476, 'Poro', 25, '6049'),
(477, 'Ronda', 25, '6034'),
(478, 'Samboan', 25, '6027'),
(479, 'San Fernando', 25, '6018'),
(480, 'San Francisco', 25, '6050'),
(481, 'San Remigio', 25, '6011'),
(482, 'Santa Fe', 25, '6047'),
(483, 'Santander', 25, '6026'),
(484, 'Sibonga', 25, '6020'),
(485, 'Sogod', 25, '6007'),
(486, 'Tabogon', 25, '6009'),
(487, 'Tabuelan', 25, '6044'),
(488, 'Tuburan', 25, '6043'),
(489, 'Tudela', 25, '6051'),
(490, 'Compostela', 26, '9413'),
(491, 'Laak', 26, ''),
(492, 'Mabini', 26, ''),
(493, 'Maco', 26, ''),
(494, 'Maragusan', 26, ''),
(495, 'Mawab', 26, ''),
(496, 'Monkayo', 26, ''),
(497, 'Montevista', 26, ''),
(498, 'Nabunturan', 26, ''),
(499, 'New Bataan', 26, ''),
(500, 'Pantukan', 26, ''),
(501, 'Kidapawan City', 27, '9400'),
(502, 'Alamada', 27, '9413'),
(503, 'Aleosan', 27, '9415'),
(504, 'Antipas', 27, '9414'),
(505, 'Arakan', 27, '9417'),
(506, 'Banisilan', 27, '9416'),
(507, 'Carmen', 27, '9408'),
(508, 'Kabacan', 27, '9407'),
(509, 'Libungan', 27, '9411'),
(510, 'M\'lang', 27, '9402'),
(511, 'Magpet', 27, '9404'),
(512, 'Makilala', 27, '9401'),
(513, 'Matalam', 27, '9406'),
(514, 'Midsayap', 27, '9410'),
(515, 'Pigkawayan', 27, '9412'),
(516, 'Pikit', 27, '9409'),
(517, 'President Roxas', 27, '9405'),
(518, 'Tulunan', 27, '9403'),
(519, 'Panabo City', 28, ''),
(520, 'Island Garden City of Samal', 28, ''),
(521, 'Tagum City', 28, ''),
(522, 'Asuncion', 28, ''),
(523, 'Braulio E. Dujali', 28, ''),
(524, 'Carmen', 28, '9408'),
(525, 'Kapalong', 28, ''),
(526, 'New Corella', 28, ''),
(527, 'San Isidro', 28, '8421'),
(528, 'Santo Tomas', 28, ''),
(529, 'Talaingod', 28, ''),
(530, 'Davao City', 29, '9413'),
(531, 'Digos City', 29, ''),
(532, 'Bansalan', 29, ''),
(533, 'Don Marcelino', 29, ''),
(534, 'Hagonoy', 29, ''),
(535, 'Jose Abad Santos', 29, ''),
(536, 'Kiblawan', 29, ''),
(537, 'Magsaysay', 29, ''),
(538, 'Malalag', 29, ''),
(539, 'Malita', 29, ''),
(540, 'Matanao', 29, ''),
(541, 'Padada', 29, ''),
(542, 'Santa Cruz', 29, ''),
(543, 'Santa Maria', 29, ''),
(544, 'Sarangani', 29, '9501'),
(545, 'Sulop', 29, ''),
(546, 'Mati City', 30, ''),
(547, 'Baganga', 30, ''),
(548, 'Banaybanay', 30, ''),
(549, 'Boston', 30, ''),
(550, 'Caraga', 30, ''),
(551, 'Cateel', 30, ''),
(552, 'Governor Generoso', 30, ''),
(553, 'Lupon', 30, ''),
(554, 'Manay', 30, ''),
(555, 'San Isidro', 30, '8421'),
(556, 'Tarragona', 30, ''),
(557, 'Arteche', 31, '6822'),
(558, 'Balangiga', 31, '6812'),
(559, 'Balangkayan', 31, '6801'),
(560, 'Borongan', 31, '6800'),
(561, 'Can-avid', 31, '6806'),
(562, 'Dolores', 31, '6817'),
(563, 'General MacArthur', 31, '6805'),
(564, 'Giporlos', 31, '6811'),
(565, 'Guiuan', 31, '6809'),
(566, 'Hernani', 31, '6804'),
(567, 'Jipapad', 31, '6819'),
(568, 'Lawaan', 31, '6813'),
(569, 'Llorente', 31, '6803'),
(570, 'Maslog', 31, '6820'),
(571, 'Maydolong', 31, '6802'),
(572, 'Mercedes', 31, '6808'),
(573, 'Oras', 31, '6818'),
(574, 'Quinapondan', 31, ''),
(575, 'Salcedo', 31, '6807'),
(576, 'San Julian', 31, '6814'),
(577, 'San Policarpo', 31, '6821'),
(578, 'Sulat', 31, '6815'),
(579, 'Taft', 31, '6816'),
(580, 'Buenavista', 32, '5044'),
(581, 'Jordan', 32, '5045'),
(582, 'Nueva Valencia', 32, '5046'),
(583, 'San Lorenzo', 32, ''),
(584, 'Sibunag', 32, ''),
(585, 'Aguinaldo', 33, '3606'),
(586, 'Alfonso Lista', 33, ''),
(587, 'Asipulo', 33, '3610'),
(588, 'Banaue', 33, '3601'),
(589, 'Hingyon', 33, '3607'),
(590, 'Hungduan', 33, '3603'),
(591, 'Kiangan', 33, '3604'),
(592, 'Lagawe', 33, '3600'),
(593, 'Lamut', 33, '3605'),
(594, 'Mayoyao', 33, '3602'),
(595, 'Tinoc', 33, '3609'),
(596, 'Batac City', 34, '2906'),
(597, 'Laoag City', 34, '2900'),
(598, 'Adams', 34, '2922'),
(599, 'Bacarra', 34, '2916'),
(600, 'Badoc', 34, '2904'),
(601, 'Bangui', 34, '2920'),
(602, 'Banna', 34, '2908'),
(603, 'Burgos', 34, '2918'),
(604, 'Carasi', 34, '2911'),
(605, 'Currimao', 34, '2903'),
(606, 'Dingras', 34, '2913'),
(607, 'Dumalneg', 34, '2921'),
(608, 'Marcos', 34, '2907'),
(609, 'Nueva Era', 34, '2909'),
(610, 'Pagudpud', 34, '2919'),
(611, 'Paoay', 34, '2902'),
(612, 'Pasuquin', 34, '2917'),
(613, 'Piddig', 34, '2912'),
(614, 'Pinili', 34, '2905'),
(615, 'San Nicolas', 34, '2901'),
(616, 'Sarrat', 34, '2914'),
(617, 'Solsona', 34, '2910'),
(618, 'Vintar', 34, '2915'),
(619, 'Candon City', 35, '2710'),
(620, 'Vigan City', 35, '2700'),
(621, 'Alilem', 35, '2716'),
(622, 'Banayoyo', 35, '2708'),
(623, 'Bantay', 35, '2727'),
(624, 'Burgos', 35, '2724'),
(625, 'Cabugao', 35, '2732'),
(626, 'Caoayan', 35, '2702'),
(627, 'Cervantes', 35, '2718'),
(628, 'Galimuyod', 35, '2709'),
(629, 'Gregorio Del Pilar', 35, '2720'),
(630, 'Lidlidda', 35, '2723'),
(631, 'Magsingal', 35, '2730'),
(632, 'Nagbukel', 35, '2725'),
(633, 'Narvacan', 35, '2704'),
(634, 'Quirino', 35, '2721'),
(635, 'Salcedo', 35, '2711'),
(636, 'San Emilio', 35, '2722'),
(637, 'San Esteban', 35, '2706'),
(638, 'San Ildefonso', 35, '2728'),
(639, 'San Juan', 35, '2731'),
(640, 'San Vicente', 35, '2726'),
(641, 'Santa', 35, '2703'),
(642, 'Santa Catalina', 35, '2701'),
(643, 'Santa Cruz', 35, '2713'),
(644, 'Santa Lucia', 35, '2712'),
(645, 'Santa Maria', 35, '2440'),
(646, 'Santiago', 35, '2707'),
(647, 'Santo Domingo', 35, '2729'),
(648, 'Sigay', 35, '2719'),
(649, 'Sinait', 35, '2733'),
(650, 'Sugpon', 35, '2717'),
(651, 'Suyo', 35, '2715'),
(652, 'Tagudin', 35, '2714'),
(653, 'Iloilo City', 36, '5000'),
(654, 'Passi City', 36, '5037'),
(655, 'Ajuy', 36, '5012'),
(656, 'Alimodian', 36, '5028'),
(657, 'Anilao', 36, '5009'),
(658, 'Badiangan', 36, '5033'),
(659, 'Balasan', 36, '5018'),
(660, 'Banate', 36, '5010'),
(661, 'Barotac Nuevo', 36, '5007'),
(662, 'Barotac Viejo', 36, '5011'),
(663, 'Batad', 36, '5016'),
(664, 'Bingawan', 36, '5041'),
(665, 'Cabatuan', 36, '5031'),
(666, 'Calinog', 36, '5040'),
(667, 'Carles', 36, '5019'),
(668, 'Concepcion', 36, '5013'),
(669, 'Dingle', 36, '5035'),
(670, 'Dueñas', 36, '5038'),
(671, 'Dumangas', 36, '5006'),
(672, 'Estancia', 36, '5017'),
(673, 'Guimbal', 36, '5022'),
(674, 'Igbaras', 36, '5029'),
(675, 'Janiuay', 36, '5034'),
(676, 'Lambunao', 36, '5042'),
(677, 'Leganes', 36, '5003'),
(678, 'Lemery', 36, '5043'),
(679, 'Leon', 36, '5026'),
(680, 'Maasin', 36, '5030'),
(681, 'Miagao', 36, '5023'),
(682, 'Mina', 36, '5032'),
(683, 'New Lucena', 36, '5005'),
(684, 'Oton', 36, '5020'),
(685, 'Pavia', 36, '5001'),
(686, 'Pototan', 36, '5008'),
(687, 'San Dionisio', 36, '5015'),
(688, 'San Enrique', 36, '5036'),
(689, 'San Joaquin', 36, '5024'),
(690, 'San Miguel', 36, '5025'),
(691, 'San Rafael', 36, '5039'),
(692, 'Santa Barbara', 36, '5002'),
(693, 'Sara', 36, '5014'),
(694, 'Tigbauan', 36, '5021'),
(695, 'Tubungan', 36, '5027'),
(696, 'Zarraga', 36, '5004'),
(697, 'Cauayan City', 37, '3305'),
(698, 'Santiago City', 37, '3311'),
(699, 'Alicia', 37, '3306'),
(700, 'Angadanan', 37, '3307'),
(701, 'Aurora', 37, '3316'),
(702, 'Benito Soliven', 37, '3331'),
(703, 'Burgos', 37, '3322'),
(704, 'Cabagan', 37, '3328'),
(705, 'Cabatuan', 37, '3315'),
(706, 'Cordon', 37, '3312'),
(707, 'Delfin Albano', 37, '3326'),
(708, 'Dinapigue', 37, '3336'),
(709, 'Divilacan', 37, ''),
(710, 'Echague', 37, '3309'),
(711, 'Gamu', 37, '3301'),
(712, 'Ilagan', 37, '3300'),
(713, 'Jones', 37, '3313'),
(714, 'Luna', 37, '3304'),
(715, 'Maconacon', 37, '3333'),
(716, 'Mallig', 37, '3323'),
(717, 'Naguilian', 37, '3302'),
(718, 'Palanan', 37, '3334'),
(719, 'Quezon', 37, '3324'),
(720, 'Quirino', 37, '3321'),
(721, 'Ramon', 37, '3319'),
(722, 'Reina Mercedes', 37, '3303'),
(723, 'Roxas', 37, '3320'),
(724, 'San Agustin', 37, '3314'),
(725, 'San Guillermo', 37, '3308'),
(726, 'San Isidro', 37, '3310'),
(727, 'San Manuel', 37, '3317'),
(728, 'San Mariano', 37, '3332'),
(729, 'San Mateo', 37, '3318'),
(730, 'San Pablo', 37, '3329'),
(731, 'Santa Maria', 37, '3330'),
(732, 'Santo Tomas', 37, '3327'),
(733, 'Tumauini', 37, '3325'),
(734, 'Tabuk', 38, '3800'),
(735, 'Balbalan', 38, '3801'),
(736, 'Lubuagan', 38, '3802'),
(737, 'Pasil', 38, '3803'),
(738, 'Pinukpuk', 38, '3806'),
(739, 'Rizal', 38, '3808'),
(740, 'Tanudan', 38, '3805'),
(741, 'Tinglayan', 38, '3804'),
(742, 'San Fernando City', 39, '2500'),
(743, 'Agoo', 39, '2504'),
(744, 'Aringay', 39, '2503'),
(745, 'Bacnotan', 39, '2515'),
(746, 'Bagulin', 39, '2512'),
(747, 'Balaoan', 39, '2517'),
(748, 'Bangar', 39, '2519'),
(749, 'Bauang', 39, '2501'),
(750, 'Burgos', 39, '2510'),
(751, 'Caba', 39, '2502'),
(752, 'Luna', 39, '2518'),
(753, 'Naguilian', 39, '3302'),
(754, 'Pugo', 39, '2508'),
(755, 'Rosario', 39, '2506'),
(756, 'San Gabriel', 39, '2513'),
(757, 'San Juan', 39, '2514'),
(758, 'Santo Tomas', 39, '2505'),
(759, 'Santol', 39, '2516'),
(760, 'Sudipen', 39, '2520'),
(761, 'Tubao', 39, '2509'),
(762, 'Biñan City', 40, '4024'),
(763, 'Calamba City', 40, '4027'),
(764, 'San Pablo City', 40, '4000'),
(765, 'Santa Rosa City', 40, '4026'),
(766, 'Alaminos', 40, '4001'),
(767, 'Bay', 40, '4033'),
(768, 'Cabuyao', 40, '4025'),
(769, 'Calauan', 40, '4012'),
(770, 'Cavinti', 40, '4013'),
(771, 'Famy', 40, '4021'),
(772, 'Kalayaan', 40, '4015'),
(773, 'Liliw', 40, '4004'),
(774, 'Los Baños', 40, '4031'),
(775, 'Luisiana', 40, '4032'),
(776, 'Lumban', 40, '4014'),
(777, 'Mabitac', 40, '4020'),
(778, 'Magdalena', 40, '4007'),
(779, 'Majayjay', 40, '4005'),
(780, 'Nagcarlan', 40, '4002'),
(781, 'Paete', 40, '4016'),
(782, 'Pagsanjan', 40, '4008'),
(783, 'Pakil', 40, '4017'),
(784, 'Pangil', 40, '4018'),
(785, 'Pila', 40, '4010'),
(786, 'Rizal', 40, '4003'),
(787, 'San Pedro', 40, '4023'),
(788, 'Santa Cruz', 40, '4009'),
(789, 'Santa Maria', 40, '4022'),
(790, 'Siniloan', 40, '4019'),
(791, 'Victoria', 40, '4011'),
(792, 'Iligan City', 41, '9200'),
(793, 'Bacolod', 41, '9205'),
(794, 'Baloi', 41, '9217'),
(795, 'Baroy', 41, '9210'),
(796, 'Kapatagan', 41, '9214'),
(797, 'Kauswagan', 41, '9202'),
(798, 'Kolambugan', 41, '9207'),
(799, 'Lala', 41, '9211'),
(800, 'Linamon', 41, '9201'),
(801, 'Magsaysay', 41, '9221'),
(802, 'Maigo', 41, '9206'),
(803, 'Matungao', 41, '9203'),
(804, 'Munai', 41, '9219'),
(805, 'Nunungan', 41, '9216'),
(806, 'Pantao Ragat', 41, '9208'),
(807, 'Pantar', 41, '9218'),
(808, 'Poona Piagapo', 41, '9204'),
(809, 'Salvador', 41, '9212'),
(810, 'Sapad', 41, '9213'),
(811, 'Sultan Naga Dimaporo', 41, '9215'),
(812, 'Tagoloan', 41, '9222'),
(813, 'Tangcal', 41, '9220'),
(814, 'Tubod', 41, '9209'),
(815, 'Marawi City', 42, ''),
(816, 'Bacolod-Kalawi', 42, ''),
(817, 'Balabagan', 42, '9302'),
(818, 'Balindong', 42, '9318'),
(819, 'Bayang', 42, '9309'),
(820, 'Binidayan', 42, '9310'),
(821, 'Buadiposo-Buntong', 42, ''),
(822, 'Bubong', 42, '9708'),
(823, 'Bumbaran', 42, '9320'),
(824, 'Butig', 42, '9305'),
(825, 'Calanogas', 42, '9319'),
(826, 'Ditsaan-Ramain', 42, ''),
(827, 'Ganassi', 42, '9311'),
(828, 'Kapai', 42, '9709'),
(829, 'Kapatagan', 42, '9214'),
(830, 'Lumba-Bayabao', 42, ''),
(831, 'Lumbaca-Unayan', 42, ''),
(832, 'Lumbatan', 42, '9307'),
(833, 'Lumbayanague', 42, '9306'),
(834, 'Madalum', 42, '9315'),
(835, 'Madamba', 42, '9314'),
(836, 'Maguing', 42, '9715'),
(837, 'Malabang', 42, '9300'),
(838, 'Marantao', 42, ''),
(839, 'Marogong', 42, ''),
(840, 'Masiu', 42, ''),
(841, 'Mulondo', 42, ''),
(842, 'Pagayawan', 42, ''),
(843, 'Piagapo', 42, '9204'),
(844, 'Poona Bayabao', 42, ''),
(845, 'Pualas', 42, ''),
(846, 'Saguiaran', 42, ''),
(847, 'Sultan Dumalondong', 42, ''),
(848, 'Picong', 42, ''),
(849, 'Tagoloan II', 42, ''),
(850, 'Tamparan', 42, ''),
(851, 'Taraka', 42, ''),
(852, 'Tubaran', 42, ''),
(853, 'Tugaya', 42, ''),
(854, 'Wao', 42, ''),
(855, 'Ormoc City', 43, '6541'),
(856, 'Tacloban City', 43, '6500'),
(857, 'Abuyog', 43, '6510'),
(858, 'Alangalang', 43, '6517'),
(859, 'Albuera', 43, '6542'),
(860, 'Babatngon', 43, '6520'),
(861, 'Barugo', 43, '6519'),
(862, 'Bato', 43, '6525'),
(863, 'Baybay', 43, '6521'),
(864, 'Burauen', 43, '6516'),
(865, 'Calubian', 43, '6534'),
(866, 'Capoocan', 43, '6530'),
(867, 'Carigara', 43, '6529'),
(868, 'Dagami', 43, '6515'),
(869, 'Dulag', 43, '6505'),
(870, 'Hilongos', 43, '6524'),
(871, 'Hindang', 43, '6523'),
(872, 'Inopacan', 43, '6522'),
(873, 'Isabel', 43, '6539'),
(874, 'Jaro', 43, '6527'),
(875, 'Javier', 43, '6511'),
(876, 'Julita', 43, '6506'),
(877, 'Kananga', 43, '6531'),
(878, 'La Paz', 43, '6508'),
(879, 'Leyte', 43, '6510'),
(880, 'Liloan', 43, '6612'),
(881, 'MacArthur', 43, '6509'),
(882, 'Mahaplag', 43, '6512'),
(883, 'Matag-ob', 43, '6532'),
(884, 'Matalom', 43, '6526'),
(885, 'Mayorga', 43, '6507'),
(886, 'Merida', 43, '6540'),
(887, 'Palo', 43, '6501'),
(888, 'Palompon', 43, '6538'),
(889, 'Pastrana', 43, '6514'),
(890, 'San Isidro', 43, '6535'),
(891, 'San Miguel', 43, '6518'),
(892, 'Santa Fe', 43, '6513'),
(893, 'Sogod', 43, '6606'),
(894, 'Tabango', 43, '6536'),
(895, 'Tabontabon', 43, '6504'),
(896, 'Tanauan', 43, '6502'),
(897, 'Tolosa', 43, '6503'),
(898, 'Tunga', 43, '6528'),
(899, 'Villaba', 43, '6537'),
(900, 'Cotabato City', 44, '9600'),
(901, 'Ampatuan', 44, '9609'),
(902, 'Barira', 44, '9614'),
(903, 'Buldon', 44, '9615'),
(904, 'Buluan', 44, '9616'),
(905, 'Datu Abdullah Sangki', 44, ''),
(906, 'Datu Anggal Midtimbang', 44, ''),
(907, 'Datu Blah T. Sinsuat', 44, ''),
(908, 'Datu Hoffer Ampatuan', 44, ''),
(909, 'Datu Montawal', 44, ''),
(910, 'Datu Odin Sinsuat', 44, '9601'),
(911, 'Datu Paglas', 44, '9617'),
(912, 'Datu Piang', 44, '9607'),
(913, 'Datu Salibo', 44, ''),
(914, 'Datu Saudi-Ampatuan', 44, ''),
(915, 'Datu Unsay', 44, ''),
(916, 'General Salipada K. Pendatun', 44, ''),
(917, 'Guindulungan', 44, ''),
(918, 'Kabuntalan', 44, ''),
(919, 'Mamasapano', 44, ''),
(920, 'Mangudadatu', 44, ''),
(921, 'Matanog', 44, '9613'),
(922, 'Northern Kabuntalan', 44, ''),
(923, 'Pagalungan', 44, '9610'),
(924, 'Paglat', 44, ''),
(925, 'Pandag', 44, ''),
(926, 'Parang', 44, '9604'),
(927, 'Rajah Buayan', 44, ''),
(928, 'Shariff Aguak', 44, '9608'),
(929, 'Shariff Saydona Mustapha', 44, ''),
(930, 'South Upi', 44, '9603'),
(931, 'Sultan Kudarat', 44, '9605'),
(932, 'Sultan Mastura', 44, ''),
(933, 'Sultan sa Barongis', 44, '9611'),
(934, 'Talayan', 44, '9612'),
(935, 'Talitay', 44, ''),
(936, 'Upi', 44, '9603'),
(937, 'Boac', 45, '4900'),
(938, 'Buenavista', 45, '4904'),
(939, 'Gasan', 45, '4905'),
(940, 'Mogpog', 45, '4901'),
(941, 'Santa Cruz', 45, '4902'),
(942, 'Torrijos', 45, '4903'),
(943, 'Masbate City', 46, '5414'),
(944, 'Aroroy', 46, '5414'),
(945, 'Baleno', 46, '5413'),
(946, 'Balud', 46, '5412'),
(947, 'Batuan', 46, '5415'),
(948, 'Cataingan', 46, '5405'),
(949, 'Cawayan', 46, '5409'),
(950, 'Claveria', 46, '5419'),
(951, 'Dimasalang', 46, '5403'),
(952, 'Esperanza', 46, '5407'),
(953, 'Mandaon', 46, '5411'),
(954, 'Milagros', 46, '5410'),
(955, 'Mobo', 46, '5401'),
(956, 'Monreal', 46, '5418'),
(957, 'Palanas', 46, '5404'),
(958, 'Pio V. Corpuz', 46, '5406'),
(959, 'Placer', 46, '5408'),
(960, 'San Fernando', 46, '5416'),
(961, 'San Jacinto', 46, '5417'),
(962, 'San Pascual', 46, '5420'),
(963, 'Uson', 46, '5402'),
(964, 'Caloocan', 47, ''),
(965, 'Las Piñas', 47, '1740'),
(966, 'Makati', 47, '1224'),
(967, 'Malabon', 47, '1470'),
(968, 'Mandaluyong', 47, ''),
(969, 'Manila', 47, ''),
(970, 'Marikina', 47, '1800'),
(971, 'Muntinlupa', 47, '1770'),
(972, 'Navotas', 47, '1485'),
(973, 'Parañaque', 47, '1700'),
(974, 'Pasay', 47, '1300'),
(975, 'Pasig', 47, '1600'),
(976, 'Quezon City', 47, '1100'),
(977, 'San Juan City', 47, '1500'),
(978, 'Taguig', 47, ''),
(979, 'Valenzuela City', 47, '1208'),
(980, 'Pateros', 47, ''),
(981, 'Oroquieta City', 48, '7207'),
(982, 'Ozamiz City', 48, ''),
(983, 'Tangub City', 48, '7214'),
(984, 'Aloran', 48, '7206'),
(985, 'Baliangao', 48, '7211'),
(986, 'Bonifacio', 48, '7215'),
(987, 'Calamba', 48, '7210'),
(988, 'Clarin', 48, '7201'),
(989, 'Concepcion', 48, '7213'),
(990, 'Don Victoriano Chiongbian', 48, ''),
(991, 'Jimenez', 48, '7204'),
(992, 'Lopez Jaena', 48, '7208'),
(993, 'Panaon', 48, '7205'),
(994, 'Plaridel', 48, '7209'),
(995, 'Sapang Dalaga', 48, '7212'),
(996, 'Sinacaban', 48, '7203'),
(997, 'Tudela', 48, '7202'),
(998, 'Cagayan de Oro', 49, '9000'),
(999, 'Gingoog City', 49, '9014'),
(1000, 'Alubijid', 49, '9018'),
(1001, 'Balingasag', 49, '9005'),
(1002, 'Balingoan', 49, '9011'),
(1003, 'Binuangan', 49, '9008'),
(1004, 'Claveria', 49, '9004'),
(1005, 'El Salvador', 49, '9017'),
(1006, 'Gitagum', 49, '9020'),
(1007, 'Initao', 49, '9022'),
(1008, 'Jasaan', 49, '9003'),
(1009, 'Kinoguitan', 49, '9010'),
(1010, 'Lagonglong', 49, '9006'),
(1011, 'Laguindingan', 49, '9019'),
(1012, 'Libertad', 49, '9021'),
(1013, 'Lugait', 49, '9025'),
(1014, 'Magsaysay', 49, '9015'),
(1015, 'Manticao', 49, '9024'),
(1016, 'Medina', 49, '9013'),
(1017, 'Naawan', 49, '9023'),
(1018, 'Opol', 49, '9016'),
(1019, 'Salay', 49, '9007'),
(1020, 'Sugbongcogon', 49, '9009'),
(1021, 'Tagoloan', 49, '9001'),
(1022, 'Talisayan', 49, '9012'),
(1023, 'Villanueva', 49, '9002'),
(1024, 'Barlig', 50, '2623'),
(1025, 'Bauko', 50, '2621'),
(1026, 'Besao', 50, '2618'),
(1027, 'Bontoc', 50, '2616'),
(1028, 'Natonin', 50, '2624'),
(1029, 'Paracelis', 50, '2625'),
(1030, 'Sabangan', 50, '2622'),
(1031, 'Sadanga', 50, '2617'),
(1032, 'Sagada', 50, '2619'),
(1033, 'Tadian', 50, '2620'),
(1034, 'Bacolod City', 51, '6100'),
(1035, 'Bago City', 51, '6101'),
(1036, 'Cadiz City', 51, '6121'),
(1037, 'Escalante City', 51, '6124'),
(1038, 'Himamaylan City', 51, '6108'),
(1039, 'Kabankalan City', 51, '6111'),
(1040, 'La Carlota City', 51, '6130'),
(1041, 'Sagay City', 51, '6122'),
(1042, 'San Carlos City', 51, '6127'),
(1043, 'Silay City', 51, '6116'),
(1044, 'Sipalay City', 51, '6113'),
(1045, 'Talisay City', 51, '6115'),
(1046, 'Victorias City', 51, '6119'),
(1047, 'Binalbagan', 51, '6107'),
(1048, 'Calatrava', 51, '6126'),
(1049, 'Candoni', 51, '6110'),
(1050, 'Cauayan', 51, '6112'),
(1051, 'Enrique B. Magalona', 51, '6118'),
(1052, 'Hinigaran', 51, '6106'),
(1053, 'Hinoba-an', 51, '6114'),
(1054, 'Ilog', 51, '6109'),
(1055, 'Isabela', 51, '6128'),
(1056, 'La Castellana', 51, '6131'),
(1057, 'Manapla', 51, '6120'),
(1058, 'Moises Padilla', 51, '6132'),
(1059, 'Murcia', 51, '6129'),
(1060, 'Pontevedra', 51, '6105'),
(1061, 'Pulupandan', 51, '6102'),
(1062, 'Salvador Benedicto', 51, ''),
(1063, 'San Enrique', 51, '6104'),
(1064, 'Toboso', 51, '6125'),
(1065, 'Valladolid', 51, '6103'),
(1066, 'Bais City', 52, '6206'),
(1067, 'Bayawan City', 52, '6221'),
(1068, 'Canlaon City', 52, '6223'),
(1069, 'Guihulngan City', 52, '6214'),
(1070, 'Dumaguete City', 52, '6200'),
(1071, 'Tanjay City', 52, '6204'),
(1072, 'Amlan', 52, '6203'),
(1073, 'Ayungon', 52, '6210'),
(1074, 'Bacong', 52, '6216'),
(1075, 'Basay', 52, '6222'),
(1076, 'Bindoy', 52, '6209'),
(1077, 'Dauin', 52, '6217'),
(1078, 'Jimalalud', 52, '6212'),
(1079, 'La Libertad', 52, '6213'),
(1080, 'Mabinay', 52, '6207'),
(1081, 'Manjuyod', 52, '6208'),
(1082, 'Pamplona', 52, '6205'),
(1083, 'San Jose', 52, '6202'),
(1084, 'Santa Catalina', 52, '6220'),
(1085, 'Siaton', 52, '6219'),
(1086, 'Sibulan', 52, '6201'),
(1087, 'Tayasan', 52, '6211'),
(1088, 'Valencia', 52, '6215'),
(1089, 'Vallehermoso', 52, '6224'),
(1090, 'Zamboanguita', 52, '6218'),
(1091, 'Allen', 53, '6405'),
(1092, 'Biri', 53, '6410'),
(1093, 'Bobon', 53, '6401'),
(1094, 'Capul', 53, '6408'),
(1095, 'Catarman', 53, '6400'),
(1096, 'Catubig', 53, '6418'),
(1097, 'Gamay', 53, '6422'),
(1098, 'Laoang', 53, '6411'),
(1099, 'Lapinig', 53, '6423'),
(1100, 'Las Navas', 53, '6420'),
(1101, 'Lavezares', 53, '6404'),
(1102, 'Lope de Vega', 53, '6403'),
(1103, 'Mapanas', 53, '6412'),
(1104, 'Mondragon', 53, '6417'),
(1105, 'Palapag', 53, '6421'),
(1106, 'Pambujan', 53, '6413'),
(1107, 'Rosario', 53, '6416'),
(1108, 'San Antonio', 53, '6407'),
(1109, 'San Isidro', 53, '6409'),
(1110, 'San Jose', 53, '6402'),
(1111, 'San Roque', 53, '6415'),
(1112, 'San Vicente', 53, '6419'),
(1113, 'Silvino Lobos', 53, '6414'),
(1114, 'Victoria', 53, '6406'),
(1115, 'Cabanatuan City', 54, '3100'),
(1116, 'Gapan City', 54, '3105'),
(1117, 'Science City of Muñoz', 54, ''),
(1118, 'Palayan City', 54, '3132'),
(1119, 'San Jose City', 54, '3121'),
(1120, 'Aliaga', 54, '3111'),
(1121, 'Bongabon', 54, '3128'),
(1122, 'Cabiao', 54, '3107'),
(1123, 'Carranglan', 54, '3123'),
(1124, 'Cuyapo', 54, '3117'),
(1125, 'Gabaldon', 54, '3131'),
(1126, 'General Mamerto Natividad', 54, '3125'),
(1127, 'General Tinio', 54, '3104'),
(1128, 'Guimba', 54, '3115'),
(1129, 'Jaen', 54, '3109'),
(1130, 'Laur', 54, '3129'),
(1131, 'Licab', 54, '3112'),
(1132, 'Llanera', 54, '3126'),
(1133, 'Lupao', 54, '3122'),
(1134, 'Nampicuan', 54, '3116'),
(1135, 'Pantabangan', 54, '3124'),
(1136, 'Peñaranda', 54, '3103'),
(1137, 'Quezon', 54, '3113'),
(1138, 'Rizal', 54, '3127'),
(1139, 'San Antonio', 54, '3108'),
(1140, 'San Isidro', 54, '3106'),
(1141, 'San Leonardo', 54, '3102'),
(1142, 'Santa Rosa', 54, '3101'),
(1143, 'Santo Domingo', 54, '3133'),
(1144, 'Talavera', 54, '3114'),
(1145, 'Talugtug', 54, ''),
(1146, 'Zaragoza', 54, ''),
(1147, 'Alfonso Castaneda', 55, ''),
(1148, 'Ambaguio', 55, '3701'),
(1149, 'Aritao', 55, '3704'),
(1150, 'Bagabag', 55, '3711'),
(1151, 'Bambang', 55, '3702'),
(1152, 'Bayombong', 55, '3700'),
(1153, 'Diadi', 55, '3712'),
(1154, 'Dupax del Norte', 55, '3706'),
(1155, 'Dupax del Sur', 55, '3707'),
(1156, 'Kasibu', 55, '3703'),
(1157, 'Kayapa', 55, '3708'),
(1158, 'Quezon', 55, '3713'),
(1159, 'Santa Fe', 55, '3705'),
(1160, 'Solano', 55, '3709'),
(1161, 'Villaverde', 55, '3710'),
(1162, 'Abra de Ilog', 56, '5108'),
(1163, 'Calintaan', 56, '5102'),
(1164, 'Looc', 56, '5111'),
(1165, 'Lubang', 56, '5109'),
(1166, 'Magsaysay', 56, '5101'),
(1167, 'Mamburao', 56, '5106'),
(1168, 'Paluan', 56, '5107'),
(1169, 'Rizal', 56, '5103'),
(1170, 'Sablayan', 56, '5104'),
(1171, 'San Jose', 56, '5100'),
(1172, 'Santa Cruz', 56, '5105'),
(1173, 'Calapan City', 57, '5200'),
(1174, 'Baco', 57, '5201'),
(1175, 'Bansud', 57, '5210'),
(1176, 'Bongabong', 57, '5211'),
(1177, 'Bulalacao', 57, '5214'),
(1178, 'Gloria', 57, '5209'),
(1179, 'Mansalay', 57, '5213'),
(1180, 'Naujan', 57, '5204'),
(1181, 'Pinamalayan', 57, '5208'),
(1182, 'Pola', 57, '5206'),
(1183, 'Puerto Galera', 57, '5203'),
(1184, 'Roxas', 57, '5212'),
(1185, 'San Teodoro', 57, '5202'),
(1186, 'Socorro', 57, '5207'),
(1187, 'Victoria', 57, '5205'),
(1188, 'Puerto Princesa City', 58, '5300'),
(1189, 'Aborlan', 58, '5302'),
(1190, 'Agutaya', 58, '5320'),
(1191, 'Araceli', 58, '5311'),
(1192, 'Balabac', 58, '5307'),
(1193, 'Bataraza', 58, '5306'),
(1194, 'Brooke\'s Point', 58, '5305'),
(1195, 'Busuanga', 58, '5317'),
(1196, 'Cagayancillo', 58, '5321'),
(1197, 'Coron', 58, '5316'),
(1198, 'Culion', 58, '5315'),
(1199, 'Cuyo', 58, '5318'),
(1200, 'Dumaran', 58, '5310'),
(1201, 'El Nido', 58, '5313'),
(1202, 'Kalayaan', 58, '5322'),
(1203, 'Linapacan', 58, '5314'),
(1204, 'Magsaysay', 58, '5319'),
(1205, 'Narra', 58, '5303'),
(1206, 'Quezon', 58, '5304'),
(1207, 'Rizal', 58, '7104'),
(1208, 'Roxas', 58, '5308'),
(1209, 'San Vicente', 58, '5309'),
(1210, 'Sofronio Española', 58, ''),
(1211, 'Taytay', 58, '5312'),
(1212, 'Angeles City', 59, '2009'),
(1213, 'City of San Fernando', 59, '2000'),
(1214, 'Apalit', 59, '2016'),
(1215, 'Arayat', 59, '2012'),
(1216, 'Bacolor', 59, '2001'),
(1217, 'Candaba', 59, '2013'),
(1218, 'Floridablanca', 59, '2006'),
(1219, 'Guagua', 59, '2003'),
(1220, 'Lubao', 59, '2005'),
(1221, 'Mabalacat', 59, '2010'),
(1222, 'Macabebe', 59, '2018'),
(1223, 'Magalang', 59, '2011'),
(1224, 'Masantol', 59, '2017'),
(1225, 'Mexico', 59, '2021'),
(1226, 'Minalin', 59, '2019'),
(1227, 'Porac', 59, '2008'),
(1228, 'San Luis', 59, '2014'),
(1229, 'San Simon', 59, '2015'),
(1230, 'Santa Ana', 59, '2022'),
(1231, 'Santa Rita', 59, '2002'),
(1232, 'Santo Tomas', 59, '2020'),
(1233, 'Sasmuan', 59, ''),
(1234, 'Alaminos City', 60, '2404'),
(1235, 'Dagupan City', 60, '2400'),
(1236, 'San Carlos City', 60, '2420'),
(1237, 'Urdaneta City', 60, '2428'),
(1238, 'Agno', 60, '2408'),
(1239, 'Aguilar', 60, '2415'),
(1240, 'Alcala', 60, '2425'),
(1241, 'Anda', 60, '2405'),
(1242, 'Asingan', 60, '2439'),
(1243, 'Balungao', 60, '2442'),
(1244, 'Bani', 60, '2407'),
(1245, 'Basista', 60, '2422'),
(1246, 'Bautista', 60, '2424'),
(1247, 'Bayambang', 60, '2423'),
(1248, 'Binalonan', 60, '2436'),
(1249, 'Binmaley', 60, '2417'),
(1250, 'Bolinao', 60, '2406'),
(1251, 'Bugallon', 60, '2416'),
(1252, 'Burgos', 60, '2410'),
(1253, 'Calasiao', 60, '2418'),
(1254, 'Dasol', 60, '2411'),
(1255, 'Infanta', 60, '2412'),
(1256, 'Labrador', 60, '2402'),
(1257, 'Laoac', 60, '2437'),
(1258, 'Lingayen', 60, '2401'),
(1259, 'Mabini', 60, '2409'),
(1260, 'Malasiqui', 60, '2421'),
(1261, 'Manaoag', 60, '2430'),
(1262, 'Mangaldan', 60, '2432'),
(1263, 'Mangatarem', 60, '2413'),
(1264, 'Mapandan', 60, '2429'),
(1265, 'Natividad', 60, '2446'),
(1266, 'Pozzorubio', 60, ''),
(1267, 'Rosales', 60, '2441'),
(1268, 'San Fabian', 60, '2433'),
(1269, 'San Jacinto', 60, '2431'),
(1270, 'San Manuel', 60, '2438'),
(1271, 'San Nicolas', 60, '2447'),
(1272, 'San Quintin', 60, '2444'),
(1273, 'Santa Barbara', 60, '2419'),
(1274, 'Santa Maria', 60, '2440'),
(1275, 'Santo Tomas', 60, '2426'),
(1276, 'Sison', 60, '2434'),
(1277, 'Sual', 60, '2403'),
(1278, 'Tayug', 60, '2445'),
(1279, 'Umingan', 60, '2443'),
(1280, 'Urbiztondo', 60, '2414'),
(1281, 'Villasis', 60, '2427'),
(1282, 'Lucena City', 61, '4301'),
(1283, 'Tayabas City', 61, '4327'),
(1284, 'Agdangan', 61, '4304'),
(1285, 'Alabat', 61, '4333'),
(1286, 'Atimonan', 61, '4331'),
(1287, 'Buenavista', 61, '4320'),
(1288, 'Burdeos', 61, '4340'),
(1289, 'Calauag', 61, '4318'),
(1290, 'Candelaria', 61, '4323'),
(1291, 'Catanauan', 61, '4311'),
(1292, 'Dolores', 61, '4326'),
(1293, 'General Luna', 61, '4310'),
(1294, 'General Nakar', 61, '4338'),
(1295, 'Guinayangan', 61, '4319'),
(1296, 'Gumaca', 61, '4307'),
(1297, 'Infanta', 61, '4336'),
(1298, 'Jomalig', 61, '4342'),
(1299, 'Lopez', 61, '4316'),
(1300, 'Lucban', 61, '4328'),
(1301, 'Macalelon', 61, '4309'),
(1302, 'Mauban', 61, '4330'),
(1303, 'Mulanay', 61, '4312'),
(1304, 'Padre Burgos', 61, '4303'),
(1305, 'Pagbilao', 61, '4302'),
(1306, 'Panukulan', 61, '4337'),
(1307, 'Patnanungan', 61, '4341'),
(1308, 'Perez', 61, '4334'),
(1309, 'Pitogo', 61, '4308'),
(1310, 'Plaridel', 61, '4306'),
(1311, 'Polillo', 61, '4339'),
(1312, 'Quezon', 61, '4304'),
(1313, 'Real', 61, '4335'),
(1314, 'Sampaloc', 61, '4329'),
(1315, 'San Andres', 61, '4314'),
(1316, 'San Antonio', 61, '4324'),
(1317, 'San Francisco', 61, '4315'),
(1318, 'San Narciso', 61, '4313'),
(1319, 'Sariaya', 61, '4322'),
(1320, 'Tagkawayan', 61, '4321'),
(1321, 'Tiaong', 61, '4325'),
(1322, 'Unisan', 61, '4305'),
(1323, 'Aglipay', 62, '3403'),
(1324, 'Cabarroguis', 62, '3400'),
(1325, 'Diffun', 62, '3401'),
(1326, 'Maddela', 62, '3404'),
(1327, 'Nagtipunan', 62, '3405'),
(1328, 'Saguday', 62, '3402'),
(1329, 'Antipolo City', 63, '1870'),
(1330, 'Angono', 63, '1930'),
(1331, 'Baras', 63, '1970'),
(1332, 'Binangonan', 63, '1940'),
(1333, 'Cainta', 63, '1900'),
(1334, 'Cardona', 63, '1950'),
(1335, 'Jalajala', 63, ''),
(1336, 'Morong', 63, '1960'),
(1337, 'Pililla', 63, '1910'),
(1338, 'Rodriguez', 63, '1860'),
(1339, 'San Mateo', 63, '1850'),
(1340, 'Tanay', 63, '1980'),
(1341, 'Taytay', 63, '1920'),
(1342, 'Teresa', 63, '1880'),
(1343, 'Alcantara', 64, '5509'),
(1344, 'Banton', 64, '5515'),
(1345, 'Cajidiocan', 64, '5512'),
(1346, 'Calatrava', 64, '5503'),
(1347, 'Concepcion', 64, '5516'),
(1348, 'Corcuera', 64, '5514'),
(1349, 'Ferrol', 64, '5506'),
(1350, 'Looc', 64, '5507'),
(1351, 'Magdiwang', 64, '5511'),
(1352, 'Odiongan', 64, '5505'),
(1353, 'Romblon', 64, '5509'),
(1354, 'San Agustin', 64, '5501'),
(1355, 'San Andres', 64, '5504'),
(1356, 'San Fernando', 64, '5513'),
(1357, 'San Jose', 64, '5510'),
(1358, 'Santa Fe', 64, '5508'),
(1359, 'Santa Maria', 64, '5502'),
(1360, 'Calbayog City', 65, '6710'),
(1361, 'Catbalogan City', 65, '6700'),
(1362, 'Almagro', 65, '6724'),
(1363, 'Basey', 65, '6720'),
(1364, 'Calbiga', 65, '6715'),
(1365, 'Daram', 65, '6722'),
(1366, 'Gandara', 65, '6706'),
(1367, 'Hinabangan', 65, '6713'),
(1368, 'Jiabong', 65, '6701'),
(1369, 'Marabut', 65, '6721'),
(1370, 'Matuguinao', 65, '6708'),
(1371, 'Motiong', 65, '6702'),
(1372, 'Pagsanghan', 65, '6705'),
(1373, 'Paranas', 65, '6703'),
(1374, 'Pinabacdao', 65, '6716'),
(1375, 'San Jorge', 65, '6707'),
(1376, 'San Jose De Buan', 65, '6723'),
(1377, 'San Sebastian', 65, '6714'),
(1378, 'Santa Margarita', 65, '6709'),
(1379, 'Santa Rita', 65, '6718'),
(1380, 'Santo Niño', 65, '6711'),
(1381, 'Tagapul-an', 65, '6712'),
(1382, 'Talalora', 65, '6719'),
(1383, 'Tarangnan', 65, '6704'),
(1384, 'Villareal', 65, '6717'),
(1385, 'Zumarraga', 65, '6725'),
(1386, 'Alabel', 66, '9501'),
(1387, 'Glan', 66, '9517'),
(1388, 'Kiamba', 66, '9514'),
(1389, 'Maasim', 66, '9502'),
(1390, 'Maitum', 66, '9515'),
(1391, 'Malapatan', 66, '9516'),
(1392, 'Malungon', 66, '9503'),
(1393, 'Enrique Villanueva', 67, '6230'),
(1394, 'Larena', 67, '6226'),
(1395, 'Lazi', 67, '6228'),
(1396, 'Maria', 67, '6229'),
(1397, 'San Juan', 67, '6227'),
(1398, 'Siquijor', 67, '6230'),
(1399, 'Sorsogon City', 68, '4701'),
(1400, 'Barcelona', 68, '4712'),
(1401, 'Bulan', 68, '4706'),
(1402, 'Bulusan', 68, '4704'),
(1403, 'Casiguran', 68, '4702'),
(1404, 'Castilla', 68, '4713'),
(1405, 'Donsol', 68, '4715'),
(1406, 'Gubat', 68, '4710'),
(1407, 'Irosin', 68, '4707'),
(1408, 'Juban', 68, '4703'),
(1409, 'Magallanes', 68, '4705'),
(1410, 'Matnog', 68, '4708'),
(1411, 'Pilar', 68, '4714'),
(1412, 'Prieto Diaz', 68, '4711'),
(1413, 'Santa Magdalena', 68, '4709'),
(1414, 'General Santos City', 69, '9500'),
(1415, 'Koronadal City', 69, '9506'),
(1416, 'Banga', 69, '9511'),
(1417, 'Lake Sebu', 69, ''),
(1418, 'Norala', 69, '9508'),
(1419, 'Polomolok', 69, '9504'),
(1420, 'Santo Niño', 69, '9509'),
(1421, 'Surallah', 69, '9512'),
(1422, 'T\'boli', 69, '9513'),
(1423, 'Tampakan', 69, '9507'),
(1424, 'Tantangan', 69, '9510'),
(1425, 'Tupi', 69, '9505'),
(1426, 'Maasin City', 70, '6600'),
(1427, 'Anahawan', 70, '6610'),
(1428, 'Bontoc', 70, '6604'),
(1429, 'Hinunangan', 70, '6608'),
(1430, 'Hinundayan', 70, '6609'),
(1431, 'Libagon', 70, '6615'),
(1432, 'Liloan', 70, '6612'),
(1433, 'Limasawa', 70, ''),
(1434, 'Macrohon', 70, '6601'),
(1435, 'Malitbog', 70, '6603'),
(1436, 'Padre Burgos', 70, '6602'),
(1437, 'Pintuyan', 70, '6614'),
(1438, 'Saint Bernard', 70, '6616'),
(1439, 'San Francisco', 70, '6613'),
(1440, 'San Juan', 70, '6611'),
(1441, 'San Ricardo', 70, '6617'),
(1442, 'Silago', 70, '6607'),
(1443, 'Sogod', 70, '6606'),
(1444, 'Tomas Oppus', 70, '6605'),
(1445, 'Tacurong City', 71, '9800'),
(1446, 'Bagumbayan', 71, '9810'),
(1447, 'Columbio', 71, '9801'),
(1448, 'Esperanza', 71, '9806'),
(1449, 'Isulan', 71, '9805'),
(1450, 'Kalamansig', 71, '9808'),
(1451, 'Lambayong', 71, '9802'),
(1452, 'Lebak', 71, '9807'),
(1453, 'Lutayan', 71, '9803'),
(1454, 'Palimbang', 71, '9809'),
(1455, 'President Quirino', 71, '9804'),
(1456, 'Senator Ninoy Aquino', 71, '9811'),
(1457, 'Banguingui', 72, ''),
(1458, 'Hadji Panglima Tahil', 72, ''),
(1459, 'Indanan', 72, '7407'),
(1460, 'Jolo', 72, '7400'),
(1461, 'Kalingalan Caluang', 72, ''),
(1462, 'Lugus', 72, '7411'),
(1463, 'Luuk', 72, '7404'),
(1464, 'Maimbung', 72, '7409'),
(1465, 'Old Panamao', 72, ''),
(1466, 'Omar', 72, ''),
(1467, 'Pandami', 72, ''),
(1468, 'Panglima Estino', 72, '7415'),
(1469, 'Pangutaran', 72, ''),
(1470, 'Parang', 72, '7408'),
(1471, 'Pata', 72, '7405'),
(1472, 'Patikul', 72, '7401'),
(1473, 'Siasi', 72, '7412'),
(1474, 'Talipao', 72, '7403'),
(1475, 'Tapul', 72, '7410'),
(1476, 'Surigao City', 73, '8425'),
(1477, 'Alegria', 73, '8425'),
(1478, 'Bacuag', 73, '8408'),
(1479, 'Basilisa', 73, '8413'),
(1480, 'Burgos', 73, '8424'),
(1481, 'Cagdianao', 73, '8411'),
(1482, 'Claver', 73, '8410'),
(1483, 'Dapa', 73, '8417'),
(1484, 'Del Carmen', 73, '8418'),
(1485, 'Dinagat', 73, '8412'),
(1486, 'General Luna', 73, '8419'),
(1487, 'Gigaquit', 73, '8409'),
(1488, 'Libjo', 73, '8414'),
(1489, 'Loreto', 73, '8415'),
(1490, 'Mainit', 73, '8407'),
(1491, 'Malimono', 73, ''),
(1492, 'Pilar', 73, '8420'),
(1493, 'Placer', 73, '8405'),
(1494, 'San Benito', 73, '8423'),
(1495, 'San Francisco', 73, '8401'),
(1496, 'San Isidro', 73, '8421'),
(1497, 'San Jose', 73, '8427'),
(1498, 'Santa Monica', 73, '8422'),
(1499, 'Sison', 73, '8404'),
(1500, 'Socorro', 73, '8416'),
(1501, 'Tagana-an', 73, ''),
(1502, 'Tubajon', 73, ''),
(1503, 'Tubod', 73, ''),
(1504, 'Bislig City', 74, '8311'),
(1505, 'Tandag City', 74, '8300'),
(1506, 'Barobo', 74, '8309'),
(1507, 'Bayabas', 74, '8303'),
(1508, 'Cagwait', 74, '8304'),
(1509, 'Cantilan', 74, ''),
(1510, 'Carmen', 74, '8315'),
(1511, 'Carrascal', 74, '8318'),
(1512, 'Cortes', 74, ''),
(1513, 'Hinatuan', 74, '8310'),
(1514, 'Lanuza', 74, '8314'),
(1515, 'Lianga', 74, '8307'),
(1516, 'Lingig', 74, '8312'),
(1517, 'Madrid', 74, '8316'),
(1518, 'Marihatag', 74, '8306'),
(1519, 'San Agustin', 74, '8305'),
(1520, 'San Miguel', 74, '8301'),
(1521, 'Tagbina', 74, '8308'),
(1522, 'Tago', 74, '8302'),
(1523, 'Tarlac City', 75, '2310'),
(1524, 'Anao', 75, '2310'),
(1525, 'Bamban', 75, '2317'),
(1526, 'Camiling', 75, '2306'),
(1527, 'Capas', 75, '2315'),
(1528, 'Concepcion', 75, '2316'),
(1529, 'Gerona', 75, '2302'),
(1530, 'La Paz', 75, '2314'),
(1531, 'Mayantoc', 75, '2304'),
(1532, 'Moncada', 75, '2308'),
(1533, 'Paniqui', 75, '2307'),
(1534, 'Pura', 75, '2312'),
(1535, 'Ramos', 75, '2311'),
(1536, 'San Clemente', 75, '2305'),
(1537, 'San Jose', 75, '4227'),
(1538, 'San Manuel', 75, '2309'),
(1539, 'Santa Ignacia', 75, '2303'),
(1540, 'Victoria', 75, '2313'),
(1541, 'Bongao', 76, '7500'),
(1542, 'Languyan', 76, '7509'),
(1543, 'Mapun', 76, ''),
(1544, 'Panglima Sugala', 76, ''),
(1545, 'Sapa-Sapa', 76, '7503'),
(1546, 'Sibutu', 76, ''),
(1547, 'Simunul', 76, ''),
(1548, 'Sitangkai', 76, '7506'),
(1549, 'South Ubian', 76, '7504'),
(1550, 'Tandubas', 76, ''),
(1551, 'Turtle Islands', 76, '7507'),
(1552, 'Olongapo City', 77, '2200'),
(1553, 'Botolan', 77, '2202'),
(1554, 'Cabangan', 77, '2203'),
(1555, 'Candelaria', 77, '2212'),
(1556, 'Castillejos', 77, ''),
(1557, 'Iba', 77, '2201'),
(1558, 'Masinloc', 77, '2211'),
(1559, 'Palauig', 77, '2210'),
(1560, 'San Antonio', 77, '2206'),
(1561, 'San Felipe', 77, '2204'),
(1562, 'San Marcelino', 77, '2207'),
(1563, 'San Narciso', 77, '2205'),
(1564, 'Santa Cruz', 77, '2213'),
(1565, 'Subic', 77, ''),
(1566, 'Dapitan City', 78, '7101'),
(1567, 'Dipolog City', 78, '7100'),
(1568, 'Bacungan', 78, ''),
(1569, 'Baliguian', 78, '7123'),
(1570, 'Godod', 78, ''),
(1571, 'Gutalac', 78, '7118'),
(1572, 'Jose Dalman', 78, '7111'),
(1573, 'Kalawit', 78, '7124'),
(1574, 'Katipunan', 78, '7109'),
(1575, 'La Libertad', 78, '7119'),
(1576, 'Labason', 78, '7117'),
(1577, 'Liloy', 78, '7115'),
(1578, 'Manukan', 78, '7110'),
(1579, 'Mutia', 78, '7107'),
(1580, 'Piñan', 78, '7105'),
(1581, 'Polanco', 78, '7106'),
(1582, 'President Manuel A. Roxas', 78, ''),
(1583, 'Rizal', 78, '7104'),
(1584, 'Salug', 78, '7114'),
(1585, 'Sergio Osmeña Sr.', 78, ''),
(1586, 'Siayan', 78, '7113'),
(1587, 'Sibuco', 78, '7122'),
(1588, 'Sibutad', 78, '7103'),
(1589, 'Sindangan', 78, '7112'),
(1590, 'Siocon', 78, '7120'),
(1591, 'Sirawai', 78, ''),
(1592, 'Tampilisan', 78, '7116'),
(1593, 'Pagadian City', 79, '7016'),
(1594, 'Zamboanga City', 79, '7000'),
(1595, 'Aurora', 79, '7020'),
(1596, 'Bayog', 79, '7011'),
(1597, 'Dimataling', 79, '7032'),
(1598, 'Dinas', 79, '7030'),
(1599, 'Dumalinao', 79, '7015'),
(1600, 'Dumingag', 79, '7028'),
(1601, 'Guipos', 79, '7042'),
(1602, 'Josefina', 79, '7027'),
(1603, 'Kumalarang', 79, '7013'),
(1604, 'Labangan', 79, '7017'),
(1605, 'Lakewood', 79, '7014'),
(1606, 'Lapuyan', 79, '7037'),
(1607, 'Mahayag', 79, '7026'),
(1608, 'Margosatubig', 79, ''),
(1609, 'Midsalip', 79, '7021'),
(1610, 'Molave', 79, '7023'),
(1611, 'Pitogo', 79, '7033'),
(1612, 'Ramon Magsaysay', 79, '7024'),
(1613, 'San Miguel', 79, '7029'),
(1614, 'San Pablo', 79, '7031'),
(1615, 'Sominot', 79, ''),
(1616, 'Tabina', 79, '7034'),
(1617, 'Tambulig', 79, '7025'),
(1618, 'Tigbao', 79, '7043'),
(1619, 'Tukuran', 79, '7019'),
(1620, 'Vincenzo A. Sagun', 79, ''),
(1621, 'Alicia', 80, '7040'),
(1622, 'Buug', 80, ''),
(1623, 'Diplahan', 80, '7039'),
(1624, 'Imelda', 80, '7007'),
(1625, 'Ipil', 80, '7001'),
(1626, 'Kabasalan', 80, '7005'),
(1627, 'Mabuhay', 80, '7010'),
(1628, 'Malangas', 80, '7038'),
(1629, 'Naga', 80, '7004'),
(1630, 'Olutanga', 80, '7041'),
(1631, 'Payao', 80, '7008'),
(1632, 'Roseller Lim', 80, '7002'),
(1633, 'Siay', 80, '7006'),
(1634, 'Talusan', 80, '7012'),
(1635, 'Titay', 80, '7003'),
(1636, 'Tungawan', 80, '7018');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `country_id`, `city_name`, `created_at`, `updated_at`) VALUES
(1, 2, 'Noida', '', ''),
(2, 2, 'Greater Noida', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `users_role` enum('1','2','3','4','5') NOT NULL DEFAULT '5' COMMENT '''1''=>''Admin'', ''2''=>''White label'', ''3''=>''manager'', ''4''=>''employee, ''5''=>''Client''''',
  `upload_by` int(11) NOT NULL,
  `white_label_id` int(11) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` tinyint(4) NOT NULL COMMENT '0=>mail, 1=>femail, 2=>other',
  `email_verified_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `remember_token` varchar(100) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1' COMMENT '''0'' Active , ''1'' Inactive',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `users_role`, `upload_by`, `white_label_id`, `profile_image`, `name`, `password`, `email`, `country_id`, `address`, `phone`, `dob`, `gender`, `email_verified_at`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(63, '5', 61, 58, '20200825122152-user2.png', 'Client ', '$2y$10$LfFhKmNJHYUF68/TLH6aqOMkql4x4Vw1Hf8NmkDhTGT1wIxP5ERKK', 'client@gmail.com', 2, 'street-4, sanjay colony, sasni  Hathras, up', '0000000000', '25-08-2020', 0, '2020-08-25 01:21:52', NULL, '1', '2020-08-25 01:21:52', '2020-08-25 01:21:52'),
(82, '5', 1, 58, '20200825122152-user2.png', 'name', '$2y$10$LfFhKmNJHYUF68/TLH6aqOMkql4x4Vw1Hf8NmkDhTGT1wIxP5ERKK', 'email', 2, 'phase 2, noida', 'phone', '', 0, '2021-09-03 06:56:16', NULL, '1', '2020-08-27 06:31:36', '2020-08-27 06:31:36'),
(83, '5', 1, 58, '20200825122152-user2.png', 'test22', '$2y$10$LfFhKmNJHYUF68/TLH6aqOMkql4x4Vw1Hf8NmkDhTGT1wIxP5ERKK', 'test@gmail.com', 2, 'phase 2, noida', '9021451555', '', 0, '2021-09-03 06:56:10', NULL, '1', '2020-08-27 06:31:36', '2020-08-27 06:31:36'),
(84, '5', 1, 58, '20200825122152-user2.png', 'test22', '$2y$10$LfFhKmNJHYUF68/TLH6aqOMkql4x4Vw1Hf8NmkDhTGT1wIxP5ERKK', 'test@gmail.com', 2, '', '9021451555', '', 0, '2021-09-03 06:56:59', '', '1', '2020-08-27 06:32:22', '2020-08-27 06:32:22'),
(85, '5', 1, 58, '20200825122152-user2.png', 'test22', '$2y$10$LfFhKmNJHYUF68/TLH6aqOMkql4x4Vw1Hf8NmkDhTGT1wIxP5ERKK', 'test@gmail.com', 2, 'phase 2, noida', '9021451555', '', 0, '2021-09-03 06:55:45', NULL, '1', '2020-08-27 06:38:30', '2020-08-27 06:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `address` longtext NOT NULL,
  `doc_number` varchar(255) NOT NULL,
  `exp_date` varchar(255) NOT NULL,
  `company_photo` text NOT NULL,
  `front_file` text NOT NULL,
  `back_file` text NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `email`, `phone`, `country`, `city`, `address`, `doc_number`, `exp_date`, `company_photo`, `front_file`, `back_file`, `status`, `created_at`, `updated_at`) VALUES
(1, 'company', 'customer@example.com', '1234567890', 169, 12, 'Rampur, Baiju, chhibramau,dist-kannauj', '214234687767543', '2021-09-30', '20210913130123-fb2.jpg', '20210913130123-fb1.png', '20210913130123-driverimage.png', 1, '2021-09-13 12:57:37', '2021-09-13 07:31:23');

-- --------------------------------------------------------

--
-- Table structure for table `consumer_support`
--

CREATE TABLE `consumer_support` (
  `id` int(11) NOT NULL,
  `application` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consumer_support`
--

INSERT INTO `consumer_support` (`id`, `application`, `details`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Consumer', '12345678900987654321', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2021-09-24 10:32:29', '2021-09-24 14:33:07'),
(2, 'Consumer', '12345678900987654321', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '2021-09-24 10:32:29', '2021-09-24 14:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `country_name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `isd_code` varchar(255) NOT NULL,
  `currency_symbol` varchar(255) NOT NULL,
  `distance_unit` varchar(255) NOT NULL,
  `default_language` varchar(255) NOT NULL,
  `min_number_digits` varchar(255) NOT NULL,
  `max_number_digits` varchar(255) NOT NULL,
  `online_trans_code` varchar(255) NOT NULL,
  `sequence` varchar(255) NOT NULL,
  `iso3` char(3) NOT NULL,
  `numcode` smallint(6) NOT NULL,
  `phonecode` int(5) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `country_name`, `nicename`, `currency`, `isd_code`, `currency_symbol`, `distance_unit`, `default_language`, `min_number_digits`, `max_number_digits`, `online_trans_code`, `sequence`, `iso3`, `numcode`, `phonecode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PH', 'Metro Manila', 'Metro Manila', 'PHP', 'PH', 'PHP', '', '', '', '', '', '1', 'PHP', 608, 63, 'active', '2020-08-27 16:47:29', '2020-08-27 16:47:29'),
(2, 'PH', 'Cagayan De Oro', 'Cagayan De Oro', 'PHP', 'PH', 'PHP', 'Km', 'english', '10', '11', '', '1', 'PHP', 608, 63, 'active', '2020-08-27 16:47:29', '2021-09-15 16:42:25'),
(3, 'PH', 'Metro Cebu', 'Metro Cebu', 'PHP', 'PH', 'PHP', 'Km', 'english', '10', '11', '', '1', 'PHP', 608, 63, 'active', '2020-08-27 16:47:29', '2021-09-15 16:42:25'),
(4, 'PH', 'Siargao Islands', 'Siargao Islands', 'PHP', 'PH', 'PHP', 'Km', 'english', '10', '11', '', '1', 'PHP', 608, 63, 'active', '2020-08-27 16:47:29', '2021-09-15 16:42:25'),
(5, 'PH', 'Puerto Prinsesa', 'Puerto Prinsesa', 'PHP', 'PH', 'PHP', 'Km', 'english', '10', '11', '', '1', 'PHP', 608, 63, 'active', '2020-08-27 16:47:29', '2021-09-15 16:42:25'),
(6, 'PH', 'Zamboanga City', 'Zamboanga City', 'PHP', 'PH', 'PHP', 'Km', 'english', '10', '11', '', '1', 'PHP', 608, 63, 'active', '2020-08-27 16:47:29', '2021-09-15 16:42:25'),
(7, 'PH', 'Legaspi City', 'Legaspi City', 'PHP', 'PH', 'PHP', 'Km', 'english', '10', '11', '', '1', 'PHP', 608, 63, 'active', '2020-08-27 16:47:29', '2021-09-15 16:42:25'),
(8, 'PH', 'Naga City', 'Naga City', 'PHP', 'PH', 'PHP', 'Km', 'english', '10', '11', '', '1', 'PHP', 608, 63, 'active', '2020-08-27 16:47:29', '2021-09-15 16:42:25'),
(9, 'PH', 'Iloilo City', 'Iloilo City', 'PHP', 'PH', 'PHP', 'Km', 'english', '10', '11', '', '1', 'PHP', 608, 63, 'active', '2020-08-27 16:47:29', '2021-09-15 16:42:25'),
(10, 'PH', 'Butuan City', 'Butuan City', 'PHP', 'PH', 'PHP', 'Km', 'filipino', '10', '11', '', '1', 'PHP', 608, 63, 'inactive', '2020-08-27 16:47:29', '2021-10-04 14:59:35'),
(11, 'PH', 'Baguio City', 'Baguio City', 'PHP', 'PH', 'PHP', 'Km', 'english', '10', '11', '', '1', 'PHP', 608, 63, 'active', '2020-08-27 16:47:29', '2021-09-15 16:42:25'),
(13, 'IN', 'Noida', 'Noida', 'INR', 'IN', 'RS', 'KM', 'english', '10', '11', '', '1', 'INR', 609, 91, 'active', '2021-10-04 15:11:42', '2021-10-04 15:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `country_all`
--

CREATE TABLE `country_all` (
  `id` int(11) NOT NULL,
  `isd_code` char(255) NOT NULL,
  `country_name` varchar(80) NOT NULL,
  `sequence` varchar(80) NOT NULL,
  `country_currency` char(255) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `ISOCode` int(5) NOT NULL,
  `distance_unit` text NOT NULL,
  `mobile_no_lenghth` text NOT NULL,
  `status` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_all`
--

INSERT INTO `country_all` (`id`, `isd_code`, `country_name`, `sequence`, `country_currency`, `numcode`, `ISOCode`, `distance_unit`, `mobile_no_lenghth`, `status`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93, 'Kilometer', 'Max:10|Min:10', 'active'),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355, '', '', ''),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213, '', '', ''),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684, '', '', ''),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376, '', '', ''),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244, '', '', ''),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264, '', '', ''),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0, '', '', ''),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268, '', '', ''),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54, '', '', ''),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374, '', '', ''),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297, '', '', ''),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61, '', '', ''),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43, '', '', ''),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994, '', '', ''),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242, '', '', ''),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973, '', '', ''),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880, '', '', ''),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246, '', '', ''),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375, '', '', ''),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32, '', '', ''),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501, '', '', ''),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229, '', '', ''),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441, '', '', ''),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975, '', '', ''),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591, '', '', ''),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387, '', '', ''),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267, '', '', ''),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0, '', '', ''),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55, '', '', ''),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246, '', '', ''),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673, '', '', ''),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359, '', '', ''),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226, '', '', ''),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257, '', '', ''),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855, '', '', ''),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237, '', '', ''),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1, '', '', ''),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238, '', '', ''),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345, '', '', ''),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236, '', '', ''),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235, '', '', ''),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56, '', '', ''),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86, '', '', ''),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61, '', '', ''),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672, '', '', ''),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57, '', '', ''),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269, '', '', ''),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242, '', '', ''),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242, '', '', ''),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682, '', '', ''),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506, '', '', ''),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225, '', '', ''),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385, '', '', ''),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53, '', '', ''),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357, '', '', ''),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420, '', '', ''),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45, '', '', ''),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253, '', '', ''),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767, '', '', ''),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809, '', '', ''),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593, '', '', ''),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20, '', '', ''),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503, '', '', ''),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240, '', '', ''),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291, '', '', ''),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372, '', '', ''),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251, '', '', ''),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500, '', '', ''),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298, '', '', ''),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679, '', '', ''),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358, '', '', ''),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33, '', '', ''),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594, '', '', ''),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689, '', '', ''),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0, '', '', ''),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241, '', '', ''),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220, '', '', ''),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995, '', '', ''),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49, '', '', ''),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233, '', '', ''),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350, '', '', ''),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30, '', '', ''),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299, '', '', ''),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473, '', '', ''),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590, '', '', ''),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671, '', '', ''),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502, '', '', ''),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224, '', '', ''),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245, '', '', ''),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592, '', '', ''),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509, '', '', ''),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0, '', '', ''),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39, '', '', ''),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504, '', '', ''),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852, '', '', ''),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36, '', '', ''),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354, '', '', ''),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91, '', '', ''),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62, '', '', ''),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98, '', '', ''),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964, '', '', ''),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353, '', '', ''),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972, '', '', ''),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39, '', '', ''),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876, '', '', ''),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81, '', '', ''),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962, '', '', ''),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7, '', '', ''),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254, '', '', ''),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686, '', '', ''),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850, '', '', ''),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82, '', '', ''),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965, '', '', ''),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996, '', '', ''),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856, '', '', ''),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371, '', '', ''),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961, '', '', ''),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266, '', '', ''),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231, '', '', ''),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218, '', '', ''),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423, '', '', ''),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370, '', '', ''),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352, '', '', ''),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853, '', '', ''),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389, '', '', ''),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261, '', '', ''),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265, '', '', ''),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60, '', '', ''),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960, '', '', ''),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223, '', '', ''),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356, '', '', ''),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692, '', '', ''),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596, '', '', ''),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222, '', '', ''),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230, '', '', ''),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269, '', '', ''),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52, '', '', ''),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691, '', '', ''),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373, '', '', ''),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377, '', '', ''),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976, '', '', ''),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664, '', '', ''),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212, '', '', ''),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258, '', '', ''),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95, '', '', ''),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264, '', '', ''),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674, '', '', ''),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977, '', '', ''),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31, '', '', ''),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599, '', '', ''),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687, '', '', ''),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64, '', '', ''),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505, '', '', ''),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227, '', '', ''),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234, '', '', ''),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683, '', '', ''),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672, '', '', ''),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670, '', '', ''),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47, '', '', ''),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968, '', '', ''),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92, '', '', ''),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680, '', '', ''),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970, '', '', ''),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507, '', '', ''),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675, '', '', ''),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595, '', '', ''),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51, '', '', ''),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63, '', '', ''),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0, '', '', ''),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48, '', '', ''),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351, '', '', ''),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787, '', '', ''),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974, '', '', ''),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262, '', '', ''),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40, '', '', ''),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70, '', '', ''),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250, '', '', ''),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290, '', '', ''),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869, '', '', ''),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758, '', '', ''),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508, '', '', ''),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784, '', '', ''),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684, '', '', ''),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378, '', '', ''),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239, '', '', ''),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966, '', '', ''),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221, '', '', ''),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381, '', '', ''),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248, '', '', ''),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232, '', '', ''),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65, '', '', ''),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421, '', '', ''),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386, '', '', ''),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677, '', '', ''),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252, '', '', ''),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27, '', '', ''),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0, '', '', ''),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34, '', '', ''),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94, '', '', ''),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249, '', '', ''),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597, '', '', ''),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47, '', '', ''),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268, '', '', ''),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46, '', '', ''),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41, '', '', ''),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963, '', '', ''),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886, '', '', ''),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992, '', '', ''),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255, '', '', ''),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66, '', '', ''),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670, '', '', ''),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228, '', '', ''),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690, '', '', ''),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676, '', '', ''),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868, '', '', ''),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216, '', '', ''),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90, '', '', ''),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370, '', '', ''),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649, '', '', ''),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688, '', '', ''),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256, '', '', ''),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380, '', '', ''),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971, '', '', ''),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44, '', '', ''),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1, '', '', ''),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1, '', '', ''),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598, '', '', ''),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998, '', '', ''),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678, '', '', ''),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58, '', '', ''),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84, '', '', ''),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284, '', '', ''),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340, '', '', ''),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681, '', '', ''),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212, '', '', ''),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967, '', '', ''),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260, '', '', ''),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mandatory` varchar(255) NOT NULL,
  `expiration_date` varchar(255) NOT NULL,
  `no_required` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `type` varchar(255) NOT NULL DEFAULT 'user',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `name`, `mandatory`, `expiration_date`, `no_required`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, 'id card', '', '', '', 1, 'user', '2021-08-05 11:46:40', '2021-08-05 11:46:40'),
(2, 'driver\'s license', '', '', '', 1, 'user', '2021-08-05 11:46:40', '2021-08-05 11:46:40'),
(3, 'business document 1', '', '', '', 1, 'user', '2021-08-05 11:47:37', '2021-08-05 11:47:37'),
(4, 'business document 2', '51', '2024-11-23', '52', 1, 'user', '2021-08-05 11:47:37', '2021-08-28 14:22:59'),
(5, 'test10', '12', '2021-08-30', '11', 1, 'user', '2021-08-28 14:23:31', '2021-08-28 14:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `drawer`
--

CREATE TABLE `drawer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `sequence` varchar(255) DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drawer`
--

INSERT INTO `drawer` (`id`, `name`, `description`, `sequence`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Upendra Singh Yadav', '<p>xcvxvbxcvxxcvxcvxc</p>', '123', '20210923194356-3wheeler.jpg', '2021-09-23 19:43:56', '2021-09-23 14:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `drivecardmaster`
--

CREATE TABLE `drivecardmaster` (
  `cardtypeid` bigint(20) NOT NULL,
  `cardtypename` int(11) NOT NULL,
  `inactive` int(11) NOT NULL,
  `createduserid` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drivepersonaldoc`
--

CREATE TABLE `drivepersonaldoc` (
  `id` bigint(20) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `cr_no` varchar(200) DEFAULT NULL,
  `crno_image` varchar(255) DEFAULT NULL,
  `licence_no` varchar(200) DEFAULT NULL,
  `frontlicensephoto` varchar(255) DEFAULT NULL,
  `backlicensephoto` varchar(255) DEFAULT NULL,
  `police_clearance_no` varchar(200) DEFAULT NULL,
  `police_clearance_image` text DEFAULT NULL,
  `vehicle_id` varchar(255) NOT NULL,
  `vehiclephoto` text DEFAULT NULL,
  `vehicle_name` varchar(255) DEFAULT NULL,
  `document_type` varchar(255) NOT NULL,
  `docsExpire` varchar(255) NOT NULL,
  `docs_status` varchar(255) NOT NULL,
  `document_file` varchar(255) DEFAULT NULL,
  `cardtypeid` varchar(110) DEFAULT NULL,
  `isactive` enum('1','0') NOT NULL DEFAULT '1',
  `createddate` varchar(255) DEFAULT current_timestamp(),
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drivepersonaldoc`
--

INSERT INTO `drivepersonaldoc` (`id`, `driver_id`, `cr_no`, `crno_image`, `licence_no`, `frontlicensephoto`, `backlicensephoto`, `police_clearance_no`, `police_clearance_image`, `vehicle_id`, `vehiclephoto`, `vehicle_name`, `document_type`, `docsExpire`, `docs_status`, `document_file`, `cardtypeid`, `isactive`, `createddate`, `created_at`, `updated_at`) VALUES
(38, 5, 'file613996b6a58b1-2.jpg', 'file613996b6a58b1-2.jpg', '', 'file613996b6a5605-4.jpg', 'file613996b6a578b-3.jpg', 'file613996b6a58b1-2.jpg', '', '1', 'file613996b6a594d-1.jpg', NULL, '', '2021-09-09', '', '', '2', '1', '2021-09-09 00:00:00', '2021-09-09', '2021-09-09'),
(56, 78, '889809', 'file615ca91c30da9-Crno_imageimage.jpg', '', '', '', '45645646654465', '', '2', 'file615ca93ab7c9a-Crno_imageimage.jpg', 'Motorbike', '', '2021-09-09', '', '', '2', '1', '2021-09-14 05:38:56', '2021-09-14 05:38:56', '2021-10-06 12:41:18'),
(57, 79, '', '', '', '', '', '', '', '3', '', NULL, '', '2021-09-11', '', '', '2', '1', '2021-09-11 00:00:00', '2021-09-11', '2021-09-11'),
(58, 80, '', '', '', '', '', '', '', '', '', NULL, '', '2021-09-11', '', '', '2', '1', '2021-09-11 00:00:00', '2021-09-11', '2021-09-11'),
(73, 99, '546546545656', '', '5646546565', '', '', '4654654656', '', '56465', '', NULL, '', '', '', '', NULL, '1', '2021-09-21 16:16:52', '2021-09-21 16:16:52', '2021-09-21 16:16:52'),
(74, 100, '457824163525', 'file614a009e669f7-3.jpg', '45789136584', 'file614a009e66aba-4.jpg', 'file614a009e66b25-3.jpg', '14574852145', 'file614a009e66b85-3.jpg', '25647', 'file614a009e66c09-3.jpg', NULL, '', '', '', '', NULL, '1', '2021-09-21 15:56:14', '2021-09-21 15:56:14', '2021-09-21 15:56:14'),
(75, 101, '25414745678', 'file61529d98e94c3-u3.png', '14785425564', 'file61529d98e96f1-Screenshot (3).png', 'file61529d98e99c6-u3.png', '4654654656', 'file61529d98e9b1c-u3.png', '56465', 'file61529d98e9c77-u3.png', NULL, '', '', '', '', NULL, '1', '2021-09-28 04:44:09', '2021-09-28 04:44:09', '2021-09-28 04:44:09'),
(76, 102, '457824163525', 'file614a05c507548-3.jpg', '45789136584', 'file614a05c507603-4.jpg', 'file614a05c50766a-3.jpg', '14574852145', 'file614a05c5076bd-3.jpg', '25647', 'file614a05c50770d-3.jpg', NULL, '', '', '', '', NULL, '1', '2021-09-21 16:18:13', '2021-09-21 16:18:13', '2021-09-21 16:18:13'),
(77, 103, '457824163525', 'file614a0629ee3f7-3.jpg', '45789136584', 'file614a0629ee591-4.jpg', 'file614a0629ee690-3.jpg', '14574852145', 'file614a0629ee768-3.jpg', '25647', 'file614a0629ee82f-3.jpg', NULL, '', '', '', '', NULL, '1', '2021-09-21 16:19:54', '2021-09-21 16:19:54', '2021-09-21 16:19:54'),
(78, 104, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-22 05:52:08', '2021-09-22 05:52:08', '2021-09-22 05:52:08'),
(79, 105, '546546545656', '', '5646546565', '', '', '4654654656', '', '56465', '', NULL, '', '', '', '', NULL, '1', '2021-09-22 06:03:56', '2021-09-22 06:03:56', '2021-09-22 06:03:56'),
(80, 106, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-23 11:59:26', '2021-09-23 11:59:26', '2021-09-23 11:59:26'),
(81, 107, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-23 12:09:31', '2021-09-23 12:09:31', '2021-09-23 12:09:31'),
(82, 108, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-23 16:56:43', '2021-09-23 16:56:43', '2021-09-23 16:56:43'),
(83, 109, '457824163525', '', '45789136584', '', '', '14574852145', '', '25647', '', NULL, '', '', '', '', NULL, '1', '2021-09-24 16:24:13', '2021-09-24 16:24:13', '2021-09-24 16:24:13'),
(84, 110, '457824163525', '', '45789136584', '', '', '14574852145', '', '25647', '', NULL, '', '', '', '', NULL, '1', '2021-09-24 17:17:15', '2021-09-24 17:17:15', '2021-09-24 17:17:15'),
(85, 111, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-24 17:20:32', '2021-09-24 17:20:32', '2021-09-24 17:20:32'),
(86, 112, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-24 18:02:08', '2021-09-24 18:02:08', '2021-09-24 18:02:08'),
(87, 113, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-25 06:27:41', '2021-09-25 06:27:41', '2021-09-25 06:27:41'),
(88, 114, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-25 10:35:25', '2021-09-25 10:35:25', '2021-09-25 10:35:25'),
(89, 115, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-25 10:43:35', '2021-09-25 10:43:35', '2021-09-25 10:43:35'),
(90, 116, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-25 12:28:17', '2021-09-25 12:28:17', '2021-09-25 12:28:17'),
(91, 117, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-25 12:36:19', '2021-09-25 12:36:19', '2021-09-25 12:36:19'),
(92, 118, '', '', 'ufufuc', '', '', 'chhchc', '', 'chhchc', '', NULL, '', '', '', '', NULL, '1', '2021-09-25 12:48:26', '2021-09-25 12:48:26', '2021-09-25 12:48:26'),
(93, 119, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-25 12:55:27', '2021-09-25 12:55:27', '2021-09-25 12:55:27'),
(94, 120, '', '', '', '', 'file614f23c529f6c-DriverDoc.jpg', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-25 13:27:35', '2021-09-25 13:27:35', '2021-09-25 13:27:35'),
(95, 121, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-25 14:05:54', '2021-09-25 14:05:54', '2021-09-25 14:05:54'),
(96, 122, '', '', 'dytd', 'file614f2f2c8b855-Driver_frontlicensephoto.jpg', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-25 14:16:13', '2021-09-25 14:16:13', '2021-09-25 14:16:13'),
(97, 123, 'sgsggs', '', 'hdjdjd', 'file614f3b2dd2302-Driver_frontlicensephoto.jpg', 'file614f3b2dd2590-Driverback_licensephoto.jpg', 'dbbd', '', 'dbbd', '', NULL, '', '', '', '', NULL, '1', '2021-09-25 15:07:25', '2021-09-25 15:07:25', '2021-09-25 15:07:25'),
(98, 124, '97876', 'file614f518e11242-Driver_crno_image.jpg', 'kjhuh', 'file614f518e114b0-Driver_frontlicensephoto.jpg', 'file614f518e11670-Driverback_licensephoto.jpg', '89787878', 'file614f518e117f3-Driver_police_clearance_image.jpg', '89787878', '', NULL, '', '', '', '', NULL, '1', '2021-09-25 16:42:54', '2021-09-25 16:42:54', '2021-09-25 16:42:54'),
(99, 125, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-25 17:02:17', '2021-09-25 17:02:17', '2021-09-25 17:02:17'),
(100, 126, '', '', 'h', 'file614f582507f0c-Driver_frontlicensephoto.jpg', 'file614f582508027-Driverback_licensephoto.jpg', 'huhuh', 'file614f5825080b0-Driver_police_clearance_image.jpg', 'huhuh', 'file614f58250812e-Driver_vehiclephoto.jpg', NULL, '', '', '', '', NULL, '1', '2021-09-25 17:11:01', '2021-09-25 17:11:01', '2021-09-25 17:11:01'),
(101, 127, 'gjj', '', '3666', 'file6150076fea857-Driver_frontlicensephoto.jpg', 'file6150076feaa6a-Driverback_licensephoto.jpg', 'vhh', 'file6150076feabd7-Driver_police_clearance_image.jpg', '1', '', NULL, '', '', '', '', NULL, '1', '2021-09-26 05:38:56', '2021-09-26 05:38:56', '2021-09-26 05:38:56'),
(102, 128, 'ucjvuv', 'file615009223a8ed-Driver_crno_image.jpg', 'hdhc', 'file615009223a9c8-Driver_frontlicensephoto.jpg', 'file615009223ab0b-Driverback_licensephoto.jpg', 'gcch', 'file615009223ac13-Driver_police_clearance_image.jpg', '1', '', NULL, '', '', '', '', NULL, '1', '2021-09-26 05:46:10', '2021-09-26 05:46:10', '2021-09-26 05:46:10'),
(103, 129, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-26 11:17:57', '2021-09-26 11:17:57', '2021-09-26 11:17:57'),
(104, 130, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-27 14:28:56', '2021-09-27 14:28:56', '2021-09-27 14:28:56'),
(105, 131, '457824163525', '', '45789136584', '', '', '14574852145', '', '25647', '', NULL, '', '', '', '', NULL, '1', '2021-09-27 14:30:06', '2021-09-27 14:30:06', '2021-09-27 14:30:06'),
(106, 132, '457824163525', '', '45789136584', '', '', '14574852145', '', '25647', '', NULL, '', '', '', '', NULL, '1', '2021-09-27 14:39:37', '2021-09-27 14:39:37', '2021-09-27 14:39:37'),
(107, 133, '457824163525', '', '45789136584', '', '', '14574852145', '', '25647', '', NULL, '', '', '', '', NULL, '1', '2021-09-27 15:12:10', '2021-09-27 15:12:10', '2021-09-27 15:12:10'),
(108, 134, '457824163525', '', '45789136584', '', '', '14574852145', '', '25647', '', NULL, '', '', '', '', NULL, '1', '2021-09-27 18:23:20', '2021-09-27 18:23:20', '2021-09-27 18:23:20'),
(109, 135, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-28 04:37:10', '2021-09-28 04:37:10', '2021-09-28 04:37:10'),
(110, 136, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-09-28 04:40:15', '2021-09-28 04:40:15', '2021-09-28 04:40:15'),
(111, 137, '', '', '', '', '', '', '', '1', '', NULL, '', '', '', '', NULL, '1', '2021-09-28 07:53:39', '2021-09-28 07:53:39', '2021-09-28 07:53:39'),
(112, 138, '', '', 'test', 'file615da11cc899c-Driver_frontlicensephoto.jpg', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-06 13:13:02', '2021-10-06 13:13:02', '2021-10-06 13:14:04'),
(113, 139, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-06 13:38:59', '2021-10-06 13:38:59', '2021-10-06 13:39:49'),
(114, 140, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-06 13:58:16', '2021-10-06 13:58:16', '2021-10-06 13:58:16'),
(115, 141, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-06 14:21:17', '2021-10-06 14:21:17', '2021-10-06 14:22:59'),
(116, 142, 'ggh', 'file615dbec9d0bd0-Crno_imageimage.jpg', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-06 15:17:41', '2021-10-06 15:17:41', '2021-10-06 15:21:05'),
(117, 143, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-16 09:30:23', '2021-10-16 09:30:23', '2021-10-16 09:30:23'),
(118, 144, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-17 07:21:46', '2021-10-17 07:21:46', '2021-10-17 07:21:46'),
(119, 145, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-17 07:31:13', '2021-10-17 07:31:13', '2021-10-17 07:31:13'),
(120, 146, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-17 07:35:17', '2021-10-17 07:35:17', '2021-10-17 07:35:17'),
(121, 147, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-17 07:37:13', '2021-10-17 07:37:13', '2021-10-17 07:37:13'),
(122, 148, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-17 07:41:40', '2021-10-17 07:41:40', '2021-10-17 07:41:40'),
(123, 149, NULL, NULL, NULL, 'frontlicensephoto-1634551551.png', NULL, NULL, NULL, '', NULL, NULL, 'business document 1', '2021-10-19', 'valid', 'document_file-1634551551.png', NULL, '1', '2021-10-19 00:00:00', '2021-10-17 14:33:04', '2021-10-17 14:33:04'),
(124, 150, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-17 09:37:23', '2021-10-17 09:37:23', '2021-10-17 09:37:23'),
(125, 151, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-17 09:41:26', '2021-10-17 09:41:26', '2021-10-17 09:41:26'),
(126, 152, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-17 09:47:13', '2021-10-17 09:47:13', '2021-10-17 09:47:13'),
(127, 153, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-17 10:23:15', '2021-10-17 10:23:15', '2021-10-17 10:23:15'),
(128, 154, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-17 11:56:24', '2021-10-17 11:56:24', '2021-10-17 11:56:24'),
(129, 155, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-17 12:07:45', '2021-10-17 12:07:45', '2021-10-17 12:07:45'),
(130, 156, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-17 12:14:39', '2021-10-17 12:14:39', '2021-10-17 12:14:39'),
(131, 157, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-17 12:27:29', '2021-10-17 12:27:29', '2021-10-17 12:27:29'),
(132, 158, '', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, '1', '2021-10-17 12:36:46', '2021-10-17 12:36:46', '2021-10-17 12:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `driverconfiguration`
--

CREATE TABLE `driverconfiguration` (
  `id` int(11) NOT NULL,
  `payment_to` varchar(255) DEFAULT NULL,
  `verify` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driverconfiguration`
--

INSERT INTO `driverconfiguration` (`id`, `payment_to`, `verify`, `time`, `created_at`, `updated_at`) VALUES
(1, 'driver', 'active', '12', NULL, '2021-09-17 10:55:10');

-- --------------------------------------------------------

--
-- Table structure for table `driverdecline`
--

CREATE TABLE `driverdecline` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `pickup_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driverdecline`
--

INSERT INTO `driverdecline` (`id`, `driver_id`, `pickup_id`, `created_at`, `updated_at`) VALUES
(1, 5, 256, '2021-09-21 17:18:08', '2021-09-21 17:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `driver_current_location`
--

CREATE TABLE `driver_current_location` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `angle` varchar(100) NOT NULL,
  `c_lat` varchar(100) NOT NULL,
  `c_log` varchar(100) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver_current_location`
--

INSERT INTO `driver_current_location` (`id`, `driver_id`, `angle`, `c_lat`, `c_log`, `created_at`, `updated_at`) VALUES
(1, 1, 'east', '37.3296035', '-122.0208292', '', ''),
(2, 2, 'east', '11.945650', '79.831047', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `driver_otp`
--

CREATE TABLE `driver_otp` (
  `id` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `otp` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_otp`
--

INSERT INTO `driver_otp` (`id`, `phone`, `otp`, `created`, `created_at`, `updated_at`) VALUES
(1, '+910099889900', 58840, '2021-06-19 16:07:21', '', ''),
(2, '+911122334455', 885468, '2021-06-19 16:13:38', '', ''),
(3, '+910909090909', 52875, '2021-06-19 17:23:07', '', ''),
(4, '+919009890998', 261176, '2021-06-19 17:26:24', '', ''),
(5, '+910909090990', 895571, '2021-06-19 17:30:55', '', ''),
(6, '+910909900000', 467246, '2021-06-19 17:36:41', '', ''),
(7, '+919090909988', 739904, '2021-06-19 17:39:14', '', ''),
(8, '+911234445578', 932513, '2021-06-19 18:14:40', '', ''),
(9, '+912345567789', 587072, '2021-06-19 18:19:01', '', ''),
(10, '+911237890234', 858349, '2021-06-19 18:27:00', '', ''),
(11, '+913456789098', 344341, '2021-06-19 18:30:11', '', ''),
(12, '+910896533655', 246026, '2021-06-19 18:40:57', '', ''),
(13, '+916555352445', 317996, '2021-06-19 18:44:23', '', ''),
(14, '+913655236655', 915310, '2021-06-19 18:50:20', '', ''),
(15, '+916555555532', 203637, '2021-06-19 18:54:50', '', ''),
(16, '+912233665588', 134369, '2021-06-20 04:36:27', '', ''),
(17, '+918855223366', 227835, '2021-06-20 05:56:09', '', ''),
(18, '+916633552222', 744623, '2021-06-20 06:13:03', '', ''),
(19, '+917499435683', 643747, '2021-06-20 06:17:34', '', ''),
(20, '+919988996633', 338603, '2021-06-20 06:34:59', '', ''),
(21, '+919953666666', 497190, '2021-06-20 06:38:38', '', ''),
(22, '+916636636336', 765045, '2021-06-20 06:52:16', '', ''),
(23, '+918899663366', 201606, '2021-06-20 07:07:32', '', ''),
(24, '+912356896599', 140254, '2021-06-20 07:10:33', '', ''),
(25, '+911234568552', 661364, '2021-06-20 07:26:26', '', ''),
(26, '+919900990999', 563639, '2021-06-20 08:48:03', '', ''),
(27, '+910909090999', 288090, '2021-06-20 16:02:01', '', ''),
(28, '+919495858858', 920600, '2021-06-20 18:19:16', '', ''),
(29, '+919090890989', 725516, '2021-06-20 18:31:26', '', ''),
(30, '+911234567890', 972747, '2021-06-20 18:54:37', '', ''),
(31, '+910989009959', 134011, '2021-06-20 19:14:16', '', ''),
(32, '+910909890998', 380327, '2021-06-20 20:04:54', '', ''),
(33, '+629627204181', 43455, '2021-06-30 03:52:34', '', ''),
(34, '+918630920347', 65364, '2021-06-30 03:58:12', '', ''),
(35, '+639159851468', 851624, '2021-06-30 04:23:28', '', ''),
(36, '+919532152051', 156145, '2021-06-30 10:57:15', '', ''),
(37, '+919532152051', 739386, '2021-06-30 10:57:57', '', ''),
(38, '+918630920347', 553891, '2021-06-30 18:47:06', '', ''),
(39, '+918630920347', 302250, '2021-06-30 18:47:26', '', ''),
(40, '+918882341937', 376465, '2021-07-02 11:18:10', '', ''),
(41, '+919953696119', 716017, '2021-07-03 11:30:18', '', ''),
(42, '+919976898999', 868203, '2021-07-03 11:37:16', '', ''),
(43, '+919953696119', 393995, '2021-07-03 11:57:07', '', ''),
(44, '+919953696119', 708800, '2021-07-03 16:49:44', '', ''),
(45, '+919999999999', 359791, '2021-07-03 16:52:54', '', ''),
(46, '+919999999999', 41253, '2021-07-03 16:56:00', '', ''),
(47, '+910999990999', 215452, '2021-07-03 16:58:14', '', ''),
(48, '+919999999999', 902007, '2021-07-03 18:00:39', '', ''),
(49, '+919953696119', 871315, '2021-07-04 03:39:19', '', ''),
(50, '+919953696119', 295527, '2021-07-04 03:42:17', '', ''),
(51, '+919953696119', 106655, '2021-07-04 03:44:42', '', ''),
(52, '+919953696119', 476067, '2021-07-04 05:00:25', '', ''),
(53, '1234567890', 611184, '2021-07-04 09:18:42', '', ''),
(54, '1234567890', 73750, '2021-07-04 09:21:02', '', ''),
(55, '1234567890', 155699, '2021-07-04 09:24:28', '', ''),
(56, '1234567890', 824971, '2021-07-04 09:28:18', '', ''),
(57, '1234567890', 87923, '2021-07-04 09:28:45', '', ''),
(58, '1234567890', 821630, '2021-07-04 09:29:05', '', ''),
(59, '+639081250030', 868987, '2021-07-04 22:08:45', '', ''),
(60, '+918882341937', 97697, '2021-07-05 06:08:16', '', ''),
(61, '+918882341937', 636096, '2021-07-05 06:09:15', '', ''),
(62, '+918882341937', 883645, '2021-07-05 07:23:21', '', ''),
(63, '+918882341937', 405836, '2021-07-05 07:24:41', '', ''),
(64, '+918882341937', 266437, '2021-07-05 07:50:23', '', ''),
(65, '+918882341937', 218598, '2021-07-05 08:54:47', '', ''),
(66, '+918882341937', 22779, '2021-07-05 08:56:50', '', ''),
(67, '+918882341937', 985392, '2021-07-05 08:57:54', '', ''),
(68, '+918888888888', 625812, '2021-07-05 13:39:03', '', ''),
(69, '+910999990002', 465801, '2021-07-05 13:45:06', '', ''),
(70, '+910909090909', 385067, '2021-07-05 13:49:19', '', ''),
(71, '+919988899988', 717946, '2021-07-05 17:10:12', '', ''),
(72, '+919988999383', 265203, '2021-07-05 17:21:24', '', ''),
(73, '+919953696119', 484239, '2021-07-06 04:29:00', '', ''),
(74, '+919953696119', 570456, '2021-07-06 11:44:05', '', ''),
(75, '+919953696119', 367329, '2021-07-06 13:23:50', '', ''),
(76, '+912222222555', 655343, '2021-07-06 13:26:59', '', ''),
(77, '+919965667777', 311355, '2021-07-06 13:30:39', '', ''),
(78, '+639081250030', 191059, '2021-07-10 09:07:34', '', ''),
(79, '+918130413551', 965368, '2021-07-18 05:29:37', '', ''),
(80, '+917979948924', 518889, '2021-09-04 07:41:42', '', ''),
(81, '+917979948924', 80144, '2021-09-04 08:27:38', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `driver_request`
--

CREATE TABLE `driver_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_request`
--

INSERT INTO `driver_request` (`id`, `user_id`, `created_at`) VALUES
(1, 1, '2021-08-30 06:47:12'),
(2, 149, '2021-08-30 11:11:02'),
(3, 281, '2021-08-31 10:46:30'),
(4, 288, '2021-08-31 13:50:13'),
(5, 289, '2021-08-31 18:07:20'),
(6, 298, '2021-09-03 02:12:58'),
(7, 300, '2021-09-03 06:01:09'),
(8, 293, '2021-09-03 06:42:11'),
(9, 302, '2021-09-03 08:45:27'),
(10, 304, '2021-09-04 16:19:56'),
(11, 307, '2021-09-06 11:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `driver_support`
--

CREATE TABLE `driver_support` (
  `id` int(11) NOT NULL,
  `application` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_support`
--

INSERT INTO `driver_support` (`id`, `application`, `details`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Driver', '0987654321234567890', 'Lorem Ipsum', '2021-09-24 10:38:53', '2021-09-24 14:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `driver_vehicle`
--

CREATE TABLE `driver_vehicle` (
  `id` int(11) NOT NULL,
  `driver_id` varchar(255) NOT NULL,
  `vehicle_type` varchar(25) NOT NULL,
  `vehicle_image` varchar(255) DEFAULT NULL,
  `vehicle_plate_image` varchar(255) DEFAULT NULL,
  `vehicle_ser_type` varchar(255) NOT NULL,
  `veh_doc_type` varchar(255) NOT NULL,
  `veh_doc_expire` date NOT NULL,
  `veh_doc_image` varchar(255) DEFAULT NULL,
  `veh_doc_status` varchar(255) NOT NULL,
  `veh_doc_upload_at` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver_vehicle`
--

INSERT INTO `driver_vehicle` (`id`, `driver_id`, `vehicle_type`, `vehicle_image`, `vehicle_plate_image`, `vehicle_ser_type`, `veh_doc_type`, `veh_doc_expire`, `veh_doc_image`, `veh_doc_status`, `veh_doc_upload_at`, `created_at`, `updated_at`) VALUES
(1, '83', 'Motercycle', 'vehicle_image-1630388453.jpg', 'vehicle_plate_image-1630388453.jpg', 'Dura Express', 'static', '2021-08-29', 'veh_doc_image-1630388453.jpg', 'valid', '2021-08-29', '2021-08-29 22:44:40', '2021-08-31 11:10:53'),
(2, '99', 'Motercycle', 'vehicle_image-1630388453.jpg', 'vehicle_plate_image-1630388453.jpg', 'Dura Express', 'static', '2021-08-31', 'veh_doc_image-1630388453.jpg', 'valid', '2021-08-31', '2021-08-31 10:38:11', '2021-08-31 11:10:53'),
(3, '100', 'Motercycle', 'vehicle_image-1630388453.jpg', 'vehicle_plate_image-1630388453.jpg', 'Dura Express', 'static', '2021-08-31', 'veh_doc_image-1630388453.jpg', 'valid', '2021-08-30', '2021-08-31 10:58:37', '2021-08-31 11:10:53'),
(4, '137', 'Motercycle', 'vehicle_image-1630388453.jpg', 'vehicle_plate_image-1630388453.jpg', 'Dura Express', 'static', '2021-08-30', 'veh_doc_image-1630388453.jpg', 'valid', '2021-08-30', '2021-08-31 11:10:53', '2021-08-31 11:10:53'),
(5, '149', 'Motercycle', '', '', 'Dura Express', '', '2021-10-17', '', 'valid', '2021-10-17', '2021-10-17 14:33:04', '2021-10-17 14:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `driver_wallet`
--

CREATE TABLE `driver_wallet` (
  `id` int(11) NOT NULL,
  `driver_id` varchar(25) NOT NULL,
  `wallet_amount` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver_wallet`
--

INSERT INTO `driver_wallet` (`id`, `driver_id`, `wallet_amount`, `created_at`, `updated_at`) VALUES
(1, '78', '0', '2021-09-09 15:41:47', '2021-09-09 15:41:47'),
(2, '79', '0', '2021-09-11 08:18:54', '2021-09-11 08:18:54'),
(3, '80', '0', '2021-09-11 08:39:54', '2021-09-11 08:39:54'),
(4, '81', '0', '2021-09-11 11:13:06', '2021-09-11 11:13:06'),
(5, '82', '0', '2021-09-15 08:03:06', '2021-09-15 08:03:06'),
(6, '83', '0', '2021-09-16 13:56:26', '2021-09-16 13:56:26'),
(7, '84', '0', '2021-09-16 14:47:34', '2021-09-16 14:47:34'),
(8, '85', '0', '2021-09-18 12:51:32', '2021-09-18 12:51:32'),
(9, '86', '0', '2021-09-18 12:53:56', '2021-09-18 12:53:56'),
(10, '87', '0', '2021-09-18 18:56:07', '2021-09-18 18:56:07'),
(11, '88', '0', '2021-09-20 13:08:03', '2021-09-20 13:08:03'),
(12, '89', '0', '2021-09-20 13:47:26', '2021-09-20 13:47:26'),
(13, '90', '0', '2021-09-20 14:48:53', '2021-09-20 14:48:53'),
(14, '91', '0', '2021-09-20 14:59:26', '2021-09-20 14:59:26'),
(15, '92', '0', '2021-09-20 15:29:37', '2021-09-20 15:29:37'),
(16, '93', '0', '2021-09-21 12:02:45', '2021-09-21 12:02:45'),
(17, '94', '0', '2021-09-21 12:11:21', '2021-09-21 12:11:21'),
(18, '95', '0', '2021-09-21 15:21:59', '2021-09-21 15:21:59'),
(19, '96', '0', '2021-09-21 15:24:51', '2021-09-21 15:24:51'),
(20, '97', '0', '2021-09-21 15:29:11', '2021-09-21 15:29:11'),
(21, '98', '0', '2021-09-21 15:32:26', '2021-09-21 15:32:26'),
(22, '99', '0', '2021-09-21 15:37:19', '2021-09-21 15:37:19'),
(23, '100', '0', '2021-09-21 15:56:14', '2021-09-21 15:56:14'),
(24, '101', '0', '2021-09-21 15:58:04', '2021-09-21 15:58:04'),
(25, '102', '0', '2021-09-21 16:18:13', '2021-09-21 16:18:13'),
(26, '103', '0', '2021-09-21 16:19:54', '2021-09-21 16:19:54'),
(27, '104', '0', '2021-09-22 05:52:08', '2021-09-22 05:52:08'),
(28, '105', '0', '2021-09-22 06:03:56', '2021-09-22 06:03:56'),
(29, '106', '0', '2021-09-23 11:59:26', '2021-09-23 11:59:26'),
(30, '107', '0', '2021-09-23 12:09:31', '2021-09-23 12:09:31'),
(31, '108', '0', '2021-09-23 16:56:43', '2021-09-23 16:56:43'),
(32, '109', '0', '2021-09-24 16:24:13', '2021-09-24 16:24:13'),
(33, '110', '0', '2021-09-24 17:17:15', '2021-09-24 17:17:15'),
(34, '111', '0', '2021-09-24 17:20:32', '2021-09-24 17:20:32'),
(35, '112', '0', '2021-09-24 18:02:08', '2021-09-24 18:02:08'),
(36, '113', '0', '2021-09-25 06:27:41', '2021-09-25 06:27:41'),
(37, '114', '0', '2021-09-25 10:35:25', '2021-09-25 10:35:25'),
(38, '115', '0', '2021-09-25 10:42:51', '2021-09-25 10:42:51'),
(39, '116', '0', '2021-09-25 12:28:17', '2021-09-25 12:28:17'),
(40, '117', '0', '2021-09-25 12:36:19', '2021-09-25 12:36:19'),
(41, '118', '0', '2021-09-25 12:44:03', '2021-09-25 12:44:03'),
(42, '119', '0', '2021-09-25 12:55:27', '2021-09-25 12:55:27'),
(43, '120', '0', '2021-09-25 13:26:11', '2021-09-25 13:26:11'),
(44, '121', '0', '2021-09-25 14:05:54', '2021-09-25 14:05:54'),
(45, '122', '0', '2021-09-25 14:14:53', '2021-09-25 14:14:53'),
(46, '123', '0', '2021-09-25 15:05:21', '2021-09-25 15:05:21'),
(47, '124', '0', '2021-09-25 16:39:46', '2021-09-25 16:39:46'),
(48, '125', '0', '2021-09-25 17:02:17', '2021-09-25 17:02:17'),
(49, '126', '0', '2021-09-25 17:09:00', '2021-09-25 17:09:00'),
(50, '127', '0', '2021-09-26 05:37:22', '2021-09-26 05:37:22'),
(51, '128', '0', '2021-09-26 05:44:57', '2021-09-26 05:44:57'),
(52, '129', '0', '2021-09-26 11:17:57', '2021-09-26 11:17:57'),
(53, '130', '0', '2021-09-27 14:28:56', '2021-09-27 14:28:56'),
(54, '131', '0', '2021-09-27 14:30:06', '2021-09-27 14:30:06'),
(55, '132', '0', '2021-09-27 14:39:37', '2021-09-27 14:39:37'),
(56, '133', '0', '2021-09-27 15:12:10', '2021-09-27 15:12:10'),
(57, '134', '0', '2021-09-27 18:23:20', '2021-09-27 18:23:20'),
(58, '135', '0', '2021-09-28 04:37:10', '2021-09-28 04:37:10'),
(59, '136', '0', '2021-09-28 04:40:15', '2021-09-28 04:40:15'),
(60, '137', '0', '2021-09-28 07:46:28', '2021-09-28 07:46:28'),
(61, '138', '0', '2021-10-06 13:13:02', '2021-10-06 13:13:02'),
(62, '139', '0', '2021-10-06 13:38:59', '2021-10-06 13:38:59'),
(63, '140', '0', '2021-10-06 13:58:16', '2021-10-06 13:58:16'),
(64, '141', '0', '2021-10-06 14:21:17', '2021-10-06 14:21:17'),
(65, '142', '0', '2021-10-06 15:17:41', '2021-10-06 15:17:41'),
(66, '143', '0', '2021-10-16 09:30:23', '2021-10-16 09:30:23'),
(67, '144', '0', '2021-10-17 07:21:46', '2021-10-17 07:21:46'),
(68, '145', '0', '2021-10-17 07:31:13', '2021-10-17 07:31:13'),
(69, '146', '0', '2021-10-17 07:35:17', '2021-10-17 07:35:17'),
(70, '147', '0', '2021-10-17 07:37:13', '2021-10-17 07:37:13'),
(71, '148', '0', '2021-10-17 07:41:40', '2021-10-17 07:41:40'),
(72, '150', '0', '2021-10-17 09:37:23', '2021-10-17 09:37:23'),
(73, '151', '0', '2021-10-17 09:41:26', '2021-10-17 09:41:26'),
(74, '152', '0', '2021-10-17 09:47:13', '2021-10-17 09:47:13'),
(75, '153', '0', '2021-10-17 10:23:15', '2021-10-17 10:23:15'),
(76, '154', '0', '2021-10-17 11:56:24', '2021-10-17 11:56:24'),
(77, '155', '0', '2021-10-17 12:07:45', '2021-10-17 12:07:45'),
(78, '156', '0', '2021-10-17 12:14:39', '2021-10-17 12:14:39'),
(79, '157', '0', '2021-10-17 12:27:29', '2021-10-17 12:27:29'),
(80, '158', '0', '2021-10-17 12:36:46', '2021-10-17 12:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `driveuser`
--

CREATE TABLE `driveuser` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `manager_account_no` text DEFAULT NULL,
  `g_cash_accont_name` varchar(255) NOT NULL,
  `g_cash_no` varchar(255) DEFAULT NULL,
  `lastupdatedatetime` datetime NOT NULL,
  `profilephoto_url` text DEFAULT NULL,
  `qr_code` varchar(255) NOT NULL,
  `dura_bag_id` varchar(200) NOT NULL,
  `vehicle_id` varchar(25) DEFAULT NULL,
  `manger_id` varchar(25) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_datetime` date NOT NULL,
  `isactive` enum('1','0') NOT NULL DEFAULT '1',
  `isvarified` enum('1','0') NOT NULL DEFAULT '0',
  `is_online` enum('1','0') DEFAULT '0',
  `is_autoaccept` enum('1','0') NOT NULL DEFAULT '0' COMMENT '''1'' Auto Accept , ''0'' InactiveAutoAccept',
  `referralcode` varchar(200) NOT NULL,
  `refered_by` varchar(255) DEFAULT NULL,
  `isbusinessaccout` enum('1','0') NOT NULL DEFAULT '0',
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driveuser`
--

INSERT INTO `driveuser` (`id`, `firstname`, `middlename`, `lastname`, `mobile`, `dob`, `password`, `email`, `manager_account_no`, `g_cash_accont_name`, `g_cash_no`, `lastupdatedatetime`, `profilephoto_url`, `qr_code`, `dura_bag_id`, `vehicle_id`, `manger_id`, `city`, `address`, `created_datetime`, `isactive`, `isvarified`, `is_online`, `is_autoaccept`, `referralcode`, `refered_by`, `isbusinessaccout`, `latitude`, `longitude`, `updated_at`, `created_at`) VALUES
(5, 'Felicity', '', 'Felicia', '8826592906', '10-02-1994', '', 'sonam5@gmail.com', '', '', '', '2021-08-23 23:21:16', 'driverimage.png', '', '', NULL, NULL, NULL, NULL, '2021-08-23', '1', '1', '1', '0', 'HxpBWnG2', '', '1', '14.622541600', '121.023234600', '2021-09-19 17:58:53', '2021-09-09 00:00:00'),
(78, 'Ff', 'dgf', 'dsfd', '941596811', '10/22/1990 12:00:00 AM', '$2y$10$BneVzjYzI.x4T7Hc45rI0e8cOqcyu9ljM4IclOhv1ZmJOUqTU26Ha', 'man@gmail.com', '15465456', '56465465456', '1', '2021-09-16 14:53:12', 'file615d998a1b341-profilephoto_url_image.jpg', '', '5456465', NULL, 'fg', NULL, NULL, '2021-09-09', '1', '', '1', '0', 'KHhyfel2', '', '', '20.9188933333333', '80.6774416666667', '2021-10-06 12:41:46', '2021-09-09 00:00:00'),
(79, 'Manish', 'Kumar', '', '7979948924', '', '$2y$10$cz2dnqBZEoahf/PDEBRGBunWzLgEivE5c94zAERa0spVZaGiSTdEO', 'test@test.com', '', '', '1', '2021-09-11 00:00:00', 'driverimage.png', '', '1', NULL, NULL, NULL, NULL, '2021-09-11', '1', '', '1', '0', 'DvOuqN4n', '', '', '0.000000', '0.000000', '2021-09-19 17:59:05', '2021-09-11 00:00:00'),
(83, 'Manish', '', 'Kumar', '55666666666', '1986-02-02', '$2y$10$dsWuaZvJMhvde/upZLwrs.H5XssIN8oaAePO8OBcjc1Z3mmZwOkOK', 'man4@gmail.com', '1', '1', '1', '2021-09-16 13:56:26', 'driverimage.png', '', '1', NULL, NULL, NULL, NULL, '2021-09-16', '1', '', '1', '0', 'E1WiTFA0', '', '', '0.000000', '0.000000', '2021-09-19 17:59:12', '2021-09-16 13:56:26'),
(99, 'Manish', 'Kumar', 'Pathak', '8054251403', '2021-02-05', '$2y$10$6yhHaAFby4hYCkYkleYOXecBZoYm9Tuf2h0yN5Tj67/WcPMnNBLoe', 'mani@yopmail.com', '1', '2', '3', '2021-09-21 16:16:52', 'mani.jpg', '80542514041552245751960083f52cd7f9d168badb.png', '56465', NULL, NULL, NULL, NULL, '2021-09-21', '1', '0', '1', '0', '1wWQ2KXq', '', '0', '12.56465465', '13.54654656', '2021-09-23 10:07:49', '2021-09-21 16:16:52'),
(100, 'Manish', 'Kumar', 'Pathak', '8054251405', '2021-02-05', '$2y$10$g0Yl34lqOJ9XnJqztATZAOQ4j.nSR7wQdP8fxK6kc7r2dvaDpmFmW', 'manisd@yopmail.com', '1', '2', '3', '2021-09-21 15:56:14', 'mani.jpg', '8054251405f1618650f46521c19f909d9409a3e267.png', '547815', NULL, NULL, NULL, NULL, '2021-09-21', '1', '0', '1', '0', 'wKN3r4ZX', '', '0', '10.25458455', '14.25478541', '2021-09-21 15:56:14', '2021-09-21 15:56:14'),
(137, 'Louie', 'Santos', 'Martinez', '9159851768', '11/20/1981 12:00:00 AM', '$2y$10$HAgdhORoX0KmmOtXFdrWxenvxHaCGGGYLt94BCrwL4auuFiMUjDl2', 'robertaristamartinez@gmail.com', '', 'Robert Martinez', '09159851768', '2021-09-28 07:53:39', 'mani.jpg', '9159851768befa4732f61688c0e9e688fc03427535.png', '', '1', NULL, NULL, NULL, '2021-09-28', '1', '0', '1', '0', '9Qqw6wxO', '', '0', '14.5859423', '121.0623438', '2021-09-28 07:53:39', '2021-09-28 07:53:39'),
(149, 'Upendra Singh Yadav', '', '', '+917905848385', '', '', 'upendrasngh5@gmail.com', NULL, '', NULL, '0000-00-00 00:00:00', 'profilephoto-1634551551.jpeg', '', '', NULL, NULL, 'Kannauj', 'Rampur, Baiju, chhibramau', '2021-10-17', '1', '0', '0', '0', '', NULL, '0', NULL, NULL, '2021-10-18 10:05:51', '2021-10-17 14:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `driveusernotification`
--

CREATE TABLE `driveusernotification` (
  `id` bigint(20) NOT NULL,
  `notificationtype` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `datetime` tinyint(1) NOT NULL,
  `durauserid` bigint(20) NOT NULL,
  `createddatetime` datetime NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driveusernotification`
--

INSERT INTO `driveusernotification` (`id`, `notificationtype`, `description`, `datetime`, `durauserid`, `createddatetime`, `created_at`, `updated_at`) VALUES
(1, 'testing noti', 'This description for driver notification', 2, 1, '2021-08-11 22:47:57', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `driveuserrating`
--

CREATE TABLE `driveuserrating` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `driverid` int(11) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `service_type` enum('Dura Drive','Dura Shop','Dura Eat') NOT NULL DEFAULT 'Dura Drive' COMMENT 'Dura Drive'',''Dura Shop'',''Dura Eat',
  `remarks` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driveuserrating`
--

INSERT INTO `driveuserrating` (`id`, `userid`, `orderid`, `driverid`, `rating`, `status`, `service_type`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 149, 18, 5, 1.0, 1, 'Dura Drive', '', '2021-09-12 17:36:38', '2021-06-22 18:48:04'),
(2, 149, 16, 5, 4.0, 1, 'Dura Drive', '', '2021-09-12 17:36:29', '2021-06-22 18:48:04'),
(3, 149, 17, 5, 3.5, 1, 'Dura Drive', '', '2021-09-12 17:36:19', '2021-06-22 18:48:04'),
(4, 303, 5, 5, 5.0, 1, 'Dura Drive', 'This is the test', '2021-09-13 17:25:07', '2021-09-13 17:25:07'),
(5, 303, 5, 5, 5.0, 1, 'Dura Drive', 'This is the test', '2021-09-13 17:28:36', '2021-09-13 17:28:36'),
(6, 303, 5, 5, 5.0, 1, 'Dura Drive', 'This is the test', '2021-09-13 17:28:39', '2021-09-13 17:28:39'),
(7, 303, 5, 5, 5.0, 1, 'Dura Drive', 'This is the test', '2021-09-13 17:28:41', '2021-09-13 17:28:41'),
(8, 303, 5, 5, 5.0, 1, 'Dura Drive', 'This is the test', '2021-09-13 17:28:43', '2021-09-13 17:28:43'),
(9, 303, 5, 5, 5.0, 1, 'Dura Drive', 'This is the test', '2021-09-13 17:28:46', '2021-09-13 17:28:46'),
(10, 303, 5, 5, 5.0, 1, 'Dura Drive', 'This is the test', '2021-09-13 17:29:02', '2021-09-13 17:29:02'),
(11, 303, 5, 5, 5.0, 1, 'Dura Drive', 'This is the test', '2021-09-13 17:29:11', '2021-09-13 17:29:11'),
(12, 303, 5, 5, 5.0, 1, 'Dura Drive', 'This is the test', '2021-09-13 17:29:13', '2021-09-13 17:29:13'),
(13, 303, 5, 5, 5.0, 1, 'Dura Drive', 'This is the test', '2021-09-13 17:29:32', '2021-09-13 17:29:32'),
(14, 303, 5, 5, 5.0, 1, 'Dura Drive', 'This is the test', '2021-09-13 17:29:38', '2021-09-13 17:29:38'),
(15, 303, 5, 5, 5.0, 1, 'Dura Drive', 'This is the test', '2021-09-13 17:29:45', '2021-09-13 17:29:45'),
(16, 303, 5, 5, 5.0, 1, 'Dura Drive', 'This is the test', '2021-09-13 17:29:49', '2021-09-13 17:29:49'),
(17, 303, 5, 5, 5.0, 1, 'Dura Drive', 'This is the test', '2021-09-13 17:31:05', '2021-09-13 17:31:05'),
(18, 303, 5, 5, 5.0, 1, 'Dura Drive', 'This is the test', '2021-09-13 17:31:10', '2021-09-13 17:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `driveuserreview`
--

CREATE TABLE `driveuserreview` (
  `reviewid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `review1` int(11) NOT NULL,
  `review2` int(11) NOT NULL,
  `review3` int(11) NOT NULL,
  `likescount` bigint(20) NOT NULL DEFAULT 0,
  `positivereview` int(11) NOT NULL,
  `negativereview` int(11) NOT NULL,
  `reviewbyuserid` int(11) NOT NULL,
  `reviewdatetime` datetime NOT NULL,
  `description` varchar(300) NOT NULL,
  `remarks` varchar(300) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `driveusersetting`
--

CREATE TABLE `driveusersetting` (
  `id` int(11) NOT NULL,
  `driveuserid` int(11) NOT NULL,
  `enable_push` tinyint(1) NOT NULL,
  `enable_promos` tinyint(1) NOT NULL,
  `enable_orderpurchased` tinyint(1) NOT NULL,
  `defaultlanguage` varchar(100) NOT NULL,
  `rates` varchar(200) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `durapickupshedule`
--

CREATE TABLE `durapickupshedule` (
  `id` int(11) NOT NULL,
  `order_no` varchar(255) NOT NULL DEFAULT '1',
  `driver_id` int(11) DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `pickup_address1` longtext DEFAULT NULL,
  `pickup_address2` longtext DEFAULT NULL,
  `pickup_name` varchar(255) NOT NULL,
  `pickup_mobile` varchar(255) NOT NULL,
  `destination_address1` longtext DEFAULT NULL,
  `destination_address2` longtext DEFAULT NULL,
  `destination_name` varchar(255) NOT NULL,
  `destination_mobile` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `pdate` varchar(255) NOT NULL,
  `stop_address1` longtext DEFAULT NULL,
  `stop_address2` longtext DEFAULT NULL,
  `stop_name` varchar(255) DEFAULT NULL,
  `stop_mobile` varchar(255) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `drivernote` text DEFAULT NULL,
  `tip` varchar(255) DEFAULT NULL,
  `itemphoto` text DEFAULT NULL,
  `itemtype` varchar(255) DEFAULT NULL,
  `acctype` varchar(255) DEFAULT NULL,
  `coupon` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `finalprice` varchar(25) DEFAULT NULL,
  `pickuplat` varchar(255) DEFAULT NULL,
  `pickuplon` varchar(255) DEFAULT NULL,
  `destinationlat` varchar(255) DEFAULT NULL,
  `destinationlon` varchar(255) DEFAULT NULL,
  `stopData` longtext DEFAULT NULL,
  `is_stop` enum('1','0') NOT NULL DEFAULT '0',
  `stoplat` varchar(255) DEFAULT NULL,
  `stoplon` varchar(255) DEFAULT NULL,
  `paymentmode` varchar(255) DEFAULT 'COD',
  `status` enum('1','2','3','4') NOT NULL DEFAULT '1' COMMENT '1=Pending,2=Ongoing,3=Completed,4=Cancelled',
  `driver_action` enum('0','1','2','3','4') NOT NULL DEFAULT '0' COMMENT '''0''=''1''=Reached,''2''=VerifyItem,''3''=NotVerifyItem,''4''=',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `durapickupshedule`
--

INSERT INTO `durapickupshedule` (`id`, `order_no`, `driver_id`, `user_id`, `pickup_address1`, `pickup_address2`, `pickup_name`, `pickup_mobile`, `destination_address1`, `destination_address2`, `destination_name`, `destination_mobile`, `type`, `pdate`, `stop_address1`, `stop_address2`, `stop_name`, `stop_mobile`, `vehicle_id`, `price`, `drivernote`, `tip`, `itemphoto`, `itemtype`, `acctype`, `coupon`, `discount`, `finalprice`, `pickuplat`, `pickuplon`, `destinationlat`, `destinationlon`, `stopData`, `is_stop`, `stoplat`, `stoplon`, `paymentmode`, `status`, `driver_action`, `created_at`, `updated_at`) VALUES
(1, 'JR6HHmCpoq', 5, 350, '1600 Santa Clara County Mountain View United States 94043', '', 'Addhar Update', '+916201552679', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/08/2021 22:17', NULL, NULL, NULL, NULL, 1, '200', '', '0', 'itemphoto61607633158ff-ProductImage_A1Qiv.jpg', 'ASAP', 'Personal', '', '', '200', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-08 16:47:47', '2021-10-08 16:47:47'),
(2, 'XmNTGU5ajw', 5, 350, '1600 Santa Clara County Mountain View United States 94043', '', 'Addhar Update', '+916201552679', 'Santa Clara County 94043 Mountain View United States', '', 'AKASH SHARAN', '8092436204', 'asap', '10/08/2021 22:17', NULL, NULL, NULL, NULL, 1, '235', '', '0', 'itemphoto61607658bad0f-ProductImage_3wGgb.jpg', 'ASAP', 'Personal', '', '', '235', '37.421998333333', '-122.084', '37.421748959995', '-122.08403505385', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-08 16:48:24', '2021-10-08 16:48:24'),
(3, '0ADXNiMECm', 5, 350, '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/08/2021 23:00', NULL, NULL, NULL, NULL, 1, '200', '', '0', 'itemphoto6160806383c05-ProductImage_FXVrM.jpg', 'ASAP', 'Personal', '', '', '200', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-08 17:31:15', '2021-10-08 17:31:15'),
(4, 'Sbfdu4voAF', 5, 350, '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'Santa Clara County 94043 Mountain View United States', '', 'AKASH SHARAN', '8092436204', 'asap', '10/08/2021 23:01', NULL, NULL, NULL, NULL, 1, '237', '', '0', 'itemphoto6160809f8ba4f-ProductImage_rxeql.jpg', 'ASAP', 'Personal', '', '', '237', '37.421998333333', '-122.084', '37.421372984486', '-122.08423890173', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-08 17:32:15', '2021-10-08 17:32:15'),
(5, 'kibvOxuuwq', 5, 350, 'Santa Clara County 94043 Mountain View United States', '', 'Akash', '+918882341937', 'Santa Clara County 94043 Mountain View United States', '', 'AKASH SHARAN', '8092436204', 'asap', '10/10/2021 09:55', NULL, NULL, NULL, NULL, 1, '204', '', '0', 'itemphoto61626be56e34a-ProductImage_MqN8u.jpg', 'ASAP', 'Personal', '', '', '204', '37.42150825068', '-122.08437334746', '37.42158706709', '-122.08391670138', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-10 04:28:21', '2021-10-10 04:28:21'),
(6, 'AULDIpAKqa', 5, 347, '43 Cebu Cebu City Philippines', '', 'AaaaH0n Gl0be K0h', '+639369578679', 'Uncle Tom\'s Cabin Hotel, M. P. Yap Street, Cebu City, Cebu, Philippines', '', 'AaaaH0n Smart - Smart', '+639190862787', 'asap', '10/10/2021 17:53', NULL, NULL, NULL, NULL, 1, '377', '', '20', 'itemphoto6162b882ed067-ProductImage_TO21Y.jpg', 'ASAP', 'Personal', '', '', '397', '10.3055255', '123.8998668', '10.3142648', '123.8933097', NULL, '0', NULL, NULL, 'Wallet', '1', '0', '2021-10-10 09:55:14', '2021-10-10 09:56:49'),
(7, '1', 0, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/10/2021 15:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30.698587', '76.7066365', '30.698587', '76.7066365', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-10 10:05:58'),
(8, '1', 0, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/10/2021 15:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30.6985834', '76.7066378', '30.6985834', '76.7066378', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-10 10:16:15'),
(9, '1', 0, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/10/2021 15:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30.6985797', '76.7066273', '30.6985797', '76.7066273', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-10 10:24:24'),
(10, '1', 0, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/10/2021 16:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30.6985859', '76.7066375', '30.6985859', '76.7066375', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-10 11:19:50'),
(11, '1', 0, 348, '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/10/2021 16:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30.69858', '76.7066402', '30.69858', '76.7066402', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-10 11:28:09'),
(12, '1', 0, 348, '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/10/2021 17:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30.6985854', '76.7066481', '30.6985854', '76.7066481', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-10 11:39:01'),
(13, '1', 0, 348, '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/10/2021 17:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30.6985818', '76.7066418', '30.6985818', '76.7066418', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-10 11:43:59'),
(14, '1', 0, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/10/2021 17:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30.6985814', '76.7066364', '30.6985814', '76.7066364', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-10 11:47:25'),
(15, '1', 0, 348, '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/10/2021 17:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30.6985849', '76.7066414', '30.6985849', '76.7066414', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-10 12:17:05'),
(16, '1', 0, 348, '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/10/2021 17:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30.6985826', '76.7066434', '30.6985826', '76.7066434', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-10 12:25:21'),
(17, '1', 0, 348, '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/11/2021 12:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30.6985807', '76.7066422', '30.6985807', '76.7066422', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-11 07:21:39'),
(18, '1', 0, 348, '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/11/2021 12:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30.6985812', '76.7066425', '30.6985812', '76.7066425', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-11 07:24:44'),
(19, '1', 0, 348, '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/11/2021 12:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30.6985812', '76.7066425', '30.6985812', '76.7066425', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-11 07:29:57'),
(20, '4waeDmMKs8', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/11/2021 13:04', NULL, NULL, NULL, NULL, 1, '487', '', '20', 'itemphoto6163e95d8b8f3-ProductImage_SGv0I.jpg', 'ASAP', 'Personal', 'FIRSTPROMO', '50', '264', '30.6985846', '76.706637', '30.6985846', '76.706637', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-11 07:35:57', '2021-10-11 07:35:57'),
(21, '50N5vkE8SP', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/11/2021 15:18', NULL, NULL, NULL, NULL, 1, '487', '', '20', 'itemphoto616408b539146-ProductImage_fPbsk.jpg', 'ASAP', 'Personal', 'SECONDPROMO', '50', '264', '30.6985797', '76.7066387', '30.6985797', '76.7066387', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-11 09:49:41', '2021-10-11 09:49:41'),
(22, 'Tyrhc9YDlR', 5, 348, '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/11/2021 15:35', NULL, NULL, NULL, NULL, 1, '487', '', '20', 'itemphoto61640ca9acf32-ProductImage_FVOvy.jpg', 'ASAP', 'Personal', 'FIRSTPROMO', '50', '264', '30.6985842', '76.7066472', '30.6985842', '76.7066472', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-11 10:06:33', '2021-10-11 10:06:33'),
(23, 'W3BNFHCsln', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/11/2021 15:59', NULL, NULL, NULL, NULL, 1, '487', '', '20', 'itemphoto616412b62b000-ProductImage_BUlFn.jpg', 'ASAP', 'Personal', '', '', '487', '30.6985837', '76.7066293', '30.6985837', '76.7066293', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-11 10:32:22', '2021-10-11 10:32:22'),
(24, 'jRWb69Wjqz', 5, 348, '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/11/2021 16:07', NULL, NULL, NULL, NULL, 1, '497', '', '20', 'itemphoto6164142f19740-ProductImage_UPJg8.jpg', 'ASAP', 'Personal', 'THIRDPROMO', '50', '268', '30.6985778', '76.7066434', '30.6985778', '76.7066434', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-11 10:38:39', '2021-10-11 10:38:39'),
(25, 'VkKnY06lss', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/11/2021 16:17', NULL, NULL, NULL, NULL, 1, '220', '', '20', 'itemphoto6164175b11be5-ProductImage_xOHZx.jpg', 'ASAP', 'Personal', '', '', '220', '30.6985796', '76.7066391', '30.6985796', '76.7066391', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-11 10:52:11', '2021-10-11 10:52:11'),
(26, 'iJDZOja8Aj', 5, 348, '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/11/2021 16:32', NULL, NULL, NULL, NULL, 1, '497', '', '20', 'itemphoto61641a1287aeb-ProductImage_5vE39.jpg', 'ASAP', 'Personal', '5th PROMO', '50', '248.5', '30.6985804', '76.7066401', '30.6985804', '76.7066401', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-11 11:03:46', '2021-10-11 11:03:46'),
(27, '7dS6Lr0Hai', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/11/2021 16:43', NULL, NULL, NULL, NULL, 1, '571', '', '20', 'itemphoto61641c7558f52-ProductImage_8Skm3.jpg', 'ASAP', 'Personal', 'FIRSTPROMO', '50', '306', '30.6985881', '76.7066385', '30.6985881', '76.7066385', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-11 11:13:57', '2021-10-11 11:13:57'),
(28, 'f7JVKySbX6', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/11/2021 16:49', NULL, NULL, NULL, NULL, 1, '497', '', '20', 'itemphoto61641df98d125-ProductImage_vBEuI.jpg', 'ASAP', 'Personal', 'SECONDPROMO', '50', '268', '30.6985894', '76.7066476', '30.6985894', '76.7066476', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-11 11:20:25', '2021-10-11 11:20:25'),
(29, 'WRbm9qqA1A', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/11/2021 16:54', NULL, NULL, NULL, NULL, 1, '577', '', '20', 'itemphoto61641f27f1a1b-ProductImage_MyJOg.jpg', 'ASAP', 'Personal', 'THIRDPROMO', '50', '308', '30.6985787', '76.7066348', '30.6985787', '76.7066348', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-11 11:25:27', '2021-10-11 11:25:27'),
(30, 'JTWjLurmmz', 5, 348, '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/11/2021 17:14', NULL, NULL, NULL, NULL, 1, '553', '', '20', 'itemphoto61642400615ad-ProductImage_qoCYj.jpg', 'ASAP', 'Personal', '4th PROMO', '50', '296', '30.6985838', '76.7066404', '30.6985838', '76.7066404', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-11 11:46:08', '2021-10-11 11:46:08'),
(31, 's4uNj7Cf1N', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/11/2021 17:46', NULL, NULL, NULL, NULL, 1, '497', '', '20', 'itemphoto61642b815fb37-ProductImage_BnYv9.jpg', 'ASAP', 'Personal', '5th PROMO', '50', '268', '30.6985808', '76.7066374', '30.6985808', '76.7066374', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-11 12:18:09', '2021-10-11 12:18:09'),
(32, 'bMprVJYg0X', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/11/2021 17:56', NULL, NULL, NULL, NULL, 1, '584', '', '20', 'itemphoto61642dadb7b06-ProductImage_ylGpr.jpg', 'ASAP', 'Personal', '', '', '604', '30.6985789', '76.7066329', '30.6985789', '76.7066329', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-11 12:27:25', '2021-10-11 12:27:25'),
(33, 'sOYOSgWd5d', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/11/2021 18:10', NULL, NULL, NULL, NULL, 1, '553', '', '20', 'itemphoto616430e5a71e2-ProductImage_N33ec.jpg', 'ASAP', 'Personal', '', '', '573', '30.6985903', '76.7066394', '30.6985903', '76.7066394', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-11 12:41:09', '2021-10-11 12:41:09'),
(34, '5gR6vgqmon', 5, 350, '1600 Santa Clara County Mountain View United States 94043', '', 'Addhar Update', '+916201552679', '1600 Santa Clara County Mountain View United States 94043', '', 'Amar', '+919915643345', 'asap', '10/11/2021 19:16', NULL, NULL, NULL, NULL, 1, '220', '', '20', 'itemphoto6164408f9aa47-ProductImage_vPaRK.jpg', 'ASAP', 'Personal', 'FIRSTPROMO', '50', '130', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-11 13:47:59', '2021-10-11 13:47:59'),
(35, 'IYoMi9Z6yo', 5, 351, '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', '1600 Santa Clara County Mountain View United States 94043', '', 'Addhar Update', '+916201552679', 'asap', '10/11/2021 19:28', NULL, NULL, NULL, NULL, 1, '200', '', '10', 'itemphoto616443726472b-ProductImage_hqkoO.jpg', 'ASAP', 'Personal', '', '', '210', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-11 14:00:18', '2021-10-11 14:00:18'),
(36, 'LQlG8UOGcQ', 5, 351, '1600 Santa Clara County Mountain View United States 94043', '', 'ajay eletrical Mohali', '+919872086048', 'Santa Clara County 94043 Mountain View United States', '', 'Addhar Update', '+916201552679', 'asap', '10/11/2021 19:30', NULL, NULL, NULL, NULL, 1, '268', '', '0', 'itemphoto616443c4f3bde-ProductImage_iKmkP.jpg', 'ASAP', 'Personal', '', '', '268', '37.421998333333', '-122.084', '37.419729533968', '-122.0837141946', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-11 14:01:41', '2021-10-11 14:01:41'),
(37, '0R4aHDrVYY', 5, 354, 'D-8 Gautam Buddh Nagar Noida India 201304', '', 'Aayushi', '+919540113033', 'Sector 56 East Delhi 201301 Noida India', '', 'Aayushi', '+919540113033', 'asap', '10/11/2021 19:36', NULL, NULL, NULL, NULL, 1, '1698', '', '9', 'itemphoto61644578802af-ProductImage_QcnLN.jpg', 'ASAP', 'Personal', '', '', '1707', '28.5332919', '77.4139996', '28.602852447879', '77.339714616537', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-11 14:08:56', '2021-10-11 14:08:56'),
(38, '1', 0, 351, '1600 Santa Clara County Mountain View United States 94043', '', 'Addhar Update', '+916201552679', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/11/2021 19:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-11 14:29:05'),
(39, '84XUxvTM7D', 5, 351, '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/11/2021 20:02', NULL, NULL, NULL, NULL, 1, '210', '', '08', 'itemphoto61644b3741af9-ProductImage_6rnNR.jpg', 'ASAP', 'Personal', '', '', '218', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-11 14:33:27', '2021-10-11 14:33:27'),
(40, '59ZkfEBRdq', 5, 351, '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/11/2021 20:06', NULL, NULL, NULL, NULL, 1, '200', '', '06666', 'itemphoto61644c0ba785f-ProductImage_JgePO.jpg', 'ASAP', 'Personal', '', '', '6866', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-11 14:36:59', '2021-10-11 14:36:59'),
(41, 'TsszE3mePG', 5, 351, '1600 Santa Clara County Mountain View United States 94043', '', 'Addhar Update', '+916201552679', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/11/2021 20:16', NULL, NULL, NULL, NULL, 1, '220', '', '0', 'itemphoto61644e69bf134-ProductImage_1PA14.jpg', 'ASAP', 'Personal', '', '', '220', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-11 14:47:05', '2021-10-11 14:47:05'),
(42, 'VmSIIraCvU', 5, 355, '2032 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 160071', '', 'AKASH SHARAN', '8092436204', 'Sector 71 Sahibzada Ajit Singh Nagar 160071 Sahibzada Ajit Singh Nagar India', '', 'AKASH SHARAN', '8092436204', 'asap', '10/11/2021 21:29', NULL, NULL, NULL, NULL, 1, '254', '', '0', 'itemphoto61645f789a2c3-ProductImage_srE0L.jpg', 'ASAP', 'Personal', '', '', '254', '30.7012038', '76.7079822', '30.703476200295', '76.710179038346', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-11 15:59:52', '2021-10-11 15:59:52'),
(43, 'lMEYrPTokT', 5, 349, '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', '1600 Santa Clara County Mountain View United States 94043', '', 'ajay eletrical Mohali', '+919872086048', 'asap', '10/11/2021 21:38', NULL, NULL, NULL, NULL, 1, '210', '', '20', 'itemphoto616461c6c4e37-ProductImage_c5bzn.jpg', 'ASAP', 'Personal', '', '', '230', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-11 16:09:42', '2021-10-11 16:09:42'),
(44, 'MTp4ulQhhK', 5, 349, '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'Santa Clara County 94043 Mountain View United States', '', 'AKASH SHARAN', '8092436204', 'asap', '10/11/2021 21:41', NULL, NULL, NULL, NULL, 1, '253', '', '10', 'itemphoto6164625caf246-ProductImage_AFEIu.jpg', 'ASAP', 'Personal', '', '', '263', '37.421998333333', '-122.084', '37.421525025801', '-122.08465296775', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-11 16:12:12', '2021-10-11 16:12:12'),
(45, '2lzOOhNfBJ', 5, 356, '1600 Santa Clara County Mountain View United States 94043', '', 'Addhar Update', '+916201552679', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/11/2021 22:35', NULL, NULL, NULL, NULL, 1, '200', '', '6', 'itemphoto61646f54bcf46-ProductImage_O52x8.jpg', 'ASAP', 'Personal', 'FIRSTPROMO', '50', '100', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-11 17:07:32', '2021-10-11 17:07:32'),
(46, 'V3156njoMw', 5, 354, 'Sector 11 East Delhi Noida India 201301', '', 'Aayushi', '+919540113033', 'Budh Vihar Gautam Buddh Nagar 201301 Noida India', '', 'Abhishek Gupta Havells', '08468823022', 'asap', '10/11/2021 22:59', NULL, NULL, NULL, NULL, 1, '233', '', '0', 'itemphoto616474caea6f8-ProductImage_79vsh.jpg', 'ASAP', 'Personal', '', '', '233', '28.601846', '77.3377381', '28.601582282235', '77.338575683534', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-11 17:30:50', '2021-10-11 17:30:50'),
(47, '7rAO76CyMO', 5, 357, 'Misamis Oriental  Cagayan de Oro Philippines', '', 'AaaaH0n Gl0be K0h', '+639369578679', 'Cagayan de Oro Misamis Oriental Cagayan de Oro Philippines', '', 'AaaaH0n Smart - Smart', '+639190862787', 'asap', '10/12/2021 06:56', NULL, NULL, NULL, NULL, 1, '604', '', '0', 'itemphoto6164c16a7ac46-ProductImage_2g6YI.jpg', 'ASAP', 'Personal', 'THIRDPROMO', '50', '302', '8.4792890936276', '124.61555957794', '8.4756951', '124.6096514', NULL, '0', NULL, NULL, 'Wallet', '1', '0', '2021-10-11 22:57:46', '2021-10-11 22:58:26'),
(48, '1', 0, 357, 'Misamis Oriental  El Salvador City Philippines', '', 'AaaaH0n Gl0be K0h', '+639369578679', 'Misamis Oriental  El Salvador City Philippines', '', 'AaaaH0n Smart - Smart', '+639190862787', 'asap', '10/12/2021 11:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.533775', '124.55292333333', '8.533685', '124.552125', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-12 03:01:05'),
(49, '1', 0, 357, 'Lanao del Norte  Iligan City Philippines', '', 'AaaaH0n Gl0be K0h', '+639369578679', 'Lanao del Norte  Iligan City Philippines', '', 'AaaaH0n Smart - Smart', '+639190862787', 'asap', '10/12/2021 12:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.2539192', '124.260617', '8.2544199677781', '124.26407821476', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-12 04:32:40'),
(50, 'CD3bZ6xWwm', 5, 357, 'Lanao del Norte  Iligan City Philippines', '', 'AaaaH0n Gl0be K0h', '+639369578679', 'Lanao del Norte  Iligan City Philippines', '', 'AaaaH0n Smart - Smart', '+639190862787', 'asap', '10/12/2021 12:32', NULL, NULL, NULL, NULL, 1, '498', '', '0', 'itemphoto6165154e810f4-ProductImage_y1g2g.jpg', 'ASAP', 'Personal', 'SECONDPROMO', '50', '249', '8.2539192', '124.260617', '8.2544199677781', '124.26407821476', NULL, '1', NULL, NULL, 'Wallet', '1', '0', '2021-10-12 04:55:42', '2021-10-12 04:55:49'),
(51, 'YssAYHGqQl', 5, 360, 'Manila Mahogany Marketing Corporation, F Mariano Avenue, Pasig, Metro Manila, Philippines', '', 'Akash', '8882341937', 'baclaran market', '', 'Akash', '8882341937', 'asap', '10/12/2021 12:23', NULL, NULL, NULL, NULL, 1, '0', 'Test', '0', 'itemphoto616532f83a8e3-ProductImage_APS8Q.jpg', 'ASAP', 'Personal', 'FIRSTPROMO', '50', '0', '28.53332707', '77.41419808', '28.53332707', '77.41419808', NULL, '1', NULL, NULL, 'COD', '4', '0', '2021-10-12 07:02:16', '2021-10-12 07:02:53'),
(52, 'oaDtM4TrOX', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/12/2021 12:42', NULL, NULL, NULL, NULL, 1, '497', '', '20', 'itemphoto616535e632fe7-ProductImage_HB8c5.jpg', 'ASAP', 'Personal', 'FIRSTPROMO', '50', '268', '30.6985888', '76.7066349', '30.6985888', '76.7066349', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-12 07:14:46', '2021-10-12 07:14:46'),
(53, '1', 0, 360, 'Salarpur Gautam Buddh Nagar 201304 Noida India', '', 'Akash', '8882341937', 'Salarpur Gautam Buddh Nagar 201304 Noida India', '', 'Akash', '8882341937', 'asap', '10/12/2021 12:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '28.5332818', '77.4140208', '28.5332818', '77.4140208', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-12 07:21:13'),
(54, 'pzbPdXcYrB', 5, 360, 'Salarpur Gautam Buddh Nagar 201304 Noida India', '', 'Akash', '8882341937', 'Salarpur Gautam Buddh Nagar 201304 Noida India', '', 'Akash Sharma', '8882341937', 'asap', '10/12/2021 12:54', NULL, NULL, NULL, NULL, 1, '220', 'Test', '10', 'itemphoto616538dcb9798-ProductImage_KlF21.jpg', 'ASAP', 'Personal', 'SECONDPROMO', '50', '120', '28.5332818', '77.4140208', '28.5332818', '77.4140208', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-12 07:27:24', '2021-10-12 07:27:24'),
(55, 'NZqHtmV1DD', 5, 360, 'Salarpur Gautam Buddh Nagar 201304 Noida India', '', 'Akash', '8882341937', 'Salarpur Gautam Buddh Nagar 201304 Noida India', '', 'Akash', '8882341937', 'asap', '10/12/2021 12:59', NULL, NULL, NULL, NULL, 1, '220', '', '0', 'itemphoto6165397d1fa34-ProductImage_fiWsO.jpg', 'ASAP', 'Personal', 'SECONDPROMO', '50', '110', '28.5332818', '77.4140208', '28.5332818', '77.4140208', NULL, '0', NULL, NULL, 'Wallet', '1', '0', '2021-10-12 07:30:05', '2021-10-12 07:30:12'),
(56, '1', 0, 360, 'Taytay Tiangge, Manila East Road, Muzon, Taytay, Rizal, Philippines', 'Philippines street Market', 'Akash', '8882341937', 'Salcedo Village, Villar, Makati, Metro Manila, Philippines', 'salcedo market', 'Akash', '8882341937', 'asap', '10/12/2021 13:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '28.5332906', '77.4139912', '14.5596008', '121.0206086', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-12 07:38:08'),
(57, 'Ti54vhz3CL', 5, 360, 'Taytay Tiangge, Manila East Road, Muzon, Taytay, Rizal, Philippines', 'Philippines street Market', 'Akash', '8882341937', 'Salcedo Village, Villar, Makati, Metro Manila, Philippines', 'salcedo market', 'Akash', '8882341937', 'asap', '10/12/2021 13:05', NULL, NULL, NULL, NULL, 1, '6716', 'Test', '20', 'itemphoto61653b9b9f521-ProductImage_DNvKV.jpg', 'ASAP', 'Personal', 'THIRDPROMO', '50', '3378', '28.5332906', '77.4139912', '14.5596008', '121.0206086', NULL, '1', NULL, NULL, 'Wallet', '1', '0', '2021-10-12 07:39:07', '2021-10-12 07:39:17'),
(58, 'SMI08BPumC', 5, 360, 'TAYTAY CAPITAL TIANGGE, Taytay, Rizal, Philippines', 'Street market Philippines', 'Akash', '8882341937', 'Mahabang parang angono rizal Bible Baptist Church, Angono, Rizal, Philippines', '', 'Akash', '8882341937', 'asap', '10/12/2021 13:12', NULL, NULL, NULL, NULL, 1, '220', 'Test', '10', 'itemphoto61653ce1b2f2a-ProductImage_Kt3P1.jpg', 'ASAP', 'Personal', '4th PROMO', '50', '120', '28.53341558', '77.41427684', '14.5580845', '121.1845462', NULL, '0', NULL, NULL, 'Wallet', '1', '0', '2021-10-12 07:44:33', '2021-10-12 07:44:41'),
(59, '1', 0, 348, '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/12/2021 13:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30.6985819', '76.7066417', '30.6985819', '76.7066417', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-12 07:47:21'),
(60, '1', 0, 360, 'TAYTAY CAPITAL TIANGGE, Taytay, Rizal, Philippines', '', 'Akash', '8882341937', 'TAYTAY CAPITAL TIANGGE, Taytay, Rizal, Philippines', '', 'Akash', '8882341937', 'asap', '10/12/2021 13:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '28.53341558', '77.41427684', '28.53341558', '77.41427684', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-12 07:54:14'),
(61, 'qskVjFBeRl', 5, 360, 'TAYTAY CAPITAL TIANGGE, Taytay, Rizal, Philippines', '', 'Akash', '8882341937', 'TAYTAY CAPITAL TIANGGE, Taytay, Rizal, Philippines', '', 'Akash', '8882341937', 'asap', '10/12/2021 13:23', NULL, NULL, NULL, NULL, 1, '200', 'Test', '10', 'itemphoto61653f77937a3-ProductImage_RDso0.jpg', 'ASAP', 'Personal', '5th PROMO', '50', '110', '28.53341558', '77.41427684', '28.53341558', '77.41427684', NULL, '0', NULL, NULL, 'Wallet', '1', '0', '2021-10-12 07:55:35', '2021-10-12 07:55:38'),
(62, '1', 0, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/12/2021 13:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30.6985783', '76.7066322', '30.6985783', '76.7066322', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-12 07:56:46'),
(63, 'ldNiyW7Z93', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/12/2021 13:51', NULL, NULL, NULL, NULL, 1, '543', '', '20', 'itemphoto616546db15122-ProductImage_vIT74.jpg', 'ASAP', 'Personal', 'SECONDPROMO', '50', '292', '30.6985827', '76.7066391', '30.6985827', '76.7066391', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-12 08:27:07', '2021-10-12 08:27:07'),
(64, 'H3SUpnL7WE', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/12/2021 14:36', NULL, NULL, NULL, NULL, 1, '497', '', '20', 'itemphoto616550b12709e-ProductImage_GY3In.jpg', 'ASAP', 'Personal', '', '', '517', '30.6985817', '76.7066367', '30.6985817', '76.7066367', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-12 09:09:05', '2021-10-12 09:09:05'),
(65, 'OG8g4caYou', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/12/2021 15:05', NULL, NULL, NULL, NULL, 1, '576', '', '20', 'itemphoto61655792bb2c2-ProductImage_02MYP.jpg', 'ASAP', 'Personal', 'THIRDPROMO', '50', '308', '30.6985881', '76.7066368', '30.6985881', '76.7066368', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-12 09:38:26', '2021-10-12 09:38:26'),
(66, 'oeJqiuiE1g', 5, 357, 'Lanao del Norte 9200 Iligan City Philippines', '', 'AaaaH0n Gl0be K0h', '+639369578679', 'Lanao del Norte  Iligan City Philippines', '', 'AaaaH0n Smart - Smart', '+639190862787', 'asap', '10/12/2021 17:44', NULL, NULL, NULL, NULL, 1, '327', '', '10', 'itemphoto61655d43581f2-ProductImage_ejHWT.jpg', 'ASAP', 'Personal', '', '', '337', '8.2255699915574', '124.24024879932', '8.21588749427', '124.2384795472', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-12 10:02:43', '2021-10-12 10:02:43'),
(67, '2f0gDtQoU2', 5, 360, 'D-9 Gautam Buddh Nagar Noida India 201305', '', 'Akash', '8882341937', 'Kashmere Gate Central Delhi 110006 New Delhi India', '', 'Akash', '8882341937', 'asap', '10/12/2021 16:55', NULL, NULL, NULL, NULL, 3, '4904', '', '0', 'itemphoto6165719f53478-ProductImage_M5X24.jpg', 'ASAP', 'Personal', '', '', '4904', '28.5332915', '77.4139747', '28.667356357624', '77.23724283278', NULL, '0', NULL, NULL, 'Wallet', '1', '0', '2021-10-12 11:29:35', '2021-10-12 11:29:38'),
(68, '1', 0, 356, '1600 Santa Clara County Mountain View United States 94043', 'I', 'Addhar Update', '+916201552679', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/12/2021 20:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-12 14:54:26'),
(69, 'I3HRcKSYWe', 5, 356, '1600 Santa Clara County Mountain View United States 94043', 'I', 'Addhar Update', '+916201552679', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/12/2021 20:24', NULL, NULL, NULL, NULL, 1, '200', '', '05', 'itemphoto6165a20d4a60f-ProductImage_uwqn1.jpg', 'ASAP', 'Personal', '', '', '205', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-12 14:56:13', '2021-10-12 14:56:13'),
(70, '1', 0, 356, '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/12/2021 20:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-12 14:57:23'),
(71, 'QyeCKasrlO', 5, 356, '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/12/2021 20:27', NULL, NULL, NULL, NULL, 1, '200', '', '5', 'itemphoto6165a37b4d695-ProductImage_220Ol.jpg', 'ASAP', 'Personal', 'FIRSTPROMO', '50', '100', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-12 15:02:19', '2021-10-12 15:02:19'),
(72, 'n14saul4Gf', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/12/2021 20:46', NULL, NULL, NULL, NULL, 1, '497', '', '0', 'itemphoto6165a6f600ccb-ProductImage_86V2r.jpg', 'ASAP', 'Personal', '4th PROMO', '50', '248.5', '30.6985861', '76.706638', '30.6985861', '76.706638', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-12 15:17:10', '2021-10-12 15:17:10'),
(73, 'kd3HdKg7cO', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/12/2021 20:49', NULL, NULL, NULL, NULL, 1, '553', '', '20', 'itemphoto6165a7afc92cb-ProductImage_G2sya.jpg', 'ASAP', 'Personal', '5th PROMO', '50', '296', '30.6985826', '76.7066153', '30.6985826', '76.7066153', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-12 15:20:15', '2021-10-12 15:20:15'),
(74, '1', 0, 356, '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/12/2021 20:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-12 15:20:15'),
(75, 'sRqIVb8N2D', 5, 356, '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'Santa Clara County 94043 Mountain View United States', '', 'AKASH SHARAN', '8092436204', 'asap', '10/12/2021 20:49', NULL, NULL, NULL, NULL, 1, '240', '', '10', 'itemphoto6165aaba86f7a-ProductImage_Ph15w.jpg', 'ASAP', 'Personal', '', '', '250', '37.421998333333', '-122.084', '37.421701830025', '-122.0834909007', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-12 15:33:14', '2021-10-12 15:33:14'),
(76, 'fODK9rT4sj', 5, 356, '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'Santa Clara County 94043 Mountain View United States', '', 'AKASH SHARAN', '8092436204', 'asap', '10/12/2021 21:03', NULL, NULL, NULL, NULL, 1, '246', '', '10', 'itemphoto6165ab073cb3e-ProductImage_GDvN1.jpg', 'ASAP', 'Personal', '', '', '256', '37.421998333333', '-122.084', '37.421474167883', '-122.08419129252', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-12 15:34:31', '2021-10-12 15:34:31'),
(77, 'Eu6MdJvVoF', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/12/2021 21:04', NULL, NULL, NULL, NULL, 1, '220', '', '5', 'itemphoto6165ab2ac0b91-ProductImage_CSE9C.jpg', 'ASAP', 'Personal', 'FIRSTPROMO', '50', '115', '30.6985919', '76.706635', '30.6985919', '76.706635', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-12 15:35:06', '2021-10-12 15:35:06'),
(78, 'Xvxyn99S7D', 5, 348, '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/12/2021 21:14', NULL, NULL, NULL, NULL, 1, '220', '', '5', 'itemphoto6165ad907b132-ProductImage_mw7FU.jpg', 'ASAP', 'Personal', 'SECONDPROMO', '50', '115', '30.6985797', '76.7066403', '30.6985797', '76.7066403', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-12 15:45:20', '2021-10-12 15:45:20'),
(79, 'VJuP80zWji', 5, 348, '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2164 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/12/2021 21:18', NULL, NULL, NULL, NULL, 1, '200', '', '5', 'itemphoto6165ae7027971-ProductImage_925Er.jpg', 'ASAP', 'Personal', 'THIRDPROMO', '50', '105', '30.6985797', '76.7066403', '30.6985797', '76.7066403', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-12 15:49:04', '2021-10-12 15:49:04'),
(80, 'j2gzJ3XrGT', 5, 356, '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/12/2021 21:23', NULL, NULL, NULL, NULL, 1, '200', '', '05', 'itemphoto6165afaa48b7a-ProductImage_xMj3n.jpg', 'ASAP', 'Personal', 'FIRSTPROMO', '50', '105', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-12 15:54:18', '2021-10-12 15:54:18'),
(81, 'NI36Xx0p30', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/12/2021 21:55', NULL, NULL, NULL, NULL, 1, '200', '', '5', 'itemphoto6165b732bfac0-ProductImage_FGedc.jpg', 'ASAP', 'Personal', '4th PROMO', '50', '105', '30.6985979', '76.7066444', '30.6985979', '76.7066444', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-12 16:26:26', '2021-10-12 16:26:26'),
(82, 'uRInGknOPS', 5, 348, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', 'asap', '10/12/2021 22:03', NULL, NULL, NULL, NULL, 1, '200', '', '5', 'itemphoto6165b8de8ed51-ProductImage_B6KLm.jpg', 'ASAP', 'Personal', '5th PROMO', '50', '105', '30.6985929', '76.7066335', '30.6985929', '76.7066335', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-12 16:33:34', '2021-10-12 16:33:34'),
(83, 'PfKFuBtH3u', 5, 350, '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/12/2021 22:06', NULL, NULL, NULL, NULL, 1, '200', '', '10', 'itemphoto6165ba0fcceff-ProductImage_KuGVO.jpg', 'ASAP', 'Personal', '', '', '210', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-12 16:38:39', '2021-10-12 16:38:39'),
(84, 'qwrncznskY', 5, 350, '1600 Santa Clara County Mountain View United States 94043', '', 'Addhar Update', '+916201552679', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/12/2021 22:09', NULL, NULL, NULL, NULL, 1, '210', '', '5', 'itemphoto6165baf2920b2-ProductImage_vE46v.jpg', 'ASAP', 'Personal', '', '', '215', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-12 16:42:26', '2021-10-12 16:42:26'),
(85, 'z6MEUNG1PA', 5, 350, '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/12/2021 22:34', NULL, NULL, NULL, NULL, 1, '200', '', '05', 'itemphoto6165c046b878a-ProductImage_vokRU.jpg', 'ASAP', 'Personal', '', '', '205', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-12 17:05:10', '2021-10-12 17:05:10'),
(86, '0cH9UZl4G7', 5, 350, '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/12/2021 22:35', NULL, NULL, NULL, NULL, 1, '210', '', '10', 'itemphoto6165c09e05497-ProductImage_Dr6Aq.jpg', 'ASAP', 'Personal', 'FIRSTPROMO', '50', '115', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-12 17:06:38', '2021-10-12 17:06:38'),
(87, '1', 0, 350, '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'Santa Clara County 94043 Mountain View United States', '', 'AKASH SHARAN', '8092436204', 'asap', '10/12/2021 22:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.421998333333', '-122.084', '37.421487215205', '-122.08423890173', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-12 17:09:17'),
(88, '1', 0, 361, '5th Ave  1400 Caloocan Philippines', 'dsi bldg', 'test', '09158291795', 'Sm Fairview, Quirino Highway, Novaliches, Quezon City, Metro Manila, Philippines', 'test', 'test', '09165882729', 'asap', '10/13/2021 09:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14.6440609', '120.9909553', '14.734161', '121.0594852', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-13 01:45:03'),
(89, 'afvVdKYtrQ', 5, 361, 'Durasource Inc., C-3 Avenue, East Grace Park, Caloocan, Metro Manila, Philippines', 'test', 'test', '09165882729', 'Celina Homes 2 Subd., Deparo Rd, Barangay 168, Caloocan, Metro Manila, Philippines', 'test', 'test', '09158291795', 'asap', '10/13/2021 09:51', NULL, NULL, NULL, NULL, 1, '1870', 'look for j5', '30', 'itemphoto61663cc0a5a8c-ProductImage_zlzgB.jpg', 'ASAP', 'Personal', 'SECONDPROMO', '50', '935', '14.644147', '120.9910047', '14.7391701', '121.014122', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-13 01:56:16', '2021-10-13 01:56:16'),
(90, '1', 0, 350, '1600 Santa Clara County Mountain View United States 94043', '', 'Addhar Update', '+916201552679', '1600 Santa Clara County Mountain View United States 94043', '', 'ajay eletrical Mohali', '+919872086048', 'asap', '10/13/2021 10:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-13 05:27:51'),
(91, '1', 0, 350, '1600 Santa Clara County Mountain View United States 94043', '', 'ajay eletrical Mohali', '+919872086048', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/13/2021 11:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-13 05:42:14'),
(92, '1', 0, 350, '1600 Santa Clara County Mountain View United States 94043', '', 'ajay eletrical Mohali', '+919872086048', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/13/2021 11:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-13 05:45:20'),
(93, 'a6pvBFVDrG', 5, 350, '1600 Santa Clara County Mountain View United States 94043', '', 'ajay eletrical Mohali', '+919872086048', '1600 Santa Clara County Mountain View United States 94043', '', 'Akash', '+918882341937', 'asap', '10/13/2021 11:40', NULL, NULL, NULL, NULL, 1, '200', '', '0', 'itemphoto6166789dcbe84-ProductImage_GPOKd.jpg', 'ASAP', 'Personal', 'SECONDPROMO', '50', '100', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-13 06:11:41', '2021-10-13 06:11:41'),
(94, 'M80wrGtK8S', 5, 350, '1600 Santa Clara County Mountain View United States 94043', '', 'Akash', '+918882341937', '1600 Santa Clara County Mountain View United States 94043', '', 'AKASH SHARAN', '8092436204', 'asap', '10/13/2021 11:43', NULL, NULL, NULL, NULL, 1, '200', '', '0', 'itemphoto6166794374bf9-ProductImage_pDfvr.jpg', 'ASAP', 'Personal', 'THIRDPROMO', '50', '100', '37.421998333333', '-122.084', '37.421998333333', '-122.084', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-13 06:14:27', '2021-10-13 06:14:27'),
(95, '1', 0, 362, 'Watsons - Robinsons Place Manila, Pedro Gil Street, Ermita, Manila, Metro Manila, Philippines', '', 'Akash', '8882341937', 'Barangay San Pedro Palawan 5300 Puerto Princesa Philippines', '', 'Akash', '8882341937', 'asap', '10/13/2021 13:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '28.5331957', '77.41414889', '9.7638429', '118.7473298', NULL, '1', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-13 08:13:05');
INSERT INTO `durapickupshedule` (`id`, `order_no`, `driver_id`, `user_id`, `pickup_address1`, `pickup_address2`, `pickup_name`, `pickup_mobile`, `destination_address1`, `destination_address2`, `destination_name`, `destination_mobile`, `type`, `pdate`, `stop_address1`, `stop_address2`, `stop_name`, `stop_mobile`, `vehicle_id`, `price`, `drivernote`, `tip`, `itemphoto`, `itemtype`, `acctype`, `coupon`, `discount`, `finalprice`, `pickuplat`, `pickuplon`, `destinationlat`, `destinationlon`, `stopData`, `is_stop`, `stoplat`, `stoplon`, `paymentmode`, `status`, `driver_action`, `created_at`, `updated_at`) VALUES
(96, 'CcW0FMA0Pn', 5, 362, 'Watsons - Robinsons Place Manila, Pedro Gil Street, Ermita, Manila, Metro Manila, Philippines', '', 'Akash', '8882341937', 'Barangay San Pedro Palawan 5300 Puerto Princesa Philippines', '', 'Akash', '8882341937', 'asap', '10/13/2021 13:41', NULL, NULL, NULL, NULL, 1, '76457', '', '10', 'itemphoto616696415f6fe-ProductImage_FvEbk.jpg', 'ASAP', 'Personal', 'FIRSTPROMO', '50', '38238', '28.5331957', '77.41414889', '9.7638429', '118.7473298', NULL, '1', NULL, NULL, 'Wallet', '1', '0', '2021-10-13 08:18:09', '2021-10-13 08:18:14'),
(97, '85h5CXo162', 5, 362, 'Metro Manila College, Inc., Novaliches, Quezon City, Metro Manila, Philippines', '', 'Akash', '8882341937', 'Quiapo  1001 Manila Philippines', '', 'Akash', '8882341937', 'asap', '10/13/2021 14:05', NULL, NULL, NULL, NULL, 1, '200', 'Test', '10', 'itemphoto61669ad6df996-ProductImage_koMO7.jpg', 'ASAP', 'Personal', 'SECONDPROMO', '50', '110', '28.5332893', '77.4139982', '14.5995124', '120.9842195', NULL, '0', NULL, NULL, 'Wallet', '1', '0', '2021-10-13 08:37:42', '2021-10-13 08:37:47'),
(98, 'd0rT0Hi06A', 5, 362, 'Metro Manila, Philippines', '', 'Akash', '8882341937', 'Quiapo  1001 Manila Philippines', '', 'Akash', '8882341937', 'asap', '10/13/2021 14:11', NULL, NULL, NULL, NULL, 1, '200', '', '0', 'itemphoto61669c1c0d4e8-ProductImage_UdTJ7.jpg', 'ASAP', 'Personal', '', '', '200', '28.5332893', '77.4139982', '14.5982686', '120.9861981', NULL, '0', NULL, NULL, 'Wallet', '1', '0', '2021-10-13 08:43:08', '2021-10-13 08:43:11'),
(99, 'vJlsg6JPyp', 5, 362, 'Metro Manila, Philippines', '', 'Akash', '8882341937', 'Quiapo, Manila, 1001 Metro Manila, Philippines', '', 'Akash', '8882341937', 'asap', '10/13/2021 14:15', NULL, NULL, NULL, NULL, 1, '210', '', '0', 'itemphoto61669ccb4f819-ProductImage_i32Ow.jpg', 'ASAP', 'Personal', '', '', '210', '28.5332893', '77.4139982', '14.5982686', '120.9861981', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-13 08:46:03', '2021-10-13 08:46:03'),
(100, 'ioDtloJyl0', 5, 362, 'Manila, Metro Manila, Philippines', '', 'Aashi', '+917292016692', 'Quiapo, Manila, 1001 Metro Manila, Philippines', '', 'Akash', '8882341937', 'asap', '10/13/2021 14:15', NULL, NULL, NULL, NULL, 1, '200', '', '0', 'itemphoto61669d2a9332e-ProductImage_7AOW6.jpg', 'ASAP', 'Personal', '', '', '200', '14.5995124', '120.9842195', '14.5995124', '120.9842195', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-13 08:47:38', '2021-10-13 08:47:38'),
(101, '03Mtimhyst', 5, 362, 'Metro Manila, Philippines', '', 'Akash', '8882341937', 'Quiapo, Manila, 1001 Metro Manila, Philippines', '', 'Akash', '8882341937', 'asap', '10/13/2021 14:22', NULL, NULL, NULL, NULL, 1, '210', '', '20', 'itemphoto61669fc19a5d7-ProductImage_N22od.jpg', 'ASAP', 'Personal', 'THIRDPROMO', '50', '125', '14.5982686', '120.9861981', '14.5982686', '120.9861981', NULL, '0', NULL, NULL, 'Wallet', '1', '0', '2021-10-13 08:58:41', '2021-10-13 08:58:53'),
(102, 'J3tGVK4zcc', 5, 362, 'Binondo  1006 Manila Philippines', '', 'Akash', '8882341937', 'Santa Cruz  1008 Manila Philippines', '', 'Akash', '8882341937', 'asap', '10/13/2021 14:50', NULL, NULL, NULL, NULL, 1, '512', '', '20', 'itemphoto6166a637a888d-ProductImage_D0rBM.jpg', 'ASAP', 'Personal', '4th PROMO', '50', '276', '14.596201237861', '120.97708806396', '14.619726888269', '120.98336409777', NULL, '0', NULL, NULL, 'Wallet', '1', '0', '2021-10-13 09:26:15', '2021-10-13 09:27:08'),
(103, '1', 0, 362, 'Manila Baywalk, Roxas Boulevard, Malate, Manila, Metro Manila, Philippines', '', 'Akash', '8882341937', 'Makati, Metro Manila, Philippines', '', 'Akash', '8882341937', 'asap', '10/13/2021 16:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14.5995124', '120.9842195', '14.554729', '121.0244452', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-13 11:16:50'),
(104, '1', 0, 362, 'Manila Baywalk, Roxas Boulevard, Malate, Manila, Metro Manila, Philippines', '', 'Akash', '8882341937', 'Makati, Metro Manila, Philippines', '', 'Akash', '8882341937', 'asap', '10/13/2021 16:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14.5995124', '120.9842195', '14.554729', '121.0244452', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-13 11:17:01'),
(105, '1', 0, 362, 'Manila Baywalk, Roxas Boulevard, Malate, Manila, Metro Manila, Philippines', '', 'Akash', '8882341937', 'Makati, Metro Manila, Philippines', '', 'Akash', '8882341937', 'asap', '10/13/2021 16:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14.554729', '121.0244452', '14.554729', '121.0244452', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-13 11:17:19'),
(106, '1', 0, 362, 'Manila Baywalk, Roxas Boulevard, Malate, Manila, Metro Manila, Philippines', '', 'Aakash', '8882341937', 'Manila Baywalk, Roxas Boulevard, Malate, Manila, Metro Manila, Philippines', '', 'Akash', '8882341937', 'asap', '10/13/2021 16:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14.5995124', '120.9842195', '14.5995124', '120.9842195', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-13 11:20:06'),
(107, '1', 0, 362, 'Manila Baywalk, Roxas Boulevard, Malate, Manila, Metro Manila, Philippines', '', 'Aakash', '8882341937', 'Manila Baywalk, Roxas Boulevard, Malate, Manila, Metro Manila, Philippines', '', 'Akash', '8882341937', 'asap', '10/13/2021 16:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14.5995124', '120.9842195', '14.5995124', '120.9842195', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-13 11:20:12'),
(108, '1', 0, 362, 'Manila Baywalk, Roxas Boulevard, Malate, Manila, Metro Manila, Philippines', '', 'Aakash', '8882341937', 'Manila Baywalk, Roxas Boulevard, Malate, Manila, Metro Manila, Philippines', '', 'Akash', '8882341937', 'asap', '10/13/2021 16:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14.5995124', '120.9842195', '14.5995124', '120.9842195', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-13 11:20:18'),
(109, 'uMp6bYRz5V', 5, 357, 'Misamis Oriental  Cagayan de Oro Philippines', '', 'AaaaH0n Gl0be K0h', '+639369578679', 'Lalawigan ng Misamis Oriental 9000 Lungsod ng Cagayan de Oro Philippines', '', 'AaaaH0n Smart - Smart', '+639190862787', 'asap', '10/13/2021 22:08', NULL, NULL, NULL, NULL, 1, '996', '', '50', 'itemphoto6166e8a28cd19-ProductImage_UGWE6.jpg', 'ASAP', 'Personal', '', '', '1046', '8.4758995', '124.6095729', '8.5047032741173', '124.60734933615', NULL, '0', NULL, NULL, 'Wallet', '1', '0', '2021-10-13 14:09:38', '2021-10-13 14:09:43'),
(110, 'Ss78o94iHg', 0, 357, 'Misamis Oriental  Cagayan de Oro Philippines', '', 'AaaaH0n Gl0be K0h', '+639369578679', 'Misamis Oriental  Cagayan de Oro Philippines', '', 'AaaaH0n Smart - Smart', '+639190862787', 'later', '10/20/2021 22:40', NULL, NULL, NULL, NULL, 1, '331', '', '0', 'itemphoto6166f004e92ef-ProductImage_Oy0bs.jpg', 'Later', 'Personal', 'THIRDPROMO', '50', '165.5', '8.4751419', '124.6096111', '8.4720927294526', '124.60080139339', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-13 14:41:08', '2021-10-13 14:41:08'),
(111, 'KLRNWcH6g2', 5, 357, 'Misamis Oriental  Cagayan de Oro Philippines', '', 'AaaaH0n Gl0be K0h', '+639369578679', 'Misamis Oriental 9000 Cagayan de Oro Philippines', '', 'AaaaH0n Smart - Smart', '+639190862787', 'asap', '10/13/2021 23:32', NULL, NULL, NULL, NULL, 1, '275', '', '30', 'itemphoto6166fc34eb740-ProductImage_3u9cC.jpg', 'ASAP', 'Personal', '', '', '305', '8.4758984', '124.609572', '8.472527148141', '124.60498731583', NULL, '0', NULL, NULL, 'Wallet', '1', '0', '2021-10-13 15:33:08', '2021-10-13 15:33:12'),
(112, 'ibYD8CX5ea', 5, 354, 'Dhawalgiri Apartments East Delhi Noida India 201301', '', 'A4 Security', '+919599825552', 'Phase-2 Gautam Buddh Nagar 201305 Noida India', 'ARK NEWTECH', 'ravi', '9810134825', 'asap', '10/13/2021 22:15', NULL, NULL, NULL, NULL, 1, '2165', '', '10', 'itemphoto61670d5ed5758-ProductImage_TWs4f.jpg', 'ASAP', 'Personal', '', '', '2175', '28.6018548', '77.3377315', '28.533273645251', '77.413960509002', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-13 16:46:22', '2021-10-13 16:46:22'),
(113, 'oCzS90Vs6y', 5, 354, 'Dhawalgiri Apartments East Delhi Noida India 201301', 'home', 'kashish', '9650936880', 'Dhawalgiri Apartments East Delhi Noida India 201301', 'home', 'kashish', '9650936880', 'asap', '10/13/2021 22:17', NULL, NULL, NULL, NULL, 1, '3678', '', '10', 'itemphoto61670dbc9be4a-ProductImage_0Qg6m.jpg', 'ASAP', 'Personal', '', '', '3688', '28.6018548', '77.3377315', '28.6018548', '77.3377315', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-13 16:47:56', '2021-10-13 16:47:56'),
(114, 'M0XaQmLx95', 5, 354, 'Dhawalgiri Apartments East Delhi Noida India 201301', 'home', 'kashish', '9650936880', 'Phase-2 Gautam Buddh Nagar 201305 Noida India', 'ARK NEWTECH', 'ravi', '9810134825', 'asap', '10/13/2021 22:23', NULL, NULL, NULL, NULL, 1, '2165', '', '10', 'itemphoto61670f07434c7-ProductImage_zJisk.jpg', 'ASAP', 'Personal', '', '', '2175', '28.6018548', '77.3377315', '28.533273645251', '77.413960509002', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-13 16:53:27', '2021-10-13 16:53:27'),
(115, 'k3yTlldAwy', 5, 354, 'Dhawalgiri Apartments East Delhi Noida India 201301', 'home', 'kashish', '9650936880', 'Dhawalgiri Apartments East Delhi Noida India 201301', 'home', 'kashish', '9650936880', 'asap', '10/13/2021 22:24', NULL, NULL, NULL, NULL, 1, '3668', '', '10', 'itemphoto61670f5c1e87b-ProductImage_Rs4aE.jpg', 'ASAP', 'Personal', '', '', '3678', '28.6018548', '77.3377315', '28.6018548', '77.3377315', NULL, '1', NULL, NULL, 'COD', '1', '0', '2021-10-13 16:54:52', '2021-10-13 16:54:52'),
(116, 'QxDq9fl9i1', 5, 357, 'Cagayan de Oro Misamis Oriental Cagayan de Oro Philippines', '', 'AaaaH0n Gl0be K0h', '+639369578679', 'Misamis Oriental  Cagayan de Oro Philippines', '', 'AaaaH0n Smart - Smart', '+639190862787', 'asap', '10/14/2021 06:06', NULL, NULL, NULL, NULL, 1, '645', '', '0', 'itemphoto61675889bbf80-ProductImage_Q8e6x.jpg', 'ASAP', 'Personal', '', '', '645', '8.4752115', '124.609681', '8.4860127855143', '124.60814192891', NULL, '0', NULL, NULL, 'Wallet', '1', '0', '2021-10-13 22:07:05', '2021-10-13 22:07:56'),
(117, 'NqRENqeuKn', 5, 357, '1976  Makati Philippines 1233', '', 'AaaaH0n Gl0be K0h', '+639369578679', '1234 Makati Philippines', '', 'AaaaH0n Smart - Smart', '+639190862787', 'asap', '10/14/2021 21:02', NULL, NULL, NULL, NULL, 1, '427', '', '0', 'itemphoto61682aa728da1-ProductImage_dMT35.jpg', 'ASAP', 'Personal', '4th PROMO', '50', '213.5', '14.5448322', '121.0100585', '14.554190641609', '121.00250903517', NULL, '1', NULL, NULL, 'Wallet', '1', '0', '2021-10-14 13:03:35', '2021-10-14 13:03:39'),
(118, '1', 0, 357, '1976  Makati Philippines 1233', '1976 M Reyes Street Bangkal Makati City', 'Robert Martinez', '09159821765', 'Corinthian Executive Regency, Ortigas Avenue, San Antonio, Pasig, Metro Manila, Philippines', '2507', 'Benigno Javier Jr', '091081250030', 'asap', '10/14/2021 21:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14.5448322', '121.0100585', '14.5899067', '121.0616823', NULL, '0', NULL, NULL, 'COD', '1', '0', '0001-01-01T00:00:00', '2021-10-14 13:08:53'),
(119, 'jLrjtBHdJ6', 5, 357, '1976  Makati Philippines 1233', '1976 M Reyes Street Bangkal Makati City', 'Robert Martinez', '09159821765', 'Corinthian Executive Regency, Ortigas Avenue, San Antonio, Pasig, Metro Manila, Philippines', '2507', 'Benigno Javier Jr', '091081250030', 'asap', '10/14/2021 21:08', NULL, NULL, NULL, NULL, 1, '1195', '', '0', 'itemphoto61682c04a1b19-ProductImage_HJhLt.jpg', 'ASAP', 'Personal', '', '', '1195', '14.5448322', '121.0100585', '14.5899067', '121.0616823', NULL, '0', NULL, NULL, 'Wallet', '1', '0', '2021-10-14 13:09:24', '2021-10-14 13:09:59'),
(120, 'QfbOkVIu14', 5, 358, '1976  Makati Philippines 1233', '', 'AaaaH0n Gl0be K0h', '+639369578679', 'San Andres Bukid  1004 Manila Philippines', '', 'AaaaH0n Smart - Smart', '+639190862787', 'asap', '10/14/2021 21:19', NULL, NULL, NULL, NULL, 1, '521', '', '0', 'itemphoto61682e7fb6f2f-ProductImage_rKXmT.jpg', 'ASAP', 'Personal', '', '', '521', '14.5448363', '121.0100479', '14.569482337929', '121.00135333836', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-14 13:19:59', '2021-10-14 13:19:59'),
(121, 'zyl8ISvP7n', 5, 354, 'Phase-2 Gautam Buddh Nagar 201305 Noida India', 'ARK NEWTECH', 'ravi', '9810134825', 'Sector 11 East Delhi Noida India 201301', '', 'Abhishek Gupta Havells', '08468823022', 'asap', '10/17/2021 17:06', NULL, NULL, NULL, NULL, 1, '1713', '', '10', 'itemphoto616c0af98a8ce-ProductImage_vhq1G.jpg', 'ASAP', 'Personal', '', '', '1723', '28.533273645251', '77.413960509002', '28.6018348', '77.3377662', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-17 11:37:29', '2021-10-17 11:37:29'),
(122, 'XfrvU8CUVa', 5, 354, 'Sector 11 East Delhi Noida India 201301', '', 'Abhishek Gupta Havells', '08468823022', 'Sector 11 East Delhi Noida India 201301', '', 'Abhishek Gupta Havells', '08468823022', 'asap', '10/17/2021 17:08', NULL, NULL, NULL, NULL, 1, '200', '', '0', 'itemphoto616c0b502d4b1-ProductImage_lYAcW.jpg', 'ASAP', 'Personal', '', '', '200', '28.6018263', '77.3377694', '28.6018263', '77.3377694', NULL, '0', NULL, NULL, 'COD', '1', '0', '2021-10-17 11:38:56', '2021-10-17 11:38:56');

-- --------------------------------------------------------

--
-- Table structure for table `durapickup_services`
--

CREATE TABLE `durapickup_services` (
  `id` int(11) NOT NULL,
  `pickup_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `durapickup_services`
--

INSERT INTO `durapickup_services` (`id`, `pickup_id`, `service_id`, `created_at`, `updated_at`) VALUES
(1, 20, 1, '2021-10-11 07:35:57', '2021-10-11 07:35:57'),
(2, 21, 1, '2021-10-11 09:49:41', '2021-10-11 09:49:41'),
(3, 22, 1, '2021-10-11 10:06:33', '2021-10-11 10:06:33'),
(5, 23, 1, '2021-10-11 10:32:22', '2021-10-11 10:32:22'),
(6, 24, 2, '2021-10-11 10:38:39', '2021-10-11 10:38:39'),
(7, 24, 1, '2021-10-11 10:38:39', '2021-10-11 10:38:39'),
(10, 25, 1, '2021-10-11 10:52:11', '2021-10-11 10:52:11'),
(11, 25, 2, '2021-10-11 10:52:11', '2021-10-11 10:52:11'),
(12, 26, 1, '2021-10-11 11:03:46', '2021-10-11 11:03:46'),
(13, 26, 2, '2021-10-11 11:03:46', '2021-10-11 11:03:46'),
(14, 27, 1, '2021-10-11 11:13:57', '2021-10-11 11:13:57'),
(15, 27, 2, '2021-10-11 11:13:57', '2021-10-11 11:13:57'),
(16, 28, 1, '2021-10-11 11:20:25', '2021-10-11 11:20:25'),
(17, 28, 2, '2021-10-11 11:20:25', '2021-10-11 11:20:25'),
(18, 29, 1, '2021-10-11 11:25:27', '2021-10-11 11:25:27'),
(19, 29, 2, '2021-10-11 11:25:27', '2021-10-11 11:25:27'),
(20, 30, 1, '2021-10-11 11:46:08', '2021-10-11 11:46:08'),
(21, 30, 2, '2021-10-11 11:46:08', '2021-10-11 11:46:08'),
(22, 31, 1, '2021-10-11 12:18:09', '2021-10-11 12:18:09'),
(23, 31, 2, '2021-10-11 12:18:09', '2021-10-11 12:18:09'),
(24, 32, 1, '2021-10-11 12:27:25', '2021-10-11 12:27:25'),
(25, 32, 2, '2021-10-11 12:27:25', '2021-10-11 12:27:25'),
(26, 33, 1, '2021-10-11 12:41:09', '2021-10-11 12:41:09'),
(27, 33, 2, '2021-10-11 12:41:09', '2021-10-11 12:41:09'),
(28, 34, 1, '2021-10-11 13:47:59', '2021-10-11 13:47:59'),
(29, 34, 2, '2021-10-11 13:47:59', '2021-10-11 13:47:59'),
(30, 36, 1, '2021-10-11 14:01:40', '2021-10-11 14:01:40'),
(31, 36, 2, '2021-10-11 14:01:41', '2021-10-11 14:01:41'),
(32, 37, 1, '2021-10-11 14:08:56', '2021-10-11 14:08:56'),
(33, 39, 1, '2021-10-11 14:33:27', '2021-10-11 14:33:27'),
(34, 41, 1, '2021-10-11 14:47:05', '2021-10-11 14:47:05'),
(35, 41, 2, '2021-10-11 14:47:05', '2021-10-11 14:47:05'),
(37, 42, 1, '2021-10-11 15:59:52', '2021-10-11 15:59:52'),
(45, 43, 1, '2021-10-11 16:09:42', '2021-10-11 16:09:42'),
(46, 44, 1, '2021-10-11 16:12:12', '2021-10-11 16:12:12'),
(51, 46, 1, '2021-10-11 17:30:50', '2021-10-11 17:30:50'),
(52, 46, 2, '2021-10-11 17:30:50', '2021-10-11 17:30:50'),
(53, 50, 1, '2021-10-12 04:55:42', '2021-10-12 04:55:42'),
(54, 50, 2, '2021-10-12 04:55:42', '2021-10-12 04:55:42'),
(57, 51, 2, '2021-10-12 07:02:16', '2021-10-12 07:02:16'),
(58, 51, 1, '2021-10-12 07:02:16', '2021-10-12 07:02:16'),
(59, 52, 1, '2021-10-12 07:14:46', '2021-10-12 07:14:46'),
(60, 52, 2, '2021-10-12 07:14:46', '2021-10-12 07:14:46'),
(69, 54, 1, '2021-10-12 07:27:24', '2021-10-12 07:27:24'),
(70, 54, 2, '2021-10-12 07:27:24', '2021-10-12 07:27:24'),
(71, 54, 2, '2021-10-12 07:27:24', '2021-10-12 07:27:24'),
(72, 54, 1, '2021-10-12 07:27:24', '2021-10-12 07:27:24'),
(73, 55, 1, '2021-10-12 07:30:05', '2021-10-12 07:30:05'),
(74, 55, 2, '2021-10-12 07:30:05', '2021-10-12 07:30:05'),
(79, 57, 1, '2021-10-12 07:39:07', '2021-10-12 07:39:07'),
(80, 57, 2, '2021-10-12 07:39:07', '2021-10-12 07:39:07'),
(83, 58, 1, '2021-10-12 07:44:33', '2021-10-12 07:44:33'),
(84, 58, 2, '2021-10-12 07:44:33', '2021-10-12 07:44:33'),
(85, 63, 1, '2021-10-12 08:27:07', '2021-10-12 08:27:07'),
(86, 64, 1, '2021-10-12 09:09:05', '2021-10-12 09:09:05'),
(87, 64, 2, '2021-10-12 09:09:05', '2021-10-12 09:09:05'),
(88, 65, 1, '2021-10-12 09:38:26', '2021-10-12 09:38:26'),
(89, 65, 2, '2021-10-12 09:38:26', '2021-10-12 09:38:26'),
(90, 67, 1, '2021-10-12 11:29:35', '2021-10-12 11:29:35'),
(91, 67, 2, '2021-10-12 11:29:35', '2021-10-12 11:29:35'),
(92, 72, 1, '2021-10-12 15:17:10', '2021-10-12 15:17:10'),
(93, 72, 2, '2021-10-12 15:17:10', '2021-10-12 15:17:10'),
(94, 73, 1, '2021-10-12 15:20:15', '2021-10-12 15:20:15'),
(95, 73, 2, '2021-10-12 15:20:15', '2021-10-12 15:20:15'),
(96, 75, 1, '2021-10-12 15:33:14', '2021-10-12 15:33:14'),
(97, 76, 1, '2021-10-12 15:34:31', '2021-10-12 15:34:31'),
(98, 77, 1, '2021-10-12 15:35:06', '2021-10-12 15:35:06'),
(99, 77, 2, '2021-10-12 15:35:06', '2021-10-12 15:35:06'),
(100, 78, 1, '2021-10-12 15:45:20', '2021-10-12 15:45:20'),
(101, 78, 2, '2021-10-12 15:45:20', '2021-10-12 15:45:20'),
(104, 84, 1, '2021-10-12 16:42:26', '2021-10-12 16:42:26'),
(106, 86, 1, '2021-10-12 17:06:38', '2021-10-12 17:06:38'),
(109, 89, 1, '2021-10-13 01:56:16', '2021-10-13 01:56:16'),
(110, 89, 2, '2021-10-13 01:56:16', '2021-10-13 01:56:16'),
(113, 96, 1, '2021-10-13 08:18:09', '2021-10-13 08:18:09'),
(114, 96, 2, '2021-10-13 08:18:09', '2021-10-13 08:18:09'),
(115, 99, 1, '2021-10-13 08:46:03', '2021-10-13 08:46:03'),
(116, 100, 1, '2021-10-13 08:47:38', '2021-10-13 08:47:38'),
(118, 101, 2, '2021-10-13 08:58:41', '2021-10-13 08:58:41'),
(119, 102, 2, '2021-10-13 09:26:15', '2021-10-13 09:26:15'),
(120, 109, 2, '2021-10-13 14:09:38', '2021-10-13 14:09:38'),
(121, 109, 1, '2021-10-13 14:09:38', '2021-10-13 14:09:38'),
(122, 112, 1, '2021-10-13 16:46:22', '2021-10-13 16:46:22'),
(123, 113, 1, '2021-10-13 16:47:56', '2021-10-13 16:47:56'),
(124, 113, 2, '2021-10-13 16:47:56', '2021-10-13 16:47:56'),
(125, 114, 1, '2021-10-13 16:53:27', '2021-10-13 16:53:27'),
(126, 114, 2, '2021-10-13 16:53:27', '2021-10-13 16:53:27'),
(127, 114, 1, '2021-10-13 16:53:27', '2021-10-13 16:53:27'),
(128, 115, 1, '2021-10-13 16:54:52', '2021-10-13 16:54:52'),
(129, 117, 1, '2021-10-14 13:03:35', '2021-10-14 13:03:35'),
(130, 119, 1, '2021-10-14 13:09:24', '2021-10-14 13:09:24'),
(131, 119, 2, '2021-10-14 13:09:24', '2021-10-14 13:09:24'),
(132, 121, 1, '2021-10-17 11:37:29', '2021-10-17 11:37:29');

-- --------------------------------------------------------

--
-- Table structure for table `dura_services_type`
--

CREATE TABLE `dura_services_type` (
  `id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dura_services_type`
--

INSERT INTO `dura_services_type` (`id`, `service_name`, `created_at`, `updated_at`) VALUES
(1, 'Dura Express', '2021-08-25 19:27:45', '2021-08-25 19:27:45'),
(2, 'Dura Eats', '2021-08-25 19:27:45', '2021-08-25 19:27:45'),
(3, 'Dura Shop', '2021-08-25 19:29:54', '2021-08-25 19:29:54');

-- --------------------------------------------------------

--
-- Table structure for table `emailconfiguration`
--

CREATE TABLE `emailconfiguration` (
  `id` int(11) NOT NULL,
  `hostname` varchar(255) DEFAULT NULL,
  `portnumber` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `encryption` varchar(255) DEFAULT NULL,
  `driver` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `subheading` varchar(255) DEFAULT NULL,
  `textmessage` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `linkedin` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `emailreceipt` text DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emailconfiguration`
--

INSERT INTO `emailconfiguration` (`id`, `hostname`, `portnumber`, `username`, `password`, `encryption`, `driver`, `heading`, `subheading`, `textmessage`, `facebook`, `twitter`, `instagram`, `linkedin`, `logo`, `image`, `emailreceipt`, `created_at`, `updated_at`) VALUES
(1, 'host', '10', 'upendra', 'Tiger!123', 'encryption', 'driver', 'heading', 'subheading', 'test messages', 'facebook', 'twitter', 'instagram', 'linkedin', '20210917180420-mvp300.jpg', '20210917180420-bike1.png', '20210917180420-WhatsApp Image 2021-08-01 at 6.32.18 PM.jpeg', '2021-09-17 18:04:20', '2021-09-17 12:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `end_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `client` varchar(250) DEFAULT NULL,
  `lead` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start_date`, `end_date`, `client`, `lead`, `created_at`, `updated_at`) VALUES
(1, 'Lead- Lead One-16-10-2020 18:59:00', '2020-10-16 22:59:00', '2020-10-16 22:59:00', NULL, NULL, '2020-10-16 13:29:18', ''),
(2, 'Client- Client-17-10-2020 18:59:00', '2020-10-17 22:59:00', '2020-10-17 22:59:00', NULL, NULL, '2020-10-16 13:29:35', ''),
(3, 'Lead- Lead One-16-10-2020 17:37:00', '2020-10-16 21:37:00', '2020-10-16 21:37:00', NULL, NULL, '2020-10-16 13:37:51', ''),
(4, 'Lead- Lead One-30-09-2020 15:43:00', '2020-09-30 19:43:00', '2020-09-30 19:43:00', NULL, NULL, '2020-10-26 10:40:36', ''),
(5, 'Client- Client-11-11-2020 11:29:00', '2020-11-11 16:29:00', '2020-11-11 16:29:00', NULL, NULL, '2020-11-10 06:00:38', ''),
(6, 'Client- Client-30-11-2020 14:15:00', '2020-11-30 19:15:00', '2020-11-30 19:15:00', NULL, NULL, '2020-11-29 12:15:30', '');

-- --------------------------------------------------------

--
-- Table structure for table `ewallet_recharge`
--

CREATE TABLE `ewallet_recharge` (
  `id` int(11) NOT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `searchtext` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `receipt_number` text DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ewallet_recharge`
--

INSERT INTO `ewallet_recharge` (`id`, `user_type`, `searchtext`, `phone`, `payment_method`, `receipt_number`, `amount`, `description`, `created_at`, `updated_at`) VALUES
(1, 'user', 'phone', '07905848385', 'cash', 'testetgbbn', '100', '<p>test test</p>', '2021-09-18 16:33:30', '2021-09-18 11:03:30');

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `id` int(11) NOT NULL,
  `logo` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `android_maintenance_user` varchar(255) DEFAULT NULL,
  `android_user_version` varchar(255) DEFAULT NULL,
  `android_user_update` varchar(255) DEFAULT NULL,
  `android_maintenance_driver` varchar(255) DEFAULT NULL,
  `android_driver_version` varchar(255) DEFAULT NULL,
  `android_driver_update` varchar(255) DEFAULT NULL,
  `ios_maintenance_user` varchar(255) DEFAULT NULL,
  `ios_user_version` varchar(255) DEFAULT NULL,
  `ios_user_update` varchar(255) DEFAULT NULL,
  `ios_maintenance_driver` varchar(255) DEFAULT NULL,
  `ios_driver_version` varchar(255) DEFAULT NULL,
  `ios_driver_update` varchar(255) DEFAULT NULL,
  `user_walletone` varchar(255) DEFAULT NULL,
  `user_wallettwo` varchar(255) DEFAULT NULL,
  `user_walletthree` varchar(255) DEFAULT NULL,
  `driver_walletone` varchar(255) DEFAULT NULL,
  `driver_wallettwo` varchar(255) DEFAULT NULL,
  `driver_walletthree` varchar(255) DEFAULT NULL,
  `remind_for_doc` varchar(255) DEFAULT NULL,
  `fare_policy_text` varchar(255) DEFAULT NULL,
  `referral_value` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issafe`
--

CREATE TABLE `issafe` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `watch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issafe`
--

INSERT INTO `issafe` (`id`, `user_id`, `watch_id`, `created_at`, `updated_at`) VALUES
(6, 144, 20, '2020-11-29 12:21:27', '2020-11-29 12:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `itemduraexpress`
--

CREATE TABLE `itemduraexpress` (
  `itemid` bigint(20) NOT NULL,
  `itemtype` varchar(200) NOT NULL,
  `itemamount` decimal(10,0) NOT NULL,
  `itemremarks` varchar(500) NOT NULL,
  `itempicklocation` varchar(500) NOT NULL,
  `itempicklat` decimal(10,0) NOT NULL,
  `itempiclong` decimal(10,0) NOT NULL,
  `itemdroplocaion` varchar(500) NOT NULL,
  `itemdroplat` decimal(10,0) NOT NULL,
  `itemdroplong` decimal(10,0) NOT NULL,
  `itemschedule` datetime NOT NULL,
  `itemstoplocation` varchar(500) NOT NULL,
  `itemstoplat` decimal(10,0) NOT NULL,
  `itemstoplong` decimal(10,0) NOT NULL,
  `itemvichleId` int(11) NOT NULL,
  `itempayId` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leadappointment`
--

CREATE TABLE `leadappointment` (
  `id` int(11) NOT NULL,
  `lead_id` int(11) DEFAULT 0,
  `client_id` int(11) DEFAULT 0,
  `event_id` int(11) DEFAULT NULL,
  `bookingdate` timestamp NULL DEFAULT current_timestamp(),
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leadappointment`
--

INSERT INTO `leadappointment` (`id`, `lead_id`, `client_id`, `event_id`, `bookingdate`, `comment`, `created_at`, `updated_at`) VALUES
(1, 0, 144, 6, '2020-11-30 19:15:00', 'kutyfhgv', '2020-11-29 12:15:30', '2020-11-29 12:15:30');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `upload_by` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `gender` int(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT '''no-image.jpg''',
  `status` tinyint(4) DEFAULT NULL COMMENT '''0'' => Not-approve, ''1'' => Approve ''	',
  `status_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `upload_by`, `name`, `email`, `phone`, `country_id`, `address`, `dob`, `gender`, `image`, `status`, `status_id`, `created_at`, `updated_at`) VALUES
(5, 1, 'Lead One', 'leadone@gmail.comedit', '9020202020', 2, 'Street-4, Sanjay colony Sasni Hathras 204216', '14-09-2020', 0, '20200930121134-20130319_083314_1174_admin.png', NULL, 1, '2020-09-30 16:11:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_api`
--

CREATE TABLE `login_api` (
  `id` int(11) NOT NULL,
  `fb_url` text DEFAULT NULL,
  `gmail_url` text DEFAULT NULL,
  `sms_gateway` text DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `otp_valid_until` datetime NOT NULL,
  `dob` date DEFAULT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `manageraccountno` text DEFAULT NULL,
  `accname` text DEFAULT NULL,
  `gcashno` text DEFAULT NULL,
  `lastupdatedatetime` datetime NOT NULL,
  `profilephoto_url` text NOT NULL,
  `created_datetime` date NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  `isvarified` tinyint(1) NOT NULL,
  `referralcode` varchar(200) NOT NULL,
  `isbusinessaccout` tinyint(1) NOT NULL,
  `latitude` decimal(12,9) NOT NULL,
  `longitude` decimal(12,9) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `firstname`, `middlename`, `lastname`, `mobile`, `otp`, `otp_valid_until`, `dob`, `city`, `state`, `country`, `password`, `email`, `manageraccountno`, `accname`, `gcashno`, `lastupdatedatetime`, `profilephoto_url`, `created_datetime`, `isactive`, `isvarified`, `referralcode`, `isbusinessaccout`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'mamager', 'manager', 'manager', '1234567890', '9192', '2021-07-03 13:59:03', '2021-07-03', '1', '1', '1', '$2a$08$TnLUue010iZQcUVL.b0bPeCaFvVqa221s0MmNopcnzeIg4q4jjxQa', 'manager@gmail.com', '1', '1', '1', '2021-09-03 23:21:27', '1', '2021-09-03', 1, 1, '1', 1, 15.545646500, 15.545646500, '2021-06-15 12:25:46', '2021-07-03 13:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `manager_support`
--

CREATE TABLE `manager_support` (
  `id` int(11) NOT NULL,
  `application` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager_support`
--

INSERT INTO `manager_support` (`id`, `application`, `details`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '6531234567890987654', 'Lorem Ipsum', '2021-09-24 10:38:53', '2021-09-24 14:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `marketplace`
--

CREATE TABLE `marketplace` (
  `id` int(11) NOT NULL,
  `watch_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marketplace`
--

INSERT INTO `marketplace` (`id`, `watch_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 23, 144, '2020-11-18 07:39:46', '2020-11-18 07:39:46'),
(3, 19, 144, '2020-11-24 11:04:13', '2020-11-24 11:04:13'),
(4, 21, 144, '2020-11-27 11:51:28', '2020-11-27 11:51:28'),
(5, 19, 144, '2020-11-27 12:00:40', '2020-11-27 12:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_support`
--

CREATE TABLE `merchant_support` (
  `id` int(11) NOT NULL,
  `application` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merchant_support`
--

INSERT INTO `merchant_support` (`id`, `application`, `details`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Merchant', '0987654321234567890', 'Lorem Ipsum', '2021-09-24 10:38:53', '2021-09-24 14:42:39');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `description` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `login_type` varchar(5) NOT NULL DEFAULT 'Ex',
  `is_read` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `user_id`, `image`, `description`, `type`, `login_type`, `is_read`, `reason`, `created_at`, `updated_at`) VALUES
(1, 298, NULL, 'Kashishgupta You have login successfully with Duradrive at September 10, 2021, 3:43 PM', 'login', 'Ex', 1, 'login', '2021-09-10 15:43:43', '2021-09-10 15:43:43'),
(2, 304, NULL, 'RobertMartinez You have login successfully with Duradrive at September 10, 2021, 11:47 PM', 'login', 'Ex', 1, 'login', '2021-09-10 23:47:56', '2021-09-10 23:47:56'),
(3, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 11, 2021, 2:52 AM', 'login', 'Ex', 1, 'login', '2021-09-11 02:52:37', '2021-09-11 02:52:37'),
(4, 303, NULL, ' You have add card successfully with Duradrive at September 11, 2021, 6:29 AM', 'cardupdate', 'Ex', 0, 'cardupdate', '2021-09-11 06:29:04', '2021-09-11 06:29:04'),
(5, 304, NULL, 'RobertMartinez You have login successfully with Duradrive at September 11, 2021, 12:08 PM', 'login', 'Ex', 1, 'login', '2021-09-11 12:08:37', '2021-09-11 12:08:37'),
(6, 304, NULL, 'RobertMartinez You have login successfully with Duradrive at September 11, 2021, 12:09 PM', 'login', 'Ex', 1, 'login', '2021-09-11 12:09:29', '2021-09-11 12:09:29'),
(7, 303, NULL, ' You have address deleted successfully with Duradrive at September 13, 2021, 9:03 AM', 'addressdeleted', 'Ex', 0, 'addressdeleted', '2021-09-13 09:03:35', '2021-09-13 09:03:35'),
(8, 303, NULL, ' You have delete docs successfully with Duradrive at September 15, 2021, 9:03 AM', 'deletedocs', 'Ex', 0, 'deletedocs', '2021-09-15 09:03:30', '2021-09-15 09:03:30'),
(9, 303, NULL, ' You have updated docs successfully with Duradrive at September 15, 2021, 9:03 AM', 'updatedocs', 'Ex', 0, 'updatedocs', '2021-09-15 09:03:47', '2021-09-15 09:03:47'),
(10, 323, NULL, ' You have register successfully with Duradrive atSeptember 15, 2021, 2:15 PM', 'registration', 'Ex', 0, 'registration', '2021-09-15 14:15:16', '2021-09-15 14:15:16'),
(11, 324, NULL, ' You have register successfully with Duradrive atSeptember 15, 2021, 2:43 PM', 'registration', 'Ex', 0, 'registration', '2021-09-15 14:43:42', '2021-09-15 14:43:42'),
(12, 324, NULL, ' You have update user name successfully with Duradrive at September 15, 2021, 2:47 PM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-09-15 14:47:05', '2021-09-15 14:47:05'),
(13, 324, NULL, ' You have update user name successfully with Duradrive at September 15, 2021, 2:50 PM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-09-15 14:50:55', '2021-09-15 14:50:55'),
(14, 324, NULL, ' You have phone update successfully with Duradrive at September 15, 2021, 2:57 PM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-09-15 14:57:12', '2021-09-15 14:57:12'),
(15, 324, NULL, ' You have update user name successfully with Duradrive at September 15, 2021, 2:57 PM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-09-15 14:57:36', '2021-09-15 14:57:36'),
(16, 324, NULL, ' You have update user name successfully with Duradrive at September 15, 2021, 2:59 PM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-09-15 14:59:17', '2021-09-15 14:59:17'),
(17, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 15, 2021, 3:38 PM', 'login', 'Ex', 0, 'login', '2021-09-15 15:38:44', '2021-09-15 15:38:44'),
(18, 325, NULL, ' You have register successfully with Duradrive atSeptember 15, 2021, 4:51 PM', 'registration', 'Ex', 1, 'registration', '2021-09-15 16:51:53', '2021-09-15 16:51:53'),
(19, 325, NULL, 'AmitSharan You have login successfully with Duradrive at September 15, 2021, 4:52 PM', 'login', 'Ex', 1, 'login', '2021-09-15 16:52:19', '2021-09-15 16:52:19'),
(20, 298, NULL, 'Kashishgupta You have login successfully with Duradrive at September 15, 2021, 4:55 PM', 'login', 'Ex', 1, 'login', '2021-09-15 16:55:34', '2021-09-15 16:55:34'),
(21, 298, NULL, 'Kashishgupta You have login successfully with Duradrive at September 15, 2021, 5:07 PM', 'login', 'Ex', 1, 'login', '2021-09-15 17:07:28', '2021-09-15 17:07:28'),
(22, 325, NULL, 'AmitSharan You have login successfully with Duradrive at September 15, 2021, 5:10 PM', 'login', 'Ex', 1, 'login', '2021-09-15 17:10:06', '2021-09-15 17:10:06'),
(23, 325, NULL, 'AmitSharan You have login successfully with Duradrive at September 15, 2021, 5:22 PM', 'login', 'Ex', 1, 'login', '2021-09-15 17:22:35', '2021-09-15 17:22:35'),
(24, 325, NULL, 'AmitSharan You have login successfully with Duradrive at September 15, 2021, 5:29 PM', 'login', 'Ex', 1, 'login', '2021-09-15 17:29:47', '2021-09-15 17:29:47'),
(25, 325, NULL, 'AmitSharan You have login successfully with Duradrive at September 15, 2021, 5:31 PM', 'login', 'Ex', 1, 'login', '2021-09-15 17:31:21', '2021-09-15 17:31:21'),
(26, 325, NULL, 'AmitSharan You have login successfully with Duradrive at September 15, 2021, 5:35 PM', 'login', 'Ex', 1, 'login', '2021-09-15 17:35:04', '2021-09-15 17:35:04'),
(27, 304, NULL, 'RobertMartinez You have login successfully with Duradrive at September 15, 2021, 5:59 PM', 'login', 'Ex', 1, 'login', '2021-09-15 17:59:45', '2021-09-15 17:59:45'),
(28, 304, NULL, 'RobertMartinez You have login successfully with Duradrive at September 15, 2021, 6:11 PM', 'login', 'Ex', 1, 'login', '2021-09-15 18:11:28', '2021-09-15 18:11:28'),
(29, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 16, 2021, 4:41 AM', 'login', 'Ex', 0, 'login', '2021-09-16 04:41:28', '2021-09-16 04:41:28'),
(30, 326, NULL, ' You have register successfully with Duradrive atSeptember 16, 2021, 5:36 AM', 'registration', 'Ex', 1, 'registration', '2021-09-16 05:36:14', '2021-09-16 05:36:14'),
(31, 327, NULL, ' You have register successfully with Duradrive atSeptember 16, 2021, 11:59 AM', 'registration', 'Ex', 0, 'registration', '2021-09-16 11:59:35', '2021-09-16 11:59:35'),
(32, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 16, 2021, 12:09 PM', 'login', 'Ex', 0, 'login', '2021-09-16 12:09:32', '2021-09-16 12:09:32'),
(33, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 16, 2021, 12:23 PM', 'login', 'Ex', 0, 'login', '2021-09-16 12:23:14', '2021-09-16 12:23:14'),
(34, 304, NULL, 'RobertMartinez You have login successfully with Duradrive at September 17, 2021, 6:39 AM', 'login', 'Ex', 1, 'login', '2021-09-17 06:39:49', '2021-09-17 06:39:49'),
(35, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 17, 2021, 7:15 AM', 'login', 'Ex', 0, 'login', '2021-09-17 07:15:28', '2021-09-17 07:15:28'),
(36, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 17, 2021, 9:12 AM', 'login', 'Ex', 0, 'login', '2021-09-17 09:12:22', '2021-09-17 09:12:22'),
(37, 328, NULL, ' You have register successfully with Duradrive atSeptember 17, 2021, 11:16 AM', 'registration', 'Ex', 0, 'registration', '2021-09-17 11:16:56', '2021-09-17 11:16:56'),
(38, 329, NULL, ' You have register successfully with Duradrive atSeptember 17, 2021, 11:16 AM', 'registration', 'Ex', 0, 'registration', '2021-09-17 11:16:56', '2021-09-17 11:16:56'),
(39, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 17, 2021, 1:46 PM', 'login', 'Ex', 0, 'login', '2021-09-17 13:46:45', '2021-09-17 13:46:45'),
(40, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 17, 2021, 1:51 PM', 'login', 'Ex', 0, 'login', '2021-09-17 13:51:59', '2021-09-17 13:51:59'),
(41, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 17, 2021, 1:58 PM', 'login', 'Ex', 0, 'login', '2021-09-17 13:58:14', '2021-09-17 13:58:14'),
(42, 304, NULL, 'RobertMartinez You have login successfully with Duradrive at September 17, 2021, 2:21 PM', 'login', 'Ex', 1, 'login', '2021-09-17 14:21:28', '2021-09-17 14:21:28'),
(43, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 17, 2021, 2:24 PM', 'login', 'Ex', 0, 'login', '2021-09-17 14:24:05', '2021-09-17 14:24:05'),
(44, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 17, 2021, 2:54 PM', 'login', 'Ex', 0, 'login', '2021-09-17 14:54:45', '2021-09-17 14:54:45'),
(45, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 17, 2021, 2:59 PM', 'login', 'Ex', 0, 'login', '2021-09-17 14:59:35', '2021-09-17 14:59:35'),
(46, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 17, 2021, 3:09 PM', 'login', 'Ex', 0, 'login', '2021-09-17 15:09:28', '2021-09-17 15:09:28'),
(47, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 18, 2021, 2:32 AM', 'login', 'Ex', 0, 'login', '2021-09-18 02:32:46', '2021-09-18 02:32:46'),
(48, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 18, 2021, 3:14 AM', 'login', 'Ex', 0, 'login', '2021-09-18 03:14:08', '2021-09-18 03:14:08'),
(49, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 18, 2021, 3:51 AM', 'login', 'Ex', 0, 'login', '2021-09-18 03:51:30', '2021-09-18 03:51:30'),
(50, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 18, 2021, 3:58 AM', 'login', 'Ex', 0, 'login', '2021-09-18 03:58:47', '2021-09-18 03:58:47'),
(51, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 18, 2021, 4:05 AM', 'login', 'Ex', 0, 'login', '2021-09-18 04:05:46', '2021-09-18 04:05:46'),
(52, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 18, 2021, 4:11 AM', 'login', 'Ex', 0, 'login', '2021-09-18 04:11:04', '2021-09-18 04:11:04'),
(53, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 18, 2021, 4:18 AM', 'login', 'Ex', 0, 'login', '2021-09-18 04:18:44', '2021-09-18 04:18:44'),
(54, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 18, 2021, 4:51 AM', 'login', 'Ex', 0, 'login', '2021-09-18 04:51:30', '2021-09-18 04:51:30'),
(55, 303, NULL, ' You have update user name successfully with Duradrive at September 18, 2021, 5:33 AM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-09-18 05:33:44', '2021-09-18 05:33:44'),
(56, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 18, 2021, 5:43 AM', 'login', 'Ex', 0, 'login', '2021-09-18 05:43:00', '2021-09-18 05:43:00'),
(57, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 18, 2021, 6:44 AM', 'login', 'Ex', 0, 'login', '2021-09-18 06:44:57', '2021-09-18 06:44:57'),
(58, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 18, 2021, 6:49 AM', 'login', 'Ex', 0, 'login', '2021-09-18 06:49:17', '2021-09-18 06:49:17'),
(59, 303, NULL, ' You have address deleted successfully with Duradrive at September 18, 2021, 6:49 AM', 'addressdeleted', 'Ex', 0, 'addressdeleted', '2021-09-18 06:49:54', '2021-09-18 06:49:54'),
(60, 303, NULL, ' You have address deleted successfully with Duradrive at September 18, 2021, 6:49 AM', 'addressdeleted', 'Ex', 0, 'addressdeleted', '2021-09-18 06:49:59', '2021-09-18 06:49:59'),
(61, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 18, 2021, 7:11 AM', 'login', 'Ex', 0, 'login', '2021-09-18 07:11:38', '2021-09-18 07:11:38'),
(62, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 18, 2021, 9:12 AM', 'login', 'Ex', 0, 'login', '2021-09-18 09:12:09', '2021-09-18 09:12:09'),
(63, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 18, 2021, 9:44 AM', 'login', 'Ex', 0, 'login', '2021-09-18 09:44:39', '2021-09-18 09:44:39'),
(64, 303, NULL, 'VivekNigam You have login successfully with Duradrive at September 18, 2021, 10:39 AM', 'login', 'Ex', 0, 'login', '2021-09-18 10:39:59', '2021-09-18 10:39:59'),
(65, 325, NULL, ' You have update user name successfully with Duradrive at September 18, 2021, 2:11 PM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-09-18 14:11:37', '2021-09-18 14:11:37'),
(66, 303, NULL, 'You have login successfully with Duradrive at September 18, 2021, 5:27 PM', 'login', 'Ex', 0, 'login', '2021-09-18 17:27:21', '2021-09-18 17:27:21'),
(67, 141, NULL, ' You have card deleted successfully with Duradrive at September 18, 2021, 6:31 PM', 'carddeleted', 'Ex', 0, 'carddeleted', '2021-09-18 18:31:02', '2021-09-18 18:31:02'),
(68, 141, NULL, ' You have add card successfully with Duradrive at September 18, 2021, 6:33 PM', 'addcard', 'Ex', 0, 'addcard', '2021-09-18 18:33:41', '2021-09-18 18:33:41'),
(69, 330, NULL, 'You have register successfully with Duradrive atSeptember 18, 2021, 6:41 PM', 'registration', 'Ex', 0, 'registration', '2021-09-18 18:41:08', '2021-09-18 18:41:08'),
(70, 330, NULL, 'You have login successfully with Duradrive at September 18, 2021, 6:41 PM', 'login', 'Ex', 0, 'login', '2021-09-18 18:41:59', '2021-09-18 18:41:59'),
(71, 330, NULL, 'You have login successfully with Duradrive at September 18, 2021, 6:47 PM', 'login', 'Ex', 0, 'login', '2021-09-18 18:47:39', '2021-09-18 18:47:39'),
(72, 1, NULL, ' You have address update successfully with Duradrive at September 18, 2021, 7:15 PM', 'addressupdate', 'Ex', 0, 'addressupdate', '2021-09-18 19:15:05', '2021-09-18 19:15:05'),
(73, 325, NULL, ' You have country update successfully with Duradrive at September 18, 2021, 7:21 PM', 'countryupdate', 'Ex', 1, 'countryupdate', '2021-09-18 19:21:39', '2021-09-18 19:21:39'),
(74, 325, NULL, ' You have card deleted successfully with Duradrive at September 18, 2021, 7:26 PM', 'carddeleted', 'Ex', 1, 'carddeleted', '2021-09-18 19:26:53', '2021-09-18 19:26:53'),
(75, 141, NULL, ' You have add card successfully with Duradrive at September 18, 2021, 7:26 PM', 'addcard', 'Ex', 0, 'addcard', '2021-09-18 19:26:55', '2021-09-18 19:26:55'),
(76, 325, NULL, ' You have card deleted successfully with Duradrive at September 18, 2021, 7:26 PM', 'carddeleted', 'Ex', 1, 'carddeleted', '2021-09-18 19:26:56', '2021-09-18 19:26:56'),
(77, 325, NULL, ' You have card deleted successfully with Duradrive at September 18, 2021, 7:26 PM', 'carddeleted', 'Ex', 1, 'carddeleted', '2021-09-18 19:26:57', '2021-09-18 19:26:57'),
(78, 325, NULL, ' You have add card successfully with Duradrive at September 18, 2021, 7:27 PM', 'addcard', 'Ex', 1, 'addcard', '2021-09-18 19:27:23', '2021-09-18 19:27:23'),
(79, 325, NULL, ' You have card deleted successfully with Duradrive at September 18, 2021, 7:27 PM', 'carddeleted', 'Ex', 1, 'carddeleted', '2021-09-18 19:27:27', '2021-09-18 19:27:27'),
(80, 325, NULL, ' You have add card successfully with Duradrive at September 18, 2021, 7:28 PM', 'addcard', 'Ex', 1, 'addcard', '2021-09-18 19:28:13', '2021-09-18 19:28:13'),
(81, 141, NULL, ' You have card deleted successfully with Duradrive at September 18, 2021, 7:28 PM', 'carddeleted', 'Ex', 0, 'carddeleted', '2021-09-18 19:28:15', '2021-09-18 19:28:15'),
(82, 325, NULL, ' You have address deleted successfully with Duradrive at September 18, 2021, 7:28 PM', 'addressdeleted', 'Ex', 1, 'addressdeleted', '2021-09-18 19:28:25', '2021-09-18 19:28:25'),
(83, 149, NULL, ' You have placed order successfully with Duradrive at September 18, 2021, 7:43 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-18 19:43:33', '2021-09-18 19:43:33'),
(84, 298, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 1:04 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 01:04:40', '2021-09-19 01:04:40'),
(85, 298, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 1:05 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 01:05:43', '2021-09-19 01:05:43'),
(86, 304, NULL, 'You have login successfully with Duradrive at September 19, 2021, 1:26 AM', 'login', 'Ex', 1, 'login', '2021-09-19 01:26:04', '2021-09-19 01:26:04'),
(87, 304, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 1:26 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 01:26:45', '2021-09-19 01:26:45'),
(88, 304, NULL, ' You have update user name successfully with Duradrive at September 19, 2021, 1:28 AM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-09-19 01:28:13', '2021-09-19 01:28:13'),
(89, 304, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 1:29 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 01:29:13', '2021-09-19 01:29:13'),
(90, 331, NULL, 'You have register successfully with Duradrive atSeptember 19, 2021, 1:33 AM', 'registration', 'Ex', 0, 'registration', '2021-09-19 01:33:11', '2021-09-19 01:33:11'),
(91, 304, NULL, 'You have login successfully with Duradrive at September 19, 2021, 2:30 AM', 'login', 'Ex', 1, 'login', '2021-09-19 02:30:30', '2021-09-19 02:30:30'),
(92, 303, NULL, ' You have card deleted successfully with Duradrive at September 19, 2021, 3:34 AM', 'carddeleted', 'Ex', 0, 'carddeleted', '2021-09-19 03:34:43', '2021-09-19 03:34:43'),
(93, 303, NULL, ' You have card deleted successfully with Duradrive at September 19, 2021, 3:34 AM', 'carddeleted', 'Ex', 0, 'carddeleted', '2021-09-19 03:34:46', '2021-09-19 03:34:46'),
(94, 303, NULL, ' You have add card successfully with Duradrive at September 19, 2021, 3:35 AM', 'addcard', 'Ex', 0, 'addcard', '2021-09-19 03:35:11', '2021-09-19 03:35:11'),
(95, 303, NULL, ' You have add card successfully with Duradrive at September 19, 2021, 3:35 AM', 'cardupdate', 'Ex', 0, 'cardupdate', '2021-09-19 03:35:19', '2021-09-19 03:35:19'),
(96, 303, NULL, ' You have add card successfully with Duradrive at September 19, 2021, 3:35 AM', 'cardupdate', 'Ex', 0, 'cardupdate', '2021-09-19 03:35:26', '2021-09-19 03:35:26'),
(97, 303, NULL, ' You have address deleted successfully with Duradrive at September 19, 2021, 3:35 AM', 'addressdeleted', 'Ex', 0, 'addressdeleted', '2021-09-19 03:35:37', '2021-09-19 03:35:37'),
(98, 303, NULL, 'You have login successfully with Duradrive at September 19, 2021, 3:55 AM', 'login', 'Ex', 0, 'login', '2021-09-19 03:55:19', '2021-09-19 03:55:19'),
(99, 303, NULL, 'You have login successfully with Duradrive at September 19, 2021, 3:57 AM', 'login', 'Ex', 0, 'login', '2021-09-19 03:57:13', '2021-09-19 03:57:13'),
(100, 303, NULL, 'You have login successfully with Duradrive at September 19, 2021, 4:07 AM', 'login', 'Ex', 0, 'login', '2021-09-19 04:07:07', '2021-09-19 04:07:07'),
(101, 303, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 5:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 05:29:49', '2021-09-19 05:29:49'),
(102, 303, NULL, 'You have login successfully with Duradrive at September 19, 2021, 5:42 AM', 'login', 'Ex', 0, 'login', '2021-09-19 05:42:35', '2021-09-19 05:42:35'),
(103, 303, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 5:50 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 05:50:57', '2021-09-19 05:50:57'),
(104, 303, NULL, ' You have address deleted successfully with Duradrive at September 19, 2021, 5:59 AM', 'addressdeleted', 'Ex', 0, 'addressdeleted', '2021-09-19 05:59:29', '2021-09-19 05:59:29'),
(105, 303, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 6:21 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 06:21:45', '2021-09-19 06:21:45'),
(106, 1, NULL, ' You have address update successfully with Duradrive at September 19, 2021, 7:32 AM', 'addressupdate', 'Ex', 0, 'addressupdate', '2021-09-19 07:32:42', '2021-09-19 07:32:42'),
(107, 303, NULL, ' You have address update successfully with Duradrive at September 19, 2021, 7:36 AM', 'addressupdate', 'Ex', 1, 'addressupdate', '2021-09-19 07:36:57', '2021-09-19 07:36:57'),
(108, 303, NULL, ' You have address update successfully with Duradrive at September 19, 2021, 7:37 AM', 'addressupdate', 'Ex', 0, 'addressupdate', '2021-09-19 07:37:31', '2021-09-19 07:37:31'),
(109, 303, NULL, ' You have address deleted successfully with Duradrive at September 19, 2021, 8:46 AM', 'addressdeleted', 'Ex', 0, 'addressdeleted', '2021-09-19 08:46:53', '2021-09-19 08:46:53'),
(110, 303, NULL, ' You have address deleted successfully with Duradrive at September 19, 2021, 9:07 AM', 'addressdeleted', 'Ex', 0, 'addressdeleted', '2021-09-19 09:07:18', '2021-09-19 09:07:18'),
(111, 303, NULL, ' You have update user name successfully with Duradrive at September 19, 2021, 9:51 AM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-09-19 09:51:23', '2021-09-19 09:51:23'),
(112, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 9:56 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 09:56:18', '2021-09-19 09:56:18'),
(113, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 9:56 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 09:56:40', '2021-09-19 09:56:40'),
(114, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 9:56 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 09:56:48', '2021-09-19 09:56:48'),
(115, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 9:57 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 09:57:02', '2021-09-19 09:57:02'),
(116, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 9:57 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 09:57:30', '2021-09-19 09:57:30'),
(117, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 9:57 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 09:57:47', '2021-09-19 09:57:47'),
(118, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 9:58 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 09:58:12', '2021-09-19 09:58:12'),
(119, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 9:58 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 09:58:22', '2021-09-19 09:58:22'),
(120, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 9:58 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 09:58:26', '2021-09-19 09:58:26'),
(121, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 9:58 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 09:58:33', '2021-09-19 09:58:33'),
(122, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 9:58 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 09:58:39', '2021-09-19 09:58:39'),
(123, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:03 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 10:03:52', '2021-09-19 10:03:52'),
(124, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:04 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 10:04:27', '2021-09-19 10:04:27'),
(125, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:04 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 10:04:36', '2021-09-19 10:04:36'),
(126, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:04 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 10:04:45', '2021-09-19 10:04:45'),
(127, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:04 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 10:04:53', '2021-09-19 10:04:53'),
(128, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:05 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 10:05:20', '2021-09-19 10:05:20'),
(129, 149, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 10:29:00', '2021-09-19 10:29:00'),
(130, 149, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 10:29:02', '2021-09-19 10:29:02'),
(131, 149, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 10:29:05', '2021-09-19 10:29:05'),
(132, 149, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 10:29:06', '2021-09-19 10:29:06'),
(133, 149, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 10:29:08', '2021-09-19 10:29:08'),
(134, 149, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 10:29:09', '2021-09-19 10:29:09'),
(135, 149, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 10:29:11', '2021-09-19 10:29:11'),
(136, 149, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 10:29:12', '2021-09-19 10:29:12'),
(137, 149, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 10:29:14', '2021-09-19 10:29:14'),
(138, 149, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 10:29:16', '2021-09-19 10:29:16'),
(139, 149, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 10:29:46', '2021-09-19 10:29:46'),
(140, 149, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 10:29:48', '2021-09-19 10:29:48'),
(141, 149, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:38 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 10:38:49', '2021-09-19 10:38:49'),
(142, 303, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:45 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 10:45:23', '2021-09-19 10:45:23'),
(143, 303, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:49 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 10:49:22', '2021-09-19 10:49:22'),
(144, 303, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:49 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 10:49:43', '2021-09-19 10:49:43'),
(145, 303, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 10:52 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-19 10:52:41', '2021-09-19 10:52:41'),
(146, 325, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 12:49 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 12:49:40', '2021-09-19 12:49:40'),
(147, 298, NULL, ' You have placed order successfully with Duradrive at September 19, 2021, 2:11 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-19 14:11:22', '2021-09-19 14:11:22'),
(148, 332, NULL, 'You have register successfully with Duradrive atSeptember 20, 2021, 2:40 AM', 'registration', 'Ex', 0, 'registration', '2021-09-20 02:40:33', '2021-09-20 02:40:33'),
(149, 332, NULL, ' You have placed order successfully with Duradrive at September 20, 2021, 2:46 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-20 02:46:46', '2021-09-20 02:46:46'),
(150, 304, NULL, ' You have placed order successfully with Duradrive at September 20, 2021, 2:55 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-20 02:55:25', '2021-09-20 02:55:25'),
(151, 304, NULL, 'You have login successfully with Duradrive at September 20, 2021, 5:07 AM', 'login', 'Ex', 1, 'login', '2021-09-20 05:07:22', '2021-09-20 05:07:22'),
(152, 304, NULL, ' You have phone update successfully with Duradrive at September 20, 2021, 7:29 AM', 'phoneupdate', 'Ex', 1, 'phoneupdate', '2021-09-20 07:29:45', '2021-09-20 07:29:45'),
(153, 304, NULL, ' You have phone update successfully with Duradrive at September 20, 2021, 7:30 AM', 'phoneupdate', 'Ex', 1, 'phoneupdate', '2021-09-20 07:30:27', '2021-09-20 07:30:27'),
(154, 325, NULL, ' You have placed order successfully with Duradrive at September 20, 2021, 9:14 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-20 09:14:04', '2021-09-20 09:14:04'),
(155, 325, NULL, ' You have placed order successfully with Duradrive at September 20, 2021, 10:28 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-20 10:28:00', '2021-09-20 10:28:00'),
(156, 304, NULL, 'You have login successfully with Duradrive at September 20, 2021, 10:51 AM', 'login', 'Ex', 1, 'login', '2021-09-20 10:51:13', '2021-09-20 10:51:13'),
(157, 304, NULL, ' You have placed order successfully with Duradrive at September 20, 2021, 10:52 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-20 10:52:25', '2021-09-20 10:52:25'),
(158, 325, NULL, ' You have placed order successfully with Duradrive at September 20, 2021, 11:02 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-20 11:02:57', '2021-09-20 11:02:57'),
(159, 325, NULL, ' You have placed order successfully with Duradrive at September 20, 2021, 1:38 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-20 13:38:50', '2021-09-20 13:38:50'),
(160, 304, NULL, ' You have placed order successfully with Duradrive at September 20, 2021, 2:08 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-20 14:08:26', '2021-09-20 14:08:26'),
(161, 304, NULL, 'You have login successfully with Duradrive at September 20, 2021, 2:30 PM', 'login', 'Ex', 1, 'login', '2021-09-20 14:30:07', '2021-09-20 14:30:07'),
(162, 325, NULL, ' You have placed order successfully with Duradrive at September 20, 2021, 3:47 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-20 15:47:21', '2021-09-20 15:47:21'),
(163, 298, NULL, ' You have placed order successfully with Duradrive at September 20, 2021, 3:47 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-20 15:47:58', '2021-09-20 15:47:58'),
(164, 298, NULL, ' You have placed order successfully with Duradrive at September 20, 2021, 3:48 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-20 15:48:05', '2021-09-20 15:48:05'),
(165, 298, NULL, ' You have placed order successfully with Duradrive at September 20, 2021, 3:59 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-20 15:59:25', '2021-09-20 15:59:25'),
(166, 303, NULL, 'You have login successfully with Duradrive at September 20, 2021, 4:00 PM', 'login', 'Ex', 0, 'login', '2021-09-20 16:00:06', '2021-09-20 16:00:06'),
(167, 303, NULL, ' You have placed order successfully with Duradrive at September 20, 2021, 4:01 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-20 16:01:28', '2021-09-20 16:01:28'),
(168, 298, NULL, ' You have placed order successfully with Duradrive at September 20, 2021, 4:03 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-20 16:03:04', '2021-09-20 16:03:04'),
(169, 325, NULL, ' You have placed order successfully with Duradrive at September 20, 2021, 4:18 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-20 16:18:07', '2021-09-20 16:18:07'),
(170, 303, NULL, 'You have login successfully with Duradrive at September 21, 2021, 6:22 AM', 'login', 'Ex', 0, 'login', '2021-09-21 06:22:51', '2021-09-21 06:22:51'),
(171, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 10:29 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 10:29:29', '2021-09-21 10:29:29'),
(172, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 10:29 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 10:29:48', '2021-09-21 10:29:48'),
(173, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 11:53 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 11:53:10', '2021-09-21 11:53:10'),
(174, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 11:57 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 11:57:29', '2021-09-21 11:57:29'),
(175, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 12:08 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 12:08:48', '2021-09-21 12:08:48'),
(176, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 12:16 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 12:16:01', '2021-09-21 12:16:01'),
(177, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 12:25 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 12:25:08', '2021-09-21 12:25:08'),
(178, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 12:27 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 12:27:59', '2021-09-21 12:27:59'),
(179, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 12:28 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 12:28:00', '2021-09-21 12:28:00'),
(180, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 12:31 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 12:31:59', '2021-09-21 12:31:59'),
(181, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 12:41 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 12:41:23', '2021-09-21 12:41:23'),
(182, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 12:42 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 12:42:25', '2021-09-21 12:42:25'),
(183, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 12:47 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 12:47:49', '2021-09-21 12:47:49'),
(184, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 12:49 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 12:49:50', '2021-09-21 12:49:50'),
(185, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 12:52 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 12:52:03', '2021-09-21 12:52:03'),
(186, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 1:02 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 13:02:16', '2021-09-21 13:02:16'),
(187, 303, NULL, 'You have login successfully with Duradrive at September 21, 2021, 1:28 PM', 'login', 'Ex', 0, 'login', '2021-09-21 13:28:54', '2021-09-21 13:28:54'),
(188, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 1:31 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 13:31:04', '2021-09-21 13:31:04'),
(189, 303, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 1:33 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-21 13:33:18', '2021-09-21 13:33:18'),
(190, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 1:34 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 13:34:39', '2021-09-21 13:34:39'),
(191, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 1:36 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 13:36:41', '2021-09-21 13:36:41'),
(192, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 1:40 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 13:40:34', '2021-09-21 13:40:34'),
(193, 303, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 4:23 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-21 16:23:45', '2021-09-21 16:23:45'),
(194, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 4:25 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 16:25:42', '2021-09-21 16:25:42'),
(195, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 4:46 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 16:46:15', '2021-09-21 16:46:15'),
(196, 325, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 4:52 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 16:52:54', '2021-09-21 16:52:54'),
(197, 304, NULL, 'You have login successfully with Duradrive at September 21, 2021, 5:39 PM', 'login', 'Ex', 1, 'login', '2021-09-21 17:39:34', '2021-09-21 17:39:34'),
(198, 304, NULL, ' You have placed order successfully with Duradrive at September 21, 2021, 5:40 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-21 17:40:16', '2021-09-21 17:40:16'),
(199, 303, NULL, ' You have placed order successfully with Duradrive at September 22, 2021, 9:12 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-22 09:12:13', '2021-09-22 09:12:13'),
(200, 325, NULL, ' You have placed order successfully with Duradrive at September 22, 2021, 10:37 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-22 10:37:07', '2021-09-22 10:37:07'),
(201, 325, NULL, ' You have placed order successfully with Duradrive at September 22, 2021, 10:41 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-22 10:41:09', '2021-09-22 10:41:09'),
(202, 325, NULL, ' You have placed order successfully with Duradrive at September 22, 2021, 11:02 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-22 11:02:15', '2021-09-22 11:02:15'),
(203, 325, NULL, ' You have placed order successfully with Duradrive at September 22, 2021, 11:03 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-22 11:03:18', '2021-09-22 11:03:18'),
(204, 325, NULL, ' You have placed order successfully with Duradrive at September 22, 2021, 11:04 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-22 11:04:21', '2021-09-22 11:04:21'),
(205, 325, NULL, ' You have placed order successfully with Duradrive at September 22, 2021, 11:05 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-22 11:05:13', '2021-09-22 11:05:13'),
(206, 304, NULL, 'You have login successfully with Duradrive at September 22, 2021, 12:43 PM', 'login', 'Ex', 1, 'login', '2021-09-22 12:43:15', '2021-09-22 12:43:15'),
(207, 304, NULL, ' You have placed order successfully with Duradrive at September 22, 2021, 12:43 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-22 12:43:53', '2021-09-22 12:43:53'),
(208, 304, NULL, ' You have placed order successfully with Duradrive at September 22, 2021, 12:44 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-22 12:44:34', '2021-09-22 12:44:34'),
(209, 325, NULL, ' You have social update successfully with Duradrive at September 22, 2021, 2:50 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-22 14:50:21', '2021-09-22 14:50:21'),
(210, 325, NULL, ' You have social update successfully with Duradrive at September 22, 2021, 2:51 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-22 14:51:46', '2021-09-22 14:51:46'),
(211, 325, NULL, ' You have social update successfully with Duradrive at September 22, 2021, 3:03 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-22 15:03:01', '2021-09-22 15:03:01'),
(212, 304, NULL, ' You have placed order successfully with Duradrive at September 22, 2021, 3:42 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-22 15:42:45', '2021-09-22 15:42:45'),
(213, 325, NULL, ' You have social update successfully with Duradrive at September 22, 2021, 3:51 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-22 15:51:34', '2021-09-22 15:51:34'),
(214, 325, NULL, ' You have social update successfully with Duradrive at September 22, 2021, 3:51 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-22 15:51:48', '2021-09-22 15:51:48'),
(215, 325, NULL, ' You have social update successfully with Duradrive at September 22, 2021, 3:55 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-22 15:55:51', '2021-09-22 15:55:51'),
(216, 325, NULL, ' You have social update successfully with Duradrive at September 22, 2021, 3:56 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-22 15:56:00', '2021-09-22 15:56:00'),
(217, 325, NULL, ' You have social update successfully with Duradrive at September 22, 2021, 4:01 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-22 16:01:59', '2021-09-22 16:01:59'),
(218, 325, NULL, ' You have social update successfully with Duradrive at September 22, 2021, 4:06 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-22 16:06:14', '2021-09-22 16:06:14'),
(219, 325, NULL, ' You have social update successfully with Duradrive at September 22, 2021, 4:11 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-22 16:11:46', '2021-09-22 16:11:46'),
(220, 325, NULL, ' You have social update successfully with Duradrive at September 22, 2021, 4:18 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-22 16:18:25', '2021-09-22 16:18:25'),
(221, 325, NULL, ' You have social update successfully with Duradrive at September 22, 2021, 4:35 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-22 16:35:56', '2021-09-22 16:35:56'),
(222, 325, NULL, ' You have social update successfully with Duradrive at September 22, 2021, 4:40 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-22 16:40:06', '2021-09-22 16:40:06'),
(223, 303, NULL, 'You have login successfully with Duradrive at September 22, 2021, 5:03 PM', 'login', 'Ex', 0, 'login', '2021-09-22 17:03:21', '2021-09-22 17:03:21'),
(224, 303, NULL, ' You have social update successfully with Duradrive at September 22, 2021, 5:04 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-09-22 17:04:34', '2021-09-22 17:04:34'),
(225, 303, NULL, ' You have social update successfully with Duradrive at September 22, 2021, 5:05 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-09-22 17:05:06', '2021-09-22 17:05:06'),
(226, 303, NULL, ' You have update user name successfully with Duradrive at September 22, 2021, 5:05 PM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-09-22 17:05:53', '2021-09-22 17:05:53'),
(227, 298, NULL, ' You have placed order successfully with Duradrive at September 22, 2021, 10:44 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-22 22:44:27', '2021-09-22 22:44:27'),
(228, 298, NULL, ' You have placed order successfully with Duradrive at September 22, 2021, 10:51 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-22 22:51:14', '2021-09-22 22:51:14'),
(229, 298, NULL, ' You have placed order successfully with Duradrive at September 22, 2021, 10:57 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-22 22:57:35', '2021-09-22 22:57:35'),
(230, 298, NULL, ' You have placed order successfully with Duradrive at September 22, 2021, 11:08 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-22 23:08:17', '2021-09-22 23:08:17'),
(231, 298, NULL, ' You have placed order successfully with Duradrive at September 22, 2021, 11:08 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-22 23:08:35', '2021-09-22 23:08:35'),
(232, 298, NULL, ' You have placed order successfully with Duradrive at September 22, 2021, 11:12 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-22 23:12:54', '2021-09-22 23:12:54'),
(233, 298, NULL, ' You have placed order successfully with Duradrive at September 22, 2021, 11:13 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-22 23:13:05', '2021-09-22 23:13:05'),
(234, 304, NULL, 'You have login successfully with Duradrive at September 23, 2021, 12:58 AM', 'login', 'Ex', 1, 'login', '2021-09-23 00:58:50', '2021-09-23 00:58:50'),
(235, 298, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 1:01 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 01:01:02', '2021-09-23 01:01:02'),
(236, 304, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 1:12 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 01:12:32', '2021-09-23 01:12:32'),
(237, 298, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 1:32 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 01:32:15', '2021-09-23 01:32:15'),
(238, 298, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 1:37 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 01:37:07', '2021-09-23 01:37:07'),
(239, 298, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 1:40 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 01:40:54', '2021-09-23 01:40:54'),
(240, 298, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 1:42 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 01:42:55', '2021-09-23 01:42:55'),
(241, 298, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 1:49 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 01:49:44', '2021-09-23 01:49:44'),
(242, 298, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 1:51 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 01:51:16', '2021-09-23 01:51:16'),
(243, 298, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 1:51 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 01:51:28', '2021-09-23 01:51:28'),
(244, 298, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 1:53 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 01:53:37', '2021-09-23 01:53:37'),
(245, 298, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 1:55 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 01:55:26', '2021-09-23 01:55:26'),
(246, 298, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 1:58 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 01:58:13', '2021-09-23 01:58:13'),
(247, 303, NULL, 'You have login successfully with Duradrive at September 23, 2021, 2:07 AM', 'login', 'Ex', 0, 'login', '2021-09-23 02:07:23', '2021-09-23 02:07:23'),
(248, 303, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 2:16 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-23 02:16:30', '2021-09-23 02:16:30'),
(249, 303, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 2:17 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-23 02:17:54', '2021-09-23 02:17:54'),
(250, 303, NULL, 'You have login successfully with Duradrive at September 23, 2021, 6:05 AM', 'login', 'Ex', 0, 'login', '2021-09-23 06:05:26', '2021-09-23 06:05:26'),
(251, 325, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 7:01 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 07:01:17', '2021-09-23 07:01:17'),
(252, 303, NULL, 'You have login successfully with Duradrive at September 23, 2021, 7:24 AM', 'login', 'Ex', 0, 'login', '2021-09-23 07:24:31', '2021-09-23 07:24:31'),
(253, 325, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 7:29 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 07:29:01', '2021-09-23 07:29:01'),
(254, 303, NULL, 'You have login successfully with Duradrive at September 23, 2021, 7:29 AM', 'login', 'Ex', 0, 'login', '2021-09-23 07:29:30', '2021-09-23 07:29:30'),
(255, 325, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 7:30 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 07:30:52', '2021-09-23 07:30:52'),
(256, 303, NULL, 'You have login successfully with Duradrive at September 23, 2021, 7:34 AM', 'login', 'Ex', 0, 'login', '2021-09-23 07:34:43', '2021-09-23 07:34:43'),
(257, 303, NULL, 'You have login successfully with Duradrive at September 23, 2021, 7:43 AM', 'login', 'Ex', 0, 'login', '2021-09-23 07:43:38', '2021-09-23 07:43:38'),
(258, 303, NULL, 'You have login successfully with Duradrive at September 23, 2021, 7:49 AM', 'login', 'Ex', 0, 'login', '2021-09-23 07:49:10', '2021-09-23 07:49:10'),
(259, 325, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 7:55 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 07:55:46', '2021-09-23 07:55:46'),
(260, 325, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 7:59 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 07:59:51', '2021-09-23 07:59:51'),
(261, 325, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 8:01 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 08:01:18', '2021-09-23 08:01:18'),
(262, 325, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 8:27 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 08:27:32', '2021-09-23 08:27:32'),
(263, 325, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 8:33 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 08:33:55', '2021-09-23 08:33:55'),
(264, 325, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 8:38 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 08:38:48', '2021-09-23 08:38:48'),
(265, 304, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 8:42 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 08:42:40', '2021-09-23 08:42:40'),
(266, 325, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 9:20 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 09:20:58', '2021-09-23 09:20:58'),
(267, 325, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 9:35 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 09:35:43', '2021-09-23 09:35:43'),
(268, 325, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 9:45 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 09:45:39', '2021-09-23 09:45:39'),
(269, 325, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 10:03 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 10:03:23', '2021-09-23 10:03:23'),
(270, 325, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 10:28 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 10:28:24', '2021-09-23 10:28:24'),
(271, 298, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 1:59 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 13:59:11', '2021-09-23 13:59:11'),
(272, 304, NULL, 'You have login successfully with Duradrive at September 23, 2021, 4:32 PM', 'login', 'Ex', 1, 'login', '2021-09-23 16:32:52', '2021-09-23 16:32:52');
INSERT INTO `notification` (`id`, `user_id`, `image`, `description`, `type`, `login_type`, `is_read`, `reason`, `created_at`, `updated_at`) VALUES
(273, 304, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 4:33 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 16:33:33', '2021-09-23 16:33:33'),
(274, 304, NULL, ' You have social update successfully with Duradrive at September 23, 2021, 4:37 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-23 16:37:11', '2021-09-23 16:37:11'),
(275, 331, NULL, ' You have social update successfully with Duradrive at September 23, 2021, 4:37 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-09-23 16:37:58', '2021-09-23 16:37:58'),
(276, 304, NULL, 'You have login successfully with Duradrive at September 23, 2021, 4:42 PM', 'login', 'Ex', 1, 'login', '2021-09-23 16:42:50', '2021-09-23 16:42:50'),
(277, 325, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 4:49 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 16:49:09', '2021-09-23 16:49:09'),
(278, 325, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 4:51 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 16:51:13', '2021-09-23 16:51:13'),
(279, 325, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 4:59 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 16:59:27', '2021-09-23 16:59:27'),
(280, 298, NULL, ' You have placed order successfully with Duradrive at September 23, 2021, 5:42 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-23 17:42:01', '2021-09-23 17:42:01'),
(281, 304, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 12:07 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 00:07:14', '2021-09-24 00:07:14'),
(282, 304, NULL, 'You have login successfully with Duradrive at September 24, 2021, 12:19 AM', 'login', 'Ex', 1, 'login', '2021-09-24 00:19:30', '2021-09-24 00:19:30'),
(283, 303, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 8:06 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-24 08:06:43', '2021-09-24 08:06:43'),
(284, 303, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 8:37 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-24 08:37:36', '2021-09-24 08:37:36'),
(285, 303, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 9:01 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-24 09:01:34', '2021-09-24 09:01:34'),
(286, 303, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 9:14 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-24 09:14:06', '2021-09-24 09:14:06'),
(287, 303, NULL, 'You have login successfully with Duradrive at September 24, 2021, 9:20 AM', 'login', 'Ex', 0, 'login', '2021-09-24 09:20:45', '2021-09-24 09:20:45'),
(288, 303, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 9:34 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-24 09:34:17', '2021-09-24 09:34:17'),
(289, 303, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 10:20 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-24 10:20:05', '2021-09-24 10:20:05'),
(290, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 11:58 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 11:58:38', '2021-09-24 11:58:38'),
(291, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 12:34 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 12:34:55', '2021-09-24 12:34:55'),
(292, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 12:36 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 12:36:08', '2021-09-24 12:36:08'),
(293, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 12:45 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 12:45:21', '2021-09-24 12:45:21'),
(294, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 1:13 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 13:13:40', '2021-09-24 13:13:40'),
(295, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 1:18 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 13:18:16', '2021-09-24 13:18:16'),
(296, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 1:29 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 13:29:51', '2021-09-24 13:29:51'),
(297, 303, NULL, 'You have login successfully with Duradrive at September 24, 2021, 1:46 PM', 'login', 'Ex', 0, 'login', '2021-09-24 13:46:32', '2021-09-24 13:46:32'),
(298, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 1:49 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 13:49:47', '2021-09-24 13:49:47'),
(299, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 2:18 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 14:18:00', '2021-09-24 14:18:00'),
(300, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 2:19 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 14:19:33', '2021-09-24 14:19:33'),
(301, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 2:21 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 14:21:30', '2021-09-24 14:21:30'),
(302, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 2:25 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 14:25:07', '2021-09-24 14:25:07'),
(303, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 2:29 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 14:29:24', '2021-09-24 14:29:24'),
(304, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 2:37 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 14:37:46', '2021-09-24 14:37:46'),
(305, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 2:41 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 14:41:52', '2021-09-24 14:41:52'),
(306, 303, NULL, 'You have login successfully with Duradrive at September 24, 2021, 3:00 PM', 'login', 'Ex', 0, 'login', '2021-09-24 15:00:36', '2021-09-24 15:00:36'),
(307, 303, NULL, 'You have login successfully with Duradrive at September 24, 2021, 3:01 PM', 'login', 'Ex', 0, 'login', '2021-09-24 15:01:44', '2021-09-24 15:01:44'),
(308, 298, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 3:29 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 15:29:12', '2021-09-24 15:29:12'),
(309, 298, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 3:34 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 15:34:16', '2021-09-24 15:34:16'),
(310, 304, NULL, 'You have login successfully with Duradrive at September 24, 2021, 3:34 PM', 'login', 'Ex', 1, 'login', '2021-09-24 15:34:18', '2021-09-24 15:34:18'),
(311, 298, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 3:36 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 15:36:09', '2021-09-24 15:36:09'),
(312, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 3:38 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 15:38:41', '2021-09-24 15:38:41'),
(313, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 3:39 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 15:39:10', '2021-09-24 15:39:10'),
(314, 298, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 3:39 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 15:39:59', '2021-09-24 15:39:59'),
(315, 298, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 3:40 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 15:40:49', '2021-09-24 15:40:49'),
(316, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 3:42 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 15:42:05', '2021-09-24 15:42:05'),
(317, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 3:44 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 15:44:30', '2021-09-24 15:44:30'),
(318, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 3:44 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 15:44:49', '2021-09-24 15:44:49'),
(319, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 3:47 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 15:47:45', '2021-09-24 15:47:45'),
(320, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 3:48 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 15:48:02', '2021-09-24 15:48:02'),
(321, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 3:48 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 15:48:21', '2021-09-24 15:48:21'),
(322, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 3:48 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 15:48:36', '2021-09-24 15:48:36'),
(323, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:07 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:07:03', '2021-09-24 16:07:03'),
(324, 298, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:19 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:19:01', '2021-09-24 16:19:01'),
(325, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:19 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:19:32', '2021-09-24 16:19:32'),
(326, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:19 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:19:48', '2021-09-24 16:19:48'),
(327, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:19 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:19:59', '2021-09-24 16:19:59'),
(328, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:20 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:20:13', '2021-09-24 16:20:13'),
(329, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:24 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:24:10', '2021-09-24 16:24:10'),
(330, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:24 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:24:55', '2021-09-24 16:24:55'),
(331, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:25 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:25:07', '2021-09-24 16:25:07'),
(332, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:25 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:25:43', '2021-09-24 16:25:43'),
(333, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:25 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:25:44', '2021-09-24 16:25:44'),
(334, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:25 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:25:59', '2021-09-24 16:25:59'),
(335, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:44 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:44:57', '2021-09-24 16:44:57'),
(336, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:45 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:45:13', '2021-09-24 16:45:13'),
(337, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:45 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:45:36', '2021-09-24 16:45:36'),
(338, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:46 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:46:32', '2021-09-24 16:46:32'),
(339, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:51 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:51:50', '2021-09-24 16:51:50'),
(340, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:52 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:52:06', '2021-09-24 16:52:06'),
(341, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:52 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:52:18', '2021-09-24 16:52:18'),
(342, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:52 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:52:41', '2021-09-24 16:52:41'),
(343, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 4:53 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 16:53:09', '2021-09-24 16:53:09'),
(344, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 5:07 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 17:07:38', '2021-09-24 17:07:38'),
(345, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 5:07 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 17:07:51', '2021-09-24 17:07:51'),
(346, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 5:08 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 17:08:07', '2021-09-24 17:08:07'),
(347, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 5:14 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 17:14:08', '2021-09-24 17:14:08'),
(348, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 5:14 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 17:14:21', '2021-09-24 17:14:21'),
(349, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 5:14 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 17:14:33', '2021-09-24 17:14:33'),
(350, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 5:14 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 17:14:49', '2021-09-24 17:14:49'),
(351, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 5:15 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 17:15:03', '2021-09-24 17:15:03'),
(352, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 5:15 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 17:15:19', '2021-09-24 17:15:19'),
(353, 298, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 5:31 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 17:31:17', '2021-09-24 17:31:17'),
(354, 298, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 5:32 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 17:32:10', '2021-09-24 17:32:10'),
(355, 298, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 5:36 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 17:36:24', '2021-09-24 17:36:24'),
(356, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 5:54 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 17:54:50', '2021-09-24 17:54:50'),
(357, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 6:30 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 18:30:49', '2021-09-24 18:30:49'),
(358, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 6:40 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 18:40:36', '2021-09-24 18:40:36'),
(359, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 7:14 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 19:14:36', '2021-09-24 19:14:36'),
(360, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 7:34 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 19:34:04', '2021-09-24 19:34:04'),
(361, 298, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 7:39 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 19:39:56', '2021-09-24 19:39:56'),
(362, 325, NULL, ' You have placed order successfully with Duradrive at September 24, 2021, 9:40 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-24 21:40:30', '2021-09-24 21:40:30'),
(363, 298, NULL, ' You have placed order successfully with Duradrive at September 25, 2021, 2:02 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-25 02:02:12', '2021-09-25 02:02:12'),
(364, 298, NULL, ' You have placed order successfully with Duradrive at September 25, 2021, 2:04 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-25 02:04:14', '2021-09-25 02:04:14'),
(365, 304, NULL, 'You have login successfully with Duradrive at September 25, 2021, 2:42 AM', 'login', 'Ex', 1, 'login', '2021-09-25 02:42:08', '2021-09-25 02:42:08'),
(366, 304, NULL, ' You have placed order successfully with Duradrive at September 25, 2021, 2:42 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-25 02:42:39', '2021-09-25 02:42:39'),
(367, 304, NULL, ' You have placed order successfully with Duradrive at September 25, 2021, 2:45 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-25 02:45:44', '2021-09-25 02:45:44'),
(368, 298, NULL, ' You have placed order successfully with Duradrive at September 25, 2021, 2:58 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-25 02:58:08', '2021-09-25 02:58:08'),
(369, 298, NULL, ' You have placed order successfully with Duradrive at September 25, 2021, 3:00 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-25 03:00:46', '2021-09-25 03:00:46'),
(370, 298, NULL, ' You have placed order successfully with Duradrive at September 25, 2021, 3:00 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-25 03:00:53', '2021-09-25 03:00:53'),
(371, 298, NULL, ' You have placed order successfully with Duradrive at September 25, 2021, 4:17 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-25 04:17:28', '2021-09-25 04:17:28'),
(372, 303, NULL, 'You have login successfully with Duradrive at September 25, 2021, 5:24 AM', 'login', 'Ex', 0, 'login', '2021-09-25 05:24:21', '2021-09-25 05:24:21'),
(373, 303, NULL, 'You have login successfully with Duradrive at September 25, 2021, 5:51 AM', 'login', 'Ex', 0, 'login', '2021-09-25 05:51:09', '2021-09-25 05:51:09'),
(374, 325, NULL, ' You have placed order successfully with Duradrive at September 25, 2021, 9:44 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-25 09:44:08', '2021-09-25 09:44:08'),
(375, 325, NULL, ' You have placed order successfully with Duradrive at September 25, 2021, 9:53 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-25 09:53:20', '2021-09-25 09:53:20'),
(376, 325, NULL, ' You have placed order successfully with Duradrive at September 25, 2021, 10:34 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-25 10:34:10', '2021-09-25 10:34:10'),
(377, 298, NULL, ' You have placed order successfully with Duradrive at September 25, 2021, 1:20 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-25 13:20:38', '2021-09-25 13:20:38'),
(378, 304, NULL, ' You have placed order successfully with Duradrive at September 25, 2021, 2:56 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-25 14:56:29', '2021-09-25 14:56:29'),
(379, 304, NULL, ' You have placed order successfully with Duradrive at September 25, 2021, 3:13 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-25 15:13:23', '2021-09-25 15:13:23'),
(380, 298, NULL, ' You have placed order successfully with Duradrive at September 25, 2021, 6:08 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-25 18:08:56', '2021-09-25 18:08:56'),
(381, 304, NULL, 'You have login successfully with Duradrive at September 26, 2021, 12:51 AM', 'login', 'Ex', 1, 'login', '2021-09-26 00:51:42', '2021-09-26 00:51:42'),
(382, 304, NULL, ' You have placed order successfully with Duradrive at September 26, 2021, 12:54 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-26 00:54:48', '2021-09-26 00:54:48'),
(383, 304, NULL, ' You have placed order successfully with Duradrive at September 26, 2021, 12:56 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-26 00:56:42', '2021-09-26 00:56:42'),
(384, 304, NULL, ' You have phone update successfully with Duradrive at September 26, 2021, 1:14 AM', 'phoneupdate', 'Ex', 1, 'phoneupdate', '2021-09-26 01:14:37', '2021-09-26 01:14:37'),
(385, 303, NULL, 'You have login successfully with Duradrive at September 26, 2021, 9:58 AM', 'login', 'Ex', 0, 'login', '2021-09-26 09:58:13', '2021-09-26 09:58:13'),
(386, 303, NULL, 'You have login successfully with Duradrive at September 26, 2021, 10:21 AM', 'login', 'Ex', 0, 'login', '2021-09-26 10:21:09', '2021-09-26 10:21:09'),
(387, 303, NULL, ' You have placed order successfully with Duradrive at September 26, 2021, 12:48 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-26 12:48:51', '2021-09-26 12:48:51'),
(388, 325, NULL, ' You have placed order successfully with Duradrive at September 26, 2021, 1:55 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-26 13:55:58', '2021-09-26 13:55:58'),
(389, 326, NULL, ' You have placed order successfully with Duradrive at September 27, 2021, 8:24 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-27 08:24:45', '2021-09-27 08:24:45'),
(390, 303, NULL, ' You have placed order successfully with Duradrive at September 27, 2021, 8:35 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-27 08:35:41', '2021-09-27 08:35:41'),
(391, 303, NULL, ' You have placed order successfully with Duradrive at September 27, 2021, 8:43 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-27 08:43:44', '2021-09-27 08:43:44'),
(392, 303, NULL, ' You have placed order successfully with Duradrive at September 27, 2021, 9:04 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-27 09:04:56', '2021-09-27 09:04:56'),
(393, 303, NULL, ' You have placed order successfully with Duradrive at September 27, 2021, 10:43 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-27 10:43:49', '2021-09-27 10:43:49'),
(394, 303, NULL, ' You have placed order successfully with Duradrive at September 27, 2021, 10:51 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-27 10:51:57', '2021-09-27 10:51:57'),
(395, 298, NULL, ' You have placed order successfully with Duradrive at September 27, 2021, 10:59 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-27 10:59:34', '2021-09-27 10:59:34'),
(396, 298, NULL, ' You have placed order successfully with Duradrive at September 27, 2021, 12:25 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-27 12:25:50', '2021-09-27 12:25:50'),
(397, 303, NULL, 'You have login successfully with Duradrive at September 27, 2021, 2:00 PM', 'login', 'Ex', 0, 'login', '2021-09-27 14:00:23', '2021-09-27 14:00:23'),
(398, 303, NULL, ' You have placed order successfully with Duradrive at September 27, 2021, 2:01 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-27 14:01:47', '2021-09-27 14:01:47'),
(399, 303, NULL, ' You have placed order successfully with Duradrive at September 27, 2021, 2:04 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-27 14:04:26', '2021-09-27 14:04:26'),
(400, 303, NULL, ' You have placed order successfully with Duradrive at September 27, 2021, 2:23 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-27 14:23:10', '2021-09-27 14:23:10'),
(401, 303, NULL, 'You have login successfully with Duradrive at September 27, 2021, 2:54 PM', 'login', 'Ex', 0, 'login', '2021-09-27 14:54:33', '2021-09-27 14:54:33'),
(402, 303, NULL, ' You have placed order successfully with Duradrive at September 27, 2021, 2:55 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-27 14:55:28', '2021-09-27 14:55:28'),
(403, 303, NULL, ' You have placed order successfully with Duradrive at September 27, 2021, 3:03 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-27 15:03:36', '2021-09-27 15:03:36'),
(404, 303, NULL, ' You have placed order successfully with Duradrive at September 27, 2021, 3:17 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-27 15:17:08', '2021-09-27 15:17:08'),
(405, 298, NULL, ' You have placed order successfully with Duradrive at September 27, 2021, 5:59 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-27 17:59:23', '2021-09-27 17:59:23'),
(406, 298, NULL, ' You have placed order successfully with Duradrive at September 27, 2021, 6:32 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-27 18:32:31', '2021-09-27 18:32:31'),
(407, 303, NULL, 'You have login successfully with Duradrive at September 28, 2021, 6:17 AM', 'login', 'Ex', 0, 'login', '2021-09-28 06:17:48', '2021-09-28 06:17:48'),
(408, 303, NULL, ' You have placed order successfully with Duradrive at September 28, 2021, 6:52 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-28 06:52:40', '2021-09-28 06:52:40'),
(409, 303, NULL, ' You have placed order successfully with Duradrive at September 28, 2021, 7:01 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-28 07:01:07', '2021-09-28 07:01:07'),
(410, 303, NULL, ' You have placed order successfully with Duradrive at September 28, 2021, 7:23 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-28 07:23:43', '2021-09-28 07:23:43'),
(411, 303, NULL, ' You have placed order successfully with Duradrive at September 28, 2021, 7:47 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-28 07:47:35', '2021-09-28 07:47:35'),
(412, 303, NULL, ' You have placed order successfully with Duradrive at September 28, 2021, 8:06 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-28 08:06:33', '2021-09-28 08:06:33'),
(413, 303, NULL, ' You have placed order successfully with Duradrive at September 28, 2021, 8:35 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-28 08:35:07', '2021-09-28 08:35:07'),
(414, 303, NULL, ' You have placed order successfully with Duradrive at September 28, 2021, 8:50 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-28 08:50:27', '2021-09-28 08:50:27'),
(415, 303, NULL, ' You have placed order successfully with Duradrive at September 28, 2021, 9:08 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-28 09:08:24', '2021-09-28 09:08:24'),
(416, 303, NULL, 'You have login successfully with Duradrive at September 29, 2021, 5:37 AM', 'login', 'Ex', 0, 'login', '2021-09-29 05:37:01', '2021-09-29 05:37:01'),
(417, 303, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 5:38 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 05:38:04', '2021-09-29 05:38:04'),
(418, 303, NULL, 'You have login successfully with Duradrive at September 29, 2021, 5:53 AM', 'login', 'Ex', 0, 'login', '2021-09-29 05:53:16', '2021-09-29 05:53:16'),
(419, 303, NULL, 'You have login successfully with Duradrive at September 29, 2021, 6:05 AM', 'login', 'Ex', 0, 'login', '2021-09-29 06:05:19', '2021-09-29 06:05:19'),
(420, 303, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 6:08 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 06:08:21', '2021-09-29 06:08:21'),
(421, 303, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 6:12 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 06:12:27', '2021-09-29 06:12:27'),
(422, 303, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 6:15 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 06:15:45', '2021-09-29 06:15:45'),
(423, 303, NULL, 'You have login successfully with Duradrive at September 29, 2021, 6:19 AM', 'login', 'Ex', 0, 'login', '2021-09-29 06:19:36', '2021-09-29 06:19:36'),
(424, 303, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 6:28 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 06:28:45', '2021-09-29 06:28:45'),
(425, 303, NULL, 'You have login successfully with Duradrive at September 29, 2021, 6:33 AM', 'login', 'Ex', 0, 'login', '2021-09-29 06:33:19', '2021-09-29 06:33:19'),
(426, 303, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 6:35 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 06:35:50', '2021-09-29 06:35:50'),
(427, 303, NULL, 'You have login successfully with Duradrive at September 29, 2021, 7:30 AM', 'login', 'Ex', 0, 'login', '2021-09-29 07:30:51', '2021-09-29 07:30:51'),
(428, 303, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 7:31 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 07:31:53', '2021-09-29 07:31:53'),
(429, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 9:40 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 09:40:53', '2021-09-29 09:40:53'),
(430, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 10:07 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 10:07:36', '2021-09-29 10:07:36'),
(431, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 10:13 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 10:13:45', '2021-09-29 10:13:45'),
(432, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 10:24 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 10:24:58', '2021-09-29 10:24:58'),
(433, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 10:26 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 10:26:29', '2021-09-29 10:26:29'),
(434, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 10:27 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 10:27:27', '2021-09-29 10:27:27'),
(435, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 10:34 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 10:34:14', '2021-09-29 10:34:14'),
(436, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 10:42 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 10:42:01', '2021-09-29 10:42:01'),
(437, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 10:50 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 10:50:56', '2021-09-29 10:50:56'),
(438, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 11:28 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 11:28:32', '2021-09-29 11:28:32'),
(439, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 11:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 11:29:50', '2021-09-29 11:29:50'),
(440, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 11:35 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 11:35:42', '2021-09-29 11:35:42'),
(441, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 11:39 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 11:39:21', '2021-09-29 11:39:21'),
(442, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 11:43 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 11:43:08', '2021-09-29 11:43:08'),
(443, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 12:21 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 12:21:34', '2021-09-29 12:21:34'),
(444, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 12:25 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 12:25:44', '2021-09-29 12:25:44'),
(445, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 12:29 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 12:29:04', '2021-09-29 12:29:04'),
(446, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 12:34 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 12:34:22', '2021-09-29 12:34:22'),
(447, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 12:39 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 12:39:54', '2021-09-29 12:39:54'),
(448, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 12:42 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 12:42:59', '2021-09-29 12:42:59'),
(449, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 1:18 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 13:18:27', '2021-09-29 13:18:27'),
(450, 304, NULL, 'You have login successfully with Duradrive at September 29, 2021, 2:53 PM', 'login', 'Ex', 1, 'login', '2021-09-29 14:53:38', '2021-09-29 14:53:38'),
(451, 1, NULL, ' You have address deleted successfully with Duradrive at September 29, 2021, 3:16 PM', 'addressdeleted', 'Ex', 0, 'addressdeleted', '2021-09-29 15:16:11', '2021-09-29 15:16:11'),
(452, 1, NULL, ' You have address deleted successfully with Duradrive at September 29, 2021, 3:16 PM', 'addressdeleted', 'Ex', 0, 'addressdeleted', '2021-09-29 15:16:15', '2021-09-29 15:16:15'),
(453, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 4:13 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 16:13:27', '2021-09-29 16:13:27'),
(454, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 4:17 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 16:17:02', '2021-09-29 16:17:02'),
(455, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 4:18 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 16:18:46', '2021-09-29 16:18:46'),
(456, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 4:31 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 16:31:24', '2021-09-29 16:31:24'),
(457, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 4:36 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 16:36:05', '2021-09-29 16:36:05'),
(458, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 4:36 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 16:36:42', '2021-09-29 16:36:42'),
(459, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 4:53 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 16:53:29', '2021-09-29 16:53:29'),
(460, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 4:56 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 16:56:05', '2021-09-29 16:56:05'),
(461, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 5:43 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 17:43:49', '2021-09-29 17:43:49'),
(462, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 5:48 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 17:48:07', '2021-09-29 17:48:07'),
(463, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 5:56 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 17:56:20', '2021-09-29 17:56:20'),
(464, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 5:57 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 17:57:35', '2021-09-29 17:57:35'),
(465, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 6:09 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 18:09:16', '2021-09-29 18:09:16'),
(466, 325, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 6:44 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-29 18:44:32', '2021-09-29 18:44:32'),
(467, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 7:00 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 19:00:05', '2021-09-29 19:00:05'),
(468, 298, NULL, ' You have placed order successfully with Duradrive at September 29, 2021, 7:04 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-29 19:04:58', '2021-09-29 19:04:58'),
(469, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 8:17 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 08:17:59', '2021-09-30 08:17:59'),
(470, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 8:20 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 08:20:51', '2021-09-30 08:20:51'),
(471, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 8:22 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 08:22:16', '2021-09-30 08:22:16'),
(472, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 8:25 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 08:25:44', '2021-09-30 08:25:44'),
(473, 325, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 9:53 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-30 09:53:30', '2021-09-30 09:53:30'),
(474, 325, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:08 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-30 10:08:18', '2021-09-30 10:08:18'),
(475, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:11 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 10:11:53', '2021-09-30 10:11:53'),
(476, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:12 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 10:12:16', '2021-09-30 10:12:16'),
(477, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:16 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 10:16:46', '2021-09-30 10:16:46'),
(478, 325, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:17 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-30 10:17:10', '2021-09-30 10:17:10'),
(479, 325, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:22 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-30 10:22:29', '2021-09-30 10:22:29'),
(480, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:22 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 10:22:44', '2021-09-30 10:22:44'),
(481, 325, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:23 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-30 10:23:27', '2021-09-30 10:23:27'),
(482, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:26 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 10:26:09', '2021-09-30 10:26:09'),
(483, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:26 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 10:26:57', '2021-09-30 10:26:57'),
(484, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:27 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 10:27:39', '2021-09-30 10:27:39'),
(485, 325, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:28 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-30 10:28:21', '2021-09-30 10:28:21'),
(486, 325, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:30 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-30 10:30:27', '2021-09-30 10:30:27'),
(487, 325, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:30 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-30 10:30:46', '2021-09-30 10:30:46'),
(488, 325, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:31 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-30 10:31:01', '2021-09-30 10:31:01'),
(489, 325, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:31 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-30 10:31:17', '2021-09-30 10:31:17'),
(490, 325, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:34 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-30 10:34:01', '2021-09-30 10:34:01'),
(491, 325, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:35 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-30 10:35:35', '2021-09-30 10:35:35'),
(492, 325, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:36 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-30 10:36:04', '2021-09-30 10:36:04'),
(493, 325, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:39 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-30 10:39:36', '2021-09-30 10:39:36'),
(494, 325, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:42 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-30 10:42:48', '2021-09-30 10:42:48'),
(495, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:45 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 10:45:53', '2021-09-30 10:45:53'),
(496, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:47 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 10:47:48', '2021-09-30 10:47:48'),
(497, 304, NULL, 'You have login successfully with Duradrive at September 30, 2021, 10:51 AM', 'login', 'Ex', 1, 'login', '2021-09-30 10:51:32', '2021-09-30 10:51:32'),
(498, 304, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:52 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 10:52:15', '2021-09-30 10:52:15'),
(499, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 10:52 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 10:52:34', '2021-09-30 10:52:34'),
(500, 298, NULL, ' You have add card successfully with Duradrive at September 30, 2021, 11:02 AM', 'addcard', 'Ex', 1, 'addcard', '2021-09-30 11:02:27', '2021-09-30 11:02:27'),
(501, 304, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 11:06 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 11:06:10', '2021-09-30 11:06:10'),
(502, 298, NULL, ' You have social update successfully with Duradrive at September 30, 2021, 11:14 AM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-30 11:14:39', '2021-09-30 11:14:39'),
(503, 298, NULL, ' You have social update successfully with Duradrive at September 30, 2021, 11:23 AM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-30 11:23:17', '2021-09-30 11:23:17'),
(504, 304, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 2:54 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 14:54:31', '2021-09-30 14:54:31'),
(505, 304, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 3:02 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 15:02:54', '2021-09-30 15:02:54'),
(506, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 3:40 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 15:40:07', '2021-09-30 15:40:07'),
(507, 298, NULL, ' You have add card successfully with Duradrive at September 30, 2021, 3:41 PM', 'addcard', 'Ex', 1, 'addcard', '2021-09-30 15:41:50', '2021-09-30 15:41:50'),
(508, 298, NULL, ' You have card deleted successfully with Duradrive at September 30, 2021, 3:41 PM', 'carddeleted', 'Ex', 1, 'carddeleted', '2021-09-30 15:41:56', '2021-09-30 15:41:56'),
(509, 304, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 3:44 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-09-30 15:44:14', '2021-09-30 15:44:14'),
(510, 326, NULL, ' You have social update successfully with Duradrive at September 30, 2021, 4:20 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-30 16:20:09', '2021-09-30 16:20:09'),
(511, 326, NULL, ' You have social update successfully with Duradrive at September 30, 2021, 4:21 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-09-30 16:21:40', '2021-09-30 16:21:40'),
(512, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 5:11 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 17:11:18', '2021-09-30 17:11:18'),
(513, 298, NULL, ' You have address deleted successfully with Duradrive at September 30, 2021, 5:17 PM', 'addressdeleted', 'Ex', 1, 'addressdeleted', '2021-09-30 17:17:18', '2021-09-30 17:17:18'),
(514, 298, NULL, ' You have address deleted successfully with Duradrive at September 30, 2021, 5:17 PM', 'addressdeleted', 'Ex', 1, 'addressdeleted', '2021-09-30 17:17:26', '2021-09-30 17:17:26'),
(515, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 5:43 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 17:43:10', '2021-09-30 17:43:10'),
(516, 298, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 5:51 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 17:51:55', '2021-09-30 17:51:55'),
(517, 326, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 5:57 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 17:57:46', '2021-09-30 17:57:46'),
(518, 326, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 6:05 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 18:05:20', '2021-09-30 18:05:20'),
(519, 326, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 6:28 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 18:28:52', '2021-09-30 18:28:52'),
(520, 326, NULL, ' You have placed order successfully with Duradrive at September 30, 2021, 6:39 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-09-30 18:39:59', '2021-09-30 18:39:59'),
(521, 326, NULL, ' You have update user name successfully with Duradrive at September 30, 2021, 8:18 PM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-09-30 20:18:29', '2021-09-30 20:18:29'),
(522, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 12:33 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 00:33:48', '2021-10-01 00:33:48'),
(523, 304, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 2:06 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-01 02:06:18', '2021-10-01 02:06:18'),
(524, 303, NULL, 'You have login successfully with Duradrive at October 1, 2021, 7:12 AM', 'login', 'Ex', 0, 'login', '2021-10-01 07:12:45', '2021-10-01 07:12:45'),
(525, 303, NULL, 'You have login successfully with Duradrive at October 1, 2021, 7:17 AM', 'login', 'Ex', 0, 'login', '2021-10-01 07:17:51', '2021-10-01 07:17:51'),
(526, 303, NULL, 'You have login successfully with Duradrive at October 1, 2021, 7:21 AM', 'login', 'Ex', 0, 'login', '2021-10-01 07:21:31', '2021-10-01 07:21:31'),
(527, 303, NULL, 'You have login successfully with Duradrive at October 1, 2021, 7:24 AM', 'login', 'Ex', 0, 'login', '2021-10-01 07:24:29', '2021-10-01 07:24:29'),
(528, 303, NULL, 'You have login successfully with Duradrive at October 1, 2021, 7:28 AM', 'login', 'Ex', 0, 'login', '2021-10-01 07:28:00', '2021-10-01 07:28:00'),
(529, 303, NULL, ' You have update user name successfully with Duradrive at October 1, 2021, 7:38 AM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-10-01 07:38:01', '2021-10-01 07:38:01'),
(530, 303, NULL, ' You have update user name successfully with Duradrive at October 1, 2021, 7:38 AM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-10-01 07:38:43', '2021-10-01 07:38:43'),
(531, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 7:45 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 07:45:08', '2021-10-01 07:45:08'),
(532, 303, NULL, ' You have updated docs successfully with Duradrive at October 1, 2021, 8:26 AM', 'updatedocs', 'Ex', 0, 'updatedocs', '2021-10-01 08:26:43', '2021-10-01 08:26:43'),
(533, 303, NULL, ' You have update user name successfully with Duradrive at October 1, 2021, 11:02 AM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-10-01 11:02:11', '2021-10-01 11:02:11'),
(534, 303, NULL, ' You have update user name successfully with Duradrive at October 1, 2021, 11:16 AM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-10-01 11:16:55', '2021-10-01 11:16:55'),
(535, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 11:30 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 11:30:11', '2021-10-01 11:30:11'),
(536, 325, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 12:10 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-01 12:10:14', '2021-10-01 12:10:14'),
(537, 325, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 12:11 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-01 12:11:01', '2021-10-01 12:11:01'),
(538, 325, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 4:45 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-01 16:45:45', '2021-10-01 16:45:45'),
(539, 325, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 4:57 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-01 16:57:30', '2021-10-01 16:57:30'),
(540, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 5:07 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 17:07:19', '2021-10-01 17:07:19'),
(541, 304, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 5:13 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-01 17:13:38', '2021-10-01 17:13:38'),
(542, 325, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 5:33 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-01 17:33:27', '2021-10-01 17:33:27');
INSERT INTO `notification` (`id`, `user_id`, `image`, `description`, `type`, `login_type`, `is_read`, `reason`, `created_at`, `updated_at`) VALUES
(543, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 5:33 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 17:33:40', '2021-10-01 17:33:40'),
(544, 325, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 5:58 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-01 17:58:12', '2021-10-01 17:58:12'),
(545, 325, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 6:05 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-01 18:05:27', '2021-10-01 18:05:27'),
(546, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 6:09 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 18:09:18', '2021-10-01 18:09:18'),
(547, 298, NULL, ' You have update user name successfully with Duradrive at October 1, 2021, 6:13 PM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-01 18:13:58', '2021-10-01 18:13:58'),
(548, 298, NULL, ' You have update user name successfully with Duradrive at October 1, 2021, 6:14 PM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-01 18:14:39', '2021-10-01 18:14:39'),
(549, 325, NULL, ' You have update user name successfully with Duradrive at October 1, 2021, 6:17 PM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-10-01 18:17:52', '2021-10-01 18:17:52'),
(550, 298, NULL, ' You have update user name successfully with Duradrive at October 1, 2021, 6:24 PM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-01 18:24:58', '2021-10-01 18:24:58'),
(551, 304, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 6:25 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-01 18:25:07', '2021-10-01 18:25:07'),
(552, 298, NULL, ' You have update user name successfully with Duradrive at October 1, 2021, 6:25 PM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-01 18:25:40', '2021-10-01 18:25:40'),
(553, 298, NULL, ' You have update user name successfully with Duradrive at October 1, 2021, 6:26 PM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-01 18:26:22', '2021-10-01 18:26:22'),
(554, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 6:28 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 18:28:27', '2021-10-01 18:28:27'),
(555, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 6:31 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 18:31:40', '2021-10-01 18:31:40'),
(556, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 6:32 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 18:32:40', '2021-10-01 18:32:40'),
(557, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 6:34 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 18:34:15', '2021-10-01 18:34:15'),
(558, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 6:37 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 18:37:08', '2021-10-01 18:37:08'),
(559, 325, NULL, ' You have update user name successfully with Duradrive at October 1, 2021, 6:41 PM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-10-01 18:41:17', '2021-10-01 18:41:17'),
(560, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 6:45 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 18:45:18', '2021-10-01 18:45:18'),
(561, 325, NULL, ' You have update user name successfully with Duradrive at October 1, 2021, 6:45 PM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-10-01 18:45:42', '2021-10-01 18:45:42'),
(562, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 6:48 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 18:48:08', '2021-10-01 18:48:08'),
(563, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 6:59 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 18:59:46', '2021-10-01 18:59:46'),
(564, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 7:02 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 19:02:55', '2021-10-01 19:02:55'),
(565, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 7:07 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 19:07:08', '2021-10-01 19:07:08'),
(566, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 7:12 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 19:12:53', '2021-10-01 19:12:53'),
(567, 298, NULL, ' You have update user name successfully with Duradrive at October 1, 2021, 7:16 PM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-01 19:16:40', '2021-10-01 19:16:40'),
(568, 298, NULL, ' You have update user name successfully with Duradrive at October 1, 2021, 7:50 PM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-01 19:50:56', '2021-10-01 19:50:56'),
(569, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 8:06 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 20:06:54', '2021-10-01 20:06:54'),
(570, 298, NULL, ' You have placed order successfully with Duradrive at October 1, 2021, 8:08 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-01 20:08:16', '2021-10-01 20:08:16'),
(571, 304, NULL, 'You have login successfully with Duradrive at October 2, 2021, 1:27 AM', 'login', 'Ex', 0, 'login', '2021-10-02 01:27:08', '2021-10-02 01:27:08'),
(572, 331, NULL, ' You have placed order successfully with Duradrive at October 2, 2021, 2:18 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-02 02:18:45', '2021-10-02 02:18:45'),
(573, 332, NULL, ' You have placed order successfully with Duradrive at October 2, 2021, 2:19 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-02 02:19:54', '2021-10-02 02:19:54'),
(574, 298, NULL, ' You have placed order successfully with Duradrive at October 2, 2021, 2:23 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-02 02:23:36', '2021-10-02 02:23:36'),
(575, 298, NULL, ' You have placed order successfully with Duradrive at October 2, 2021, 2:24 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-02 02:24:36', '2021-10-02 02:24:36'),
(576, 304, NULL, 'You have login successfully with Duradrive at October 2, 2021, 2:32 AM', 'login', 'Ex', 0, 'login', '2021-10-02 02:32:26', '2021-10-02 02:32:26'),
(577, 304, NULL, 'You have login successfully with Duradrive at October 2, 2021, 2:38 AM', 'login', 'Ex', 0, 'login', '2021-10-02 02:38:30', '2021-10-02 02:38:30'),
(578, 304, NULL, 'You have login successfully with Duradrive at October 2, 2021, 2:44 AM', 'login', 'Ex', 0, 'login', '2021-10-02 02:44:41', '2021-10-02 02:44:41'),
(579, 304, NULL, 'You have login successfully with Duradrive at October 2, 2021, 2:49 AM', 'login', 'Ex', 0, 'login', '2021-10-02 02:49:13', '2021-10-02 02:49:13'),
(580, 298, NULL, ' You have placed order successfully with Duradrive at October 2, 2021, 2:52 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-02 02:52:14', '2021-10-02 02:52:14'),
(581, 298, NULL, ' You have placed order successfully with Duradrive at October 2, 2021, 2:57 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-02 02:57:35', '2021-10-02 02:57:35'),
(582, 298, NULL, ' You have update user name successfully with Duradrive at October 2, 2021, 2:58 AM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-02 02:58:41', '2021-10-02 02:58:41'),
(583, 298, NULL, ' You have add card successfully with Duradrive at October 2, 2021, 2:59 AM', 'addcard', 'Ex', 1, 'addcard', '2021-10-02 02:59:32', '2021-10-02 02:59:32'),
(584, 298, NULL, ' You have card deleted successfully with Duradrive at October 2, 2021, 2:59 AM', 'carddeleted', 'Ex', 1, 'carddeleted', '2021-10-02 02:59:39', '2021-10-02 02:59:39'),
(585, 304, NULL, 'You have login successfully with Duradrive at October 2, 2021, 3:21 AM', 'login', 'Ex', 0, 'login', '2021-10-02 03:21:48', '2021-10-02 03:21:48'),
(586, 331, NULL, ' You have placed order successfully with Duradrive at October 2, 2021, 3:25 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-02 03:25:50', '2021-10-02 03:25:50'),
(587, 331, NULL, ' You have placed order successfully with Duradrive at October 2, 2021, 4:15 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-02 04:15:04', '2021-10-02 04:15:04'),
(588, 298, NULL, ' You have address deleted successfully with Duradrive at October 2, 2021, 4:18 AM', 'addressdeleted', 'Ex', 1, 'addressdeleted', '2021-10-02 04:18:54', '2021-10-02 04:18:54'),
(589, 298, NULL, ' You have placed order successfully with Duradrive at October 2, 2021, 5:11 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-02 05:11:41', '2021-10-02 05:11:41'),
(590, 303, NULL, 'You have login successfully with Duradrive at October 2, 2021, 5:22 AM', 'login', 'Ex', 0, 'login', '2021-10-02 05:22:27', '2021-10-02 05:22:27'),
(591, 298, NULL, ' You have placed order successfully with Duradrive at October 2, 2021, 5:22 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-02 05:22:38', '2021-10-02 05:22:38'),
(592, 303, NULL, 'You have login successfully with Duradrive at October 2, 2021, 6:45 AM', 'login', 'Ex', 0, 'login', '2021-10-02 06:45:34', '2021-10-02 06:45:34'),
(593, 298, NULL, ' You have add card successfully with Duradrive at October 2, 2021, 6:48 AM', 'addcard', 'Ex', 1, 'addcard', '2021-10-02 06:48:18', '2021-10-02 06:48:18'),
(594, 331, NULL, ' You have placed order successfully with Duradrive at October 2, 2021, 7:23 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-02 07:23:58', '2021-10-02 07:23:58'),
(595, 325, NULL, ' You have address deleted successfully with Duradrive at October 2, 2021, 7:31 AM', 'addressdeleted', 'Ex', 0, 'addressdeleted', '2021-10-02 07:31:57', '2021-10-02 07:31:57'),
(596, 325, NULL, ' You have address deleted successfully with Duradrive at October 2, 2021, 7:31 AM', 'addressdeleted', 'Ex', 0, 'addressdeleted', '2021-10-02 07:31:59', '2021-10-02 07:31:59'),
(597, 325, NULL, ' You have address deleted successfully with Duradrive at October 2, 2021, 7:32 AM', 'addressdeleted', 'Ex', 0, 'addressdeleted', '2021-10-02 07:32:01', '2021-10-02 07:32:01'),
(598, 325, NULL, ' You have address deleted successfully with Duradrive at October 2, 2021, 7:32 AM', 'addressdeleted', 'Ex', 0, 'addressdeleted', '2021-10-02 07:32:03', '2021-10-02 07:32:03'),
(599, 325, NULL, ' You have address update successfully with Duradrive at October 2, 2021, 7:33 AM', 'addressupdate', 'Ex', 0, 'addressupdate', '2021-10-02 07:33:32', '2021-10-02 07:33:32'),
(600, 325, NULL, ' You have address update successfully with Duradrive at October 2, 2021, 7:33 AM', 'addressupdate', 'Ex', 0, 'addressupdate', '2021-10-02 07:33:48', '2021-10-02 07:33:48'),
(601, 303, NULL, 'You have login successfully with Duradrive at October 2, 2021, 7:56 AM', 'login', 'Ex', 0, 'login', '2021-10-02 07:56:50', '2021-10-02 07:56:50'),
(602, 303, NULL, ' You have placed order successfully with Duradrive at October 2, 2021, 8:07 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-02 08:07:53', '2021-10-02 08:07:53'),
(603, 331, NULL, ' You have placed order successfully with Duradrive at October 2, 2021, 9:01 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-02 09:01:29', '2021-10-02 09:01:29'),
(604, 326, NULL, ' You have country update successfully with Duradrive at October 2, 2021, 9:20 AM', 'countryupdate', 'Ex', 1, 'countryupdate', '2021-10-02 09:20:29', '2021-10-02 09:20:29'),
(605, 325, NULL, ' You have country update successfully with Duradrive at October 2, 2021, 10:04 AM', 'countryupdate', 'Ex', 0, 'countryupdate', '2021-10-02 10:04:44', '2021-10-02 10:04:44'),
(606, 325, NULL, ' You have country update successfully with Duradrive at October 2, 2021, 12:59 PM', 'countryupdate', 'Ex', 0, 'countryupdate', '2021-10-02 12:59:26', '2021-10-02 12:59:26'),
(607, 325, NULL, ' You have country update successfully with Duradrive at October 2, 2021, 2:29 PM', 'countryupdate', 'Ex', 0, 'countryupdate', '2021-10-02 14:29:09', '2021-10-02 14:29:09'),
(608, 325, NULL, ' You have country update successfully with Duradrive at October 2, 2021, 2:30 PM', 'countryupdate', 'Ex', 0, 'countryupdate', '2021-10-02 14:30:20', '2021-10-02 14:30:20'),
(609, 325, NULL, ' You have country update successfully with Duradrive at October 2, 2021, 2:33 PM', 'countryupdate', 'Ex', 0, 'countryupdate', '2021-10-02 14:33:30', '2021-10-02 14:33:30'),
(610, 325, NULL, ' You have update user name successfully with Duradrive at October 2, 2021, 2:33 PM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-10-02 14:33:48', '2021-10-02 14:33:48'),
(611, 298, NULL, ' You have placed order successfully with Duradrive at October 2, 2021, 8:07 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-02 20:07:11', '2021-10-02 20:07:11'),
(612, 298, NULL, ' You have placed order successfully with Duradrive at October 2, 2021, 8:10 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-02 20:10:20', '2021-10-02 20:10:20'),
(613, 326, NULL, ' You have country update successfully with Duradrive at October 3, 2021, 3:01 AM', 'countryupdate', 'Ex', 0, 'countryupdate', '2021-10-03 03:01:06', '2021-10-03 03:01:06'),
(614, 333, NULL, 'You have register successfully with Duradrive atOctober 3, 2021, 3:14 AM', 'registration', 'Ex', 0, 'registration', '2021-10-03 03:14:25', '2021-10-03 03:14:25'),
(615, 333, NULL, 'You have login successfully with Duradrive at October 3, 2021, 4:17 AM', 'login', 'Ex', 0, 'login', '2021-10-03 04:17:26', '2021-10-03 04:17:26'),
(616, 334, NULL, 'You have register successfully with Duradrive atOctober 3, 2021, 5:19 AM', 'registration', 'Ex', 1, 'registration', '2021-10-03 05:19:44', '2021-10-03 05:19:44'),
(617, 334, NULL, 'You have login successfully with Duradrive at October 3, 2021, 5:20 AM', 'login', 'Ex', 1, 'login', '2021-10-03 05:20:10', '2021-10-03 05:20:10'),
(618, 334, NULL, ' You have add card successfully with Duradrive at October 3, 2021, 5:29 AM', 'addcard', 'Ex', 1, 'addcard', '2021-10-03 05:29:46', '2021-10-03 05:29:46'),
(619, 334, NULL, ' You have social update successfully with Duradrive at October 3, 2021, 5:32 AM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-03 05:32:38', '2021-10-03 05:32:38'),
(620, 334, NULL, 'You have login successfully with Duradrive at October 3, 2021, 5:33 AM', 'login', 'Ex', 1, 'login', '2021-10-03 05:33:31', '2021-10-03 05:33:31'),
(621, 334, NULL, 'You have login successfully with Duradrive at October 3, 2021, 5:38 AM', 'login', 'Ex', 1, 'login', '2021-10-03 05:38:18', '2021-10-03 05:38:18'),
(622, 334, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 5:46 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-03 05:46:55', '2021-10-03 05:46:55'),
(623, 333, NULL, 'You have login successfully with Duradrive at October 3, 2021, 7:05 AM', 'login', 'Ex', 0, 'login', '2021-10-03 07:05:04', '2021-10-03 07:05:04'),
(624, 333, NULL, 'You have login successfully with Duradrive at October 3, 2021, 7:08 AM', 'login', 'Ex', 0, 'login', '2021-10-03 07:08:43', '2021-10-03 07:08:43'),
(625, 333, NULL, 'You have login successfully with Duradrive at October 3, 2021, 7:15 AM', 'login', 'Ex', 0, 'login', '2021-10-03 07:15:42', '2021-10-03 07:15:42'),
(626, 333, NULL, 'You have login successfully with Duradrive at October 3, 2021, 7:19 AM', 'login', 'Ex', 0, 'login', '2021-10-03 07:19:25', '2021-10-03 07:19:25'),
(627, 333, NULL, 'You have login successfully with Duradrive at October 3, 2021, 7:21 AM', 'login', 'Ex', 0, 'login', '2021-10-03 07:21:57', '2021-10-03 07:21:57'),
(628, 333, NULL, 'You have login successfully with Duradrive at October 3, 2021, 7:40 AM', 'login', 'Ex', 0, 'login', '2021-10-03 07:40:20', '2021-10-03 07:40:20'),
(629, 333, NULL, ' You have social update successfully with Duradrive at October 3, 2021, 7:47 AM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-03 07:47:36', '2021-10-03 07:47:36'),
(630, 333, NULL, ' You have social update successfully with Duradrive at October 3, 2021, 7:47 AM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-03 07:47:47', '2021-10-03 07:47:47'),
(631, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 7:50 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 07:50:21', '2021-10-03 07:50:21'),
(632, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 7:56 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 07:56:08', '2021-10-03 07:56:08'),
(633, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 8:00 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 08:00:22', '2021-10-03 08:00:22'),
(634, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 8:10 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 08:10:24', '2021-10-03 08:10:24'),
(635, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 8:17 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 08:17:26', '2021-10-03 08:17:26'),
(636, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 8:19 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 08:19:06', '2021-10-03 08:19:06'),
(637, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 8:25 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 08:25:06', '2021-10-03 08:25:06'),
(638, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 8:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 08:29:27', '2021-10-03 08:29:27'),
(639, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 8:43 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 08:43:45', '2021-10-03 08:43:45'),
(640, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 8:53 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 08:53:50', '2021-10-03 08:53:50'),
(641, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 9:12 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 09:12:00', '2021-10-03 09:12:00'),
(642, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 9:28 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 09:28:29', '2021-10-03 09:28:29'),
(643, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 9:37 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 09:37:35', '2021-10-03 09:37:35'),
(644, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 9:52 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 09:52:40', '2021-10-03 09:52:40'),
(645, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 9:59 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 09:59:39', '2021-10-03 09:59:39'),
(646, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 10:07 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 10:07:38', '2021-10-03 10:07:38'),
(647, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 10:38 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 10:38:23', '2021-10-03 10:38:23'),
(648, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 10:59 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 10:59:28', '2021-10-03 10:59:28'),
(649, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 11:08 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 11:08:39', '2021-10-03 11:08:39'),
(650, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 11:17 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 11:17:10', '2021-10-03 11:17:10'),
(651, 333, NULL, 'You have login successfully with Duradrive at October 3, 2021, 12:57 PM', 'login', 'Ex', 0, 'login', '2021-10-03 12:57:09', '2021-10-03 12:57:09'),
(652, 333, NULL, 'You have login successfully with Duradrive at October 3, 2021, 1:13 PM', 'login', 'Ex', 0, 'login', '2021-10-03 13:13:07', '2021-10-03 13:13:07'),
(653, 325, NULL, ' You have card deleted successfully with Duradrive at October 3, 2021, 1:48 PM', 'carddeleted', 'Ex', 0, 'carddeleted', '2021-10-03 13:48:44', '2021-10-03 13:48:44'),
(654, 325, NULL, ' You have add card successfully with Duradrive at October 3, 2021, 3:21 PM', 'addcard', 'Ex', 0, 'addcard', '2021-10-03 15:21:29', '2021-10-03 15:21:29'),
(655, 325, NULL, ' You have card deleted successfully with Duradrive at October 3, 2021, 3:21 PM', 'carddeleted', 'Ex', 0, 'carddeleted', '2021-10-03 15:21:35', '2021-10-03 15:21:35'),
(656, 333, NULL, 'You have login successfully with Duradrive at October 3, 2021, 3:25 PM', 'login', 'Ex', 0, 'login', '2021-10-03 15:25:19', '2021-10-03 15:25:19'),
(657, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 3:26 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 15:26:24', '2021-10-03 15:26:24'),
(658, 333, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 3:57 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-03 15:57:22', '2021-10-03 15:57:22'),
(659, 333, NULL, 'You have login successfully with Duradrive at October 3, 2021, 4:23 PM', 'login', 'Ex', 0, 'login', '2021-10-03 16:23:06', '2021-10-03 16:23:06'),
(660, 334, NULL, 'You have login successfully with Duradrive at October 3, 2021, 8:16 PM', 'login', 'Ex', 1, 'login', '2021-10-03 20:16:25', '2021-10-03 20:16:25'),
(661, 334, NULL, 'You have login successfully with Duradrive at October 3, 2021, 8:16 PM', 'login', 'Ex', 1, 'login', '2021-10-03 20:16:52', '2021-10-03 20:16:52'),
(662, 334, NULL, ' You have update user name successfully with Duradrive at October 3, 2021, 8:20 PM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-03 20:20:05', '2021-10-03 20:20:05'),
(663, 334, NULL, ' You have social update successfully with Duradrive at October 3, 2021, 8:22 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-03 20:22:46', '2021-10-03 20:22:46'),
(664, 334, NULL, ' You have add card successfully with Duradrive at October 3, 2021, 8:25 PM', 'addcard', 'Ex', 1, 'addcard', '2021-10-03 20:25:06', '2021-10-03 20:25:06'),
(665, 334, NULL, ' You have placed order successfully with Duradrive at October 3, 2021, 8:34 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-03 20:34:47', '2021-10-03 20:34:47'),
(666, 149, NULL, ' You have phone update successfully with Duradrive at October 4, 2021, 1:32 PM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-10-04 13:32:16', '2021-10-04 13:32:16'),
(667, 1, NULL, ' You have phone update successfully with Duradrive at October 4, 2021, 2:08 PM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-10-04 14:08:11', '2021-10-04 14:08:11'),
(668, 1, NULL, ' You have phone update successfully with Duradrive at October 4, 2021, 2:09 PM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-10-04 14:09:22', '2021-10-04 14:09:22'),
(669, 333, NULL, ' You have placed order successfully with Duradrive at October 4, 2021, 3:48 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-04 15:48:59', '2021-10-04 15:48:59'),
(670, 333, NULL, ' You have placed order successfully with Duradrive at October 4, 2021, 5:17 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-04 17:17:20', '2021-10-04 17:17:20'),
(671, 333, NULL, ' You have social update successfully with Duradrive at October 4, 2021, 5:50 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-04 17:50:40', '2021-10-04 17:50:40'),
(672, 333, NULL, ' You have social update successfully with Duradrive at October 4, 2021, 5:51 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-04 17:51:59', '2021-10-04 17:51:59'),
(673, 334, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 4:16 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-05 04:16:12', '2021-10-05 04:16:12'),
(674, 334, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 4:16 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-05 04:16:53', '2021-10-05 04:16:53'),
(675, 334, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 4:17 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-05 04:17:07', '2021-10-05 04:17:07'),
(676, 334, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 4:21 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-05 04:21:44', '2021-10-05 04:21:44'),
(677, 334, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 4:22 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-05 04:22:04', '2021-10-05 04:22:04'),
(678, 334, NULL, 'You have login successfully with Duradrive at October 5, 2021, 5:31 AM', 'login', 'Ex', 1, 'login', '2021-10-05 05:31:56', '2021-10-05 05:31:56'),
(679, 334, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 5:32 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-05 05:32:43', '2021-10-05 05:32:43'),
(680, 303, NULL, 'You have login successfully with Duradrive at October 5, 2021, 6:38 AM', 'login', 'Ex', 0, 'login', '2021-10-05 06:38:54', '2021-10-05 06:38:54'),
(681, 328, NULL, ' You have social update successfully with Duradrive at October 5, 2021, 6:57 AM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-05 06:57:35', '2021-10-05 06:57:35'),
(682, 303, NULL, 'You have login successfully with Duradrive at October 5, 2021, 7:31 AM', 'login', 'Ex', 0, 'login', '2021-10-05 07:31:28', '2021-10-05 07:31:28'),
(683, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 7:39 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 07:39:13', '2021-10-05 07:39:13'),
(684, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 7:42 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 07:42:35', '2021-10-05 07:42:35'),
(685, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 7:43 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 07:43:48', '2021-10-05 07:43:48'),
(686, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 7:49 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 07:49:06', '2021-10-05 07:49:06'),
(687, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 7:56 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 07:56:48', '2021-10-05 07:56:48'),
(688, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 7:57 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 07:57:41', '2021-10-05 07:57:41'),
(689, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 8:00 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 08:00:05', '2021-10-05 08:00:05'),
(690, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 8:01 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 08:01:50', '2021-10-05 08:01:50'),
(691, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 8:17 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 08:17:56', '2021-10-05 08:17:56'),
(692, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 8:18 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 08:18:18', '2021-10-05 08:18:18'),
(693, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 8:27 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 08:27:24', '2021-10-05 08:27:24'),
(694, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 8:30 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 08:30:57', '2021-10-05 08:30:57'),
(695, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 8:33 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 08:33:09', '2021-10-05 08:33:09'),
(696, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 8:38 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 08:38:56', '2021-10-05 08:38:56'),
(697, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 8:39 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 08:39:32', '2021-10-05 08:39:32'),
(698, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 8:52 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 08:52:46', '2021-10-05 08:52:46'),
(699, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 8:53 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 08:53:32', '2021-10-05 08:53:32'),
(700, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 8:53 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 08:53:59', '2021-10-05 08:53:59'),
(701, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 8:55 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 08:55:46', '2021-10-05 08:55:46'),
(702, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 9:00 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 09:00:46', '2021-10-05 09:00:46'),
(703, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 9:01 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 09:01:43', '2021-10-05 09:01:43'),
(704, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 9:04 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 09:04:56', '2021-10-05 09:04:56'),
(705, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 9:05 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 09:05:28', '2021-10-05 09:05:28'),
(706, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 9:06 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 09:06:29', '2021-10-05 09:06:29'),
(707, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 9:14 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 09:14:30', '2021-10-05 09:14:30'),
(708, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 9:19 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 09:19:49', '2021-10-05 09:19:49'),
(709, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 9:23 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 09:23:38', '2021-10-05 09:23:38'),
(710, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 9:24 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 09:24:16', '2021-10-05 09:24:16'),
(711, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 9:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 09:29:49', '2021-10-05 09:29:49'),
(712, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 9:34 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 09:34:14', '2021-10-05 09:34:14'),
(713, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 9:39 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 09:39:01', '2021-10-05 09:39:01'),
(714, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 9:47 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 09:47:55', '2021-10-05 09:47:55'),
(715, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 9:48 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 09:48:59', '2021-10-05 09:48:59'),
(716, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 9:53 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 09:53:22', '2021-10-05 09:53:22'),
(717, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 9:54 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 09:54:05', '2021-10-05 09:54:05'),
(718, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 10:21 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 10:21:09', '2021-10-05 10:21:09'),
(719, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 10:21 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 10:21:59', '2021-10-05 10:21:59'),
(720, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 10:25 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 10:25:26', '2021-10-05 10:25:26'),
(721, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 2:44 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 14:44:38', '2021-10-05 14:44:38'),
(722, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 2:45 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 14:45:22', '2021-10-05 14:45:22'),
(723, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 2:53 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 14:53:34', '2021-10-05 14:53:34'),
(724, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 2:59 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 14:59:06', '2021-10-05 14:59:06'),
(725, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 3:05 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 15:05:44', '2021-10-05 15:05:44'),
(726, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 3:07 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 15:07:19', '2021-10-05 15:07:19'),
(727, 303, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 3:22 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 15:22:43', '2021-10-05 15:22:43'),
(728, 333, NULL, 'You have login successfully with Duradrive at October 5, 2021, 4:56 PM', 'login', 'Ex', 0, 'login', '2021-10-05 16:56:30', '2021-10-05 16:56:30'),
(729, 333, NULL, ' You have update user name successfully with Duradrive at October 5, 2021, 4:57 PM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-10-05 16:57:48', '2021-10-05 16:57:48'),
(730, 333, NULL, ' You have update user name successfully with Duradrive at October 5, 2021, 4:58 PM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-10-05 16:58:06', '2021-10-05 16:58:06'),
(731, 333, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 5:02 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 17:02:33', '2021-10-05 17:02:33'),
(732, 333, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 5:02 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 17:02:38', '2021-10-05 17:02:38'),
(733, 333, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 5:02 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 17:02:58', '2021-10-05 17:02:58'),
(734, 333, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 5:03 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 17:03:44', '2021-10-05 17:03:44'),
(735, 333, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 5:03 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 17:03:55', '2021-10-05 17:03:55'),
(736, 333, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 5:05 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 17:05:41', '2021-10-05 17:05:41'),
(737, 333, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 5:06 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 17:06:11', '2021-10-05 17:06:11'),
(738, 333, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 5:11 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 17:11:42', '2021-10-05 17:11:42'),
(739, 333, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 5:13 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 17:13:01', '2021-10-05 17:13:01'),
(740, 333, NULL, 'You have login successfully with Duradrive at October 5, 2021, 6:19 PM', 'login', 'Ex', 0, 'login', '2021-10-05 18:19:52', '2021-10-05 18:19:52'),
(741, 333, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 6:21 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 18:21:44', '2021-10-05 18:21:44'),
(742, 333, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 6:22 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 18:22:56', '2021-10-05 18:22:56'),
(743, 333, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 6:32 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 18:32:57', '2021-10-05 18:32:57'),
(744, 333, NULL, ' You have placed order successfully with Duradrive at October 5, 2021, 6:33 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-05 18:33:24', '2021-10-05 18:33:24'),
(745, 333, NULL, 'You have login successfully with Duradrive at October 5, 2021, 7:07 PM', 'login', 'Ex', 0, 'login', '2021-10-05 19:07:04', '2021-10-05 19:07:04'),
(746, 303, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 3:18 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-06 03:18:49', '2021-10-06 03:18:49'),
(747, 303, NULL, 'You have login successfully with Duradrive at October 6, 2021, 6:42 AM', 'login', 'Ex', 0, 'login', '2021-10-06 06:42:16', '2021-10-06 06:42:16'),
(748, 303, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 7:24 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-06 07:24:28', '2021-10-06 07:24:28'),
(749, 303, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 7:38 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-06 07:38:56', '2021-10-06 07:38:56'),
(750, 303, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 7:42 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-06 07:42:02', '2021-10-06 07:42:02'),
(751, 303, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 7:42 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-06 07:42:27', '2021-10-06 07:42:27'),
(752, 333, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 4:04 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-06 16:04:53', '2021-10-06 16:04:53'),
(753, 333, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 4:05 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-06 16:05:19', '2021-10-06 16:05:19'),
(754, 333, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 4:05 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-06 16:05:33', '2021-10-06 16:05:33'),
(755, 333, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 4:12 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-06 16:12:11', '2021-10-06 16:12:11'),
(756, 333, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 4:12 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-06 16:12:16', '2021-10-06 16:12:16'),
(757, 333, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 4:16 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-06 16:16:35', '2021-10-06 16:16:35'),
(758, 333, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 4:17 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-06 16:17:03', '2021-10-06 16:17:03'),
(759, 333, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 4:51 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-06 16:51:56', '2021-10-06 16:51:56'),
(760, 333, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 4:54 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-06 16:54:16', '2021-10-06 16:54:16'),
(761, 333, NULL, ' You have update user name successfully with Duradrive at October 6, 2021, 4:54 PM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-10-06 16:54:57', '2021-10-06 16:54:57'),
(762, 333, NULL, ' You have update user name successfully with Duradrive at October 6, 2021, 4:55 PM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-10-06 16:55:05', '2021-10-06 16:55:05'),
(763, 334, NULL, 'You have login successfully with Duradrive at October 6, 2021, 5:07 PM', 'login', 'Ex', 1, 'login', '2021-10-06 17:07:39', '2021-10-06 17:07:39'),
(764, 334, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 5:10 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-06 17:10:24', '2021-10-06 17:10:24'),
(765, 334, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 5:11 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-06 17:11:52', '2021-10-06 17:11:52'),
(766, 334, NULL, ' You have card deleted successfully with Duradrive at October 6, 2021, 5:20 PM', 'carddeleted', 'Ex', 1, 'carddeleted', '2021-10-06 17:20:25', '2021-10-06 17:20:25'),
(767, 333, NULL, ' You have update user name successfully with Duradrive at October 6, 2021, 5:25 PM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-10-06 17:25:44', '2021-10-06 17:25:44'),
(768, 334, NULL, ' You have update user name successfully with Duradrive at October 6, 2021, 5:39 PM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-06 17:39:59', '2021-10-06 17:39:59'),
(769, 334, NULL, ' You have update user name successfully with Duradrive at October 6, 2021, 5:40 PM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-06 17:40:12', '2021-10-06 17:40:12'),
(770, 333, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 6:00 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-06 18:00:30', '2021-10-06 18:00:30'),
(771, 333, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 6:44 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-06 18:44:23', '2021-10-06 18:44:23'),
(772, 334, NULL, ' You have placed order successfully with Duradrive at October 6, 2021, 6:51 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-06 18:51:48', '2021-10-06 18:51:48'),
(773, 331, NULL, ' You have placed order successfully with Duradrive at October 7, 2021, 12:16 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-07 00:16:40', '2021-10-07 00:16:40'),
(774, 331, NULL, ' You have address deleted successfully with Duradrive at October 7, 2021, 12:19 AM', 'addressdeleted', 'Ex', 0, 'addressdeleted', '2021-10-07 00:19:09', '2021-10-07 00:19:09'),
(775, 331, NULL, ' You have address update successfully with Duradrive at October 7, 2021, 12:20 AM', 'addressupdate', 'Ex', 0, 'addressupdate', '2021-10-07 00:20:05', '2021-10-07 00:20:05'),
(776, 331, NULL, ' You have country update successfully with Duradrive at October 7, 2021, 12:22 AM', 'countryupdate', 'Ex', 0, 'countryupdate', '2021-10-07 00:22:26', '2021-10-07 00:22:26'),
(777, 336, NULL, 'You have register successfully with Duradrive atOctober 7, 2021, 4:50 AM', 'registration', 'Ex', 0, 'registration', '2021-10-07 04:50:08', '2021-10-07 04:50:08'),
(778, 335, NULL, 'You have register successfully with Duradrive atOctober 7, 2021, 4:50 AM', 'registration', 'Ex', 0, 'registration', '2021-10-07 04:50:08', '2021-10-07 04:50:08'),
(779, 335, NULL, ' You have social update successfully with Duradrive at October 7, 2021, 4:50 AM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-07 04:50:13', '2021-10-07 04:50:13'),
(780, 337, NULL, 'You have register successfully with Duradrive atOctober 7, 2021, 7:06 AM', 'registration', 'Ex', 0, 'registration', '2021-10-07 07:06:42', '2021-10-07 07:06:42'),
(781, 337, NULL, 'You have login successfully with Duradrive at October 7, 2021, 7:07 AM', 'login', 'Ex', 0, 'login', '2021-10-07 07:07:08', '2021-10-07 07:07:08'),
(782, 338, NULL, 'You have register successfully with Duradrive atOctober 7, 2021, 7:16 AM', 'registration', 'Ex', 0, 'registration', '2021-10-07 07:16:09', '2021-10-07 07:16:09'),
(783, 338, NULL, 'You have login successfully with Duradrive at October 7, 2021, 7:16 AM', 'login', 'Ex', 0, 'login', '2021-10-07 07:16:52', '2021-10-07 07:16:52'),
(784, 337, NULL, 'You have login successfully with Duradrive at October 7, 2021, 7:18 AM', 'login', 'Ex', 0, 'login', '2021-10-07 07:18:52', '2021-10-07 07:18:52'),
(785, 337, NULL, 'You have login successfully with Duradrive at October 7, 2021, 8:08 AM', 'login', 'Ex', 0, 'login', '2021-10-07 08:08:18', '2021-10-07 08:08:18'),
(786, 337, NULL, ' You have placed order successfully with Duradrive at October 7, 2021, 8:09 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-07 08:09:22', '2021-10-07 08:09:22'),
(787, 337, NULL, 'You have login successfully with Duradrive at October 7, 2021, 12:33 PM', 'login', 'Ex', 0, 'login', '2021-10-07 12:33:59', '2021-10-07 12:33:59'),
(788, 337, NULL, 'You have login successfully with Duradrive at October 7, 2021, 12:35 PM', 'login', 'Ex', 0, 'login', '2021-10-07 12:35:11', '2021-10-07 12:35:11'),
(789, 339, NULL, 'You have register successfully with Duradrive atOctober 7, 2021, 1:30 PM', 'registration', 'Ex', 1, 'registration', '2021-10-07 13:30:30', '2021-10-07 13:30:30'),
(790, 339, NULL, 'You have login successfully with Duradrive at October 7, 2021, 1:30 PM', 'login', 'Ex', 1, 'login', '2021-10-07 13:30:45', '2021-10-07 13:30:45'),
(791, 340, NULL, 'You have register successfully with Duradrive atOctober 7, 2021, 1:48 PM', 'registration', 'Ex', 0, 'registration', '2021-10-07 13:48:14', '2021-10-07 13:48:14'),
(792, 340, NULL, 'You have login successfully with Duradrive at October 7, 2021, 1:48 PM', 'login', 'Ex', 0, 'login', '2021-10-07 13:48:36', '2021-10-07 13:48:36'),
(793, 341, NULL, 'You have register successfully with Duradrive atOctober 7, 2021, 3:02 PM', 'registration', 'Ex', 0, 'registration', '2021-10-07 15:02:14', '2021-10-07 15:02:14'),
(794, 341, NULL, ' You have social update successfully with Duradrive at October 7, 2021, 3:02 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-07 15:02:21', '2021-10-07 15:02:21'),
(795, 339, NULL, 'You have login successfully with Duradrive at October 7, 2021, 3:50 PM', 'login', 'Ex', 1, 'login', '2021-10-07 15:50:58', '2021-10-07 15:50:58'),
(796, 339, NULL, 'You have login successfully with Duradrive at October 7, 2021, 3:51 PM', 'login', 'Ex', 1, 'login', '2021-10-07 15:51:47', '2021-10-07 15:51:47'),
(797, 339, NULL, ' You have phone update successfully with Duradrive at October 7, 2021, 3:54 PM', 'phoneupdate', 'Ex', 1, 'phoneupdate', '2021-10-07 15:54:24', '2021-10-07 15:54:24'),
(798, 339, NULL, ' You have social update successfully with Duradrive at October 7, 2021, 4:20 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-07 16:20:33', '2021-10-07 16:20:33'),
(799, 339, NULL, 'You have login successfully with Duradrive at October 7, 2021, 4:21 PM', 'login', 'Ex', 1, 'login', '2021-10-07 16:21:18', '2021-10-07 16:21:18'),
(800, 342, NULL, 'You have register successfully with Duradrive atOctober 7, 2021, 4:22 PM', 'registration', 'Ex', 0, 'registration', '2021-10-07 16:22:50', '2021-10-07 16:22:50'),
(801, 342, NULL, ' You have social update successfully with Duradrive at October 7, 2021, 4:22 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-07 16:22:58', '2021-10-07 16:22:58'),
(802, 342, NULL, ' You have phone update successfully with Duradrive at October 7, 2021, 4:27 PM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-10-07 16:27:23', '2021-10-07 16:27:23'),
(803, 342, NULL, ' You have country update successfully with Duradrive at October 7, 2021, 4:40 PM', 'countryupdate', 'Ex', 0, 'countryupdate', '2021-10-07 16:40:14', '2021-10-07 16:40:14'),
(804, 342, NULL, ' You have social update successfully with Duradrive at October 7, 2021, 4:40 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-07 16:40:26', '2021-10-07 16:40:26'),
(805, 342, NULL, ' You have add card successfully with Duradrive at October 7, 2021, 4:41 PM', 'addcard', 'Ex', 0, 'addcard', '2021-10-07 16:41:16', '2021-10-07 16:41:16'),
(806, 342, NULL, ' You have card deleted successfully with Duradrive at October 7, 2021, 4:41 PM', 'carddeleted', 'Ex', 0, 'carddeleted', '2021-10-07 16:41:21', '2021-10-07 16:41:21'),
(807, 342, NULL, ' You have placed order successfully with Duradrive at October 7, 2021, 4:49 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-07 16:49:52', '2021-10-07 16:49:52'),
(808, 343, NULL, 'You have register successfully with Duradrive atOctober 7, 2021, 5:01 PM', 'registration', 'Ex', 0, 'registration', '2021-10-07 17:01:51', '2021-10-07 17:01:51'),
(809, 343, NULL, 'You have login successfully with Duradrive at October 7, 2021, 5:02 PM', 'login', 'Ex', 0, 'login', '2021-10-07 17:02:53', '2021-10-07 17:02:53'),
(810, 339, NULL, 'You have login successfully with Duradrive at October 7, 2021, 5:46 PM', 'login', 'Ex', 1, 'login', '2021-10-07 17:46:45', '2021-10-07 17:46:45'),
(811, 339, NULL, 'You have login successfully with Duradrive at October 7, 2021, 5:48 PM', 'login', 'Ex', 1, 'login', '2021-10-07 17:48:34', '2021-10-07 17:48:34'),
(812, 339, NULL, ' You have placed order successfully with Duradrive at October 7, 2021, 5:54 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-07 17:54:55', '2021-10-07 17:54:55'),
(813, 344, NULL, 'You have register successfully with Duradrive atOctober 7, 2021, 5:58 PM', 'registration', 'Ex', 0, 'registration', '2021-10-07 17:58:57', '2021-10-07 17:58:57'),
(814, 344, NULL, ' You have social update successfully with Duradrive at October 7, 2021, 5:59 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-07 17:59:02', '2021-10-07 17:59:02'),
(815, 339, NULL, ' You have add card successfully with Duradrive at October 7, 2021, 6:12 PM', 'addcard', 'Ex', 0, 'addcard', '2021-10-07 18:12:13', '2021-10-07 18:12:13'),
(816, 339, NULL, ' You have phone update successfully with Duradrive at October 7, 2021, 6:22 PM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-10-07 18:22:58', '2021-10-07 18:22:58'),
(817, 339, NULL, ' You have country update successfully with Duradrive at October 7, 2021, 6:23 PM', 'countryupdate', 'Ex', 0, 'countryupdate', '2021-10-07 18:23:37', '2021-10-07 18:23:37'),
(818, 339, NULL, ' You have social update successfully with Duradrive at October 7, 2021, 6:32 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-07 18:32:30', '2021-10-07 18:32:30');
INSERT INTO `notification` (`id`, `user_id`, `image`, `description`, `type`, `login_type`, `is_read`, `reason`, `created_at`, `updated_at`) VALUES
(819, 339, NULL, 'You have login successfully with Duradrive at October 7, 2021, 6:37 PM', 'login', 'Ex', 0, 'login', '2021-10-07 18:37:00', '2021-10-07 18:37:00'),
(820, 339, NULL, ' You have placed order successfully with Duradrive at October 7, 2021, 7:01 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-07 19:01:53', '2021-10-07 19:01:53'),
(821, 345, NULL, 'You have register successfully with Duradrive atOctober 7, 2021, 7:35 PM', 'registration', 'Ex', 0, 'registration', '2021-10-07 19:35:29', '2021-10-07 19:35:29'),
(822, 346, NULL, 'You have register successfully with Duradrive atOctober 7, 2021, 7:36 PM', 'registration', 'Ex', 1, 'registration', '2021-10-07 19:36:00', '2021-10-07 19:36:00'),
(823, 347, NULL, 'You have register successfully with Duradrive atOctober 8, 2021, 4:40 AM', 'registration', 'Ex', 0, 'registration', '2021-10-08 04:40:21', '2021-10-08 04:40:21'),
(824, 339, NULL, 'You have login successfully with Duradrive at October 8, 2021, 4:58 AM', 'login', 'Ex', 0, 'login', '2021-10-08 04:58:38', '2021-10-08 04:58:38'),
(825, 339, NULL, 'You have login successfully with Duradrive at October 8, 2021, 5:03 AM', 'login', 'Ex', 0, 'login', '2021-10-08 05:03:22', '2021-10-08 05:03:22'),
(826, 1, NULL, ' You have phone update successfully with Duradrive at October 8, 2021, 8:39 AM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-10-08 08:39:25', '2021-10-08 08:39:25'),
(827, 348, NULL, 'You have register successfully with Duradrive atOctober 8, 2021, 8:46 AM', 'registration', 'Ex', 0, 'registration', '2021-10-08 08:46:12', '2021-10-08 08:46:12'),
(828, 348, NULL, 'You have login successfully with Duradrive at October 8, 2021, 8:46 AM', 'login', 'Ex', 0, 'login', '2021-10-08 08:46:32', '2021-10-08 08:46:32'),
(829, 348, NULL, ' You have password update successfully with Duradrive at October 8, 2021, 9:34 AM', 'passwordupdate', 'Ex', 0, 'passwordupdate', '2021-10-08 09:34:36', '2021-10-08 09:34:36'),
(830, 348, NULL, ' You have password update successfully with Duradrive at October 8, 2021, 9:36 AM', 'passwordupdate', 'Ex', 0, 'passwordupdate', '2021-10-08 09:36:39', '2021-10-08 09:36:39'),
(831, 349, NULL, 'You have register successfully with Duradrive atOctober 8, 2021, 3:48 PM', 'registration', 'Ex', 0, 'registration', '2021-10-08 15:48:55', '2021-10-08 15:48:55'),
(832, 349, NULL, ' You have social update successfully with Duradrive at October 8, 2021, 3:49 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-08 15:49:00', '2021-10-08 15:49:00'),
(833, 350, NULL, 'You have register successfully with Duradrive atOctober 8, 2021, 4:21 PM', 'registration', 'Ex', 0, 'registration', '2021-10-08 16:21:16', '2021-10-08 16:21:16'),
(834, 350, NULL, 'You have login successfully with Duradrive at October 8, 2021, 4:22 PM', 'login', 'Ex', 0, 'login', '2021-10-08 16:22:37', '2021-10-08 16:22:37'),
(835, 350, NULL, ' You have social update successfully with Duradrive at October 8, 2021, 4:24 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-08 16:24:23', '2021-10-08 16:24:23'),
(836, 350, NULL, ' You have social update successfully with Duradrive at October 8, 2021, 4:24 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-08 16:24:33', '2021-10-08 16:24:33'),
(837, 350, NULL, ' You have phone update successfully with Duradrive at October 8, 2021, 4:31 PM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-10-08 16:31:21', '2021-10-08 16:31:21'),
(838, 350, NULL, ' You have placed order successfully with Duradrive at October 8, 2021, 4:47 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-08 16:47:47', '2021-10-08 16:47:47'),
(839, 350, NULL, ' You have placed order successfully with Duradrive at October 8, 2021, 4:48 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-08 16:48:24', '2021-10-08 16:48:24'),
(840, 350, NULL, ' You have placed order successfully with Duradrive at October 8, 2021, 5:31 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-08 17:31:15', '2021-10-08 17:31:15'),
(841, 350, NULL, ' You have placed order successfully with Duradrive at October 8, 2021, 5:32 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-08 17:32:15', '2021-10-08 17:32:15'),
(842, 348, NULL, 'You have login successfully with Duradrive at October 9, 2021, 9:26 AM', 'login', 'Ex', 0, 'login', '2021-10-09 09:26:50', '2021-10-09 09:26:50'),
(843, 351, NULL, 'You have register successfully with Duradrive atOctober 9, 2021, 9:41 AM', 'registration', 'Ex', 1, 'registration', '2021-10-09 09:41:53', '2021-10-09 09:41:53'),
(844, 351, NULL, ' You have social update successfully with Duradrive at October 9, 2021, 9:41 AM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-09 09:41:56', '2021-10-09 09:41:56'),
(845, 351, NULL, ' You have social update successfully with Duradrive at October 9, 2021, 11:07 AM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-09 11:07:05', '2021-10-09 11:07:05'),
(846, 351, NULL, ' You have phone update successfully with Duradrive at October 9, 2021, 3:21 PM', 'phoneupdate', 'Ex', 1, 'phoneupdate', '2021-10-09 15:21:43', '2021-10-09 15:21:43'),
(847, 351, NULL, ' You have social update successfully with Duradrive at October 10, 2021, 3:39 AM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-10 03:39:34', '2021-10-10 03:39:34'),
(848, 350, NULL, 'You have login successfully with Duradrive at October 10, 2021, 3:47 AM', 'login', 'Ex', 0, 'login', '2021-10-10 03:47:42', '2021-10-10 03:47:42'),
(849, 350, NULL, ' You have placed order successfully with Duradrive at October 10, 2021, 4:28 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-10 04:28:21', '2021-10-10 04:28:21'),
(850, 348, NULL, 'You have login successfully with Duradrive at October 10, 2021, 7:02 AM', 'login', 'Ex', 0, 'login', '2021-10-10 07:02:40', '2021-10-10 07:02:40'),
(851, 352, NULL, 'You have register successfully with Duradrive atOctober 10, 2021, 7:07 AM', 'registration', 'Ex', 0, 'registration', '2021-10-10 07:07:56', '2021-10-10 07:07:56'),
(852, 353, NULL, 'You have register successfully with Duradrive atOctober 10, 2021, 7:12 AM', 'registration', 'Ex', 0, 'registration', '2021-10-10 07:12:15', '2021-10-10 07:12:15'),
(853, 348, NULL, 'You have login successfully with Duradrive at October 10, 2021, 7:12 AM', 'login', 'Ex', 0, 'login', '2021-10-10 07:12:33', '2021-10-10 07:12:33'),
(854, 348, NULL, 'You have login successfully with Duradrive at October 10, 2021, 7:13 AM', 'login', 'Ex', 0, 'login', '2021-10-10 07:13:07', '2021-10-10 07:13:07'),
(855, 348, NULL, 'You have login successfully with Duradrive at October 10, 2021, 7:13 AM', 'login', 'Ex', 0, 'login', '2021-10-10 07:13:11', '2021-10-10 07:13:11'),
(856, 348, NULL, 'You have login successfully with Duradrive at October 10, 2021, 7:13 AM', 'login', 'Ex', 0, 'login', '2021-10-10 07:13:13', '2021-10-10 07:13:13'),
(857, 348, NULL, 'You have login successfully with Duradrive at October 10, 2021, 7:15 AM', 'login', 'Ex', 0, 'login', '2021-10-10 07:15:57', '2021-10-10 07:15:57'),
(858, 348, NULL, 'You have login successfully with Duradrive at October 10, 2021, 7:16 AM', 'login', 'Ex', 0, 'login', '2021-10-10 07:16:09', '2021-10-10 07:16:09'),
(859, 350, NULL, ' You have add card successfully with Duradrive at October 10, 2021, 7:30 AM', 'addcard', 'Ex', 0, 'addcard', '2021-10-10 07:30:14', '2021-10-10 07:30:14'),
(860, 350, NULL, ' You have card deleted successfully with Duradrive at October 10, 2021, 7:30 AM', 'carddeleted', 'Ex', 0, 'carddeleted', '2021-10-10 07:30:18', '2021-10-10 07:30:18'),
(861, 348, NULL, 'You have login successfully with Duradrive at October 10, 2021, 8:05 AM', 'login', 'Ex', 0, 'login', '2021-10-10 08:05:14', '2021-10-10 08:05:14'),
(862, 348, NULL, ' You have phone update successfully with Duradrive at October 10, 2021, 8:54 AM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-10-10 08:54:32', '2021-10-10 08:54:32'),
(863, 348, NULL, ' You have phone update successfully with Duradrive at October 10, 2021, 8:58 AM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-10-10 08:58:33', '2021-10-10 08:58:33'),
(864, 347, NULL, ' You have placed order successfully with Duradrive at October 10, 2021, 9:55 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-10 09:55:14', '2021-10-10 09:55:14'),
(865, 348, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 7:35 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 07:35:57', '2021-10-11 07:35:57'),
(866, 348, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 9:49 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 09:49:41', '2021-10-11 09:49:41'),
(867, 348, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 10:06 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 10:06:33', '2021-10-11 10:06:33'),
(868, 348, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 10:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 10:29:59', '2021-10-11 10:29:59'),
(869, 348, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 10:32 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 10:32:22', '2021-10-11 10:32:22'),
(870, 348, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 10:38 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 10:38:39', '2021-10-11 10:38:39'),
(871, 348, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 10:48 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 10:48:21', '2021-10-11 10:48:21'),
(872, 348, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 10:52 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 10:52:11', '2021-10-11 10:52:11'),
(873, 348, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 11:03 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 11:03:46', '2021-10-11 11:03:46'),
(874, 348, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 11:13 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 11:13:57', '2021-10-11 11:13:57'),
(875, 348, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 11:20 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 11:20:25', '2021-10-11 11:20:25'),
(876, 348, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 11:25 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 11:25:27', '2021-10-11 11:25:27'),
(877, 348, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 11:46 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 11:46:08', '2021-10-11 11:46:08'),
(878, 348, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 12:18 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 12:18:09', '2021-10-11 12:18:09'),
(879, 348, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 12:27 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 12:27:25', '2021-10-11 12:27:25'),
(880, 348, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 12:41 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 12:41:09', '2021-10-11 12:41:09'),
(881, 350, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 1:47 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 13:47:04', '2021-10-11 13:47:04'),
(882, 350, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 1:47 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 13:47:59', '2021-10-11 13:47:59'),
(883, 354, NULL, 'You have register successfully with Duradrive atOctober 11, 2021, 1:56 PM', 'registration', 'Ex', 1, 'registration', '2021-10-11 13:56:21', '2021-10-11 13:56:21'),
(884, 354, NULL, ' You have social update successfully with Duradrive at October 11, 2021, 1:56 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-11 13:56:27', '2021-10-11 13:56:27'),
(885, 354, NULL, ' You have phone update successfully with Duradrive at October 11, 2021, 1:57 PM', 'phoneupdate', 'Ex', 1, 'phoneupdate', '2021-10-11 13:57:15', '2021-10-11 13:57:15'),
(886, 351, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 2:00 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-11 14:00:18', '2021-10-11 14:00:18'),
(887, 351, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 2:01 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-11 14:01:41', '2021-10-11 14:01:41'),
(888, 349, NULL, ' You have social update successfully with Duradrive at October 11, 2021, 2:04 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-11 14:04:28', '2021-10-11 14:04:28'),
(889, 354, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 2:08 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-11 14:08:56', '2021-10-11 14:08:56'),
(890, 354, NULL, ' You have update user name successfully with Duradrive at October 11, 2021, 2:10 PM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-11 14:10:45', '2021-10-11 14:10:45'),
(891, 354, NULL, ' You have country update successfully with Duradrive at October 11, 2021, 2:11 PM', 'countryupdate', 'Ex', 1, 'countryupdate', '2021-10-11 14:11:56', '2021-10-11 14:11:56'),
(892, 351, NULL, ' You have social update successfully with Duradrive at October 11, 2021, 2:28 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-11 14:28:29', '2021-10-11 14:28:29'),
(893, 351, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 2:33 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-11 14:33:27', '2021-10-11 14:33:27'),
(894, 351, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 2:36 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-11 14:36:44', '2021-10-11 14:36:44'),
(895, 351, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 2:36 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-11 14:36:51', '2021-10-11 14:36:51'),
(896, 351, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 2:36 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-11 14:36:59', '2021-10-11 14:36:59'),
(897, 351, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 2:47 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-11 14:47:05', '2021-10-11 14:47:05'),
(898, 351, NULL, ' You have social update successfully with Duradrive at October 11, 2021, 3:17 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-11 15:17:04', '2021-10-11 15:17:04'),
(899, 351, NULL, ' You have social update successfully with Duradrive at October 11, 2021, 3:39 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-11 15:39:44', '2021-10-11 15:39:44'),
(900, 355, NULL, 'You have register successfully with Duradrive atOctober 11, 2021, 3:58 PM', 'registration', 'Ex', 0, 'registration', '2021-10-11 15:58:38', '2021-10-11 15:58:38'),
(901, 355, NULL, 'You have login successfully with Duradrive at October 11, 2021, 3:58 PM', 'login', 'Ex', 0, 'login', '2021-10-11 15:58:55', '2021-10-11 15:58:55'),
(902, 355, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 3:59 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 15:59:44', '2021-10-11 15:59:44'),
(903, 355, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 3:59 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 15:59:52', '2021-10-11 15:59:52'),
(904, 349, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 4:08 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 16:08:51', '2021-10-11 16:08:51'),
(905, 349, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 4:08 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 16:08:59', '2021-10-11 16:08:59'),
(906, 349, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 4:09 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 16:09:04', '2021-10-11 16:09:04'),
(907, 349, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 4:09 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 16:09:14', '2021-10-11 16:09:14'),
(908, 349, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 4:09 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 16:09:19', '2021-10-11 16:09:19'),
(909, 349, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 4:09 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 16:09:28', '2021-10-11 16:09:28'),
(910, 349, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 4:09 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 16:09:36', '2021-10-11 16:09:36'),
(911, 349, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 4:09 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 16:09:42', '2021-10-11 16:09:42'),
(912, 349, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 4:12 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 16:12:12', '2021-10-11 16:12:12'),
(913, 356, NULL, 'You have register successfully with Duradrive atOctober 11, 2021, 4:29 PM', 'registration', 'Ex', 1, 'registration', '2021-10-11 16:29:15', '2021-10-11 16:29:15'),
(914, 356, NULL, ' You have social update successfully with Duradrive at October 11, 2021, 4:32 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-11 16:32:30', '2021-10-11 16:32:30'),
(915, 356, NULL, ' You have social update successfully with Duradrive at October 11, 2021, 4:46 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-11 16:46:01', '2021-10-11 16:46:01'),
(916, 356, NULL, ' You have social update successfully with Duradrive at October 11, 2021, 4:49 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-11 16:49:01', '2021-10-11 16:49:01'),
(917, 356, NULL, ' You have social update successfully with Duradrive at October 11, 2021, 4:54 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-11 16:54:06', '2021-10-11 16:54:06'),
(918, 356, NULL, ' You have social update successfully with Duradrive at October 11, 2021, 5:02 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-11 17:02:05', '2021-10-11 17:02:05'),
(919, 356, NULL, ' You have phone update successfully with Duradrive at October 11, 2021, 5:05 PM', 'phoneupdate', 'Ex', 1, 'phoneupdate', '2021-10-11 17:05:30', '2021-10-11 17:05:30'),
(920, 356, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 5:06 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-11 17:06:54', '2021-10-11 17:06:54'),
(921, 356, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 5:07 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-11 17:07:04', '2021-10-11 17:07:04'),
(922, 356, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 5:07 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-11 17:07:18', '2021-10-11 17:07:18'),
(923, 356, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 5:07 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-11 17:07:32', '2021-10-11 17:07:32'),
(924, 354, NULL, ' You have social update successfully with Duradrive at October 11, 2021, 5:28 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-11 17:28:52', '2021-10-11 17:28:52'),
(925, 354, NULL, 'You have login successfully with Duradrive at October 11, 2021, 5:29 PM', 'login', 'Ex', 1, 'login', '2021-10-11 17:29:35', '2021-10-11 17:29:35'),
(926, 354, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 5:30 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-11 17:30:37', '2021-10-11 17:30:37'),
(927, 354, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 5:30 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-11 17:30:46', '2021-10-11 17:30:46'),
(928, 354, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 5:30 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-11 17:30:50', '2021-10-11 17:30:50'),
(929, 354, NULL, ' You have update user name successfully with Duradrive at October 11, 2021, 5:33 PM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-11 17:33:25', '2021-10-11 17:33:25'),
(930, 354, NULL, ' You have country update successfully with Duradrive at October 11, 2021, 5:34 PM', 'countryupdate', 'Ex', 1, 'countryupdate', '2021-10-11 17:34:52', '2021-10-11 17:34:52'),
(931, 354, NULL, 'You have login successfully with Duradrive at October 11, 2021, 5:35 PM', 'login', 'Ex', 1, 'login', '2021-10-11 17:35:56', '2021-10-11 17:35:56'),
(932, 354, NULL, 'You have login successfully with Duradrive at October 11, 2021, 5:36 PM', 'login', 'Ex', 1, 'login', '2021-10-11 17:36:00', '2021-10-11 17:36:00'),
(933, 357, NULL, 'You have register successfully with Duradrive atOctober 11, 2021, 10:54 PM', 'registration', 'Ex', 0, 'registration', '2021-10-11 22:54:52', '2021-10-11 22:54:52'),
(934, 357, NULL, ' You have social update successfully with Duradrive at October 11, 2021, 10:54 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-11 22:54:56', '2021-10-11 22:54:56'),
(935, 357, NULL, ' You have phone update successfully with Duradrive at October 11, 2021, 10:55 PM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-10-11 22:55:27', '2021-10-11 22:55:27'),
(936, 357, NULL, ' You have social update successfully with Duradrive at October 11, 2021, 10:55 PM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-11 22:55:54', '2021-10-11 22:55:54'),
(937, 357, NULL, ' You have placed order successfully with Duradrive at October 11, 2021, 10:57 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-11 22:57:46', '2021-10-11 22:57:46'),
(938, 357, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 4:55 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 04:55:42', '2021-10-12 04:55:42'),
(939, 358, NULL, 'You have register successfully with Duradrive atOctober 12, 2021, 5:10 AM', 'registration', 'Ex', 0, 'registration', '2021-10-12 05:10:31', '2021-10-12 05:10:31'),
(940, 358, NULL, ' You have social update successfully with Duradrive at October 12, 2021, 5:10 AM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-12 05:10:45', '2021-10-12 05:10:45'),
(941, 358, NULL, ' You have social update successfully with Duradrive at October 12, 2021, 5:12 AM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-12 05:12:14', '2021-10-12 05:12:14'),
(942, 359, NULL, 'You have register successfully with Duradrive atOctober 12, 2021, 5:39 AM', 'registration', 'Ex', 1, 'registration', '2021-10-12 05:39:39', '2021-10-12 05:39:39'),
(943, 359, NULL, ' You have social update successfully with Duradrive at October 12, 2021, 5:39 AM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-12 05:39:46', '2021-10-12 05:39:46'),
(944, 360, NULL, 'You have register successfully with Duradrive atOctober 12, 2021, 6:00 AM', 'registration', 'Ex', 1, 'registration', '2021-10-12 06:00:47', '2021-10-12 06:00:47'),
(945, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 6:04 AM', 'login', 'Ex', 1, 'login', '2021-10-12 06:04:05', '2021-10-12 06:04:05'),
(946, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 6:05 AM', 'login', 'Ex', 1, 'login', '2021-10-12 06:05:09', '2021-10-12 06:05:09'),
(947, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 6:09 AM', 'login', 'Ex', 1, 'login', '2021-10-12 06:09:26', '2021-10-12 06:09:26'),
(948, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 6:09 AM', 'login', 'Ex', 1, 'login', '2021-10-12 06:09:55', '2021-10-12 06:09:55'),
(949, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 6:13 AM', 'login', 'Ex', 1, 'login', '2021-10-12 06:13:06', '2021-10-12 06:13:06'),
(950, 359, NULL, ' You have social update successfully with Duradrive at October 12, 2021, 6:29 AM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-12 06:29:53', '2021-10-12 06:29:53'),
(951, 359, NULL, ' You have phone update successfully with Duradrive at October 12, 2021, 6:31 AM', 'phoneupdate', 'Ex', 1, 'phoneupdate', '2021-10-12 06:31:01', '2021-10-12 06:31:01'),
(952, 360, NULL, ' You have social update successfully with Duradrive at October 12, 2021, 6:32 AM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-12 06:32:55', '2021-10-12 06:32:55'),
(953, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 6:35 AM', 'login', 'Ex', 1, 'login', '2021-10-12 06:35:06', '2021-10-12 06:35:06'),
(954, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 6:38 AM', 'login', 'Ex', 1, 'login', '2021-10-12 06:38:01', '2021-10-12 06:38:01'),
(955, 348, NULL, 'You have login successfully with Duradrive at October 12, 2021, 7:01 AM', 'login', 'Ex', 0, 'login', '2021-10-12 07:01:17', '2021-10-12 07:01:17'),
(956, 360, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 7:02 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-12 07:02:07', '2021-10-12 07:02:07'),
(957, 360, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 7:02 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-12 07:02:16', '2021-10-12 07:02:16'),
(958, 348, NULL, 'You have login successfully with Duradrive at October 12, 2021, 7:11 AM', 'login', 'Ex', 0, 'login', '2021-10-12 07:11:56', '2021-10-12 07:11:56'),
(959, 348, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 7:14 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 07:14:46', '2021-10-12 07:14:46'),
(960, 360, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 7:25 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-12 07:25:54', '2021-10-12 07:25:54'),
(961, 360, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 7:26 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-12 07:26:50', '2021-10-12 07:26:50'),
(962, 360, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 7:27 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-12 07:27:24', '2021-10-12 07:27:24'),
(963, 360, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 7:30 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-12 07:30:05', '2021-10-12 07:30:05'),
(964, 360, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 7:38 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 07:38:53', '2021-10-12 07:38:53'),
(965, 360, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 7:38 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 07:38:58', '2021-10-12 07:38:58'),
(966, 360, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 7:39 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 07:39:07', '2021-10-12 07:39:07'),
(967, 360, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 7:44 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 07:44:28', '2021-10-12 07:44:28'),
(968, 360, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 7:44 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 07:44:33', '2021-10-12 07:44:33'),
(969, 360, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 7:55 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 07:55:29', '2021-10-12 07:55:29'),
(970, 360, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 7:55 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 07:55:35', '2021-10-12 07:55:35'),
(971, 360, NULL, ' You have password update successfully with Duradrive at October 12, 2021, 8:08 AM', 'passwordupdate', 'Ex', 0, 'passwordupdate', '2021-10-12 08:08:58', '2021-10-12 08:08:58'),
(972, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 8:09 AM', 'login', 'Ex', 0, 'login', '2021-10-12 08:09:29', '2021-10-12 08:09:29'),
(973, 360, NULL, ' You have update user name successfully with Duradrive at October 12, 2021, 8:09 AM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-10-12 08:09:57', '2021-10-12 08:09:57'),
(974, 360, NULL, ' You have country update successfully with Duradrive at October 12, 2021, 8:11 AM', 'countryupdate', 'Ex', 0, 'countryupdate', '2021-10-12 08:11:04', '2021-10-12 08:11:04'),
(975, 348, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 8:27 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 08:27:07', '2021-10-12 08:27:07'),
(976, 360, NULL, ' You have updated docs successfully with Duradrive at October 12, 2021, 8:42 AM', 'updatedocs', 'Ex', 0, 'updatedocs', '2021-10-12 08:42:34', '2021-10-12 08:42:34'),
(977, 360, NULL, ' You have updated docs successfully with Duradrive at October 12, 2021, 8:43 AM', 'updatedocs', 'Ex', 0, 'updatedocs', '2021-10-12 08:43:13', '2021-10-12 08:43:13'),
(978, 348, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 9:09 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 09:09:05', '2021-10-12 09:09:05'),
(979, 348, NULL, 'You have login successfully with Duradrive at October 12, 2021, 9:34 AM', 'login', 'Ex', 0, 'login', '2021-10-12 09:34:53', '2021-10-12 09:34:53'),
(980, 348, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 9:38 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 09:38:26', '2021-10-12 09:38:26'),
(981, 357, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 10:02 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 10:02:43', '2021-10-12 10:02:43'),
(982, 348, NULL, 'You have login successfully with Duradrive at October 12, 2021, 10:23 AM', 'login', 'Ex', 0, 'login', '2021-10-12 10:23:16', '2021-10-12 10:23:16'),
(983, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 10:45 AM', 'login', 'Ex', 0, 'login', '2021-10-12 10:45:40', '2021-10-12 10:45:40'),
(984, 360, NULL, ' You have update user name successfully with Duradrive at October 12, 2021, 10:46 AM', 'usernameupdate', 'Ex', 0, 'usernameupdate', '2021-10-12 10:46:03', '2021-10-12 10:46:03'),
(985, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 10:49 AM', 'login', 'Ex', 0, 'login', '2021-10-12 10:49:09', '2021-10-12 10:49:09'),
(986, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 10:49 AM', 'login', 'Ex', 0, 'login', '2021-10-12 10:49:35', '2021-10-12 10:49:35'),
(987, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 10:51 AM', 'login', 'Ex', 0, 'login', '2021-10-12 10:51:42', '2021-10-12 10:51:42'),
(988, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 10:51 AM', 'login', 'Ex', 0, 'login', '2021-10-12 10:51:56', '2021-10-12 10:51:56'),
(989, 360, NULL, ' You have phone update successfully with Duradrive at October 12, 2021, 10:53 AM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-10-12 10:53:02', '2021-10-12 10:53:02'),
(990, 360, NULL, ' You have phone update successfully with Duradrive at October 12, 2021, 10:53 AM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-10-12 10:53:45', '2021-10-12 10:53:45'),
(991, 360, NULL, ' You have phone update successfully with Duradrive at October 12, 2021, 10:57 AM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-10-12 10:57:41', '2021-10-12 10:57:41'),
(992, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 10:58 AM', 'login', 'Ex', 0, 'login', '2021-10-12 10:58:10', '2021-10-12 10:58:10'),
(993, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 10:58 AM', 'login', 'Ex', 0, 'login', '2021-10-12 10:58:24', '2021-10-12 10:58:24'),
(994, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 10:58 AM', 'login', 'Ex', 0, 'login', '2021-10-12 10:58:51', '2021-10-12 10:58:51'),
(995, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 11:06 AM', 'login', 'Ex', 0, 'login', '2021-10-12 11:06:23', '2021-10-12 11:06:23'),
(996, 348, NULL, 'You have login successfully with Duradrive at October 12, 2021, 11:07 AM', 'login', 'Ex', 0, 'login', '2021-10-12 11:07:40', '2021-10-12 11:07:40'),
(997, 360, NULL, ' You have country update successfully with Duradrive at October 12, 2021, 11:07 AM', 'countryupdate', 'Ex', 0, 'countryupdate', '2021-10-12 11:07:58', '2021-10-12 11:07:58'),
(998, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 11:08 AM', 'login', 'Ex', 0, 'login', '2021-10-12 11:08:31', '2021-10-12 11:08:31'),
(999, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 11:09 AM', 'login', 'Ex', 0, 'login', '2021-10-12 11:09:21', '2021-10-12 11:09:21'),
(1000, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 11:10 AM', 'login', 'Ex', 0, 'login', '2021-10-12 11:10:04', '2021-10-12 11:10:04'),
(1001, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 11:12 AM', 'login', 'Ex', 0, 'login', '2021-10-12 11:12:44', '2021-10-12 11:12:44'),
(1002, 360, NULL, 'You have login successfully with Duradrive at October 12, 2021, 11:25 AM', 'login', 'Ex', 0, 'login', '2021-10-12 11:25:01', '2021-10-12 11:25:01'),
(1003, 360, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 11:29 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 11:29:35', '2021-10-12 11:29:35'),
(1004, 356, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 2:56 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-12 14:56:13', '2021-10-12 14:56:13'),
(1005, 356, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 2:57 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-12 14:57:45', '2021-10-12 14:57:45'),
(1006, 356, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 2:57 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-12 14:57:52', '2021-10-12 14:57:52'),
(1007, 356, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 3:02 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-12 15:02:19', '2021-10-12 15:02:19'),
(1008, 348, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 3:17 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 15:17:10', '2021-10-12 15:17:10'),
(1009, 348, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 3:20 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 15:20:15', '2021-10-12 15:20:15'),
(1010, 356, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 3:33 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-12 15:33:14', '2021-10-12 15:33:14'),
(1011, 356, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 3:34 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-12 15:34:31', '2021-10-12 15:34:31'),
(1012, 348, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 3:35 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 15:35:06', '2021-10-12 15:35:06'),
(1013, 348, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 3:45 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 15:45:20', '2021-10-12 15:45:20'),
(1014, 348, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 3:49 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 15:49:04', '2021-10-12 15:49:04'),
(1015, 356, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 3:54 PM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-12 15:54:18', '2021-10-12 15:54:18'),
(1016, 348, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 4:26 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 16:26:26', '2021-10-12 16:26:26'),
(1017, 348, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 4:33 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 16:33:34', '2021-10-12 16:33:34'),
(1018, 350, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 4:38 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 16:38:39', '2021-10-12 16:38:39'),
(1019, 350, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 4:39 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 16:39:43', '2021-10-12 16:39:43'),
(1020, 350, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 4:40 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 16:40:38', '2021-10-12 16:40:38'),
(1021, 350, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 4:42 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 16:42:26', '2021-10-12 16:42:26'),
(1022, 356, NULL, ' You have social update successfully with Duradrive at October 12, 2021, 4:50 PM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-12 16:50:51', '2021-10-12 16:50:51'),
(1023, 350, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 5:05 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 17:05:10', '2021-10-12 17:05:10'),
(1024, 350, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 5:06 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 17:06:24', '2021-10-12 17:06:24'),
(1025, 350, NULL, ' You have placed order successfully with Duradrive at October 12, 2021, 5:06 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-12 17:06:38', '2021-10-12 17:06:38'),
(1026, 361, NULL, 'You have register successfully with Duradrive atOctober 13, 2021, 1:06 AM', 'registration', 'Ex', 0, 'registration', '2021-10-13 01:06:23', '2021-10-13 01:06:23'),
(1027, 361, NULL, ' You have social update successfully with Duradrive at October 13, 2021, 1:06 AM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-13 01:06:27', '2021-10-13 01:06:27'),
(1028, 361, NULL, ' You have phone update successfully with Duradrive at October 13, 2021, 1:06 AM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-10-13 01:06:56', '2021-10-13 01:06:56'),
(1029, 361, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 1:55 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-13 01:55:17', '2021-10-13 01:55:17'),
(1030, 361, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 1:56 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-13 01:56:16', '2021-10-13 01:56:16'),
(1031, 350, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 6:11 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-13 06:11:41', '2021-10-13 06:11:41'),
(1032, 350, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 6:14 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-13 06:14:27', '2021-10-13 06:14:27'),
(1033, 362, NULL, 'You have register successfully with Duradrive atOctober 13, 2021, 6:58 AM', 'registration', 'Ex', 1, 'registration', '2021-10-13 06:58:11', '2021-10-13 06:58:11'),
(1034, 362, NULL, 'You have login successfully with Duradrive at October 13, 2021, 6:58 AM', 'login', 'Ex', 1, 'login', '2021-10-13 06:58:40', '2021-10-13 06:58:40'),
(1035, 362, NULL, 'You have login successfully with Duradrive at October 13, 2021, 7:03 AM', 'login', 'Ex', 1, 'login', '2021-10-13 07:03:51', '2021-10-13 07:03:51'),
(1036, 363, NULL, 'You have register successfully with Duradrive atOctober 13, 2021, 7:06 AM', 'registration', 'Ex', 0, 'registration', '2021-10-13 07:06:20', '2021-10-13 07:06:20'),
(1037, 363, NULL, ' You have social update successfully with Duradrive at October 13, 2021, 7:06 AM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-13 07:06:25', '2021-10-13 07:06:25'),
(1038, 363, NULL, ' You have phone update successfully with Duradrive at October 13, 2021, 7:07 AM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-10-13 07:07:27', '2021-10-13 07:07:27'),
(1039, 362, NULL, 'You have login successfully with Duradrive at October 13, 2021, 7:15 AM', 'login', 'Ex', 1, 'login', '2021-10-13 07:15:23', '2021-10-13 07:15:23'),
(1040, 362, NULL, ' You have social update successfully with Duradrive at October 13, 2021, 7:16 AM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-13 07:16:01', '2021-10-13 07:16:01'),
(1041, 362, NULL, 'You have login successfully with Duradrive at October 13, 2021, 7:17 AM', 'login', 'Ex', 1, 'login', '2021-10-13 07:17:07', '2021-10-13 07:17:07'),
(1042, 362, NULL, ' You have update user name successfully with Duradrive at October 13, 2021, 7:17 AM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-13 07:17:31', '2021-10-13 07:17:31'),
(1043, 364, NULL, 'You have register successfully with Duradrive atOctober 13, 2021, 7:28 AM', 'registration', 'Ex', 0, 'registration', '2021-10-13 07:28:28', '2021-10-13 07:28:28'),
(1044, 364, NULL, ' You have social update successfully with Duradrive at October 13, 2021, 7:28 AM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-13 07:28:31', '2021-10-13 07:28:31'),
(1045, 365, NULL, 'You have register successfully with Duradrive atOctober 13, 2021, 7:35 AM', 'registration', 'Ex', 1, 'registration', '2021-10-13 07:35:04', '2021-10-13 07:35:04'),
(1046, 365, NULL, ' You have social update successfully with Duradrive at October 13, 2021, 7:35 AM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-13 07:35:07', '2021-10-13 07:35:07'),
(1047, 365, NULL, ' You have phone update successfully with Duradrive at October 13, 2021, 7:36 AM', 'phoneupdate', 'Ex', 1, 'phoneupdate', '2021-10-13 07:36:11', '2021-10-13 07:36:11'),
(1048, 362, NULL, 'You have login successfully with Duradrive at October 13, 2021, 7:39 AM', 'login', 'Ex', 1, 'login', '2021-10-13 07:39:26', '2021-10-13 07:39:26'),
(1049, 362, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 8:17 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-13 08:17:15', '2021-10-13 08:17:15'),
(1050, 362, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 8:18 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-13 08:18:09', '2021-10-13 08:18:09'),
(1051, 362, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 8:37 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-13 08:37:42', '2021-10-13 08:37:42'),
(1052, 362, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 8:43 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-13 08:43:08', '2021-10-13 08:43:08'),
(1053, 362, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 8:46 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-13 08:46:03', '2021-10-13 08:46:03'),
(1054, 362, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 8:47 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-13 08:47:38', '2021-10-13 08:47:38'),
(1055, 366, NULL, 'You have register successfully with Duradrive atOctober 13, 2021, 8:54 AM', 'registration', 'Ex', 0, 'registration', '2021-10-13 08:54:06', '2021-10-13 08:54:06'),
(1056, 362, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 8:54 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-13 08:54:12', '2021-10-13 08:54:12'),
(1057, 366, NULL, ' You have social update successfully with Duradrive at October 13, 2021, 8:54 AM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-13 08:54:23', '2021-10-13 08:54:23'),
(1058, 366, NULL, ' You have phone update successfully with Duradrive at October 13, 2021, 8:56 AM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-10-13 08:56:45', '2021-10-13 08:56:45'),
(1059, 362, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 8:58 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-13 08:58:41', '2021-10-13 08:58:41'),
(1060, 362, NULL, 'You have login successfully with Duradrive at October 13, 2021, 9:01 AM', 'login', 'Ex', 1, 'login', '2021-10-13 09:01:43', '2021-10-13 09:01:43'),
(1061, 362, NULL, ' You have update user name successfully with Duradrive at October 13, 2021, 9:02 AM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-13 09:02:32', '2021-10-13 09:02:32'),
(1062, 362, NULL, ' You have update user name successfully with Duradrive at October 13, 2021, 9:02 AM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-13 09:02:53', '2021-10-13 09:02:53'),
(1063, 362, NULL, ' You have update user name successfully with Duradrive at October 13, 2021, 9:07 AM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-13 09:07:13', '2021-10-13 09:07:13'),
(1064, 362, NULL, ' You have country update successfully with Duradrive at October 13, 2021, 9:08 AM', 'countryupdate', 'Ex', 1, 'countryupdate', '2021-10-13 09:08:44', '2021-10-13 09:08:44'),
(1065, 362, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 9:26 AM', 'placedorder', 'Ex', 1, 'placedorder', '2021-10-13 09:26:15', '2021-10-13 09:26:15'),
(1066, 362, NULL, ' You have update user name successfully with Duradrive at October 13, 2021, 9:39 AM', 'usernameupdate', 'Ex', 1, 'usernameupdate', '2021-10-13 09:39:39', '2021-10-13 09:39:39'),
(1067, 362, NULL, ' You have country update successfully with Duradrive at October 13, 2021, 9:40 AM', 'countryupdate', 'Ex', 1, 'countryupdate', '2021-10-13 09:40:20', '2021-10-13 09:40:20'),
(1068, 362, NULL, ' You have updated docs successfully with Duradrive at October 13, 2021, 9:40 AM', 'updatedocs', 'Ex', 1, 'updatedocs', '2021-10-13 09:40:54', '2021-10-13 09:40:54'),
(1069, 362, NULL, ' You have updated docs successfully with Duradrive at October 13, 2021, 9:42 AM', 'updatedocs', 'Ex', 1, 'updatedocs', '2021-10-13 09:42:03', '2021-10-13 09:42:03'),
(1070, 362, NULL, 'You have login successfully with Duradrive at October 13, 2021, 9:43 AM', 'login', 'Ex', 1, 'login', '2021-10-13 09:43:42', '2021-10-13 09:43:42'),
(1071, 362, NULL, 'You have login successfully with Duradrive at October 13, 2021, 9:44 AM', 'login', 'Ex', 1, 'login', '2021-10-13 09:44:51', '2021-10-13 09:44:51'),
(1072, 362, NULL, 'You have login successfully with Duradrive at October 13, 2021, 9:47 AM', 'login', 'Ex', 1, 'login', '2021-10-13 09:47:28', '2021-10-13 09:47:28'),
(1073, 362, NULL, 'You have login successfully with Duradrive at October 13, 2021, 9:48 AM', 'login', 'Ex', 1, 'login', '2021-10-13 09:48:24', '2021-10-13 09:48:24'),
(1074, 362, NULL, 'You have login successfully with Duradrive at October 13, 2021, 9:50 AM', 'login', 'Ex', 1, 'login', '2021-10-13 09:50:00', '2021-10-13 09:50:00'),
(1075, 362, NULL, 'You have login successfully with Duradrive at October 13, 2021, 9:50 AM', 'login', 'Ex', 1, 'login', '2021-10-13 09:50:58', '2021-10-13 09:50:58'),
(1076, 362, NULL, ' You have add card successfully with Duradrive at October 13, 2021, 9:51 AM', 'addcard', 'Ex', 1, 'addcard', '2021-10-13 09:51:47', '2021-10-13 09:51:47'),
(1077, 356, NULL, ' You have social update successfully with Duradrive at October 13, 2021, 10:01 AM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-13 10:01:48', '2021-10-13 10:01:48'),
(1078, 356, NULL, ' You have phone update successfully with Duradrive at October 13, 2021, 10:05 AM', 'phoneupdate', 'Ex', 1, 'phoneupdate', '2021-10-13 10:05:10', '2021-10-13 10:05:10'),
(1079, 356, NULL, ' You have phone update successfully with Duradrive at October 13, 2021, 10:14 AM', 'phoneupdate', 'Ex', 1, 'phoneupdate', '2021-10-13 10:14:34', '2021-10-13 10:14:34'),
(1080, 356, NULL, ' You have phone update successfully with Duradrive at October 13, 2021, 10:19 AM', 'phoneupdate', 'Ex', 1, 'phoneupdate', '2021-10-13 10:19:36', '2021-10-13 10:19:36'),
(1081, 367, NULL, 'You have register successfully with Duradrive atOctober 13, 2021, 10:23 AM', 'registration', 'Ex', 0, 'registration', '2021-10-13 10:23:03', '2021-10-13 10:23:03'),
(1082, 367, NULL, 'You have login successfully with Duradrive at October 13, 2021, 10:23 AM', 'login', 'Ex', 0, 'login', '2021-10-13 10:23:28', '2021-10-13 10:23:28'),
(1083, 367, NULL, 'You have login successfully with Duradrive at October 13, 2021, 10:23 AM', 'login', 'Ex', 0, 'login', '2021-10-13 10:23:33', '2021-10-13 10:23:33'),
(1084, 367, NULL, ' You have password update successfully with Duradrive at October 13, 2021, 10:24 AM', 'passwordupdate', 'Ex', 0, 'passwordupdate', '2021-10-13 10:24:23', '2021-10-13 10:24:23'),
(1085, 367, NULL, 'You have login successfully with Duradrive at October 13, 2021, 10:25 AM', 'login', 'Ex', 0, 'login', '2021-10-13 10:25:19', '2021-10-13 10:25:19'),
(1086, 362, NULL, ' You have phone update successfully with Duradrive at October 13, 2021, 10:30 AM', 'phoneupdate', 'Ex', 1, 'phoneupdate', '2021-10-13 10:30:03', '2021-10-13 10:30:03'),
(1087, 362, NULL, 'You have login successfully with Duradrive at October 13, 2021, 10:31 AM', 'login', 'Ex', 1, 'login', '2021-10-13 10:31:20', '2021-10-13 10:31:20'),
(1088, 362, NULL, ' You have password update successfully with Duradrive at October 13, 2021, 10:32 AM', 'passwordupdate', 'Ex', 1, 'passwordupdate', '2021-10-13 10:32:05', '2021-10-13 10:32:05'),
(1089, 362, NULL, 'You have login successfully with Duradrive at October 13, 2021, 10:32 AM', 'login', 'Ex', 1, 'login', '2021-10-13 10:32:31', '2021-10-13 10:32:31'),
(1090, 362, NULL, ' You have card deleted successfully with Duradrive at October 13, 2021, 10:57 AM', 'carddeleted', 'Ex', 0, 'carddeleted', '2021-10-13 10:57:25', '2021-10-13 10:57:25'),
(1091, 362, NULL, ' You have add card successfully with Duradrive at October 13, 2021, 10:58 AM', 'addcard', 'Ex', 0, 'addcard', '2021-10-13 10:58:10', '2021-10-13 10:58:10'),
(1092, 362, NULL, 'You have login successfully with Duradrive at October 13, 2021, 11:14 AM', 'login', 'Ex', 0, 'login', '2021-10-13 11:14:54', '2021-10-13 11:14:54'),
(1093, 357, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 2:09 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-13 14:09:38', '2021-10-13 14:09:38'),
(1094, 357, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 2:41 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-13 14:41:08', '2021-10-13 14:41:08');
INSERT INTO `notification` (`id`, `user_id`, `image`, `description`, `type`, `login_type`, `is_read`, `reason`, `created_at`, `updated_at`) VALUES
(1095, 357, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 3:33 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-13 15:33:08', '2021-10-13 15:33:08'),
(1096, 354, NULL, 'You have login successfully with Duradrive at October 13, 2021, 4:42 PM', 'login', 'Ex', 0, 'login', '2021-10-13 16:42:54', '2021-10-13 16:42:54'),
(1097, 354, NULL, ' You have country update successfully with Duradrive at October 13, 2021, 4:43 PM', 'countryupdate', 'Ex', 0, 'countryupdate', '2021-10-13 16:43:18', '2021-10-13 16:43:18'),
(1098, 354, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 4:46 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-13 16:46:22', '2021-10-13 16:46:22'),
(1099, 354, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 4:47 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-13 16:47:56', '2021-10-13 16:47:56'),
(1100, 354, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 4:53 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-13 16:53:27', '2021-10-13 16:53:27'),
(1101, 354, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 4:54 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-13 16:54:52', '2021-10-13 16:54:52'),
(1102, 357, NULL, ' You have placed order successfully with Duradrive at October 13, 2021, 10:07 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-13 22:07:05', '2021-10-13 22:07:05'),
(1103, 356, NULL, ' You have social update successfully with Duradrive at October 14, 2021, 8:25 AM', 'socialupdate', 'Ex', 1, 'socialupdate', '2021-10-14 08:25:16', '2021-10-14 08:25:16'),
(1104, 357, NULL, ' You have creted order successfully with Duradrive at October 14, 2021, 1:03 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-14 13:03:19', '2021-10-14 13:03:19'),
(1105, 357, NULL, ' You have placed order successfully with Duradrive at October 14, 2021, 1:03 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-14 13:03:35', '2021-10-14 13:03:35'),
(1106, 357, NULL, ' You have apply promocode successfully with Duradrive at October 14, 2021, 1:03 PM', 'promocode', 'Ex', 0, 'promocode', '2021-10-14 13:03:35', '2021-10-14 13:03:35'),
(1107, 357, NULL, ' You have creted order successfully with Duradrive at October 14, 2021, 1:08 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-14 13:08:53', '2021-10-14 13:08:53'),
(1108, 357, NULL, ' You have creted order successfully with Duradrive at October 14, 2021, 1:09 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-14 13:09:11', '2021-10-14 13:09:11'),
(1109, 357, NULL, ' You have placed order successfully with Duradrive at October 14, 2021, 1:09 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-14 13:09:24', '2021-10-14 13:09:24'),
(1110, 358, NULL, ' You have phone update successfully with Duradrive at October 14, 2021, 1:18 PM', 'phoneupdate', 'Ex', 0, 'phoneupdate', '2021-10-14 13:18:52', '2021-10-14 13:18:52'),
(1111, 358, NULL, ' You have creted order successfully with Duradrive at October 14, 2021, 1:19 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-14 13:19:49', '2021-10-14 13:19:49'),
(1112, 358, NULL, ' You have placed order successfully with Duradrive at October 14, 2021, 1:19 PM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-14 13:19:59', '2021-10-14 13:19:59'),
(1113, 356, NULL, ' You have social update successfully with Duradrive at October 17, 2021, 6:18 AM', 'socialupdate', 'Ex', 0, 'socialupdate', '2021-10-17 06:18:59', '2021-10-17 06:18:59'),
(1114, 354, NULL, ' You have creted order successfully with Duradrive at October 17, 2021, 11:37 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-17 11:37:16', '2021-10-17 11:37:16'),
(1115, 354, NULL, ' You have placed order successfully with Duradrive at October 17, 2021, 11:37 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-17 11:37:29', '2021-10-17 11:37:29'),
(1116, 354, NULL, ' You have creted order successfully with Duradrive at October 17, 2021, 11:38 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-17 11:38:51', '2021-10-17 11:38:51'),
(1117, 354, NULL, ' You have placed order successfully with Duradrive at October 17, 2021, 11:38 AM', 'placedorder', 'Ex', 0, 'placedorder', '2021-10-17 11:38:56', '2021-10-17 11:38:56'),
(1118, 365, NULL, ' You have country update successfully with Duradrive at October 17, 2021, 3:29 PM', 'countryupdate', 'Ex', 1, 'countryupdate', '2021-10-17 15:29:34', '2021-10-17 15:29:34'),
(1119, 365, NULL, ' You have country update successfully with Duradrive at October 17, 2021, 3:31 PM', 'countryupdate', 'Ex', 1, 'countryupdate', '2021-10-17 15:31:28', '2021-10-17 15:31:28'),
(1120, 365, NULL, ' You have country update successfully with Duradrive at October 18, 2021, 5:58 PM', 'countryupdate', 'Ex', 0, 'countryupdate', '2021-10-18 17:58:47', '2021-10-18 17:58:47'),
(1121, 365, NULL, ' You have add card successfully with Duradrive at October 18, 2021, 6:02 PM', 'addcard', 'Ex', 0, 'addcard', '2021-10-18 18:02:57', '2021-10-18 18:02:57'),
(1122, 365, NULL, ' You have card deleted successfully with Duradrive at October 18, 2021, 6:05 PM', 'carddeleted', 'Ex', 0, 'carddeleted', '2021-10-18 18:05:29', '2021-10-18 18:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `notification_setting`
--

CREATE TABLE `notification_setting` (
  `id` int(11) NOT NULL,
  `web_key` text DEFAULT NULL,
  `rest_key` text DEFAULT NULL,
  `application_key` text DEFAULT NULL,
  `user_rest_key` text DEFAULT NULL,
  `driver_application_key` text DEFAULT NULL,
  `driver_rest_key` text DEFAULT NULL,
  `merchant_application_key` text DEFAULT NULL,
  `merchant_rest_key` text DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_setting`
--

INSERT INTO `notification_setting` (`id`, `web_key`, `rest_key`, `application_key`, `user_rest_key`, `driver_application_key`, `driver_rest_key`, `merchant_application_key`, `merchant_rest_key`, `created_at`, `updated_at`) VALUES
(1, 'web key', 'rest key', 'user key', 'rest key', 'driver key', 'rest key', 'merchant key', 'm rest ket', NULL, '2021-09-19 05:55:27');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `id` int(11) NOT NULL,
  `watch_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `modal` varchar(255) DEFAULT NULL,
  `offertype` varchar(250) DEFAULT NULL,
  `offer` varchar(255) DEFAULT NULL,
  `realprice` varchar(255) DEFAULT NULL,
  `finalprice` varchar(250) DEFAULT '0',
  `action` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`id`, `watch_id`, `client_id`, `country`, `modal`, `offertype`, `offer`, `realprice`, `finalprice`, `action`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 36, 144, 'AFGHANISTAN', 'OYSTER PERPETUAL CLASSIQUES', 'percentage', '+10', NULL, '17930', NULL, 1, '2020-11-26 08:22:36', '2020-11-26 08:22:36', NULL),
(2, 19, 144, 'AFGHANISTAN', 'OYSTER PERPETUAL CLASSIQUES', 'percentage', '-10', '5800', '5220', NULL, 1, '2020-11-26 08:34:41', '2020-11-26 08:34:41', NULL),
(3, 20, 144, 'INDIA', 'OYSTER PERPETUAL CLASSIQUES', 'amount', '6800', '6850', '6800', NULL, 1, '2020-11-26 08:34:54', '2020-11-26 08:34:54', NULL),
(4, 20, 144, 'INDIA', 'OYSTER PERPETUAL CLASSIQUES', 'percentage', '+10', '6850', '7535', NULL, 1, '2020-11-26 08:35:50', '2020-11-26 08:35:50', NULL),
(5, 19, 144, 'INDIA', 'OYSTER PERPETUAL CLASSIQUES', 'amount', '6000', '5800', '6000', NULL, 1, '2020-11-26 08:38:48', '2020-11-26 08:38:48', NULL),
(6, 20, 144, 'AFGHANISTAN', 'OYSTER PERPETUAL CLASSIQUES', 'amount', '7000', '6850', '7000', NULL, 1, '2020-11-26 08:39:10', '2020-11-26 08:39:10', NULL),
(7, 23, 144, 'AFGHANISTAN', 'OYSTER PERPETUAL CLASSIQUES', 'percentage', '+10', '15200', '16720', NULL, 1, '2020-11-27 12:00:17', '2020-11-27 12:00:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offeraction`
--

CREATE TABLE `offeraction` (
  `id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offeraction`
--

INSERT INTO `offeraction` (`id`, `offer_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 144, 1, '2020-11-26 10:53:34', '2020-11-26 10:53:34'),
(2, 4, 144, 1, '2020-11-27 11:54:37', '2020-11-27 11:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `offermaster`
--

CREATE TABLE `offermaster` (
  `offerid` bigint(20) NOT NULL,
  `offerdescription` varchar(300) NOT NULL,
  `promocode` varchar(100) NOT NULL,
  `discount_percentage` decimal(10,0) NOT NULL,
  `valid_till` datetime NOT NULL,
  `driveuserid` bigint(11) NOT NULL,
  `Isused` tinyint(1) NOT NULL,
  `apply_datetime` datetime NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `options_name` text NOT NULL,
  `description` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `options_name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '34343434343', 'hello', 'active', '2021-08-28 15:58:09', '2021-08-28 16:14:59'),
(2, '3434324', 'test3434', 'active', '2021-08-28 15:58:41', '2021-08-28 16:14:34'),
(3, 'Test option', 'test Option1', 'active', '2021-08-28 16:22:31', '2021-10-05 16:09:23'),
(4, '', 'test', 'active', '2021-10-06 15:02:48', '2021-10-06 15:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `ordermaster`
--

CREATE TABLE `ordermaster` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ordernumber` varchar(300) NOT NULL,
  `orderdatetime` datetime NOT NULL DEFAULT current_timestamp(),
  `ordertypeid` bigint(20) NOT NULL,
  `itemid_productid` bigint(20) NOT NULL,
  `itemtype` varchar(200) NOT NULL,
  `itemqty` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `serviceproviderid` bigint(20) NOT NULL,
  `paymentid` int(11) NOT NULL,
  `orderdeliveryid` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderrequestconfig`
--

CREATE TABLE `orderrequestconfig` (
  `id` int(11) NOT NULL,
  `user_request_timeout` varchar(255) DEFAULT NULL,
  `restaurant_radius` varchar(255) DEFAULT NULL,
  `driver_radius` varchar(255) DEFAULT NULL,
  `distance_radius_for_ridenow` varchar(255) DEFAULT NULL,
  `ridenowrequest_noof_driver` varchar(255) DEFAULT NULL,
  `ridenowdrop_location` varchar(255) DEFAULT NULL,
  `ridelater_now_request` varchar(255) DEFAULT NULL,
  `ridelater_time` varchar(255) DEFAULT NULL,
  `distanceradius_forridelater` varchar(255) DEFAULT NULL,
  `droplater_location` varchar(255) DEFAULT NULL,
  `ridelaterrequest_noof_driver` varchar(255) DEFAULT NULL,
  `sheduled_starttime` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderrequestconfig`
--

INSERT INTO `orderrequestconfig` (`id`, `user_request_timeout`, `restaurant_radius`, `driver_radius`, `distance_radius_for_ridenow`, `ridenowrequest_noof_driver`, `ridenowdrop_location`, `ridelater_now_request`, `ridelater_time`, `distanceradius_forridelater`, `droplater_location`, `ridelaterrequest_noof_driver`, `sheduled_starttime`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '2021-09-23 18:01:26', '2021-09-23 12:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `ordertype_master`
--

CREATE TABLE `ordertype_master` (
  `id` bigint(20) NOT NULL,
  `typename` int(11) NOT NULL,
  `remarks` int(11) NOT NULL,
  `createddatetime` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_cancel_reason`
--

CREATE TABLE `order_cancel_reason` (
  `id` int(11) NOT NULL,
  `reason_for` varchar(255) DEFAULT NULL,
  `cancel_reason` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_cancel_reason`
--

INSERT INTO `order_cancel_reason` (`id`, `reason_for`, `cancel_reason`, `created_at`, `updated_at`) VALUES
(1, 'reason', 'test update', '2021-09-24 19:55:15', '2021-09-24 14:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `order_manage`
--

CREATE TABLE `order_manage` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `purchase_date` datetime DEFAULT NULL,
  `status` enum('1','2','3','4') DEFAULT NULL COMMENT '''Success''=>1, ''Pending''=>2, ''Process''=>3\r\n''cancel''=>4',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `app` varchar(255) DEFAULT NULL,
  `page_type` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `app`, `page_type`, `page_title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'App', 'type', 'title update', '<p>description</p>', NULL, '2021-09-19 05:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `paymentmaster`
--

CREATE TABLE `paymentmaster` (
  `paymentid` int(11) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `orderid` int(11) NOT NULL,
  `deliverychorge` decimal(10,0) NOT NULL,
  `totalamt` decimal(10,0) NOT NULL,
  `remarks` varchar(300) NOT NULL,
  `paymentbyuserId` int(11) NOT NULL,
  `createddatetime` datetime NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_mode`
--

CREATE TABLE `payment_mode` (
  `id` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_mode`
--

INSERT INTO `payment_mode` (`id`, `payment_method`, `status`, `created_at`, `updated_at`) VALUES
(0, 'GCash', 1, '0000-00-00 00:00:00', '2021-10-05 21:11:57'),
(0, 'GCash', 1, '0000-00-00 00:00:00', '2021-10-05 21:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `pickup_stoplocation`
--

CREATE TABLE `pickup_stoplocation` (
  `id` int(11) NOT NULL,
  `pickup_id` int(11) NOT NULL,
  `stop_address1` longtext NOT NULL,
  `stop_address2` longtext NOT NULL,
  `stop_name` varchar(255) NOT NULL,
  `stop_mobile` varchar(255) NOT NULL,
  `stoplat` varchar(255) NOT NULL,
  `stoplon` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickup_stoplocation`
--

INSERT INTO `pickup_stoplocation` (`id`, `pickup_id`, `stop_address1`, `stop_address2`, `stop_name`, `stop_mobile`, `stoplat`, `stoplon`, `created_at`, `updated_at`) VALUES
(1, 7, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694832098968', '76.706709936261', '2021-10-10 10:05:58', '2021-10-10 10:05:58'),
(2, 8, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.695206027724', '76.706060171127', '2021-10-10 10:16:15', '2021-10-10 10:16:15'),
(3, 9, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '30.6985797', '76.7066273', '2021-10-10 10:24:24', '2021-10-10 10:24:24'),
(4, 10, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694443753537', '76.70692820102', '2021-10-10 11:19:50', '2021-10-10 11:19:50'),
(5, 11, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.69501430653', '76.7065282166', '2021-10-10 11:28:09', '2021-10-10 11:28:09'),
(6, 12, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.695058128551', '76.706670373678', '2021-10-10 11:39:01', '2021-10-10 11:39:01'),
(7, 13, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694631727913', '76.705903597176', '2021-10-10 11:43:59', '2021-10-10 11:43:59'),
(8, 14, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694708128436', '76.707061305642', '2021-10-10 11:47:25', '2021-10-10 11:47:25'),
(9, 15, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694480944816', '76.705724559724', '2021-10-10 12:17:05', '2021-10-10 12:17:05'),
(10, 16, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.69497826867', '76.706084311008', '2021-10-10 12:25:21', '2021-10-10 12:25:21'),
(11, 17, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694169287228', '76.70684337616', '2021-10-11 07:21:39', '2021-10-11 07:21:39'),
(12, 18, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694323242166', '76.706441044807', '2021-10-11 07:24:44', '2021-10-11 07:24:44'),
(13, 19, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.693861664921', '76.706620082259', '2021-10-11 07:29:57', '2021-10-11 07:29:57'),
(14, 20, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694826621204', '76.706345826387', '2021-10-11 07:35:17', '2021-10-11 07:35:17'),
(15, 21, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694014178821', '76.706884615123', '2021-10-11 09:48:32', '2021-10-11 09:48:32'),
(16, 22, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694595689909', '76.706490665674', '2021-10-11 10:06:06', '2021-10-11 10:06:06'),
(17, 23, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694402814284', '76.706651262939', '2021-10-11 10:29:44', '2021-10-11 10:29:44'),
(18, 24, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694051081959', '76.706799790263', '2021-10-11 10:38:17', '2021-10-11 10:38:17'),
(19, 25, '2163 Sahibzada Ajit Singh Nagar Sahibzada Ajit Singh Nagar India 140301', '', 'Aadesh Mishra', '07508516040', '30.6985796', '76.7066391', '2021-10-11 10:48:06', '2021-10-11 10:48:06'),
(20, 26, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694284320997', '76.706751845777', '2021-10-11 11:02:43', '2021-10-11 11:02:43'),
(21, 27, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.693791894777', '76.706660650671', '2021-10-11 11:13:36', '2021-10-11 11:13:36'),
(22, 28, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694485557686', '76.706848740578', '2021-10-11 11:20:02', '2021-10-11 11:20:02'),
(23, 29, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.693936624524', '76.706388741732', '2021-10-11 11:25:13', '2021-10-11 11:25:13'),
(24, 30, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694695154767', '76.707179322839', '2021-10-11 11:45:52', '2021-10-11 11:45:52'),
(25, 31, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694438275751', '76.706615053117', '2021-10-11 12:17:58', '2021-10-11 12:17:58'),
(26, 32, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694243958286', '76.706252619624', '2021-10-11 12:27:12', '2021-10-11 12:27:12'),
(27, 33, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694640088728', '76.707064323127', '2021-10-11 12:40:54', '2021-10-11 12:40:54'),
(28, 50, 'Lanao del Norte  Iligan City Philippines', '', 'Advance Collection', '09561360935', '8.2503653170995', '124.25846703351', '2021-10-12 04:55:26', '2021-10-12 04:55:26'),
(29, 51, 'Taytay Tiangge, Manila East Road, Muzon, Taytay, Rizal, Philippines', '', 'Akash', '8882341937', '14.5581091', '121.1357272', '2021-10-12 06:58:54', '2021-10-12 06:58:54'),
(30, 52, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694484981077', '76.706656962633', '2021-10-12 07:13:14', '2021-10-12 07:13:14'),
(31, 56, 'Mahogany Beef Market & Bulalohan, Mahogany Avenue, Tagaytay, Cavite, Philippines', '', 'Akash', '8882341937', '14.1041379', '120.9317186', '2021-10-12 07:38:08', '2021-10-12 07:38:08'),
(32, 57, 'Mahogany Beef Market & Bulalohan, Mahogany Avenue, Tagaytay, Cavite, Philippines', '', 'Akash', '8882341937', '14.1041379', '120.9317186', '2021-10-12 07:38:21', '2021-10-12 07:38:21'),
(33, 59, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.69393979589', '76.706932224333', '2021-10-12 07:47:21', '2021-10-12 07:47:21'),
(34, 62, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694089714916', '76.706475578248', '2021-10-12 07:56:46', '2021-10-12 07:56:46'),
(35, 63, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694805575054', '76.707158535719', '2021-10-12 08:21:56', '2021-10-12 08:21:56'),
(36, 64, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694478350076', '76.706593930721', '2021-10-12 09:08:42', '2021-10-12 09:08:42'),
(37, 65, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.693984195011', '76.706480272114', '2021-10-12 09:36:29', '2021-10-12 09:36:29'),
(38, 72, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694482674642', '76.706858798862', '2021-10-12 15:16:56', '2021-10-12 15:16:56'),
(39, 73, 'Sahibzada Ajit Singh Nagar 140301 Sahibzada Ajit Singh Nagar India', '', 'Aadesh Mishra', '07508516040', '30.694449519628', '76.707165576518', '2021-10-12 15:19:57', '2021-10-12 15:19:57'),
(40, 88, '5th Ave  1400 Caloocan Philippines', 'Ezekiel Jacinto', 'test', '09158291795', '14.6440609', '120.9909553', '2021-10-13 01:45:03', '2021-10-13 01:45:03'),
(41, 95, 'Santo Tomas, Batangas, Philippines', '', 'Akash', '8882341937', '14.1262406', '121.1382576', '2021-10-13 08:13:05', '2021-10-13 08:13:05'),
(42, 96, 'Santo Tomas, Batangas, Philippines', '', 'Akash', '8882341937', '14.1262406', '121.1382576', '2021-10-13 08:13:22', '2021-10-13 08:13:22'),
(43, 113, 'Phase-2 Gautam Buddh Nagar 201305 Noida India', 'ARK NEWTECH', 'ravi', '9810134825', '28.533273645251', '77.413960509002', '2021-10-13 16:47:46', '2021-10-13 16:47:46'),
(44, 114, 'Phase-2 Gautam Buddh Nagar 201305 Noida India', 'ARK NEWTECH', 'ravi', '9810134825', '28.533273645251', '77.413960509002', '2021-10-13 16:53:19', '2021-10-13 16:53:19'),
(45, 115, 'Phase-2 Gautam Buddh Nagar 201305 Noida India', 'ARK NEWTECH', 'ravi', '9810134825', '28.533273645251', '77.413960509002', '2021-10-13 16:54:45', '2021-10-13 16:54:45'),
(46, 117, '1230 Makati Philippines', '', 'AaaaH0n Gl0be K0h', '+639369578679', '14.549613927395', '121.01027000695', '2021-10-14 13:03:19', '2021-10-14 13:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `pricecard`
--

CREATE TABLE `pricecard` (
  `id` int(11) NOT NULL,
  `service` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `vehicle_type` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `priceby` varchar(255) DEFAULT NULL,
  `baseprice` varchar(255) DEFAULT NULL,
  `stop` varchar(255) DEFAULT NULL,
  `services` varchar(255) DEFAULT NULL,
  `servicefee` varchar(255) DEFAULT NULL,
  `conviniencefor` varchar(255) DEFAULT NULL,
  `conviniencefee` varchar(255) DEFAULT NULL,
  `othercharges` varchar(255) DEFAULT NULL,
  `waitingfee` varchar(255) DEFAULT NULL,
  `standard` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pricecard`
--

INSERT INTO `pricecard` (`id`, `service`, `area`, `vehicle_type`, `city`, `priceby`, `baseprice`, `stop`, `services`, `servicefee`, `conviniencefor`, `conviniencefee`, `othercharges`, `waitingfee`, `standard`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', 'philippines', '1', 'philippines', 'km', '10', '10', 'add bag', '10', 'bag', '10', '10', '10', 'test', '10', '', '2021-06-18 08:58:09', '2021-06-18 08:58:09'),
(2, '1', 'philippines', '1', 'philippines', 'km', '10', '10', 'service2', '10', '10', '10', '10', '10', 'test', '10', '', '2021-06-18 08:58:09', '2021-06-18 08:58:09'),
(3, 'Dura Express', 'Metro Manila', 'Motercycle', '1', 'Km', '20', '20', 'service2', '20', '20', '20', '20', '20', '20', '20', 'active', '2021-08-31 05:07:29', '2021-10-05 21:11:29'),
(4, '1', '5', '2', '5', 'Km', '20', '20', 'add bug', '20', '20', '20', '20', '20', '20', '20', 'active', '2021-08-30 20:06:48', '2021-08-31 05:47:57'),
(5, '1', '5', '3', '5', 'Km', '20', '20', 'add bug', '20', '20', '20', '20', '20', '20', '20', 'active', '2021-08-30 20:07:38', '2021-08-31 05:48:24'),
(6, '1', '5', '3', '5', 'Km', '20', '20', 'add bug', '20', '20', '20', '20', '20', '20', '20', 'active', '2021-08-30 20:15:27', '2021-08-31 05:45:27'),
(7, '1', '5', '4', '5', 'Km', '20', '20', 'add bug', '20', '20', '20', '20', '20', '20', '20', 'active', '2021-08-30 20:16:03', '2021-08-31 05:46:03'),
(8, '1', 'ANDORRA', '4', 'ANGOLA', '00', '20', '1', 'add bug', '20', '20', '20', '20', '20', '-2', '50', 'active', '2021-08-31 14:12:05', '2021-08-31 14:12:05');

-- --------------------------------------------------------

--
-- Table structure for table `pricecards`
--

CREATE TABLE `pricecards` (
  `id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `base_fare` varchar(255) NOT NULL,
  `base_fare_comission` varchar(255) NOT NULL,
  `per_km` varchar(255) NOT NULL,
  `per_km_comission` varchar(255) NOT NULL,
  `add_stop_price` varchar(255) NOT NULL,
  `add_stop_price_comission` varchar(255) NOT NULL,
  `additional_services` varchar(255) NOT NULL,
  `additional_services_com` varchar(255) NOT NULL,
  `convenience_fee` varchar(255) NOT NULL,
  `convenience_fee_com` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pricecards`
--

INSERT INTO `pricecards` (`id`, `country_name`, `service_name`, `base_fare`, `base_fare_comission`, `per_km`, `per_km_comission`, `add_stop_price`, `add_stop_price_comission`, `additional_services`, `additional_services_com`, `convenience_fee`, `convenience_fee_com`, `status`, `created_at`, `updated_at`) VALUES
(1, '', 'MOTORCYCLE\r\n', '50', '0', '6', '0', '25', '5', '25', '5', '', '', '1', '2021-09-07 22:00:11', '2021-09-07 22:00:11'),
(2, '', 'BIKE\r\n', '', '', '', '', '', '', '', '', '', '', '1', '2021-09-07 22:16:24', '2021-09-07 22:16:24'),
(3, '', 'SEDAN 200KG', '', '', '', '', '', '', '', '', '', '', '1', '2021-09-07 22:16:24', '2021-09-09 22:18:00'),
(4, '', 'MVP 300KG', '', '', '', '', '', '', '', '', '', '', '1', '2021-09-07 22:16:24', '2021-09-09 22:18:52'),
(5, '', 'MVP 600KG', '', '', '', '', '', '', '', '', '', '', '1', '2021-09-07 22:16:24', '2021-09-07 22:16:24'),
(6, '', 'VAN 1000KG', '', '', '', '', '', '', '', '', '', '', '1', '2021-09-07 22:16:24', '2021-09-07 22:16:24'),
(7, '', 'FB 1000KG', '', '', '', '', '', '', '', '', '', '', '1', '2021-09-07 22:16:24', '2021-09-07 22:16:24'),
(8, '', 'FB 2000KG', '', '', '', '', '', '', '', '', '', '', '1', '2021-09-07 22:16:24', '2021-09-07 22:16:24'),
(9, '', 'ALUMINUM 2000KG', '', '', '', '', '', '', '', '', '', '', '1', '2021-09-07 22:16:24', '2021-09-07 22:16:24'),
(10, '', 'FOOD', '50', '5', '', '', '', '', '', '', '', '', '1', '2021-09-07 22:16:24', '2021-09-07 22:16:24'),
(11, '', 'SHOP', '150', '50', '', '', '', '', '', '', '', '', '1', '2021-09-07 22:16:24', '2021-09-07 22:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `upload_by` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `id_no` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `features` varchar(255) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(11) DEFAULT NULL COMMENT '''o'' => show everyone, ''1'' => show only me',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `upload_by`, `brand_id`, `model_name`, `id_no`, `year`, `features`, `price`, `percentage`, `description`, `status`, `created_at`, `updated_at`) VALUES
(19, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279160', '2018', '', 5800.00, '5', 'hi', 0, '2020-09-30 16:15:16', NULL),
(20, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279174', '2018', '', 6850.00, '5', 'hi', 0, '2020-09-30 16:22:27', NULL),
(21, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279173', '2018', '', 10150.00, '5', 'hi', 0, '2020-09-30 16:24:08', NULL),
(23, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279383 RBR Cadran serti de 10 diamants', '2018', '', 15200.00, '5', 'hi', 0, '2020-09-30 16:33:57', NULL),
(24, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279161', '2018', '', 8000.00, '5', 'Hi', 0, '2020-09-30 16:35:46', NULL),
(25, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279171', '2018', '', 10450.00, '5', 'HI', 0, '2020-09-30 16:39:39', NULL),
(26, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279381 RBR', '2018', '', 17900.00, '5', 'hI', 0, '2020-09-30 16:47:47', NULL),
(27, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279178', '2018', '', 22500.00, '5', 'HI', 0, '2020-09-30 16:50:07', NULL),
(28, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279138 RBR', '2018', '', 31900.00, '5', 'HI', 0, '2020-09-30 16:58:35', NULL),
(29, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279165', '2018', '', 23600.00, '5', 'HI', 0, '2020-09-30 17:04:20', NULL),
(30, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279135 RBR', '2018', '', 34900.00, '5', 'HI', 0, '2020-09-30 17:24:16', NULL),
(32, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279135_1 RBR Cadran pavé de 291 diamants', '2018', '', 45500.00, '5', 'hi', 0, '2020-09-30 17:38:56', NULL),
(33, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279166', '2018', '', 42100.00, '5', 'Hi', 0, '2020-09-30 17:41:43', NULL),
(34, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279136 RBR', '2018', '', 52100.00, '5', 'Hi', 0, '2020-09-30 17:43:33', NULL),
(35, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279174-1', '2018', '', 6750.00, '5', 'hi', 0, '2020-09-30 17:57:44', NULL),
(36, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279384 RBR Cadran nacre blanche serti de 10 diamants', '2018', '', 16300.00, '5', 'hi', 0, '2020-09-30 17:59:34', NULL),
(37, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279173_1', '2018', '', 8350.00, '5', 'Hy', 0, '2020-09-30 18:04:21', NULL),
(38, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279161_1', '2018', '', 8550.00, '5', 'hy', 0, '2020-09-30 18:13:30', NULL),
(39, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '279138 RBR_1 Cadran pavé de 291 diamants', '2018', '', 43400.00, '5', 'hy', 0, '2020-09-30 18:16:38', NULL),
(40, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '118238', '2018', '', 31550.00, '5', 'hy', 0, '2020-09-30 18:19:18', NULL),
(41, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '118348', '2018', '', 56300.00, '5', 'hy', 0, '2020-09-30 18:20:37', NULL),
(42, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '118205 Cadran serti de 8 diamants & 2 rubis', '2018', '', 33.00, '5', 'hy', 0, '2020-09-30 18:25:19', NULL),
(43, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '118235 Cadran en météorite serti de 10 diamants', '2018', '', 36.00, '5', 'hy', 0, '2020-09-30 18:28:23', NULL),
(44, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '118239 Cadran serti de 8 diamants', '2018', '', 33950.00, '5', 'hy', 0, '2020-09-30 18:35:17', NULL),
(45, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '118206', '2018', '', 52.00, '5', 'hy', 0, '2020-09-30 18:38:03', NULL),
(46, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '118346', '2018', '', 67.00, '5', 'hy', 0, '2020-09-30 18:50:09', NULL),
(47, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '118389', '2018', '', 55.00, '5', 'hy', 0, '2020-09-30 18:52:14', NULL),
(48, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '118138 Appliques-or', '2018', '', 20.00, '5', 'hy', 0, '2020-09-30 18:55:15', NULL),
(49, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '118139 Appliques-or', '2018', '', 21.00, '5', 'hy', 0, '2020-09-30 19:01:44', NULL),
(50, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '118135 Appliques-or', '2018', '', 21.00, '5', 'hy', 0, '2020-09-30 19:06:36', NULL),
(51, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '228238', '2018', '', 31.00, '5', 'hy', 0, '2020-09-30 19:10:08', NULL),
(52, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '228348 RBR', '2018', '', 50700.00, '5', 'hy', 0, '2020-09-30 20:01:48', NULL),
(53, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '228398 TBR', '2018', '', 76700.00, '5', 'hy', 0, '2020-09-30 20:03:24', NULL),
(54, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '228239', '2018', '', 34400.00, '5', 'hy', 0, '2020-09-30 20:06:52', NULL),
(55, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '228349 RBR', '2018', '', 53.00, '5', 'hy', 0, '2020-09-30 20:16:17', NULL),
(56, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '228349 RBR_1 Cadran pavé de 549 diamants', '2018', '', 77.00, '5', 'hy', 0, '2020-09-30 20:20:30', NULL),
(57, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '228235', '2018', '', 34400.00, '5', 'hy', 0, '2020-09-30 21:00:12', NULL),
(58, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '228235_1', '2018', '', 38.00, '5', 'hy', 0, '2020-09-30 21:12:30', NULL),
(59, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '228345 RBR Cadran pavé de 549 diamants', '2018', '', 77300.00, '5', 'hy', 0, '2020-09-30 21:17:13', NULL),
(60, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '228206', '2018', '', 57200.00, '5', 'hy', 0, '2020-09-30 21:20:46', NULL),
(61, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '228396 TBR Cadran serti de 10 diamants', '2018', '', 105900.00, '5', 'hy', 0, '2020-09-30 21:23:37', NULL),
(62, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '326138', '2018', '', 34850.00, '5', 'hy', 0, '2020-09-30 21:31:54', NULL),
(63, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '326938', '2018', '', 42300.00, '5', 'hy', 0, '2020-09-30 21:33:53', NULL),
(64, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '326139', '2018', '', 36250.00, '5', 'hy', 0, '2020-09-30 21:36:02', NULL),
(65, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '326939', '2018', '', 44.00, '5', 'hy', 0, '2020-09-30 21:54:37', NULL),
(66, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '326135', '2018', '', 36.00, '5', 'hy', 0, '2020-09-30 21:56:01', NULL),
(67, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '326935', '2018', '', 44.00, '5', 'hy', 0, '2020-09-30 21:57:24', NULL),
(68, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '326934', '2018', '', 13150.00, '5', 'hy', 0, '2020-09-30 22:00:26', NULL),
(69, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '326933', '2018', '', 15.00, '5', 'hy', 0, '2020-10-01 15:23:11', NULL),
(70, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '178240', '2018', '', 5.00, '5', 'hy', 0, '2020-10-01 15:24:50', NULL),
(71, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '178274 Cadran serti de 10 diamants', '2018', '', 8.00, '5', 'hy', 0, '2020-10-01 15:35:15', NULL),
(72, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '178384 Cadran nacre blanche,VI serti de 11 diamants', '2018', '', 15.00, '5', 'hy', 0, '2020-10-01 15:39:13', NULL),
(73, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '178243', '2018', '', 8.00, '5', 'hy', 0, '2020-10-01 15:47:43', NULL),
(74, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '178273 Cadran serti de 10 diamants', '2018', '', 10.00, '5', 'hy', 0, '2020-10-01 15:50:31', NULL),
(75, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '178343 Cadran appliques-or, VI serti de 11 diamants', '2018', '', 13.00, '5', 'hy', 0, '2020-10-01 15:52:35', NULL),
(76, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '178383 Cadran nacre blanche serti de 10 diamants', '2018', '', 19.00, '5', 'hy', 0, '2020-10-01 15:55:17', NULL),
(77, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '178241 Cadran serti de 10 diamants', '2018', '', 10.00, '5', 'hy', 0, '2020-10-01 16:06:29', NULL),
(78, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '178271 Cadran serti de 10 diamants', '2018', '', 10.00, '5', 'hy', 0, '2020-10-01 16:10:45', NULL),
(79, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '178341 Cadran appliques-or, VI serti de 11 diamants', '2018', '', 13100.00, '5', 'hy', 0, '2020-10-01 16:15:22', NULL),
(81, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '178278 Cadran nacre blanche serti de 10 diamants', '2018', '', 28.00, '5', 'hy', 0, '2020-10-01 17:06:55', NULL),
(82, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '178288-0063 Cadran serti de 8 diamants, 6& 9 sertis de 32 rubis', '2018', '', 38.00, '5', 'hy', 0, '2020-10-01 16:18:26', NULL),
(83, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '178279', '2018', '', 28.00, '5', 'hy', 0, '2020-10-01 16:20:27', NULL),
(84, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '178159 Cadran serti de 10 diamants', '2018', '', 42.00, '5', 'hy', 0, '2020-10-01 16:22:56', NULL),
(85, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '178245 Cadran nacre blanche serti de 10 diamants', '2018', '', 30.00, '5', 'hy', 0, '2020-10-01 16:29:35', NULL),
(86, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '178275 Cadran serti de 10 diamants', '2018', '', 28.00, '5', 'hy', 0, '2020-10-01 16:31:12', NULL),
(87, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '178344', '2018', '', 9.00, '5', 'hy', 0, '2020-10-01 17:04:57', NULL),
(88, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '115200 Appliques-or', '2018', '', 5.00, '5', 'hy', 0, '2020-10-01 17:11:44', NULL),
(89, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '115234 Cadran serti de 5 diamants', '2018', '', 7.00, '5', 'hy', 0, '2020-10-01 17:14:58', NULL),
(90, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '115234-0012', '2018', '', 7700.00, '5', 'hi', 0, '2020-10-01 17:46:05', NULL),
(91, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '116203', '2018', '', 9450.00, '5', 'hi', 0, '2020-10-01 17:48:30', NULL),
(92, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '116233_1', '2018', 'or jaune et acier,36 mm,automatique,medium', 11350.00, '5', 'hi', 0, '2020-10-01 17:51:38', NULL),
(93, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '116200-0060', '2018', 'acier,36 mm,automatique,homme', 6100.00, '5', 'hi', 0, '2020-10-01 17:56:24', NULL),
(94, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '116200-0085', '2018', 'acier,36 mm,automatique,homme', 6100.00, '5', 'hi', 0, '2020-10-01 18:00:34', NULL),
(95, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '116234-0104', '2018', 'acier,36 mm,automatique,medium', 9050.00, '5', 'hi', 0, '2020-10-01 18:03:52', NULL),
(96, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '116244-0007', '2018', 'or gris et acie,36 mm,acier,automatique,medium', 13450.00, '5', 'hi', 0, '2020-10-01 18:06:24', NULL),
(97, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '116244', '2018', 'or gris et acier,36 mm,acier,automatique,medium', 17950.00, '5', 'hi', 0, '2020-10-01 18:09:29', NULL),
(98, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '116243', '2018', 'or jaune,36 mm,or jaune et acier,automatique,medium', 20600.00, '5', 'hi', 0, '2020-10-01 18:16:48', NULL),
(99, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '116238-0059', '2018', 'or jaune,36 mm,automatique,medium', 26600.00, '5', 'hi', 0, '2020-10-01 18:24:19', NULL),
(100, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '116238-0062', '2018', 'or jaune,36 mm,automatique,homme', 31000.00, '5', 'hi', 0, '2020-10-01 18:28:28', NULL),
(101, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '116231-0074', '2018', 'or rose et acier,36 mm,automatique,medium', 11650.00, '5', 'hi', 0, '2020-10-01 18:31:27', NULL),
(102, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '116231-0057', '2018', 'or rose et acier,36 mm,or et acier,automatique,medium', 12100.00, '5', 'hi', 0, '2020-10-01 18:34:48', NULL),
(103, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '116234', '2018', 'or gris et acier,36 mm,acier,automatique,medium', 9150.00, '5', 'hi', 0, '2020-10-01 18:46:13', NULL),
(104, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '116233', '2018', 'or jaune et acier,36 mm,automatique,medium', 11800.00, '5', 'hi', 0, '2020-10-01 18:48:41', NULL),
(105, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '116201', '2018', 'or rose et acier,36 mm,automatique,medium', 10200.00, '5', 'hi', 0, '2020-10-01 18:52:01', NULL),
(106, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '126300', '2018', 'acier,41 mm,acier,automatique', 6750.00, '5', 'hi', 0, '2020-10-01 19:02:50', NULL),
(107, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '126300_1', '2018', 'acier,41 mm,automatique,homme', 6850.00, '5', 'hi', 0, '2020-10-01 19:24:32', NULL),
(108, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '126334', '2018', 'or gris et acier,41 mm,acier,automatique,homme', 8600.00, '5', 'hi', 0, '2020-10-01 20:09:47', NULL),
(109, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '126334_2', '2018', 'or gris et acier,acier,41 mm,automatique,homme', 10400.00, '5', 'hi', 0, '2020-10-01 20:13:44', NULL),
(110, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '126334_3', '2018', 'or gris et acier,41 mm,acier,automatique,homme', 13100.00, '5', 'hi', 0, '2020-10-01 20:18:29', NULL),
(111, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '126303', '2018', 'or jaune et acier,41 mm,automatique,homme', 11000.00, '5', 'hi', 0, '2020-10-01 20:24:35', NULL),
(112, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '126303_1', '2018', 'or jaune et acier,41 mm,automatique,homme', 13350.00, '5', 'hi', 0, '2020-10-01 20:56:10', NULL),
(113, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '126333', '2018', 'or jaune et acier,41 mm,automatique,homme', 11100.00, '5', 'hi', 0, '2020-10-01 20:58:04', NULL),
(114, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '126333_1', '2018', 'or jaune et acier,41 mm,automatique,homme', 11650.00, '5', 'hi', 0, '2020-10-01 21:06:51', NULL),
(115, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '126333_2', '2018', 'or jaune et acier,41 mm,automatique,homme', 16050.00, '5', 'hi', 0, '2020-10-01 21:10:47', NULL),
(116, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '126301', '2018', 'or rose et acier,41 mm,automatique,homme', 11300.00, '5', 'hi', 0, '2020-10-01 21:13:42', NULL),
(117, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '126301_1', '2018', 'or rose et acier,41 mm,automatique,homme', 15700.00, '5', 'hi', 0, '2020-10-01 21:16:20', NULL),
(118, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '126331', '2018', '41 mm,or rose et acier,automatique,homme', 11400.00, '5', 'hi', 0, '2020-10-01 21:37:43', NULL),
(119, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '126331_1', '2018', 'or rose et acier,41 mm,automatique,homme', 13750.00, '5', 'hi', 0, '2020-10-01 21:40:34', NULL),
(120, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '176200', '2018', 'acier,26 mm,26 mm,dame', 4400.00, '5', 'hi', 0, '2020-10-05 16:10:51', NULL),
(121, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '177200', '2018', 'acier,31 mm,automatique,medium', 4500.00, '5', 'hi', 0, '2020-10-05 16:16:06', NULL),
(122, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '114200', '2018', 'acier,34 mm,automatique,medium', 4600.00, '5', 'hi', 0, '2020-10-05 16:21:21', NULL),
(123, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '116000', '2018', 'acier,36 mm,automatique,medium', 4900.00, '5', 'hi', 0, '2020-10-05 16:24:41', NULL),
(124, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '114300', '2018', 'acier,39 mm,automatique,homme', 5200.00, '5', 'hi', 0, '2020-10-05 16:42:09', NULL),
(125, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '80318', '2018', 'or jaune,29 mm,automatique,dame', 27700.00, '5', 'hi', 0, '2020-10-05 16:44:11', NULL),
(126, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '80298', '2018', 'or jaune,29 mm,automatique,dame', 41700.00, '5', 'hi', 0, '2020-10-05 16:48:00', NULL),
(127, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '80319', '2018', 'or gris,29 mm,automatique,dame', 31250.00, '5', 'hi', 0, '2020-10-05 17:03:36', NULL),
(128, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '80299', '2018', 'or gris,29 mm,automatique,dame', 64850.00, '5', 'hi', 0, '2020-10-05 17:06:57', NULL),
(129, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '80315', '2018', 'or rose,29 mm,automatique,dame', 29800.00, '5', 'hi', 0, '2020-10-05 17:25:44', NULL),
(130, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '80315_1', '2018', 'or rose,29 mm,automatique,dame', 31250.00, '5', 'hi', 0, '2020-10-05 17:59:35', NULL),
(131, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '80285', '2018', 'or rose,29 mm,automatique,dame', 49350.00, '5', 'hi', 0, '2020-10-05 18:01:24', NULL),
(132, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '80285_1', '2018', 'or rose,29 mm,automatique,dame', 76250.00, '5', 'hi', 0, '2020-10-05 18:03:47', NULL),
(133, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '81318', '2018', 'or jaune,34 mm,automatique,medium', 33150.00, '5', 'hi', 0, '2020-10-05 18:06:31', NULL),
(134, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '81298', '2018', 'or jaune,34 mm,automatique,medium', 44400.00, '5', 'hi', 0, '2020-10-05 18:08:55', NULL),
(135, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '81299', '2018', 'or gris,34 mm,automatique,dame', 48700.00, '5', 'hi', 0, '2020-10-05 18:14:35', NULL),
(136, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '81409', '2018', 'or gris serti de diamants,34 mm,automatique,dame', 149750.00, '5', 'hi', 0, '2020-10-05 18:18:15', NULL),
(137, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '81315', '2018', 'or rose,34 mm,automatique,dame', 35250.00, '5', 'hi', 0, '2020-10-05 18:33:39', NULL),
(138, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '81405', '2018', 'or rose et diamants,34 mm,automatique,dame', 149750.00, '5', 'hi', 0, '2020-10-05 18:37:45', NULL),
(139, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '86289', '2018', 'or gris serti de diamants,39 mm,or gris,automatique,homme', 59200.00, '5', 'hi', 0, '2020-10-05 18:40:38', NULL),
(140, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '86289_1', '2018', 'or gris serti de diamants,39 mm,automatique,dame', 113400.00, '5', 'hi', 0, '2020-10-05 18:50:27', NULL),
(141, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '86409', '2018', 'or gris serti de diamants,39 mm,automatique,medium', 186250.00, '5', 'hi', 0, '2020-10-05 19:25:05', NULL),
(142, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '86285', '2018', 'or rose serti de diamants,39 mm,or rose,automatique,medium', 58800.00, '5', 'hi', 0, '2020-10-05 19:26:58', NULL),
(143, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '86285_1', '2018', 'or rose serti de diamants,39 mm,automatique,homme', 113400.00, '5', 'hi', 0, '2020-10-05 19:29:10', NULL),
(144, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '86405', '2018', 'or rose serti de diamants,39 mm,automatique,medium', 186250.00, '5', 'hi', 0, '2020-10-05 19:43:58', NULL),
(145, 1, 1, 'COLLECTION PROFESSIONNELLES', '214270', '2018', 'acier,39 mm,automatique,medium', 6000.00, '5', 'hi', 0, '2020-10-05 20:01:23', NULL),
(146, 1, 1, 'COLLECTION PROFESSIONNELLES', '216570-0001', '2018', 'acier,42 mm,automatique,homme', 7450.00, '5', 'hi', 0, '2020-10-05 20:05:53', NULL),
(147, 1, 1, 'COLLECTION PROFESSIONNELLES', '216570-0002', '2018', 'acier,42 mm,automatique,homme', 7450.00, '5', 'hi', 0, '2020-10-05 20:11:06', NULL),
(148, 1, 1, 'COLLECTION PROFESSIONNELLES', '214270', '2018', 'acier,39 mm,39 mm,medium', 6000.00, '5', 'hi', 0, '2020-10-05 20:15:02', NULL),
(149, 1, 1, 'COLLECTION PROFESSIONNELLES', '114060', '2018', 'acier,40 mm,automatique,homme', 6850.00, '5', 'hi', 0, '2020-10-05 20:21:46', NULL),
(150, 1, 1, 'COLLECTION PROFESSIONNELLES', '116618', '2018', 'or jaune,40 mm,automatique,homme', 31300.00, '5', 'hi', 0, '2020-10-05 20:23:35', NULL),
(151, 1, 1, 'COLLECTION PROFESSIONNELLES', '116618', '2018', 'or jaune,40 mm,automatique,homme', 31300.00, '5', 'hi', 0, '2020-10-05 20:31:53', NULL),
(152, 1, 1, 'COLLECTION PROFESSIONNELLES', '116619', '2018', 'or gris,40 mm,automatique,homme', 33800.00, '5', 'hi', 0, '2020-10-05 20:34:30', NULL),
(153, 1, 1, 'COLLECTION PROFESSIONNELLES', '116610', '2018', 'acier,40 mm,automatique,homme', 7.00, '5', 'hi', 0, '2020-10-05 20:38:27', NULL),
(154, 1, 1, 'COLLECTION PROFESSIONNELLES', '116613', '2018', 'or jaune et acier,40 mm,automatique,homme', 12350.00, '5', 'hi', 0, '2020-10-05 20:44:50', NULL),
(155, 1, 1, 'COLLECTION PROFESSIONNELLES', '116613', '2018', 'or jaune et acier,40 mm,automatique,homme', 12350.00, '5', 'hi', 0, '2020-10-05 20:48:41', NULL),
(156, 1, 1, 'COLLECTION PROFESSIONNELLES', '116610', '2018', 'acier,40 mm,automatique,homme', 8300.00, '5', 'hi', 0, '2020-10-05 20:50:42', NULL),
(157, 1, 1, 'COLLECTION PROFESSIONNELLES', '116660_1', '2018', 'acier,44 mm,automatique,homme', 11350.00, '5', 'hi', 0, '2020-10-05 20:56:18', NULL),
(158, 1, 1, 'COLLECTION PROFESSIONNELLES', '116660', '2018', 'acier,44 mm,automatique,homme', 11050.00, '5', 'hi', 0, '2020-10-05 20:58:17', NULL),
(159, 1, 1, 'COLLECTION PROFESSIONNELLES', '116710', '2018', 'acier,44 mm,automatique,homme', 7700.00, '5', 'hi', 0, '2020-10-05 21:01:48', NULL),
(160, 1, 1, 'COLLECTION PROFESSIONNELLES', '116713', '2018', 'or jaune et acier,40 mm,automatique,homme', 11950.00, '5', 'hi', 0, '2020-10-05 21:04:17', NULL),
(161, 1, 1, 'COLLECTION PROFESSIONNELLES', '116718', '2018', 'or jaune,40 mm,automatique,homme', 30500.00, '5', 'hi', 0, '2020-10-05 21:06:17', NULL),
(162, 1, 1, 'COLLECTION PROFESSIONNELLES', '116710', '2018', 'acier,automatique,homme', 8200.00, '5', 'hi', 0, '2020-10-05 21:08:46', NULL),
(163, 1, 1, 'COLLECTION PROFESSIONNELLES', '116719', '2018', 'or gris,40 mm,automatique,homme', 35.00, '5', 'hi', 0, '2020-10-05 21:20:11', NULL),
(164, 1, 1, 'COLLECTION PROFESSIONNELLES', '116622', '2018', 'platine et acier,40 mm,automatique,homme', 10600.00, '5', 'hi', 0, '2020-10-05 21:22:11', NULL),
(165, 1, 1, 'COLLECTION PROFESSIONNELLES', '116655', '2018', 'or rose,40 mm,caoutchouc,automatique,homme', 22850.00, '5', 'hi', 0, '2020-10-05 21:26:09', NULL),
(166, 1, 1, 'COLLECTION PROFESSIONNELLES', '268655', '2018', 'or rose,37 mm,caoutchouc,automatique,homme', 20200.00, '5', 'hi', 0, '2020-10-05 21:49:20', NULL),
(167, 1, 1, 'COLLECTION PROFESSIONNELLES', '268622', '2018', 'platine et acier,37 mm,acier,automatique,medium', 10150.00, '5', 'hi', 0, '2020-10-05 21:52:25', NULL),
(168, 1, 1, 'COLLECTION PROFESSIONNELLES', '268621', '2018', 'or rose et acier,37 mm,automatique,medium', 11800.00, '5', 'hi', 0, '2020-10-05 21:58:19', NULL),
(169, 1, 1, 'COLLECTION PROFESSIONNELLES', '116621', '2018', 'or rose et acier,40 mm,automatique,homme', 12900.00, '5', 'hi', 0, '2020-10-05 22:00:11', NULL),
(170, 1, 1, 'COLLECTION PROFESSIONNELLES', '116688', '2018', 'or jaune,44 mm,automatique,homme', 39900.00, '5', 'hi', 0, '2020-10-05 22:02:23', NULL),
(171, 1, 1, 'COLLECTION PROFESSIONNELLES', '116689', '2018', 'or gris,44 mm,automatique,homme', 44100.00, '5', 'hi', 0, '2020-10-05 22:21:08', NULL),
(172, 1, 1, 'COLLECTION PROFESSIONNELLES', '116681', '2018', 'or rose et acier,44 mm,automatique,homme', 23050.00, '5', 'hi', 0, '2020-10-05 22:24:36', NULL),
(173, 1, 1, 'COLLECTION PROFESSIONNELLES', '116680', '2018', 'acier,44 mm,automatique,homme', 17150.00, '5', 'hi', 0, '2020-10-05 22:27:57', NULL),
(174, 1, 1, 'COLLECTION PROFESSIONNELLES', '116505-0001', '2018', 'or rose,40 mm,automatique,homme', 34300.00, '5', 'hi', 0, '2020-10-05 22:30:36', NULL),
(175, 1, 1, 'COLLECTION PROFESSIONNELLES', '116515', '2018', 'or rose,40 mm,croco,automatique,homme', 26350.00, '5', 'hi', 0, '2020-10-05 22:33:10', NULL),
(176, 1, 1, 'COLLECTION PROFESSIONNELLES', '116506-0001', '2018', 'platine,40 mm,automatique,homme', 68700.00, '5', 'hi', 0, '2020-10-05 22:36:06', NULL),
(177, 1, 1, 'COLLECTION PROFESSIONNELLES', '116500', '2018', '- Boîtier: Acier,- Diamètre du boîtier: 40 mm,- Mouvement: Automatique,- Sexe : Homme/Unisexe', 23500.00, '5', 'hi', 0, '2020-10-27 17:50:07', NULL),
(178, 1, 1, 'COLLECTION PROFESSIONNELLES', '116503', '2018', 'or jaune et acier,', 15500.00, '5', 'hi', 0, '2020-10-06 14:58:10', NULL),
(179, 1, 1, 'Cosmograph Daytona Or Jaune Oysterflex', '116518', '2019', '- Boîtier: Or Jaune,- Mouvement: Automatique,- Bracelet : Caoutchouc,- Mouvement: Automatique,- Sexe : Homme/Unisexe', 31400.00, '18', 'Cette Oyster Perpetual Cosmograph Daytona en Or jaune 18 ct assortie d’un cadran couleur champagne et noir et d’un bracelet Oysterflex est dotée d’une lunette Cerachrom noire et d’une échelle tachymétrique. Ce chronographe a été conçu pour être le meilleur outil de chronométrage des pilotes de course d’endurance. Plus de cinquante ans après son lancement, le Cosmograph Daytona conserve un statut à nul autre pareil parmi les chronographes de sport, et continue de transcender les époques.\r\nPrix magasin : 26 800 €', 0, '2020-10-27 17:44:04', NULL),
(180, 1, 1, 'Cosmograph Daytona Or Jaune Cadran Vert', '116508', '2018', '- Boîtier: Or Jaune,- Diamètre du boîtier: 40 mm,- Mouvement: Automatique,- Sexe : Homme/Unisexe', 46800.00, '35', '.\r\nCette Oyster Perpetual Cosmograph Daytona en Or jaune 18 ct est assortie d’un cadran vert et d’un bracelet Oyster. Elle est dotée d’une lunette Or jaune 18 ct et d’une échelle tachymétrique moulée.\r\nCe chronographe a été conçu pour être le meilleur outil de chronométrage des pilotes de course d’endurance. Plus de cinquante ans après son lancement, le Cosmograph Daytona conserve un statut à nul autre pareil parmi les chronographes de sport, et continue de transcender les époques.\r\nPrix magasin : 34 500 €', 0, '2020-10-27 17:23:28', NULL),
(181, 1, 1, 'Cosmograph Daytona Or Gris Oysterflex', '116519', '2020', '- Boîtier: Or Gris,- Diamètre du boîtier: 40 mm,- Bracelet: Caoutchouc,- Mouvement: Automatique,- Sexe : Homme/Unisexe', 31800.00, '21', 'Cette Oyster Perpetual Cosmograph Daytona en Or gris 18 ct assortie d’un cadran Acier et noir et d’un bracelet Oysterflex est dotée d’une lunette Cerachrom noire et d’une échelle tachymétrique.\r\nCe chronographe a été conçu pour être le meilleur outil de chronométrage des pilotes de course d’endurance. Plus de cinquante ans après son lancement, le Cosmograph Daytona conserve un statut à nul autre pareil parmi les chronographes de sport, et continue de transcender les époques.\r\nPrix magasin 28 000 €', 0, '2020-10-27 17:32:53', NULL),
(182, 1, 1, 'Cosmograph Daytona Or Gris', '116509', '2020', '- Boîtier: Or Gris,- Diamètre du boîtier: 40 mm,- Mouvement: Automatique,- Sexe : Homme/Unisexe', 36800.00, '0', '.\r\nCette Oyster Perpetual Cosmograph Daytona en Or gris 18 ct est assortie d’un cadran Acier et noir et d’un bracelet Oyster. Elle est dotée d’une lunette Or gris 18 ct et d’une échelle tachymétrique moulée. Ce chronographe a été conçu pour être le meilleur outil de chronométrage des pilotes de course d’endurance. Plus de cinquante ans après son lancement, le Cosmograph Daytona conserve un statut à nul autre pareil parmi les chronographes de sport, et continue de transcender les époques.\r\nPrix magasin : 37 100 €.', 0, '2020-10-27 17:32:06', NULL),
(183, 1, 1, 'Cosmograph Daytona Platine', '116506-0002', '2018', '- Boîtier: Platine,- Diamètre du boîtier: 40 mm,- Mouvement: Automatique,- Sexe : Homme/Unisexe', 78800.00, '6', '.\r\nCette Oyster Perpetual Cosmograph Daytona en Platine assortie d’un cadran bleu glacier et d’un bracelet Oyster est dotée d’une lunette Cerachrom marron et d’une échelle tachymétrique.\r\nCe chronographe a été conçu pour être le meilleur outil de chronométrage des pilotes de course d’endurance. Plus de cinquante ans après son lancement, le Cosmograph Daytona conserve un statut à nul autre pareil parmi les chronographes de sport, et continue de transcender les époques. Prix magasin : 74 450 €', 0, '2020-10-27 00:55:15', NULL),
(184, 1, 1, 'OYSTER PERPETUAL CLASSIQUES', '116400', '2018', '7 500,acier,automatique,homme', 40.00, '5', 'hi', 0, '2020-10-06 15:56:01', NULL),
(185, 1, 1, 'Milgauss', '116400 GV', '2020', '- Boîtier: Acier,- Diamètre du boîtier: 40 mm,- Mouvement: Automatique,- Sexe: Homme/Unisexe', 11300.00, '50', '.\r\nLa glace saphir vert développée en exclusivité par Rolex est pratiquement inrayable, d’une couleur inaltérable et disponible uniquement dans la collection Milgauss. Son vert clair teinté dans la masse de la glace devient presque luminescent le long de son contour biseauté. Le fruit d’un procédé secret ayant demandé des années de développement pour en acquérir la maîtrise et requérant des semaines de production. L’Oyster Perpetual Milgauss est dotée d’un cadran noir avec des index luminescents et d’une glace saphir vert qui émet des reflets lumineux tout en conservant une lisibilité optimale.\r\nPrix magasin : 7 850 €', 0, '2020-10-27 17:29:55', NULL),
(186, 1, 1, 'Sea-Dweller', '126600', '2019', '- Boîtier: Acier,- Diamètre du boîtier: 43 mm,- Mouvement: Automatique,- Sexe : Montre Homme/Unisexe', 13300.00, '28', '.\r\nL’Oyster Perpetual Sea‑Dweller en Acier Oystersteel est dotée d’une lunette en céramique noire et d’un bracelet Oyster.\r\nElle est dotée d’un cadran noir distinctif et de grands index luminescents. Étanche jusqu\'à 1 220 mètres, dotée d’une lunette tournante unidirectionnelle 60 minutes, la Rolex Sea-Dweller fait partie des montres de plongée ultra-résistantes conçues par Rolex pour l’exploration sous-marine.  \r\nPrix magasin : 10 950 €', 0, '2020-10-27 17:26:04', NULL),
(187, 1, 1, 'Air-King', '116900', '2018', '- Boîtier: Acier,- Diamètre du boîtier: 40 mm,- Mouvement: Automatique,- Sexe: Homme/Unisexe', 6700.00, '17', '.\r\nDotée d’un boîtier 40 mm en Acier Oystersteel, d’un bracelet Oyster à maillons massifs avec fermoir Oysterclasp et d’un cadran Noir caractéristique, l’Air-King perpétue la tradition aéronautique de la Rolex Oyster originale. Le cadran Air-King se distingue par son cadran noir combinant de grands repères 3, 6 et 9 pour les heures et une échelle des minutes au premier plan pour la lecture des temps de navigation. Il arbore le nom Air-King écrit dans les caractères créés spéciﬁquement pour ce modèle dans les années 1950.\r\nPrix magasin : 6 050 €.', 0, '2020-10-27 17:25:01', NULL),
(188, 1, 1, 'COLLECTION CELLINI', '50535', '2018', 'or rose,39 mm,cuir,automatique,homme', 24550.00, '5', 'hi', 0, '2020-10-06 16:18:25', NULL),
(189, 1, 1, 'COLLECTION CELLINI', '50529', '2018', 'or gris,39 mm,cuir,automatique,homme', 17.00, '5', 'hi', 0, '2020-10-06 16:22:52', NULL),
(190, 1, 1, 'COLLECTION CELLINI', '50525', '2018', 'or rose,39 mm,cuir,automatique,homme', 17750.00, '5', 'hi', 0, '2020-10-06 16:26:03', NULL),
(191, 1, 1, 'COLLECTION CELLINI', '50515', '2018', 'or rose,39 mm,automatique,homme', 16350.00, '5', 'hi', 0, '2020-10-06 16:51:48', NULL),
(192, 1, 1, 'COLLECTION CELLINI', '50509', '2018', 'or gris,39 mm,cuir,automatique,homme', 13950.00, '5', 'hi', 0, '2020-10-06 17:00:20', NULL),
(193, 1, 1, 'COLLECTION CELLINI', '50709', '2018', '39 mm,cuir,automatique,homme', 21050.00, '5', 'hi', 0, '2020-10-06 17:02:50', NULL),
(194, 1, 1, 'COLLECTION CELLINI', '50505', '2018', 'or rose,39 mm,cuir,automatique,homme', 13950.00, '5', 'hi', 0, '2020-10-06 17:05:34', NULL),
(195, 1, 1, 'COLLECTION CELLINI', '50605', '2018', 'or rose serti de diamants,39 mm,cuir,automatique,homme', 19000.00, '5', 'hi', 0, '2020-10-06 17:08:37', NULL),
(196, 1, 11, 'COLLECTION SPORT', '25865BC.OO.1105BC.01', '2013', 'or gris,44x58,5 mm,automatique,homme', 629160.00, '5', 'hi', 0, '2020-10-06 18:11:21', NULL),
(197, 1, 11, 'COLLECTION SPORT', '25829ST.OO.0944ST.01', '2013', 'acier,automatique,homme', 71.00, '5', 'hi', 0, '2020-10-06 18:32:41', NULL),
(198, 1, 11, 'COLLECTION SPORT', '25865BC.OO.1105BC.04', '2013', 'or gris,44x58,5 mm,automatique,homme', 629160.00, '5', 'hi', 0, '2020-10-06 18:31:45', NULL),
(199, 1, 11, 'COLLECTION SPORT', '26068BC.ZZ.D002CR.01', '2013', 'or serti diamants,39x49,5 mm,croco,automatique,homme', 76020.00, '5', 'hi', 0, '2020-10-06 18:31:20', NULL),
(200, 1, 11, 'COLLECTION SPORT', '26120BA.OO.D088CR.01', '2013', 'or jaune,39 mm,croco,automatique,homme', 28970.00, '5', 'hi', 0, '2020-10-06 18:34:17', NULL),
(201, 1, 11, 'COLLECTION SPORT', '26120OR.OO.D002CR.01', '2013', 'or rose,39x49,5 mm,croco,automatique,homme', 28970.00, '5', 'hi', 0, '2020-10-06 19:02:46', NULL),
(202, 1, 11, 'COLLECTION SPORT', '26120ST.OO.1220ST.01', '2013', '', 17590.00, '5', 'hi', 0, '2020-10-06 19:10:38', NULL),
(203, 1, 11, 'COLLECTION SPORT', '26120ST.OO.1220ST.02', '2013', 'acier,39x49,5 mm,automatique,homme', 17590.00, '5', 'hi', 0, '2020-10-06 19:12:44', NULL),
(204, 1, 11, 'COLLECTION SPORT', '26252OR.OO.D092CR.01', '2013', '', 56350.00, '5', 'hi', 0, '2020-10-06 19:13:49', NULL),
(205, 1, 11, 'COLLECTION SPORT', '15154BC.ZZ.D004CU.01', '2013', '', 69210.00, '5', 'hi', 0, '2020-10-06 19:19:13', NULL),
(206, 1, 11, 'COLLECTION SPORT', '15305OR.OO.D088CR.01', '2013', 'or rose,39x49,5 mm,croco,automatique,homme', 42120.00, '5', 'hi', 0, '2020-10-06 19:21:07', NULL),
(207, 1, 11, 'COLLECTION SPORT', '15305ST.OO.1220ST.01', '2013', '', 30.00, '5', 'hi', 0, '2020-10-06 19:22:38', NULL),
(208, 1, 11, 'COLLECTION SPORT', '26603ST.OO.D002CR.01', '2013', 'acier,42 mm,croco,automatique,homme', 57.00, '5', 'hi', 0, '2020-10-06 19:26:53', NULL),
(209, 1, 11, 'COLLECTION SPORT', '26330OR.OO.D088CR.01', '2013', 'or rose,39 mm,croco,automatique,homme', 26700.00, '5', 'hi', 0, '2020-10-06 19:31:39', NULL),
(210, 1, 11, 'COLLECTION SPORT', '26330ST.OO.1220ST.01', '2013', 'acier,39 mm,automatique,homme', 15450.00, '5', 'hi', 0, '2020-10-06 19:37:01', NULL),
(211, 1, 11, 'COLLECTION SPORT', '25966BC.ZZ.1185BC.01', '2013', 'or gris,39x49,5 mm,automatique,homme', 54380.00, '5', 'hi', 0, '2020-10-06 19:39:24', NULL),
(212, 1, 11, 'COLLECTION SPORT', '25967BC.ZZ.1185BC.01', '2013', 'or serti diamants,39x49,5 mm,or gris,automatique,homme', 103790.00, '5', 'hi', 0, '2020-10-06 19:43:15', NULL),
(213, 1, 11, 'COLLECTION SPORT', '25978BC.ZZ.1190BC.01', '2013', 'or serti diamants,39x49,5 mm,or gris,automatique,homme', 160140.00, '5', 'hi', 0, '2020-10-06 20:14:43', NULL),
(214, 1, 11, 'COLLECTION SPORT', '26120ST.OO.1220ST.03', '2013', 'acier,39x49,5 mm,automatique,homme', 17590.00, '5', 'hi', 0, '2020-10-06 20:44:32', NULL),
(215, 1, 11, 'COLLECTION SPORT', '26120OR.OO.D088CR.01', '2013', 'or rose,39x49,5 mm,croco,automatique,homme', 28970.00, '5', 'hi', 0, '2020-10-06 20:52:33', NULL),
(216, 1, 11, 'COLLECTION SPORT', '26252OR.OO.D092CR.02', '2013', 'or rose,39x49 mm,croco,automatique,homme', 56350.00, '5', 'hi', 0, '2020-10-06 20:55:47', NULL),
(217, 1, 11, 'COLLECTION SPORT', '25820ST.OO.0944ST.03', '2013', 'acier,39x49 mm,automatique,homme', 44780.00, '5', 'hi', 0, '2020-10-06 20:58:50', NULL),
(218, 1, 11, 'COLLECTION SPORT', '25820ST.OO.0944ST.04', '2013', 'acier,39x49 mm,automatique,homme', 44780.00, '5', 'hi', 0, '2020-10-06 21:13:11', NULL),
(219, 1, 11, 'COLLECTION SPORT', '25820ST.OO.0944ST.05', '2013', 'acier,39x49 mm,automatique,homme', 44780.00, '5', 'hi', 0, '2020-10-06 21:36:55', NULL),
(220, 1, 11, 'COLLECTION SPORT', '25829OR.OO.0944OR.01', '2013', 'or rose,39x49 mm,automatique,homme', 94900.00, '5', 'hi', 0, '2020-10-06 21:41:44', NULL),
(221, 1, 11, 'COLLECTION SPORT', '25829OR.OO.0944OR.01', '2013', 'or rose,39x49 mm,automatique,homme', 94900.00, '5', 'hi', 0, '2020-10-06 21:42:07', NULL),
(222, 1, 11, 'COLLECTION SPORT', '25829PT.OO.0944PT.01', '2013', 'platine,39x49 mm,platine,automatique,homme', 121090.00, '5', 'hi', 0, '2020-10-06 21:51:44', NULL),
(223, 1, 11, 'COLLECTION SPORT', '15130BC.ZZ.8042BC.01', '2013', 'or gris serti diamants,42 mm,or blanc et diamants,automatique,homme', 1113210.00, '5', 'hi', 0, '2020-10-06 21:55:46', NULL),
(224, 1, 11, 'COLLECTION SPORT', '15202OR.OO.1240OR.01', '2013', 'or rose,39 mm,or rose,automatique,homme', 42120.00, '5', 'hi', 0, '2020-10-06 22:00:33', NULL),
(225, 1, 11, 'COLLECTION SPORT', '15202ST.OO.1240ST.01', '2013', 'acier,39 mm,automatique,homme', 18160.00, '5', 'hi', 0, '2020-10-06 22:08:21', NULL),
(226, 1, 11, 'COLLECTION SPORT', '15203PT.OO.1240PT.01', '2013', 'platine,39 mm,,automatique,homme', 114580.00, '5', 'hi', 0, '2020-10-07 15:57:00', NULL),
(227, 1, 11, 'COLLECTION SPORT', '15400OR.OO.1220OR.01', '2013', 'or rose,41 mm,automatique,homme', 41820.00, '5', 'hi', 0, '2020-10-06 22:24:10', NULL),
(228, 1, 11, 'COLLECTION SPORT', '15400OR.OO.1220OR.02', '2013', 'or rose,41 mm,automatique,homme', 41820.00, '5', 'hi', 0, '2020-10-06 22:29:21', NULL),
(229, 1, 11, 'COLLECTION SPORT', '15400OR.OO.1220OR.02', '2013', 'or rose,41 mm,automatique,homme', 41820.00, '5', 'hi', 0, '2020-10-06 22:29:31', NULL),
(230, 1, 11, 'COLLECTION SPORT', '15400OR.OO.D002CR.01', '2013', 'or rose,41 mm,croco,automatique,homme', 26500.00, '5', 'hi', 0, '2020-10-06 22:32:12', NULL),
(231, 1, 11, 'COLLECTION SPORT', '15400ST.OO.1220ST.01', '2013', 'acier,41 mm,automatique,homme', 13660.00, '5', 'hi', 0, '2020-10-06 22:34:16', NULL),
(232, 1, 11, 'COLLECTION SPORT', '15400ST.OO.1220ST.03', '2013', 'acier,41 mm,automatique,homme', 13660.00, '5', 'hi', 0, '2020-10-07 16:01:13', NULL),
(233, 1, 11, 'COLLECTION SPORT', '15450OR.OO.D002CR.01', '2013', 'or rose,37 mm,croco,automatique,medium', 23730.00, '5', 'hi', 0, '2020-10-07 16:12:01', NULL),
(234, 1, 11, 'COLLECTION SPORT', '15450OR.OO.D088CR.01', '2013', 'or rose,37 mm,croco,automatique,medium', 23730.00, '5', 'hi', 0, '2020-10-07 16:14:40', NULL),
(235, 1, 11, 'COLLECTION SPORT', '15450ST.OO.1256ST.01', '2013', 'acier,37 mm,automatique,medium', 13180.00, '5', 'hi', 0, '2020-10-07 16:19:22', NULL),
(236, 1, 11, 'COLLECTION SPORT', '15451OR.ZZ.1256OR.01', '2013', 'or rose serti diamants,37 mm,or rose', 40440.00, '5', 'hi', 0, '2020-10-07 16:22:51', NULL),
(237, 1, 11, 'COLLECTION SPORT', '15451ST.ZZ.1256ST.01', '2013', 'acier serti diamants,37 mm,acier,automatique,medium', 20060.00, '5', 'hi', 0, '2020-10-07 16:32:02', NULL),
(238, 1, 11, 'COLLECTION SPORT', '15451ST.ZZ.D011CR.01', '2013', 'acier serti diamants,37 mm,croco,automatique,medium', 18910.00, '5', 'hi', 0, '2020-10-07 16:34:40', NULL),
(239, 1, 11, 'COLLECTION SPORT', '15452BC.ZZ.D019CR.01', '2013', 'or gris serti diamants,37 mm,croco,automatique,medium', 65250.00, '5', 'hi', 0, '2020-10-07 16:43:39', NULL),
(240, 1, 11, 'COLLECTION SPORT', '15452OR.ZZ.D003CR.01', '2013', 'or rose serti diamants,37 mm,croco,automatique,medium', 40240.00, '5', 'hi', 0, '2020-10-07 16:50:06', NULL),
(241, 1, 11, 'COLLECTION SPORT', '25865ST.OO.1105ST.02', '2013', 'acier,44 mm,acier,automatique,homme', 548310.00, '5', 'hi', 0, '2020-10-07 16:52:39', NULL),
(242, 1, 11, 'COLLECTION SPORT', '25977OR.OO.D005CR.01', '2013', 'or rose,44x58 mm,croco,mécanique à remontage manuel,homme', 200260.00, '5', 'hi', 0, '2020-10-07 16:58:29', NULL),
(243, 1, 11, 'COLLECTION SPORT', '25990OR.ZZ.D002CR.01', '2013', 'or rose serti diamants,44x58,5 mm,croco,automatique,homme', 665790.00, '5', 'hi', 0, '2020-10-07 17:05:43', NULL),
(244, 1, 11, 'COLLECTION SPORT', '26065IS.OO.D002CR.01', '2013', 'titane,44 mm,croco,automatique,homme', 625520.00, '5', 'hi', 0, '2020-10-07 17:19:03', NULL),
(245, 1, 11, 'COLLECTION SPORT', '26122OR.OO.D002CR.01', '2013', '', 35.00, '5', 'hi', 0, '2020-10-07 17:27:05', NULL),
(246, 1, 11, 'COLLECTION SPORT', '26123OR.OO.D002CR.01', '2013', 'or rose,39x49,5 mm,croco,automatique,homme', 40720.00, '5', 'hi', 0, '2020-10-07 17:32:47', NULL),
(247, 1, 11, 'COLLECTION SPORT', '26127OR.ZZ.D011CR.01', '2013', 'or rose serti diamants,39x49,5 mm,croco,automatique,homme', 69210.00, '5', 'hi', 0, '2020-10-07 17:41:08', NULL),
(248, 1, 11, 'COLLECTION SPORT', '26128OR.ZZ.D002CR.01', '2013', 'or rose serti diamants,39x49,5 mm,croco,automatique,homme', 69210.00, '5', 'hi', 0, '2020-10-07 18:03:58', NULL),
(249, 1, 11, 'COLLECTION SPORT', '26129OR.ZZ.D080CA.01', '2013', 'or rose serti diamants,39x49,5 mm,croco,automatique,homme', 69210.00, '5', 'hi', 0, '2020-10-07 19:03:17', NULL),
(250, 1, 11, 'COLLECTION SPORT', '26320OR.OO.1220OR.01', '2013', 'or rose,41 mm,or rose,automatique,homme', 45480.00, '5', 'hi', 0, '2020-10-07 19:06:52', NULL),
(251, 1, 11, 'COLLECTION SPORT', '26320OR.OO.1220OR.02', '2013', 'or rose,41 mm,automatique,homme', 45480.00, '5', 'hi', 0, '2020-10-07 19:10:08', NULL),
(252, 1, 11, 'COLLECTION SPORT', '26320OR.OO.D002CR.01', '2013', 'or rose,41 mm,croco,automatique,homme', 31450.00, '5', 'hi', 0, '2020-10-07 19:15:43', NULL),
(253, 1, 11, 'COLLECTION SPORT', '26320OR.OO.D088CR.01', '2013', 'or rose,41 mm,croco,automatique,homme', 31450.00, '5', 'hi', 0, '2020-10-07 19:25:54', NULL),
(254, 1, 11, 'COLLECTION SPORT', '26320ST.OO.1220ST.01', '2013', 'acier,41 mm,automatique,homme', 19390.00, '5', 'hi', 0, '2020-10-07 19:31:55', NULL),
(255, 1, 11, 'COLLECTION SPORT', '26320ST.OO.1220ST.02', '2013', 'acier,41 mm,automatique,homme', 19390.00, '5', 'hi', 0, '2020-10-07 20:48:37', NULL),
(256, 1, 11, 'COLLECTION SPORT', '26320ST.OO.1220ST.03', '2013', 'acier,41 mm,automatique,homme', 19390.00, '5', 'hi', 0, '2020-10-07 20:53:26', NULL),
(257, 1, 11, 'COLLECTION SPORT', '26325OL.OO.D005CR.01', '2013', 'or rose,41 mm,croco,automatique,homme', 41640.00, '5', 'hi', 0, '2020-10-07 20:58:36', NULL),
(258, 1, 11, 'COLLECTION SPORT', '26325PL.OO.D310CR.01', '2013', '', 67480.00, '5', 'hi', 0, '2020-10-07 21:06:09', NULL),
(259, 1, 11, 'COLLECTION SPORT', '26325TS.OO.D005CR.01', '2013', 'acier,41 mm,croco,automatique,homme', 24630.00, '5', 'hi', 0, '2020-10-07 21:08:39', NULL),
(260, 1, 11, 'COLLECTION SPORT', '26510OR.OO.1220OR.01', '2013', 'or rose,41 mm,mécanique à remontage manuel,homme', 138790.00, '5', 'hi', 0, '2020-10-07 21:17:55', NULL),
(261, 1, 11, 'COLLECTION SPORT', '26510ST.OO.1220ST.01', '2013', 'acier,41 mm,mécanique à remontage manuel,homme', 113680.00, '5', 'hi', 0, '2020-10-07 21:20:40', NULL),
(262, 1, 11, 'COLLECTION SPORT', '26511PT.OO.1220PT.01', '2013', 'platine,41 mm,mécanique à remontage manuel,homme', 286460.00, '5', 'hi', 0, '2020-10-07 21:23:57', NULL),
(263, 1, 11, 'COLLECTION SPORT', '26552BC.OO.D002CR.01', '2013', 'or gris,44 mm,croco,automatique,homme', 626970.00, '5', 'hi', 0, '2020-10-07 21:27:41', NULL),
(264, 1, 11, 'COLLECTION SPORT', '26560IO.OO.D002CA.01', '2013', 'titane,44 mm,caoutchouc,mécanique à remontage manuel,homme', 173200.00, '5', 'hi', 0, '2020-10-07 21:30:14', NULL),
(265, 1, 11, 'COLLECTION SPORT', '26603OR.OO.D092CR.01', '2013', '', 70.00, '5', 'hi', 0, '2020-10-07 21:31:48', NULL),
(266, 1, 11, 'COLLECTION SPORT', '67651OR.ZZ.D010CA.01', '2013', 'or rose serti diamants,33 mm,caoutchouc,quartz,medium', 20370.00, '5', 'hi', 0, '2020-10-07 21:37:43', NULL),
(267, 1, 11, 'COLLECTION SPORT', '67651OR.ZZ.D080CA.01', '2013', 'or rose serti diamants,33 mm,caoutchouc,quartz,medium', 20370.00, '5', 'hi', 0, '2020-10-07 21:44:40', NULL),
(268, 1, 11, 'COLLECTION SPORT', '67651ST.ZZ.1261ST.01', '2013', 'acier serti diamants,33 mm,acier,quartz,medium', 12230.00, '5', 'hi', 0, '2020-10-07 21:47:58', NULL),
(269, 1, 11, 'COLLECTION SPORT', '67651ST.ZZ.D002CR.01', '2013', 'acier serti diamants,33 mm,croco,quartz,medium', 11340.00, '5', 'hi', 0, '2020-10-07 21:51:00', NULL),
(270, 1, 11, 'COLLECTION SPORT', '67651ST.ZZ.D011CR.01', '2013', 'acier serti diamants,33 mm,croco,quartz,medium', 11340.00, '5', 'hi', 0, '2020-10-07 21:55:30', NULL),
(271, 1, 11, 'COLLECTION SPORT', '15400OR.OO.D088CR.01', '2013', 'or rose,41 mm,croco,automatique,homme', 26500.00, '5', 'hi', 0, '2020-10-07 21:59:00', NULL),
(272, 1, 11, 'COLLECTION CLASSIQUE', '25866PT.OO.D002CR.01', '2013', 'platine,42 mm,croco,automatique,homme', 58536.00, '5', 'hi', 0, '2020-10-08 15:00:01', NULL),
(273, 1, 11, 'COLLECTION CLASSIQUE', '25996PT.OO.D002CR.01', '2013', 'platine,42 mm,croco,automatique,homme', 687690.00, '5', 'hi', 0, '2020-10-08 14:59:35', NULL),
(274, 1, 11, 'COLLECTION CLASSIQUE', '26003OR.OO.D088CR.01', '2013', 'or rose,43 mm,croco,automatique,homme', 66240.00, '5', 'hi', 0, '2020-10-08 14:57:53', NULL),
(275, 1, 11, 'COLLECTION CLASSIQUE', '26003BC.OO.D002CR.01', '2013', 'or gris,43 mm,croco,automatique,homme', 69210.00, '5', 'hi', 0, '2020-10-08 14:57:29', NULL),
(276, 1, 11, 'COLLECTION CLASSIQUE', '26003BA.OO.D088CR.01', '2013', 'or jaune,43 mm,croco,automatique,homme', 66240.00, '5', 'hi', 0, '2020-10-08 14:55:36', NULL),
(277, 1, 11, 'COLLECTION CLASSIQUE', '26003OR.OO.D002CR.01', '2013', 'or rose,43 mm,croco,automatique,homme', 66240.00, '5', 'hi', 0, '2020-10-08 14:55:00', NULL),
(278, 1, 11, 'COLLECTION CLASSIQUE', '26053PT.OO.D002CR.01', '2013', 'platine,43 mm,croco,automatique,homme', 100040.00, '5', 'hi', 0, '2020-10-08 14:54:22', NULL),
(279, 1, 11, 'COLLECTION CLASSIQUE', '26153PT.OO.D028CR.01', '2013', 'platine,43 mm,croco,mécanique à remontage manuel,homme', 275710.00, '5', 'hi', 0, '2020-10-08 14:53:37', NULL),
(280, 1, 11, 'COLLECTION CLASSIQUE', '26353PT.OO.D028CR.01', '2013', 'platine,43 mm,croco,mécanique à remontage manuel,homme', 281080.00, '5', 'hi', 0, '2020-10-08 14:52:50', NULL),
(281, 1, 11, 'COLLECTION CLASSIQUE', '26356PT.OO.D028CR.01', '2013', 'platine,43 mm,croco,mécanique à remontage manuel,homme', 352680.00, '5', 'hi', 0, '2020-10-08 14:51:44', NULL),
(282, 1, 11, 'COLLECTION CLASSIQUE', '26390OR.OO.D088CR.01', '2013', 'or rose,or rose,41 mm,croco,automatique,homme', 51410.00, '5', 'hi', 0, '2020-10-08 14:51:21', NULL),
(283, 1, 11, 'COLLECTION CLASSIQUE', '26390OR.OO.D093CR.01', '2013', 'or rose,41 mm,croco,automatique,homme,', 51410.00, '5', 'hi', 0, '2020-10-08 14:50:38', NULL),
(284, 1, 11, 'COLLECTION CLASSIQUE', '26100BC.OO.D002CR.01', '2013', 'or gris,41 mm,croco,automatique,homme', 35490.00, '5', 'hi', 0, '2020-10-08 15:06:43', NULL),
(285, 1, 11, 'COLLECTION CLASSIQUE', '26100OR.OO.D088CR.01', '2013', 'or rose,41 mm,croco,automatique,homme', 31.00, '5', 'hi', 0, '2020-10-08 16:03:50', NULL),
(286, 1, 11, 'COLLECTION CLASSIQUE', '15180OR.OO.A088CR.01', '2013', 'or rose,41 mm,croco,automatique,homme', 20220.00, '5', 'hi', 0, '2020-10-08 16:15:15', NULL),
(287, 1, 11, 'COLLECTION CLASSIQUE', '15180OR.OO.A002CR.01', '2013', 'or rose', 20220.00, '5', 'hi', 0, '2020-10-08 16:17:46', NULL),
(288, 1, 11, 'COLLECTION CLASSIQUE', '15159BC.ZZ.D002CR.01', '2013', 'or gris serti diamants,43 mm,croco,automatique,homme', 94750.00, '5', 'hi', 0, '2020-10-08 16:20:11', NULL),
(289, 1, 11, 'COLLECTION CLASSIQUE', '15159OR.ZZ.D002CR.01', '2013', 'or rose serti diamants,43 mm,croco,automatique,homme', 91330.00, '5', 'hi', 0, '2020-10-08 16:23:05', NULL),
(290, 1, 11, 'COLLECTION CLASSIQUE', '15170BC.OO.A002CR.01', '2013', 'or gris,39 mm,croco,automatique,medium', 18510.00, '5', 'hi', 0, '2020-10-08 16:31:16', NULL),
(291, 1, 11, 'COLLECTION CLASSIQUE', '15170OR.OO.A002CR.01', '2013', 'or rose,39 mm,croco,automatique,medium', 16800.00, '5', 'hi', 0, '2020-10-08 16:34:50', NULL),
(292, 1, 11, 'COLLECTION CLASSIQUE', '15170OR.OO.A088CR.01', '2013', 'or rose,39 mm,croco,automatique,medium', 16800.00, '5', 'hi', 0, '2020-10-08 16:37:35', NULL),
(293, 1, 11, 'COLLECTION CLASSIQUE', '15171BC.ZZ.A002CR.01', '2013', 'or gris serti diamants,39 mm,croco,automatique,medium', 22990.00, '5', 'hi', 0, '2020-10-08 16:40:50', NULL),
(294, 1, 11, 'COLLECTION CLASSIQUE', '15171OR.ZZ.A002CR.01', '2013', 'or rose serti diamants,39 mm,croco,automatique,medium', 21270.00, '5', 'hi', 0, '2020-10-08 16:46:37', NULL),
(295, 1, 11, 'COLLECTION CLASSIQUE', '15171OR.ZZ.A088CR.01', '2013', 'or rose serti diamants,39 mm,croco,automatique,medium', 21270.00, '5', 'hi', 0, '2020-10-08 16:49:30', NULL),
(296, 1, 11, 'COLLECTION CLASSIQUE', '15180BC.OO.A002CR.01', '2013', 'or gris', 21950.00, '5', 'hi', 0, '2020-10-08 16:52:02', NULL),
(297, 1, 11, 'COLLECTION CLASSIQUE', '25866BA.OO.D002CR.01', '2013', 'or rose,42 mm,croco,automatique,homme', 575190.00, '5', 'hi', 0, '2020-10-08 16:58:57', NULL),
(298, 1, 11, 'COLLECTION CLASSIQUE', '25866BA.OO.D002CR.02', '2013', 'or jaune,42 mm,croco,automatique,homme', 575190.00, '5', 'hi', 0, '2020-10-08 17:04:23', NULL),
(299, 1, 11, 'COLLECTION CLASSIQUE', '25866OR.OO.D002CR.01', '2013', 'or rose,42 mm,croco,automatique,homme', 575190.00, '5', 'hi', 0, '2020-10-08 17:14:58', NULL),
(300, 1, 11, 'COLLECTION CLASSIQUE', '25866OR.OO.D002CR.02', '2013', '42 mm,or rose,croco,automatique,homme', 575190.00, '5', 'hi', 0, '2020-10-08 17:22:27', NULL),
(301, 1, 11, 'COLLECTION CLASSIQUE', '25866PT.OO.D002CR.02', '2013', 'platine,42 mm,croco,automatique,homme', 585360.00, '5', 'hi', 0, '2020-10-08 17:27:20', NULL),
(302, 1, 11, 'COLLECTION CLASSIQUE', '26153OR.OO.D088CR.01', '2013', 'or rose,46 mm,croco,mécanique à remontage manuel,homme', 167180.00, '5', 'hi', 0, '2020-10-08 18:07:04', NULL),
(303, 1, 11, 'COLLECTION CLASSIQUE', '26380BC.OO.D002CR.01', '2013', 'or gris,41 mm,croco,automatique,homme', 29530.00, '5', 'hi', 0, '2020-10-08 18:36:23', NULL),
(304, 1, 11, 'COLLECTION CLASSIQUE', '26380OR.OO.D002CR.01', '2013', 'or gris,41 mm,croco,automatique,homme', 26950.00, '5', 'hi', 0, '2020-10-08 18:38:40', NULL),
(305, 1, 11, 'COLLECTION CLASSIQUE', '26380OR.OO.D088CR.0', '2013', 'or rose,41 mm,croco,automatique,homme', 26950.00, '5', 'hi', 0, '2020-10-08 18:44:44', NULL),
(306, 1, 11, 'COLLECTION CLASSIQUE', '26385OR.OO.A088CR.01', '2013', 'or rose,39 mm,croco,automatique,medium', 24160.00, '5', 'hi', 0, '2020-10-08 18:49:16', NULL),
(307, 1, 11, 'COLLECTION CLASSIQUE', '26391OR.OO.D088CR.01', '2013', 'or rose,41 mm,croco,automatique,homme', 77100.00, '5', 'hi', 0, '2020-10-08 18:57:08', NULL),
(308, 1, 11, 'COLLECTION CLASSIQUE', '26559OR.OO.D002CR.01', '2013', 'or rose,41 mm,croco,mécanique à remontage manuel,homme', 191330.00, '5', 'hi', 0, '2020-10-08 19:00:27', NULL),
(309, 1, 11, 'COLLECTION CLASSIQUE', '26559OR.OO.D088CR.01', '2013', 'or rose,41 mm,croco,mécanique à remontage manuel,homme', 191330.00, '5', 'hi', 0, '2020-10-08 19:04:19', NULL),
(310, 1, 11, 'COLLECTION CLASSIQUE', '26561BC.OO.D002CR.01', '2013', 'or gris,41 mm,croco,mécanique à remontage manuel,homme', 115170.00, '5', 'hi', 0, '2020-10-08 19:06:35', NULL),
(311, 1, 11, 'COLLECTION CLASSIQUE', '26561OR.OO.D088CR.01', '2013', 'or rose,41 mm,croco,mécanique à remontage manuel,homme', 113290.00, '5', 'hi', 0, '2020-10-08 19:10:01', NULL),
(312, 1, 11, 'COLLECTION CLASSIQUE', '26569BC.OO.D002CR.01', '2013', 'platine,croco,mécanique à remontage manuel,homme', 173690.00, '5', 'hi', 0, '2020-10-08 19:12:21', NULL),
(313, 1, 11, 'COLLECTION CLASSIQUE', '77238BC.OO.A002CR.01', '2013', '33 mm,or gris,croco,mécanique à remontage manuel,medium', 14880.00, '5', 'hi', 0, '2020-10-08 19:19:01', NULL),
(314, 1, 11, 'COLLECTION CLASSIQUE', '77238OR.OO.A088CR.01', '2013', 'or rose,33 mm,croco,mécanique à remontage manuel,medium', 13530.00, '5', 'hi', 0, '2020-10-08 19:21:47', NULL),
(315, 1, 11, 'COLLECTION CLASSIQUE', '77239BC.ZZ.A002CR.01', '2013', '33 mm,or gris serti diamants,croco,mécanique à remontage manuel,medium', 19340.00, '5', 'hi', 0, '2020-10-08 19:30:27', NULL),
(316, 1, 11, 'COLLECTION CLASSIQUE', '77239OR.ZZ.A088CR.01', '2013', 'or rose serti diamants,33 mm,croco,mécanique à remontage manuel,medium', 17990.00, '5', 'hi', 0, '2020-10-08 19:34:26', NULL),
(317, 1, 11, 'COLLECTION CLASSIQUE', '77240BC.ZZ.A808CR.01', '2013', 'or gris serti diamants,33 mm,croco,mécanique à remontage manuel,medium', 21.00, '5', 'hi', 0, '2020-10-08 19:36:33', NULL),
(318, 1, 11, 'COLLECTION CLASSIQUE', '77251OR.ZZ.1270OR.01', '2013', 'or rose serti diamants,33 mm,or rose,mécanique à remontage manuel,medium', 30020.00, '5', 'hi', 0, '2020-10-08 19:42:53', NULL),
(319, 1, 11, 'COLLECTION CLASSIQUE', '26569OR.OO.D088CR.01', '2013', 'or rose,croco,mécanique à remontage manuel,homme', 165330.00, '5', 'hi', 0, '2020-10-08 19:45:47', NULL);
INSERT INTO `product` (`id`, `upload_by`, `brand_id`, `model_name`, `id_no`, `year`, `features`, `price`, `percentage`, `description`, `status`, `created_at`, `updated_at`) VALUES
(320, 1, 11, 'COLLECTION CLASSIQUE', '26357PT.ZZ.D028CR.01', '2013', 'platine serti diamants,39 mm,croco,mécanique à remontage manuel,dame', 209470.00, '5', 'hi', 0, '2020-10-08 19:56:51', NULL),
(321, 1, 11, 'COLLECTION CLASSIQUE', '26083BC.ZZ.D102CR.01', '2013', 'or gris serti diamants,41 mm,croco,mécanique à remontage manuel,dame', 257360.00, '5', 'hi', 0, '2020-10-08 20:05:55', NULL),
(322, 1, 11, 'COLLECTION CLASSIQUE', '26051PT.00.D092CR.01', '2013', 'platine,47 mm,croco,mécanique à remontage manuel,homme', 135020.00, '5', 'hi', 0, '2020-10-08 20:13:08', NULL),
(323, 1, 11, 'COLLECTION CLASSIQUE', '15160PT.OO.A092CR.01', '2013', 'platine,43 mm,croco,automatique,homme', 52830.00, '5', 'hi', 0, '2020-10-08 20:15:48', NULL),
(324, 1, 11, 'COLLECTION CLASSIQUE', '15335OR.OO.A092CR.01', '2013', 'or rose,43 mm,croco,automatique,homme', 26970.00, '5', 'hi', 0, '2020-10-08 20:18:04', NULL),
(325, 1, 11, 'COLLECTION CLASSIQUE', '15337OR.ZZ.A810CR.01', '2013', 'or rose serti diamants,43 mm,croco,automatique,homme', 44930.00, '5', 'hi', 0, '2020-10-08 20:19:46', NULL),
(326, 1, 11, 'COLLECTION CLASSIQUE', '26564IC.OO.D002CR.01', '2013', 'titane,47 mm,croco,mécanique à remontage manuel,homme', 381940.00, '5', 'hi', 0, '2020-10-08 20:24:40', NULL),
(327, 1, 11, 'COLLECTION CLASSIQUE', '25712BA.OO.0000xx.01', '2013', 'or jaune,59 mm,mécanique à remontage manuel,homme', 721110.00, '5', 'hi', 0, '2020-10-08 20:49:57', NULL),
(328, 1, 11, 'COLLECTION CLASSIQUE', '25701BA.OO.0000XX.02', '2013', 'or jaune,52 mm,mécanique à remontage manuel,homme', 814720.00, '5', 'hi', 0, '2020-10-08 20:54:00', NULL),
(329, 1, 11, 'COLLECTION CLASSIQUE', '25712PT.OO.0000xx.01', '2013', 'platine,59 mm,mécanique à remontage manuel,homme', 813230.00, '5', 'hi', 0, '2020-10-08 20:56:53', NULL),
(330, 1, 11, 'COLLECTION CLASSIQUE', '25701OR.OO.0000XX.03', '2013', 'or rose,mécanique à remontage manuel,homme', 810900.00, '5', 'hi', 0, '2020-10-08 20:58:44', NULL),
(331, 1, 11, 'COLLECTION CONTEMPORAINE', '15327BC.ZZ.D022CR.01', '2013', 'or serti diamants,39 mm,croco,automatique,medium', 550140.00, '5', 'hi', 0, '2020-10-08 21:03:57', NULL),
(332, 1, 11, 'COLLECTION CONTEMPORAINE', '26145OR.OO.D093CR.01', '2013', 'or rose,47 mm,croco,automatique,homme', 34430.00, '5', 'hi', 0, '2020-10-08 21:09:45', NULL),
(333, 1, 11, 'COLLECTION CONTEMPORAINE', '26145OR.OO.D095CR.01', '2013', 'or rose,47 mm,croco,automatique,homme', 34430.00, '5', 'hi', 0, '2020-10-08 21:13:13', NULL),
(334, 1, 11, 'COLLECTION CONTEMPORAINE', '15350OR.OO.D093CR.01', '2013', 'or rose,47 mm,croco,automatique,homme', 32270.00, '5', 'hi', 0, '2020-10-08 21:16:22', NULL),
(335, 1, 11, 'COLLECTION CONTEMPORAINE', '15350ST.OO.D002CR.01', '2013', 'acier,47 mm,croco,automatique,homme', 19580.00, '5', 'hi', 0, '2020-10-08 21:34:56', NULL),
(336, 1, 11, 'COLLECTION CONTEMPORAINE', '26354OR.ZZ.D002CR.01', '2013', 'or rose serti diamants,45 mm,croco,mécanique à remontage manuel,homme', 386470.00, '5', 'hi', 0, '2020-10-08 21:38:47', NULL),
(337, 1, 11, 'COLLECTION CONTEMPORAINE', '26371TI.OO.D002CR.01', '2013', 'titane,47 mm,croco,mécanique à remontage manuel,homme', 381900.00, '5', 'hi', 0, '2020-10-08 21:41:46', NULL),
(338, 1, 11, 'COLLECTION CONTEMPORAINE', '77316BC.ZZ.D007SU.01', '2013', 'or serti diamants,39 mm,satin,automatique,dame', 67870.00, '5', 'hi', 0, '2020-10-08 22:11:21', NULL),
(339, 1, 11, 'COLLECTION CONTEMPORAINE', '77315BC.ZZ.D007SU.01', '2013', 'or serti diamants,39 mm,satin,automatique,dame', 45970.00, '5', 'hi', 0, '2020-10-08 22:19:31', NULL),
(340, 1, 11, 'COLLECTION CONTEMPORAINE', '77315OR.ZZ.D013SU.01', '2013', 'or rose serti diamants,39 mm,satin,automatique,dame', 39010.00, '5', 'hi', 0, '2020-10-08 22:24:27', NULL),
(341, 1, 11, 'COLLECTION CONTEMPORAINE', '77301OR.ZZ.D015CR.01', '2013', 'or rose serti diamants,39 mm,croco,automatique,dame', 24770.00, '5', 'hi', 0, '2020-10-09 15:08:35', NULL),
(342, 1, 11, 'COLLECTION CONTEMPORAINE', '77301ST.ZZ.D002CR.01', '2013', 'acier serti diamants,39 mm,croco,automatique,dame', 13470.00, '5', 'hi', 0, '2020-10-09 15:11:24', NULL),
(343, 1, 11, 'COLLECTION CONTEMPORAINE', '77301ST.ZZ.D015CR.01', '2013', 'acier serti diamants,39 mm,croco,automatique,dame', 13470.00, '5', 'hi', 0, '2020-10-09 15:16:34', NULL),
(344, 1, 11, 'COLLECTION CONTEMPORAINE', '77302BC.ZZ.D001CR.01', '2013', 'or gris serti diamants,39 mm,croco,automatique', 53100.00, '5', 'hi', 0, '2020-10-09 15:20:13', NULL),
(345, 1, 11, 'COLLECTION CONTEMPORAINE', '77303BC.ZZ.D007SU.01', '2013', 'or gris serti diamants,39 mm,satin,automatique,dame', 61170.00, '5', 'hi', 0, '2020-10-09 15:22:08', NULL),
(346, 1, 11, 'COLLECTION CONTEMPORAINE', '77303OR.ZZ.D009SU.01', '2013', 'or rose serti diamants,39 mm,satin,automatique,dame', 59200.00, '5', 'hi', 0, '2020-10-09 15:26:56', NULL),
(347, 1, 11, 'COLLECTION CONTEMPORAINE', '77306BC.ZZ.D007SU.01', '2013', 'or serti diamants,39 mm,satin,automatique,dame', 433000.00, '5', 'hi', 0, '2020-10-09 15:31:02', NULL),
(348, 1, 11, 'COLLECTION CONTEMPORAINE', '26354OR.ZZ.D088CR.01', '2013', 'or rose serti diamants,45 mm,croco,mécanique à remontage manuel,homme', 386470.00, '5', 'hi', 0, '2020-10-09 15:33:50', NULL),
(349, 1, 12, 'LES MONTRES COMPLIQUÉES', '5146J-001', '2012', 'or jaune,39 mm,croco,automatique,homme', 32210.00, '5', 'hi', 0, '2020-10-09 16:23:02', NULL),
(350, 1, 12, 'LES MONTRES COMPLIQUÉES', '5146G-001', '2012', 'or blanc,39 mm,croco,automatique,homme', 33680.00, '5', 'hi', 0, '2020-10-09 16:23:28', NULL),
(351, 1, 12, 'LES MONTRES COMPLIQUÉES', '5146R-001', '2012', 'or rose,39 mm,croco,automatique,homme', 33680.00, '5', 'hi', 0, '2020-10-09 16:24:26', NULL),
(352, 1, 12, 'LES MONTRES COMPLIQUÉES', '5146P-001', '2012', 'platine,39 mm,croco,automatique,homme', 52140.00, '5', 'hi', 0, '2020-10-09 16:24:54', NULL),
(353, 1, 12, 'LES MONTRES COMPLIQUÉES', '4936G-001', '2012', 'or blanc serti diamants,37 mm,croco,automatique,dame', 37470.00, '5', 'hi', 0, '2020-10-09 16:25:23', NULL),
(354, 1, 12, 'LES MONTRES COMPLIQUÉES', '4936J-001', '2012', 'or jaune serti diamants,37 mm,croco,automatique,dame', 35990.00, '5', 'hi', 0, '2020-10-09 16:28:31', NULL),
(355, 1, 12, 'LES MONTRES COMPLIQUÉES', '4936R-001', '2012', 'or rose serti diamants,37 mm,croco,automatique,medium', 37470.00, '5', 'hi', 0, '2020-10-09 16:28:57', NULL),
(356, 1, 12, 'LES MONTRES COMPLIQUÉES', '5146/1J-001', '2012', 'or jaune,39 mm,or jaune,automatique,homme', 52.00, '5', 'hi', 0, '2020-10-09 16:29:13', NULL),
(357, 1, 12, 'LES MONTRES COMPLIQUÉES', '5146/1G-001', '2012', 'or blanc,39 mm,automatique,homme', 53800.00, '5', 'hi', 0, '2020-10-09 16:21:35', NULL),
(358, 1, 12, 'LES MONTRES COMPLIQUÉES', '5147G-001', '2012', 'or blanc serti diamants,39 mm,croco,automatique,homme', 40420.00, '5', 'hi', 0, '2020-10-09 16:32:00', NULL),
(359, 1, 12, 'LES MONTRES COMPLIQUÉES', '5205G-001', '2012', 'or blanc,40 mm,croco,automatique,homme', 37650.00, '5', 'hi', 0, '2020-10-09 16:33:53', NULL),
(360, 1, 12, 'LES MONTRES COMPLIQUÉES', '5396G-011', '2012', 'or blanc,38 mm,croco,automatique,homme', 39040.00, '5', 'hi', 0, '2020-10-09 16:35:59', NULL),
(361, 1, 12, 'LES MONTRES COMPLIQUÉES', '5396R-011', '2012', 'or rose,38 mm,croco,automatique,homme', 39040.00, '5', 'hi', 0, '2020-10-09 16:38:34', NULL),
(362, 1, 12, 'LES MONTRES COMPLIQUÉES', '5180/1G-001', '2012', 'or blanc,39 mm,automatique,homme', 79460.00, '5', 'hi', 0, '2020-10-09 16:44:42', NULL),
(363, 1, 12, 'LES MONTRES COMPLIQUÉES', '5146/1G-010', '2012', 'or blanc,39 mm,automatique,homme', 53800.00, '5', 'hi', 0, '2020-10-09 16:47:30', NULL),
(364, 1, 12, 'LES MONTRES COMPLIQUÉES', '5146G_010', '2012', 'or blanc,39 mm,croco,automatique,homme', 33680.00, '5', 'hi', 0, '2020-10-09 16:51:31', NULL),
(365, 1, 12, 'LES MONTRES COMPLIQUÉES', '5146J-010', '2012', 'or jaune,39 mm,croco,automatique,homme', 32210.00, '5', 'hi', 0, '2020-10-09 16:53:22', NULL),
(366, 1, 12, 'LES MONTRES COMPLIQUÉES', '5205G-010', '2012', 'or blanc,40 mm,croco,automatique,homme', 37650.00, '5', 'hi', 0, '2020-10-09 19:58:26', NULL),
(367, 1, 12, 'LES MONTRES COMPLIQUÉES', '5139G-001', '2012', 'or blanc,38 mm,croco,automatique,homme', 69120.00, '5', 'hi', 0, '2020-10-09 20:03:05', NULL),
(368, 1, 12, 'LES MONTRES COMPLIQUÉES', '5140J-001', '2012', 'or jaune,37 mm,croco,automatique,homme', 67280.00, '5', 'hi', 0, '2020-10-09 20:08:42', NULL),
(369, 1, 12, 'LES MONTRES COMPLIQUÉES', '5140G-001', '2012', 'or blanc,37 mm,croco,automatique,homme', 69120.00, '5', 'hi', 0, '2020-10-09 20:16:50', NULL),
(370, 1, 12, 'LES MONTRES COMPLIQUÉES', '5140R-001', '2012', 'or rose,37 mm,croco,automatique,homme', 69120.00, '5', 'hi', 0, '2020-10-09 20:32:15', NULL),
(371, 1, 12, 'LES MONTRES COMPLIQUÉES', '5140P-001', '2012', 'platine,37 mm,croco,automatique,homme', 86190.00, '5', 'hi', 0, '2020-10-09 20:30:51', NULL),
(372, 1, 12, 'LES MONTRES COMPLIQUÉES', '5159J-001', '2012', 'or jaune,38 mm,croco,automatique,homme', 75300.00, '5', 'hi', 0, '2020-10-09 20:37:51', NULL),
(373, 1, 12, 'LES MONTRES COMPLIQUÉES', '5159G-001', '2012', 'or blanc,38 mm,croco,automatique,homme', 76870.00, '5', 'hi', 0, '2020-10-09 20:43:11', NULL),
(374, 1, 12, 'LES MONTRES COMPLIQUÉES', '5159R-001', '2012', 'or rose,38 mm,croco,automatique,homme', 76870.00, '5', 'hi', 0, '2020-10-09 20:45:29', NULL),
(375, 1, 12, 'LES MONTRES COMPLIQUÉES', '5160J-001', '2012', 'or jaune,38 mm,croco,automatique,homme', 122090.00, '5', 'hi', 0, '2020-10-09 20:51:31', NULL),
(376, 1, 12, 'LES MONTRES COMPLIQUÉES', '5160G-001', '2012', 'or blanc,38 mm,croco,automatique,homme', 124030.00, '5', 'hi', 0, '2020-10-09 21:11:14', NULL),
(377, 1, 12, 'LES MONTRES COMPLIQUÉES', '5139G-010', '2012', 'or blanc,38 mm,croco,automatique,homme', 69120.00, '5', 'hi', 0, '2020-10-09 21:16:28', NULL),
(378, 1, 12, 'LES MONTRES COMPLIQUÉES', '4937G-001', '2012', 'or blanc serti diamants,37 mm,croco,automatique,dame', 55650.00, '5', 'hi', 0, '2020-10-09 21:47:48', NULL),
(379, 1, 12, 'LES MONTRES COMPLIQUÉES', '4937R-001', '2012', 'or rose serti diamants,37 mm,croco,automatique', 55650.00, '5', 'hi', 0, '2020-10-09 21:50:04', NULL),
(380, 1, 12, 'LES MONTRES COMPLIQUÉES', '4958/1J-001', '2012', 'or jaune serti diamants,31 mm,or jaune,mécanique à remontage manuel,dame', 37100.00, '5', 'hi', 0, '2020-10-09 22:01:27', NULL),
(381, 1, 12, 'LES MONTRES COMPLIQUÉES', '4958/1G-001', '2012', 'or blanc serti diamants,31 mm,or blanc,mécanique à remontage manuel,dame', 40240.00, '5', 'hi', 0, '2020-10-09 22:04:32', NULL),
(382, 1, 12, 'LES MONTRES COMPLIQUÉES', '4958/1G-010', '2012', 'or blanc serti diamants,31 mm,or blanc,mécanique à remontage manuel,dame', 40240.00, '5', 'hi', 0, '2020-10-09 22:27:11', NULL),
(383, 1, 12, 'LES MONTRES COMPLIQUÉES', '7071R-001', '2012', 'or rose serti diamants,35x39 mm,croco,mécanique à remontage manuel,dame', 74470.00, '5', 'hi', 0, '2020-10-09 22:28:59', NULL),
(384, 1, 12, 'LES MONTRES COMPLIQUÉES', '7071R-010', '2012', 'or rose serti diamants,35x39 mm,croco,mécanique à remontage manuel,dame', 74470.00, '5', 'hi', 0, '2020-10-09 22:31:30', NULL),
(385, 1, 12, 'LES MONTRES COMPLIQUÉES', '4958J-001', '2012', 'or jaune serti diamants,31 mm,satin,mécanique à remontage manuel,dame', 22890.00, '5', 'hi', 0, '2020-10-09 22:33:18', NULL),
(386, 1, 12, 'LES MONTRES COMPLIQUÉES', '4958G-001', '2012', 'or blanc serti diamants,31 mm,satin,mécanique à remontage manuel,dame', 24360.00, '5', 'hi', 0, '2020-10-09 22:38:15', NULL),
(387, 1, 12, 'LES MONTRES COMPLIQUÉES', '4934G-001', '2012', 'or blanc serti diamants,35 mm,croco,mécanique à remontage manuel,dame', 31280.00, '5', 'hi', 0, '2020-10-09 22:41:22', NULL),
(388, 1, 12, 'LES MONTRES COMPLIQUÉES', '4934R-001', '2012', 'or rose serti diamants,35 mm,croco,mécanique à remontage manuel,dame', 31280.00, '5', 'hi', 0, '2020-10-09 22:44:27', NULL),
(389, 1, 12, 'LES MONTRES COMPLIQUÉES', '7000R-001', '2012', 'or rose,33,7 mm,croco,automatique,dame', 291420.00, '5', 'hi', 0, '2020-10-09 22:47:27', NULL),
(390, 1, 12, 'LES MONTRES COMPLIQUÉES', '7059R-001', '2012', 'or rose,33,2 mm,croco,mécanique à remontage manuel,dame', 362200.00, '5', 'hi', 0, '2020-10-09 22:49:49', NULL),
(391, 1, 12, 'LES MONTRES COMPLIQUÉES', '7130G-001', '2012', 'or blanc,36 mm,croco,automatique,dame', 41530.00, '5', 'hi', 0, '2020-10-09 22:58:32', NULL),
(392, 1, 12, 'LES MONTRES COMPLIQUÉES', '7180/1G-001', '2012', 'or blanc,31,4 mm,or blanc,mécanique à remontage manuel,dame', 69210.00, '5', 'hi', 0, '2020-10-12 14:49:43', NULL),
(393, 1, 12, 'LES MONTRES COMPLIQUÉES', '5130G-001', '2012', 'or blanc,39,5 mm,croco,automatique,homme', 35810.00, '5', 'hi', 0, '2020-10-12 14:51:48', NULL),
(394, 1, 12, 'LES MONTRES COMPLIQUÉES', '5130R-001', '2012', 'or rose,39,5 mm,croco,automatique,homme', 35810.00, '5', 'hi', 0, '2020-10-12 14:57:30', NULL),
(395, 1, 12, 'LES MONTRES COMPLIQUÉES', '5130P-001', '2012', 'platine,39,5 mm,croco,automatique,homme', 49560.00, '5', 'hi', 0, '2020-10-12 15:03:43', NULL),
(396, 1, 12, 'LES MONTRES COMPLIQUÉES', '5131J-001', '2012', 'or jaune,39,5 mm,croco,automatique,homme', 49650.00, '5', 'hi', 0, '2020-10-12 15:08:37', NULL),
(397, 1, 12, 'LES MONTRES COMPLIQUÉES', '5131G-001', '2012', 'or blanc,39,5 mm,croco,automatique,homme', 51680.00, '5', 'hi', 0, '2020-10-12 15:11:42', NULL),
(398, 1, 12, 'LES MONTRES COMPLIQUÉES', '5004R-014', '2012', '36,7 mm,croco,mécanique à remontage manuel,homme', 202380.00, '5', 'hi', 0, '2020-10-12 15:13:54', NULL),
(399, 1, 12, 'LES MONTRES COMPLIQUÉES', '5004G-013', '2012', 'or blanc,36,7 mm,croco,mécanique à remontage manuel,homme', 202380.00, '5', 'hi', 0, '2020-10-12 15:16:43', NULL),
(400, 1, 12, 'LES MONTRES COMPLIQUÉES', '5004P-021', '2012', 'platine,36,7 mm,croco,mécanique à remontage manuel,homme', 220370.00, '5', 'hi', 0, '2020-10-12 15:39:39', NULL),
(401, 1, 12, 'LES MONTRES COMPLIQUÉES', '5170J-001', '2012', 'or jaune,29,6 mm,croco,mécanique à remontage manuel,homme', 64510.00, '5', 'hi', 0, '2020-10-12 15:43:30', NULL),
(402, 1, 12, 'LES MONTRES COMPLIQUÉES', '5950A-001', '2012', 'acier,37x44,60 mm,croco,mécanique à remontage manuel,homme', 367690.00, '5', 'hi', 0, '2020-10-12 15:47:26', NULL),
(403, 1, 12, 'LES MONTRES COMPLIQUÉES', '5951P-001', '2012', 'platine,37x45,0 mm,croco,mécanique à remontage manuel,homme', 417900.00, '5', 'hi', 0, '2020-10-12 15:50:05', NULL),
(404, 1, 12, 'LES MONTRES COMPLIQUÉES', '5950A-001', '2012', 'acier,37x44,60 mm,croco,mécanique à remontage manuel,homme', 367690.00, '5', 'hi', 0, '2020-10-12 15:51:19', NULL),
(405, 1, 12, 'LES MONTRES COMPLIQUÉES', '5959P-011', '2012', 'platine,33 mm,croco,mécanique à remontage manuel,homme', 367690.00, '5', 'hi', 0, '2020-10-12 16:00:43', NULL),
(406, 1, 12, 'LES MONTRES COMPLIQUÉES', '5960R-001', '2012', 'or rose,40 mm,croco,automatique,homme', 60540.00, '5', 'hi', 0, '2020-10-12 15:54:37', NULL),
(407, 1, 12, 'LES MONTRES COMPLIQUÉES', '5960P-015', '2012', 'platine,40,5 mm,croco,automatique,homme', 72170.00, '5', 'hi', 0, '2020-10-12 16:01:01', NULL),
(408, 1, 12, 'LES MONTRES COMPLIQUÉES', '5971P-001', '2012', 'platine serti diamants,40 mm,croco,mécanique à remontage manuel,homme', 200350.00, '5', 'hi', 0, '2020-10-12 16:00:10', NULL),
(409, 1, 12, 'LES MONTRES COMPLIQUÉES', '5959P-001', '2012', 'platine,33 mm,croco,mécanique à remontage manuel,homme', 367690.00, '5', 'hi', 0, '2020-10-12 16:02:25', NULL),
(410, 1, 12, 'LES MONTRES COMPLIQUÉES', '5960P-001', '2012', 'platine,40,5 mm,croco,automatique,homme', 72170.00, '5', 'hi', 0, '2020-10-12 16:05:35', NULL),
(411, 1, 12, 'LES MONTRES COMPLIQUÉES', '5961P-001', '2012', 'platine,40,5 mm,croco,automatique,homme', 119970.00, '5', 'hi', 0, '2020-10-12 16:09:21', NULL),
(412, 1, 12, 'LES MONTRES COMPLIQUÉES', '5970J-001', '2012', 'or jaune,40 mm,croco,mécanique à remontage manuel,homme', 118400.00, '5', 'hi', 0, '2020-10-12 16:13:34', NULL),
(413, 1, 12, 'LES MONTRES COMPLIQUÉES', '5002G-001', '2012', 'or blanc,42,8 mm,croco,mécanique à remontage manuel,homme', 936050.00, '5', 'hi', 0, '2020-10-12 16:15:25', NULL),
(414, 1, 12, 'LES MONTRES COMPLIQUÉES', '5002J-001', '2012', 'or jaune,42,8 mm,croco,mécanique à remontage manuel,homme', 919310.00, '5', 'hi', 0, '2020-10-12 16:17:04', NULL),
(415, 1, 12, 'LES MONTRES COMPLIQUÉES', '5002R-001', '2012', 'or rose,42,8 mm,croco,mécanique à remontage manuel,homme', 936050.00, '5', 'hi', 0, '2020-10-12 16:19:13', NULL),
(416, 1, 12, 'LES MONTRES COMPLIQUÉES', '5013G-001', '2012', 'or blanc,36x46,4 mm,croco,automatique,homme', 505580.00, '5', 'hi', 0, '2020-10-12 16:26:39', NULL),
(417, 1, 12, 'LES MONTRES COMPLIQUÉES', '5013J-001', '2012', 'or jaune,36x46,4 mm,croco,automatique,homme', 501410.00, '5', 'hi', 0, '2020-10-12 16:30:27', NULL),
(418, 1, 12, 'LES MONTRES COMPLIQUÉES', '5013P-001', '2012', 'platine,36x46,4 mm,croco,automatique,homme', 522310.00, '5', 'hi', 0, '2020-10-12 16:32:13', NULL),
(419, 1, 12, 'LES MONTRES COMPLIQUÉES', '5013R-001', '2012', 'or rose,36x46,4 mm,croco,automatique,homme', 505580.00, '5', 'hi', 0, '2020-10-12 16:42:12', NULL),
(420, 1, 12, 'LES MONTRES COMPLIQUÉES', '5016G-010', '2012', 'or blanc,36,8 mm,croco,mécanique à remontage manuel,homme', 559950.00, '5', 'hi', 0, '2020-10-12 16:44:19', NULL),
(421, 1, 12, 'LES MONTRES COMPLIQUÉES', '5016J-011', '2012', '36,8 mm,croco,or jaune,mécanique à remontage manuel,homme', 555.00, '5', 'hi', 0, '2020-10-12 16:46:26', NULL),
(422, 1, 12, 'LES MONTRES COMPLIQUÉES', '5016R-010', '2012', 'or rose,36,8 mm,croco,mécanique à remontage manuel,homme', 559950.00, '5', 'hi', 0, '2020-10-12 16:48:21', NULL),
(423, 1, 12, 'LES MONTRES COMPLIQUÉES', '5016P-010', '2012', 'platine,36,8 mm,croco,mécanique à remontage manuel,homme', 576680.00, '5', 'hi', 0, '2020-10-12 16:53:28', NULL),
(424, 1, 12, 'LES MONTRES COMPLIQUÉES', '5074P-001', '2012', 'platine,42 mm,croco,automatique,homme', 484760.00, '5', 'hi', 0, '2020-10-12 16:57:35', NULL),
(425, 1, 12, 'LES MONTRES COMPLIQUÉES', '5078P-001', '2012', 'platine,38 mm,croco,mécanique à remontage manuel,homme', 300830.00, '5', 'hi', 0, '2020-10-12 17:05:59', NULL),
(426, 1, 12, 'LES MONTRES COMPLIQUÉES', '5101R-001', '2012', 'or rose,29,6x51,7 mm,croco,mécanique à remontage manuel,homme', 278430.00, '5', 'hi', 0, '2020-10-12 17:07:48', NULL),
(427, 1, 12, 'LES MONTRES COMPLIQUÉES', '5102PR-001', '2012', 'platine,43,1 mm,croco,mécanique à remontage manuel,homme', 245480.00, '5', 'hi', 0, '2020-10-12 17:11:35', NULL),
(428, 1, 12, 'LES MONTRES COMPLIQUÉES', '5104P-001', '2012', 'platine,43 mm,croco,automatique,homme', 501410.00, '5', 'hi', 0, '2020-10-12 17:14:13', NULL),
(429, 1, 12, 'LES MONTRES COMPLIQUÉES', '5339R-001', '2012', 'or rose,36 mm,croco,mécanique à remontage manuel,homme', 409490.00, '5', 'hi', 0, '2020-10-12 18:48:16', NULL),
(430, 1, 12, 'LES MONTRES COMPLIQUÉES', '6104G-001', '2012', 'or blanc serti diamants,44 mm,croco,automatique,homme', 317550.00, '5', 'hi', 0, '2020-10-12 18:53:33', NULL),
(431, 1, 12, 'LES MONTRES COMPLIQUÉES', '5002P-001', '2012', 'platine,42,5 mm,croco,mécanique à remontage manuel,homme', 969440.00, '5', 'hi', 0, '2020-10-12 19:00:52', NULL),
(432, 1, 12, 'LES MONTRES COMPLIQUÉES', '5013G-010', '2012', 'or blanc,36x46,4 mm,croco,mécanique à remontage manuel,homme', 505580.00, '5', 'hi', 0, '2020-10-12 19:04:29', NULL),
(433, 1, 12, 'LES MONTRES COMPLIQUÉES', '5013J-010', '2012', 'or jaune,36x46,4 mm,croco,automatique,homme', 501410.00, '5', 'hi', 0, '2020-10-12 19:19:22', NULL),
(434, 1, 12, 'LES MONTRES COMPLIQUÉES', '5013P-010', '2012', 'platine,36x46,4 mm,croco,automatique,homme', 522310.00, '5', 'hi', 0, '2020-10-12 19:23:08', NULL),
(435, 1, 12, 'LES MONTRES COMPLIQUÉES', '5013R-010', '2012', 'or rose,36x46,4 mm,croco,automatique,homme', 505580.00, '5', 'hi', 0, '2020-10-12 19:31:16', NULL),
(436, 1, 12, 'LES MONTRES COMPLIQUÉES', '5016G-012', '2012', 'or blanc,36,8 mm,croco,mécanique à remontage manuel,homme', 559950.00, '5', 'hi', 0, '2020-10-12 19:42:52', NULL),
(437, 1, 12, 'LES MONTRES COMPLIQUÉES', '5016J-012', '2012', 'or jaune,36,8 mm,croco,mécanique à remontage manuel,homme', 555790.00, '5', 'hi', 0, '2020-10-12 19:59:57', NULL),
(438, 1, 12, 'LES MONTRES COMPLIQUÉES', '5016P-018', '2012', 'platine,36,8 mm,croco,mécanique à remontage manuel,homme', 576680.00, '5', 'hi', 0, '2020-10-12 19:51:48', NULL),
(439, 1, 12, 'LES MONTRES COMPLIQUÉES', '5016R-011', '2012', 'or rose,36,8 mm,croco,mécanique à remontage manuel,homme', 559950.00, '5', 'hi', 0, '2020-10-12 19:59:12', NULL),
(440, 1, 12, 'LES MONTRES COMPLIQUÉES', '5073P-001', '2012', 'platine serti diamants,42 mm,croco,mécanique à remontage manuel,homme', 566190.00, '5', 'hi', 0, '2020-10-12 20:48:52', NULL),
(441, 1, 12, 'LES MONTRES COMPLIQUÉES', '5074R-001', '2012', 'or rose,42 mm,croco,automatique,homme', 451290.00, '5', 'hi', 0, '2020-10-12 20:50:44', NULL),
(442, 1, 12, 'LES MONTRES COMPLIQUÉES', '5078P-010', '2012', 'platine,38 mm,croco,mécanique à remontage manuel,homme', 300830.00, '5', 'hi', 0, '2020-10-12 20:57:32', NULL),
(443, 1, 12, 'LES MONTRES COMPLIQUÉES', '5101G-001', '2012', 'or blanc,29,6x51,7 mm,croco,mécanique à remontage manuel,homme', 278430.00, '5', 'hi', 0, '2020-10-12 20:59:40', NULL),
(444, 1, 12, 'LES MONTRES COMPLIQUÉES', '5207P-001', '2012', 'platine,41 mm,croco,mécanique à remontage manuel,homme', 605910.00, '5', 'hi', 0, '2020-10-12 21:03:03', NULL),
(445, 1, 12, 'LES MONTRES COMPLIQUÉES', '5208P-001', '2012', 'platine,42 mm,croco,automatique,homme', 686930.00, '5', 'hi', 0, '2020-10-12 21:11:15', NULL),
(446, 1, 12, 'LES MONTRES COMPLIQUÉES', '5216R-001', '2012', 'or rose,39,5 mm,croco,mécanique à remontage manuel,homme', 578680.00, '5', 'hi', 0, '2020-10-12 21:13:25', NULL),
(447, 1, 12, 'LES MONTRES COMPLIQUÉES', '5235G-001', '2012', 'or blanc,40,5 mm,croco,automatique,homme', 40600.00, '5', 'hi', 0, '2020-10-12 21:20:57', NULL),
(448, 1, 12, 'LES MONTRES COMPLIQUÉES', '5270G-001', '2012', 'or blanc,41 mm,croco,mécanique à remontage manuel,homme', 133810.00, '5', 'hi', 0, '2020-10-12 21:23:36', NULL),
(449, 1, 12, 'LES MONTRES COMPLIQUÉES', '5496P-001', '2012', 'platine,39,5 mm,croco,automatique,homme', 87670.00, '5', 'hi', 0, '2020-10-12 21:33:18', NULL),
(450, 1, 12, 'L’ESSENCE DU CLASSICISME', '5120/1G-001', '2012', 'or blanc,35 mm,automatique,homme', 38300.00, '5', 'hi', 0, '2020-10-13 14:33:16', NULL),
(451, 1, 12, 'L’ESSENCE DU CLASSICISME', '5120/1J-001', '2012', 'or jaune,35 mm,automatique,homme', 34420.00, '5', 'hi', 0, '2020-10-13 14:44:51', NULL),
(452, 1, 12, 'L’ESSENCE DU CLASSICISME', '5120J-001', '2012', 'or jaune,35 mm,croco,homme', 19200.00, '5', 'hi', 0, '2020-10-13 14:50:04', NULL),
(453, 1, 12, 'L’ESSENCE DU CLASSICISME', '5120G-001', '2012', 'or blanc,35 mm,croco,automatique,homme', 20580.00, '5', 'hi', 0, '2020-10-13 14:54:38', NULL),
(454, 1, 12, 'L’ESSENCE DU CLASSICISME', '5296G-001', '2012', 'or blanc,38 mm,croco,automatique,homme', 21960.00, '5', 'hi', 0, '2020-10-13 14:59:33', NULL),
(455, 1, 12, 'L’ESSENCE DU CLASSICISME', '5296R-001', '2012', 'or rose,38 mm,croco,automatique,homme', 21960.00, '5', 'hi', 0, '2020-10-13 15:05:22', NULL),
(456, 1, 12, 'L’ESSENCE DU CLASSICISME', '6000G-010', '2012', 'or blanc', 22790.00, '5', 'hi', 0, '2020-10-13 15:08:08', NULL),
(457, 1, 12, 'L’ESSENCE DU CLASSICISME', '5127G-001', '2012', 'or blanc,37 mm,croco,automatique,homme', 21960.00, '5', 'hi', 0, '2020-10-13 15:18:15', NULL),
(458, 1, 12, 'L’ESSENCE DU CLASSICISME', '5127J-001', '2012', 'or jaune,37 mm,croco,automatique,homme', 20390.00, '5', 'hi', 0, '2020-10-13 15:26:16', NULL),
(459, 1, 12, 'L’ESSENCE DU CLASSICISME', '5127R-001', '2012', 'or rose,37 mm,croco,automatique,homme', 21960.00, '5', 'hi', 0, '2020-10-13 15:30:53', NULL),
(460, 1, 12, 'L’ESSENCE DU CLASSICISME', '5196J-001', '2012', 'or jaune,37 mm,croco,mécanique à remontage manuel,homme', 16330.00, '5', 'hi', 0, '2020-10-13 15:55:38', NULL),
(461, 1, 12, 'L’ESSENCE DU CLASSICISME', '5196G-001', '2012', 'or blanc,37 mm,croco,mécanique à remontage manuel,homme', 17900.00, '5', 'hi', 0, '2020-10-13 16:08:00', NULL),
(462, 1, 12, 'L’ESSENCE DU CLASSICISME', '5196R-001', '2012', 'or rose,37 mm,croco,mécanique à remontage manuel,homme', 17900.00, '5', 'hi', 0, '2020-10-13 16:27:15', NULL),
(463, 1, 12, 'L’ESSENCE DU CLASSICISME', '5196P-001', '2012', 'platine,37 mm,croco,mécanique à remontage manuel,homme', 30080.00, '5', 'hi', 0, '2020-10-13 16:33:17', NULL),
(464, 1, 12, 'L’ESSENCE DU CLASSICISME', '5118P-001', '2012', 'platine serti diamants,37 mm,croco,automatique,homme', 90160.00, '5', 'hi', 0, '2020-10-13 16:35:10', NULL),
(465, 1, 12, 'L’ESSENCE DU CLASSICISME', '5116G-001', '2012', 'or blanc serti diamants,36 mm,croco,mécanique à remontage manuel,homme', 20210.00, '5', 'hi', 0, '2020-10-13 16:37:27', NULL),
(466, 1, 12, 'L’ESSENCE DU CLASSICISME', '5119J-001', '2012', 'or jaune,36 mm,croco,mécanique à remontage manuel,homme', 16060.00, '5', 'hi', 0, '2020-10-13 16:40:32', NULL),
(467, 1, 12, 'L’ESSENCE DU CLASSICISME', '5119G-001', '2012', 'or blanc,36 mm,croco,mécanique à remontage manuel,homme', 17530.00, '5', 'hi', 0, '2020-10-13 16:44:39', NULL),
(468, 1, 12, 'L’ESSENCE DU CLASSICISME', '5153J-001', '2012', 'or jaune,or jaune,38 mm,croco,automatique,homme', 26300.00, '5', 'hi', 0, '2020-10-13 17:11:27', NULL),
(469, 1, 12, 'L’ESSENCE DU CLASSICISME', '5297G-001', '2012', 'or blanc serti diamants,38 mm,croco,automatique,homme', 31750.00, '5', 'hi', 0, '2020-10-13 17:14:29', NULL),
(470, 1, 12, 'L’ESSENCE DU CLASSICISME', '4897G-001', '2012', 'or blanc serti diamants,33 mm,satin,mécanique à remontage manuel,dame', 23350.00, '5', 'hi', 0, '2020-10-13 17:20:03', NULL),
(471, 1, 12, 'L’ESSENCE DU CLASSICISME', '4897R-001', '2012', 'or rose serti diamants,33 mm,satin,mécanique à remontage manuel,dame', 23350.00, '5', 'hi', 0, '2020-10-13 17:52:56', NULL),
(472, 1, 12, 'L’ESSENCE DU CLASSICISME', '7119J-012', '2012', 'or jaune,31 mm,croco,mécanique à remontage manuel,dame', 15690.00, '5', 'hi', 0, '2020-10-13 18:03:11', NULL),
(473, 1, 12, 'L’ESSENCE DU CLASSICISME', '7119G-010', '2012', 'or blanc,31 mm,croco,mécanique à remontage manuel,dame', 17160.00, '5', 'hi', 0, '2020-10-13 18:05:36', NULL),
(474, 1, 12, 'L’ESSENCE DU CLASSICISME', '7119/1J-010', '2012', 'or jaune,31 mm,mécanique à remontage manuel,dame', 29440.00, '5', 'hi', 0, '2020-10-13 18:13:28', NULL),
(475, 1, 12, 'L’ESSENCE DU CLASSICISME', '7119/1G-010', '2012', 'or blanc,31 mm,mécanique à remontage manuel,dame', 30920.00, '5', 'hi', 0, '2020-10-13 18:15:26', NULL),
(476, 1, 12, 'L’ESSENCE DU CLASSICISME', '7120G-001', '2012', 'or blanc serti diamants,31 mm,satin,mécanique à remontage manuel,dame', 24820.00, '5', 'hi', 0, '2020-10-13 18:21:32', NULL),
(477, 1, 12, 'L’ESSENCE DU CLASSICISME', '7120R-001', '2012', 'or rose serti diamants,31 mm,satin,mécanique à remontage manuel,dame', 24820.00, '5', 'hi', 0, '2020-10-13 18:54:49', NULL),
(478, 1, 12, 'L’ESSENCE DU CLASSICISME', '4897R-010', '2012', 'or rose serti diamants,33 mm,satin,mécanique à remontage manuel,dame', 23350.00, '5', 'hi', 0, '2020-10-13 19:00:00', NULL),
(479, 1, 12, 'L’ESSENCE DU CLASSICISME', '5153G-001', '2012', 'or blanc,38 mm,automatique,homme', 28150.00, '5', 'hi', 0, '2020-10-13 19:02:46', NULL),
(480, 1, 12, 'L’ESSENCE DU CLASSICISME', '5296G-010', '2012', 'or blanc,38 mm,croco,automatique,homme', 21960.00, '5', 'hi', 0, '2020-10-13 19:05:53', NULL),
(481, 1, 12, 'L’ESSENCE DU CLASSICISME', '5296R-010', '2012', 'or rose,38 mm,croco,automatique,homme', 21960.00, '5', 'hi', 0, '2020-10-13 19:08:05', NULL),
(482, 1, 12, 'L’ESSENCE DU CLASSICISME', '5298P-001', '2012', 'platine,38 mm,croco,automatique,homme', 69210.00, '5', 'hi', 0, '2020-10-13 19:11:08', NULL),
(483, 1, 12, 'L’ESSENCE DU CLASSICISME', '6000R-001', '2012', 'or rose,croco,automatique,homme', 22790.00, '5', 'hi', 0, '2020-10-13 19:13:48', NULL),
(484, 1, 12, 'L’ESSENCE DU CLASSICISME', '5098R-001', '2012', 'or rose,32x42 mm,croco,mécanique à remontage manuel,homme', 29350.00, '5', 'hi', 0, '2020-10-13 19:15:59', NULL),
(485, 1, 12, 'L’ESSENCE DU CLASSICISME', '5098P-001', '2012', 'platine,32x42 mm,croco,mécanique à remontage manuel,homme', 40050.00, '5', 'hi', 0, '2020-10-13 19:19:51', NULL),
(486, 1, 12, 'L’ESSENCE DU CLASSICISME', '5124G-001', '2012', 'or blanc,33,4x43 mm,croco,mécanique à remontage manuel,homme', 20670.00, '5', 'hi', 0, '2020-10-13 19:24:40', NULL),
(487, 1, 12, 'L’ESSENCE DU CLASSICISME', '5124J-001', '2012', 'or jaune,33,4x43 mm,croco,mécanique à remontage manuel,homme', 19290.00, '5', 'hi', 0, '2020-10-13 19:26:52', NULL),
(488, 1, 12, 'L’ESSENCE DU CLASSICISME', '4972G-001', '2012', 'or blanc serti diamants,27,4 x 39,7 mm,satin,quartz,dame', 29720.00, '5', 'hi', 0, '2020-10-13 19:37:31', NULL),
(489, 1, 12, 'L’ESSENCE DU CLASSICISME', '4972/1G-001', '2012', 'or blanc serti diamants,27,4 x 39,7 mm,or blanc,quartz,dame', 46420.00, '5', 'hi', 0, '2020-10-13 19:40:19', NULL),
(490, 1, 12, 'L’ESSENCE DU CLASSICISME', '4973G-001', '2012', 'or blanc serti diamants,27,4 x 39,7 mm,satin,quartz,dame', 38850.00, '5', 'hi', 0, '2020-10-13 19:42:22', NULL),
(491, 1, 12, 'L’ESSENCE DU CLASSICISME', '7041R-001', '2012', 'or rose,30×33,8 mm,croco,mécanique à remontage manuel,dame', 24920.00, '5', 'hi', 0, '2020-10-13 19:45:48', NULL),
(492, 1, 12, 'L’ESSENCE DU CLASSICISME', '3738/100J-012', '2012', 'or jaune,31,1x35,6 mm,croco,automatique,homme', 20030.00, '5', 'kkk', 0, '2020-10-13 20:06:48', NULL),
(493, 1, 12, 'L’ESSENCE DU CLASSICISME', '3738/100G-012', '2012', 'or blanc,31,1x35,6 mm,croco,automatique,homme', 21590.00, '5', 'hi', 0, '2020-10-13 20:11:55', NULL),
(494, 1, 12, 'L’ESSENCE DU CLASSICISME', '3738/100R-001', '2012', 'or rose,31,1x35,6 mm,croco,automatique,homme', 21590.00, '5', 'hi', 0, '2020-10-13 20:14:50', NULL),
(495, 1, 12, 'L’ESSENCE DU CLASSICISME', '3738/100P-001', '2012', 'platine,31,1x35,6 mm,croco,automatique,homme', 35070.00, '5', 'hi', 0, '2020-10-13 20:18:39', NULL),
(496, 1, 12, 'L’ESSENCE DU CLASSICISME', '5738P-001', '2012', 'platine,34,5×39,5 mm,croco,automatique,homme', 41070.00, '5', 'hi', 0, '2020-10-13 20:20:44', NULL),
(497, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5711/1A-010', '2012', 'acier,40 mm,acier,automatique,homme', 20210.00, '5', 'hi', 0, '2020-10-13 20:32:37', NULL),
(498, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5712G-001', '2012', 'or blanc,40 mm,croco,automatique,homme', 35440.00, '5', 'hi', 0, '2020-10-13 20:32:05', NULL),
(499, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5712R-001', '2012', 'or rose,40 mm,croco,automatique,homme', 35440.00, '5', 'hi', 0, '2020-10-13 20:36:05', NULL),
(500, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5712/1A-001', '2012', 'acier,40 mm,acier,automatique,homme', 27040.00, '5', 'hi', 0, '2020-10-13 20:39:32', NULL),
(501, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5713/1G-010', '2012', 'or blanc serti diamants,40 mm,automatique,homme', 71150.00, '5', 'hi', 0, '2020-10-13 20:44:08', NULL),
(502, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5719/1G-001', '2012', 'or blanc serti diamants,40 mm,or blanc,automatique,homme', 216410.00, '5', 'hi', 0, '2020-10-13 20:47:14', NULL),
(503, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5722G-001', '2012', 'or blanc serti diamants,40 mm,croco,automatique,homme', 13160.00, '5', 'hi', 0, '2020-10-13 20:50:12', NULL),
(504, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5724G-001', '2012', 'or blanc serti diamants,40 mm,croco,automatique,homme', 156700.00, '5', 'hi', 0, '2020-10-13 20:52:55', NULL),
(505, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5724R-001', '2012', 'or rose serti diamants,40 mm,croco,automatique,homme', 156700.00, '5', 'hi', 0, '2020-10-13 20:57:52', NULL),
(506, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5726A-001', '2012', 'acier,40,50 mm,croco,automatique,homme', 32110.00, '5', 'hi', 0, '2020-10-13 21:03:17', NULL),
(507, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5980/1A-001', '2012', 'acier,40,5 mm,acier,automatique,homme', 38760.00, '5', 'hi', 0, '2020-10-13 21:06:03', NULL),
(508, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '7010/1G-001', '2012', '32 mm,or blanc serti diamants,or blanc,quartz,dame', 35070.00, '5', 'hi', 0, '2020-10-13 21:09:47', NULL),
(509, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '7010/1R-001', '2012', 'or rose serti diamants,32 mm,or rose,quartz,dame', 35070.00, '5', 'hi', 0, '2020-10-14 15:03:02', NULL),
(510, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '7010/1R-010', '2012', 'or rose serti diamants,32 mm,or rose,quartz,dame', 35070.00, '5', 'hi', 0, '2020-10-14 15:10:44', NULL),
(511, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '7011/1G-001', '2012', 'or gris,32 mm,or blanc,quartz,dame', 27780.00, '5', 'hi', 0, '2020-10-14 15:26:47', NULL),
(512, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '7011/1G-010', '2012', 'or blanc,32 mm,quartz,dame', 27780.00, '5', 'hi', 0, '2020-10-14 15:34:03', NULL),
(513, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '7010G-001', '2012', 'or blanc serti diamants,32 mm,croco,quartz,dame', 24820.00, '5', 'hi', 0, '2020-10-14 15:41:33', NULL),
(514, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '7010G-010', '2012', 'or blanc serti diamants,32 mm,croco,quartz,dame', 24820.00, '5', 'hi', 0, '2020-10-14 15:49:24', NULL),
(515, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '7010R-001', '2012', 'or rose serti diamants,32 mm,croco,quartz,dame', 24820.00, '5', 'hi', 0, '2020-10-14 15:56:33', NULL),
(516, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '7010R-010', '2012', 'or rose serti diamants,32 mm,croco,quartz,dame', 24820.00, '5', 'hi', 0, '2020-10-14 16:16:46', NULL),
(517, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '7021/1G-001', '2012', 'or blanc serti diamants,37 mm,or blanc,automatique,dame', 252860.00, '5', 'hi', 0, '2020-10-14 16:50:22', NULL),
(518, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5712GR-001', '2012', 'or rose,40 mm,croco,automatique,homme', 36730.00, '5', 'hi', 0, '2020-10-14 16:52:13', NULL),
(519, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5980/1A-014', '2012', 'acier,40,5 mm,automatique,homme', 38760.00, '5', 'hi', 0, '2020-10-14 17:00:25', NULL),
(520, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5980R-001', '2012', 'or rose,40,5 mm,croco,automatique,homme', 48630.00, '5', 'hi', 0, '2020-10-14 17:02:14', NULL),
(521, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '7008/1A-001', '2012', 'acier serti diamants,33,6 mm,acier,automatique,dame', 27220.00, '5', 'hi', 0, '2020-10-14 17:03:54', NULL),
(522, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '7008/1A-010', '2012', 'acier serti diamants,33,6 mm,acier,automatique,dame', 27220.00, '5', 'hi', 0, '2020-10-14 17:06:17', NULL),
(523, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '7008/1A-011', '2012', 'acier serti diamants,33,6 mm,acier,automatique,dame', 25380.00, '5', 'hi', 0, '2020-10-14 17:09:43', NULL),
(524, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5067A-001', '2012', 'acier serti diamants,35,2 mm,caoutchouc,quartz,dame', 13200.00, '5', 'hi', 0, '2020-10-14 17:11:53', NULL),
(525, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5067A-011', '2012', 'acier serti diamants,35,2 mm,caoutchouc,quartz,dame', 13200.00, '5', 'hi', 0, '2020-10-14 17:13:44', NULL),
(526, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5069G-001', '2012', 'or blanc serti diamants,35,2 mm,caoutchouc,automatique,dame', 66170.00, '5', 'hi', 0, '2020-10-14 17:20:54', NULL),
(527, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5069G-011', '2012', 'or blanc serti diamants,35,2 mm,caoutchouc,automatique,dame', 66170.00, '5', 'hi', 0, '2020-10-14 18:02:21', NULL),
(528, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5165A-001', '2012', 'acier,38 mm,caoutchouc,automatique,homme', 15410.00, '5', 'hi', 0, '2020-10-14 18:04:31', NULL),
(529, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5167A-001', '2012', 'acier,40 mm,caoutchouc,automatique,homme', 15410.00, '5', 'hi', 0, '2020-10-14 18:15:34', NULL),
(530, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5167R-001', '2012', 'or rose,40 mm,caoutchouc,automatique,homme', 28880.00, '5', 'hi', 0, '2020-10-14 18:18:06', NULL),
(531, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5167/1A-001', '2012', 'acier,40 mm,automatique,homme', 17810.00, '5', 'hi', 0, '2020-10-14 20:28:17', NULL),
(532, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5068R-001', '2012', 'or rose serti diamants,35,2 mm,caoutchouc,automatique,dame', 31750.00, '5', 'hi', 0, '2020-10-14 20:33:28', NULL),
(533, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5087/1A-001', '2012', 'acier serti diamants,35,2 mm,acier,quartz,dame', 16330.00, '5', 'hi', 0, '2020-10-14 20:49:56', NULL),
(534, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5087/1A-010', '2012', 'acier serti diamants,35,2 mm,acier,quartz,dame', 16330.00, '5', 'hi', 0, '2020-10-14 20:52:06', NULL),
(535, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5069R-001', '2012', 'or rose serti diamants,35,2 mm,caoutchouc,automatique,dame', 66170.00, '5', 'hi', 0, '2020-10-14 20:56:06', NULL),
(536, 1, 12, 'L’ÉLÉGANCE SPORTIVE', '5164A-001', '2012', 'acier', 27.00, '5', 'hi', 0, '2020-10-14 21:00:50', NULL),
(537, 1, 12, 'LES MONTRES BIJOUX', '4910/11R-010', '2012', 'or rose,25x30 mm,quartz,dame', 34050.00, '5', 'hi', 0, '2020-10-14 22:22:03', NULL),
(538, 1, 12, 'LES MONTRES BIJOUX', '4908/11R-001', '2012', 'or rose serti diamants,22x26,3 mm,or rose,quartz,dame', 31930.00, '5', 'hi', 0, '2020-10-14 22:22:34', NULL),
(539, 1, 12, 'LES MONTRES BIJOUX', '4908/11R-010', '2012', 'or rose,2x26,3 mm,or rose,quartz,dame', 31930.00, '5', 'hi', 0, '2020-10-14 22:23:27', NULL),
(540, 1, 12, 'LES MONTRES BIJOUX', '4910/10A-001', '2012', 'acier serti diamants,25x30 mm,acier,quartz,dame', 9870.00, '5', 'hi', 0, '2020-10-14 22:23:53', NULL),
(541, 1, 12, 'LES MONTRES BIJOUX', '4908/200G-001', '2012', 'or blanc serti diamants,22 x 26,3 mm,or blanc,quartz,dame', 38110.00, '5', 'hi', 0, '2020-10-14 22:24:33', NULL),
(542, 1, 12, 'LES MONTRES BIJOUX', '4920G-001', '2012', 'or blanc,25x30 mm,tissus,quartz,dame', 18270.00, '5', 'hi', 0, '2020-10-14 22:25:33', NULL),
(543, 1, 12, 'LES MONTRES BIJOUX', '4920G-010', '2012', 'or blanc,25x30 mm,tissus,quartz,dame', 18270.00, '5', 'hi', 0, '2020-10-14 22:25:51', NULL),
(544, 1, 12, 'LES MONTRES BIJOUX', '4920R-001', '2012', 'or rose,25x30 mm,tissus,quartz,dame', 18270.00, '5', 'hi', 0, '2020-10-14 22:27:51', NULL),
(545, 1, 12, 'LES MONTRES BIJOUX', '4920R-010', '2012', 'or rose,25x30 mm,tissus,quartz,dame', 18270.00, '5', 'hi', 0, '2020-10-14 22:28:04', NULL),
(546, 1, 12, 'LES MONTRES BIJOUX', '4908/200G-011', '2012', 'or blanc serti diamants,22x26,3 mm,or blanc,quartz,dame', 38110.00, '5', 'hi', 0, '2020-10-14 22:30:37', NULL),
(547, 1, 12, 'LES MONTRES BIJOUX', '4910/10A-010', '2012', 'acier serti diamants,25x30 mm,acier,quartz,dame', 9870.00, '5', 'hi', 0, '2020-10-14 22:33:33', NULL),
(548, 1, 12, 'LES MONTRES BIJOUX', '4910/10A-011', '2012', 'acier serti diamants,25x30 mm,acier,quartz,dame', 9870.00, '5', 'hi', 0, '2020-10-14 22:35:16', NULL),
(549, 1, 12, 'LES MONTRES BIJOUX', '4910/10A-012', '2012', 'acier serti diamants,25x30 mm,acier,quartz,dame', 9870.00, '5', 'hi', 0, '2020-10-14 22:37:21', NULL),
(550, 1, 12, 'LES MONTRES BIJOUX', '4910/11R-011', '2012', 'or rose,25x30 mm,or rose,quartz,dame', 34050.00, '5', 'hi', 0, '2020-10-14 22:39:04', NULL),
(551, 1, 12, 'LES MONTRES BIJOUX', '4908/11R-011', '2012', 'or rose serti diamants,22x26,3 mm,or rose,quartz,dame', 31930.00, '5', 'hi', 0, '2020-10-14 22:40:51', NULL),
(552, 1, 12, 'LES MONTRES DE POCHE', '972/1J-010', '2012', 'or jaune,or jaune,44 mm,mécanique à remontage manuel,homme', 33.00, '5', 'hi', 0, '2020-10-14 22:48:54', NULL),
(553, 1, 12, 'LES MONTRES DE POCHE', '973J-010', '2012', 'or jaune,44 mm,mécanique à remontage manuel,homme', 31750.00, '5', 'hi', 0, '2020-10-14 22:48:20', NULL),
(554, 1, 12, 'LES MONTRES DE POCHE', '980J-011', '2012', 'or jaune,48 mm,mécanique à remontage manuel,homme', 39040.00, '5', 'hi', 0, '2020-10-14 22:51:33', NULL),
(555, 1, 12, 'LES MONTRES DE POCHE', '980G-010', '2012', 'or blanc,48 mm,mécanique à remontage manuel,homme', 41900.00, '5', 'hi', 0, '2020-10-14 23:08:57', NULL),
(556, 1, 12, 'LES MONTRES DE POCHE', '980R-001', '2012', 'or rose,48 mm,mécanique à remontage manuel,homme', 41900.00, '5', 'hi', 0, '2020-10-14 23:13:26', NULL),
(557, 1, 12, 'LES MONTRES DE POCHE', '983J-001', '2012', 'or jaune,48 mm,mécanique à remontage manuel,homme', 41250.00, '5', 'hi', 0, '2020-10-14 23:15:38', NULL),
(558, 1, 12, 'LES MONTRES DE POCHE', '980G-001', '2012', 'or blanc,48 mm,mécanique à remontage manuel,homme', 41900.00, '5', 'hi', 0, '2020-10-14 23:18:32', NULL),
(559, 1, 12, 'LES MONTRES DE POCHE', '980J-010', '2012', 'or jaune,48 mm,mécanique à remontage manuel,homme', 39040.00, '5', 'hi', 0, '2020-10-14 23:20:28', NULL),
(560, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW323101', '2013', 'acier,44 mm,caoutchouc,automatique,homme', 5650.00, '5', 'hi', 0, '2020-10-15 16:34:41', NULL),
(561, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW323103', '2013', 'or rose,44 mm,croco,automatique,homme', 12600.00, '5', 'hi', 0, '2020-10-15 16:37:04', NULL),
(562, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW323104', '2013', 'or gris,44 mm,croco,automatique,homme', 14400.00, '5', 'hi', 0, '2020-10-15 16:40:21', NULL),
(563, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW323105', '2013', 'platine,44 mm,croco,automatique,homme', 30000.00, '5', 'hi', 0, '2020-10-15 16:50:55', NULL),
(564, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW323105', '2013', 'platine,44 mm,croco,automatique,homme', 30000.00, '5', 'hi', 0, '2020-10-15 17:31:24', NULL),
(565, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW323301', '2013', 'acier,42,5 mm,croco,automatique,homme', 5650.00, '5', 'hi', 0, '2020-10-15 17:37:55', NULL),
(566, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW323303', '2013', 'or rose,42,5 mm,croco,automatique,homme', 12600.00, '5', 'hi', 0, '2020-10-15 17:39:31', NULL),
(567, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW323304', '2013', 'or gris,42,5 mm,croco,automatique,homme', 14400.00, '5', 'hi', 0, '2020-10-15 17:41:31', NULL),
(568, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW323305', '2013', 'platine,42,5 mm,croco,automatique,homme', 30000.00, '5', 'hi', 0, '2020-10-15 17:43:47', NULL),
(569, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW544501', '2013', 'acier,44 mm,croco,mécanique à remontage manuel,homme', 8250.00, '5', 'hi', 0, '2020-10-15 17:47:07', NULL),
(570, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW544503', '2013', 'or rose,44 mm,croco,mécanique à remontage manuel,homme', 14800.00, '5', 'hi', 0, '2020-10-15 17:49:47', NULL),
(571, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW544504', '2013', 'or gris,44 mm,croco,mécanique à remontage manuel,homme', 16700.00, '5', 'hi', 0, '2020-10-15 17:51:25', NULL),
(572, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW544505', '2013', 'platine,44 mm,croco,mécanique à remontage manuel,homme', 32100.00, '5', 'hi', 0, '2020-10-15 17:52:57', NULL),
(573, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW546101', '2013', 'acier,41 mm,croco,automatique,homme', 5650.00, '5', 'hi', 0, '2020-10-15 17:54:43', NULL),
(574, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW546103', '2013', 'or rose,41 mm,croco,automatique,homme', 12600.00, '5', 'hi', 0, '2020-10-15 17:56:41', NULL),
(575, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW546104', '2013', 'or gris,41 mm,croco,automatique,homme', 14400.00, '5', 'hi', 0, '2020-10-15 18:02:57', NULL),
(576, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW325401', '2013', 'acier,44 mm,croco,mécanique à remontage manuel,homme', 7500.00, '5', 'hi', 0, '2020-10-15 18:07:00', NULL),
(577, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW325403', '2013', 'or rose,44 mm,croco,mécanique à remontage manuel,homme', 13700.00, '5', 'hi', 0, '2020-10-15 18:08:41', NULL),
(578, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW325404', '2013', 'or gris,44 mm,croco,mécanique à remontage manuel,homme', 15600.00, '5', 'hi', 0, '2020-10-15 18:10:19', NULL),
(579, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW325405', '2013', 'platine,44 mm,cuir,mécanique à remontage manuel,homme', 32100.00, '5', 'hi', 0, '2020-10-15 18:12:14', NULL),
(580, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW544801', '2013', 'acier,46 mm,croco,mécanique à remontage manuel,homme', 9000.00, '5', 'hi', 0, '2020-10-15 18:16:29', NULL),
(581, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW544803', '2013', 'or rose,46 mm,croco,mécanique à remontage manuel,homme', 16300.00, '5', 'hi', 0, '2020-10-15 18:20:42', NULL),
(582, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW544803', '2013', 'or rose,46 mm,croco,mécanique à remontage manuel,homme', 16300.00, '5', 'hi', 0, '2020-10-15 18:24:47', NULL),
(583, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW544804', '2013', 'or gris,46 mm,croco,mécanique à remontage manuel,homme', 18200.00, '5', 'hi', 0, '2020-10-15 18:33:13', NULL),
(584, 1, 14, 'VINTAGE COLLECTION, EDITION JUBILÉ', 'IW544805', '2013', 'platine,46 mm,croco,mécanique à remontage manuel,homme', 34200.00, '5', 'hi', 0, '2020-10-15 19:01:30', NULL),
(585, 1, 14, 'PORTUGAISE', 'IW504401', '2013', 'platine,44,2 mm,croco,automatique,homme', 115000.00, '5', 'hi', 0, '2020-10-15 19:23:07', NULL),
(586, 1, 14, 'PORTUGAISE', 'IW504402', '2013', 'or rouge,44,2 mm,croco,automatique,homme', 93500.00, '5', 'hi', 0, '2020-10-15 19:22:41', NULL),
(587, 1, 14, 'PORTUGAISE', 'IW544906', '2013', 'platine,44 mm,croco,mécanique à remontage manuel,homme', 97500.00, '5', 'hi', 0, '2020-10-15 19:22:14', NULL),
(588, 1, 14, 'PORTUGAISE', 'IW544907', '2013', 'or rouge,44 mm,croco,croco,homme', 77800.00, '5', 'hi', 0, '2020-10-15 19:21:58', NULL),
(589, 1, 14, 'PORTUGAISE', 'IW503203', '2013', 'or gris,44,2 mm,croco,automatique,homme', 37500.00, '5', 'hi', 0, '2020-10-15 19:21:30', NULL),
(590, 1, 14, 'PORTUGAISE', 'IW503202', '2013', 'or rouge,44,2 mm,croco,automatique,homme', 34500.00, '5', 'hi', 0, '2020-10-15 19:25:35', NULL),
(591, 1, 14, 'PORTUGAISE', 'IW502305', '2013', 'platine,44,2 mm,croco,automatique,homme', 45200.00, '5', 'hi', 0, '2020-10-15 19:29:33', NULL),
(592, 1, 14, 'PORTUGAISE', 'IW502307', '2013', 'or gris,44,2 mm,croco,automatique,homme', 36700.00, '5', 'hi', 0, '2020-10-15 19:31:21', NULL),
(593, 1, 14, 'PORTUGAISE', 'IW502306', '2013', 'or rouge,44,2 mm,croco,automatique,homme', 33700.00, '5', 'hi', 0, '2020-10-15 19:44:40', NULL),
(594, 1, 14, 'PORTUGAISE', 'IW500106', '2013', 'or blanc,42,3 mm,croco,automatique,homme', 22600.00, '5', 'hi', 0, '2020-10-15 19:46:03', NULL),
(595, 1, 14, 'PORTUGAISE', 'IW500107', '2013', 'acier,42,30 mm,croco,automatique,homme', 11800.00, '5', 'hi', 0, '2020-10-15 19:57:11', NULL),
(596, 1, 14, 'PORTUGAISE', 'IW500109', '2013', 'acier,42,3 mm,croco,automatique,homme', 11800.00, '5', 'hi', 0, '2020-10-15 19:58:59', NULL),
(597, 1, 14, 'PORTUGAISE', 'IW500113', '2013', 'or rose,42,3 mm,croco,automatique,homme', 21000.00, '5', 'hi', 0, '2020-10-15 20:00:39', NULL),
(598, 1, 14, 'PORTUGAISE', 'IW500114', '2013', '42,3 mm,acier,croco,automatique,homme', 11800.00, '5', 'hi', 0, '2020-10-15 20:02:40', NULL),
(599, 1, 14, 'PORTUGAISE', 'IW371445', '2013', 'acier,40,9 mm,croco,automatique,homme', 7300.00, '5', 'hi', 0, '2020-10-15 20:04:37', NULL),
(600, 1, 14, 'PORTUGAISE', 'IW371446', '2013', 'acier,40,9 mm,croco,automatique,homme', 7300.00, '5', 'hi', 0, '2020-10-15 20:06:29', NULL),
(601, 1, 14, 'PORTUGAISE', 'IW371447', '2013', 'acier,40,9 mm,croco,automatique,homme', 7300.00, '5', 'hi', 0, '2020-10-15 20:08:24', NULL),
(602, 1, 14, 'PORTUGAISE', 'IW371480', '2013', 'or rouge,40,9 mm,croco,automatique,homme', 15700.00, '5', 'hi', 0, '2020-10-15 20:20:28', NULL),
(603, 1, 14, 'PORTUGAISE', 'IW371482', '2013', 'or rouge,40,9 mm,croco,automatique,homme', 15700.00, '5', 'hi', 0, '2020-10-15 20:41:59', NULL),
(604, 1, 14, 'PORTUGAISE', 'IW377402', '2013', 'or rose,45 mm,croco,automatique,homme', 184000.00, '5', 'hi', 0, '2020-10-15 20:43:34', NULL),
(605, 1, 14, 'PORTUGAISE', 'IW377401', '2013', 'platine,45 mm,croco,automatique,homme', 210000.00, '5', 'hi', 0, '2020-10-15 20:45:17', NULL),
(606, 1, 14, 'PORTUGAISE', 'IW390209', '2013', 'or rouge,45,4 mm,caoutchouc,automatique,homme', 23500.00, '5', 'hi', 0, '2020-10-15 20:47:46', NULL),
(607, 1, 14, 'PORTUGAISE', 'IW390210', '2013', 'acier,45,4 mm,caoutchouc,automatique,homme', 12000.00, '5', 'hi', 0, '2020-10-15 20:49:25', NULL),
(608, 1, 14, 'PORTUGAISE', 'IW390211', '2013', 'acier,45,4 mm,caoutchouc,automatique,homme', 12000.00, '5', 'hi', 0, '2020-10-15 20:50:49', NULL),
(609, 1, 14, 'PORTUGAISE', 'IW390212', '2013', 'titane,45,4 mm,caoutchouc,automatique,homme', 12500.00, '5', 'hi', 0, '2020-10-15 20:52:10', NULL),
(610, 1, 14, 'PORTUGAISE', 'IW544705', '2013', 'or rouge,43,1 mm,croco,mécanique à remontage manuel,homme', 48600.00, '5', 'hi', 0, '2020-10-15 20:53:57', NULL),
(611, 1, 14, 'PORTUGAISE', 'IW545407', '2013', 'acier,44 mm,croco,mécanique à remontage manuel,homme', 7100.00, '5', 'hi', 0, '2020-10-15 21:05:17', NULL),
(612, 1, 14, 'PORTUGAISE', 'IW545408', '2013', 'acier,44 mm,croco,mécanique à remontage manuel,homme', 7100.00, '5', 'hi', 0, '2020-10-15 21:08:24', NULL),
(613, 1, 14, 'PORTUGAISE', 'IW545406', '2013', 'or rose,44 mm,croco,mécanique à remontage manuel,homme', 14700.00, '5', 'hi', 0, '2020-10-15 21:10:16', NULL),
(614, 1, 14, 'DA VINCI', 'IW376601', '2013', 'céramique de titane,44x52,8 mm,cuir,automatique,homme', 13700.00, '5', 'hi', 0, '2020-10-15 21:14:02', NULL),
(615, 1, 14, 'DA VINCI', 'IW376601', '2013', 'céramique de titane,44x52,8 mm,cuir,automatique,homme', 13700.00, '5', 'hi', 0, '2020-10-15 21:17:38', NULL),
(616, 1, 14, 'DA VINCI', 'IW376207', '2013', 'acier,43,1x51 mm,croco,automatique,homme', 19900.00, '5', 'hi', 0, '2020-10-15 21:50:38', NULL),
(617, 1, 14, 'DA VINCI', 'IW376206', '2013', 'or rouge,43,1x51 mm,croco,automatique,homme', 30400.00, '5', 'hi', 0, '2020-10-15 21:52:59', NULL),
(618, 1, 14, 'DA VINCI', 'IW376404', '2013', 'acier,43,1x51 mm,croco,automatique,homme', 11700.00, '5', 'hi', 0, '2020-10-16 15:37:32', NULL),
(619, 1, 14, 'DA VINCI', 'IW376417', '2013', 'or gris,43,1x51 mm,croco,automatique,homme', 22300.00, '5', 'hi', 0, '2020-10-15 21:56:24', NULL),
(620, 1, 14, 'DA VINCI', 'IW376420', '2013', 'or rose,43,1x51 mm,croco,automatique,homme', 19700.00, '5', 'hi', 0, '2020-10-15 22:26:37', NULL),
(621, 1, 14, 'DA VINCI', 'IW376421', '2013', 'acier,43,1x51 mm,croco,automatique,homme', 11000.00, '5', 'hi', 0, '2020-10-15 22:28:29', NULL),
(622, 1, 14, 'DA VINCI', 'IW376416', '2013', 'platine,43,1x51 mm,croco,automatique,homme', 40300.00, '5', 'hi', 0, '2020-10-16 15:06:08', NULL),
(623, 1, 14, 'DA VINCI', 'IW376422', '2013', 'acier,43,1x51 mm,automatique,homme', 13300.00, '5', 'hi', 0, '2020-10-16 15:35:22', NULL);
INSERT INTO `product` (`id`, `upload_by`, `brand_id`, `model_name`, `id_no`, `year`, `features`, `price`, `percentage`, `description`, `status`, `created_at`, `updated_at`) VALUES
(624, 1, 14, 'DA VINCI', 'IW452306', '2013', 'acier,35,6x42,5 mm,croco,automatique,medium', 5400.00, '5', 'hi', 0, '2020-10-16 15:46:31', NULL),
(625, 1, 14, 'DA VINCI', 'IW452311', '2013', 'or rose,35,6x42,5 mm,croco,automatique,medium', 13300.00, '5', 'hi', 0, '2020-10-16 15:48:15', NULL),
(626, 1, 14, 'DA VINCI', 'IW452314', '2013', 'acier,35,6x42,5 mm,croco,automatique,medium', 5400.00, '5', 'hi', 0, '2020-10-16 15:52:05', NULL),
(627, 1, 14, 'DA VINCI', 'IW452312', '2013', 'acier,35,6x42,5 mm,croco,automatique,medium', 5400.00, '5', 'hi', 0, '2020-10-16 15:59:23', NULL),
(628, 1, 14, 'DA VINCI', 'IW376106', '2013', 'platine,44x52,8 mm,croco,automatique,homme', 58500.00, '5', 'hi', 0, '2020-10-16 16:01:32', NULL),
(629, 1, 14, 'DA VINCI', 'IW376107', '2013', 'or rose,44x52,8 mm,croco,automatique,homme', 37100.00, '5', 'hi', 0, '2020-10-16 16:11:55', NULL),
(630, 1, 14, 'INGENIEUR', 'IW500502', '2013', 'platine,45,5 mm,croco,automatique,homme', 34600.00, '5', 'hi', 0, '2020-10-16 16:15:30', NULL),
(631, 1, 14, 'INGENIEUR', 'IW500503', '2013', 'or rose,45,5 mm,croco,automatique,homme', 20600.00, '5', 'hi', 0, '2020-10-16 16:18:38', NULL),
(632, 1, 14, 'INGENIEUR', 'IW500501', '2013', 'acier,45,5 mm,croco,automatique,homme', 11000.00, '5', 'hi', 0, '2020-10-16 16:22:43', NULL),
(633, 1, 14, 'INGENIEUR', 'IW500505', '2013', 'acier,45,5 mm,acier,automatique,homme', 11900.00, '5', 'hi', 0, '2020-10-16 16:25:45', NULL),
(634, 1, 14, 'INGENIEUR', 'IW500508', '2013', 'acier,45,5 mm,croco,automatique,homme', 11100.00, '5', 'hi', 0, '2020-10-16 16:27:54', NULL),
(635, 1, 14, 'INGENIEUR', 'IW323310', '2013', 'acier,44 mm,croco,automatique,homme', 6200.00, '5', 'hi', 0, '2020-10-16 16:30:37', NULL),
(636, 1, 14, 'INGENIEUR', 'IW323601', '2013', 'acier,46 mm,caoutchouc,automatique,homme', 6500.00, '5', 'hi', 0, '2020-10-16 16:33:26', NULL),
(637, 1, 14, 'INGENIEUR', 'IW323604', '2013', 'acier,46 mm,automatique,homme', 7450.00, '5', 'hi', 0, '2020-10-16 16:36:49', NULL),
(638, 1, 14, 'INGENIEUR', 'IW323608', '2013', 'acier,46 mm,caoutchouc,automatique,homme', 7000.00, '5', 'hi', 0, '2020-10-16 16:38:38', NULL),
(639, 1, 14, 'INGENIEUR', 'IW378402', '2013', 'or rose,45,5 mm,croco,automatique,homme', 22000.00, '5', 'hi', 0, '2020-10-16 16:41:54', NULL),
(640, 1, 14, 'INGENIEUR', 'IW378403', '2013', 'platine,45,5 mm,croco,automatique,homme', 37800.00, '5', 'hi', 0, '2020-10-16 16:45:17', NULL),
(641, 1, 14, 'INGENIEUR', 'IW378405', '2013', 'acier,45,5 mm,croco,automatique,homme', 12200.00, '5', 'hi', 0, '2020-10-16 16:53:19', NULL),
(642, 1, 14, 'INGENIEUR', 'IW378406', '2013', 'acier,45,5 mm,croco,automatique,homme', 12200.00, '5', 'hi', 0, '2020-10-16 16:55:22', NULL),
(643, 1, 14, 'INGENIEUR', 'IW376501', '2013', 'titane,45 mm', 11000.00, '5', 'hi', 0, '2020-10-16 17:14:23', NULL),
(644, 1, 14, 'MONTRES D’AVIATEUR', 'IW502617', '2013', 'or rouge,46 mm,cuir,automatique,homme', 39600.00, '5', 'hi', 0, '2020-10-16 17:18:49', NULL),
(645, 1, 14, 'MONTRES D’AVIATEUR', 'IW500901', '2013', 'acier,42 mm,croco,automatique,homme', 12900.00, '5', 'hi', 0, '2020-10-16 17:20:39', NULL),
(646, 1, 14, 'MONTRES D’AVIATEUR', 'IW377701', '2013', 'acier,43 mm,croco,automatique,homme', 5300.00, '5', 'hi', 0, '2020-10-16 17:23:53', NULL),
(647, 1, 14, 'MONTRES D’AVIATEUR', 'IW377704', '2013', '', 6400.00, '5', 'hi', 0, '2020-10-16 17:24:57', NULL),
(648, 1, 14, 'MONTRES D’AVIATEUR', 'IW377801', '2013', '', 11100.00, '5', 'hi', 0, '2020-10-16 17:26:35', NULL),
(649, 1, 14, 'MONTRES D’AVIATEUR', 'IW326501', '2013', '', 4300.00, '5', 'hi', 0, '2020-10-16 17:27:56', NULL),
(650, 1, 14, 'MONTRES D’AVIATEUR', 'IW326504', '2013', '', 5400.00, '5', 'hi', 0, '2020-10-16 17:29:05', NULL),
(651, 1, 14, 'MONTRES D’AVIATEUR', 'IW388001', '2013', '', 11300.00, '5', 'hi', 0, '2020-10-16 17:30:52', NULL),
(652, 1, 14, 'MONTRES D’AVIATEUR', 'IW388002', '2013', '', 11300.00, '5', 'hi', 0, '2020-10-16 17:40:26', NULL),
(653, 1, 14, 'MONTRES D’AVIATEUR', 'IW326201', '2013', '', 8550.00, '5', 'hi', 0, '2020-10-16 18:08:16', NULL),
(654, 1, 14, 'MONTRES D’AVIATEUR', 'IW326201', '2013', '', 16100.00, '5', 'hi', 0, '2020-10-16 18:12:23', NULL),
(655, 1, 14, 'MONTRES D’AVIATEUR', 'IW501902', '2013', '', 16100.00, '5', 'hi', 0, '2020-10-16 18:14:01', NULL),
(656, 1, 14, 'MONTRES D’AVIATEUR', 'IW502902', '2013', '', 34200.00, '5', 'hi', 0, '2020-10-16 18:15:29', NULL),
(657, 1, 14, 'MONTRES D’AVIATEUR', 'IW500906', '2013', '', 14900.00, '5', 'hi', 0, '2020-10-16 18:17:38', NULL),
(658, 1, 14, 'MONTRES D’AVIATEUR', 'IW325519', '2013', '', 4300.00, '5', 'hi', 0, '2020-10-16 18:18:55', NULL),
(659, 1, 14, 'MONTRES D’AVIATEUR', 'IW387805', '2013', '', 29700.00, '5', 'hi', 0, '2020-10-16 18:20:14', NULL),
(660, 1, 14, 'MONTRES D’AVIATEUR', 'IW387806', '2013', '', 12.00, '5', 'hi', 0, '2020-10-16 18:21:55', NULL),
(661, 1, 14, 'MONTRES D’AVIATEUR', 'IW379103', '2013', '', 49500.00, '5', 'hi', 0, '2020-10-16 18:23:34', NULL),
(662, 1, 14, 'MONTRES D’AVIATEUR', 'IW387803', '2013', '', 24300.00, '5', 'hi', 0, '2020-10-16 18:25:56', NULL),
(663, 1, 14, 'MONTRES D’AVIATEUR', 'IW387802', '2013', '', 9700.00, '5', 'hi', 0, '2020-10-16 18:27:34', NULL),
(664, 1, 14, 'MONTRES D’AVIATEUR', 'IW387804', '2013', '', 10500.00, '5', 'hi', 0, '2020-10-16 18:28:47', NULL),
(665, 1, 14, 'AQUATIMER', 'IW376708', '2013', '', 6100.00, '5', 'hhhhi', 0, '2020-10-16 18:46:22', NULL),
(666, 1, 14, 'AQUATIMER', 'IW376709', '2013', '', 5.00, '5', 'hi', 0, '2020-10-16 18:47:37', NULL),
(667, 1, 14, 'AQUATIMER', 'IW376710', '2013', '', 6100.00, '5', 'hi', 0, '2020-10-16 18:48:46', NULL),
(668, 1, 14, 'AQUATIMER', 'IW376711', '2013', '', 5100.00, '5', 'hi', 0, '2020-10-16 18:51:11', NULL),
(669, 1, 14, 'AQUATIMER', 'IW376706', '2013', '', 5600.00, '5', 'hi', 0, '2020-10-16 18:52:08', NULL),
(670, 1, 14, 'AQUATIMER', 'IW376705', '2013', '', 6250.00, '5', 'hi', 0, '2020-10-16 18:53:23', NULL),
(671, 1, 14, 'PORTOFINO', 'IW391001', '2013', 'acier,42 mm,croco,automatique,homme', 5200.00, '5', 'hi', 0, '2020-10-19 15:27:18', NULL),
(672, 1, 14, 'PORTOFINO', 'IW391002', '2013', 'acier,42 mm,croco,automatique,homme', 5200.00, '5', 'hi', 0, '2020-10-19 15:29:07', NULL),
(673, 1, 14, 'PORTOFINO', 'IW391005', '2013', 'acier,42 mm,automatique,homme', 6050.00, '5', 'hi', 0, '2020-10-19 15:32:06', NULL),
(674, 1, 14, 'PORTOFINO', 'IW391006', '2013', 'acier,42 mm,automatique,homme', 6050.00, '5', 'hi', 0, '2020-10-19 15:43:40', NULL),
(675, 1, 14, 'PORTOFINO', 'IW391019', '2013', 'acier,40 mm,croco,automatique,homme', 5600.00, '5', 'hi', 0, '2020-10-19 15:46:02', NULL),
(676, 1, 14, 'PORTOFINO', 'IW356501', '2013', 'acier,40 mm,croco,automatique,medium', 4120.00, '5', 'hi', 0, '2020-10-19 15:47:48', NULL),
(677, 1, 14, 'PORTOFINO', 'IW356502', '2013', 'acier,40 mm,croco,automatique,medium', 4120.00, '5', 'hi', 0, '2020-10-19 15:50:57', NULL),
(678, 1, 14, 'PORTOFINO', 'IW356504', '2013', 'or rouge,40 mm,croco,automatique,medium', 10700.00, '5', 'hi', 0, '2020-10-19 15:56:37', NULL),
(679, 1, 14, 'PORTOFINO', 'IW356505', '2013', 'acier', 4970.00, '5', 'hi', 0, '2020-10-19 15:58:38', NULL),
(680, 1, 14, 'PORTOFINO', 'IW356506', '2013', 'acier,40 mm,automatique,medium', 4970.00, '5', 'hi', 0, '2020-10-19 16:03:44', NULL),
(681, 1, 14, 'PORTOFINO', 'IW510102', '2013', 'acier,45 mm,croco,mécanique à remontage manuel,homme', 9550.00, '5', 'hi', 0, '2020-10-19 16:08:56', NULL),
(682, 1, 14, 'PORTOFINO', 'IW510103', '2013', 'acier,45 mm,croco,mécanique à remontage manuel,homme', 9550.00, '5', 'hi', 0, '2020-10-19 16:10:47', NULL),
(683, 1, 14, 'PORTOFINO', 'IW510104', '2013', 'or rouge,45 mm,croco,mécanique à remontage manuel,homme', 18100.00, '5', 'hi', 0, '2020-10-19 16:33:02', NULL),
(684, 1, 14, 'PORTOFINO', 'IW510107', '2013', 'or rouge', 18100.00, '5', 'hi', 0, '2020-10-19 16:44:21', NULL),
(685, 1, 15, 'RM 002', 'RG 501.04.91', '2014', 'or rouge,45x38,30x11,95 mm,cuir,tourbillon,homme', 299000.00, '5', 'HI', 0, '2020-10-19 17:07:12', NULL),
(686, 1, 15, 'RM 002', 'WG 501.06.91', '2014', 'or blanc,45x38,30x11,95 mm,cuir,tourbillon,homme', 305000.00, '5', 'hi', 0, '2020-10-19 17:09:07', NULL),
(687, 1, 15, 'RM 002', 'Ti 501.45.91', '2014', 'titane,45x38,30x11,95 mm,cuir,tourbillon,homme', 293500.00, '5', 'hi', 0, '2020-10-19 17:11:19', NULL),
(688, 1, 15, 'RM 002', 'Pt All Grey 501.48A.91', '2014', 'platine,45x38,30x11,95 mm,cuir,tourbillon,homme', 347000.00, '5', 'hi', 0, '2020-10-19 17:21:31', NULL),
(689, 1, 15, 'RM 003', 'RG 502.04.91', '2014', 'or rouge,48x39,30x13,mm,cuir,tourbillon,homme', 344000.00, '5', 'hi', 0, '2020-10-19 17:20:57', NULL),
(690, 1, 15, 'RM 003', 'WG 502.06.91', '2014', 'or blanc,48x39,70x13,65 mm,cuir,tourbillon,homme', 351000.00, '5', 'hi', 0, '2020-10-19 17:20:15', NULL),
(691, 1, 15, 'RM 003', 'Ti 502.45.91', '2014', 'titane,48x39,70x13,65 mm,cuir,tourbillon,homme', 334000.00, '5', 'hi', 0, '2020-10-19 17:24:28', NULL),
(692, 1, 15, 'RM 003', 'Ti DLC Boutique Edition 502.45B.91B', '2014', 'titane,48x39,70x13,65 mm,cuir,tourbillon,homme', 336000.00, '5', 'hi', 0, '2020-10-19 17:27:43', NULL),
(693, 1, 15, 'RM 003', 'Pt All Grey 502.48C.91', '2014', 'platine,48x39,70x13,65 mm,cuir,tourbillon,homme', 417000.00, '5', 'hi', 0, '2020-10-19 17:29:46', NULL),
(694, 1, 15, 'RM 003', 'Carbon 503.72.91', '2014', 'composite de carbone,48x39,70x13,65 mm,caoutchouc,tourbillon,homme', 401000.00, '5', 'hi', 0, '2020-10-19 19:20:20', NULL),
(695, 1, 15, 'RM 004', 'RG 503.04.91', '2014', 'or rouge,48x39,00x15, mm,croco,mécanique à remontage manuel,homme', 252000.00, '5', 'hi', 0, '2020-10-19 19:24:42', NULL),
(696, 1, 15, 'RM 004', 'RG Felipe Massa 503.04C.91', '2014', 'or rouge,48x39,70x14,95 mm,cuir,mécanique à remontage manuel,homme', 267500.00, '5', 'hi', 0, '2020-10-19 19:29:02', NULL),
(697, 1, 15, 'RM 004', 'WG 503.06.91', '2014', 'or blanc,48x39,00x15, mm,croco,mécanique à remontage manuel,homme', 263500.00, '5', 'hi', 0, '2020-10-19 19:38:40', NULL),
(698, 1, 15, 'RM 004', 'Ti 503.45.91', '2014', 'titane,48x39,00x15, mm,croco,mécanique à remontage manuel,homme', 239500.00, '5', 'hi', 0, '2020-10-19 19:44:05', NULL),
(699, 1, 15, 'RM 004', 'Pt 503.48.91', '2014', 'platine,48x39,70x14,95 mm,cuir,mécanique à remontage manuel,homme', 312000.00, '5', 'hi', 0, '2020-10-19 19:50:01', NULL),
(700, 1, 15, 'RM 007', 'RG plain case, sapphire dial 506.04.91', '2014', 'or rouge,45x31x10,95 mm,satin,automatique,dame', 66000.00, '5', 'hi', 0, '2020-10-19 19:54:03', NULL),
(701, 1, 15, 'RM 007', 'RG plain case, half set dial 506.04.XXXX', '2014', 'or serti diamants,45x31x10,95 mm,croco,automatique,dame', 83000.00, '5', 'hi', 0, '2020-10-19 19:58:05', NULL),
(702, 1, 15, 'RM 007', 'WG plain case, sapphire dial 506.06.91', '2014', 'or blanc,45x31x10,95 mm,cuir,automatique,dame', 71500.00, '5', 'hi', 0, '2020-10-19 20:00:33', NULL),
(703, 1, 15, 'RM 008', 'RG 507.04.91', '2014', 'or rouge,48x39,70x14,95 mm,croco,tourbillon,homme', 683000.00, '5', 'hi', 0, '2020-10-19 20:07:07', NULL),
(704, 1, 15, 'RM 008', 'WG Felipe Massa 507.06D.91', '2014', 'or blanc,48x39,70x14,95 mm,cuir,tourbillon,homme', 71250.00, '5', 'hi', 0, '2020-10-19 20:08:42', NULL),
(705, 1, 15, 'RM 010', 'RG 509.04.91', '2014', 'or rouge,48x39,30x13,84 mm,cuir,automatique,medium', 84500.00, '5', 'hi', 0, '2020-10-19 20:29:36', NULL),
(706, 1, 15, 'RM 010', 'RG medium set 509.041.91-1', '2014', 'or serti diamants,48x39,30x13,84 mm,caoutchouc,automatique,medium', 113500.00, '5', 'hi', 0, '2020-10-19 20:33:40', NULL),
(707, 1, 15, 'RM 010', 'RG full set 509.042.91-1', '2014', 'or serti diamants,48x39,30x13,84 mm,caoutchouc,automatique,medium', 200000.00, '5', 'hi', 0, '2020-10-19 20:38:13', NULL),
(708, 1, 15, 'RM 010', 'WG 509.06.91', '2014', 'or blanc,48x39,30x13,84 mm,cuir,automatique,medium', 91500.00, '5', 'hi', 0, '2020-10-19 20:41:58', NULL),
(709, 1, 15, 'RM 010', 'WG medium set 509.061.91-1', '2014', 'or blanc serti de diamants,48x39,30x13,84 mm,croco,automatique,medium', 121000.00, '5', 'hi', 0, '2020-10-19 20:45:17', NULL),
(710, 1, 15, 'RM 010', 'WG full set 509.062.91-1', '2014', 'or blanc serti de diamants,48x39,30x13,84 mm,croco,automatique,medium', 207500.00, '5', 'hi', 0, '2020-10-19 20:47:41', NULL),
(711, 1, 15, 'RM 010', 'Ti 509.45.91', '2014', 'titane,48x39,30x13,84 mm,cuir,automatique,automatique', 67500.00, '5', 'hi', 0, '2020-10-19 20:51:10', NULL),
(712, 1, 15, 'RM 011', 'RG 511.04A.91-1', '2014', 'or rouge,50x40x16,15 mm,caoutchouc,automatique,homme', 111000.00, '5', 'hi', 0, '2020-10-19 20:55:22', NULL),
(713, 1, 15, 'RM 011', 'Full RG Ivory 511.04.91X-1', '2014', 'or rouge,50x40x16,15 mm,caoutchouc,automatique,homme', 13700.00, '5', 'hi', 0, '2020-10-19 20:57:23', NULL),
(714, 1, 15, 'RM 011', 'WG 511.06A.91-1', '2014', 'or blanc,50x40x16,15 mm,caoutchouc,automatique,homme', 116500.00, '5', 'hi', 0, '2020-10-19 21:03:49', NULL),
(715, 1, 15, 'RM 011', 'Ti 511.45AG.91-1', '2014', 'titane,50x40x16,15 mm,cuir,automatique,homme', 98500.00, '5', 'hi', 0, '2020-10-19 21:10:37', NULL),
(716, 1, 15, 'RM 011', 'Titalyt 511.45U.91-1', '2014', 'titane,50x40x16,15 mm,caoutchouc,automatique,homme', 103000.00, '5', 'hi', 0, '2020-10-19 21:16:08', NULL),
(717, 1, 15, 'RM 011', 'Ti Shot Blasted 511.45AS.91R-1', '2014', 'titane,50x40x16,15 mm,caoutchouc,automatique,homme', 100000.00, '5', 'hi', 0, '2020-10-19 21:18:13', NULL),
(718, 1, 15, 'RM 011', 'Ti LMC 511.45AR.91Z-1', '2014', 'titane,50x40x16,15 mm,caoutchouc,automatique,homme', 108500.00, '5', 'hi', 0, '2020-10-19 21:21:03', NULL),
(719, 1, 15, 'RM 011', 'Ti Spa Classic 511.45.XXX', '2014', 'titane,50x40x16,15 mm,caoutchouc,automatique,homme', 108500.00, '5', 'hi', 0, '2020-10-19 21:32:39', NULL),
(720, 1, 15, 'RM 011', 'RM11-01 Ti Roberto Mancini 549.45.91-1', '2014', 'titane,50x40x16,15 mm,caoutchouc,automatique,homme', 114500.00, '5', 'hi', 0, '2020-10-19 21:54:43', NULL),
(721, 1, 15, 'RM 011', 'Carbon 511.72.91S-1', '2014', 'composite de carbone,50x40x16,15 mm,caoutchouc,automatique,homme', 123000.00, '5', 'hi', 0, '2020-10-20 15:15:30', NULL),
(722, 1, 15, 'RM 014', 'RG Perini Navi 514.04.91', '2014', 'or rouge,45x38,90x11, mm,cuir,tourbillon,homme', 310000.00, '5', 'hi', 0, '2020-10-20 15:20:03', NULL),
(723, 1, 15, 'RM 014', 'WG Perini Navi 514.06.91', '2014', 'or blanc,45x38,90x11, mm,satin,tourbillon,homme', 323000.00, '5', 'hi', 0, '2020-10-20 15:24:47', NULL),
(724, 1, 15, 'RM 014', 'Pt Perini Navi 514.48.91', '2014', 'platine,45x38,90x11, mm,cuir,tourbillon,homme', 364000.00, '5', 'hi', 0, '2020-10-20 15:27:19', NULL),
(725, 1, 15, 'RM 015', 'RG Perini Navi 515.04.91 Tourbillon V2 Dual Time Marine', '2014', 'or rouge,48x39,30x13, mm,croco,tourbillon,homme', 363000.00, '5', 'hi', 0, '2020-10-20 15:30:09', NULL),
(726, 1, 15, 'RM 015', 'WG Perini Navi 515.06.91', '2014', 'or blanc,48x39,30x13, mm,croco,tourbillon,homme', 373000.00, '5', 'hi', 0, '2020-10-20 15:38:00', NULL),
(727, 1, 15, 'RM 016', 'RG 516.04.91-1', '2014', 'or rouge,49,8x38x8,25 mm,cuir,automatique,medium', 86500.00, '5', 'hi', 0, '2020-10-20 15:42:13', NULL),
(728, 1, 15, 'RM 016', 'RG full set 516.0410.91-1', '2014', '49,8x38x8,25 mm,tissus,automatique,dame', 159000.00, '5', 'hi', 0, '2020-10-20 15:46:20', NULL),
(729, 1, 15, 'RM 016', 'RG \"Pic\" setting - black sapphires 516.0424.91', '2014', 'or serti diamants,49,80x38x8,25 mm,cuir,automatique,dame', 82500.00, '5', 'hi', 0, '2020-10-20 15:48:42', NULL),
(730, 1, 15, 'RM 016', 'RG \"Pic\" setting - white round diamonds 516.0425.91', '2014', '49,80x38x8,25 mm,tissus,automatique,dame', 96500.00, '5', 'hi', 0, '2020-10-20 16:00:01', NULL),
(731, 1, 15, 'RM 016', 'WG 516.06.91-1', '2014', 'or blanc,49,8x38x8,25 mm,cuir,mécanique à remontage manuel,medium', 94500.00, '5', 'hi', 0, '2020-10-20 16:07:25', NULL),
(732, 1, 15, 'RM 016', 'WG medium set 516.061.91-1', '2014', 'or blanc serti de diamants,49,8x38x8,25 mm,tissus,automatique,dame', 124500.00, '5', 'hi', 0, '2020-10-20 16:20:04', NULL),
(733, 1, 15, 'RM 016', 'WG full set 516.0610.91-1', '2014', 'or blanc serti de diamants,49,8x38x8,25 mm,cuir,automatique,dame', 167500.00, '5', 'hi', 0, '2020-10-20 16:23:12', NULL),
(734, 1, 15, 'RM 016', 'WG \"Pic\" setting - black sapphires 516.0624.91', '2014', '49,8x38x8,25 mm,cuir,mécanique à remontage manuel,medium', 87500.00, '5', 'hi', 0, '2020-10-20 16:31:23', NULL),
(735, 1, 15, 'RM 016', 'Ti 516.45.91-1', '2014', 'titane,49,8x38x8,25 mm,cuir,automatique,medium', 71000.00, '5', 'hi', 0, '2020-10-20 16:35:23', NULL),
(736, 1, 15, 'RM 016', 'Titalyt 516.45C.91B-1', '2014', 'titane,49,80x38,00x8,2 mm,cuir,automatique,medium', 72000.00, '5', 'hi', 0, '2020-10-20 16:37:31', NULL),
(737, 1, 15, 'RM 016', 'Ti DLC 516.45I.91-1', '2014', 'titane,49,8x38x8,25 mm,cuir,automatique,medium', 72000.00, '5', 'hi', 0, '2020-10-20 16:40:32', NULL),
(738, 1, 15, 'RM 017', 'RG 517.04.91', '2014', 'or rouge,49,80x38x8,70 mm,cuir,tourbillon,homme', 382000.00, '5', 'hi', 0, '2020-10-20 16:42:55', NULL),
(739, 1, 15, 'RM 017', 'RG full set 517.041.91', '2014', '49,80x38x8,70 mm,cuir,tourbillon,homme,', 466500.00, '5', 'hi', 0, '2020-10-20 16:46:35', NULL),
(740, 1, 15, 'RM 017', 'WG 517.06.91 Tourbillon Extra Plate', '2014', 'or blanc,49,80x38x8,70 mm,croco,tourbillon,homme', 390000.00, '5', 'hi', 0, '2020-10-20 17:39:17', NULL),
(741, 1, 15, 'RM 017', 'WG full set 517.061.91', '2014', '49,80x38x8,70 mm,croco,tourbillon,homme', 474500.00, '5', 'hi', 0, '2020-10-20 17:57:06', NULL),
(742, 1, 15, 'RM 017', 'Ti 517.45.91 Tourbillon Extra Plate', '2014', 'titane,49,80x38x8,70 mm,croco,tourbillon,homme', 353500.00, '5', 'hi', 0, '2020-10-20 17:59:22', NULL),
(743, 1, 15, 'RM 020', 'RG 520.04A.91 Montre de Poche', '2014', 'or rouge,62x52x15,60 mm,tourbillon,homme', 460000.00, '5', 'hi', 0, '2020-10-20 18:02:01', NULL),
(744, 1, 15, 'RM 020', 'WG 520.06A.91 Montre de Poche', '2014', 'or blanc,62x52x15,60 mm,tourbillon,homme', 466000.00, '5', 'hi', 0, '2020-10-20 18:04:37', NULL),
(745, 1, 15, 'RM 020', 'Ti 520.45.91 Montre de Poche', '2014', 'titane', 431000.00, '5', 'hi', 0, '2020-10-20 18:18:00', NULL),
(746, 1, 15, 'RM 021', 'RG 521.04.91', '2014', 'or rouge,48x39,30x19,95 mm,croco,tourbillon,homme', 411500.00, '5', 'hi', 0, '2020-10-20 18:23:25', NULL),
(747, 1, 15, 'RM 021', 'WG 521.06.91', '2014', 'or blanc,48x39,3x19,95 mm,croco,tourbillon,homme', 423500.00, '5', 'hi', 0, '2020-10-20 18:32:03', NULL),
(748, 1, 15, 'RM 021', 'Ti 521.45.91', '2014', 'titane,48x39,30x19,95 mm,croco,tourbillon,homme', 37400.00, '5', 'hi', 0, '2020-10-20 18:40:22', NULL),
(749, 1, 15, 'RM 021', 'Carbon 521.72.91', '2014', 'composite de carbone,48x39,30x19,95 mm,tourbillon,homme', 443000.00, '5', 'hi', 0, '2020-10-20 18:43:19', NULL),
(750, 1, 15, 'RM 022', 'RG 522.04.91 Tourbillon', '2014', 'or rouge,48x39,30x19,95 mm,croco,tourbillon,homme', 43800.00, '5', 'hi', 0, '2020-10-20 18:46:27', NULL),
(751, 1, 15, 'RM 022', 'WG 522.06.91', '2014', 'or blanc,48x39,30x19,95 mm,croco,tourbillon,homme', 450500.00, '5', 'hi', 0, '2020-10-20 18:48:26', NULL),
(752, 1, 15, 'RM 023', 'RG 523.04.91-1', '2014', 'or rouge,45x39,30x11,25 mm,croco,automatique,medium', 85000.00, '5', 'hi', 0, '2020-10-20 18:51:00', NULL),
(753, 1, 15, 'RM 023', 'RG medium set 523.041.91-1', '2014', 'or serti diamants,45x39,30x11,25 mm,croco,automatique,dame', 114000.00, '5', 'hi', 0, '2020-10-20 18:53:50', NULL),
(754, 1, 15, 'RM 023', 'RG full set 523.042.91-1', '2014', 'or serti diamants,45x39,30x11,25 mm,croco,automatique,dame', 165000.00, '5', 'hi', 0, '2020-10-20 18:56:07', NULL),
(755, 1, 15, 'RM 023', 'WG 523.06.91', '2014', 'or blanc,45x39,30x11,25 mm,croco,automatique,medium', 90500.00, '5', 'hi', 0, '2020-10-20 18:58:12', NULL),
(756, 1, 15, 'RM 023', 'WG medium set 523.061.91-1', '2014', 'or blanc serti de diamants,45x39,30x11,25 mm,croco,automatique,dame', 120000.00, '5', 'hi', 0, '2020-10-20 19:01:04', NULL),
(757, 1, 15, 'RM 023', 'WG full set 523.062.91-1', '2014', 'or blanc serti de diamants,45x39,30x11,25 mm,croco,automatique,dame', 171000.00, '5', 'hi', 0, '2020-10-20 19:03:26', NULL),
(758, 1, 15, 'RM 023', 'Ti 523.45.91', '2014', 'titane,45x39,30x11,25 mm,croco,automatique,medium', 68000.00, '5', 'hi', 0, '2020-10-20 19:08:11', NULL),
(759, 1, 15, 'RM 025', 'Ti 525.45.91 Tourbillon', '2014', 'titane,50,70x19,20 mm,perfluoroelastomère Kalrez,tourbillon,homme', 611000.00, '5', 'hi', 0, '2020-10-20 19:13:02', NULL),
(760, 1, 15, 'RM 026', 'RG Panda 547.04.91', '2014', 'or serti diamants,45x39,7x12,60 mm,croco,tourbillon,dame', 501000.00, '5', 'hi', 0, '2020-10-20 19:23:30', NULL),
(761, 1, 15, 'RM 026', 'WG Panda 547.06.91', '2014', 'or blanc,45x39,7x12,60 mm,croco,tourbillon,dame', 515500.00, '5', 'hi', 0, '2020-10-20 19:25:54', NULL),
(762, 1, 15, 'RM 027', 'RM27-01 Rafael Nadal 545.72.91', '2014', 'nanotubes de carbone,45,98x38,90x10, mm,velcro,tourbillon,homme', 658000.00, '5', 'hi', 0, '2020-10-20 19:34:08', NULL),
(763, 1, 15, 'RM 027', 'RM27-01 Rafael Nadal 545.72.91', '2014', 'nanotubes de carbone,45,98x38,90x10, mm,velcro,tourbillon,homme', 658000.00, '5', 'hi', 0, '2020-10-20 19:34:53', NULL),
(764, 1, 15, 'RM 028', 'RG 528.04.91', '2014', 'or rouge', 125500.00, '5', 'hi', 0, '2020-10-20 19:45:06', NULL),
(765, 1, 15, 'RM 028', 'Ti 528.45.91', '2014', 'titane,47x14,6 mm,cuir,automatique,homme', 86000.00, '5', 'hi', 0, '2020-10-20 19:50:56', NULL),
(766, 1, 15, 'RM 028', 'Brown PVD 528.45L.91B-1', '2014', 'pvd,47x14,6 mm,caoutchouc,automatique,homme', 92500.00, '5', 'hi', 0, '2020-10-20 19:58:52', NULL),
(767, 1, 15, 'RM 028', 'Ti DLC \"Orange Flash\" 528.45M.91K-1', '2014', 'titane,47x14,6 mm,caoutchouc,automatique,homme', 93000.00, '5', 'hi', 0, '2020-10-20 20:05:19', NULL),
(768, 1, 15, 'RM 028', 'Voiles de St Barth 528.45A.91C-1', '2014', 'titane,47x14,6 mm,caoutchouc,automatique,homme', 83500.00, '5', 'hi', 0, '2020-10-20 20:08:04', NULL),
(769, 1, 15, 'RM 029', 'RG 529.04.91', '2014', 'or rouge,48x39,70x12,60 mm,caoutchouc,automatique,homme', 86000.00, '5', 'hi', 0, '2020-10-20 20:11:35', NULL),
(770, 1, 15, 'RM 029', 'RG 529.04.91', '2014', 'or rouge,48x39,70x12,60 mm,caoutchouc,automatique,homme', 86000.00, '5', 'hi', 0, '2020-10-21 15:33:35', NULL),
(771, 1, 15, 'RM 029', 'WG 529.06.91', '2014', 'or blanc,48x39,70x12,60 mm,caoutchouc,automatique,homme', 96500.00, '5', 'hi', 0, '2020-10-21 15:46:03', NULL),
(772, 1, 15, 'RM 029', 'Ti 529.45.91', '2014', 'titane,48x39,70x12,60 mm,caoutchouc,automatique,homme', 70000.00, '5', 'hi', 0, '2020-10-21 15:48:38', NULL),
(773, 1, 15, 'RM 030', 'RG 530.04A.91', '2014', 'or rouge,50x42,70x13,95 mm,caoutchouc,automatique,homme', 105000.00, '5', 'hi', 0, '2020-10-21 15:57:13', NULL),
(774, 1, 15, 'RM 030', 'Ti 530.45.91 A', '2014', 'titane,50x42,70x13,95 mm,caoutchouc,automatique,homme', 81000.00, '5', 'hi', 0, '2020-10-21 17:15:19', NULL),
(775, 1, 15, 'RM 030', 'Ti DLC Black Night 530.45D.91C', '2014', 'titane,50x42,70x13,95 mm,caoutchouc,automatique,homme', 82500.00, '5', 'hi', 0, '2020-10-21 17:21:25', NULL),
(776, 1, 15, 'RM 031', 'Haute performance 531.48.91', '2014', 'platine,50 mm,caoutchouc,tourbillon,homme', 923000.00, '5', 'hi', 0, '2020-10-21 17:24:49', NULL),
(777, 1, 15, 'RM 032', 'RG 532.04.91', '2014', '', 168000.00, '5', 'hi', 0, '2020-10-21 17:26:42', NULL),
(778, 1, 15, 'RM 032', 'Ti 532.45.91', '2014', '', 129000.00, '5', 'hi', 0, '2020-10-21 17:28:32', NULL),
(779, 1, 15, 'RM 032', 'Brown PVD 532.45C.91D-1', '2014', 'pvd,50x17,8 mm,caoutchouc,automatique,homme', 135500.00, '5', 'hi', 0, '2020-10-21 17:31:27', NULL),
(780, 1, 15, 'RM 033', 'RG 533.04.91', '2014', '', 103000.00, '5', 'hi', 0, '2020-10-21 17:37:00', NULL),
(781, 1, 15, 'RM 033', 'RG medium set \"Triangle\" 533.042.91-1', '2014', '', 131500.00, '5', 'hi', 0, '2020-10-21 17:42:18', NULL),
(782, 1, 15, 'RM 033', 'RG full set 533.041.91-1', '2014', '', 161500.00, '5', 'hi', 0, '2020-10-21 17:47:47', NULL),
(783, 1, 15, 'RM 033', 'WG 533.06.91', '2014', '', 108.00, '5', 'hi', 0, '2020-10-21 17:50:04', NULL),
(784, 1, 15, 'RM 033', 'WG medium set \"Triangle\" 533.062.91-1', '2014', '', 137000.00, '5', 'hi', 0, '2020-10-21 17:52:03', NULL),
(785, 1, 15, 'RM 033', 'WG full set 533.061.91-1', '2014', '', 167000.00, '5', 'hi', 0, '2020-10-21 17:53:57', NULL),
(786, 1, 15, 'RM 033', 'Ti 533.45.91', '2014', '', 82000.00, '5', 'hi', 0, '2020-10-21 17:55:53', NULL),
(787, 1, 15, 'RM 035', 'RM035 Rafael Nadal 535.24.91', '2014', '', 90000.00, '5', 'hi', 0, '2020-10-21 17:58:08', NULL),
(788, 1, 15, 'RM 035', 'RM035-01 Rafael Nadal', '2014', '', 91000.00, '5', 'hi', 0, '2020-10-21 18:00:10', NULL),
(789, 1, 15, 'RM 036', 'Jean Todt G Sensor 536.45.91', '2014', '', 437500.00, '5', 'hi', 0, '2020-10-21 18:01:34', NULL),
(790, 1, 15, 'RM 036', 'RM036-01 S. Loeb Sensor', '2014', '', 550.00, '5', 'hi', 0, '2020-10-21 18:02:57', NULL),
(791, 1, 15, 'RM 038', 'Bubba Watson 538.25.91', '2014', '', 500000.00, '5', 'hi', 0, '2020-10-21 18:06:18', NULL),
(792, 1, 15, 'RM 039', 'Aviation E6-B Flyback', '2014', '', 872500.00, '5', 'hi', 0, '2020-10-21 18:09:45', NULL),
(793, 1, 15, 'RM 039', 'RM 39-01 Ti Aviation 542.45.91-1', '2014', '', 124000.00, '5', 'hi', 0, '2020-10-21 18:09:20', NULL),
(794, 1, 15, 'RM 051', 'Michelle Yeoh RG Full Set 551.0411.94', '2014', '', 716500.00, '5', 'hi', 0, '2020-10-21 18:11:12', NULL),
(795, 1, 15, 'RM 051', 'RM51-01 RG Michelle Yeoh Tiger & Dragon', '2014', '', 639500.00, '5', 'hi', 0, '2020-10-21 18:25:21', NULL),
(796, 1, 15, 'RM 052', 'RG Black Skull 552.04.XXX', '2014', '', 531000.00, '5', 'hi', 0, '2020-10-21 18:28:00', NULL),
(797, 1, 15, 'RM 052', 'Black Ceramic & Red Gold Skull TBC', '2014', '', 515500.00, '5', 'hi', 0, '2020-10-21 18:29:29', NULL),
(798, 1, 15, 'RM 053', 'Pablo MacDonough 553.45.91', '2014', '', 541.00, '5', 'hi', 0, '2020-10-21 18:31:24', NULL),
(799, 1, 15, 'RM 055', 'Bubba Watson 555.45A.91-1', '2014', '', 91000.00, '5', 'hi', 0, '2020-10-21 18:35:11', NULL),
(800, 1, 15, 'RM 055', 'Bubba Watson All Black 555.XXX', '2014', '', 97000.00, '5', 'HI', 0, '2020-10-21 18:37:41', NULL),
(801, 1, 15, 'RM 56', 'RM56-01 Sapphire 544.52.91', '2014', '', 1636500.00, '5', 'hi', 0, '2020-10-21 18:42:35', NULL),
(802, 1, 15, 'RM 057', 'RG Red Dragon 557.04.91/x', '2014', '', 564000.00, '5', 'hi', 0, '2020-10-21 19:10:32', NULL),
(803, 1, 15, 'RM 057', 'RG Full Set Green Dragon 557.042.91/K', '2014', 'or serti diamants,50x42,70x14,55 mm,caoutchouc,tourbillon,homme', 685500.00, '5', 'hi', 0, '2020-10-21 19:12:42', NULL),
(804, 1, 15, 'RM 057', 'WG Green Dragon 557.06.91/G', '2014', 'or blanc,50x42,70x14,55 mm,caoutchouc,tourbillon,homme', 574500.00, '5', 'hi', 0, '2020-10-21 19:15:18', NULL),
(805, 1, 15, 'RM 58', 'RM58-01 Jean Todt World Timer 543.04A.91', '2014', '50x15,35 mm,caoutchouc,tourbillon,homme', 572500.00, '5', 'hi', 0, '2020-10-21 19:17:43', NULL),
(806, 1, 15, 'RM 59', 'RM59-01 Yohan Blake 548.72.91', '2014', 'nanotubes de carbone,50,24x42,70x15, mm,caoutchouc,tourbillon,homme', 562500.00, '5', 'hi', 0, '2020-10-21 19:19:31', NULL),
(807, 1, 15, 'RM 60', 'RM60-01 Ti Navigation Regatta', '2014', 'titane,50 x 16,33 mm,caoutchouc,automatique,homme', 134000.00, '5', 'hi', 0, '2020-10-21 19:30:59', NULL),
(808, 1, 15, 'RM 61', 'RM 61-01 Yohan Blake', '2014', 'composite de carbone,50,23 x 42,70 x mm,cuir,automatique,homme', 102000.00, '5', 'hi', 0, '2020-10-21 19:35:57', NULL),
(809, 1, 15, 'RM 63-01RG Dizzy Hands', 'RM 63-01', '2019', '- Boîtier: Or rose,- Diamètre du boîtier: 42.7 mm,- Mouvement: Automatique,- Bracelet: Caoutchouc,- Année de fabrication: 2018,- État: Neuf,sans trace d\'usure,- Contenu livré: Avec boîte d\'origine et papier d\'origine,- Sexe: Montre Homme/Unisexe', 68300.00, '0', '-\r\nAu premier coup d’oeil, rien, hormis peut-être le mode d’affichage des heures, ne laisse présager des merveilles horlogères nichées au coeur de la RM 63-01, hormis peut-être le mode d’affichage des heures. L’esprit authentique de Richard Mille s’insinue pourtant dans chaque détail, chaque composant et chaque solution mécanique.\r\nUne simple pression sur le bouton poussoir logé au centre de la couronne déclenche un véritable ballet au ralenti : le cadran, protégé par un verre saphir, commence à se mouvoir doucement dans le sens inverse des aiguilles d’une montre, tandis que l’aiguille des heures adopte une cadence différente.\r\n Prix magasin : 107 000 €', 0, '2020-10-26 22:06:22', NULL),
(810, 1, 16, 'DIOR VIII', 'CD1221E0C001', '2014', '', 4750.00, '5', 'hi', 0, '2020-10-21 22:44:46', NULL),
(811, 1, 16, 'DIOR VIII', 'CD1221E1C001', '2014', '', 5950.00, '5', 'hi', 0, '2020-10-21 22:49:13', NULL),
(812, 1, 16, 'DIOR VIII', 'CD1221E5C001', '2014', '', 10600.00, '5', 'hi', 0, '2020-10-21 22:54:16', NULL),
(813, 1, 16, 'DIOR VIII', 'CD1231E0C001', '2014', '', 3850.00, '5', 'hi', 0, '2020-10-21 22:56:02', NULL),
(814, 1, 16, 'DIOR VIII', 'CD1231E0C002', '2014', '', 4950.00, '5', 'hi', 0, '2020-10-21 22:57:22', NULL),
(815, 1, 16, 'DIOR VIII', 'CD1235E2C001', '2014', 'acier et céramique,33 mm,céramique,automatique,dame', 5850.00, '5', 'hi', 0, '2020-10-21 23:00:16', NULL),
(816, 1, 16, 'DIOR VIII', 'CD1231E1C001', '2014', 'acier, céramique et diamants,33 mm,céramique,quartz,dame', 6850.00, '5', 'hi', 0, '2020-10-21 23:03:58', NULL),
(817, 1, 16, 'DIOR VIII', 'CD1235E1C001', '2014', 'acier, céramique et diamants,33 mm,céramique,automatique,dame', 12100.00, '5', 'hi', 0, '2020-10-21 23:06:37', NULL),
(818, 1, 16, 'DIOR VIII', 'CD1245E0C001', '2014', 'acier et céramique,38 mm,céramique,automatique,medium', 4650.00, '5', 'hi', 0, '2020-10-21 23:08:52', NULL),
(819, 1, 16, 'DIOR VIII', 'CD1245E7C001', '2014', 'acier et céramique,38 mm,céramique,automatique,dame', 5650.00, '5', 'hi', 0, '2020-10-21 23:11:15', NULL),
(820, 1, 16, 'DIOR VIII', 'CD1245E0C002', '2014', 'acier et céramique,38 mm,céramique,automatique,medium', 5950.00, '5', 'hi', 0, '2020-10-21 23:14:29', NULL),
(821, 1, 16, 'DIOR VIII', 'CD1241E0C001', '2014', 'acier, céramique et diamants,38 mm,céramique,quartz,medium', 7750.00, '5', 'hi', 0, '2020-10-21 23:16:39', NULL),
(822, 1, 16, 'DIOR VIII', 'CD1245E1C001', '2014', 'acier, céramique et diamants,38 mm,céramique,quartz,medium', 8650.00, '5', 'hi', 0, '2020-10-21 23:18:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productdurashop`
--

CREATE TABLE `productdurashop` (
  `productid` bigint(20) NOT NULL,
  `productname` varchar(300) NOT NULL,
  `productcategoryid` bigint(20) NOT NULL,
  `productdescription` varchar(400) NOT NULL,
  `productprice` decimal(10,0) NOT NULL,
  `createdbyuserid` bigint(11) NOT NULL,
  `createddatetime` datetime NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  `productsize` varchar(200) NOT NULL,
  `productcolor` varchar(200) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_gallery`
--

CREATE TABLE `product_gallery` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_gallery`
--

INSERT INTO `product_gallery` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '20200909153542-product_img.png', '2020-09-09 07:21:01', ''),
(2, 1, '20200909125101-RX049-2 (1).jpg', '2020-09-09 07:21:01', ''),
(4, 1, '20200909125133-rolex-watch-500x500.jpg', NULL, ''),
(5, 2, '20200909152012-rolex-watch-500x500.jpg', '2020-09-09 09:50:12', ''),
(6, 2, '20200909152012-RX049-1-1.jpg', '2020-09-09 09:50:12', ''),
(7, 2, '20200909152012-RX049-2 (1).jpg', '2020-09-09 09:50:12', ''),
(8, 2, '20200909152012-RX049-2.jpg', '2020-09-09 09:50:12', ''),
(9, 3, '20200909155246-rolex-watch-500x500.jpg', '2020-09-09 10:22:46', ''),
(10, 3, '20200909155246-RX049-1-1.jpg', '2020-09-09 10:22:46', ''),
(11, 3, '20200909155246-RX049-2 (1).jpg', '2020-09-09 10:22:46', ''),
(12, 4, '20200910130741-rolex-watch-500x500.jpg', '2020-09-10 07:37:41', ''),
(13, 4, '20200910130741-RX049-1-1.jpg', '2020-09-10 07:37:41', ''),
(14, 4, '20200910130741-RX049-2 (1).jpg', '2020-09-10 07:37:41', ''),
(15, 4, '20200910130741-RX049-2.jpg', '2020-09-10 07:37:41', ''),
(16, 13, '20200925120228-20130319_083314_1174_admin.png', '2020-09-25 06:32:28', ''),
(17, 13, '20200925120228-default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', '2020-09-25 06:32:28', ''),
(18, 13, '20200925120228-images (1).jfif', '2020-09-25 06:32:28', ''),
(19, 13, '20200925120228-images.jfif', '2020-09-25 06:32:28', ''),
(20, 14, '20200925120718-myavatar.png', '2020-09-25 06:37:18', ''),
(21, 14, '20200925120718-negris_avatar.jpg', '2020-09-25 06:37:18', ''),
(22, 15, '20200925122804-20130319_083314_1174_admin.png', '2020-09-25 06:58:04', ''),
(23, 15, '20200925122805-default_female600x600-3702af30bd630e7b0fa62af75cd2e67c.png', '2020-09-25 06:58:05', ''),
(24, 16, '20200925123051-20130319_083314_1174_admin.png', '2020-09-25 07:00:51', ''),
(25, 17, '20200930111320-RX049-1-1.jpg', '2020-09-29 16:17:59', ''),
(26, 17, '20200930111340-RX049-2 (1).jpg', '2020-09-29 16:17:59', ''),
(27, 17, '20200930111416-rolex-watch-500x500.jpg', '2020-09-29 16:17:59', ''),
(28, 18, '20200929131012-RX049-1-1.jpg', '2020-09-29 17:10:12', ''),
(29, 18, '20200929131012-RX049-2 (1).jpg', '2020-09-29 17:10:12', ''),
(30, 18, '20200929131012-RX049-2.jpg', '2020-09-29 17:10:12', ''),
(31, 18, '20200929131042-rolex-watch-500x500.jpg', NULL, ''),
(32, 19, '20200930121516-Rolex-279160.jpg', '2020-09-30 16:15:16', ''),
(33, 20, '20200930122227-Rolex-279174.jpg', '2020-09-30 16:22:27', ''),
(34, 21, '20200930122408-Rolex-279173.jpg', '2020-09-30 16:24:08', ''),
(36, 23, '20200930123357-Rolex-279383-RBR.jpg', '2020-09-30 16:33:57', ''),
(37, 24, '20200930123546-Rolex-279161.jpg', '2020-09-30 16:35:46', ''),
(38, 25, '20200930123939-Rolex-279171.jpg', '2020-09-30 16:39:39', ''),
(39, 26, '20200930124747-Rolex-279381-RBR.jpg', '2020-09-30 16:47:47', ''),
(40, 27, '20200930125007-Rolex-279178.jpg', '2020-09-30 16:50:07', ''),
(41, 28, '20200930125835-Rolex-279138-RBR.jpg', '2020-09-30 16:58:35', ''),
(42, 29, '20200930130420-Rolex-279165.jpg', '2020-09-30 17:04:20', ''),
(43, 30, '20200930132416-Rolex-279135-RBR.jpg', '2020-09-30 17:24:16', ''),
(44, 31, '20200930133703-Rolex-279160.jpg', '2020-09-30 17:37:03', ''),
(45, 32, '20200930133856-Rolex-279135-1-RBR.jpg', '2020-09-30 17:38:56', ''),
(46, 33, '20200930134143-Rolex-279166.jpg', '2020-09-30 17:41:43', ''),
(47, 34, '20200930134333-Rolex-279136-RBR.jpg', '2020-09-30 17:43:33', ''),
(48, 35, '20200930135744-Rolex-279174-1.jpg', '2020-09-30 17:57:44', ''),
(49, 36, '20200930135934-Rolex-279384-RBR.jpg', '2020-09-30 17:59:34', ''),
(50, 37, '20200930140421-Rolex-279173-1.jpg', '2020-09-30 18:04:21', ''),
(51, 38, '20200930141330-Rolex-279161-1.jpg', '2020-09-30 18:13:30', ''),
(52, 39, '20200930141638-Rolex-279138-RBR-1.jpg', '2020-09-30 18:16:38', ''),
(53, 40, '20200930141918-Rolex-118238.jpg', '2020-09-30 18:19:18', ''),
(54, 41, '20200930142037-Rolex-118348.jpg', '2020-09-30 18:20:37', ''),
(55, 42, '20200930142519-Rolex-118205.jpg', '2020-09-30 18:25:19', ''),
(56, 43, '20200930142823-Rolex-118235.jpg', '2020-09-30 18:28:23', ''),
(57, 44, '20200930143517-Rolex-118239.jpg', '2020-09-30 18:35:17', ''),
(58, 45, '20200930143803-Rolex-118206.jpg', '2020-09-30 18:38:03', ''),
(59, 46, '20200930145009-Rolex-118346.jpg', '2020-09-30 18:50:09', ''),
(60, 47, '20200930145214-Rolex-118389.jpg', '2020-09-30 18:52:14', ''),
(61, 48, '20200930145515-Rolex-118138.jpg', '2020-09-30 18:55:15', ''),
(62, 49, '20200930150144-Rolex-118139.jpg', '2020-09-30 19:01:44', ''),
(63, 50, '20200930150636-Rolex-118135.jpg', '2020-09-30 19:06:36', ''),
(64, 51, '20200930151008-Rolex-228238.jpg', '2020-09-30 19:10:08', ''),
(65, 52, '20200930160148-Rolex-228348-RBR.jpg', '2020-09-30 20:01:48', ''),
(66, 53, '20200930160324-Rolex-228398-TBR.jpg', '2020-09-30 20:03:24', ''),
(67, 54, '20200930160652-Rolex-228239.jpg', '2020-09-30 20:06:52', ''),
(68, 55, '20200930161617-Rolex-228349-RBR.jpg', '2020-09-30 20:16:17', ''),
(69, 56, '20200930162030-Rolex-228349-RBR-1.jpg', '2020-09-30 20:20:30', ''),
(70, 57, '20200930170012-Rolex-228235.jpg', '2020-09-30 21:00:12', ''),
(71, 58, '20200930171230-Rolex-228235-1.jpg', '2020-09-30 21:12:30', ''),
(72, 59, '20200930171713-Rolex-228345-RBR.jpg', '2020-09-30 21:17:13', ''),
(73, 60, '20200930172046-Rolex-228206.jpg', '2020-09-30 21:20:46', ''),
(74, 61, '20200930172337-Rolex-228396-TBR.jpg', '2020-09-30 21:23:37', ''),
(75, 62, '20200930173154-Rolex-326138.jpg', '2020-09-30 21:31:54', ''),
(76, 63, '20200930173353-Rolex-326938.jpg', '2020-09-30 21:33:53', ''),
(77, 64, '20200930173602-Rolex-326139.jpg', '2020-09-30 21:36:02', ''),
(78, 65, '20200930175437-Rolex-326939.jpg', '2020-09-30 21:54:37', ''),
(79, 66, '20200930175601-Rolex-326135.jpg', '2020-09-30 21:56:01', ''),
(80, 67, '20200930175724-Rolex-326935.jpg', '2020-09-30 21:57:24', ''),
(81, 68, '20200930180026-Rolex-326934.jpg', '2020-09-30 22:00:26', ''),
(82, 69, '20201001112311-Rolex-326933.jpg', '2020-10-01 15:23:11', ''),
(83, 70, '20201001112450-Rolex-178240.jpg', '2020-10-01 15:24:50', ''),
(84, 71, '20201001113515-Rolex-178274.jpg', '2020-10-01 15:35:15', ''),
(85, 72, '20201001113913-Rolex-178384.jpg', '2020-10-01 15:39:13', ''),
(86, 73, '20201001114743-Rolex-178243.jpg', '2020-10-01 15:47:43', ''),
(87, 74, '20201001115031-Rolex-178273.jpg', '2020-10-01 15:50:31', ''),
(88, 75, '20201001115235-Rolex-178343.jpg', '2020-10-01 15:52:35', ''),
(89, 76, '20201001115517-Rolex-178383.jpg', '2020-10-01 15:55:17', ''),
(90, 77, '20201001120629-Rolex-178241.jpg', '2020-10-01 16:06:29', ''),
(91, 78, '20201001121045-Rolex-178271.jpg', '2020-10-01 16:10:45', ''),
(92, 79, '20201001121522-Rolex-178341.jpg', '2020-10-01 16:15:22', ''),
(93, 80, '20201001121655-Rolex-178278.jpg', '2020-10-01 16:16:55', ''),
(94, 82, '20201001121826-Rolex-178288-0063.jpg', '2020-10-01 16:18:26', ''),
(95, 83, '20201001122027-Rolex-178279.jpg', '2020-10-01 16:20:27', ''),
(96, 84, '20201001122256-Rolex-178159.jpg', '2020-10-01 16:22:56', ''),
(97, 85, '20201001122935-Rolex-178245.jpg', '2020-10-01 16:29:35', ''),
(98, 86, '20201001123112-Rolex-178275.jpg', '2020-10-01 16:31:12', ''),
(100, 87, '20201001130457-Rolex-178344.jpg', '2020-10-01 17:04:57', ''),
(101, 88, '20201001131144-Rolex-115200.jpg', '2020-10-01 17:11:44', ''),
(102, 89, '20201001131458-Rolex-115234.jpg', '2020-10-01 17:14:58', ''),
(103, 90, '20201001131645-Rolex-115234-0012.jpg', '2020-10-01 17:16:45', ''),
(104, 91, '20201001134830-Rolex-116203.jpg', '2020-10-01 17:48:30', ''),
(105, 92, '20201001135138-Rolex-116233-1.jpg', '2020-10-01 17:51:38', ''),
(106, 93, '20201001135624-Rolex-116200-0060.jpg', '2020-10-01 17:56:24', ''),
(107, 94, '20201001140034-Rolex-116200-0085.jpg', '2020-10-01 18:00:34', ''),
(108, 95, '20201001140352-Rolex-116234-0104.jpg', '2020-10-01 18:03:52', ''),
(109, 96, '20201001140624-Rolex-116244-0007.jpg', '2020-10-01 18:06:24', ''),
(110, 97, '20201001140929-Rolex-116244.jpg', '2020-10-01 18:09:29', ''),
(111, 98, '20201001141648-Rolex-116243.jpg', '2020-10-01 18:16:48', ''),
(112, 99, '20201001142419-Rolex-116238-0059.jpg', '2020-10-01 18:24:19', ''),
(113, 100, '20201001142828-Rolex-116238-0062.jpg', '2020-10-01 18:28:28', ''),
(114, 101, '20201001143127-Rolex-116231-0074.jpg', '2020-10-01 18:31:27', ''),
(115, 102, '20201001143448-Rolex-116231-0057.jpg', '2020-10-01 18:34:48', ''),
(116, 103, '20201001144613-Rolex-116234.jpg', '2020-10-01 18:46:13', ''),
(117, 104, '20201001144841-Rolex-116233.jpg', '2020-10-01 18:48:41', ''),
(118, 105, '20201001145201-Rolex-116201.jpg', '2020-10-01 18:52:01', ''),
(119, 106, '20201001150250-Rolex-126300.jpg', '2020-10-01 19:02:50', ''),
(120, 107, '20201001152432-Rolex-126300-1.jpg', '2020-10-01 19:24:32', ''),
(121, 108, '20201001160947-Rolex-126334.jpg', '2020-10-01 20:09:47', ''),
(122, 109, '20201001161344-Rolex-126334-2.jpg', '2020-10-01 20:13:44', ''),
(123, 110, '20201001161829-Rolex-126334-3.jpg', '2020-10-01 20:18:29', ''),
(124, 111, '20201001162435-Rolex-126303.jpg', '2020-10-01 20:24:35', ''),
(125, 112, '20201001165610-Rolex-126303-1.jpg', '2020-10-01 20:56:10', ''),
(126, 113, '20201001165804-Rolex-126333.jpg', '2020-10-01 20:58:04', ''),
(127, 114, '20201001170651-Rolex-126333-1.jpg', '2020-10-01 21:06:51', ''),
(128, 115, '20201001171047-Rolex-126333-2.jpg', '2020-10-01 21:10:47', ''),
(129, 116, '20201001171342-Rolex-126301.jpg', '2020-10-01 21:13:42', ''),
(130, 117, '20201001171620-Rolex-126301-1.jpg', '2020-10-01 21:16:20', ''),
(131, 118, '20201001173743-Rolex-126331.jpg', '2020-10-01 21:37:43', ''),
(132, 119, '20201001174034-Rolex-126331-1.jpg', '2020-10-01 21:40:34', ''),
(133, 120, '20201005121051-Rolex-176200.jpg', '2020-10-05 16:10:51', ''),
(134, 121, '20201005121606-Rolex-177200.jpg', '2020-10-05 16:16:06', ''),
(135, 122, '20201005122121-Rolex-114200.jpg', '2020-10-05 16:21:21', ''),
(136, 123, '20201005122441-Rolex-116000.jpg', '2020-10-05 16:24:41', ''),
(137, 124, '20201005124209-Rolex-114300.jpg', '2020-10-05 16:42:09', ''),
(138, 125, '20201005124411-Rolex-80318.jpg', '2020-10-05 16:44:11', ''),
(139, 126, '20201005124800-Rolex-80298.jpg', '2020-10-05 16:48:00', ''),
(140, 127, '20201005130336-Rolex-80319.jpg', '2020-10-05 17:03:36', ''),
(141, 128, '20201005130657-Rolex-80299.jpg', '2020-10-05 17:06:57', ''),
(142, 129, '20201005132544-Rolex-80315.jpg', '2020-10-05 17:25:44', ''),
(143, 130, '20201005135935-Rolex-80315-1.jpg', '2020-10-05 17:59:35', ''),
(144, 131, '20201005140124-Rolex-80285.jpg', '2020-10-05 18:01:24', ''),
(145, 132, '20201005140347-Rolex-80285-1.jpg', '2020-10-05 18:03:47', ''),
(146, 133, '20201005140631-Rolex-81318.jpg', '2020-10-05 18:06:31', ''),
(147, 134, '20201005140855-Rolex-81298.jpg', '2020-10-05 18:08:55', ''),
(148, 135, '20201005141435-Rolex-81299.jpg', '2020-10-05 18:14:35', ''),
(149, 136, '20201005141815-Rolex-81409-RBR.jpg', '2020-10-05 18:18:15', ''),
(150, 137, '20201005143339-Rolex-81315.jpg', '2020-10-05 18:33:39', ''),
(151, 138, '20201005143745-Rolex-81405-RBR.jpg', '2020-10-05 18:37:45', ''),
(152, 139, '20201005144038-Rolex-86289.jpg', '2020-10-05 18:40:38', ''),
(153, 140, '20201005145027-Rolex-86289-1.jpg', '2020-10-05 18:50:27', ''),
(154, 141, '20201005152505-Rolex-86409-RBR.jpg', '2020-10-05 19:25:05', ''),
(155, 142, '20201005152658-Rolex-86285.jpg', '2020-10-05 19:26:58', ''),
(156, 143, '20201005152910-Rolex-86285-1.jpg', '2020-10-05 19:29:10', ''),
(157, 144, '20201005154358-Rolex-86405-RBR.jpg', '2020-10-05 19:43:58', ''),
(158, 145, '20201005160123-Rolex-214270.jpg', '2020-10-05 20:01:23', ''),
(159, 146, '20201005160553-Rolex-216570-0001.jpg', '2020-10-05 20:05:53', ''),
(160, 147, '20201005161106-Rolex-216570-0002.jpg', '2020-10-05 20:11:06', ''),
(161, 148, '20201005161502-Rolex-214270.jpg', '2020-10-05 20:15:02', ''),
(162, 149, '20201005162146-Rolex-114060.jpg', '2020-10-05 20:21:46', ''),
(163, 150, '20201005162335-Rolex-116618-LN.jpg', '2020-10-05 20:23:35', ''),
(164, 151, '20201005163153-Rolex-116618-LB.jpg', '2020-10-05 20:31:53', ''),
(165, 152, '20201005163430-Rolex-116619-LB.jpg', '2020-10-05 20:34:30', ''),
(166, 153, '20201005163827-Rolex-116610-LN.jpg', '2020-10-05 20:38:27', ''),
(167, 154, '20201005164450-Rolex-116613-LB.jpg', '2020-10-05 20:44:50', ''),
(168, 155, '20201005164841-Rolex-116613-LN.jpg', '2020-10-05 20:48:41', ''),
(169, 156, '20201005165042-Rolex-116610-LV.jpg', '2020-10-05 20:50:42', ''),
(170, 157, '20201005165618-Rolex-116660-1.jpg', '2020-10-05 20:56:18', ''),
(171, 158, '20201005165817-Rolex-116660.jpg', '2020-10-05 20:58:17', ''),
(172, 159, '20201005170148-Rolex-116710-LN.jpg', '2020-10-05 21:01:48', ''),
(173, 160, '20201005170417-Rolex-116713-LN.jpg', '2020-10-05 21:04:17', ''),
(174, 161, '20201005170617-Rolex-116718-LN.jpg', '2020-10-05 21:06:17', ''),
(175, 162, '20201005170846-Rolex-116710-BLNR.jpg', '2020-10-05 21:08:46', ''),
(176, 163, '20201005172011-Rolex-116719-BLRO.jpg', '2020-10-05 21:20:11', ''),
(177, 164, '20201005172211-Rolex-116622.jpg', '2020-10-05 21:22:11', ''),
(178, 165, '20201005172609-Rolex-116655.jpg', '2020-10-05 21:26:09', ''),
(179, 166, '20201005174920-Rolex-268655.jpg', '2020-10-05 21:49:20', ''),
(180, 167, '20201005175225-Rolex-268622.jpg', '2020-10-05 21:52:25', ''),
(181, 168, '20201005175819-Rolex-268621.jpg', '2020-10-05 21:58:19', ''),
(182, 169, '20201005180011-Rolex-116621.jpg', '2020-10-05 22:00:11', ''),
(183, 170, '20201005180223-Rolex-116688.jpg', '2020-10-05 22:02:23', ''),
(184, 171, '20201005182108-Rolex-116689.jpg', '2020-10-05 22:21:08', ''),
(185, 172, '20201005182436-Rolex-116681.jpg', '2020-10-05 22:24:36', ''),
(186, 173, '20201005182757-Rolex-116680.jpg', '2020-10-05 22:27:57', ''),
(187, 174, '20201005183036-Rolex-116505-0001.jpg', '2020-10-05 22:30:36', ''),
(188, 175, '20201005183310-Rolex-116515-LN.jpg', '2020-10-05 22:33:10', ''),
(189, 176, '20201005183606-Rolex-116506-0001.jpg', '2020-10-05 22:36:06', ''),
(190, 177, '20201005185036-Rolex-116500-LN.jpg', '2020-10-05 22:50:36', ''),
(191, 178, '20201006105810-Rolex-116503.jpg', '2020-10-06 14:58:10', ''),
(194, 181, '20201006114152-Rolex-116519-LN.jpg', '2020-10-06 15:41:52', ''),
(195, 182, '20201006114703-Rolex-116509.jpg', '2020-10-06 15:47:03', ''),
(196, 183, '20201006114905-Rolex-116506-0002.jpg', '2020-10-06 15:49:05', ''),
(197, 184, '20201006115601-Rolex-116400-GV.jpg', '2020-10-06 15:56:01', ''),
(200, 187, '20201006121505-Rolex-116900.jpg', '2020-10-06 16:15:05', ''),
(201, 188, '20201006121825-Rolex-50535.jpg', '2020-10-06 16:18:25', ''),
(202, 189, '20201006122252-Rolex-50529.jpg', '2020-10-06 16:22:52', ''),
(203, 190, '20201006122603-Rolex-50525.jpg', '2020-10-06 16:26:03', ''),
(204, 191, '20201006125148-Rolex-50515.jpg', '2020-10-06 16:51:48', ''),
(205, 192, '20201006130020-Rolex-50509.jpg', '2020-10-06 17:00:20', ''),
(206, 193, '20201006130250-Rolex-50709-RBR.jpg', '2020-10-06 17:02:50', ''),
(207, 194, '20201006130534-Rolex-50505.jpg', '2020-10-06 17:05:34', ''),
(208, 195, '20201006130837-Rolex-50605-RBR.jpg', '2020-10-06 17:08:37', ''),
(209, 196, '20201006141121-Audemars-Piguet-25865BC-OO-1105BC-01.jpg', '2020-10-06 18:11:21', ''),
(210, 197, '20201006142436-Audemars-Piguet-25829ST-OO-0944ST-01.jpg', '2020-10-06 18:24:36', ''),
(211, 198, '20201006142626-Audemars-Piguet-25865BC-OO-1105BC-04.jpg', '2020-10-06 18:26:26', ''),
(212, 199, '20201006143120-Audemars-Piguet-26068BC-ZZ-D002CR-01.jpg', '2020-10-06 18:31:20', ''),
(213, 200, '20201006143417-Audemars-Piguet-26120BA-OO-D088CR-01.jpg', '2020-10-06 18:34:17', ''),
(214, 201, '20201006150246-Audemars-Piguet-26120OR-OO-D002CR-01.jpg', '2020-10-06 19:02:46', ''),
(215, 202, '20201006151038-Audemars-Piguet-26120ST-OO-1220ST-01.jpg', '2020-10-06 19:10:38', ''),
(216, 203, '20201006151244-Audemars-Piguet-26120ST-OO-1220ST-02.jpg', '2020-10-06 19:12:44', ''),
(217, 204, '20201006151349-Audemars-Piguet-26252OR-OO-D092CR-01.jpg', '2020-10-06 19:13:49', ''),
(218, 205, '20201006151913-Audemars-Piguet-15154BC-ZZ-D004CU-01.jpg', '2020-10-06 19:19:13', ''),
(219, 206, '20201006152107-Audemars-Piguet-15305OR-OO-D088CR-01.jpg', '2020-10-06 19:21:07', ''),
(220, 207, '20201006152238-Audemars-Piguet-15305ST-OO-1220ST-01.jpg', '2020-10-06 19:22:38', ''),
(221, 208, '20201006152653-Audemars-Piguet-26603ST-OO-D002CR-01.jpg', '2020-10-06 19:26:53', ''),
(222, 209, '20201006153139-Audemars-Piguet-26330OR-OO-D088CR-01.jpg', '2020-10-06 19:31:39', ''),
(223, 210, '20201006153701-Audemars-Piguet-26330ST-OO-1220ST-01.jpg', '2020-10-06 19:37:01', ''),
(224, 211, '20201006153924-Audemars-Piguet-25966BC-ZZ-1185BC-01.jpg', '2020-10-06 19:39:24', ''),
(225, 212, '20201006154315-Audemars-Piguet-25967BC-ZZ-1185BC-01.jpg', '2020-10-06 19:43:15', ''),
(226, 213, '20201006161443-Audemars-Piguet-25978BC-ZZ-1190BC-01.jpg', '2020-10-06 20:14:43', ''),
(227, 214, '20201006164432-Audemars-Piguet-26120ST-OO-1220ST-03.jpg', '2020-10-06 20:44:32', ''),
(228, 215, '20201006165233-Audemars-Piguet-26120OR-OO-D088CR-01.jpg', '2020-10-06 20:52:33', ''),
(229, 216, '20201006165547-Audemars-Piguet-26252OR-OO-D092CR-02.jpg', '2020-10-06 20:55:47', ''),
(230, 217, '20201006165850-Audemars-Piguet-25820ST-OO-0944ST-03.jpg', '2020-10-06 20:58:50', ''),
(231, 218, '20201006171311-Audemars-Piguet-25820ST-OO-0944ST-04.jpg', '2020-10-06 21:13:11', ''),
(232, 219, '20201006173655-Audemars-Piguet-25820ST-OO-0944ST-05.jpg', '2020-10-06 21:36:55', ''),
(233, 221, '20201006174207-Audemars-Piguet-25829OR-OO-0944OR-01.jpg', '2020-10-06 21:42:07', ''),
(234, 222, '20201006175144-Audemars-Piguet-25829PT-OO-0944PT-01.jpg', '2020-10-06 21:51:44', ''),
(235, 223, '20201006175546-Audemars-Piguet-15130BC-ZZ-8042BC-01.jpg', '2020-10-06 21:55:46', ''),
(236, 224, '20201006180033-Audemars-Piguet-15202OR-OO-1240OR-01.jpg', '2020-10-06 22:00:33', ''),
(237, 225, '20201006180821-Audemars-Piguet-15202ST-OO-1240ST-01.jpg', '2020-10-06 22:08:21', ''),
(238, 226, '20201006181944-Audemars-Piguet-15203PT-OO-1240PT-01.jpg', '2020-10-06 22:19:44', ''),
(239, 227, '20201006182410-Audemars-Piguet-15400OR-OO-1220OR-01.jpg', '2020-10-06 22:24:10', ''),
(240, 229, '20201006182931-Audemars-Piguet-15400OR-OO-1220OR-02.jpg', '2020-10-06 22:29:31', ''),
(241, 230, '20201006183212-Audemars-Piguet-15400OR-OO-D002CR-01.jpg', '2020-10-06 22:32:12', ''),
(242, 231, '20201006183416-Audemars-Piguet-15400ST-OO-1220ST-01.jpg', '2020-10-06 22:34:16', ''),
(243, 232, '20201007120113-Audemars-Piguet-15400ST-OO-1220ST-03.jpg', '2020-10-07 16:01:13', ''),
(244, 233, '20201007121201-Audemars-Piguet-15450OR-OO-D002CR-01.jpg', '2020-10-07 16:12:01', ''),
(245, 234, '20201007121440-Audemars-Piguet-15450OR-OO-D088CR-01.jpg', '2020-10-07 16:14:40', ''),
(246, 235, '20201007121922-Audemars-Piguet-15450ST-OO-1256ST-01.jpg', '2020-10-07 16:19:22', ''),
(247, 236, '20201007122251-Audemars-Piguet-15451OR-ZZ-1256OR-01.jpg', '2020-10-07 16:22:51', ''),
(248, 237, '20201007123202-Audemars-Piguet-15451ST-ZZ-1256ST-01.jpg', '2020-10-07 16:32:02', ''),
(249, 238, '20201007123440-Audemars-Piguet-15451ST-ZZ-D011CR-01.jpg', '2020-10-07 16:34:40', ''),
(250, 239, '20201007124339-Audemars-Piguet-15452BC-ZZ-D019CR-01.jpg', '2020-10-07 16:43:39', ''),
(251, 240, '20201007125006-Audemars-Piguet-15452OR-ZZ-D003CR-01.jpg', '2020-10-07 16:50:06', ''),
(252, 241, '20201007125239-Audemars-Piguet-25865ST-OO-1105ST-02.jpg', '2020-10-07 16:52:39', ''),
(253, 242, '20201007125829-Audemars-Piguet-25977OR-OO-D005CR-01.jpg', '2020-10-07 16:58:29', ''),
(254, 243, '20201007130543-Audemars-Piguet-25990OR-ZZ-D002CR-01.jpg', '2020-10-07 17:05:43', ''),
(255, 244, '20201007131903-Audemars-Piguet-26065IS-OO-D002CR-01.jpg', '2020-10-07 17:19:03', ''),
(256, 245, '20201007132705-Audemars-Piguet-26122OR-OO-D002CR-01.jpg', '2020-10-07 17:27:05', ''),
(257, 246, '20201007133247-Audemars-Piguet-26123OR-OO-D002CR-01.jpg', '2020-10-07 17:32:47', ''),
(258, 247, '20201007134108-Audemars-Piguet-26127OR-ZZ-D011CR-01.jpg', '2020-10-07 17:41:08', ''),
(259, 248, '20201007140359-Audemars-Piguet-26128OR-ZZ-D002CR-01.jpg', '2020-10-07 18:03:59', ''),
(260, 249, '20201007150317-Audemars-Piguet-26129OR-ZZ-D080CA-01.jpg', '2020-10-07 19:03:17', ''),
(261, 250, '20201007150652-Audemars-Piguet-26320OR-OO-1220OR-01.jpg', '2020-10-07 19:06:52', ''),
(262, 251, '20201007151008-Audemars-Piguet-26320OR-OO-1220OR-02.jpg', '2020-10-07 19:10:08', ''),
(263, 252, '20201007151543-Audemars-Piguet-26320OR-OO-D002CR-01.jpg', '2020-10-07 19:15:43', ''),
(264, 253, '20201007152554-Audemars-Piguet-26320OR-OO-D088CR-01.jpg', '2020-10-07 19:25:54', ''),
(265, 254, '20201007153155-Audemars-Piguet-26320ST-OO-1220ST-01.jpg', '2020-10-07 19:31:55', ''),
(266, 255, '20201007164837-Audemars-Piguet-26320ST-OO-1220ST-02.jpg', '2020-10-07 20:48:37', ''),
(267, 256, '20201007165326-Audemars-Piguet-26320ST-OO-1220ST-03.jpg', '2020-10-07 20:53:26', ''),
(268, 257, '20201007165836-Audemars-Piguet-26325OL-OO-D005CR-01.jpg', '2020-10-07 20:58:36', ''),
(269, 258, '20201007170609-Audemars-Piguet-26325PL-OO-D310CR-01.jpg', '2020-10-07 21:06:09', ''),
(270, 259, '20201007170839-Audemars-Piguet-26325TS-OO-D005CR-01.jpg', '2020-10-07 21:08:39', ''),
(271, 260, '20201007171755-Audemars-Piguet-26510OR-OO-1220OR-01.jpg', '2020-10-07 21:17:55', ''),
(272, 261, '20201007172040-Audemars-Piguet-26510ST-OO-1220ST-01.jpg', '2020-10-07 21:20:40', ''),
(273, 262, '20201007172357-Audemars-Piguet-26511PT-OO-1220PT-01.jpg', '2020-10-07 21:23:57', ''),
(274, 263, '20201007172741-Audemars-Piguet-26552BC-OO-D002CR-01.jpg', '2020-10-07 21:27:41', ''),
(275, 264, '20201007173014-Audemars-Piguet-26560IO-OO-D002CA-01.jpg', '2020-10-07 21:30:14', ''),
(276, 265, '20201007173148-Audemars-Piguet-26603OR-OO-D092CR-01.jpg', '2020-10-07 21:31:48', ''),
(277, 266, '20201007173743-Audemars-Piguet-67651OR-ZZ-D010CA-01.jpg', '2020-10-07 21:37:43', ''),
(278, 267, '20201007174440-Audemars-Piguet-67651OR-ZZ-D080CA-01.jpg', '2020-10-07 21:44:40', ''),
(279, 268, '20201007174758-Audemars-Piguet-67651ST-ZZ-1261ST-01.jpg', '2020-10-07 21:47:58', ''),
(280, 269, '20201007175100-Audemars-Piguet-67651ST-ZZ-D002CR-01.jpg', '2020-10-07 21:51:00', ''),
(281, 270, '20201007175530-Audemars-Piguet-67651ST-ZZ-D011CR-01.jpg', '2020-10-07 21:55:30', ''),
(282, 271, '20201007175900-Audemars-Piguet-15400OR-OO-D088CR-01.jpg', '2020-10-07 21:59:00', ''),
(283, 272, '20201007180339-Audemars-Piguet-25866PT-OO-D002CR-01.jpg', '2020-10-07 22:03:39', ''),
(284, 273, '20201007180628-Audemars-Piguet-25996PT-OO-D002CR-01.jpg', '2020-10-07 22:06:28', ''),
(285, 274, '20201007184827-Audemars-Piguet-26003OR-OO-D088CR-01.jpg', '2020-10-07 22:48:27', ''),
(286, 275, '20201007191006-Audemars-Piguet-26003BC-OO-D002CR-01.jpg', '2020-10-07 23:10:06', ''),
(287, 276, '20201007191205-Audemars-Piguet-26003BA-OO-D088CR-01.jpg', '2020-10-07 23:12:05', ''),
(288, 277, '20201007191727-Audemars-Piguet-26003OR-OO-D002CR-01.jpg', '2020-10-07 23:17:27', ''),
(289, 278, '20201007192010-Audemars-Piguet-26053PT-OO-D002CR-01.jpg', '2020-10-07 23:20:10', ''),
(290, 279, '20201007192235-Audemars-Piguet-26153PT-OO-D028CR-01.jpg', '2020-10-07 23:22:35', ''),
(291, 280, '20201007192537-Audemars-Piguet-26353PT-OO-D028CR-01.jpg', '2020-10-07 23:25:37', ''),
(292, 281, '20201007192813-Audemars-Piguet-26356PT-OO-D028CR-01.jpg', '2020-10-07 23:28:13', ''),
(293, 282, '20201007193048-Audemars-Piguet-26390OR-OO-D088CR-01.jpg', '2020-10-07 23:30:48', ''),
(294, 283, '20201007193505-Audemars-Piguet-26390OR-OO-D093CR-01.jpg', '2020-10-07 23:35:05', ''),
(295, 284, '20201008110643-Audemars-Piguet-26100BC-OO-D002CR-01.jpg', '2020-10-08 15:06:43', ''),
(296, 285, '20201008120350-Audemars-Piguet-26100OR-OO-D088CR-01.jpg', '2020-10-08 16:03:50', ''),
(297, 286, '20201008121515-Audemars-Piguet-15180OR-OO-A088CR-01.jpg', '2020-10-08 16:15:15', ''),
(298, 287, '20201008121746-Audemars-Piguet-15180OR-OO-A002CR-01.jpg', '2020-10-08 16:17:46', ''),
(299, 288, '20201008122011-Audemars-Piguet-15159BC-ZZ-D002CR-01.jpg', '2020-10-08 16:20:11', ''),
(300, 289, '20201008122305-Audemars-Piguet-15159OR-ZZ-D002CR-01.jpg', '2020-10-08 16:23:05', ''),
(301, 290, '20201008123116-Audemars-Piguet-15170BC-OO-A002CR-01.jpg', '2020-10-08 16:31:16', ''),
(302, 291, '20201008123450-Audemars-Piguet-15170OR-OO-A002CR-01.jpg', '2020-10-08 16:34:50', ''),
(303, 292, '20201008123735-Audemars-Piguet-15170OR-OO-A002CR-01.jpg', '2020-10-08 16:37:35', ''),
(304, 293, '20201008124050-Audemars-Piguet-15171BC-ZZ-A002CR-01.jpg', '2020-10-08 16:40:50', ''),
(305, 294, '20201008124637-Audemars-Piguet-15171OR-ZZ-A002CR-01.jpg', '2020-10-08 16:46:37', ''),
(306, 295, '20201008124930-Audemars-Piguet-15171OR-ZZ-A088CR-01.jpg', '2020-10-08 16:49:30', ''),
(307, 296, '20201008125202-Audemars-Piguet-15180BC-OO-A002CR-01.jpg', '2020-10-08 16:52:02', ''),
(308, 297, '20201008125857-Audemars-Piguet-25866BA-OO-D002CR-01.jpg', '2020-10-08 16:58:57', ''),
(309, 298, '20201008130423-Audemars-Piguet-25866BA-OO-D002CR-02.jpg', '2020-10-08 17:04:23', ''),
(310, 299, '20201008131458-Audemars-Piguet-25866OR-OO-D002CR-01.jpg', '2020-10-08 17:14:58', ''),
(311, 300, '20201008132227-Audemars-Piguet-25866OR-OO-D002CR-02.jpg', '2020-10-08 17:22:27', ''),
(312, 301, '20201008132720-Audemars-Piguet-25866PT-OO-D002CR-02.jpg', '2020-10-08 17:27:20', ''),
(313, 302, '20201008140704-Audemars-Piguet-26153OR-OO-D088CR-01.jpg', '2020-10-08 18:07:04', ''),
(314, 303, '20201008143623-Audemars-Piguet-26380BC-OO-D002CR-01.jpg', '2020-10-08 18:36:23', ''),
(315, 304, '20201008143840-Audemars-Piguet-26380OR-OO-D002CR-01.jpg', '2020-10-08 18:38:40', ''),
(316, 305, '20201008144444-Audemars-Piguet-26380OR-OO-D088CR-01.jpg', '2020-10-08 18:44:44', ''),
(317, 306, '20201008144916-Audemars-Piguet-26385OR-OO-A088CR-01.jpg', '2020-10-08 18:49:16', ''),
(318, 307, '20201008145708-Audemars-Piguet-26391OR-OO-D088CR-01.jpg', '2020-10-08 18:57:08', ''),
(319, 308, '20201008150027-Audemars-Piguet-26559OR-OO-D002CR-01.jpg', '2020-10-08 19:00:27', ''),
(320, 309, '20201008150419-Audemars-Piguet-26559OR-OO-D088CR-01.jpg', '2020-10-08 19:04:19', ''),
(321, 310, '20201008150635-Audemars-Piguet-26561BC-OO-D002CR-01.jpg', '2020-10-08 19:06:35', ''),
(322, 311, '20201008151001-Audemars-Piguet-26561OR-OO-D088CR-01.jpg', '2020-10-08 19:10:01', ''),
(323, 312, '20201008151221-Audemars-Piguet-26569BC-OO-D002CR-01.jpg', '2020-10-08 19:12:21', ''),
(324, 313, '20201008151901-Audemars-Piguet-77238BC-OO-A002CR-01.jpg', '2020-10-08 19:19:01', ''),
(325, 314, '20201008152147-Audemars-Piguet-77238OR-OO-A088CR-01.jpg', '2020-10-08 19:21:47', ''),
(326, 315, '20201008153027-Audemars-Piguet-77239BC-ZZ-A002CR-01.jpg', '2020-10-08 19:30:27', ''),
(327, 316, '20201008153426-Audemars-Piguet-77239OR-ZZ-A088CR-01.jpg', '2020-10-08 19:34:26', ''),
(328, 317, '20201008153633-Audemars-Piguet-77240BC-ZZ-A808CR-01.jpg', '2020-10-08 19:36:33', ''),
(329, 318, '20201008154253-Audemars-Piguet-77251OR-ZZ-1270OR-01.jpg', '2020-10-08 19:42:53', ''),
(330, 319, '20201008154547-Audemars-Piguet-26569OR-OO-D088CR-01.jpg', '2020-10-08 19:45:47', ''),
(331, 320, '20201008155651-Audemars-Piguet-26357PT-ZZ-D028CR-01.jpg', '2020-10-08 19:56:51', ''),
(332, 321, '20201008160555-Audemars-Piguet-26083BC-ZZ-D102CR-01.jpg', '2020-10-08 20:05:55', ''),
(333, 322, '20201008161308-Audemars-Piguet-26051PT-00-D092CR-01.jpg', '2020-10-08 20:13:08', ''),
(334, 323, '20201008161548-Audemars-Piguet-15160PT-OO-A092CR-01.jpg', '2020-10-08 20:15:48', ''),
(335, 324, '20201008161804-Audemars-Piguet-15335OR-OO-A092CR-01.jpg', '2020-10-08 20:18:04', ''),
(336, 325, '20201008161946-Audemars-Piguet-15337OR-ZZ-A810CR-01.jpg', '2020-10-08 20:19:46', ''),
(337, 326, '20201008162320-Audemars-Piguet-26564IC-OO-D002CR-01.jpg', '2020-10-08 20:23:20', ''),
(338, 327, '20201008164957-Audemars-Piguet-25712BA-OO-0000xx-01.jpg', '2020-10-08 20:49:57', ''),
(339, 328, '20201008165400-Audemars-Piguet-25701BA-OO-0000XX-02.jpg', '2020-10-08 20:54:00', ''),
(340, 329, '20201008165653-Audemars-Piguet-25712PT-OO-0000xx-01.jpg', '2020-10-08 20:56:53', ''),
(341, 330, '20201008165844-Audemars-Piguet-25701OR-OO-0000XX-03.jpg', '2020-10-08 20:58:44', ''),
(342, 331, '20201008170357-Audemars-Piguet-15327BC-ZZ-D022CR-01.jpg', '2020-10-08 21:03:57', ''),
(343, 332, '20201008170945-Audemars-Piguet-26145OR-OO-D093CR-01.jpg', '2020-10-08 21:09:45', ''),
(344, 333, '20201008171313-Audemars-Piguet-26145OR-OO-D095CR-01.jpg', '2020-10-08 21:13:13', ''),
(345, 334, '20201008171622-Audemars-Piguet-15350OR-OO-D093CR-01.jpg', '2020-10-08 21:16:22', ''),
(346, 335, '20201008173456-Audemars-Piguet-15350ST-OO-D002CR-01.jpg', '2020-10-08 21:34:56', ''),
(347, 336, '20201008173847-Audemars-Piguet-26354OR-ZZ-D002CR-01.jpg', '2020-10-08 21:38:47', ''),
(348, 337, '20201008174146-Audemars-Piguet-26371TI-OO-D002CR-01.jpg', '2020-10-08 21:41:46', ''),
(349, 338, '20201008181121-Audemars-Piguet-77316BC-ZZ-D007SU-01.jpg', '2020-10-08 22:11:21', ''),
(350, 339, '20201008181931-Audemars-Piguet-77315BC-ZZ-D007SU-01.jpg', '2020-10-08 22:19:31', ''),
(351, 340, '20201008182427-Audemars-Piguet-77315OR-ZZ-D013SU-01.jpg', '2020-10-08 22:24:27', ''),
(352, 341, '20201130123538-Audemars-Piguet-77301OR-ZZ-D015CR-01.jpg', '2020-10-09 15:08:35', ''),
(353, 342, '20201130130534-Audemars-Piguet-77301ST-ZZ-D002CR-01.jpg', '2020-10-09 15:11:24', ''),
(354, 343, '20201130130801-Audemars-Piguet-77301ST-ZZ-D015CR-01.jpg', '2020-10-09 15:16:34', ''),
(355, 344, '20201130142929-Audemars-Piguet-77302BC-ZZ-D001CR-01.jpg', '2020-10-09 15:19:29', ''),
(356, 345, '20201130143200-Audemars-Piguet-77303BC-ZZ-D007SU-01.jpg', '2020-10-09 15:22:08', ''),
(357, 346, '20201130143950-Audemars-Piguet-77303OR-ZZ-D009SU-01.jpg', '2020-10-09 15:26:56', ''),
(358, 347, '20201009113102-Audemars-Piguet-77306BC-ZZ-D007SU-01.jpg', '2020-10-09 15:31:02', ''),
(359, 348, '20201009113350-Audemars-Piguet-26354OR-ZZ-D088CR-01.jpg', '2020-10-09 15:33:50', ''),
(360, 349, '20201201181930-download - 2020-12-01T181924.802.jpg', '2020-10-09 15:43:18', ''),
(361, 350, '20201201181842-download - 2020-12-01T181836.225.jpg', '2020-10-09 15:51:26', ''),
(362, 351, '20201201181826-download - 2020-12-01T181819.104.jpg', '2020-10-09 15:59:39', ''),
(363, 352, '20201201181811-download - 2020-12-01T181802.107.jpg', '2020-10-09 16:05:13', ''),
(364, 353, '20201201181753-download - 2020-12-01T181745.365.jpg', '2020-10-09 16:08:40', ''),
(365, 354, '20201201181737-download - 2020-12-01T181728.631.jpg', '2020-10-09 16:13:48', ''),
(366, 355, '20201201181652-download - 2020-12-01T181644.265.jpg', '2020-10-09 16:16:15', ''),
(367, 356, '20201201181626-download - 2020-12-01T181616.489.jpg', '2020-10-09 16:19:17', ''),
(368, 357, '20201201180807-download - 2020-12-01T180756.359.jpg', '2020-10-09 16:21:35', ''),
(369, 358, '20201201180747-download - 2020-12-01T180741.591.jpg', '2020-10-09 16:32:00', ''),
(370, 359, '20201201180728-download - 2020-12-01T180721.205.jpg', '2020-10-09 16:33:53', ''),
(371, 360, '20201201180449-download - 2020-12-01T180442.241.jpg', '2020-10-09 16:35:59', ''),
(372, 361, '20201201180433-download - 2020-12-01T180427.028.jpg', '2020-10-09 16:38:34', ''),
(373, 362, '20201201180418-download - 2020-12-01T180410.312.jpg', '2020-10-09 16:44:42', ''),
(374, 363, '20201201180358-download - 2020-12-01T180351.492.jpg', '2020-10-09 16:47:30', ''),
(375, 364, '20201201180127-download - 2020-12-01T180120.220.jpg', '2020-10-09 16:51:31', ''),
(376, 365, '20201201180111-download - 2020-12-01T180104.941.jpg', '2020-10-09 16:53:22', ''),
(377, 366, '20201201180038-download - 2020-12-01T180032.776.jpg', '2020-10-09 19:58:26', ''),
(378, 367, '20201201175933-download - 2020-12-01T175924.924.jpg', '2020-10-09 20:03:05', ''),
(379, 368, '20201201175914-download - 2020-12-01T175906.737.jpg', '2020-10-09 20:08:42', ''),
(380, 369, '20201201175857-download - 2020-12-01T175850.766.jpg', '2020-10-09 20:16:50', ''),
(381, 370, '20201201175711-download - 2020-12-01T175704.754.jpg', '2020-10-09 20:24:45', ''),
(382, 371, '20201201175654-download - 2020-12-01T175649.416.jpg', '2020-10-09 20:30:51', ''),
(383, 372, '20201201175639-download - 2020-12-01T175625.298.jpg', '2020-10-09 20:37:51', ''),
(384, 373, '20201201175604-download - 2020-12-01T175559.131.jpg', '2020-10-09 20:43:11', ''),
(385, 374, '20201201175551-download - 2020-12-01T175546.560.jpg', '2020-10-09 20:45:29', ''),
(386, 375, '20201201175538-download - 2020-12-01T175530.959.jpg', '2020-10-09 20:51:31', ''),
(387, 376, '20201201175522-download - 2020-12-01T175515.191.jpg', '2020-10-09 21:11:14', ''),
(388, 377, '20201201175506-download - 2020-12-01T175454.706.jpg', '2020-10-09 21:16:28', ''),
(389, 378, '20201201175437-download - 2020-12-01T175431.036.jpg', '2020-10-09 21:47:48', ''),
(390, 379, '20201201175420-download - 2020-12-01T175413.975.jpg', '2020-10-09 21:50:04', ''),
(391, 380, '20201201175312-download - 2020-12-01T175305.237.jpg', '2020-10-09 22:01:27', ''),
(392, 381, '20201201175256-download - 2020-12-01T175251.367.jpg', '2020-10-09 22:04:32', ''),
(393, 382, '20201201175243-download - 2020-12-01T175237.946.jpg', '2020-10-09 22:27:11', ''),
(394, 383, '20201201175227-download - 2020-12-01T175222.353.jpg', '2020-10-09 22:28:59', ''),
(395, 384, '20201201175213-download - 2020-12-01T175208.092.jpg', '2020-10-09 22:31:30', ''),
(396, 385, '20201201175200-download - 2020-12-01T175153.082.jpg', '2020-10-09 22:33:18', ''),
(397, 386, '20201201174158-download - 2020-12-01T174152.052.jpg', '2020-10-09 22:38:15', ''),
(398, 387, '20201201174143-download - 2020-12-01T174138.063.jpg', '2020-10-09 22:41:22', ''),
(399, 388, '20201201174129-images (20).jpg', '2020-10-09 22:44:27', ''),
(400, 389, '20201201174112-download - 2020-12-01T174101.323.jpg', '2020-10-09 22:47:27', ''),
(401, 390, '20201201173347-download - 2020-12-01T173338.069.jpg', '2020-10-09 22:49:49', ''),
(402, 391, '20201201173327-download - 2020-12-01T173321.305.jpg', '2020-10-09 22:58:32', ''),
(403, 392, '20201201173312-download - 2020-12-01T173303.659.jpg', '2020-10-12 14:49:43', ''),
(404, 393, '20201201173254-images (19).jpg', '2020-10-12 14:51:48', ''),
(405, 394, '20201201173235-images (18).jpg', '2020-10-12 14:57:30', ''),
(406, 395, '20201201173214-download - 2020-12-01T173208.591.jpg', '2020-10-12 15:03:43', ''),
(407, 396, '20201201173158-download - 2020-12-01T173152.068.jpg', '2020-10-12 15:08:37', ''),
(408, 397, '20201201173135-download - 2020-12-01T173125.457.jpg', '2020-10-12 15:11:42', ''),
(409, 398, '20201201173115-download - 2020-12-01T173107.963.jpg', '2020-10-12 15:13:54', ''),
(410, 399, '20201201173058-download - 2020-12-01T173051.515.jpg', '2020-10-12 15:16:43', ''),
(411, 400, '20201201172155-images (17).jpg', '2020-10-12 15:39:39', ''),
(412, 401, '20201201172137-download - 2020-12-01T172129.791.jpg', '2020-10-12 15:43:30', ''),
(413, 402, '20201201172120-download - 2020-12-01T172113.533.jpg', '2020-10-12 15:47:26', ''),
(414, 403, '20201201172058-download - 2020-12-01T172045.706.jpg', '2020-10-12 15:50:05', ''),
(415, 405, '20201201172019-download - 2020-12-01T172010.806.jpg', '2020-10-12 15:52:51', ''),
(416, 406, '20201201171958-download - 2020-12-01T171947.402.jpg', '2020-10-12 15:54:37', ''),
(417, 407, '20201201171931-download - 2020-12-01T171926.162.jpg', '2020-10-12 15:56:41', ''),
(418, 408, '20201201171915-download - 2020-12-01T171909.635.jpg', '2020-10-12 16:00:10', ''),
(419, 409, '20201201171858-download - 2020-12-01T171852.431.jpg', '2020-10-12 16:02:25', ''),
(420, 410, '20201201171741-download - 2020-12-01T171735.956.jpg', '2020-10-12 16:05:35', ''),
(421, 411, '20201201171726-download - 2020-12-01T171719.478.jpg', '2020-10-12 16:09:21', ''),
(422, 412, '20201201171708-download - 2020-12-01T171654.704.jpg', '2020-10-12 16:13:34', ''),
(423, 413, '20201201171643-download - 2020-12-01T171637.574.jpg', '2020-10-12 16:15:25', ''),
(424, 414, '20201201171628-download - 2020-12-01T171621.359.jpg', '2020-10-12 16:17:04', ''),
(425, 415, '20201201171611-download - 2020-12-01T171605.095.jpg', '2020-10-12 16:19:13', ''),
(426, 416, '20201201171556-download - 2020-12-01T171548.309.jpg', '2020-10-12 16:26:39', ''),
(427, 417, '20201201171420-download - 2020-12-01T171414.000.jpg', '2020-10-12 16:30:27', ''),
(428, 418, '20201201171352-download - 2020-12-01T171344.009.jpg', '2020-10-12 16:32:13', ''),
(429, 419, '20201201171333-download - 2020-12-01T171326.641.jpg', '2020-10-12 16:42:12', ''),
(430, 420, '20201201171246-download - 2020-12-01T171239.724.jpg', '2020-10-12 16:44:19', ''),
(431, 421, '20201201171229-download - 2020-12-01T171223.623.jpg', '2020-10-12 16:46:26', ''),
(432, 422, '20201201171215-download - 2020-12-01T171205.124.jpg', '2020-10-12 16:48:21', ''),
(433, 423, '20201201171156-download - 2020-12-01T171141.875.jpg', '2020-10-12 16:53:28', ''),
(434, 424, '20201201171131-images (15).jpg', '2020-10-12 16:57:35', ''),
(435, 425, '20201201171116-download - 2020-12-01T171109.823.jpg', '2020-10-12 17:05:59', ''),
(436, 426, '20201201171058-download - 2020-12-01T171051.761.jpg', '2020-10-12 17:07:48', ''),
(437, 427, '20201201171037-download - 2020-12-01T171029.509.jpg', '2020-10-12 17:11:35', ''),
(438, 428, '20201201171002-download - 2020-12-01T170953.893.jpg', '2020-10-12 17:14:13', ''),
(439, 429, '20201201170935-download - 2020-12-01T170927.301.jpg', '2020-10-12 18:48:16', ''),
(440, 430, '20201201165524-download - 2020-12-01T165516.723.jpg', '2020-10-12 18:53:33', ''),
(441, 431, '20201201165507-download - 2020-12-01T165459.420.jpg', '2020-10-12 19:00:52', ''),
(442, 432, '20201201165449-download - 2020-12-01T165441.971.jpg', '2020-10-12 19:04:29', ''),
(443, 433, '20201201165427-download - 2020-12-01T165420.183.jpg', '2020-10-12 19:19:22', ''),
(444, 434, '20201201165409-download - 2020-12-01T165350.747.jpg', '2020-10-12 19:23:08', ''),
(445, 435, '20201201165334-download - 2020-12-01T165327.445.jpg', '2020-10-12 19:31:16', ''),
(446, 436, '20201201165318-download - 2020-12-01T165311.902.jpg', '2020-10-12 19:42:52', ''),
(447, 437, '20201201165302-download - 2020-12-01T165255.218.jpg', '2020-10-12 19:49:18', ''),
(448, 438, '20201201165244-download - 2020-12-01T165239.044.jpg', '2020-10-12 19:51:48', ''),
(449, 439, '20201201165231-download - 2020-12-01T165222.107.jpg', '2020-10-12 19:59:12', ''),
(450, 440, '20201201165008-download - 2020-12-01T165001.689.jpg', '2020-10-12 20:48:52', ''),
(451, 441, '20201201164953-download - 2020-12-01T164935.101.jpg', '2020-10-12 20:50:44', ''),
(452, 442, '20201201164941-download - 2020-12-01T164935.101.jpg', '2020-10-12 20:57:32', ''),
(453, 443, '20201201164742-download - 2020-12-01T164735.344.jpg', '2020-10-12 20:59:40', ''),
(454, 444, '20201201164715-images (14).jpg', '2020-10-12 21:03:03', ''),
(455, 445, '20201201164655-download - 2020-12-01T164642.003.jpg', '2020-10-12 21:11:15', ''),
(456, 446, '20201201164632-download - 2020-12-01T164624.245.jpg', '2020-10-12 21:13:25', ''),
(457, 447, '20201201164615-download - 2020-12-01T164607.512.jpg', '2020-10-12 21:20:57', ''),
(458, 448, '20201201164557-download - 2020-12-01T164549.610.jpg', '2020-10-12 21:23:36', ''),
(459, 449, '20201201164429-download - 2020-12-01T164423.273.jpg', '2020-10-12 21:33:18', ''),
(460, 450, '20201201164321-images (13).jpg', '2020-10-13 14:33:16', ''),
(461, 451, '20201201164251-images (12).jpg', '2020-10-13 14:44:03', ''),
(462, 452, '20201201164234-download - 2020-12-01T164223.665.jpg', '2020-10-13 14:50:04', ''),
(463, 453, '20201201164206-download - 2020-12-01T164158.638.jpg', '2020-10-13 14:54:38', ''),
(464, 454, '20201201164146-download - 2020-12-01T164138.339.jpg', '2020-10-13 14:59:33', ''),
(465, 455, '20201201164125-download - 2020-12-01T164119.945.jpg', '2020-10-13 15:05:22', ''),
(466, 456, '20201201164110-download - 2020-12-01T163912.592.jpg', '2020-10-13 15:08:08', ''),
(467, 457, '20201201163901-download - 2020-12-01T163855.906.jpg', '2020-10-13 15:18:15', ''),
(468, 458, '20201201163846-download - 2020-12-01T163838.865.jpg', '2020-10-13 15:26:16', ''),
(469, 459, '20201201163829-download - 2020-12-01T163819.275.jpg', '2020-10-13 15:30:53', ''),
(470, 460, '20201201163247-download - 2020-12-01T163239.884.jpg', '2020-10-13 15:55:38', ''),
(471, 461, '20201201163227-download - 2020-12-01T163216.930.jpg', '2020-10-13 16:08:01', ''),
(472, 462, '20201201163201-download - 2020-12-01T163156.389.jpg', '2020-10-13 16:27:15', ''),
(473, 463, '20201201163141-download - 2020-12-01T163132.651.jpg', '2020-10-13 16:33:17', ''),
(474, 464, '20201201163121-download - 2020-12-01T163112.338.jpg', '2020-10-13 16:35:10', ''),
(475, 465, '20201201163102-download - 2020-12-01T163052.070.jpg', '2020-10-13 16:37:27', ''),
(476, 466, '20201201163042-download - 2020-12-01T163033.723.jpg', '2020-10-13 16:40:32', ''),
(477, 467, '20201201163021-download - 2020-12-01T163010.711.jpg', '2020-10-13 16:42:56', ''),
(478, 468, '20201201163001-download - 2020-12-01T162953.651.jpg', '2020-10-13 17:11:27', ''),
(479, 469, '20201201162943-download - 2020-12-01T162936.718.jpg', '2020-10-13 17:14:29', ''),
(480, 470, '20201201162705-download - 2020-12-01T162700.402.jpg', '2020-10-13 17:20:03', ''),
(481, 471, '20201201162650-download - 2020-12-01T162645.378.jpg', '2020-10-13 17:52:56', ''),
(482, 472, '20201201162634-download - 2020-12-01T162629.170.jpg', '2020-10-13 18:03:11', ''),
(483, 473, '20201201162610-images (11).jpg', '2020-10-13 18:05:36', ''),
(484, 474, '20201201162555-images (10).jpg', '2020-10-13 18:13:28', ''),
(485, 475, '20201201162539-download - 2020-12-01T162531.919.jpg', '2020-10-13 18:15:26', ''),
(486, 476, '20201201162517-download - 2020-12-01T162512.939.jpg', '2020-10-13 18:21:32', ''),
(487, 477, '20201201162502-download - 2020-12-01T162457.899.jpg', '2020-10-13 18:54:49', ''),
(488, 478, '20201201162447-download - 2020-12-01T162441.115.jpg', '2020-10-13 19:00:00', ''),
(489, 479, '20201201162431-download - 2020-12-01T162425.041.jpg', '2020-10-13 19:02:46', ''),
(490, 480, '20201201162352-download - 2020-12-01T162345.260.jpg', '2020-10-13 19:05:53', ''),
(491, 481, '20201201162333-download - 2020-12-01T162326.494.jpg', '2020-10-13 19:08:05', ''),
(492, 482, '20201201162315-download - 2020-12-01T162307.698.jpg', '2020-10-13 19:11:08', ''),
(493, 483, '20201201162258-download - 2020-12-01T162254.322.jpg', '2020-10-13 19:13:48', ''),
(494, 484, '20201201162240-download - 2020-12-01T162230.119.jpg', '2020-10-13 19:15:59', ''),
(495, 485, '20201201162219-download - 2020-12-01T162206.191.jpg', '2020-10-13 19:19:51', ''),
(496, 486, '20201201162153-download - 2020-12-01T162146.117.jpg', '2020-10-13 19:24:40', ''),
(497, 487, '20201201162136-download - 2020-12-01T162125.920.jpg', '2020-10-13 19:26:52', ''),
(498, 488, '20201201162058-download - 2020-12-01T162048.400.jpg', '2020-10-13 19:37:31', ''),
(499, 489, '20201201162039-download - 2020-12-01T162031.256.jpg', '2020-10-13 19:40:19', ''),
(500, 490, '20201201161929-download - 2020-12-01T161920.085.jpg', '2020-10-13 19:42:22', ''),
(501, 491, '20201201161910-download - 2020-12-01T161902.950.jpg', '2020-10-13 19:45:48', ''),
(502, 492, '20201201161854-download - 2020-12-01T161849.139.jpg', '2020-10-13 20:06:48', ''),
(503, 493, '20201201161837-download - 2020-12-01T161832.237.jpg', '2020-10-13 20:11:55', ''),
(504, 494, '20201201161822-download - 2020-12-01T161805.306.jpg', '2020-10-13 20:14:50', ''),
(505, 495, '20201201161754-images (9).jpg', '2020-10-13 20:18:39', ''),
(506, 496, '20201201161738-download - 2020-12-01T161732.613.jpg', '2020-10-13 20:20:44', ''),
(507, 497, '20201201161722-download - 2020-12-01T161715.927.jpg', '2020-10-13 20:27:50', ''),
(508, 498, '20201201161706-download - 2020-12-01T161700.226.jpg', '2020-10-13 20:30:11', ''),
(509, 499, '20201201161649-download - 2020-12-01T161637.174.jpg', '2020-10-13 20:36:05', ''),
(510, 500, '20201201161508-download - 2020-12-01T161442.399.jpg', '2020-10-13 20:39:32', ''),
(511, 501, '20201201161452-download - 2020-12-01T161442.399.jpg', '2020-10-13 20:41:38', ''),
(512, 502, '20201201161433-download - 2020-12-01T161426.031.jpg', '2020-10-13 20:47:14', ''),
(513, 503, '20201201161415-download - 2020-12-01T161408.290.jpg', '2020-10-13 20:50:12', ''),
(514, 504, '20201201161358-download - 2020-12-01T161349.989.jpg', '2020-10-13 20:52:55', ''),
(515, 505, '20201201161339-download - 2020-12-01T161329.866.jpg', '2020-10-13 20:57:52', ''),
(516, 506, '20201201161312-download - 2020-12-01T161303.918.jpg', '2020-10-13 21:03:17', ''),
(517, 507, '20201201161254-download - 2020-12-01T161246.583.jpg', '2020-10-13 21:06:03', ''),
(518, 508, '20201201161219-download - 2020-12-01T161211.779.jpg', '2020-10-13 21:09:47', ''),
(519, 509, '20201201161152-download - 2020-12-01T161144.557.jpg', '2020-10-14 15:03:02', ''),
(520, 510, '20201201161108-download - 2020-12-01T161101.362.jpg', '2020-10-14 15:10:44', ''),
(521, 511, '20201201161052-download - 2020-12-01T161040.602.jpg', '2020-10-14 15:26:47', ''),
(522, 512, '20201201161031-download - 2020-12-01T161024.652.jpg', '2020-10-14 15:34:03', ''),
(523, 513, '20201201161015-download - 2020-12-01T160939.959.jpg', '2020-10-14 15:41:33', ''),
(524, 514, '20201201160947-download - 2020-12-01T160939.959.jpg', '2020-10-14 15:49:24', ''),
(525, 515, '20201201160930-download - 2020-12-01T160925.345.jpg', '2020-10-14 15:56:33', ''),
(526, 516, '20201201160913-download - 2020-12-01T160907.255.jpg', '2020-10-14 16:16:46', ''),
(527, 517, '20201201160856-download - 2020-12-01T160846.662.jpg', '2020-10-14 16:50:22', ''),
(528, 518, '20201201160834-download - 2020-12-01T160827.846.jpg', '2020-10-14 16:52:13', ''),
(529, 519, '20201201160818-download - 2020-12-01T160810.828.jpg', '2020-10-14 17:00:25', ''),
(530, 520, '20201201154429-download - 2020-12-01T154422.948.jpg', '2020-10-14 17:02:14', ''),
(531, 521, '20201201154414-download - 2020-12-01T154405.136.jpg', '2020-10-14 17:03:54', ''),
(532, 522, '20201201154355-download (100).jpg', '2020-10-14 17:06:17', ''),
(533, 523, '20201201154332-download (99).jpg', '2020-10-14 17:09:43', ''),
(534, 524, '20201201154312-download (98).jpg', '2020-10-14 17:11:53', ''),
(535, 525, '20201201154257-download (98).jpg', '2020-10-14 17:13:44', ''),
(536, 526, '20201201154140-download (97).jpg', '2020-10-14 17:20:54', ''),
(537, 527, '20201201153648-download (96).jpg', '2020-10-14 18:02:21', ''),
(538, 528, '20201201153546-download (95).jpg', '2020-10-14 18:04:31', ''),
(539, 529, '20201201153421-download (94).jpg', '2020-10-14 18:15:34', ''),
(540, 530, '20201201152235-download (93).jpg', '2020-10-14 18:18:06', ''),
(541, 531, '20201201152218-download (92).jpg', '2020-10-14 20:28:17', ''),
(542, 532, '20201201152154-download (91).jpg', '2020-10-14 20:33:28', ''),
(543, 533, '20201201152137-download (90).jpg', '2020-10-14 20:49:56', ''),
(544, 534, '20201201152121-download (89).jpg', '2020-10-14 20:52:06', ''),
(545, 535, '20201201152100-download (88).jpg', '2020-10-14 20:56:06', ''),
(546, 536, '20201201152032-download (87).jpg', '2020-10-14 21:00:50', ''),
(547, 537, '20201201152007-download (86).jpg', '2020-10-14 21:15:27', ''),
(548, 538, '20201201151944-download (85).jpg', '2020-10-14 21:31:26', ''),
(549, 539, '20201201151925-download (84).jpg', '2020-10-14 21:36:43', ''),
(550, 540, '20201201151730-download (83).jpg', '2020-10-14 21:39:13', ''),
(551, 541, '20201201151709-download (82).jpg', '2020-10-14 21:42:02', ''),
(552, 542, '20201201151646-download (81).jpg', '2020-10-14 21:44:31', ''),
(553, 543, '20201201151626-download (80).jpg', '2020-10-14 21:48:08', ''),
(554, 544, '20201201151606-download (79).jpg', '2020-10-14 21:57:27', ''),
(555, 545, '20201201151539-download (78).jpg', '2020-10-14 21:59:16', ''),
(556, 546, '20201201151520-download (77).jpg', '2020-10-14 22:30:37', ''),
(557, 547, '20201201151406-download (76).jpg', '2020-10-14 22:33:33', ''),
(558, 548, '20201201151343-download (75).jpg', '2020-10-14 22:35:16', ''),
(559, 549, '20201201151320-download (74).jpg', '2020-10-14 22:37:21', ''),
(560, 550, '20201201151231-download (73).jpg', '2020-10-14 22:39:04', ''),
(561, 551, '20201201151211-download (72).jpg', '2020-10-14 22:40:51', ''),
(562, 552, '20201201151151-download (71).jpg', '2020-10-14 22:43:18', ''),
(563, 553, '20201201151116-download (70).jpg', '2020-10-14 22:47:37', ''),
(564, 554, '20201201151053-download (69).jpg', '2020-10-14 22:51:33', ''),
(565, 555, '20201201151026-download (68).jpg', '2020-10-14 23:08:57', ''),
(566, 556, '20201201151005-download (67).jpg', '2020-10-14 23:13:26', ''),
(567, 557, '20201201150934-download (66).jpg', '2020-10-14 23:15:38', ''),
(568, 558, '20201201150908-download (65).jpg', '2020-10-14 23:18:32', ''),
(569, 559, '20201201150357-download (64).jpg', '2020-10-14 23:20:28', ''),
(570, 560, '20201130181840-IW323101.jpg', '2020-10-15 16:34:41', ''),
(571, 561, '20201130182019-download.jpg', '2020-10-15 16:37:04', ''),
(572, 562, '20201130181941-IW323104.jpg', '2020-10-15 16:40:21', ''),
(573, 564, '20201130181900-IW323105-iwc-vintage-aquatimer-automatic-platinum.jpg', '2020-10-15 17:31:24', ''),
(574, 565, '20201130182725-download (3).jpg', '2020-10-15 17:37:55', ''),
(575, 566, '20201130182706-IW323303-new.jpg', '2020-10-15 17:39:31', ''),
(576, 567, '20201130182638-download (2).jpg', '2020-10-15 17:41:31', ''),
(577, 568, '20201130182601-IW323305-iwc-vintage-ingenieur-automatic-platinum.jpg', '2020-10-15 17:43:47', ''),
(578, 569, '20201130182532-IW544501.jpg', '2020-10-15 17:47:07', ''),
(579, 570, '20201130182509-IW544503.jpg', '2020-10-15 17:49:47', ''),
(580, 571, '20201130182408-IW544504-new.jpg', '2020-10-15 17:51:25', ''),
(581, 572, '20201130182343-download (1).jpg', '2020-10-15 17:52:57', ''),
(582, 573, '20201130182242-81WKrql2CKL._UL1500_.jpg', '2020-10-15 17:54:43', ''),
(583, 574, '20201130182215-IW546103.jpg', '2020-10-15 17:56:41', ''),
(584, 575, '20201130182823-23923_MAIN_260.jpg', '2020-10-15 18:02:57', ''),
(585, 576, '20201130183231-IW325401.jpg', '2020-10-15 18:07:00', ''),
(586, 577, '20201130183209-download (7).jpg', '2020-10-15 18:08:41', ''),
(587, 578, '20201130183147-download (6).jpg', '2020-10-15 18:10:19', ''),
(588, 579, '20201130183128-images.jpg', '2020-10-15 18:12:14', ''),
(589, 580, '20201130183051-IW544803.jpg', '2020-10-15 18:16:29', ''),
(590, 581, '20201130183013-IW544803.jpg', '2020-10-15 18:20:43', ''),
(591, 583, '20201130182925-iw544804-64.jpg', '2020-10-15 18:33:13', ''),
(592, 584, '20201130182845-download (4).jpg', '2020-10-15 19:01:30', ''),
(593, 585, '20201130183831-download (13).jpg', '2020-10-15 19:10:49', ''),
(594, 586, '20201130183819-IWC-PortugueseTourbillon-IW504402-18212-180215-153852-.jpg', '2020-10-15 19:13:18', ''),
(595, 587, '20201130183729-download (12).jpg', '2020-10-15 19:14:58', ''),
(596, 588, '20201130183700-iwc-portuguese-minute-repeater-iw544907-40.jpg', '2020-10-15 19:16:54', ''),
(597, 589, '20201130183628-download (11).jpg', '2020-10-15 19:21:30', ''),
(598, 590, '20201130183601-IW502307.jpg', '2020-10-15 19:25:35', ''),
(599, 591, '20201130183357-download (10).jpg', '2020-10-15 19:29:33', ''),
(600, 592, '20201130183332-download (9).jpg', '2020-10-15 19:31:21', ''),
(601, 593, '20201130183515-IW503202--.jpg', '2020-10-15 19:44:40', ''),
(602, 594, '20201130183314-download (8).jpg', '2020-10-15 19:46:03', '');
INSERT INTO `product_gallery` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(603, 595, '20201130185137-IW500107-new.jpg', '2020-10-15 19:57:11', ''),
(604, 596, '20201130185051-16008054-xzbhyk3tei76wu608v4yqogt-ExtraLarge.jpg', '2020-10-15 19:58:59', ''),
(605, 597, '20201130184951-iwc-portuguese-automatic-iw500113-86.jpg', '2020-10-15 20:00:39', ''),
(606, 598, '20201130184911-iwc-portuguese-automatic-iw500114-99.jpg', '2020-10-15 20:02:40', ''),
(607, 599, '20201130184848-511dEtTXb8L._AC_UX522_.jpg', '2020-10-15 20:04:37', ''),
(608, 600, '20201130184712-IWC-PortugueseTourbillon-IW504402-18212-180215-153852-.jpg', '2020-10-15 20:06:29', ''),
(609, 601, '20201130184556-images (1).jpg', '2020-10-15 20:08:24', ''),
(610, 602, '20201130184517-IW371480-new.jpg', '2020-10-15 20:20:28', ''),
(611, 603, '20201130184436-71e+Uk4UYVL._AC_UX679_.jpg', '2020-10-15 20:41:59', ''),
(612, 604, '20201130184030-56958-336438853.jpg', '2020-10-15 20:43:34', ''),
(613, 605, '20201130185940-download (16).jpg', '2020-10-15 20:45:17', ''),
(614, 606, '20201130185906-download (15).jpg', '2020-10-15 20:47:46', ''),
(615, 607, '20201130185848-images (2).jpg', '2020-10-15 20:49:25', ''),
(616, 608, '20201130185825-download (14).jpg', '2020-10-15 20:50:49', ''),
(617, 609, '20201130185748-16669379-dmc9bqz5lghudlbs0r9v0lhq-ExtraLarge.jpg', '2020-10-15 20:52:10', ''),
(618, 610, '20201130185724-15802290-rm8m305x7bx93syukxei6rhs-ExtraLarge.jpg', '2020-10-15 20:53:57', ''),
(619, 611, '20201130185702-1945128.png', '2020-10-15 21:05:17', ''),
(620, 612, '20201130185632-iwc-portuguese-hand-wound-iw545408-34.jpg', '2020-10-15 21:08:24', ''),
(621, 613, '20201130185607-1945126.png', '2020-10-15 21:10:16', ''),
(622, 614, '20201130185446-iwc-da-vinci-chronograph-ceramic-iw376601-33.jpg', '2020-10-15 21:14:02', ''),
(623, 616, '20201201132443-download (62).jpg', '2020-10-15 21:50:38', ''),
(624, 617, '20201201132427-download (61).jpg', '2020-10-15 21:52:59', ''),
(625, 618, '20201201132411-download (60).jpg', '2020-10-15 21:54:31', ''),
(626, 619, '20201201132357-download (59).jpg', '2020-10-15 21:56:24', ''),
(627, 620, '20201201132332-download (58).jpg', '2020-10-15 22:26:37', ''),
(628, 621, '20201201132309-download (57).jpg', '2020-10-15 22:28:29', ''),
(629, 622, '20201201132249-download (56).jpg', '2020-10-16 15:06:08', ''),
(630, 623, '20201201132227-download (55).jpg', '2020-10-16 15:35:22', ''),
(631, 624, '20201201132211-download (54).jpg', '2020-10-16 15:46:31', ''),
(632, 625, '20201201131957-download (53).jpg', '2020-10-16 15:48:15', ''),
(633, 626, '20201201131941-download (52).jpg', '2020-10-16 15:52:05', ''),
(634, 627, '20201201131922-download (51).jpg', '2020-10-16 15:59:23', ''),
(635, 628, '20201201131902-images (8).jpg', '2020-10-16 16:01:32', ''),
(636, 629, '20201201131845-download (50).jpg', '2020-10-16 16:11:55', ''),
(637, 630, '20201201131823-download (49).jpg', '2020-10-16 16:15:30', ''),
(638, 631, '20201201131806-download (48).jpg', '2020-10-16 16:18:38', ''),
(639, 632, '20201201131725-download (47).jpg', '2020-10-16 16:22:43', ''),
(640, 633, '20201201131651-download (46).jpg', '2020-10-16 16:25:45', ''),
(641, 634, '20201201131607-images (7).jpg', '2020-10-16 16:27:54', ''),
(642, 635, '20201201131435-download (45).jpg', '2020-10-16 16:30:37', ''),
(643, 636, '20201201131420-images (6).jpg', '2020-10-16 16:33:26', ''),
(644, 637, '20201201131348-download (44).jpg', '2020-10-16 16:36:49', ''),
(645, 638, '20201201131328-download (43).jpg', '2020-10-16 16:38:38', ''),
(646, 639, '20201201131306-download (42).jpg', '2020-10-16 16:41:54', ''),
(647, 640, '20201201131248-download (41).jpg', '2020-10-16 16:45:17', ''),
(648, 641, '20201201131221-download (40).jpg', '2020-10-16 16:53:19', ''),
(649, 642, '20201201131157-download (39).jpg', '2020-10-16 16:55:22', ''),
(650, 643, '20201201131134-download (38).jpg', '2020-10-16 17:14:23', ''),
(651, 644, '20201201131034-download (37).jpg', '2020-10-16 17:18:49', ''),
(652, 645, '20201201130950-download (36).jpg', '2020-10-16 17:20:39', ''),
(653, 646, '20201201130931-download (35).jpg', '2020-10-16 17:23:53', ''),
(654, 647, '20201201130915-download (34).jpg', '2020-10-16 17:24:57', ''),
(655, 648, '20201201130858-download (33).jpg', '2020-10-16 17:26:35', ''),
(656, 649, '20201201130842-download (32).jpg', '2020-10-16 17:27:56', ''),
(657, 650, '20201201130817-download (31).jpg', '2020-10-16 17:29:05', ''),
(658, 651, '20201201130749-download (30).jpg', '2020-10-16 17:30:52', ''),
(659, 652, '20201201130727-download (29).jpg', '2020-10-16 17:40:26', ''),
(660, 653, '20201201130700-download (28).jpg', '2020-10-16 18:08:16', ''),
(661, 654, '20201201130638-download (27).jpg', '2020-10-16 18:12:23', ''),
(662, 655, '20201201125631-download (26).jpg', '2020-10-16 18:14:01', ''),
(663, 656, '20201201125556-download (25).jpg', '2020-10-16 18:15:29', ''),
(664, 657, '20201201125536-download (24).jpg', '2020-10-16 18:17:38', ''),
(665, 658, '20201201125511-images (5).jpg', '2020-10-16 18:18:55', ''),
(666, 659, '20201201125455-images (5).jpg', '2020-10-16 18:20:14', ''),
(667, 660, '20201201125427-images (4).jpg', '2020-10-16 18:21:55', ''),
(668, 661, '20201201125400-download (23).jpg', '2020-10-16 18:23:34', ''),
(669, 662, '20201201125341-iwc-spitfire-chronograph-iw387803-91.jpg', '2020-10-16 18:25:56', ''),
(670, 663, '20201201125301-iwc-spitfire-chronograph-iw387802-80.jpg', '2020-10-16 18:27:34', ''),
(671, 664, '20201201125239-iwc-spitfire-chronograph-iw387804-70 (1).jpg', '2020-10-16 18:28:47', ''),
(672, 665, '20201201125057-IWC_IW376708_37405_01.jpg', '2020-10-16 18:46:22', ''),
(673, 666, '20201201125002-iwc-aquatimer-chronograph-men_s-watch-iw376709.jpg', '2020-10-16 18:47:37', ''),
(674, 667, '20201201124836-1921827.png.transform.buying-options_watch_1000.jpeg', '2020-10-16 18:48:46', ''),
(675, 668, '20201201124809-1921828.png.transform.buying-options_watch_1000.jpeg', '2020-10-16 18:51:11', ''),
(676, 669, '20201201124623-images (3).jpg', '2020-10-16 18:52:08', ''),
(677, 670, '20201201124600-iwc-aquatimer-chrono-automatic-iw376705-43.jpg', '2020-10-16 18:53:23', ''),
(678, 671, '20201201124456-3f2b4012512aa3f9e2a0c2eed99ee919.jpg', '2020-10-16 21:58:20', ''),
(679, 671, '20201201124515-download (22).jpg', '2020-10-19 15:27:18', ''),
(680, 672, '20201201124421-IW391002.jpg', '2020-10-19 15:29:07', ''),
(681, 673, '20201201124308-IW391005-new.jpg', '2020-10-19 15:32:06', ''),
(682, 674, '20201201124125-IW391006_main.jpg', '2020-10-19 15:43:40', ''),
(683, 675, '20201201123938-download (21).jpg', '2020-10-19 15:46:02', ''),
(684, 676, '20201201123917-download (20).jpg', '2020-10-19 15:47:48', ''),
(685, 677, '20201201123850-download (19).jpg', '2020-10-19 15:50:57', ''),
(686, 678, '20201201123807-iw356504-iwc.jpg', '2020-10-19 15:56:37', ''),
(687, 679, '20201201123732-download (18).jpg', '2020-10-19 15:58:38', ''),
(688, 680, '20201201123645-download (18).jpg', '2020-10-19 16:03:44', ''),
(689, 681, '20201201123529-iw510102-.jpg', '2020-10-19 16:08:56', ''),
(690, 682, '20201201123432-download (17).jpg', '2020-10-19 16:10:47', ''),
(691, 683, '20201201123413-iw510104.jpg', '2020-10-19 16:33:02', ''),
(692, 684, '20201201123247-iwc-portofino-hand-wound-8-days-iw510107-96.jpg', '2020-10-19 16:44:21', ''),
(693, 685, '20201130155336-download (8).jpg', '2020-10-19 17:06:38', ''),
(694, 686, '20201130155515-download (3).jpg', '2020-10-19 17:09:07', ''),
(695, 687, '20201130155446-download (2).jpg', '2020-10-19 17:11:19', ''),
(696, 688, '20201130155423-download (1).jpg', '2020-10-19 17:14:47', ''),
(697, 689, '20201130155400-download.jpg', '2020-10-19 17:18:19', ''),
(698, 690, '20201130160213-download (11).jpg', '2020-10-19 17:20:15', ''),
(699, 691, '20201130160147-download (10).jpg', '2020-10-19 17:24:28', ''),
(700, 692, '20201130160121-RICHARD MILLE RM 003 Ti DLC Boutique Edition 502.45B.91B.jpg', '2020-10-19 17:27:43', ''),
(701, 693, '20201130160046-RICHARD MILLE RM 003 Pt All Grey 502.48C.91.jpg', '2020-10-19 17:29:46', ''),
(702, 694, '20201130155958-download (9).jpg', '2020-10-19 19:20:20', ''),
(703, 695, '20201130155912-Richard-Mille-RG-503-04-91.jpg', '2020-10-19 19:24:42', ''),
(704, 696, '20201130155714-download (7).jpg', '2020-10-19 19:29:02', ''),
(705, 697, '20201130155653-download (6).jpg', '2020-10-19 19:38:40', ''),
(706, 698, '20201130155622-download (5).jpg', '2020-10-19 19:44:05', ''),
(707, 699, '20201130155559-download (4).jpg', '2020-10-19 19:50:01', ''),
(708, 700, '20201130160852-download (17).jpg', '2020-10-19 19:54:03', ''),
(709, 701, '20201130160827-unnamed.jpg', '2020-10-19 19:58:05', ''),
(710, 702, '20201130160744-download (16).jpg', '2020-10-19 20:00:33', ''),
(711, 703, '20201130160715-RICHARD MILLE RM 008 RG Felipe Massa 507.04D.91.jpg', '2020-10-19 20:05:58', ''),
(712, 704, '20201130160642-download (15).jpg', '2020-10-19 20:08:42', ''),
(713, 705, '20201130160542-download (14).jpg', '2020-10-19 20:29:36', ''),
(714, 706, '20201130160507-RICHARD MILLE RM 010 RG full set 509.042.91-1 Full set.jpg', '2020-10-19 20:33:40', ''),
(715, 707, '20201130160422-download (13).jpg', '2020-10-19 20:38:13', ''),
(716, 708, '20201130160358-Richard-Mille-WG-509-06-91.jpg', '2020-10-19 20:41:58', ''),
(717, 709, '20201130160325-download (12).jpg', '2020-10-19 20:45:17', ''),
(718, 710, '20201130161450-RICHARD MILLE RM 010 WG full set 509.062.91-1.jpg', '2020-10-19 20:47:41', ''),
(719, 711, '20201130161417-unnamed (3).jpg', '2020-10-19 20:51:10', ''),
(720, 712, '20201130161342-unnamed (2).jpg', '2020-10-19 20:55:22', ''),
(721, 713, '20201130161311-download (20).jpg', '2020-10-19 20:57:23', ''),
(722, 714, '20201130161242-download (19).jpg', '2020-10-19 21:03:49', ''),
(723, 715, '20201130161151-unnamed (1).jpg', '2020-10-19 21:10:37', ''),
(724, 716, '20201130161124-download (18).jpg', '2020-10-19 21:16:08', ''),
(725, 717, '20201130161054-RICHARD MILLE RM 011 Ti Shot Blasted 511.45AS.91R-1.jpg', '2020-10-19 21:18:13', ''),
(726, 718, '20201130161024-RICHARD MILLE RM 011 Ti LMC 511.45AR.91Z-1.jpg', '2020-10-19 21:21:03', ''),
(727, 719, '20201130160957-RICHARD MILLE RM 011 Ti Spa Classic 511.45.XXX.jpg', '2020-10-19 21:32:39', ''),
(728, 720, '20201130162206-unnamed (7).jpg', '2020-10-19 21:54:43', ''),
(729, 721, '20201130162135-RICHARD MILLE RM 011 Carbon 511.72.91S-1.jpg', '2020-10-20 15:15:30', ''),
(730, 722, '20201130162102-download (24).jpg', '2020-10-20 15:20:03', ''),
(731, 723, '20201130162034-unnamed (6).jpg', '2020-10-20 15:24:47', ''),
(732, 724, '20201130162007-download (23).jpg', '2020-10-20 15:27:19', ''),
(733, 725, '20201130161838-unnamed (5).jpg', '2020-10-20 15:30:09', ''),
(734, 726, '20201130161802-download (22).jpg', '2020-10-20 15:38:00', ''),
(735, 727, '20201130161733-Richard Mille RM 016 Watch 516-04-91-1.jpg', '2020-10-20 15:42:13', ''),
(736, 728, '20201130161630-unnamed (4).jpg', '2020-10-20 15:46:20', ''),
(737, 729, '20201130161548-download (21).jpg', '2020-10-20 15:48:42', ''),
(738, 730, '20201130163006-download (29).jpg', '2020-10-20 16:00:01', ''),
(739, 731, '20201130162941-download (28).jpg', '2020-10-20 16:07:25', ''),
(740, 732, '20201130162913-unnamed (10).jpg', '2020-10-20 16:20:04', ''),
(741, 733, '20201130162843-unnamed (9).jpg', '2020-10-20 16:23:12', ''),
(742, 734, '20201130162817-unnamed (8).jpg', '2020-10-20 16:31:23', ''),
(743, 735, '20201130162749-RICHARD MILLE RM 016 Ti 516.45.91-1.jpg', '2020-10-20 16:35:23', ''),
(744, 736, '20201130162655-download (27).jpg', '2020-10-20 16:37:31', ''),
(745, 737, '20201130162615-download (27).jpg', '2020-10-20 16:40:32', ''),
(746, 738, '20201130162550-download (26).jpg', '2020-10-20 16:42:55', ''),
(747, 739, '20201130162415-download (25).jpg', '2020-10-20 16:46:35', ''),
(748, 740, '20201130163625-download (31).jpg', '2020-10-20 17:30:12', ''),
(749, 741, '20201130163604-unnamed (13).jpg', '2020-10-20 17:57:06', ''),
(750, 742, '20201130163539-RICHARD MILLE RM 017 Ti 517.45.91 Tourbillon Extra Plate .jpg', '2020-10-20 17:59:22', ''),
(751, 743, '20201130163511-RICHARD MILLE RM 020 Ti DLC 520.45C.91 Montre de Poche.jpg', '2020-10-20 18:02:01', ''),
(752, 744, '20201130163420-download (30).jpg', '2020-10-20 18:04:37', ''),
(753, 745, '20201130163343-gphg2010_ricahrdmille_10_0706_rm020_01.jpg', '2020-10-20 18:06:35', ''),
(754, 746, '20201130163302-RICHARD MILLE RM 021 RG 521.04.91.jpg', '2020-10-20 18:23:25', ''),
(755, 747, '20201130163211-Richard-Mille-WG-509-06-91.jpg', '2020-10-20 18:32:03', ''),
(756, 748, '20201130163140-unnamed (12).jpg', '2020-10-20 18:40:22', ''),
(757, 749, '20201130163123-unnamed (11).jpg', '2020-10-20 18:43:19', ''),
(758, 750, '20201130164249-unnamed (17).jpg', '2020-10-20 18:46:27', ''),
(759, 751, '20201130164216-RICHARD MILLE RM 022 Ti 522.45.91.jpg', '2020-10-20 18:48:26', ''),
(760, 752, '20201130164150-unnamed (16).jpg', '2020-10-20 18:51:00', ''),
(761, 753, '20201130164113-download (34).jpg', '2020-10-20 18:53:50', ''),
(762, 754, '20201130164050-download (33).jpg', '2020-10-20 18:56:07', ''),
(763, 755, '20201130164026-unnamed (15).jpg', '2020-10-20 18:58:12', ''),
(764, 756, '20201130163937-download (32).jpg', '2020-10-20 19:01:04', ''),
(765, 757, '20201130163908-unnamed (14).jpg', '2020-10-20 19:03:26', ''),
(766, 758, '20201130163837-RICHARD MILLE RM 023 Ti 523.45.91 .jpg', '2020-10-20 19:08:11', ''),
(767, 759, '20201130163744-6cb7bd477f8c4e1d39ccd898555dc119.jpg', '2020-10-20 19:13:02', ''),
(768, 760, '20201130164812-unnamed (20).jpg', '2020-10-20 19:23:30', ''),
(769, 761, '20201130164718-download (38).jpg', '2020-10-20 19:25:54', ''),
(770, 763, '20201130164623-unnamed (18).jpg', '2020-10-20 19:34:53', ''),
(771, 764, '20201130164554-RICHARD MILLE RM 028 Ti DLC Orange Flash 528.45M.91K-1.jpg', '2020-10-20 19:45:06', ''),
(772, 765, '20201130164516-download (37).jpg', '2020-10-20 19:50:56', ''),
(773, 766, '20201130164454-RICHARD MILLE RM 028 Ti DLC Orange Flash 528.45M.91K-1.jpg', '2020-10-20 19:58:52', ''),
(774, 767, '20201130164433-RICHARD MILLE RM 028 Ti DLC Orange Flash 528.45M.91K-1.jpg', '2020-10-20 20:05:19', ''),
(775, 768, '20201130164407-download (36).jpg', '2020-10-20 20:08:04', ''),
(776, 769, '20201130164341-download (35).jpg', '2020-10-20 20:11:35', ''),
(777, 770, '20201130173520-unnamed (21).jpg', '2020-10-21 15:33:35', ''),
(778, 771, '20201130173458-Richard-Mille-RG-503-04-91 (1).jpg', '2020-10-21 15:46:03', ''),
(779, 772, '20201130173416-RICHARD MILLE RM 029 RG 529.04.91.jpg', '2020-10-21 15:48:38', ''),
(780, 773, '20201130173303-download (43).jpg', '2020-10-21 15:57:13', ''),
(781, 774, '20201130173240-download (42).jpg', '2020-10-21 17:15:19', ''),
(782, 775, '20201130173211-Richard-Mille-Ti-DLC-Black-Night-530-45D-91C.jpg', '2020-10-21 17:21:25', ''),
(783, 776, '20201130173105-download (41).jpg', '2020-10-21 17:24:49', ''),
(784, 777, '20201130173029-download (40).jpg', '2020-10-21 17:26:42', ''),
(785, 778, '20201130173009-Richard Mille RM 032 Ti 532.45.91.jpg', '2020-10-21 17:28:32', ''),
(786, 779, '20201130172941-download (39).jpg', '2020-10-21 17:31:27', ''),
(787, 780, '20201130175433-RICHARD MILLE RM 033 RG 533.04.91.jpg', '2020-10-21 17:37:00', ''),
(788, 781, '20201130175410-Richard-Mille-RG-medium-set-Triangle-533-042-91-1.jpg', '2020-10-21 17:42:18', ''),
(789, 782, '20201130175341-unnamed (22).jpg', '2020-10-21 17:47:47', ''),
(790, 783, '20201130174018-RICHARD MILLE RM 033 Ti 533.45.91 .jpg', '2020-10-21 17:50:04', ''),
(791, 784, '20201130173911-RICHARD MILLE RM 033 WG 533.06.91 .jpg', '2020-10-21 17:52:03', ''),
(792, 785, '20201130173826-download (47).jpg', '2020-10-21 17:53:57', ''),
(793, 786, '20201130173804-download (46).jpg', '2020-10-21 17:55:53', ''),
(794, 787, '20201130173730-download (45).jpg', '2020-10-21 17:58:08', ''),
(795, 788, '20201130173651-Richard-Mille-RM-35-01-Rafael-Nadal-10.jpg', '2020-10-21 18:00:10', ''),
(796, 789, '20201130173617-download (44).jpg', '2020-10-21 18:01:34', ''),
(797, 790, '20201130180028-Richard-Mille-RM36-01-G-Sensor-Sebastien-Loeb-Front-Featured-image.jpg', '2020-10-21 18:02:57', ''),
(798, 791, '20201130180004-download (51).jpg', '2020-10-21 18:06:18', ''),
(799, 792, '20201130175942-Richard-Mille-RM-039-Tourbillon-Aviation-E6-B-Flyback-Chronograph-aBlogtoWatch-7.jpg', '2020-10-21 18:07:23', ''),
(800, 793, '20201130175911-download (50).jpg', '2020-10-21 18:08:40', ''),
(801, 794, '20201130175847-RICHARD MILLE RM 051 Michelle Yeoh RG Full Set 551.0411.94.jpg', '2020-10-21 18:11:12', ''),
(802, 795, '20201130175749-RM-51-01.jpg', '2020-10-21 18:25:21', ''),
(803, 796, '20201130175725-Richard Mille RM 052 Tourbillon Skull Titanium Watch.jpg', '2020-10-21 18:28:00', ''),
(804, 797, '20201130175656-download (49).jpg', '2020-10-21 18:29:29', ''),
(805, 798, '20201130175638-download (48).jpg', '2020-10-21 18:31:24', ''),
(806, 799, '20201130175618-RICHARD MILLE RM 055 Bubba Watson 555.45A.91-1.jpg', '2020-10-21 18:35:11', ''),
(807, 800, '20201130180952-Richard-Mille-Bubba-Watson-All-Black-555-XXX.jpg', '2020-10-21 18:37:41', ''),
(808, 801, '20201130180922-46f092ec8ec0ed4aadc44527722565d7.jpg', '2020-10-21 18:42:35', ''),
(809, 802, '20201130180853-unnamed (24).jpg', '2020-10-21 19:10:32', ''),
(810, 803, '20201130180829-unnamed (23).jpg', '2020-10-21 19:12:42', ''),
(811, 804, '20201130180733-download (54).jpg', '2020-10-21 19:15:18', ''),
(812, 805, '20201130180655-download (53).jpg', '2020-10-21 19:17:43', ''),
(813, 806, '20201130180630-download (52).jpg', '2020-10-21 19:19:31', ''),
(814, 807, '20201130180612-Richard-Mille-RM-61-01-Yohan-Black-Full-Black-5.jpg', '2020-10-21 19:30:59', ''),
(815, 808, '20201130180535-Richard-Mille-RM-61-01-Yohan-Black-Full-Black-5.jpg', '2020-10-21 19:35:57', ''),
(817, 810, '20201130153338-download.jpg', '2020-10-21 22:44:46', ''),
(818, 811, '20201130154207-Dior-CD1221E0C001.jpg', '2020-10-21 22:49:13', ''),
(819, 812, '20201130154351-1393576310_bp.jpg', '2020-10-21 22:54:16', ''),
(820, 813, '20201130154532-download (1).jpg', '2020-10-21 22:56:02', ''),
(821, 814, '20201130154609-Dior-CD1221E0C001.jpg', '2020-10-21 22:57:22', ''),
(822, 815, '20201130154632-download (1).jpg', '2020-10-21 23:00:16', ''),
(823, 816, '20201130154712-download (2).jpg', '2020-10-21 23:03:58', ''),
(824, 817, '20201130154754-images.jpg', '2020-10-21 23:06:37', ''),
(825, 818, '20201130154857-download (3).jpg', '2020-10-21 23:08:52', ''),
(826, 819, '20201130154957-download (4).jpg', '2020-10-21 23:11:15', ''),
(827, 820, '20201130155026-download (5).jpg', '2020-10-21 23:14:29', ''),
(828, 821, '20201130155109-download (6).jpg', '2020-10-21 23:16:39', ''),
(829, 822, '20201130155133-download (7).jpg', '2020-10-21 23:18:49', ''),
(830, 809, '20201130180301-Richard-Mille-RM36-01-G-Sensor-Sebastien-Loeb-Front-Featured-image.jpg', NULL, ''),
(831, 809, '20201130180334-76677975842380.jpg', NULL, ''),
(832, 187, '20201026192207-Rolex-116900 AirKing.jpg', NULL, ''),
(833, 186, '20201026192953-Rolex-Sea-Dweller-126600-Black-front.jpg', NULL, ''),
(834, 185, '20201026193903-Rolex-116400-GV Milgauss.jpg', NULL, ''),
(835, 0, '20201027132317-rolex 116508 green dial.jpg', NULL, ''),
(836, 0, '20201027134359-Rolex 116518 or jaune chrono noir.jpg', NULL, ''),
(837, 823, '20201110115245-background-image.png', '2020-11-10 16:52:45', ''),
(838, 823, '20201110120027-background-image.png', NULL, ''),
(839, 0, '20201130164651-unnamed (19).jpg', NULL, ''),
(840, 0, '20201130181919-IW323105-iwc-vintage-aquatimer-automatic-platinum (1).jpg', NULL, ''),
(841, 0, '20201130182950-download (5).jpg', NULL, ''),
(842, 0, '20201201132512-download (63).jpg', NULL, ''),
(843, 0, '20201201172035-images (16).jpg', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `product_item_picture`
--

CREATE TABLE `product_item_picture` (
  `id` bigint(20) NOT NULL,
  `product_item_id` int(11) NOT NULL,
  `url` int(11) NOT NULL,
  `createddatetime` datetime NOT NULL DEFAULT current_timestamp(),
  `createdby` bigint(20) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `promocode`
--

CREATE TABLE `promocode` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `merchant` varchar(255) DEFAULT NULL,
  `promotype` varchar(255) DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `application` varchar(255) DEFAULT NULL,
  `promocodelimit` varchar(255) DEFAULT NULL,
  `limitperuser` varchar(255) DEFAULT NULL,
  `maxdiscount` varchar(255) DEFAULT NULL,
  `valid_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promocode`
--

INSERT INTO `promocode` (`id`, `name`, `area`, `merchant`, `promotype`, `discount`, `application`, `promocodelimit`, `limitperuser`, `maxdiscount`, `valid_date`, `created_at`, `updated_at`) VALUES
(1, 'FIRSTPROMO', 'philippines', 'express', 'type', '50', 'Get 50% off on first Order', '100', '1', '100', '2021-12-31', '2021-10-11 14:32:07', '2021-10-11 14:32:07'),
(2, 'SECONDPROMO', 'philippines', 'express', 'type', '50', 'Get 50% off on first Order', '100', '1', '100', '2021-12-31', '2021-10-11 14:32:07', '2021-10-11 14:32:07'),
(3, 'THIRDPROMO', 'philippines', 'express', 'type', '50', 'Get 50% off on first Order', '100', '1', '100', '2021-12-31', '2021-10-11 14:32:07', '2021-10-11 14:32:07'),
(4, '4th PROMO', 'philippines', 'express', 'type', '50', 'Get 50% off on first Order', '100', '1', '100', '2021-12-31', '2021-10-11 14:32:07', '2021-10-11 14:32:07'),
(5, '5th PROMO', 'philippines', 'express', 'type', '50', 'Get 50% off on first Order', '100', '1', '100', '2021-12-31', '2021-10-11 14:32:07', '2021-10-11 14:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
(1, 'Abra'),
(2, 'Agusan del Norte'),
(3, 'Agusan del Sur'),
(4, 'Aklan'),
(5, 'Albay'),
(6, 'Antique'),
(7, 'Apayao'),
(8, 'Aurora'),
(9, 'Basilan'),
(10, 'Bataan'),
(11, 'Batanes'),
(12, 'Batangas'),
(13, 'Benguet'),
(14, 'Biliran'),
(15, 'Bohol'),
(16, 'Bukidnon'),
(17, 'Bulacan'),
(18, 'Cagayan'),
(19, 'Camarines Norte'),
(20, 'Camarines Sur'),
(21, 'Camiguin'),
(22, 'Capiz'),
(23, 'Catanduanes'),
(24, 'Cavite'),
(25, 'Cebu'),
(26, 'Compostela Valley'),
(27, 'Cotabato'),
(28, 'Davao del Norte'),
(29, 'Davao del Sur'),
(30, 'Davao Oriental'),
(31, 'Eastern Samar'),
(32, 'Guimaras'),
(33, 'Ifugao'),
(34, 'Ilocos Norte'),
(35, 'Ilocos Sur'),
(36, 'Iloilo'),
(37, 'Isabela'),
(38, 'Kalinga'),
(39, 'La Union'),
(40, 'Laguna'),
(41, 'Lanao del Norte'),
(42, 'Lanao del Sur'),
(43, 'Leyte'),
(44, 'Maguindanao'),
(45, 'Marinduque'),
(46, 'Masbate'),
(47, 'Metro Manila'),
(48, 'Misamis Occidental'),
(49, 'Misamis Oriental'),
(50, 'Mountain Province'),
(51, 'Negros Occidental'),
(52, 'Negros Oriental'),
(53, 'Northern Samar'),
(54, 'Nueva Ecija'),
(55, 'Nueva Vizcaya'),
(56, 'Occidental Mindoro'),
(57, 'Oriental Mindoro'),
(58, 'Palawan'),
(59, 'Pampanga'),
(60, 'Pangasinan'),
(61, 'Quezon'),
(62, 'Quirino'),
(63, 'Rizal'),
(64, 'Romblon'),
(65, 'Samar'),
(66, 'Sarangani'),
(67, 'Siquijor'),
(68, 'Sorsogon'),
(69, 'South Cotabato'),
(70, 'Southern Leyte'),
(71, 'Sultan Kudarat'),
(72, 'Sulu'),
(73, 'Surigao del Norte'),
(74, 'Surigao del Sur'),
(75, 'Tarlac'),
(76, 'Tawi-Tawi'),
(77, 'Zambales'),
(78, 'Zamboanga del Norte'),
(79, 'Zamboanga del Sur'),
(80, 'Zamboanga Sibugay');

-- --------------------------------------------------------

--
-- Table structure for table `reference_codemaster`
--

CREATE TABLE `reference_codemaster` (
  `id` int(11) NOT NULL,
  `refid` int(11) NOT NULL,
  `recode` varchar(100) NOT NULL,
  `issued` tinyint(1) NOT NULL,
  `usedbyuserid` int(11) NOT NULL,
  `createddatetime` datetime NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reference_codemaster`
--

INSERT INTO `reference_codemaster` (`id`, `refid`, `recode`, `issued`, `usedbyuserid`, `createddatetime`, `created_at`, `updated_at`) VALUES
(1, 1, 'TESTCODE', 1, 1, '2021-07-31 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `refer_code`
--

CREATE TABLE `refer_code` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resturentmaster`
--

CREATE TABLE `resturentmaster` (
  `resturentid` bigint(20) NOT NULL,
  `resturentname` bigint(20) NOT NULL,
  `rating` int(11) NOT NULL,
  `address` varchar(400) NOT NULL,
  `reviewcount` int(11) NOT NULL,
  `opentime` varchar(200) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createddatetime` datetime NOT NULL,
  `latitude` decimal(10,0) NOT NULL,
  `longitude` decimal(10,0) NOT NULL,
  `zipcode` varchar(100) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `search_driver`
--

CREATE TABLE `search_driver` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `pickup_id` int(11) NOT NULL,
  `km` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `color`, `type`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'company', 'upupdate', 'Select', '20210923190824-4wheeler.png', '2021-09-23 18:42:39', '2021-09-23 13:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `service_area`
--

CREATE TABLE `service_area` (
  `id` int(11) NOT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) NOT NULL,
  `vehicle_service` varchar(255) NOT NULL,
  `driver_doc` text NOT NULL,
  `vehicle_doc` text NOT NULL,
  `driver_minbal` varchar(255) NOT NULL,
  `delivery_area` varchar(255) NOT NULL,
  `max_tollprice` varchar(255) NOT NULL,
  `bill_method` varchar(255) NOT NULL,
  `latitute` varchar(255) DEFAULT NULL,
  `longitute` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_area`
--

INSERT INTO `service_area` (`id`, `service_name`, `country`, `area`, `timezone`, `vehicle_service`, `driver_doc`, `vehicle_doc`, `driver_minbal`, `delivery_area`, `max_tollprice`, `bill_method`, `latitute`, `longitute`, `created_at`, `updated_at`) VALUES
(1, 'Dura Express', 'PHILIPPINES', 'Metro Mani', '169', 'Motercycle1', 'driver_doc-1632481487.jpg', 'vehicle_doc-1632481487.jpg', '', '', '', '', '', '', '2021-09-24 16:34:47', '2021-09-24 16:34:47'),
(4, 'Dura Express', 'PHILIPPINES', 'Metro Cebu', '169', 'Motercycle', 'driver_doc-1632481552.jpg', 'vehicle_doc-1632481552.jpg', '', '', '', '', '', '', '2021-09-24 16:35:52', '2021-09-24 16:35:52'),
(6, 'Dura Express', 'PHILIPPINES', 'Metro Dava', '169', 'Motercycle', 'driver_doc-1632481652.jpg', 'vehicle_doc-1632481652.jpg', '', '', '', '', '', '', '2021-09-24 16:37:32', '2021-09-24 16:37:32'),
(7, 'Dura Express', 'PHILIPPINES', 'Cagayan De', '169', 'Motercycle1', 'driver_doc-1632481726.jpg', 'vehicle_doc-1632481726.jpg', '', '', '', '', '', '', '2021-09-24 16:38:46', '2021-09-24 16:38:46'),
(9, 'Dura Express', 'PHILIPPINES', 'Baguio City', '169', 'Motercycle', 'driver_doc-1632481834.jpg', 'vehicle_doc-1632481834.jpg', '', '', '', '', '', '', '2021-09-24 16:40:34', '2021-09-24 16:40:34'),
(10, 'Dura Express', 'INDIA', 'Mohali', 'INDIA', 'Motercycle', 'driver_doc-1630146570.jpg', 'vehicle_doc-1630146570.jpg', '', '', '', '', '', '', '2021-08-28 15:59:30', '2021-08-28 19:59:30'),
(11, 'Dura Express', 'INDIA', 'Chandigarh', 'INDIA', 'Motercycle', 'driver_doc-1630146570.jpg', 'vehicle_doc-1630146570.jpg', '', '', '', '', '', '', '2021-08-28 15:59:30', '2021-08-28 19:59:30'),
(12, 'Dura Eats', 'Cagayan De Oro', '12', 'Cagayan De Oro', 'Motercycle', 'driver_doc-1633342956.png', 'vehicle_doc-1633342954.png', '', '', '', '', '', '', '2021-10-04 15:52:34', '2021-10-04 15:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `shedulecancel`
--

CREATE TABLE `shedulecancel` (
  `id` int(11) NOT NULL,
  `pickup_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT 0,
  `driver_id` int(11) DEFAULT 0,
  `canceledby` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shedulecancel`
--

INSERT INTO `shedulecancel` (`id`, `pickup_id`, `user_id`, `driver_id`, `canceledby`, `reason`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'user', 'test', '2021-08-24 13:12:51', '2021-08-24 13:12:51'),
(2, 1, 1, 0, 'user', 'test', '2021-08-24 13:38:21', '2021-08-24 13:38:21'),
(3, 138, 149, 0, 'user', 'nothing', '2021-08-24 14:32:47', '2021-08-24 14:32:47'),
(4, 139, 149, 0, 'user', 'Test', '2021-08-24 14:58:40', '2021-08-24 14:58:40'),
(5, 1, 149, 0, 'user', 'cancel', '2021-08-27 11:22:15', '2021-08-27 11:22:15'),
(6, 3, 149, 0, 'user', 'cancel', '2021-08-27 11:48:00', '2021-08-27 11:48:00'),
(7, 4, 149, 0, 'user', 'text', '2021-08-27 12:09:30', '2021-08-27 12:09:30'),
(8, 5, 149, 0, 'user', 'test', '2021-08-27 16:44:23', '2021-08-27 16:44:23'),
(9, 8, 149, 0, 'user', 'no ', '2021-08-28 05:25:18', '2021-08-28 05:25:18'),
(10, 16, 149, 0, 'user', 'ht', '2021-08-28 05:58:07', '2021-08-28 05:58:07'),
(11, 18, 298, 0, 'user', 'ihh', '2021-09-07 18:13:37', '2021-09-07 18:13:37'),
(12, 30, 312, 0, 'user', 'no', '2021-09-08 07:33:45', '2021-09-08 07:33:45'),
(13, 70, 316, 0, 'user', 'no', '2021-09-10 10:59:02', '2021-09-10 10:59:02'),
(14, 225, 325, 0, 'user', 'text', '2021-09-20 16:20:04', '2021-09-20 16:20:04'),
(15, 75, 303, 0, 'user', 'cancelled', '2021-09-21 15:52:41', '2021-09-21 15:52:41'),
(16, 206, 303, 0, 'user', 'h tt ', '2021-09-21 15:56:34', '2021-09-21 15:56:34'),
(17, 206, 303, 0, 'user', 'h tt ', '2021-09-21 15:57:04', '2021-09-21 15:57:04'),
(18, 97, 303, 0, 'user', 'tbg t ', '2021-09-21 16:01:38', '2021-09-21 16:01:38'),
(19, 1, 1, 0, 'user', 'test', '2021-09-21 16:07:43', '2021-09-21 16:07:43'),
(20, 1, 1, 0, 'user', 'test', '2021-09-21 16:10:23', '2021-09-21 16:10:23'),
(21, 104, 303, 0, 'user', 'vyhvbkjgkj', '2021-09-21 16:17:51', '2021-09-21 16:17:51'),
(22, 260, 325, 0, 'user', 'test', '2021-09-22 11:02:38', '2021-09-22 11:02:38'),
(23, 261, 325, 0, 'user', 'test', '2021-09-22 11:03:36', '2021-09-22 11:03:36'),
(24, 262, 325, 0, 'user', 'test', '2021-09-22 11:04:42', '2021-09-22 11:04:42'),
(25, 265, 304, 0, 'user', 'test', '2021-09-22 13:41:40', '2021-09-22 13:41:40'),
(26, 265, 304, 0, 'user', 'test', '2021-09-22 13:42:43', '2021-09-22 13:42:43'),
(27, 265, 304, 0, 'user', 'test', '2021-09-22 13:43:41', '2021-09-22 13:43:41'),
(28, 265, 304, 0, 'user', 'test', '2021-09-22 13:47:35', '2021-09-22 13:47:35'),
(29, 265, 304, 0, 'user', 'test', '2021-09-22 13:56:14', '2021-09-22 13:56:14'),
(30, 269, 298, 0, 'user', 'dss', '2021-09-22 23:04:44', '2021-09-22 23:04:44'),
(31, 272, 298, 0, 'user', 'fd', '2021-09-22 23:19:27', '2021-09-22 23:19:27'),
(32, 283, 298, 0, 'user', 'ddd', '2021-09-23 01:32:44', '2021-09-23 01:32:44'),
(33, 289, 298, 0, 'user', 'dd', '2021-09-23 01:53:52', '2021-09-23 01:53:52'),
(34, 290, 298, 0, 'user', 'dd', '2021-09-23 01:57:37', '2021-09-23 01:57:37'),
(35, 367, 298, 0, 'user', 'ff', '2021-09-24 17:37:02', '2021-09-24 17:37:02'),
(36, 389, 325, 0, 'user', 'ddfdf', '2021-09-25 09:53:36', '2021-09-25 09:53:36'),
(37, 390, 325, 0, 'user', 'test\n', '2021-09-25 10:34:35', '2021-09-25 10:34:35'),
(38, 49, 298, 0, 'user', 'bb', '2021-09-30 10:54:36', '2021-09-30 10:54:36'),
(39, 64, 298, 0, 'user', 'dd', '2021-09-30 17:43:50', '2021-09-30 17:43:50'),
(40, 9, 334, 0, 'user', 'nn', '2021-10-06 17:10:44', '2021-10-06 17:10:44'),
(41, 51, 360, 0, 'user', 'Test', '2021-10-12 07:02:53', '2021-10-12 07:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `standard_rules`
--

CREATE TABLE `standard_rules` (
  `id` int(11) NOT NULL,
  `vehicle_id` varchar(255) NOT NULL,
  `service_area_id` varchar(255) NOT NULL,
  `delivery_type` varchar(255) NOT NULL,
  `service_type` varchar(255) NOT NULL,
  `base_fare` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `standard_rules`
--

INSERT INTO `standard_rules` (`id`, `vehicle_id`, `service_area_id`, `delivery_type`, `service_type`, `base_fare`, `status`, `created_at`, `updated_at`) VALUES
(0, '1', '1', '1', 'Dura Express', '50', 1, '2021-09-05 19:28:26', '2021-09-05 19:28:26'),
(0, '1', '1', '1', 'Dura Express, Dura Eats', '300', 1, '2021-10-06 16:30:23', '2021-10-06 16:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `upload_by` int(11) DEFAULT NULL,
  `status_name` varchar(255) DEFAULT NULL,
  `status` tinyint(11) DEFAULT NULL COMMENT '''0''=> Active, ''1''=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `upload_by`, `status_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Active', 0, '2020-09-09 07:15:35', ''),
(2, 1, 'Inactive', 0, '2020-09-09 07:15:43', ''),
(3, 1, 'No reply', 0, '2020-09-09 07:15:58', ''),
(4, 1, 'Contact Tomorrow', 0, '2020-09-09 07:16:24', '');

-- --------------------------------------------------------

--
-- Table structure for table `styles`
--

CREATE TABLE `styles` (
  `id` int(11) NOT NULL,
  `style_name` text NOT NULL,
  `description` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `styles`
--

INSERT INTO `styles` (`id`, `style_name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Driving', 'test1', 'inactive', '2021-08-24 15:17:44', '2021-08-28 19:56:18'),
(2, 'Casual drivein', 'add-Styles', 'active', '2021-08-24 15:53:40', '2021-08-24 15:53:40'),
(3, 'Driving1111', 'test111', 'inactive', '2021-08-28 19:57:01', '2021-08-28 19:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `tipprice`
--

CREATE TABLE `tipprice` (
  `id` int(11) NOT NULL,
  `currency` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipprice`
--

INSERT INTO `tipprice` (`id`, `currency`, `price`, `created_at`, `updated_at`) VALUES
(1, '', '10', '2021-07-18 13:18:34', ''),
(2, '', '20', '2021-07-18 13:18:34', ''),
(3, '', '30', '2021-07-18 13:18:50', ''),
(4, '', '40', '2021-07-18 13:18:50', ''),
(5, '', '50', '2021-07-18 13:19:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `transactionmaster`
--

CREATE TABLE `transactionmaster` (
  `transactiontypeId` int(11) NOT NULL,
  `description` varchar(300) NOT NULL,
  `remarks` varchar(500) NOT NULL,
  `inactive` tinyint(1) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactionmaster`
--

INSERT INTO `transactionmaster` (`transactiontypeId`, `description`, `remarks`, `inactive`, `created_at`, `updated_at`) VALUES
(1, 'Dura Express', 'Transaction due to dura express', 0, '', ''),
(2, 'Money added to wallet', 'Money load to wallet from bank', 0, '', ''),
(1, 'Dura Express', 'Transaction due to dura express', 0, '', ''),
(2, 'Money added to wallet', 'Money load to wallet from bank', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `units_measurement`
--

CREATE TABLE `units_measurement` (
  `id` int(11) NOT NULL,
  `unitName` text NOT NULL,
  `unitDescription` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `units_measurement`
--

INSERT INTO `units_measurement` (`id`, `unitName`, `unitDescription`, `status`, `created_at`, `updated_at`) VALUES
(1, 'mg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry......', 'inactive', '2021-08-18 12:31:17', '2021-08-28 16:44:36'),
(2, 'Mg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'active', '2021-08-18 12:31:17', '2021-08-18 12:31:17'),
(3, 'Mg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'active', '2021-08-18 18:01:29', '2021-08-21 19:58:46'),
(4, 'mlllll', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia', 'active', '2021-08-18 18:02:48', '2021-08-25 16:47:11'),
(5, 'mg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'inactive', '2021-08-28 16:45:34', '2021-08-28 16:45:59'),
(6, 'mg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'active', '2021-10-05 15:40:39', '2021-10-05 15:40:39'),
(7, 'mg..', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'inactive', '2021-10-06 14:55:33', '2021-10-06 14:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `used_promocode`
--

CREATE TABLE `used_promocode` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `promo_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `used_promocode`
--

INSERT INTO `used_promocode` (`id`, `user_id`, `promo_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-10-12 17:04:05', '2021-10-12 17:04:05'),
(2, 350, 1, '2021-10-12 17:06:24', '2021-10-12 17:06:24'),
(3, 361, 2, '2021-10-13 01:55:17', '2021-10-13 01:55:17'),
(4, 350, 2, '2021-10-13 06:11:42', '2021-10-13 06:11:42'),
(5, 350, 3, '2021-10-13 06:14:28', '2021-10-13 06:14:28'),
(6, 362, 1, '2021-10-13 08:17:16', '2021-10-13 08:17:16'),
(7, 362, 2, '2021-10-13 08:37:43', '2021-10-13 08:37:43'),
(8, 362, 3, '2021-10-13 08:58:42', '2021-10-13 08:58:42'),
(9, 362, 4, '2021-10-13 09:26:16', '2021-10-13 09:26:16'),
(10, 357, 3, '2021-10-13 14:41:09', '2021-10-13 14:41:09'),
(11, 357, 4, '2021-10-14 13:03:35', '2021-10-14 13:03:35');

-- --------------------------------------------------------

--
-- Table structure for table `useraddress`
--

CREATE TABLE `useraddress` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(300) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `contactperson` varchar(255) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `isdefault` enum('1','0') NOT NULL DEFAULT '0',
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraddress`
--

INSERT INTO `useraddress` (`id`, `user_id`, `address1`, `address2`, `country`, `contactperson`, `mobile`, `isdefault`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(2, 1, 'addressupdate', 'address2', NULL, 'test', '1234567890', '0', NULL, NULL, '2021-07-31 12:20:55', '2021-07-31 12:20:55'),
(3, 1, 'address1', 'address2', NULL, 'test', '1234567890', '0', NULL, NULL, '2021-08-06 10:41:01', '2021-08-06 10:41:01'),
(4, 1, 'address1', 'address2', NULL, 'test', '1234567890', '0', '30.703852800000003', '76.7076768', '2021-08-06 11:58:50', '2021-08-06 11:58:50'),
(12, 175, 'Noida phase 2', 'B block', NULL, 'Akash', '8882341937', '0', '28.5385481', '77.4075181', '2021-08-16 05:47:40', '2021-08-16 05:47:40'),
(13, 175, 'Noida phase 2', 'b block', NULL, 'Akash', '8882341937', '1', '28.5385481', '77.4075181', '2021-08-16 05:48:48', '2021-08-16 05:48:48'),
(14, 281, 'j-802 would Bank Barra Kanpur Nagar', 'j block', NULL, 'Akash', '8882341937', '1', '28.5333051', '77.4140122', '2021-08-31 11:07:35', '2021-08-31 11:07:35'),
(15, 288, 'j-802 would Bank Barra Kanpur', 'j block', NULL, 'Akash', '8882341937', '1', '28.6265329', '77.0280072', '2021-09-01 02:17:38', '2021-09-01 02:17:38'),
(22, 304, '1976  Makati Philippines 1233', '1976 M Reyes Street Bangkal', NULL, 'Robert', '09159851768', '1', '14.5448331', '121.0100527', '2021-09-10 23:55:19', '2021-09-10 23:55:19'),
(23, 304, 'Corinthian Executive Regency Bldg. (Condominium), Corinthian Executive Regency, Ortigas Center, Pasig, Metro Manila, Philippines', '2507 Corinthian Executive Regency Ortigas Center', NULL, 'Benjie Javier', '09081250030', '0', '14.5899067', '121.0616823', '2021-09-10 23:56:36', '2021-09-10 23:56:36'),
(25, 327, 'D-12 Gautam Buddh Nagar Noida India 201304', 'jrjejsjek', NULL, 'jdjejdjdj', '95956464949', '1', '28.5338455', '77.4140747', '2021-09-16 12:02:18', '2021-09-16 12:02:18'),
(30, 1, 'address1', 'address2', NULL, 'test', '1234567890', '0', '30.703852800000003', '76.7076768', '2021-09-18 19:10:48', '2021-09-18 19:10:48'),
(32, 1, 'address1', 'address2', NULL, 'test', '1234567890', '0', '30.703852800000003', '76.7076768', '2021-09-19 08:24:13', '2021-09-19 08:24:13'),
(33, 303, '21 C. Benitez Street, Quezon City, Metro Manila, Philippines', 'mohali', NULL, 'Aadesh Mishra', '07508516040', '0', '14.6114512', '121.0448013', '2021-09-19 08:47:49', '2021-09-19 09:06:43'),
(35, 303, '216 General Luis, Novaliches, Quezon City, Metro Manila, Philippines', 'srgdr', NULL, 'Aadesh Mishra', '07508516040', '0', '14.721707', '121.036082', '2021-09-19 08:53:32', '2021-09-19 09:07:04'),
(36, 303, '2365 Chromium, San Andres Bukid, Manila, Metro Manila, Philippines', 'rgest', NULL, 'Aadesh Mishra', '07508516040', '0', '14.573879', '121.005456', '2021-09-19 09:04:26', '2021-09-19 09:04:26'),
(37, 303, '2365 Chromium, San Andres Bukid, Manila, Metro Manila, Philippines', 'rgdf', NULL, 'Aadesh Mishra', '07508516040', '1', '14.573879', '121.005456', '2021-09-19 09:08:19', '2021-09-19 09:08:19'),
(41, 1, 'address1', 'address2', NULL, 'test', '1234567890', '1', '30.703852800000003', '76.7076768', '2021-10-02 05:58:22', '2021-10-02 05:58:22'),
(45, 325, 'address1', 'address2', NULL, 'AKASH SHARAN', '80924 36204', '1', '30.7038528', '76.7076768', '2021-10-02 06:54:34', '2021-10-02 07:33:48'),
(46, 325, ' Santa Clara County 94043 Mountain View United States', 'jjjjjjjjjjjjjj', NULL, 'Amar', '+919915643345', '0', '37.4008596', '-122.0977936', '2021-10-02 07:32:30', '2021-10-02 07:33:32'),
(47, 334, 'Dhawalgiri Apartments East Delhi Noida India 201301', '50b ', NULL, 'Abhishek Gupta Havells', '084 68 823022', '1', '28.6018591', '77.337683', '2021-10-03 05:30:47', '2021-10-03 05:30:47'),
(48, 333, '1600 Santa Clara County Mountain View United States 94043', 'test', NULL, 'AKASH SHARAN', '80924 36204', '0', '37.4219983333333', '-122.084', '2021-10-06 17:04:03', '2021-10-06 17:04:03'),
(49, 331, '1976  Makati Philippines 1233', '1976 Capt M Reyes Bangkal Makati City', NULL, 'Robert Martinez', '09159951768', '0', '14.5448386', '121.0100459', '2021-10-07 00:19:01', '2021-10-07 00:19:01'),
(50, 331, 'Prestige Tower, Emerald Avenue, Ortigas Center, Pasig, Metro Manila, Philippines', '704 Prestige Tower', NULL, 'Mark Dela Cruz', '+639609101462', '0', '14.5857773', '121.0622968', '2021-10-07 00:19:54', '2021-10-07 00:20:05'),
(51, 331, 'Corinthian Executive Regency, Ortigas Avenue, San Antonio, Pasig, Metro Manila, Philippines', '2507', NULL, 'Benigno Javier Jr', '09081250030', '0', '14.5899067', '121.0616823', '2021-10-07 00:21:17', '2021-10-07 00:21:17'),
(52, 331, '1976  Makati Philippines 1233', '1976 Capt M Reyes', NULL, 'Robert Martinez', '09159851768', '1', '14.5448389', '121.0100474', '2021-10-07 00:44:32', '2021-10-07 00:44:32'),
(53, 342, '1600 Santa Clara County Mountain View United States 94043', 'test', NULL, 'Addhar Update', '+91 62015 52679', '0', '37.4219983333333', '-122.084', '2021-10-07 16:43:44', '2021-10-07 16:43:44'),
(54, 339, 'Dhawalgiri Apartments East Delhi Noida India 201301', '50-b Dhawalgiri appartments sec-11 noida U.P. India', NULL, 'kashish gupta', '+919650936880', '1', '28.6018429', '77.3377263', '2021-10-07 17:51:25', '2021-10-07 17:51:25'),
(55, 339, 'Phase-2 Gautam Buddh Nagar 201305 Noida India', 'ARK NEWTECH , D-9 Hosiery Complex phase-2 Noida U.P. ', NULL, 'Ravi Agarwal', '09810134825', '0', '28.5332927912226', '77.413938716054', '2021-10-07 17:53:49', '2021-10-07 17:53:49'),
(56, 362, 'Manila, Metro Manila, Philippines', 'Gali no 1', NULL, 'Akash', '8882341937', '1', '14.5995124', '120.9842195', '2021-10-13 09:52:34', '2021-10-13 09:52:34'),
(57, 354, 'Dhawalgiri Apartments East Delhi Noida India 201301', 'home ', NULL, 'kashish', '9650936880', '1', '28.6018548', '77.3377315', '2021-10-13 16:44:09', '2021-10-13 16:44:09'),
(58, 354, 'Phase-2 Gautam Buddh Nagar 201305 Noida India', 'ARK NEWTECH', NULL, 'ravi', '9810134825', '0', '28.5332736452507', '77.4139605090022', '2021-10-13 16:45:47', '2021-10-13 16:45:47'),
(59, 357, '1976  Makati Philippines 1233', '1976 M Reyes Street Bangkal Makati City', NULL, 'Robert Martinez', '09159821765', '1', '14.5448322', '121.0100585', '2021-10-14 13:07:02', '2021-10-14 13:07:02'),
(60, 357, 'Corinthian Executive Regency, Ortigas Avenue, San Antonio, Pasig, Metro Manila, Philippines', '2507', NULL, 'Benigno Javier Jr', '091081250030', '0', '14.5899067', '121.0616823', '2021-10-14 13:07:59', '2021-10-14 13:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `userdocument`
--

CREATE TABLE `userdocument` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `frontimage` text DEFAULT NULL,
  `backimage` text DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdocument`
--

INSERT INTO `userdocument` (`id`, `user_id`, `document_id`, `frontimage`, `backimage`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 2, 'frontimage61125fc25024c-WhatsApp Image 2021-08-01 at 6.32.18 PM.jpeg', 'backimage61125f8803bc1-zero.png', 0, '2021-08-10 11:14:16', '2021-08-10 11:14:16'),
(4, 1, 1, 'frontimage61125f9bd2cf3-WhatsApp Image 2021-08-01 at 6.32.18 PM.jpeg', 'backimage61125faa3838a-zero.png', 0, '2021-08-10 11:14:35', '2021-08-10 11:14:35'),
(11, 149, 1, NULL, 'backimage611770808f74a-DocumentImage_backimage8o1Qy.jpg', 0, '2021-08-14 07:28:00', '2021-08-14 07:28:00'),
(15, 149, 4, NULL, 'backimage61177c1a3d204-DocumentImage_backimagew4AUG.jpg', 0, '2021-08-14 08:17:30', '2021-08-14 08:17:30'),
(16, 149, 3, 'frontimage6117852deb04b-DocumentImage_frontimageVU089.jpg', NULL, 0, '2021-08-14 08:56:13', '2021-08-14 08:56:13'),
(17, 196, 2, NULL, 'backimage6121723a5e04d-DocumentImage_backimageeji9r.jpg', 0, '2021-08-21 21:38:02', '2021-08-21 21:38:02'),
(18, 149, 2, 'frontimage612bb982a4e1f-DocumentImage_frontimagec8zut.jpg', NULL, 0, '2021-08-29 16:44:50', '2021-08-29 16:44:50'),
(19, 300, 1, 'frontimage6131b61e145b5-DocumentImage_frontimagedX5Iu.jpg', 'backimage6131b60e174ca-DocumentImage_backimageJxUNU.jpg', 0, '2021-09-03 05:43:42', '2021-09-03 05:43:42'),
(20, 300, 2, 'frontimage6131b631b87f1-DocumentImage_frontimageVY4Rk.jpg', 'backimage6131b63d62d85-DocumentImage_backimageQERtB.jpg', 0, '2021-09-03 05:44:17', '2021-09-03 05:44:17'),
(21, 312, 1, 'frontimage6138692254094-DocumentImage_frontimage5s9eI.jpg', 'backimage6138692e18073-DocumentImage_backimagei9MW3.jpg', 0, '2021-09-08 07:41:22', '2021-09-08 07:41:22'),
(22, 312, 2, 'frontimage6138693c4c8d4-DocumentImage_frontimageXtvAc.jpg', 'backimage61386944af384-DocumentImage_backimagenfvc5.jpg', 0, '2021-09-08 07:41:48', '2021-09-08 07:41:48'),
(23, 303, 1, 'frontimage6141b6f3c0e8a-DocumentImage_frontimage5Ey80.jpg', 'backimage6156c6433361b-DocumentImage_backimagerW9iR.jpg', 0, '2021-09-09 07:22:45', '2021-09-09 07:22:45'),
(25, 1, 3, 'frontimage613e17717790f-APK NewTech - Ou (1).png', NULL, 0, '2021-09-12 15:06:25', '2021-09-12 15:06:25'),
(26, 303, 4, NULL, 'backimage6141b71093036-DocumentImage_backimageXqrnh.jpg', 0, '2021-09-15 09:04:16', '2021-09-15 09:04:16'),
(27, 303, 2, NULL, 'backimage614214b3b30c2-DocumentImage_backimage4T8KG.jpg', 0, '2021-09-15 15:43:47', '2021-09-15 15:43:47'),
(28, 360, 1, 'frontimage61654a6fd4ee5-DocumentImage_frontimageKuE0c.jpg', 'backimage61654a7acddb8-DocumentImage_backimageHuvuU.jpg', 0, '2021-10-12 08:42:23', '2021-10-12 08:42:23'),
(29, 360, 2, 'frontimage61654a9895a38-DocumentImage_frontimagenC7Wi.jpg', 'backimage61654aa199d56-DocumentImage_backimageDMHl0.jpg', 0, '2021-10-12 08:43:04', '2021-10-12 08:43:04'),
(30, 362, 1, 'frontimage6166a999e42bf-DocumentImage_frontimage8tjOw.jpg', 'backimage6166a9a624bea-DocumentImage_backimageSyxKn.jpg', 0, '2021-10-13 09:40:41', '2021-10-13 09:40:41'),
(31, 362, 2, 'frontimage6166a9b282d89-DocumentImage_frontimage4bkqq.jpg', NULL, 0, '2021-10-13 09:41:06', '2021-10-13 09:41:06'),
(32, 362, 3, 'frontimage6166a9db870b3-DocumentImage_frontimage8BAG8.jpg', 'backimage6166a9ebb66e1-DocumentImage_backimagePI0S8.jpg', 0, '2021-10-13 09:41:47', '2021-10-13 09:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `view_password` varchar(250) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `users_role` enum('1','2','3','4','5') DEFAULT '1' COMMENT '''1''=>''Admin'', ''2''=>''White label'', ''3''=>''manager'', ''4''=>''employee, ''5''=>''Client''''',
  `upload_by` int(11) DEFAULT NULL,
  `white_label_id` int(11) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL COMMENT '0=>mail, 1=>femail, 2=>other',
  `bill` varchar(255) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_verified` enum('1','0') NOT NULL DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `referral_code` varchar(255) DEFAULT NULL,
  `referral_by` varchar(255) NOT NULL,
  `status` enum('0','1') DEFAULT '1' COMMENT '''1'' Active , ''0'' Inactive',
  `google` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `login_type` varchar(255) NOT NULL,
  `logged_in` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `password`, `view_password`, `name`, `facebook_id`, `google_id`, `country_code`, `users_role`, `upload_by`, `white_label_id`, `profile_image`, `email`, `country_id`, `city_id`, `address`, `phone`, `dob`, `gender`, `bill`, `passport`, `area`, `email_verified_at`, `is_verified`, `remember_token`, `referral_code`, `referral_by`, `status`, `google`, `facebook`, `login_type`, `logged_in`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '$2y$10$XPgJzLotQeNhZz8QmZpbkehGoNVB6W0CbkrB8zA5pVJInwMs/cb4O', '', 'SuperAdmin', NULL, NULL, '+91', '1', 0, NULL, '20200909165314-images.jfif', 'admin@gmail.com', 0, NULL, NULL, '7905848356', '1993-05-04', 0, NULL, NULL, NULL, '2021-10-18 17:53:22', '0', 'e20Ipc90lhmdjo8GAHfuHEwQl4UKJx4tED3t1O391vC2V0idTFN3zaalLLlF', 'e0mAb5f1', '', '1', NULL, NULL, '', 0, '2020-05-12 18:59:20', '2021-10-05 14:30:56'),
(348, 'Vivek', 'Nigam', '$2y$10$5sUdLY1cGZszSwNcPCz96.ShcaIwp8pEInMFSPnlZA5M3Ue4ZSCa.', NULL, NULL, NULL, NULL, '+91', '1', NULL, NULL, 'file6160055412ce6-User_Profile_t0HZj.jpg', 'viveklpu2011@gmail.com', 1, NULL, NULL, '7837459544', NULL, NULL, NULL, NULL, 'Metro Manila', '2021-10-12 10:07:08', '1', NULL, 'WsXN33Xe', '', '0', NULL, NULL, 'normal', 0, '2021-10-08 08:46:12', '2021-10-08 08:46:12'),
(349, 'Code Xamarin', '', '$2y$10$aR0lkkDs816/hGFp1FixFeE.WeBgZ3cAZ9Kw6CfyhBVCnqcndY4wS', NULL, NULL, NULL, '106276744334854137537', '+63', '1', NULL, NULL, NULL, 'amitsharan2017@gmail.com', 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-10-13 08:03:18', '0', NULL, 'mctsOjDT', '', '0', 'https://www.google.com/106276744334854137537', 'Not Linked', 'google', 0, '2021-10-08 15:48:55', '2021-10-08 15:48:55'),
(353, 'up', 'senior', '$2y$10$ukLYNKTxcmKO/Qk.Kkw17OglQ/upVDd8qSZxhBrxDOEAthoCUkq2S', NULL, NULL, NULL, NULL, '+91', '1', NULL, NULL, NULL, 'manish89798@gmail.com', 1, NULL, NULL, '8054251405', NULL, NULL, NULL, NULL, 'area', '2021-10-12 10:52:46', '1', NULL, 'CSCGsGf3', '', '0', NULL, NULL, 'normal', 0, '2021-10-10 07:12:15', '2021-10-10 07:12:15'),
(354, 'kashish gupta', '', '$2y$10$j3v5AGLT5FxNbCHwkj0cvu.C0ZE8pbDpjmjj0taK3EYUe3UE3OYp.', NULL, 'kashish gupta', NULL, '106201911534606431259', '+91', '1', NULL, NULL, 'photo61647565b9d7c-ProductImage_I33kT.jpg', 'kashishtheleader@gmail.com', 13, NULL, NULL, '9650936880', NULL, NULL, NULL, NULL, NULL, '2021-10-13 16:43:18', '1', NULL, 'ZFo1qx5L', '', '0', 'https://www.google.com/106201911534606431259', 'https://www.facebook.com/10224128872522275', 'google', 0, '2021-10-11 13:56:21', '2021-10-11 13:56:21'),
(356, 'Amit', 'Sharan', '$2y$10$eTyQiBqkzuJj8baOiCRN.u9sR83wh6UyDY43c8fxE85l7ZHtw/uJa', NULL, NULL, '6218816388190865', NULL, '+91', '1', NULL, NULL, NULL, 'amit.sharan2013@gmail.com', 1, NULL, NULL, '7307177490', NULL, NULL, NULL, NULL, NULL, '2021-10-17 06:18:59', '1', NULL, 'fFlrKLM0', '', '0', NULL, 'https://www.facebook.com/6218816388190865', 'facebook', 0, '2021-10-11 16:29:15', '2021-10-11 16:29:15'),
(357, 'Robert Martinez', '', '$2y$10$E4fwoUYW1N8.nCy5oO0lNO/HUcPu3o.utZl4OUCQXihjEkMOiiw56', NULL, NULL, NULL, '112990478215675153837', '+63', '1', NULL, NULL, NULL, 'robertaristamartinez@gmail.com', 1, NULL, NULL, '9159851768', NULL, NULL, NULL, NULL, NULL, '2021-10-11 22:55:54', '1', NULL, 'hbazUcF8', '', '0', 'https://www.google.com/112990478215675153837', 'https://www.facebook.com/5025380970810122', 'google', 0, '2021-10-11 22:54:52', '2021-10-11 22:54:52'),
(358, 'Robert', 'Martinez', '$2y$10$AkirtzkFLgCDRAEdTUU4jePb44q1C8.aH46x4tWcJSaNU38n33jJO', NULL, NULL, '5025380970810122', NULL, '+63', '1', NULL, NULL, NULL, 'rmartinez@live.com.ph', 1, NULL, NULL, '9190735569', NULL, NULL, NULL, NULL, NULL, '2021-10-14 13:18:52', '1', NULL, '8mApyaw4', '', '0', 'https://www.google.com/112990478215675153837', 'https://www.facebook.com/5025380970810122', 'facebook', 0, '2021-10-12 05:10:31', '2021-10-12 05:10:31'),
(361, 'Ezekiel Jacinto', '', '$2y$10$h8MjihvgK1NJ6Sl05.oj6eJzrhh1ppr3c3Y6Fo2zbELVkyt8JFLru', NULL, NULL, NULL, '116336639618538566257', '+63', '1', NULL, NULL, NULL, 'ezekieljacintowww@gmail.com', 1, NULL, NULL, '9158291795', NULL, NULL, NULL, NULL, NULL, '2021-10-13 01:06:56', '1', NULL, 'cnLyGZPf', '', '0', 'https://www.google.com/116336639618538566257', 'Not Linked', 'google', 0, '2021-10-13 01:06:23', '2021-10-13 01:06:23'),
(362, 'Akash', 'Sharma', '$2y$10$zVV2UBJ0.tvQC.YSlDM3oOkPAm99PzIUC59pIf9v2v.SSy9Cj/mca', NULL, 'Akash', NULL, NULL, '+91', '1', NULL, NULL, 'photo6166a95bc224e-ProductImage_ZD1gj.jpg', 'as6017651@gmail.com', 13, NULL, NULL, '8882341937', NULL, NULL, NULL, NULL, 'Noida', '2021-10-13 10:32:05', '1', NULL, 'LAeSxqzI', '', '0', 'https://www.google.com/103538572581962909157', '', 'normal', 0, '2021-10-13 06:58:11', '2021-10-13 06:58:11'),
(363, 'Akash', 'Sharma', '$2y$10$cGf8CRZYtOSpZwzgXX6y6.mKsO4gKDCzAELDb/YvRhnDvdMqs.jZG', NULL, NULL, '190032909932375', NULL, '+91', '1', NULL, NULL, NULL, 'akashvlog00@gmail.com', 1, NULL, NULL, '9532152051', NULL, NULL, NULL, NULL, NULL, '2021-10-13 07:07:27', '1', NULL, 'nD6vACjC', '', '0', '', 'https://www.facebook.com/190032909932375', 'facebook', 0, '2021-10-13 07:06:20', '2021-10-13 07:06:20'),
(364, 'akash sharma', '', '$2y$10$r.zht9Uqs9gDWMlkb3Xp8uMkV5mEY42nUoliaGSLdA33wHZungE1q', NULL, NULL, NULL, '106073550060704320454', '+63', '1', NULL, NULL, NULL, 'akashsharma@arknewtech.com', 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-10-13 07:28:31', '0', NULL, '9EfSDru7', '', '0', 'https://www.google.com/106073550060704320454', '', 'google', 0, '2021-10-13 07:28:28', '2021-10-13 07:28:28'),
(365, 'Taster', 'Arknewtech', '$2y$10$GKcX3DySo3Grza7nmFlO4OWN4z3ZCt4UsyBzTpZOpsQvQtJi1RDLC', NULL, NULL, '125697329823314', NULL, '+91', '1', NULL, NULL, NULL, 'testerarknewtech@gmail.com', 13, NULL, NULL, '9532152052', NULL, NULL, NULL, NULL, NULL, '2021-10-17 15:31:28', '1', NULL, 'yNkLYOla', '', '0', '', 'https://www.facebook.com/125697329823314', 'facebook', 0, '2021-10-13 07:35:04', '2021-10-13 07:35:04'),
(366, 'Benigno Javier Jr.', '', '$2y$10$m3TLyJ0VkwVOn7t9WwT17uyvhGKUnkkstiqV0WtXL6lANIQiz0vSK', NULL, NULL, NULL, '107036251170544710185', '+63', '1', NULL, NULL, NULL, 'benjievp@gmail.com', 1, NULL, NULL, '9081250030', NULL, NULL, NULL, NULL, NULL, '2021-10-13 08:56:45', '1', NULL, 'B2g83joq', '', '0', 'https://www.google.com/107036251170544710185', '', 'google', 0, '2021-10-13 08:54:06', '2021-10-13 08:54:06'),
(367, 'T', 'Sharan', '$2y$10$P4RyZjxU.DWAlz/8v689quqJ1.6mqiFPrSq838d/DV5DmOfW00P8K', NULL, NULL, NULL, NULL, '+91', '1', NULL, NULL, 'file6166b387cd8eb-User_Profile_qR30Z.jpg', 't@t.com', 6, NULL, NULL, '7979948924', NULL, NULL, NULL, NULL, 'Zamboanga City', '2021-10-13 10:24:23', '1', NULL, 'sYw8SSQ7', '', '0', NULL, NULL, 'normal', 0, '2021-10-13 10:23:03', '2021-10-13 10:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `users_otp`
--

CREATE TABLE `users_otp` (
  `id` int(11) NOT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `otp` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `email` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_otp`
--

INSERT INTO `users_otp` (`id`, `country_code`, `phone`, `otp`, `created`, `email`, `created_at`, `updated_at`) VALUES
(761, NULL, NULL, 3164, '2021-09-08 10:28:22', 'viveklpu2011@gmail.com', '2021-09-08 10:28:22', '2021-09-08 10:28:22'),
(762, NULL, NULL, 3105, '2021-09-08 10:29:06', 'viveklpu2011@gmail.com', '2021-09-08 10:29:06', '2021-09-08 10:29:06'),
(764, '+63', '1234567898', 9318, '2021-09-08 10:43:31', NULL, '2021-09-08 10:43:31', '2021-09-08 10:43:31'),
(765, '+63', '1234567898', 1194, '2021-09-08 10:44:01', NULL, '2021-09-08 10:44:01', '2021-09-08 10:44:01'),
(766, '+63', '1234567898', 2819, '2021-09-08 10:48:25', NULL, '2021-09-08 10:48:25', '2021-09-08 10:48:25'),
(767, '+63', '1234567898', 2845, '2021-09-08 10:48:38', NULL, '2021-09-08 10:48:38', '2021-09-08 10:48:38'),
(768, '+63', '1234567898', 6319, '2021-09-08 10:50:34', NULL, '2021-09-08 10:50:34', '2021-09-08 10:50:34'),
(769, '+63', '1234567898', 6987, '2021-09-08 10:53:24', NULL, '2021-09-08 10:53:24', '2021-09-08 10:53:24'),
(770, '+63', '1234567898', 9843, '2021-09-08 10:54:19', NULL, '2021-09-08 10:54:19', '2021-09-08 10:54:19'),
(771, '+63', '1234567898', 939, '2021-09-08 10:54:39', NULL, '2021-09-08 10:54:39', '2021-09-08 10:54:39'),
(772, '+63', '1234567898', 4018, '2021-09-08 10:54:43', NULL, '2021-09-08 10:54:43', '2021-09-08 10:54:43'),
(773, '+63', '1234567898', 2889, '2021-09-08 10:54:53', NULL, '2021-09-08 10:54:53', '2021-09-08 10:54:53'),
(774, '+63', '1234567898', 4056, '2021-09-08 10:55:11', NULL, '2021-09-08 10:55:11', '2021-09-08 10:55:11'),
(776, '+63', '1234567898', 5224, '2021-09-08 10:56:26', NULL, '2021-09-08 10:56:26', '2021-09-08 10:56:26'),
(777, '+63', '1234567898', 5715, '2021-09-08 10:57:38', NULL, '2021-09-08 10:57:38', '2021-09-08 10:57:38'),
(779, '+63', '1234567898', 1276, '2021-09-08 11:02:27', NULL, '2021-09-08 11:02:27', '2021-09-08 11:02:27'),
(781, '+63', '1234567898', 2931, '2021-09-08 11:05:40', NULL, '2021-09-08 11:05:40', '2021-09-08 11:05:40'),
(864, NULL, NULL, 9577, '2021-09-10 08:53:09', '79799 48924', '2021-09-10 08:53:09', '2021-09-10 08:53:09'),
(875, NULL, NULL, 8013, '2021-09-10 10:25:07', 'akashsharma@arknewtech.com', '2021-09-10 10:25:07', '2021-09-10 10:25:07'),
(878, NULL, NULL, 3536, '2021-09-10 10:32:54', 'as6017651@gmail.com', '2021-09-10 10:32:54', '2021-09-10 10:32:54'),
(879, NULL, NULL, 2844, '2021-09-10 10:35:26', 'as6017651@gmail.com', '2021-09-10 10:35:26', '2021-09-10 10:35:26'),
(892, '+91', '7678160324', 8074, '2021-09-15 07:59:46', '7678160324', '2021-09-15 07:59:46', '2021-09-15 07:59:46'),
(894, '+91', '7678160324', 8888, '2021-09-15 08:07:44', '7678160324', '2021-09-15 08:07:44', '2021-09-15 08:07:44'),
(906, '+91', '7999532145', 4852, '2021-09-20 14:57:13', '7999532145', '2021-09-20 14:57:13', '2021-09-20 14:57:13'),
(915, '+91', '4125369856', 6380, '2021-09-22 05:49:33', '4125369856', '2021-09-22 05:49:33', '2021-09-22 05:49:33'),
(916, '+91', '4125369856', 1593, '2021-09-22 05:49:45', '4125369856', '2021-09-22 05:49:45', '2021-09-22 05:49:45'),
(917, '+91', '4125369856', 6069, '2021-09-22 05:50:07', '4125369856', '2021-09-22 05:50:07', '2021-09-22 05:50:07'),
(918, '+91', '4125369856', 7052, '2021-09-22 05:50:35', '4125369856', '2021-09-22 05:50:35', '2021-09-22 05:50:35'),
(923, '+91', '52369652369', 1962, '2021-09-23 09:56:05', '52369652369', '2021-09-23 09:56:05', '2021-09-23 09:56:05'),
(924, '+91', '52369652369', 3547, '2021-09-23 09:56:16', '52369652369', '2021-09-23 09:56:16', '2021-09-23 09:56:16'),
(925, '+91', '1236985470', 7088, '2021-09-23 09:58:21', '1236985470', '2021-09-23 09:58:21', '2021-09-23 09:58:21'),
(926, '+91', '1236985470', 5264, '2021-09-23 09:58:48', '1236985470', '2021-09-23 09:58:48', '2021-09-23 09:58:48'),
(927, '+91', '1236985470', 9876, '2021-09-23 10:00:07', '1236985470', '2021-09-23 10:00:07', '2021-09-23 10:00:07'),
(928, '+91', '9953693632', 6467, '2021-09-23 10:02:46', '9953693632', '2021-09-23 10:02:46', '2021-09-23 10:02:46'),
(942, NULL, '+918054251404', 598, '2021-09-23 10:15:16', NULL, '2021-09-23 10:15:16', '2021-09-23 10:15:16'),
(956, '+91', '9952369636', 1626, '2021-09-23 11:43:11', '9952369636', '2021-09-23 11:43:11', '2021-09-23 11:43:11'),
(957, '+91', '9952369636', 9463, '2021-09-23 11:45:15', '9952369636', '2021-09-23 11:45:15', '2021-09-23 11:45:15'),
(965, NULL, '+918054251404', 2077, '2021-09-23 15:36:59', NULL, '2021-09-23 15:36:59', '2021-09-23 15:36:59'),
(966, NULL, '08054251404', 4533, '2021-09-23 15:37:38', NULL, '2021-09-23 15:37:38', '2021-09-23 15:37:38'),
(967, NULL, NULL, 5415, '2021-09-23 15:38:00', '+91 8054251404', '2021-09-23 15:38:00', '2021-09-23 15:38:00'),
(968, NULL, NULL, 8582, '2021-09-23 15:38:35', '+91 9838484911', '2021-09-23 15:38:35', '2021-09-23 15:38:35'),
(969, NULL, NULL, 9449, '2021-09-23 18:12:38', '+91 8054251404', '2021-09-23 18:12:38', '2021-09-23 18:12:38'),
(971, NULL, NULL, 4131, '2021-09-23 18:13:20', '+91 8054251404', '2021-09-23 18:13:20', '2021-09-23 18:13:20'),
(973, NULL, NULL, 2527, '2021-09-24 07:26:03', '+91 8054251404', '2021-09-24 07:26:03', '2021-09-24 07:26:03'),
(975, NULL, NULL, 1199, '2021-09-24 08:43:00', '+91 8054251404', '2021-09-24 08:43:00', '2021-09-24 08:43:00'),
(979, '+91', '9708364900', 1669, '2021-09-24 12:31:57', '9708364900', '2021-09-24 12:31:57', '2021-09-24 12:31:57'),
(981, '+91', '7385029799', 9876, '2021-09-24 15:29:57', '7385029799', '2021-09-24 15:29:57', '2021-09-24 15:29:57'),
(984, '+91', '4123652365', 4016, '2021-09-25 06:24:37', '4123652365', '2021-09-25 06:24:37', '2021-09-25 06:24:37'),
(985, '+91', '4123652365', 8081, '2021-09-25 06:25:00', '4123652365', '2021-09-25 06:25:00', '2021-09-25 06:25:00'),
(988, '+91', '9953696119', 4106, '2021-09-26 05:58:21', '9953696119', '2021-09-26 05:58:21', '2021-09-26 05:58:21'),
(989, '+91', '9953696119', 5814, '2021-09-26 06:10:19', '9953696119', '2021-09-26 06:10:19', '2021-09-26 06:10:19'),
(990, '+91', '9953696119', 6496, '2021-09-26 06:13:06', '9953696119', '2021-09-26 06:13:06', '2021-09-26 06:13:06'),
(991, '+91', '9953696119', 9205, '2021-09-26 06:22:14', '9953696119', '2021-09-26 06:22:14', '2021-09-26 06:22:14'),
(992, '+91', '9953696119', 5094, '2021-09-26 06:27:19', '9953696119', '2021-09-26 06:27:19', '2021-09-26 06:27:19'),
(994, '+63', '9497979979', 1923, '2021-09-28 04:34:44', '9497979979', '2021-09-28 04:34:44', '2021-09-28 04:34:44'),
(996, '+63', '9494846164', 8480, '2021-09-28 04:39:30', '9494846164', '2021-09-28 04:39:30', '2021-09-28 04:39:30'),
(1001, '+63', '1234567890', 8841, '2021-09-30 16:22:24', NULL, '2021-09-30 16:22:24', '2021-09-30 16:22:24'),
(1002, '+63', '5234567890', 8561, '2021-09-30 16:22:37', NULL, '2021-09-30 16:22:37', '2021-09-30 16:22:37'),
(1003, '+63', '6234567890', 5174, '2021-09-30 16:22:43', NULL, '2021-09-30 16:22:43', '2021-09-30 16:22:43'),
(1004, '+63', '9234567890', 9534, '2021-09-30 16:22:48', NULL, '2021-09-30 16:22:48', '2021-09-30 16:22:48'),
(1005, '+63', '9627204181', 5769, '2021-09-30 16:23:04', NULL, '2021-09-30 16:23:04', '2021-09-30 16:23:04'),
(1006, '+91', '9627204181', 3988, '2021-09-30 16:23:56', NULL, '2021-09-30 16:23:56', '2021-09-30 16:23:56'),
(1015, '+63', '1111111111', 9922, '2021-10-02 12:55:58', NULL, '2021-10-02 12:55:58', '2021-10-02 12:55:58'),
(1016, '+63', '111111555551111', 8080, '2021-10-02 12:56:07', NULL, '2021-10-02 12:56:07', '2021-10-02 12:56:07'),
(1017, '+91', '111111555551111', 6289, '2021-10-02 12:56:14', NULL, '2021-10-02 12:56:14', '2021-10-02 12:56:14'),
(1018, '+91', '611111555551111', 7131, '2021-10-02 12:56:19', NULL, '2021-10-02 12:56:19', '2021-10-02 12:56:19'),
(1028, '+91', '9627204181', 9650, '2021-10-05 19:51:40', NULL, '2021-10-05 19:51:40', '2021-10-05 19:51:40'),
(1030, '+63', '9953696119', 6228, '2021-10-06 12:59:44', '9953696119', '2021-10-06 12:59:44', '2021-10-06 12:59:44'),
(1034, '+63', '9635269855', 4753, '2021-10-06 14:11:12', '9635269855', '2021-10-06 14:11:12', '2021-10-06 14:11:12'),
(1035, '+63', '6352698566', 8267, '2021-10-06 14:12:44', '6352698566', '2021-10-06 14:12:44', '2021-10-06 14:12:44'),
(1036, '+63', '6352698566', 8545, '2021-10-06 14:13:01', '6352698566', '2021-10-06 14:13:01', '2021-10-06 14:13:01'),
(1037, '+63', '6523696855', 2160, '2021-10-06 14:15:38', '6523696855', '2021-10-06 14:15:38', '2021-10-06 14:15:38'),
(1038, '+63', '6523696855', 1421, '2021-10-06 14:15:50', '6523696855', '2021-10-06 14:15:50', '2021-10-06 14:15:50'),
(1039, '+63', '6523696855', 1176, '2021-10-06 14:16:20', '6523696855', '2021-10-06 14:16:20', '2021-10-06 14:16:20'),
(1040, '+63', '6523696855', 7668, '2021-10-06 14:16:52', '6523696855', '2021-10-06 14:16:52', '2021-10-06 14:16:52'),
(1045, '+63', '9159951768', 7947, '2021-10-07 00:24:23', NULL, '2021-10-07 00:24:23', '2021-10-07 00:24:23'),
(1046, '+63', '9159951768', 7332, '2021-10-07 00:24:41', NULL, '2021-10-07 00:24:41', '2021-10-07 00:24:41'),
(1047, '+63', '9459851768', 7197, '2021-10-07 00:34:36', NULL, '2021-10-07 00:34:36', '2021-10-07 00:34:36'),
(1069, '+63', '962720415155666', 8508, '2021-10-07 19:32:50', NULL, '2021-10-07 19:32:50', '2021-10-07 19:32:50'),
(1070, '+63', '9627204181', 310, '2021-10-07 19:33:53', NULL, '2021-10-07 19:33:53', '2021-10-07 19:33:53'),
(1071, '+91', '9627204181', 8397, '2021-10-07 19:34:16', NULL, '2021-10-07 19:34:16', '2021-10-07 19:34:16'),
(1120, '+63', '9159821768', 968, '2021-10-12 05:11:52', NULL, '2021-10-12 05:11:52', '2021-10-12 05:11:52'),
(1130, NULL, NULL, 4219, '2021-10-12 06:06:06', 'as6017651@gmail.co', '2021-10-12 06:06:06', '2021-10-12 06:06:06'),
(1131, NULL, NULL, 9098, '2021-10-12 06:06:36', 'as6017651@gmail.com', '2021-10-12 06:06:36', '2021-10-12 06:06:36'),
(1132, NULL, NULL, 1485, '2021-10-12 06:08:30', 'as6017651@gmail.com', '2021-10-12 06:08:30', '2021-10-12 06:08:30'),
(1133, NULL, NULL, 2872, '2021-10-12 06:10:35', 'as6017651@gmail.com', '2021-10-12 06:10:35', '2021-10-12 06:10:35'),
(1139, NULL, NULL, 9844, '2021-10-12 09:21:14', 'abcd@gmail.com', '2021-10-12 09:21:14', '2021-10-12 09:21:14'),
(1140, NULL, NULL, 3412, '2021-10-12 09:22:49', 'abcd@gmail.com', '2021-10-12 09:22:49', '2021-10-12 09:22:49'),
(1141, NULL, NULL, 8430, '2021-10-12 10:03:52', 'viveklpu2011@gmail.com', '2021-10-12 10:03:52', '2021-10-12 10:03:52'),
(1142, NULL, NULL, 7085, '2021-10-12 10:06:29', 'viveklpu2011@gmail.com', '2021-10-12 10:06:29', '2021-10-12 10:06:29'),
(1143, NULL, NULL, 282, '2021-10-12 10:07:46', 'as6017651@gmail.com', '2021-10-12 10:07:46', '2021-10-12 10:07:46'),
(1144, NULL, NULL, 6650, '2021-10-12 10:28:18', 'as6017651@gmail.com', '2021-10-12 10:28:18', '2021-10-12 10:28:18'),
(1145, NULL, NULL, 9055, '2021-10-12 10:43:11', 'as6017651@gmail.com', '2021-10-12 10:43:11', '2021-10-12 10:43:11'),
(1147, '+91', '9532182054', 8392, '2021-10-12 10:46:18', NULL, '2021-10-12 10:46:18', '2021-10-12 10:46:18'),
(1149, '+91', '888234137', 9226, '2021-10-12 10:56:52', NULL, '2021-10-12 10:56:52', '2021-10-12 10:56:52'),
(1150, '+91', '888234137', 1011, '2021-10-12 10:56:55', NULL, '2021-10-12 10:56:55', '2021-10-12 10:56:55'),
(1155, NULL, NULL, 4435, '2021-10-13 06:59:12', 'as6017651@gmail.com', '2021-10-13 06:59:12', '2021-10-13 06:59:12'),
(1156, NULL, NULL, 6986, '2021-10-13 07:01:12', 'as6017651@gmail.com', '2021-10-13 07:01:12', '2021-10-13 07:01:12'),
(1157, NULL, NULL, 2935, '2021-10-13 07:01:54', 'as6017651@gmail.com', '2021-10-13 07:01:54', '2021-10-13 07:01:54'),
(1158, NULL, NULL, 6155, '2021-10-13 07:02:07', 'as6017651@gmail.com', '2021-10-13 07:02:07', '2021-10-13 07:02:07'),
(1168, NULL, NULL, 5115, '2021-10-13 08:02:18', 'amitsharan2017@gmail.com', '2021-10-13 08:02:18', '2021-10-13 08:02:18'),
(1169, '+63', '0908150030', 337, '2021-10-13 08:54:49', NULL, '2021-10-13 08:54:49', '2021-10-13 08:54:49'),
(1170, '+63', '0908150030', 9107, '2021-10-13 08:55:57', NULL, '2021-10-13 08:55:57', '2021-10-13 08:55:57'),
(1172, NULL, NULL, 283, '2021-10-13 09:00:43', 'as6017651@gmail.com', '2021-10-13 09:00:43', '2021-10-13 09:00:43'),
(1182, '+91', '8882341934', 1335, '2021-10-13 10:18:22', NULL, '2021-10-13 10:18:22', '2021-10-13 10:18:22'),
(1189, '+91', '8882341937', 9954, '2021-10-13 10:56:30', NULL, '2021-10-13 10:56:30', '2021-10-13 10:56:30'),
(1190, '+91', '8882341937', 3562, '2021-10-13 10:56:41', NULL, '2021-10-13 10:56:41', '2021-10-13 10:56:41'),
(1193, '+91', '7837459544', 9876, '2021-10-15 11:37:16', '7837459544', '2021-10-15 11:37:16', '2021-10-15 11:37:16'),
(1194, '+91', '7837459544', 5478, '2021-10-16 06:32:30', '7837459544', '2021-10-16 06:32:30', '2021-10-16 06:32:30'),
(1195, '+91', '7837459544', 8056, '2021-10-16 06:33:20', '7837459544', '2021-10-16 06:33:20', '2021-10-16 06:33:20'),
(1196, '+91', '7837459544', 5164, '2021-10-16 06:35:05', '7837459544', '2021-10-16 06:35:05', '2021-10-16 06:35:05'),
(1197, '+91', '7837459544', 4820, '2021-10-16 06:40:31', '7837459544', '2021-10-16 06:40:31', '2021-10-16 06:40:31'),
(1198, '+91', '7837459544', 1953, '2021-10-16 06:42:43', '7837459544', '2021-10-16 06:42:43', '2021-10-16 06:42:43'),
(1199, '+91', '7837459544', 1987, '2021-10-16 07:28:05', '7837459544', '2021-10-16 07:28:05', '2021-10-16 07:28:05'),
(1200, '+91', '7837459544', 1626, '2021-10-16 07:29:13', '7837459544', '2021-10-16 07:29:13', '2021-10-16 07:29:13'),
(1201, '+91', '7837459544', 4244, '2021-10-16 07:31:47', '7837459544', '2021-10-16 07:31:47', '2021-10-16 07:31:47'),
(1202, '+91', '7837459544', 8592, '2021-10-16 07:33:24', '7837459544', '2021-10-16 07:33:24', '2021-10-16 07:33:24'),
(1203, '+91', '7837459544', 6487, '2021-10-16 07:33:34', '7837459544', '2021-10-16 07:33:34', '2021-10-16 07:33:34'),
(1204, '+91', '7837459544', 9119, '2021-10-16 07:34:00', '7837459544', '2021-10-16 07:34:00', '2021-10-16 07:34:00'),
(1205, '+91', '7837459544', 5675, '2021-10-16 07:34:41', '7837459544', '2021-10-16 07:34:41', '2021-10-16 07:34:41'),
(1206, '+91', '7837459544', 1597, '2021-10-16 07:35:09', '7837459544', '2021-10-16 07:35:09', '2021-10-16 07:35:09'),
(1207, '+91', '7837459544', 8388, '2021-10-16 07:37:32', '7837459544', '2021-10-16 07:37:32', '2021-10-16 07:37:32'),
(1208, '+91', '7837459544', 3580, '2021-10-16 07:42:38', '7837459544', '2021-10-16 07:42:38', '2021-10-16 07:42:38'),
(1209, '+91', '7837459544', 1279, '2021-10-16 07:49:30', '7837459544', '2021-10-16 07:49:30', '2021-10-16 07:49:30'),
(1210, '+91', '7837459544', 1986, '2021-10-16 07:54:24', '7837459544', '2021-10-16 07:54:24', '2021-10-16 07:54:24'),
(1211, '+91', '7837459544', 8768, '2021-10-16 07:54:40', '7837459544', '2021-10-16 07:54:40', '2021-10-16 07:54:40'),
(1212, '+91', '7837459544', 4726, '2021-10-16 08:12:11', '7837459544', '2021-10-16 08:12:11', '2021-10-16 08:12:11'),
(1213, '+91', '7837459544', 2993, '2021-10-16 08:16:11', '7837459544', '2021-10-16 08:16:11', '2021-10-16 08:16:11'),
(1214, '+91', '7837459544', 6979, '2021-10-16 08:19:46', '7837459544', '2021-10-16 08:19:46', '2021-10-16 08:19:46'),
(1215, '+91', '7837459544', 8801, '2021-10-16 08:27:22', '7837459544', '2021-10-16 08:27:22', '2021-10-16 08:27:22'),
(1216, '+91', '7837459544', 5559, '2021-10-16 08:42:22', '7837459544', '2021-10-16 08:42:22', '2021-10-16 08:42:22'),
(1217, '+91', '7837459544', 2185, '2021-10-16 08:55:16', '7837459544', '2021-10-16 08:55:16', '2021-10-16 08:55:16'),
(1218, '+91', '7837459544', 1829, '2021-10-16 08:58:59', '7837459544', '2021-10-16 08:58:59', '2021-10-16 08:58:59'),
(1219, '+91', '7837459544', 1848, '2021-10-16 09:06:11', '7837459544', '2021-10-16 09:06:11', '2021-10-16 09:06:11'),
(1220, '+91', '7837459544', 7136, '2021-10-16 09:12:09', '7837459544', '2021-10-16 09:12:09', '2021-10-16 09:12:09'),
(1222, '+91', '7837459544', 3575, '2021-10-16 09:22:38', '7837459544', '2021-10-16 09:22:38', '2021-10-16 09:22:38'),
(1231, '+91', '7837459544', 7468, '2021-10-17 09:35:15', '7837459544', '2021-10-17 09:35:15', '2021-10-17 09:35:15'),
(1237, '+91', '7537459544', 1987, '2021-10-17 12:06:53', '7537459544', '2021-10-17 12:06:53', '2021-10-17 12:06:53'),
(1239, '+91', '7837459544', 7523, '2021-10-17 12:14:14', '7837459544', '2021-10-17 12:14:14', '2021-10-17 12:14:14'),
(1241, '+91', '7837459544', 2316, '2021-10-17 12:26:29', '7837459544', '2021-10-17 12:26:29', '2021-10-17 12:26:29'),
(1242, '+91', '7837459544', 9464, '2021-10-17 12:26:41', '7837459544', '2021-10-17 12:26:41', '2021-10-17 12:26:41'),
(1243, '+91', '7837459544', 7588, '2021-10-17 12:27:03', '7837459544', '2021-10-17 12:27:03', '2021-10-17 12:27:03'),
(1246, '+91', '9532152052', 8060, '2021-10-18 17:48:22', NULL, '2021-10-18 17:48:22', '2021-10-18 17:48:22'),
(1247, '+91', '9532152052', 12, '2021-10-18 17:50:59', NULL, '2021-10-18 17:50:59', '2021-10-18 17:50:59'),
(1248, '+', '9532152052', 684, '2021-10-18 17:58:21', NULL, '2021-10-18 17:58:21', '2021-10-18 17:58:21'),
(1249, '+', '9532152052', 8849, '2021-10-18 17:58:26', NULL, '2021-10-18 17:58:26', '2021-10-18 17:58:26'),
(1250, '+', '9532152052', 1228, '2021-10-18 17:58:35', NULL, '2021-10-18 17:58:35', '2021-10-18 17:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `users_referralcode`
--

CREATE TABLE `users_referralcode` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `refereal_code` varchar(255) NOT NULL,
  `is_used` enum('0','1') NOT NULL DEFAULT '0',
  `valid_till` date NOT NULL,
  `used_date_at` varchar(35) DEFAULT NULL,
  `used_by` varchar(25) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `percent_discount` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_referralcode`
--

INSERT INTO `users_referralcode` (`id`, `user_id`, `refereal_code`, `is_used`, `valid_till`, `used_date_at`, `used_by`, `description`, `percent_discount`, `created_at`, `updated_at`) VALUES
(1, 1, 'e0mAb5f1', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(2, 141, 'n0Vn6q2L', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(3, 292, 'XqxTtcg1', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(4, 293, 'JbivnXjw', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(5, 296, 'PHadtALC', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(6, 298, 'AiSGK1oe', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(7, 299, 'Fp51iCuU', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(8, 301, 'Kae41hlf', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(9, 303, 'RCzW1y7k', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(10, 304, 'tv4MUITR', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(11, 305, '04hu73LZ', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(12, 313, 'Ln5jpVCz', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(13, 314, 'AKGFztHt', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(14, 315, 'yeC508Ls', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(15, 316, 'bPnRAEUK', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(16, 317, 'X73OTHFu', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(17, 318, 'Cb0ZsGLL', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(18, 319, 'XeEMT2b5', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(19, 320, '89aRsTwk', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(20, 321, 'wJ6nwFos', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(21, 322, 'ZnlCOAO4', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(22, 323, 'JEQeRfes', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(23, 324, 'pMlSd7r2', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(24, 325, 'Hsa6d7tQ', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(25, 326, 'QwFe9Z2Y', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(26, 327, 'U9fT86Bd', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(27, 328, 'cHU61bsU', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(28, 329, 'Zm6aXGo4', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(29, 330, 'cKajlYMX', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(30, 331, '4kdIKxxO', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(31, 332, 'OuQBwinZ', '0', '2022-09-24', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-09-24 14:49:54', '2021-09-24 14:49:54'),
(32, 333, 'DTqoVoFI', '0', '2022-10-03', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-03 03:14:25', '2021-10-03 03:14:25'),
(33, 334, 'hu7Moxt9', '0', '2022-10-03', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-03 05:19:44', '2021-10-03 05:19:44'),
(34, 335, 'xeuOf7Xn', '0', '2022-10-07', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-07 04:50:08', '2021-10-07 04:50:08'),
(35, 336, 'op0DKVn9', '0', '2022-10-07', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-07 04:50:08', '2021-10-07 04:50:08'),
(36, 337, 'pPq1iMRO', '0', '2022-10-07', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-07 07:06:42', '2021-10-07 07:06:42'),
(37, 338, 'SXLgqHgq', '0', '2022-10-07', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-07 07:16:09', '2021-10-07 07:16:09'),
(38, 339, 'fRC9uOv5', '0', '2022-10-07', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-07 13:30:30', '2021-10-07 13:30:30'),
(39, 340, 'RMyRRMIi', '0', '2022-10-07', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-07 13:48:14', '2021-10-07 13:48:14'),
(40, 341, '5InIWBTn', '0', '2022-10-07', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-07 15:02:14', '2021-10-07 15:02:14'),
(41, 342, 'BOipYljt', '0', '2022-10-07', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-07 16:22:50', '2021-10-07 16:22:50'),
(42, 343, 'rOlc3AyO', '0', '2022-10-07', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-07 17:01:51', '2021-10-07 17:01:51'),
(43, 344, 'Fh0msxC5', '0', '2022-10-07', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-07 17:58:57', '2021-10-07 17:58:57'),
(44, 345, 'CtRWI8u6', '0', '2022-10-07', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-07 19:35:29', '2021-10-07 19:35:29'),
(45, 346, 'Yps1dQiW', '0', '2022-10-07', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-07 19:36:00', '2021-10-07 19:36:00'),
(46, 347, 'wFCy3SiG', '0', '2022-10-08', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-08 04:40:21', '2021-10-08 04:40:21'),
(47, 348, 'WsXN33Xe', '0', '2022-10-08', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-08 08:46:12', '2021-10-08 08:46:12'),
(48, 349, 'mctsOjDT', '0', '2022-10-08', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-08 15:48:55', '2021-10-08 15:48:55'),
(49, 350, 'seOsxERh', '0', '2022-10-08', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-08 16:21:16', '2021-10-08 16:21:16'),
(50, 351, '58GYsi9D', '0', '2022-10-09', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-09 09:41:53', '2021-10-09 09:41:53'),
(51, 352, '4LFt0QZP', '0', '2022-10-10', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-10 07:07:56', '2021-10-10 07:07:56'),
(52, 353, 'CSCGsGf3', '0', '2022-10-10', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-10 07:12:15', '2021-10-10 07:12:15'),
(53, 354, 'ZFo1qx5L', '0', '2022-10-11', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-11 13:56:21', '2021-10-11 13:56:21'),
(54, 355, 'hfG1YMZI', '0', '2022-10-11', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-11 15:58:38', '2021-10-11 15:58:38'),
(55, 356, 'fFlrKLM0', '0', '2022-10-11', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-11 16:29:15', '2021-10-11 16:29:15'),
(56, 357, 'hbazUcF8', '0', '2022-10-11', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-11 22:54:52', '2021-10-11 22:54:52'),
(57, 358, '8mApyaw4', '0', '2022-10-12', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-12 05:10:31', '2021-10-12 05:10:31'),
(58, 359, 'lFEEdy0G', '0', '2022-10-12', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-12 05:39:39', '2021-10-12 05:39:39'),
(59, 360, 'mSsOwEwx', '0', '2022-10-12', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-12 06:00:47', '2021-10-12 06:00:47'),
(60, 361, 'cnLyGZPf', '0', '2022-10-13', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-13 01:06:23', '2021-10-13 01:06:23'),
(61, 362, 'LAeSxqzI', '0', '2022-10-13', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-13 06:58:11', '2021-10-13 06:58:11'),
(62, 363, 'nD6vACjC', '0', '2022-10-13', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-13 07:06:20', '2021-10-13 07:06:20'),
(63, 364, '9EfSDru7', '0', '2022-10-13', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-13 07:28:28', '2021-10-13 07:28:28'),
(64, 365, 'yNkLYOla', '0', '2022-10-13', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-13 07:35:04', '2021-10-13 07:35:04'),
(65, 366, 'B2g83joq', '0', '2022-10-13', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-13 08:54:06', '2021-10-13 08:54:06'),
(66, 367, 'sYw8SSQ7', '0', '2022-10-13', '', '0', 'This is the auto generated referral code with 50 % discount on first ride', '50', '2021-10-13 10:23:03', '2021-10-13 10:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `user_card`
--

CREATE TABLE `user_card` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `expirydate` text DEFAULT NULL,
  `securitycode` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_card`
--

INSERT INTO `user_card` (`id`, `name`, `number`, `expirydate`, `securitycode`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'Vivek', '7696-9696-9769-6966', '98/6969', '675', 149, '2021-08-04 11:13:06', '2021-08-04 11:13:06'),
(7, 'Vk nigam', '4869-6998-6966-9996', '77/7878', '544', 149, '2021-08-04 11:23:26', '2021-08-04 11:23:26'),
(16, 'shiv', '8676-4545-7645-3557', '09/2098', '123', 179, '2021-08-17 17:21:21', '2021-08-17 17:21:21'),
(18, 'Akash', '6521-6014-9154-8238', '11/23', '842', 281, '2021-08-31 11:06:23', '2021-08-31 11:06:23'),
(21, 'test', '123456789087654', '2021-10-21', '123', 141, '2021-09-06 16:00:29', '2021-09-06 16:00:29'),
(23, 'Vivek nigam v', '4111-1111-1111-1112', '12/2222', '123', 303, '2021-09-09 07:27:41', '2021-09-09 07:27:41'),
(25, 'Consumer', '5577-0000-5577-0004', '03/2030', '737', 304, '2021-09-15 18:04:17', '2021-09-15 18:04:17'),
(26, 'Consumer', '5577-0000-5577-0004', '03/2030', '737', 304, '2021-09-15 18:04:21', '2021-09-15 18:04:21'),
(38, 'hsjs', '4546-9464-6649-4649', '46/4646', '454', 303, '2021-09-18 17:28:04', '2021-09-18 17:28:04'),
(41, 'test', '123456789087654', '2021-10-21', '123', 141, '2021-09-18 18:33:41', '2021-09-18 18:33:41'),
(42, 'test', '123456789087654', '2021-10-21', '123', 141, '2021-09-18 19:26:55', '2021-09-18 19:26:55'),
(45, 'hehhell9', '4949-4646-6464-64', '46/4646', '467', 303, '2021-09-19 03:35:11', '2021-09-19 03:35:11'),
(46, 'kashish ', '9946-9494-9966-6999', '11/26', '096', 298, '2021-09-30 11:02:27', '2021-09-30 11:02:27'),
(49, 'ndjej', '6592-9291-9192-961', '06/2', '059', 298, '2021-10-02 06:48:18', '2021-10-02 06:48:18'),
(50, 'Kashish Gupta', '9494-6649-4494-9949', '12/2026', '949', 334, '2021-10-03 05:29:46', '2021-10-03 05:29:46'),
(54, 'Kashish Gupta', '4646-4494-9464-9494', '07/4441', '949', 339, '2021-10-07 18:12:13', '2021-10-07 18:12:13'),
(57, 'Akash Sharma', '8526-3580-8559-9625', '11/2021', '122', 362, '2021-10-13 10:58:10', '2021-10-13 10:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `user_rating_review`
--

CREATE TABLE `user_rating_review` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `remarks` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_rating_review`
--

INSERT INTO `user_rating_review` (`id`, `user_id`, `order_id`, `driver_id`, `rating`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 303, 1, 5, '3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem.', '2021-09-13 03:24:06', '2021-09-13 17:00:23'),
(2, 303, 1, 5, '2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem.', '2021-09-13 03:24:06', '2021-09-13 17:00:34'),
(3, 303, 1, 5, '1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem.', '2021-09-13 03:24:06', '2021-09-13 17:00:44'),
(4, 303, 1, 5, '5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem.', '2021-09-13 03:24:06', '2021-09-13 17:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `id` int(11) NOT NULL,
  `service` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `vehicle_type` varchar(255) DEFAULT NULL,
  `weight_limit` varchar(255) DEFAULT NULL,
  `size_limit` varchar(255) DEFAULT NULL,
  `priceby` varchar(255) DEFAULT NULL,
  `basefare` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `kmfare` varchar(255) DEFAULT NULL,
  `priceafterbasefare` varchar(255) DEFAULT NULL,
  `stopprice` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`id`, `service`, `city`, `vehicle_type`, `weight_limit`, `size_limit`, `priceby`, `basefare`, `image`, `kmfare`, `priceafterbasefare`, `stopprice`, `description`, `created_at`, `updated_at`) VALUES
(1, '1', 'philippines', ' BIKE', '100kg', '2.1*1.2*1.1 Meter upto 600kg', 'km', '200', 'bike1.png', '100', '5', '5', 'feasible and affordable', '2021-06-15 22:50:03', '2021-06-15 13:25:12'),
(3, '1', 'philippines', 'SEDAN 200KG\r\n', '200kg', '2.1*1.2*1.1 Meter upto 1000kg', 'km', '300', 'sedan.png', '150', '5', '5', 'Compact & compatible', '2021-06-15 23:03:29', '2021-06-15 13:38:56'),
(4, '1', 'philippines', 'MVP 300KG', '300 kg', '2.1*1.2*1.1 Meter upto 1000kg', 'km', '400', 'mvp300.jpg', '200', '5', '5', 'All-around 4 wheeler option', '2021-06-15 23:03:29', '2021-06-15 13:38:56'),
(5, '1', 'philippines', 'MVP 600KG', '600 kg', '2.1*1.2*1.1 Meter upto 2000kg', 'km', '500', 'big4wheeler.jpg', '250', '5', '5', 'Biggest 4 wheeler option', '2021-06-15 23:09:40', '2021-06-15 13:41:31'),
(6, '1', 'philippines', 'VAN 1000KG', '1000kg', '2.1*1.2*1.1 Meter upto 1000kg', 'km', '600', 'van1.png', '300', '5', '5', NULL, '2021-09-08 22:18:27', '2021-09-08 12:44:06'),
(7, '1', 'philippines', 'FB 1000KG\r\n', '1000kg', '2.1*1.2*1.1 Meter upto 1000kg', 'km', '700', 'fb1.png', '350', '5', '5', NULL, '2021-09-08 22:18:31', '2021-09-08 12:44:06'),
(8, '1', 'philippines', 'FB 2000KG', '2000kg', '2.1*1.2*1.1 Meter upto 2000kg', 'km', '800', 'fb2.jpg', '400', '5', '5', NULL, '2021-09-08 22:18:34', '2021-09-08 12:44:19'),
(9, '1', 'philippines', 'ALUMINUM 2000KG', '2000kg', '2.1*1.2*1.1 Meter upto 2000kg', 'km', '850', 'alluminium.jpg', '450', '5', '5', NULL, '2021-09-09 03:18:54', '2021-09-08 17:47:36');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_make`
--

CREATE TABLE `vehicle_make` (
  `id` int(11) NOT NULL,
  `vehicle_types` varchar(255) NOT NULL,
  `vehicle_logo` varchar(255) NOT NULL,
  `m_description` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` varchar(110) NOT NULL,
  `updated_at` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_make`
--

INSERT INTO `vehicle_make` (`id`, `vehicle_types`, `vehicle_logo`, `m_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test1', 'vehicle_logo-1630139692.webp', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'ertre', '0', '2021-08-28 14:04:52'),
(2, 'test5', 'vehicle_logo-1630139668.webp', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', '', '2021-08-28 14:04:28', '2021-08-28 14:04:28'),
(3, 'test51', 'vehicle_logo-1630140235.webp', 'test', '', '2021-08-28 14:13:55', '2021-08-28 14:13:55'),
(4, 'test51', 'vehicle_logo-1630140365.webp', 'test', '', '2021-08-28 14:16:05', '2021-08-28 14:16:05'),
(5, 'test51', 'vehicle_logo-1630140582.webp', 'test20', '', '2021-08-28 14:19:42', '2021-08-28 14:19:42'),
(6, 'Suzuki', 'vehicle_logo-1630142865.jpg', '56465', 'active', '2021-08-28 14:57:45', '2021-08-28 14:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_model`
--

CREATE TABLE `vehicle_model` (
  `id` int(11) NOT NULL,
  `model_types` text NOT NULL,
  `model_makes` text NOT NULL,
  `vehicles_model` text NOT NULL,
  `description` text NOT NULL,
  `no_of_seats` text NOT NULL,
  `status` text NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_model`
--

INSERT INTO `vehicle_model` (`id`, `model_types`, `model_makes`, `vehicles_model`, `description`, `no_of_seats`, `status`, `created_at`, `updated_at`) VALUES
(1, 'fdsfsddsfds', 'sdf4543', 'dsfdskjhkj', 'ugui 5465456465jkhkj', '5', 'active', '', '2021-08-22 00:41:18'),
(2, '5456465', '46546', '56465mm', 'jknknk', '545', 'active', '2021-08-28 15:32:44', '2021-08-28 15:45:28'),
(3, 'light121', 'test1111', 'test20111', 'test11111', '40', 'active', '2021-08-28 15:32:55', '2021-08-28 15:49:05'),
(4, '11111111', 'test1', 'test20', 'test', '40', 'active', '2021-08-28 15:49:33', '2021-08-28 15:49:33'),
(5, 'car', '00', '00', '000', '4', 'active', '2021-08-31 11:25:51', '2021-08-31 11:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `id` int(11) NOT NULL,
  `v_type` text NOT NULL,
  `v_rank` text NOT NULL,
  `v_image` varchar(255) NOT NULL,
  `v_description` text NOT NULL,
  `delivery_type` varchar(250) NOT NULL,
  `v_for` varchar(255) NOT NULL,
  `v_sequence` varchar(255) NOT NULL,
  `v_status` varchar(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`id`, `v_type`, `v_rank`, `v_image`, `v_description`, `delivery_type`, `v_for`, `v_sequence`, `v_status`, `created_at`, `updated_at`) VALUES
(1, 'Motercycle', '5', 'v_image-1629553398.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 'light', 'dilivery', '4', 'active', '', '2021-08-21 19:13:18'),
(2, 'Motercycle1', '5100', 'v_image-1630145847.jpg', 'Lorem ipsum dolor..........', 'Delivery', 'Heavy 1', '100', 'active', '2021-08-21 18:20:36', '2021-08-28 15:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `wallerpackage`
--

CREATE TABLE `wallerpackage` (
  `id` int(11) NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallerpackage`
--

INSERT INTO `wallerpackage` (`id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, '300', 1, '2021-06-18 11:30:21', '2021-06-18 11:30:21'),
(2, '500', 1, '2021-06-18 11:30:21', '2021-06-18 11:30:21'),
(3, '1000', 1, '2021-06-18 11:30:35', '2021-06-18 11:30:35'),
(4, '2000', 1, '2021-06-18 11:30:35', '2021-06-18 11:30:35'),
(5, '5000', 1, '2021-06-18 11:30:42', '2021-06-18 11:30:42'),
(6, '50000', 1, '2021-09-15 12:36:53', '2021-09-27 20:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `walletmaster`
--

CREATE TABLE `walletmaster` (
  `id` bigint(20) NOT NULL,
  `transactiontypeId` bigint(20) NOT NULL,
  `ordered` int(11) NOT NULL,
  `amount` decimal(11,0) NOT NULL,
  `datetime` datetime NOT NULL,
  `createdbyuserid` bigint(20) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_recharge`
--

CREATE TABLE `wallet_recharge` (
  `id` int(11) NOT NULL,
  `transactionid` varchar(255) DEFAULT NULL,
  `transactiontype` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT '0',
  `method` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `change_amount` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_recharge`
--

INSERT INTO `wallet_recharge` (`id`, `transactionid`, `transactiontype`, `user_id`, `phone`, `method`, `amount`, `change_amount`, `description`, `created_at`, `updated_at`) VALUES
(1, '', '', 348, '', '', '0', '0', '', '2021-10-08 08:46:12', '2021-10-08 08:46:12'),
(2, '', '', 349, '', '', '0', '0', '', '2021-10-08 15:48:55', '2021-10-08 15:48:55'),
(3, '', '', 350, '', '', '0', '0', '', '2021-10-08 16:21:16', '2021-10-08 16:21:16'),
(4, '', '', 351, '', '', '0', '0', '', '2021-10-09 09:41:53', '2021-10-09 09:41:53'),
(5, '', '', 352, '', '', '0', '0', '', '2021-10-10 07:07:56', '2021-10-10 07:07:56'),
(6, '', '', 353, '', '', '0', '0', '', '2021-10-10 07:12:15', '2021-10-10 07:12:15'),
(7, 'bal_txn_hEyBiNnCfSDiDGhar6KYpWcS', 'gcash', 347, '0', 'credit', '1000', '1000', NULL, '2021-10-10 09:56:23', '2021-10-10 09:56:23'),
(8, 'AULDIpAKqa', 'sheduled', 347, '0', 'debit', '603', '397', NULL, '10/10/2021 17:53', '2021-10-10 09:56:49'),
(9, '', '', 354, '', '', '0', '0', '', '2021-10-11 13:56:21', '2021-10-11 13:56:21'),
(10, '', '', 355, '', '', '0', '0', '', '2021-10-11 15:58:38', '2021-10-11 15:58:38'),
(11, '', '', 356, '', '', '0', '0', '', '2021-10-11 16:29:15', '2021-10-11 16:29:15'),
(12, '', '', 357, '', '', '0', '0', '', '2021-10-11 22:54:52', '2021-10-11 22:54:52'),
(13, 'bal_txn_V3SuH5gmNSz9yUvF42UhDNb1', 'gcash', 357, '0', 'credit', '1000', '1000', NULL, '2021-10-11 22:58:17', '2021-10-11 22:58:17'),
(14, '7rAO76CyMO', 'sheduled', 357, '0', 'debit', '698', '302', NULL, '10/12/2021 06:56', '2021-10-11 22:58:26'),
(15, 'bal_txn_erWAqJYQcj8Y7WU3ouFiSPGF', 'gcash', 357, '0', 'credit', '1198', '500', NULL, '2021-10-12 02:52:51', '2021-10-12 02:52:51'),
(16, 'CD3bZ6xWwm', 'sheduled', 357, '0', 'debit', '949', '249', NULL, '10/12/2021 12:32', '2021-10-12 04:55:49'),
(17, '', '', 358, '', '', '0', '0', '', '2021-10-12 05:10:31', '2021-10-12 05:10:31'),
(18, '', '', 359, '', '', '0', '0', '', '2021-10-12 05:39:39', '2021-10-12 05:39:39'),
(19, '', '', 360, '', '', '0', '0', '', '2021-10-12 06:00:47', '2021-10-12 06:00:47'),
(20, 'YssAYHGqQl', 'cancle', 360, '0', 'credit', '110', '220', 'Refund for cancel order', '2021-10-12 07:02:53', '2021-10-12 07:02:53'),
(21, 'bal_txn_8wboQV5bLsyauuJ5faU7Kp2Z', 'gcash', 360, '0', 'credit', '50110', '50000', NULL, '2021-10-12 07:28:11', '2021-10-12 07:28:11'),
(22, 'NZqHtmV1DD', 'sheduled', 360, '0', 'debit', '50000', '110', NULL, '10/12/2021 12:59', '2021-10-12 07:30:12'),
(23, 'Ti54vhz3CL', 'sheduled', 360, '0', 'debit', '46622', '3378', NULL, '10/12/2021 13:05', '2021-10-12 07:39:17'),
(24, 'SMI08BPumC', 'sheduled', 360, '0', 'debit', '46502', '120', NULL, '10/12/2021 13:12', '2021-10-12 07:44:41'),
(25, 'qskVjFBeRl', 'sheduled', 360, '0', 'debit', '46392', '110', NULL, '10/12/2021 13:23', '2021-10-12 07:55:38'),
(26, 'bal_txn_ZU3Tow3TEq62Gp78S8QERasM', 'gcash', 357, '0', 'credit', '1949', '1000', NULL, '2021-10-12 10:03:12', '2021-10-12 10:03:12'),
(27, '2f0gDtQoU2', 'sheduled', 360, '0', 'debit', '41488', '4904', NULL, '10/12/2021 16:55', '2021-10-12 11:29:38'),
(28, '', '', 361, '', '', '0', '0', '', '2021-10-13 01:06:23', '2021-10-13 01:06:23'),
(29, 'bal_txn_SK6WgyNgKinaTNorVLmfJq7R', 'gcash', 361, '0', 'credit', '500', '500', NULL, '2021-10-13 01:56:03', '2021-10-13 01:56:03'),
(30, '', '', 362, '', '', '0', '0', '', '2021-10-13 06:58:11', '2021-10-13 06:58:11'),
(31, '', '', 363, '', '', '0', '0', '', '2021-10-13 07:06:20', '2021-10-13 07:06:20'),
(32, '', '', 364, '', '', '0', '0', '', '2021-10-13 07:28:28', '2021-10-13 07:28:28'),
(33, '', '', 365, '', '', '0', '0', '', '2021-10-13 07:35:04', '2021-10-13 07:35:04'),
(34, 'bal_txn_dLtPzuiGKJXrbn7yNVhamYdf', 'gcash', 362, '0', 'credit', '50000', '50000', NULL, '2021-10-13 08:18:01', '2021-10-13 08:18:01'),
(35, 'CcW0FMA0Pn', 'sheduled', 362, '0', 'debit', '11762', '38238', NULL, '10/13/2021 13:41', '2021-10-13 08:18:14'),
(36, '85h5CXo162', 'sheduled', 362, '0', 'debit', '11652', '110', NULL, '10/13/2021 14:05', '2021-10-13 08:37:47'),
(37, 'd0rT0Hi06A', 'sheduled', 362, '0', 'debit', '11452', '200', NULL, '10/13/2021 14:11', '2021-10-13 08:43:11'),
(38, '', '', 366, '', '', '0', '0', '', '2021-10-13 08:54:06', '2021-10-13 08:54:06'),
(39, '03Mtimhyst', 'sheduled', 362, '0', 'debit', '11327', '125', NULL, '10/13/2021 14:22', '2021-10-13 08:58:53'),
(40, 'J3tGVK4zcc', 'sheduled', 362, '0', 'debit', '11051', '276', NULL, '10/13/2021 14:50', '2021-10-13 09:27:08'),
(41, '', '', 367, '', '', '0', '0', '', '2021-10-13 10:23:03', '2021-10-13 10:23:03'),
(42, 'uMp6bYRz5V', 'sheduled', 357, '0', 'debit', '903', '1046', NULL, '10/13/2021 22:08', '2021-10-13 14:09:43'),
(43, 'KLRNWcH6g2', 'sheduled', 357, '0', 'debit', '598', '305', NULL, '10/13/2021 23:32', '2021-10-13 15:33:12'),
(44, 'bal_txn_BJaS3VAvyHMVYzdB53cigWWN', 'gcash', 357, '0', 'credit', '1598', '1000', NULL, '2021-10-13 22:07:49', '2021-10-13 22:07:49'),
(45, 'QxDq9fl9i1', 'sheduled', 357, '0', 'debit', '953', '645', NULL, '10/14/2021 06:06', '2021-10-13 22:07:56'),
(46, 'bal_txn_ZV1PouQNJs1MYidjzYVRcZV2', 'gcash', 356, '0', 'credit', '300', '300', NULL, '2021-10-14 08:45:49', '2021-10-14 08:45:49'),
(47, 'NqRENqeuKn', 'sheduled', 357, '0', 'debit', '739', '214', NULL, '10/14/2021 21:02', '2021-10-14 13:03:39'),
(48, 'bal_txn_NyU7bhJezMMVLCGGTMeysYgE', 'gcash', 357, '0', 'credit', '1739', '1000', NULL, '2021-10-14 13:09:53', '2021-10-14 13:09:53'),
(49, 'jLrjtBHdJ6', 'sheduled', 357, '0', 'debit', '544', '1195', NULL, '10/14/2021 21:08', '2021-10-14 13:09:59'),
(50, 'bal_txn_wdaCqfx8jC5aUHkEmcERbcDn', 'gcash', 365, '0', 'credit', '300', '300', NULL, '2021-10-18 19:17:36', '2021-10-18 19:17:36'),
(51, 'bal_txn_MLUFDToP6aNUzFV6W7617ZFz', 'gcash', 365, '0', 'credit', '1300', '1000', NULL, '2021-10-18 20:06:47', '2021-10-18 20:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transaction`
--

CREATE TABLE `wallet_transaction` (
  `id` int(11) NOT NULL,
  `trans_id` varchar(255) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `deposit` decimal(7,2) DEFAULT NULL,
  `withdrawal` decimal(7,2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `payment_mode` varchar(255) DEFAULT NULL COMMENT '''0''=>credit card, ''1''=>debit card ',
  `available_balance` decimal(7,2) DEFAULT NULL,
  `cr_dr_status` tinyint(11) DEFAULT NULL COMMENT '''0''=>credit, ''1''=>debit',
  `status` int(11) DEFAULT NULL COMMENT '''0''=>success, ''1''=>pending',
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_type`
--
ALTER TABLE `account_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areservice`
--
ALTER TABLE `areservice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cardmaster`
--
ALTER TABLE `cardmaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartmaster`
--
ALTER TABLE `cartmaster`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorymaster`
--
ALTER TABLE `categorymaster`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `chasout_request`
--
ALTER TABLE `chasout_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consumer_support`
--
ALTER TABLE `consumer_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_all`
--
ALTER TABLE `country_all`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivecardmaster`
--
ALTER TABLE `drivecardmaster`
  ADD PRIMARY KEY (`cardtypeid`);

--
-- Indexes for table `drivepersonaldoc`
--
ALTER TABLE `drivepersonaldoc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driverconfiguration`
--
ALTER TABLE `driverconfiguration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driverdecline`
--
ALTER TABLE `driverdecline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_current_location`
--
ALTER TABLE `driver_current_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_otp`
--
ALTER TABLE `driver_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_request`
--
ALTER TABLE `driver_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_support`
--
ALTER TABLE `driver_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_vehicle`
--
ALTER TABLE `driver_vehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_wallet`
--
ALTER TABLE `driver_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driveuser`
--
ALTER TABLE `driveuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `driveusernotification`
--
ALTER TABLE `driveusernotification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driveuserrating`
--
ALTER TABLE `driveuserrating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driveuserreview`
--
ALTER TABLE `driveuserreview`
  ADD PRIMARY KEY (`reviewid`);

--
-- Indexes for table `durapickupshedule`
--
ALTER TABLE `durapickupshedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `durapickup_services`
--
ALTER TABLE `durapickup_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dura_services_type`
--
ALTER TABLE `dura_services_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emailconfiguration`
--
ALTER TABLE `emailconfiguration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ewallet_recharge`
--
ALTER TABLE `ewallet_recharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issafe`
--
ALTER TABLE `issafe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leadappointment`
--
ALTER TABLE `leadappointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_api`
--
ALTER TABLE `login_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager_support`
--
ALTER TABLE `manager_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketplace`
--
ALTER TABLE `marketplace`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant_support`
--
ALTER TABLE `merchant_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_setting`
--
ALTER TABLE `notification_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offeraction`
--
ALTER TABLE `offeraction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordermaster`
--
ALTER TABLE `ordermaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderrequestconfig`
--
ALTER TABLE `orderrequestconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_cancel_reason`
--
ALTER TABLE `order_cancel_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_manage`
--
ALTER TABLE `order_manage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup_stoplocation`
--
ALTER TABLE `pickup_stoplocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricecard`
--
ALTER TABLE `pricecard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricecards`
--
ALTER TABLE `pricecards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocode`
--
ALTER TABLE `promocode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reference_codemaster`
--
ALTER TABLE `reference_codemaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refer_code`
--
ALTER TABLE `refer_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_driver`
--
ALTER TABLE `search_driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_area`
--
ALTER TABLE `service_area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shedulecancel`
--
ALTER TABLE `shedulecancel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `styles`
--
ALTER TABLE `styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipprice`
--
ALTER TABLE `tipprice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units_measurement`
--
ALTER TABLE `units_measurement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `used_promocode`
--
ALTER TABLE `used_promocode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useraddress`
--
ALTER TABLE `useraddress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdocument`
--
ALTER TABLE `userdocument`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_otp`
--
ALTER TABLE `users_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_referralcode`
--
ALTER TABLE `users_referralcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_card`
--
ALTER TABLE `user_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_rating_review`
--
ALTER TABLE `user_rating_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_make`
--
ALTER TABLE `vehicle_make`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallerpackage`
--
ALTER TABLE `wallerpackage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_recharge`
--
ALTER TABLE `wallet_recharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transaction`
--
ALTER TABLE `wallet_transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_type`
--
ALTER TABLE `account_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `areservice`
--
ALTER TABLE `areservice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `chasout_request`
--
ALTER TABLE `chasout_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1637;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `consumer_support`
--
ALTER TABLE `consumer_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `drivepersonaldoc`
--
ALTER TABLE `drivepersonaldoc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `driverconfiguration`
--
ALTER TABLE `driverconfiguration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `driverdecline`
--
ALTER TABLE `driverdecline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `driver_current_location`
--
ALTER TABLE `driver_current_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `driver_otp`
--
ALTER TABLE `driver_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `driver_request`
--
ALTER TABLE `driver_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `driver_support`
--
ALTER TABLE `driver_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `driver_vehicle`
--
ALTER TABLE `driver_vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `driver_wallet`
--
ALTER TABLE `driver_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `driveuser`
--
ALTER TABLE `driveuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `driveuserrating`
--
ALTER TABLE `driveuserrating`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `durapickupshedule`
--
ALTER TABLE `durapickupshedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `durapickup_services`
--
ALTER TABLE `durapickup_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `dura_services_type`
--
ALTER TABLE `dura_services_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `emailconfiguration`
--
ALTER TABLE `emailconfiguration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ewallet_recharge`
--
ALTER TABLE `ewallet_recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issafe`
--
ALTER TABLE `issafe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `leadappointment`
--
ALTER TABLE `leadappointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login_api`
--
ALTER TABLE `login_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manager_support`
--
ALTER TABLE `manager_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marketplace`
--
ALTER TABLE `marketplace`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `merchant_support`
--
ALTER TABLE `merchant_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1123;

--
-- AUTO_INCREMENT for table `notification_setting`
--
ALTER TABLE `notification_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `offeraction`
--
ALTER TABLE `offeraction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ordermaster`
--
ALTER TABLE `ordermaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderrequestconfig`
--
ALTER TABLE `orderrequestconfig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_cancel_reason`
--
ALTER TABLE `order_cancel_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_manage`
--
ALTER TABLE `order_manage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pickup_stoplocation`
--
ALTER TABLE `pickup_stoplocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pricecard`
--
ALTER TABLE `pricecard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pricecards`
--
ALTER TABLE `pricecards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=823;

--
-- AUTO_INCREMENT for table `product_gallery`
--
ALTER TABLE `product_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=844;

--
-- AUTO_INCREMENT for table `promocode`
--
ALTER TABLE `promocode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `reference_codemaster`
--
ALTER TABLE `reference_codemaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `search_driver`
--
ALTER TABLE `search_driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_area`
--
ALTER TABLE `service_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shedulecancel`
--
ALTER TABLE `shedulecancel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `styles`
--
ALTER TABLE `styles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tipprice`
--
ALTER TABLE `tipprice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `units_measurement`
--
ALTER TABLE `units_measurement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `used_promocode`
--
ALTER TABLE `used_promocode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `useraddress`
--
ALTER TABLE `useraddress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `userdocument`
--
ALTER TABLE `userdocument`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT for table `users_otp`
--
ALTER TABLE `users_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1251;

--
-- AUTO_INCREMENT for table `users_referralcode`
--
ALTER TABLE `users_referralcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `user_card`
--
ALTER TABLE `user_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `user_rating_review`
--
ALTER TABLE `user_rating_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vehicle_make`
--
ALTER TABLE `vehicle_make`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_model`
--
ALTER TABLE `vehicle_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wallerpackage`
--
ALTER TABLE `wallerpackage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wallet_recharge`
--
ALTER TABLE `wallet_recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `wallet_transaction`
--
ALTER TABLE `wallet_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
