-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2019 at 11:45 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `carriages`
--

CREATE TABLE `carriages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `inward_value` int(15) NOT NULL,
  `outward_value` int(15) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `current_assets`
--

CREATE TABLE `current_assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` int(15) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `current_liabilities`
--

CREATE TABLE `current_liabilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` int(15) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `drawing`
--

CREATE TABLE `drawing` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` int(15) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `birth_date` varchar(10) NOT NULL,
  `Address` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `user_type` int(10) UNSIGNED NOT NULL,
  `nationality_id` int(10) UNSIGNED NOT NULL,
  `religion_id` int(10) UNSIGNED NOT NULL,
  `year_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `middle_name`, `surname`, `gender`, `birth_date`, `Address`, `phone`, `Email`, `profile_picture`, `user_type`, `nationality_id`, `religion_id`, `year_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Asia', 'Khamisi', 'Kobelo', 'Female', '1990-11-13', 'Kimara', '0715243526', 'Asia23@gmail.com', '0000/00001', 2, 1, 2, 1, '2019-06-07 07:23:05', '2019-06-07 04:21:49', NULL),
(2, 'Paul', 'Pascal', 'Kilenga', 'Male', '1965-07-07', 'Changanyikeni', '0715243526', 'Paul360@gmail.com', '0000/00001', 1, 1, 1, 1, '2019-06-07 07:23:11', '2019-06-03 01:30:30', NULL),
(3, 'Emmanuel', 'John', 'Hamili', 'Male', '2000-11-15', 'Mwenge', '0765432323', 'Emma@gmail.com', '0000/00001', 2, 3, 1, 1, '2019-06-07 07:23:17', '2019-06-06 08:08:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `equity`
--

CREATE TABLE `equity` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` int(15) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Value` int(15) NOT NULL,
  `Date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(10) UNSIGNED NOT NULL,
  `grade` varchar(20) NOT NULL,
  `amount` int(15) NOT NULL,
  `status` varchar(4) NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `indirect_income`
--

CREATE TABLE `indirect_income` (
  `id` int(10) UNSIGNED NOT NULL,
  `event` varchar(20) NOT NULL,
  `value` int(15) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `opening_date` date NOT NULL,
  `opening_value` int(15) NOT NULL,
  `closing_date` date NOT NULL,
  `closing_value` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tanzanian', '2019-04-22 12:24:10', '0000-00-00 00:00:00', NULL),
(2, 'Ugandan', '2019-04-22 12:24:32', '0000-00-00 00:00:00', NULL),
(3, 'Kenyan', '2019-04-22 12:24:38', '0000-00-00 00:00:00', NULL),
(4, 'Italian', '2019-06-06 10:46:02', '2019-06-06 07:45:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `non_current_assets`
--

CREATE TABLE `non_current_assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `cost` int(15) NOT NULL,
  `depreciation_value` int(15) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `non_current_liabilities`
--

CREATE TABLE `non_current_liabilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` int(15) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nursery`
--

CREATE TABLE `nursery` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `mathematics` float DEFAULT NULL,
  `reading_and_writing` float DEFAULT NULL,
  `english` float DEFAULT NULL,
  `art_and_craft` float DEFAULT NULL,
  `term` int(11) NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nursery`
--

INSERT INTO `nursery` (`id`, `student_id`, `mathematics`, `reading_and_writing`, `english`, `art_and_craft`, `term`, `year_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 65, 87, 89, 45, 1, 1, '2019-05-24 17:30:39', '2019-05-27 02:00:05', NULL),
(2, 13, 78, NULL, NULL, NULL, 1, 1, '2019-05-25 07:45:50', '2019-05-25 07:53:17', NULL),
(3, 1, 97, NULL, NULL, NULL, 1, 1, '2019-06-03 11:39:53', '2019-06-03 11:39:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `purchases_date` date NOT NULL,
  `purchases_value` int(15) NOT NULL,
  `purchase_return_date` date NOT NULL,
  `purchase_return_value` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Christianity', '2019-04-14 14:53:34', '0000-00-00 00:00:00', NULL),
(2, 'Islam', '2019-04-14 14:53:34', '0000-00-00 00:00:00', NULL),
(3, 'Hindu', '2019-06-06 06:59:56', '2019-06-06 06:59:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'manager', '2019-05-08 18:18:38', '0000-00-00 00:00:00'),
(2, 'admin', '2019-05-08 18:18:38', '0000-00-00 00:00:00'),
(3, 'academic_teacher', '2019-05-08 18:19:10', '0000-00-00 00:00:00'),
(4, 'cashier', '2019-05-08 18:19:10', '0000-00-00 00:00:00'),
(5, 'head_teacher', '2019-05-08 18:19:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 4),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `value_of_sales` int(15) NOT NULL,
  `sales_date` date NOT NULL,
  `returns_date` date NOT NULL,
  `value_of_returns` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `standard_1`
--

CREATE TABLE `standard_1` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `Mathematics` float DEFAULT NULL,
  `Reading` float DEFAULT NULL,
  `Writing` float DEFAULT NULL,
  `Science` float DEFAULT NULL,
  `term` int(11) NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `standard_1`
--

INSERT INTO `standard_1` (`id`, `student_id`, `Mathematics`, `Reading`, `Writing`, `Science`, `term`, `year_id`, `Created_at`, `Updated_at`, `Deleted_at`) VALUES
(1, 13, 20, NULL, NULL, NULL, 1, 1, '2019-05-25 08:01:11', '2019-05-25 08:20:47', NULL),
(2, 12, NULL, 90, NULL, NULL, 1, 1, '2019-05-25 08:14:38', '2019-05-25 08:14:38', NULL),
(3, 20, 89, NULL, NULL, NULL, 1, 1, '2019-05-25 08:21:55', '2019-05-25 08:21:55', NULL),
(4, 66, 78, NULL, NULL, NULL, 1, 1, '2019-06-03 11:34:24', '2019-06-03 11:34:24', NULL),
(5, 47, 56, NULL, NULL, NULL, 1, 1, '2019-06-03 12:10:34', '2019-06-03 12:12:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `standard_2`
--

CREATE TABLE `standard_2` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `Mathematics` float DEFAULT NULL,
  `Reading` float DEFAULT NULL,
  `Writing` float DEFAULT NULL,
  `Science` float DEFAULT NULL,
  `term` int(11) NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `standard_3`
--

CREATE TABLE `standard_3` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `Mathematics` float DEFAULT NULL,
  `English` float DEFAULT NULL,
  `Kiswahili` float DEFAULT NULL,
  `Science_and_Technology` float DEFAULT NULL,
  `Civics_and_Moral` float DEFAULT NULL,
  `Social_Studies` float DEFAULT NULL,
  `Vocational_Skills` float DEFAULT NULL,
  `term` int(11) NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `standard_4`
--

CREATE TABLE `standard_4` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `Mathematics` float DEFAULT NULL,
  `English` float DEFAULT NULL,
  `Kiswahili` float DEFAULT NULL,
  `Science_and_Technology` float DEFAULT NULL,
  `Civics_and_Moral` float DEFAULT NULL,
  `Social_Studies` float DEFAULT NULL,
  `Vocational_Skills` float DEFAULT NULL,
  `term` int(11) NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `standard_4`
--

INSERT INTO `standard_4` (`id`, `student_id`, `Mathematics`, `English`, `Kiswahili`, `Science_and_Technology`, `Civics_and_Moral`, `Social_Studies`, `Vocational_Skills`, `term`, `year_id`, `Created_at`, `Updated_at`, `Deleted_at`) VALUES
(1, 47, 87, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-06-03 16:48:36', '2019-06-03 16:48:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `standard_5`
--

CREATE TABLE `standard_5` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `Mathematics` float DEFAULT NULL,
  `English` float DEFAULT NULL,
  `Kiswahili` float DEFAULT NULL,
  `Science_and_Technology` float DEFAULT NULL,
  `Civics_and_Moral` float DEFAULT NULL,
  `Social_Studies` float DEFAULT NULL,
  `Vocational_Skills` float DEFAULT NULL,
  `term` int(11) NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `standard_6`
--

CREATE TABLE `standard_6` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `Mathematics` float DEFAULT NULL,
  `English` float DEFAULT NULL,
  `Kiswahili` float DEFAULT NULL,
  `Science` float DEFAULT NULL,
  `ICT` float DEFAULT NULL,
  `PDS` float DEFAULT NULL,
  `History` float DEFAULT NULL,
  `Geography` float DEFAULT NULL,
  `Civics` float DEFAULT NULL,
  `Vocational_Skills` float DEFAULT NULL,
  `term` int(11) NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `standard_7`
--

CREATE TABLE `standard_7` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `Mathematics` float DEFAULT NULL,
  `English` float DEFAULT NULL,
  `Kiswahili` float DEFAULT NULL,
  `Science` float DEFAULT NULL,
  `ICT` float DEFAULT NULL,
  `PDS` float DEFAULT NULL,
  `Vocational_Skills` float DEFAULT NULL,
  `History` float DEFAULT NULL,
  `Geography` float DEFAULT NULL,
  `Civics` float DEFAULT NULL,
  `term` int(11) NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `surname` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `religion_id` int(10) UNSIGNED NOT NULL,
  `birth_date` date NOT NULL,
  `nationality_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(40) NOT NULL,
  `admission_year` int(4) NOT NULL,
  `number_of_repeated_Years` int(11) DEFAULT NULL,
  `profile_picture` varchar(300) NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `surname`, `gender`, `religion_id`, `birth_date`, `nationality_id`, `address`, `admission_year`, `number_of_repeated_Years`, `profile_picture`, `year_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Athumani', 'Makoi', 'Madebe', 'Male', 2, '2013-02-04', 2, 'Changanyikeni', 2019, NULL, '0000/00001', 1, '2019-05-05 10:13:31', '2019-05-20 11:15:12', NULL),
(2, 'Eliza', 'Colinns', 'Malechela', 'Female', 1, '2014-05-12', 1, 'Keko', 2019, NULL, '0000/00001', 1, '2019-05-20 10:36:36', '2019-05-20 11:14:22', NULL),
(3, 'Ahmed', 'Athuman', 'Ayubu', 'Male', 2, '2012-12-17', 3, 'Mbezi', 2019, NULL, '0000/00001', 1, '2019-05-20 10:40:38', '2019-05-20 11:13:51', NULL),
(4, 'Donatus', 'Leonidas', 'Matemba', 'Male', 1, '2013-11-08', 1, 'Msewe', 2019, NULL, '0000/00001', 1, '2019-05-20 11:16:39', '2019-05-20 11:16:39', NULL),
(5, 'Ephraim', 'Mahecha', 'Laswai', 'Male', 1, '2012-11-06', 2, 'Sinza', 2019, NULL, '0000/00001', 1, '2019-05-20 11:18:10', '2019-05-20 11:32:10', NULL),
(6, 'Godlove', 'Mark', 'Massawe', 'Male', 1, '2014-06-19', 1, 'Goba', 2019, NULL, '0000/00001', 1, '2019-05-20 11:19:41', '2019-05-20 11:19:41', NULL),
(7, 'Halima', 'Ramadhani', 'Mpendazoe', 'Female', 2, '2013-08-23', 1, 'Mwenge', 2019, NULL, '0000/00001', 1, '2019-05-20 11:21:12', '2019-05-20 11:21:12', NULL),
(8, 'Mariam', 'Khamisi', 'Ramadhani', 'Female', 2, '2013-12-26', 1, 'Kimara', 2019, NULL, '0000/00001', 1, '2019-05-20 11:23:03', '2019-05-20 11:23:03', NULL),
(9, 'Joyce', 'James', 'Kilenga', 'Female', 1, '2014-09-30', 3, 'Ubungo', 2019, NULL, '0000/00001', 1, '2019-05-20 11:25:28', '2019-05-20 11:32:21', NULL),
(10, 'Asia', 'Suleiman', 'Sultan', 'Female', 2, '2013-05-26', 1, 'Mbagala', 2019, NULL, '0000/00001', 1, '2019-05-20 11:27:01', '2019-05-20 11:27:01', NULL),
(11, 'John', 'James', 'Mapolu', 'Male', 1, '2010-10-28', 1, 'Manzese', 2018, NULL, '0000/00001', 1, '2019-05-20 11:35:03', '2019-05-20 11:35:03', NULL),
(12, 'Anna', 'Peter', 'Kilatu', 'Female', 1, '2011-08-14', 1, 'Posta', 2018, NULL, '0000/00001', 1, '2019-05-20 11:43:33', '2019-05-20 11:43:33', NULL),
(13, 'Anastazia', 'Joel', 'Batamwa', 'Female', 2, '2011-06-19', 1, 'Tandale', 2018, NULL, '0000/00001', 1, '2019-05-20 11:46:36', '2019-05-20 11:46:36', NULL),
(14, 'Fredrick', 'Athuman', 'Malima', 'Male', 2, '2010-05-24', 2, 'Mwenge', 2018, NULL, '0000/00001', 1, '2019-05-20 11:48:51', '2019-05-20 11:48:51', NULL),
(15, 'Hamidu', 'Selemani', 'Athumani', 'Male', 2, '2009-03-30', 3, 'Kimara', 2018, NULL, '0000/00001', 1, '2019-05-20 11:52:44', '2019-05-20 11:52:44', NULL),
(16, 'Juma', 'Mponya', 'Malekela', 'Male', 2, '2010-07-15', 1, 'ubungo', 2018, NULL, '0000/00001', 1, '2019-05-20 11:56:44', '2019-05-20 11:56:44', NULL),
(17, 'Magreth', 'Anthony', 'Warburg', 'Female', 1, '2009-03-04', 1, 'Kimara', 2018, NULL, '0000/00001', 1, '2019-05-20 11:58:57', '2019-05-20 11:58:57', NULL),
(18, 'Jaffar', 'Hamisi', 'Makoyi', 'Male', 2, '2010-07-01', 2, 'Sinza', 2018, NULL, '0000/00001', 1, '2019-05-20 12:00:18', '2019-05-20 12:00:18', NULL),
(19, 'Saghala', 'John', 'Komba', 'Male', 1, '2009-06-03', 1, 'Mwenge', 2018, NULL, '0000/00001', 1, '2019-05-20 12:02:13', '2019-05-20 12:02:13', NULL),
(20, 'Diana', 'Ringo', 'Heaven', 'Female', 1, '2011-08-05', 1, 'Goba', 2018, NULL, '0000/00001', 1, '2019-05-20 12:02:54', '2019-05-20 12:02:54', NULL),
(21, 'Yahaya', 'Shabani', 'Madumuya', 'Male', 2, '2008-10-15', 1, 'Manzese', 2017, NULL, '0000/00001', 1, '2019-05-20 12:19:24', '2019-05-20 12:19:24', NULL),
(22, 'Frank', 'John', 'Massawe', 'Male', 1, '2009-11-23', 1, 'Changanyikeni', 2017, NULL, '0000/00001', 1, '2019-05-20 12:22:20', '2019-05-20 12:22:20', NULL),
(23, 'Frank', 'Godluck', 'Massay', 'Male', 1, '2007-09-19', 1, 'Goba', 2017, NULL, '0000/00001', 1, '2019-05-20 12:23:18', '2019-05-20 12:23:18', NULL),
(24, 'Pili', 'Alphonce', 'Kigina', 'Female', 1, '2007-10-30', 1, 'Goba', 2017, NULL, '0000/00001', 1, '2019-05-20 19:11:19', '2019-05-20 19:11:19', NULL),
(25, 'Hawa', 'Rajabu', 'Athumani', 'Female', 2, '2008-12-11', 1, 'Keko', 2017, NULL, '0000/00001', 1, '2019-05-20 19:11:59', '2019-05-20 19:11:59', NULL),
(26, 'Issa', 'Hamisi', 'Juma', 'Male', 2, '2009-07-02', 1, 'Kimara', 2017, NULL, '0000/00001', 1, '2019-05-20 19:12:51', '2019-05-20 19:12:51', NULL),
(27, 'Josephat', 'Emmanuel', 'Bariki', 'Male', 1, '2008-04-16', 1, 'Changanyikeni', 2017, NULL, '0000/00001', 1, '2019-05-20 19:13:54', '2019-05-20 19:13:54', NULL),
(28, 'Emmanuel', 'Paul', 'Kilenga', 'Male', 1, '2007-09-21', 1, 'Mbezi', 2017, NULL, '0000/00001', 1, '2019-05-20 19:14:42', '2019-05-20 19:14:42', NULL),
(29, 'Doreen', 'Fredy', 'Mjengwa', 'Female', 1, '2009-11-19', 3, 'Mwenge', 2017, NULL, '0000/00001', 1, '2019-05-20 19:15:37', '2019-05-20 19:15:37', NULL),
(30, 'Maria', 'Steven', 'Niku', 'Female', 1, '2008-10-28', 1, 'Ubungo', 2017, NULL, '0000/00001', 1, '2019-05-20 19:17:00', '2019-05-20 19:17:00', NULL),
(31, 'Fredy', 'Frank', 'Maliky', 'Male', 1, '2007-11-01', 1, 'Mbagala', 2016, NULL, '0000/00001', 1, '2019-05-20 19:20:04', '2019-05-20 19:20:45', NULL),
(32, 'Alphonce', 'Peter', 'Madebe', 'Male', 1, '2006-08-25', 1, 'Kibamba', 2016, NULL, '0000/00001', 1, '2019-05-20 19:22:15', '2019-05-20 19:22:15', NULL),
(33, 'Selemani', 'Rajabu', 'Luwi', 'Male', 2, '2007-10-10', 2, 'Posta', 2016, NULL, '0000/00001', 1, '2019-05-20 19:23:58', '2019-05-20 19:23:58', NULL),
(34, 'Mwanaisha', 'Rashidi', 'Mkole', 'Female', 2, '2006-07-05', 1, 'Mwenge', 2016, NULL, '0000/00001', 1, '2019-05-20 19:25:08', '2019-05-20 19:25:08', NULL),
(35, 'Aisha', 'Ramadhani', 'Rashidi', 'Female', 2, '2005-11-14', 1, 'Goba', 2016, NULL, '0000/00001', 1, '2019-05-20 19:26:02', '2019-05-20 19:26:02', NULL),
(36, 'Alpha', 'Geofrey', 'Yobwa', 'Male', 1, '2005-11-10', 1, 'Kariakoo', 2016, NULL, '0000/00001', 1, '2019-05-20 19:30:06', '2019-05-20 19:30:06', NULL),
(37, 'Geofrey', 'Abdul', 'Rajabu', 'Male', 2, '2006-08-08', 1, 'Kimara', 2016, NULL, '0000/00001', 1, '2019-05-20 19:36:44', '2019-05-20 19:36:44', NULL),
(38, 'Adam', 'William', 'Wlson', 'Male', 1, '2007-02-19', 1, 'Mwenge', 2016, NULL, '0000/00001', 1, '2019-05-20 19:38:30', '2019-05-20 19:38:30', NULL),
(39, 'Jelson', 'Geofrey', 'Charles', 'Male', 1, '2006-06-12', 1, 'Kibamba', 2016, NULL, '0000/00001', 1, '2019-05-20 19:39:46', '2019-05-20 19:39:46', NULL),
(40, 'Rahim', 'Omary', 'Wahure', 'Male', 2, '2007-08-07', 1, 'Mbezi', 2016, NULL, '0000/00001', 1, '2019-05-20 19:40:47', '2019-05-20 19:40:47', NULL),
(41, 'Zulpha', 'Twalib', 'Mteleke', 'Female', 2, '2005-05-23', 1, 'Kawe', 2015, NULL, '0000/00001', 1, '2019-05-24 09:35:23', '2019-05-24 09:36:01', NULL),
(42, 'Patrick', 'Emmanuel', 'Mafuna', 'Male', 1, '2004-03-11', 2, 'Mikocheni', 2015, NULL, '0000/00001', 1, '2019-05-24 09:37:58', '2019-05-24 09:37:58', NULL),
(43, 'Feyswai', 'Khalfan', 'Kashinje', 'Male', 1, '2003-06-04', 3, 'Ubungo', 2015, NULL, '0000/00001', 1, '2019-05-24 09:39:16', '2019-05-24 09:39:16', NULL),
(44, 'Goodluck', 'Felix', 'Gwamiye', 'Male', 2, '2003-05-12', 1, 'Tabata', 2015, NULL, '0000/00001', 1, '2019-05-24 09:40:28', '2019-05-24 09:40:28', NULL),
(45, 'Juma', 'Charles', 'Masuka', 'Male', 2, '2004-10-06', 1, 'Kariakoo', 2015, NULL, '0000/00001', 1, '2019-05-24 09:41:34', '2019-05-24 09:41:34', NULL),
(46, 'Waadhaha', 'Yusuph', 'Harmood', 'Female', 2, '2004-11-03', 2, 'Vingunguti', 2015, NULL, '0000/00001', 1, '2019-05-24 09:42:48', '2019-05-24 09:42:48', NULL),
(47, 'Alfred', 'Manewe', 'Hilary', 'Male', 1, '2003-05-07', 1, 'Mwenge', 2015, NULL, '0000/00001', 1, '2019-05-24 09:44:07', '2019-05-24 09:44:07', NULL),
(48, 'John', 'Charles', 'Andrew', 'Male', 1, '2003-06-06', 3, 'Masaki', 2015, NULL, '0000/00001', 1, '2019-05-24 09:45:05', '2019-05-24 09:45:05', NULL),
(49, 'Samweli', 'Ngussa', 'Malimba', 'Male', 1, '2005-05-25', 1, 'Mbagala', 2015, NULL, '0000/00001', 1, '2019-05-24 09:46:15', '2019-05-24 09:46:15', NULL),
(50, 'Judith', 'Jonathan', 'Malongo', 'Female', 2, '2004-10-13', 1, 'Kigamboni', 2015, NULL, '0000/00001', 1, '2019-05-24 09:47:37', '2019-05-24 09:47:37', NULL),
(51, 'Sharif', 'Hamad', 'Masoud', 'Male', 2, '2002-04-04', 1, 'Tabata', 2014, NULL, '0000/00001', 1, '2019-05-24 09:49:21', '2019-05-24 09:49:21', NULL),
(52, 'Ahmed', 'Hilary', 'Mohamed', 'Male', 2, '2003-05-19', 1, 'Mikocheni', 2014, NULL, '0000/00001', 1, '2019-05-24 09:50:31', '2019-05-24 09:50:31', NULL),
(53, 'Elizabeth', 'Emmanuel', 'Shayo', 'Female', 1, '2003-10-28', 1, 'Mbezi', 2014, NULL, '0000/00001', 1, '2019-05-24 09:51:53', '2019-05-24 09:51:53', NULL),
(54, 'Elizabeth', 'Agustino', 'Manyanya', 'Female', 1, '2002-04-26', 1, 'Goba', 2014, NULL, '0000/00001', 1, '2019-05-24 09:53:59', '2019-05-24 09:53:59', NULL),
(55, 'Lameck', 'Lajah', 'Masoud', 'Male', 1, '2002-08-22', 2, 'Ubungo', 2014, NULL, '0000/00001', 1, '2019-05-24 09:56:27', '2019-05-24 09:56:27', NULL),
(56, 'Seif', 'Abbas', 'Suleiman', 'Male', 2, '2003-06-11', 1, 'Keko', 2014, NULL, '0000/00001', 1, '2019-05-24 09:57:28', '2019-05-24 09:57:28', NULL),
(57, 'Issa', 'Seif', 'Harmood', 'Male', 2, '2003-10-07', 1, 'Kimara', 2014, NULL, '0000/00001', 1, '2019-05-24 09:59:37', '2019-05-24 09:59:37', NULL),
(58, 'Irene', 'Mdoe', 'Charles', 'Female', 1, '2002-12-11', 2, 'Goba', 2014, NULL, '0000/00001', 1, '2019-05-24 10:00:26', '2019-05-24 10:00:26', NULL),
(59, 'Scolastica', 'Modestus', 'Juma', 'Female', 1, '2002-07-11', 3, 'Mwenge', 2014, NULL, '0000/00001', 1, '2019-05-24 10:01:37', '2019-05-24 10:01:37', NULL),
(60, 'Janeth', 'Mlio', 'Jackson', 'Female', 1, '2003-10-16', 1, 'Kimara', 2014, NULL, '0000/00001', 1, '2019-05-24 10:03:00', '2019-05-24 10:03:00', NULL),
(61, 'Jackson', 'Charles', 'Mushi', 'Male', 1, '1999-05-13', 1, 'Keko', 2012, NULL, '0000/00001', 1, '2019-05-24 10:04:54', '2019-05-24 10:04:54', NULL),
(62, 'Wiana', 'Alfred', 'Dotto', 'Female', 1, '1999-05-26', 1, 'Mbagala', 2012, NULL, '0000/00001', 1, '2019-05-24 10:05:52', '2019-05-24 10:05:52', NULL),
(63, 'Newman', 'Evodius', 'Katare', 'Male', 1, '1999-09-16', 1, 'Msewe', 2012, NULL, '0000/00001', 1, '2019-05-24 10:08:14', '2019-05-24 10:08:14', NULL),
(64, 'Suleiman', 'Said', 'Seif', 'Male', 2, '1998-01-08', 1, 'Kitunda', 2012, NULL, '0000/00001', 1, '2019-05-24 10:09:07', '2019-05-24 10:09:07', NULL),
(65, 'Stanley', 'Godwin', 'Mlumba', 'Male', 1, '1998-06-10', 1, 'Changanyikeni', 2012, NULL, '0000/00001', 1, '2019-05-24 10:10:07', '2019-05-24 10:10:07', NULL),
(66, 'Ahmed', 'Mkude', 'Kasinzwe', 'Male', 2, '1998-05-01', 2, 'Masaki', 2012, NULL, '0000/00001', 1, '2019-05-24 10:11:38', '2019-05-24 10:11:38', NULL),
(67, 'Gideon', 'Samweli', 'ujiku', 'Male', 1, '1997-07-09', 1, 'Kibamba', 2012, NULL, '0000/00001', 1, '2019-05-24 10:12:42', '2019-05-24 10:12:42', NULL),
(68, 'Alfred', 'Khalfan', 'Maduhu', 'Male', 2, '1997-08-11', 1, 'Manzese', 2012, NULL, '0000/00001', 1, '2019-05-24 10:13:59', '2019-05-24 10:13:59', NULL),
(69, 'Latifa', 'Juma', 'Mohamed', 'Female', 2, '1997-09-16', 3, 'Tandale', 2012, NULL, '0000/00001', 1, '2019-05-24 10:14:51', '2019-05-24 10:14:51', NULL),
(70, 'Peter', 'Audiphace', 'Kibala', 'Male', 1, '1998-02-04', 2, 'Ubungo', 2012, NULL, '0000/00001', 1, '2019-05-24 10:15:58', '2019-05-24 10:15:58', NULL),
(71, 'Omary', 'Ally', 'Abdallah', 'Male', 2, '2001-03-07', 1, 'Mwenge', 2013, NULL, '0000/00001', 1, '2019-05-24 10:22:23', '2019-05-24 10:22:23', NULL),
(72, 'Hamisi', 'Luta', 'Jamal', 'Male', 2, '2000-06-21', 1, 'Kariakoo', 2013, NULL, '0000/00001', 1, '2019-05-24 10:24:27', '2019-05-24 10:24:27', NULL),
(73, 'Godwin', 'Charles', 'Ngosha', 'Male', 1, '2000-05-24', 1, 'Masaki', 2013, NULL, '0000/00001', 1, '2019-05-24 12:35:32', '2019-05-24 12:35:32', NULL),
(74, 'James', 'Jonathan', 'Mwakitalu', 'Male', 1, '2000-02-12', 1, 'Changanyikeni', 2013, NULL, '0000/00001', 1, '2019-05-24 12:40:08', '2019-05-24 12:40:08', NULL),
(75, 'Elnes', 'Philip', 'Manyabili', 'Female', 1, '2000-11-08', 2, 'Kimara', 2013, NULL, '0000/00001', 1, '2019-05-24 12:41:36', '2019-05-24 12:41:36', NULL),
(76, 'Jennifer', 'James', 'Kilenga', 'Female', 1, '2000-06-15', 1, 'Changanyikeni', 2013, NULL, '0000/00001', 1, '2019-05-24 12:42:33', '2019-05-24 12:42:33', NULL),
(77, 'Lulu', 'John', 'Francis', 'Female', 1, '2001-11-08', 1, 'Goba', 2013, NULL, '0000/00001', 1, '2019-05-24 12:53:17', '2019-05-24 12:53:17', NULL),
(78, 'Happy', 'Johnson', 'Mlilo', 'Female', 1, '2004-10-14', 2, 'Mwenge', 2013, NULL, '0000/00001', 1, '2019-05-24 12:54:07', '2019-05-24 12:54:07', NULL),
(79, 'Ahmed', 'Wakili', 'Maduhu', 'Male', 2, '2000-07-07', 2, 'Mbagala', 2013, NULL, '0000/00001', 1, '2019-05-24 12:54:49', '2019-05-24 12:54:49', NULL),
(80, 'Sonia', 'Mkude', 'Masanja', 'Female', 1, '2000-03-17', 1, 'Kariakoo', 2013, NULL, '0000/00001', 1, '2019-05-24 12:55:33', '2019-05-24 12:55:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students_payment_records`
--

CREATE TABLE `students_payment_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_Id` int(10) UNSIGNED NOT NULL,
  `total_amount` int(15) NOT NULL,
  `paid_amount` int(15) NOT NULL,
  `unpaid_amount` int(15) DEFAULT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `acronym` varchar(6) NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_types`
--

CREATE TABLE `tbl_user_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_types`
--

INSERT INTO `tbl_user_types` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Teacher', '2019-04-14 14:49:54', '0000-00-00 00:00:00', NULL),
(2, 'Cashier', '2019-06-07 07:29:04', '2019-06-07 04:29:04', NULL),
(3, 'Cooker', '2019-06-07 07:29:53', '2019-06-07 04:29:34', NULL),
(4, 'Head Teacher', '2019-06-03 03:01:07', '2019-06-03 03:01:07', NULL),
(5, 'New', '2019-06-06 08:39:16', '2019-06-06 05:39:16', '2019-06-06 05:39:16'),
(6, 'Academic Teacher', '2019-06-07 04:31:18', '2019-06-07 04:31:18', NULL),
(7, 'Manager', '2019-06-07 04:35:46', '2019-06-07 04:35:46', NULL),
(8, 'Admin', '2019-06-07 10:09:25', '2019-06-07 07:09:25', NULL),
(9, 'Driver', '2019-06-07 04:36:15', '2019-06-07 04:36:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `birth_date` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` int(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `profile_picture` varchar(150) NOT NULL,
  `user_type` int(10) UNSIGNED NOT NULL,
  `nationality_id` int(10) UNSIGNED NOT NULL,
  `religion_id` int(10) UNSIGNED NOT NULL,
  `year_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `surname`, `gender`, `birth_date`, `address`, `email`, `phone`, `password`, `profile_picture`, `user_type`, `nationality_id`, `religion_id`, `year_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Onest', 'Paul', 'Kilenga', 'Male', '1994-03-31', 'Changanyikeni', 'onestpaul8@gmail.com', 714451236, '$2y$10$rDyEYnmhKoxnMpklx8Htz.jZji.T2cWZ5xY9vojiNNK.CGJkeKh6C', '0000/00001', 1, 1, 1, 1, '2019-04-14 12:33:01', '2019-04-14 12:33:01', NULL),
(2, 'James', 'Paul', 'Kilenga', 'Male', '1999-02-04', 'Sinza', 'jimmy@gmail.com', 714235689, '$2y$10$Fxsh.Al17yUAW7bIyfnlk.LeAniNHXab3X.Yns/aFpNEGqAAU5ndC', '0000/00001', 2, 1, 1, 1, '2019-04-17 17:50:55', '2019-04-18 00:50:55', NULL),
(3, 'Muhili', 'Chacha', 'Ngutunyi', 'Female', '1989-06-07', 'ubungo', 'Muhili@gmail.com', 768532367, '$2y$10$tI9o2tIUUrofJ0k3Fo6duOoajoaup3CQm7sUYVeoz/DyVKgWO3sTe', '0000/00001', 1, 1, 1, 1, '2019-05-16 10:26:11', '2019-05-16 10:26:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(15) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2019', 1, '2019-04-14 15:27:45', '2019-05-16 11:07:11', NULL),
(2, '2020', 0, '2019-04-22 19:25:28', '2019-05-16 11:07:11', NULL),
(3, '2021', 0, '2019-05-14 14:56:51', '2019-05-14 14:56:51', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carriages`
--
ALTER TABLE `carriages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_assets`
--
ALTER TABLE `current_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_liabilities`
--
ALTER TABLE `current_liabilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drawing`
--
ALTER TABLE `drawing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_type` (`user_type`),
  ADD KEY `nationality_id` (`nationality_id`),
  ADD KEY `religion_id` (`religion_id`),
  ADD KEY `year_id` (`year_id`);

--
-- Indexes for table `equity`
--
ALTER TABLE `equity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `indirect_income`
--
ALTER TABLE `indirect_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `non_current_assets`
--
ALTER TABLE `non_current_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `non_current_liabilities`
--
ALTER TABLE `non_current_liabilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nursery`
--
ALTER TABLE `nursery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `year_id` (`year_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standard_1`
--
ALTER TABLE `standard_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `year_id` (`year_id`);

--
-- Indexes for table `standard_2`
--
ALTER TABLE `standard_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standard_3`
--
ALTER TABLE `standard_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standard_4`
--
ALTER TABLE `standard_4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standard_5`
--
ALTER TABLE `standard_5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standard_6`
--
ALTER TABLE `standard_6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standard_7`
--
ALTER TABLE `standard_7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `religion_id` (`religion_id`),
  ADD KEY `year_id` (`year_id`),
  ADD KEY `nationality_id` (`nationality_id`);

--
-- Indexes for table `students_payment_records`
--
ALTER TABLE `students_payment_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_types`
--
ALTER TABLE `tbl_user_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `year_id` (`year_id`),
  ADD KEY `religion_id` (`religion_id`),
  ADD KEY `user_type` (`user_type`),
  ADD KEY `nationality_id` (`nationality_id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carriages`
--
ALTER TABLE `carriages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `current_assets`
--
ALTER TABLE `current_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `current_liabilities`
--
ALTER TABLE `current_liabilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drawing`
--
ALTER TABLE `drawing`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `equity`
--
ALTER TABLE `equity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indirect_income`
--
ALTER TABLE `indirect_income`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `non_current_assets`
--
ALTER TABLE `non_current_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `non_current_liabilities`
--
ALTER TABLE `non_current_liabilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nursery`
--
ALTER TABLE `nursery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `standard_1`
--
ALTER TABLE `standard_1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `standard_2`
--
ALTER TABLE `standard_2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `standard_3`
--
ALTER TABLE `standard_3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `standard_4`
--
ALTER TABLE `standard_4`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `standard_5`
--
ALTER TABLE `standard_5`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `standard_6`
--
ALTER TABLE `standard_6`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `standard_7`
--
ALTER TABLE `standard_7`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `students_payment_records`
--
ALTER TABLE `students_payment_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_types`
--
ALTER TABLE `tbl_user_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`user_type`) REFERENCES `tbl_user_types` (`id`),
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`nationality_id`) REFERENCES `nationalities` (`id`),
  ADD CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`religion_id`) REFERENCES `religions` (`id`),
  ADD CONSTRAINT `employees_ibfk_4` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `nursery`
--
ALTER TABLE `nursery`
  ADD CONSTRAINT `nursery_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `nursery_ibfk_2` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `standard_1`
--
ALTER TABLE `standard_1`
  ADD CONSTRAINT `standard_1_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `standard_1_ibfk_2` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`religion_id`) REFERENCES `religions` (`id`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`),
  ADD CONSTRAINT `students_ibfk_3` FOREIGN KEY (`nationality_id`) REFERENCES `nationalities` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`religion_id`) REFERENCES `religions` (`id`),
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`user_type`) REFERENCES `tbl_user_types` (`id`),
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`nationality_id`) REFERENCES `nationalities` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
