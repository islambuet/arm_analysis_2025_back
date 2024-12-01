-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table rnd_2023_back.competitors
DROP TABLE IF EXISTS `competitors`;
CREATE TABLE IF NOT EXISTS `competitors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(5) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.competitors: ~2 rows (approximately)
INSERT INTO `competitors` (`id`, `name`, `code`, `contact_person`, `email`, `mobile_no`, `address`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'c1', 'a', NULL, NULL, NULL, NULL, 99, 'Active', 1, NULL, '2022-11-06 13:11:51', NULL),
	(2, 'c2', 'a', NULL, NULL, NULL, NULL, 99, 'Active', 1, NULL, '2022-11-06 13:11:54', NULL);

-- Dumping structure for table rnd_2023_back.crops
DROP TABLE IF EXISTS `crops`;
CREATE TABLE IF NOT EXISTS `crops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(5) DEFAULT NULL,
  `replica` enum('Yes','No') NOT NULL DEFAULT 'Yes' COMMENT 'Yes,No',
  `initial_plants` mediumint(9) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.crops: ~31 rows (approximately)
INSERT INTO `crops` (`id`, `name`, `code`, `replica`, `initial_plants`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Cauliflower', 'CF', 'No', 0, 1, 'Active', 2, 2, '2022-10-25 03:36:06', '2023-01-03 03:23:40'),
	(2, 'Cabbage', 'CB', 'No', 0, 2, 'Active', 2, NULL, '2022-10-25 03:37:51', NULL),
	(3, 'Kohlrabi', 'KL', 'No', 0, 3, 'Active', 2, NULL, '2022-10-25 03:38:09', NULL),
	(4, 'Broccoli', 'BR', 'No', 0, 4, 'Active', 2, NULL, '2022-10-25 03:38:43', NULL),
	(5, 'Beet Root', 'BT', 'No', 0, 5, 'Active', 2, NULL, '2022-10-25 03:40:26', NULL),
	(6, 'Tomato', 'TM', 'Yes', 0, 10, 'Active', 2, NULL, '2022-10-25 03:41:25', NULL),
	(7, 'Chilli', 'CH', 'Yes', 0, 11, 'Active', 2, NULL, '2022-10-25 03:41:54', NULL),
	(8, 'Brinjal', 'BN', 'Yes', 0, 12, 'Active', 2, NULL, '2022-10-25 03:42:10', NULL),
	(9, 'Cucumber', 'CU', 'No', 0, 20, 'Active', 2, NULL, '2022-10-25 03:42:43', NULL),
	(10, 'Bitter Gourd', 'BT', 'No', 0, 21, 'Active', 2, NULL, '2022-10-25 03:43:04', NULL),
	(11, 'Bottle Gourd', 'BO', 'No', 0, 22, 'Active', 2, NULL, '2022-10-25 03:43:17', NULL),
	(12, 'Ridge Gourd', 'RG', 'No', 0, 23, 'Active', 2, NULL, '2022-10-25 03:43:37', NULL),
	(13, 'Snake Gourd', 'SG', 'No', 0, 24, 'Active', 2, 2, '2022-10-25 03:56:50', '2022-10-25 03:56:59'),
	(14, 'Sponge Gourd', 'SPG', 'No', 0, 25, 'Active', 2, NULL, '2022-10-25 03:57:42', NULL),
	(15, 'Wax Gourd', 'WG', 'No', 0, 26, 'Active', 2, NULL, '2022-10-25 03:57:56', NULL),
	(16, 'Yardlong Bean', 'YB', 'No', 0, 27, 'Active', 2, NULL, '2022-10-25 04:01:38', NULL),
	(17, 'Pumpkin', 'PU', 'No', 0, 29, 'Active', 2, 2, '2022-10-25 04:02:04', '2022-10-25 04:11:54'),
	(18, 'Watermelon', 'WM', 'No', 0, 30, 'Active', 2, 2, '2022-10-25 04:03:00', '2022-10-25 04:12:10'),
	(19, 'Okra', 'OK', 'Yes', 0, 13, 'Active', 2, NULL, '2022-10-25 04:04:22', NULL),
	(20, 'Radish', 'RD', 'No', 0, 40, 'Active', 2, NULL, '2022-10-25 04:05:14', NULL),
	(21, 'Carrot', 'CR', 'No', 0, 41, 'Active', 2, NULL, '2022-10-25 04:05:34', NULL),
	(22, 'Potato', 'PT', 'No', 0, 14, 'Active', 2, NULL, '2022-10-25 04:06:32', NULL),
	(23, 'Coriander', 'CO', 'No', 0, 50, 'Active', 2, NULL, '2022-10-25 04:07:14', NULL),
	(24, 'Spinach', 'SP', 'No', 0, 51, 'Active', 2, NULL, '2022-10-25 04:07:37', NULL),
	(25, 'Red Amaranth', 'RD', 'No', 0, 52, 'Active', 2, NULL, '2022-10-25 04:08:17', NULL),
	(26, 'Stem Amaranth', 'SA', 'No', 0, 53, 'Active', 2, NULL, '2022-10-25 04:08:35', NULL),
	(27, 'Indian Spinach', 'IS', 'No', 0, 54, 'Active', 2, NULL, '2022-10-25 04:08:50', NULL),
	(28, 'Water Amaranth', 'WA', 'No', 0, 55, 'Active', 2, NULL, '2022-10-25 04:09:01', NULL),
	(29, 'Papaya', 'PP', 'No', 0, 60, 'Active', 2, NULL, '2022-10-25 04:09:25', NULL),
	(30, 'Onion', 'ON', 'No', 0, 62, 'Active', 2, NULL, '2022-10-25 04:09:45', NULL),
	(31, 'Country Bean', 'CBN', 'No', 0, 28, 'Active', 2, NULL, '2022-10-25 04:11:16', NULL);

-- Dumping structure for table rnd_2023_back.crop_features
DROP TABLE IF EXISTS `crop_features`;
CREATE TABLE IF NOT EXISTS `crop_features` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `crop_id` smallint(6) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.crop_features: ~23 rows (approximately)
INSERT INTO `crop_features` (`id`, `name`, `crop_id`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Summer', 1, 1, 'Active', 2, NULL, '2022-10-24 22:19:11', NULL),
	(2, 'Extra Early', 1, 2, 'Active', 2, NULL, '2022-10-24 22:19:37', NULL),
	(3, 'Early', 1, 3, 'Active', 2, NULL, '2022-10-24 22:19:49', NULL),
	(4, 'Mid', 1, 4, 'Active', 2, NULL, '2022-10-24 22:20:08', NULL),
	(5, 'Late', 1, 5, 'Active', 2, NULL, '2022-10-24 22:20:25', NULL),
	(6, '35-40 Days', 1, 10, 'Active', 2, NULL, '2022-10-24 22:20:56', NULL),
	(7, '40-45 Days', 1, 11, 'Active', 2, NULL, '2022-10-24 22:21:13', NULL),
	(8, '45-50 Days', 1, 13, 'Active', 2, NULL, '2022-10-24 22:21:34', NULL),
	(9, '50-55 Days', 1, 14, 'Active', 2, NULL, '2022-10-24 22:22:04', NULL),
	(10, '55-60 Days', 1, 15, 'Active', 2, 2, '2022-10-24 22:22:19', '2022-10-24 22:24:17'),
	(11, '60-65 Days', 1, 16, 'Active', 2, 2, '2022-10-24 22:22:29', '2022-10-24 22:24:10'),
	(12, '65-70 Days', 1, 17, 'Active', 2, 2, '2022-10-24 22:22:57', '2022-10-24 22:24:03'),
	(13, '70-75 Days', 1, 18, 'Active', 2, 2, '2022-10-24 22:23:08', '2022-10-24 22:23:56'),
	(14, '75-80 Days', 1, 19, 'Active', 2, 2, '2022-10-24 22:23:17', '2022-10-24 22:23:49'),
	(15, '80+ Days', 1, 20, 'Active', 2, NULL, '2022-10-24 22:23:41', NULL),
	(16, 'Dome Shape', 6, 21, 'Active', 2, NULL, '2022-10-24 22:24:40', NULL),
	(17, 'Semi-Dome', 6, 22, 'Active', 2, NULL, '2022-10-24 22:24:53', NULL),
	(18, 'Flat Shape', 6, 24, 'Active', 2, NULL, '2022-10-24 22:25:11', NULL),
	(19, 'Erect Leaf', 6, 25, 'Active', 2, NULL, '2022-10-24 22:25:52', NULL),
	(20, 'Semi Erect Leaf', 6, 27, 'Active', 2, NULL, '2022-10-24 22:26:12', NULL),
	(21, 'Flat Leaf', 6, 29, 'Active', 2, NULL, '2022-10-24 22:26:28', NULL),
	(22, 'shaiful', 6, 99, 'Active', 1, NULL, '2022-11-06 07:08:47', NULL),
	(23, 'shaiful2', 6, 99, 'Active', 1, NULL, '2022-11-06 07:08:55', NULL);

-- Dumping structure for table rnd_2023_back.crop_types
DROP TABLE IF EXISTS `crop_types`;
CREATE TABLE IF NOT EXISTS `crop_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `crop_id` smallint(6) NOT NULL,
  `code` varchar(5) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.crop_types: ~79 rows (approximately)
INSERT INTO `crop_types` (`id`, `name`, `crop_id`, `code`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Extra Early(40-45)', 1, 'EX', 3, 'Active', 1, NULL, NULL, NULL),
	(2, 'Early(45-50)', 1, 'E', 5, 'Active', 1, NULL, NULL, NULL),
	(3, 'Mid(55-65)', 1, 'M', 7, 'Active', 1, NULL, NULL, NULL),
	(4, 'Late(80+)', 1, 'L', 13, 'Active', 1, NULL, NULL, NULL),
	(5, 'Early', 7, 'E', 99, 'Active', 1, NULL, NULL, NULL),
	(6, 'Late', 7, 'L', 99, 'Active', 1, NULL, NULL, NULL),
	(7, 'Early', 2, 'E', 3, 'Active', 1, NULL, NULL, NULL),
	(8, 'Late', 2, 'L', 5, 'Active', 1, NULL, NULL, NULL),
	(9, 'Leafy', 8, 'LF', 99, 'Active', 1, NULL, NULL, NULL),
	(10, 'Head', 8, 'H', 99, 'Active', 1, NULL, NULL, NULL),
	(11, 'Pak Choi', 9, 'P', 99, 'Active', 1, NULL, NULL, NULL),
	(12, 'Early', 3, 'E', 99, 'Active', 1, NULL, NULL, NULL),
	(13, 'Late', 3, 'L', 99, 'Active', 1, NULL, NULL, NULL),
	(14, 'Purple Neck', 10, 'PN', 99, 'Active', 1, NULL, NULL, NULL),
	(15, 'White', 10, 'W', 99, 'Active', 1, NULL, NULL, NULL),
	(16, 'Beet Root', 11, 'B', 99, 'Active', 1, NULL, NULL, NULL),
	(17, 'Western', 12, 'W', 99, 'Active', 1, NULL, NULL, NULL),
	(18, 'Mustard', 12, 'M', 99, 'Active', 1, NULL, NULL, NULL),
	(19, 'Indian', 12, 'IN', 99, 'Active', 1, NULL, NULL, NULL),
	(20, 'Acidic', 4, 'A', 99, 'Active', 1, NULL, NULL, NULL),
	(21, 'Indeterminate', 4, 'SR', 99, 'In-Active', 1, NULL, NULL, NULL),
	(22, 'Semi Indeterminate', 4, 'ES', 99, 'In-Active', 1, NULL, NULL, NULL),
	(23, 'Determinate', 4, 'RM', 99, 'In-Active', 1, NULL, NULL, NULL),
	(24, 'Green', 6, 'G', 99, 'Active', 1, NULL, NULL, NULL),
	(25, 'Light Green', 6, 'LG', 99, 'Active', 1, NULL, NULL, NULL),
	(26, 'Upright', 6, 'U', 99, 'Active', 1, NULL, NULL, NULL),
	(27, 'Capsicum', 6, 'C', 99, 'Active', 1, NULL, NULL, NULL),
	(28, 'Green', 5, 'G', 99, 'Active', 1, NULL, NULL, NULL),
	(29, 'Purple', 5, 'P', 99, 'Active', 1, NULL, NULL, NULL),
	(30, 'Black', 5, 'B', 99, 'Active', 1, NULL, NULL, NULL),
	(31, 'Short', 13, 'S', 99, 'Active', 1, NULL, NULL, NULL),
	(32, 'Medium', 13, 'M', 99, 'Active', 1, NULL, NULL, NULL),
	(33, 'Long', 13, 'L', 99, 'Active', 1, NULL, NULL, NULL),
	(34, 'Short', 21, 'S', 99, 'Active', 1, NULL, NULL, NULL),
	(35, 'Medium', 21, 'M', 99, 'Active', 1, NULL, NULL, NULL),
	(36, 'Long', 21, 'L', 99, 'Active', 1, NULL, NULL, NULL),
	(37, 'Green', 18, 'G', 99, 'Active', 1, NULL, NULL, NULL),
	(38, 'Light Green', 18, 'LG', 99, 'Active', 1, NULL, NULL, NULL),
	(39, 'Short', 22, 'S', 99, 'Active', 1, NULL, NULL, NULL),
	(40, 'Medium', 22, 'M', 99, 'Active', 1, NULL, NULL, NULL),
	(41, 'Long', 22, 'L', 99, 'Active', 1, NULL, NULL, NULL),
	(42, 'Green', 20, 'G', 99, 'Active', 1, NULL, NULL, NULL),
	(43, 'Light Green', 20, 'LG', 99, 'Active', 1, NULL, NULL, NULL),
	(44, 'Green', 23, 'G', 99, 'Active', 1, NULL, NULL, NULL),
	(45, 'Light Green', 23, 'LG', 99, 'Active', 1, NULL, NULL, NULL),
	(46, 'Green', 19, 'G', 99, 'Active', 1, NULL, NULL, NULL),
	(47, 'Light Green', 19, 'LG', 99, 'Active', 1, NULL, NULL, NULL),
	(48, 'Dark Green', 24, 'DG', 99, 'Active', 1, NULL, NULL, NULL),
	(49, 'Spotted', 24, 'SP', 99, 'Active', 1, NULL, NULL, NULL),
	(50, 'OP', 15, 'OP', 99, 'Active', 1, NULL, NULL, NULL),
	(51, 'Hybrid', 15, 'HY', 99, 'Active', 1, NULL, NULL, NULL),
	(52, 'Kuroda', 17, 'K', 99, 'Active', 1, NULL, NULL, NULL),
	(53, 'Nantes', 17, 'N', 99, 'Active', 1, NULL, NULL, NULL),
	(54, 'Long Plant', 14, 'LP', 99, 'Active', 1, NULL, NULL, NULL),
	(55, 'Dwarf plant', 14, 'DP', 99, 'Active', 1, NULL, NULL, NULL),
	(56, 'Fast Bolting', 16, 'FB', 99, 'Active', 1, NULL, NULL, NULL),
	(57, 'Slow Bolting', 16, 'SB', 99, 'Active', 1, NULL, NULL, NULL),
	(58, 'Charleston', 25, 'C', 99, 'Active', 1, NULL, NULL, NULL),
	(59, 'Dragon', 25, 'D', 99, 'Active', 1, NULL, NULL, NULL),
	(60, 'Black', 25, 'B', 99, 'Active', 1, NULL, NULL, NULL),
	(61, 'Ice Box', 25, 'IB', 99, 'Active', 1, NULL, NULL, NULL),
	(62, 'Round', 26, 'R', 99, 'Active', 1, NULL, NULL, NULL),
	(63, 'Long', 26, 'L', 99, 'Active', 1, NULL, NULL, NULL),
	(64, 'Yellow', 25, 'Y', 99, 'Active', 1, NULL, NULL, NULL),
	(65, 'Greens', 27, 'GR', 99, 'Active', 1, NULL, NULL, NULL),
	(66, 'Mid+ Late(70-75)', 1, 'ML', 10, 'Active', 1, NULL, NULL, NULL),
	(67, 'Summer (45-55 Days)', 2, 'S', 1, 'Active', 1, NULL, NULL, NULL),
	(68, 'Long', 12, 'L', 99, 'Active', 1, NULL, NULL, NULL),
	(69, 'Round', 28, 'R', 99, 'Active', 1, NULL, NULL, NULL),
	(70, 'Long', 28, 'L', 99, 'Active', 1, NULL, NULL, NULL),
	(71, 'Ornamental', 29, 'On', 99, 'Active', 1, NULL, NULL, NULL),
	(72, 'Red Onion', 30, 'RO', 99, 'Active', 1, NULL, NULL, NULL),
	(73, 'Early', 4, 'E', 99, 'Active', 1, NULL, NULL, NULL),
	(74, 'Mid+Summer', 4, 'MS', 99, 'Active', 1, NULL, NULL, NULL),
	(75, 'Mid', 2, 'M', 4, 'Active', 1, NULL, NULL, NULL),
	(76, 'Hybrid', 31, 'H', 99, 'Active', 1, NULL, NULL, NULL),
	(77, 'Summer', 1, 'S', 1, 'Active', 3, NULL, NULL, NULL),
	(78, 'Dual Purpose', 6, 'DP', 999, 'Active', 3, NULL, NULL, NULL),
	(79, 'Shaiful', 1, 'sh', 99, 'Active', 1, NULL, '2022-11-08 15:19:00', NULL);

-- Dumping structure for table rnd_2023_back.diseases
DROP TABLE IF EXISTS `diseases`;
CREATE TABLE IF NOT EXISTS `diseases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `crop_id` smallint(6) NOT NULL,
  `type` enum('Disease','Pest') NOT NULL DEFAULT 'Disease' COMMENT 'Disease,Pest',
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.diseases: ~0 rows (approximately)

-- Dumping structure for table rnd_2023_back.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.migrations: ~25 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2022_10_04_073440_create_user_groups', 1),
	(2, '2022_10_04_073644_create_user_types', 1),
	(3, '2022_10_04_073656_create_users', 1),
	(4, '2022_10_06_190311_create_system_configurations', 1),
	(5, '2022_10_09_074412_create_user_auth_tokens', 1),
	(6, '2022_10_10_020551_create_user_otps', 1),
	(7, '2022_10_10_053352_create_system_history_mobile_sms', 1),
	(8, '2022_10_10_221820_create_system_tasks', 1),
	(9, '2022_10_12_034109_create_system_user_hidden_columns', 1),
	(10, '2022_10_12_041822_create_system_histories', 1),
	(11, '2022_10_18_213832_create_principals', 1),
	(12, '2022_10_19_040450_create_competitors', 1),
	(13, '2022_10_19_041720_create_seasons', 1),
	(14, '2022_10_20_050352_create_crops', 1),
	(17, '2022_10_22_191303_create_trial_form_inputs', 1),
	(22, '2022_11_08_203854_create_crop_features', 3),
	(23, '2022_10_22_020906_create_crop_types', 4),
	(25, '2022_11_05_114541_create_varieties', 5),
	(27, '2022_10_21_065557_create_trial_forms', 6),
	(28, '2022_11_11_102900_create_trial_stations', 7),
	(29, '2022_11_12_190821_create_diseases', 8),
	(31, '2022_11_19_154403_create_selected_varieties', 9),
	(34, '2022_11_23_011605_create_trial_varieties', 10),
	(35, '2022_11_28_075859_create_trial_data', 11),
	(38, '2022_12_05_035700_create_trial_report_forms', 12);

-- Dumping structure for table rnd_2023_back.principals
DROP TABLE IF EXISTS `principals`;
CREATE TABLE IF NOT EXISTS `principals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(5) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.principals: ~2 rows (approximately)
INSERT INTO `principals` (`id`, `name`, `code`, `contact_person`, `email`, `mobile_no`, `address`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'p1', 'p1', NULL, NULL, NULL, NULL, 99, 'Active', 1, NULL, '2022-11-06 13:11:39', NULL),
	(2, 'Sakata India', 'SID', NULL, NULL, NULL, NULL, 120, 'Active', 1, 2, '2022-11-06 13:11:43', '2023-01-03 02:54:33');

-- Dumping structure for table rnd_2023_back.seasons
DROP TABLE IF EXISTS `seasons`;
CREATE TABLE IF NOT EXISTS `seasons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `expected_delivery_at` timestamp NULL DEFAULT NULL,
  `expected_sowing_at` timestamp NULL DEFAULT NULL,
  `expected_reporting_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.seasons: ~4 rows (approximately)
INSERT INTO `seasons` (`id`, `name`, `ordering`, `status`, `expected_delivery_at`, `expected_sowing_at`, `expected_reporting_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Summer/February', 1, 'Active', '2023-02-04 16:00:00', '2023-02-14 16:00:00', '2023-06-14 16:00:00', 2, 2, '2022-11-03 02:07:22', '2022-11-03 02:08:24'),
	(2, 'March', 99, 'Active', NULL, NULL, NULL, 1, NULL, '2022-11-19 17:45:41', NULL),
	(3, 'Winter', 99, 'Active', NULL, NULL, NULL, 2, NULL, '2023-01-03 03:16:09', NULL),
	(4, 'Late winter', 99, 'Active', NULL, NULL, NULL, 2, NULL, '2023-01-03 03:16:25', NULL);

-- Dumping structure for table rnd_2023_back.selected_varieties
DROP TABLE IF EXISTS `selected_varieties`;
CREATE TABLE IF NOT EXISTS `selected_varieties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `year` smallint(6) NOT NULL,
  `variety_id` int(11) NOT NULL,
  `rnd_ordering` smallint(6) NOT NULL DEFAULT 0,
  `rnd_code` varchar(255) DEFAULT NULL,
  `season_ids` varchar(255) NOT NULL DEFAULT ',',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.selected_varieties: ~18 rows (approximately)
INSERT INTO `selected_varieties` (`id`, `year`, `variety_id`, `rnd_ordering`, `rnd_code`, `season_ids`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 2022, 5, 1, 'CF-M-01-ARM-22', ',1,', 1, NULL, '2022-11-22 19:38:15', NULL),
	(2, 2022, 4, 2, 'CF-EX-02-ARM-22', ',1,2,', 1, NULL, '2022-11-22 19:38:25', NULL),
	(3, 2022, 7, 1, 'CB-M-01-ARM-22', ',2,', 1, NULL, '2022-11-22 19:38:37', NULL),
	(4, 2022, 3, 3, 'CF-EX-03-ARM-22', ',2,', 1, NULL, '2022-11-22 19:38:49', NULL),
	(5, 2021, 3, 2, 'CF-EX-02-ARM-21', ',1,2,', 1, 1, '2022-11-28 12:06:39', '2022-11-28 12:16:09'),
	(6, 2021, 4, 3, 'CF-EX-03-ARM-21', ',1,2,', 1, 1, '2022-11-28 12:07:20', '2022-11-28 12:13:01'),
	(7, 2021, 5, 4, 'CF-M-04-ARM-21', ',1,2,', 1, 1, '2022-11-28 12:13:07', '2022-11-28 12:16:01'),
	(8, 2021, 6, 1, 'CB-E-01-ARM-21', ',1,2,', 1, NULL, '2022-11-28 12:18:11', NULL),
	(9, 2023, 10, 1, 'CF-EX-01-ARM-23', ',1,', 2, NULL, '2023-01-03 03:09:14', NULL),
	(10, 2023, 5, 2, 'CF-M-02-ARM-23', ',1,', 2, 2, '2023-01-03 03:10:56', '2023-01-03 03:12:15'),
	(11, 2023, 4, 3, 'CF-EX-03-ARM-23', ',1,2,3,', 2, 2, '2023-01-03 03:12:25', '2023-01-03 03:18:38'),
	(12, 2023, 7, 1, 'CB-M-01-ARM-23', ',1,2,', 2, NULL, '2023-01-03 03:12:46', NULL),
	(13, 2023, 6, 2, 'CB-E-02-ARM-23', ',1,2,3,4,', 2, 1, '2023-01-03 03:12:57', '2023-01-07 12:45:08'),
	(14, 2023, 3, 4, 'CF-EX-04-ARM-23', ',1,2,4,', 2, NULL, '2023-01-03 03:17:40', NULL),
	(15, 2023, 14, 1, 'TM-U-01-ARM-23', ',2,', 2, NULL, '2023-01-03 03:51:05', NULL),
	(16, 2023, 12, 2, 'TM-G-02-ARM-23', ',2,', 2, NULL, '2023-01-03 03:51:17', NULL),
	(17, 2023, 13, 3, 'TM-LG-03-ARM-23', ',1,2,3,4,', 2, NULL, '2023-01-03 03:51:30', NULL),
	(18, 2023, 11, 5, 'CF-S-05-PSID-23', ',1,2,3,', 1, NULL, '2023-01-03 18:02:35', NULL);

-- Dumping structure for table rnd_2023_back.system_configurations
DROP TABLE IF EXISTS `system_configurations`;
CREATE TABLE IF NOT EXISTS `system_configurations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purpose` varchar(255) NOT NULL,
  `config_value` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.system_configurations: ~7 rows (approximately)
INSERT INTO `system_configurations` (`id`, `purpose`, `config_value`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'SITE_OFF_LINE', '0', 'Making the application go offline.1 for yes', 'Active', 1, NULL, '2022-10-18 17:51:03', NULL),
	(2, 'OTP_EXPIRE_DURATION', '300', 'OTP expires/Resend OTP in seconds.', 'Active', 1, 2, '2022-10-18 17:51:03', '2022-10-19 06:26:10'),
	(3, 'LOGIN_MOBILE_VERIFICATION', '0', 'Mobile verification for all.1=yes 0 no', 'Active', 1, 1, '2022-10-18 17:51:03', '2022-11-04 23:47:43'),
	(4, 'LOGIN_SESSION_EXPIRE_HOURS', '1', 'User Session Expires in hours', 'Active', 1, 2, '2022-10-18 17:51:03', '2022-10-19 06:28:08'),
	(5, 'MOBILE_SMS_API_TOKEN', 'C200230461b99ed0cb1594.89498470', 'SMS system api key', 'Active', 1, NULL, '2022-10-18 17:51:03', NULL),
	(6, 'UPLOADED_IMAGE_BASEURL', 'http://localhost/rnd_2023_upload/public/', 'base url for uploaded Image', 'Active', 1, NULL, '2022-10-18 17:51:03', NULL),
	(7, 'CURRENT_SEASON_ID', '2', 'Running sesaon Id', 'Active', 1, 1, '2022-11-27 15:27:48', '2022-11-28 12:01:00');

-- Dumping structure for table rnd_2023_back.system_histories
DROP TABLE IF EXISTS `system_histories`;
CREATE TABLE IF NOT EXISTS `system_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(150) NOT NULL,
  `table_id` int(11) NOT NULL COMMENT 'Primary key ID of regarding task table',
  `controller` varchar(150) NOT NULL,
  `method` varchar(150) NOT NULL,
  `data_old` text DEFAULT NULL,
  `data_new` text DEFAULT NULL,
  `action` varchar(20) NOT NULL COMMENT 'ADD, UPDATE, DELETE',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.system_histories: ~116 rows (approximately)
INSERT INTO `system_histories` (`id`, `table_name`, `table_id`, `controller`, `method`, `data_old`, `data_new`, `action`, `created_at`, `created_by`) VALUES
	(1, 'rnd_2023.trial_report_forms', 1, 'TrialReportFormsController', 'saveIFields', '{"0":{"name":"c1","formula":"none","ordering":"99","equation":"10"},"6":{"name":"rating","formula":"total","ordering":"99","equation":"total(13)"},"9":{"name":"t1","formula":"average","ordering":"1","equation":"average(7)"}}', '{"4":{"name":"Curd Weight","formula":"none","ordering":"1","inputId":"1","equation":"1"},"5":{"name":"images","formula":"none","ordering":"2","inputId":"8","equation":"8"},"6":{"name":"Rating","formula":"none","ordering":"3","inputId":"13","equation":"13"},"7":{"name":"Total Rating","formula":"total","ordering":"4","inputId":"13","equation":"total(13)"},"8":{"name":"Average Rating","formula":"total","ordering":"5","inputId":"13","equation":"total(13)"},"9":{"name":"date","formula":"none","ordering":"6","inputId":"12","equation":"12"}}', 'EDIT', '2022-12-19 06:26:00', 1),
	(2, 'rnd_2023.principals', 2, 'PrincipalsController', 'saveItem', '{"name":"p2"}', '{"name":"SID"}', 'EDIT', '2023-01-03 02:53:15', 2),
	(3, 'rnd_2023.principals', 2, 'PrincipalsController', 'saveItem', '{"name":"SID","code":"1","ordering":99}', '{"name":"Sakata India","code":"SID","ordering":"1"}', 'EDIT', '2023-01-03 02:53:57', 2),
	(4, 'rnd_2023.principals', 2, 'PrincipalsController', 'saveItem', '{"ordering":1}', '{"ordering":"120"}', 'EDIT', '2023-01-03 02:54:33', 2),
	(5, 'rnd_2023.varieties', 10, 'VarietiesController', 'saveItem', '[]', '{"name":"asdaf","crop_type_id":"1","crop_feature_ids":",1,5,8,","whose":"Principal","principal_id":"2","competitor_id":null,"ordering":"99","status":"Active","retrial":"Yes"}', 'ADD', '2023-01-03 03:04:14', 2),
	(6, 'rnd_2023.varieties', 10, 'VarietiesController', 'saveItem', '{"whose":"Principal"}', '{"whose":"ARM"}', 'EDIT', '2023-01-03 03:09:01', 2),
	(7, 'rnd_2023.varieties', 9, 'VarietySelectionController', 'saveItem', '[]', '{"season_ids":",1,","year":"2023","variety_id":"10","rnd_ordering":1,"rnd_code":"CF-EX-01-ARM-23"}', 'ADD', '2023-01-03 03:09:14', 2),
	(8, 'rnd_2023.varieties', 10, 'VarietySelectionController', 'saveItem', '[]', '{"season_ids":",1,2,","year":"2023","variety_id":"5","rnd_ordering":2,"rnd_code":"CF-M-02-ARM-23"}', 'ADD', '2023-01-03 03:10:56', 2),
	(9, 'rnd_2023.varieties', 10, 'VarietySelectionController', 'saveItem', '{"id":10,"season_ids":",1,2,","rnd_ordering":2}', '{"season_ids":",1,","rnd_ordering":2,"rnd_code":"CF-M-02-ARM-23"}', 'EDIT', '2023-01-03 03:12:15', 2),
	(10, 'rnd_2023.varieties', 11, 'VarietySelectionController', 'saveItem', '[]', '{"season_ids":",1,2,","year":"2023","variety_id":"4","rnd_ordering":3,"rnd_code":"CF-EX-03-ARM-23"}', 'ADD', '2023-01-03 03:12:25', 2),
	(11, 'rnd_2023.varieties', 12, 'VarietySelectionController', 'saveItem', '[]', '{"season_ids":",1,2,","year":"2023","variety_id":"7","rnd_ordering":1,"rnd_code":"CB-M-01-ARM-23"}', 'ADD', '2023-01-03 03:12:46', 2),
	(12, 'rnd_2023.varieties', 13, 'VarietySelectionController', 'saveItem', '[]', '{"season_ids":",1,2,","year":"2023","variety_id":"6","rnd_ordering":2,"rnd_code":"CB-E-02-ARM-23"}', 'ADD', '2023-01-03 03:12:57', 2),
	(13, 'rnd_2023.varieties', 11, 'VarietiesController', 'saveItem', '[]', '{"name":"W. Mountain","crop_type_id":"77","crop_feature_ids":",9,17,18,21,","whose":"Principal","principal_id":"2","competitor_id":null,"ordering":"99","status":"Active","retrial":"Yes"}', 'ADD', '2023-01-03 03:15:20', 2),
	(14, 'rnd_2023.seasons', 3, 'SeasonsController', 'saveItem', '[]', '{"name":"Winter","expected_delivery_at":null,"expected_sowing_at":null,"expected_reporting_at":null,"ordering":"99","status":"Active"}', 'ADD', '2023-01-03 03:16:09', 2),
	(15, 'rnd_2023.seasons', 4, 'SeasonsController', 'saveItem', '[]', '{"name":"Late winter","expected_delivery_at":null,"expected_sowing_at":null,"expected_reporting_at":null,"ordering":"99","status":"Active"}', 'ADD', '2023-01-03 03:16:25', 2),
	(16, 'rnd_2023.varieties', 14, 'VarietySelectionController', 'saveItem', '[]', '{"season_ids":",1,2,4,","year":"2023","variety_id":"3","rnd_ordering":4,"rnd_code":"CF-EX-04-ARM-23"}', 'ADD', '2023-01-03 03:17:40', 2),
	(17, 'rnd_2023.varieties', 11, 'VarietySelectionController', 'saveItem', '{"id":11,"season_ids":",1,2,","rnd_ordering":3}', '{"season_ids":",","rnd_ordering":3,"rnd_code":"CF-EX-03-ARM-23"}', 'EDIT', '2023-01-03 03:18:10', 2),
	(18, 'rnd_2023.varieties', 11, 'VarietySelectionController', 'saveItem', '{"id":11,"season_ids":",","rnd_ordering":3}', '{"season_ids":",1,2,3,","rnd_ordering":3,"rnd_code":"CF-EX-03-ARM-23"}', 'EDIT', '2023-01-03 03:18:38', 2),
	(19, 'rnd_2023.varieties', 10, 'VarietiesController', 'saveItem', '{"name":"asdaf","whose":"ARM"}', '{"name":"Marble","whose":"Principal"}', 'EDIT', '2023-01-03 03:19:32', 2),
	(20, 'rnd_2023.crops', 1, 'CropsController', 'saveItem', '{"replica":"Yes"}', '{"replica":"No"}', 'EDIT', '2023-01-03 03:23:40', 2),
	(21, 'rnd_2023.crops', 10, 'VarietyDeliveryController', 'saveDelivered', '{"id":10,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":4,"rnd_ordering":3,"rnd_code":"CF-EX-03-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-01 00:00:00","delivered_at":"2023-01-03 09:24:44","delivered_by":2,"sowing_status":"No","sowing_date":null,"sowing_at":null,"sowing_by":null}', '{"delivery_status":"No","delivered_by":2,"delivered_at":"2023-01-03T03:25:40.424054Z","sowing_status":"No"}', 'EDIT', '2023-01-03 03:25:40', 2),
	(22, 'rnd_2023.crops', 11, 'VarietyDeliveryController', 'saveDelivered', '{"id":11,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":3,"rnd_ordering":4,"rnd_code":"CF-EX-04-ARM-23","replica":"No","delivery_status":"Yes","delivered_date":"2023-01-01 00:00:00","delivered_at":"2023-01-03 09:24:44","delivered_by":2,"sowing_status":"No","sowing_date":null,"sowing_at":null,"sowing_by":null}', '{"delivery_status":"No","delivered_by":2,"delivered_at":"2023-01-03T03:25:40.424054Z","sowing_status":"No"}', 'EDIT', '2023-01-03 03:25:40', 2),
	(23, 'rnd_2023.crops', 10, 'VarietyDeliveryController', 'savePending', '{"id":10,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":4,"rnd_ordering":3,"rnd_code":"CF-EX-03-ARM-23","replica":"Yes","delivery_status":"No","delivered_date":"2023-01-01 00:00:00","delivered_at":"2023-01-03 09:25:40","delivered_by":2,"sowing_status":"No","sowing_date":null,"sowing_at":null,"sowing_by":null}', '{"variety_id":"4","rnd_ordering":"3","rnd_code":"CF-EX-03-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-01","delivered_by":2,"delivered_at":"2023-01-03T03:25:54.322009Z","sowing_status":"No"}', 'EDIT', '2023-01-03 03:25:54', 2),
	(24, 'rnd_2023.crops', 11, 'VarietyDeliveryController', 'savePending', '{"id":11,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":3,"rnd_ordering":4,"rnd_code":"CF-EX-04-ARM-23","replica":"No","delivery_status":"No","delivered_date":"2023-01-01 00:00:00","delivered_at":"2023-01-03 09:25:40","delivered_by":2,"sowing_status":"No","sowing_date":null,"sowing_at":null,"sowing_by":null}', '{"variety_id":"3","rnd_ordering":"4","rnd_code":"CF-EX-04-ARM-23","replica":"No","delivery_status":"Yes","delivered_date":"2023-01-01","delivered_by":2,"delivered_at":"2023-01-03T03:25:54.322009Z","sowing_status":"No"}', 'EDIT', '2023-01-03 03:25:54', 2),
	(25, 'rnd_2023.crops', 10, 'VarietySowingController', 'savePending', '{"id":10,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":4,"rnd_ordering":3,"rnd_code":"CF-EX-03-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-01 00:00:00","delivered_at":"2023-01-03 09:25:54","delivered_by":2,"sowing_status":"No","sowing_date":null,"sowing_at":null,"sowing_by":null}', '{"sowing_status":"Yes","sowing_date":"2023-03-04","sowing_by":2,"sowing_at":"2023-01-03T03:37:55.230165Z"}', 'EDIT', '2023-01-03 03:37:55', 2),
	(26, 'rnd_2023.crops', 11, 'VarietySowingController', 'savePending', '{"id":11,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":3,"rnd_ordering":4,"rnd_code":"CF-EX-04-ARM-23","replica":"No","delivery_status":"Yes","delivered_date":"2023-01-01 00:00:00","delivered_at":"2023-01-03 09:25:54","delivered_by":2,"sowing_status":"No","sowing_date":null,"sowing_at":null,"sowing_by":null}', '{"sowing_status":"Yes","sowing_date":"2023-03-04","sowing_by":2,"sowing_at":"2023-01-03T03:37:55.230165Z"}', 'EDIT', '2023-01-03 03:37:55', 2),
	(27, 'rnd_2023.trial_forms', 7, 'TrialFormsController', 'saveItemForm', '[]', '{"name":"Fruit Data Entry","entry_count":"1","entry_interval":"0","ordering":"99","status":"Active","crop_id":"6"}', 'ADD', '2023-01-03 03:40:47', 2),
	(28, 'rnd_2023.trial_forms', 8, 'TrialFormsController', 'saveItemForm', '[]', '{"name":"Fruit Picture Entry","entry_count":"1","entry_interval":"0","ordering":"99","status":"Active","crop_id":"6"}', 'ADD', '2023-01-03 03:41:03', 2),
	(29, 'rnd_2023.trial_forms', 9, 'TrialFormsController', 'saveItemForm', '[]', '{"name":"Disease data Entry","entry_count":"-1","entry_interval":"0","ordering":"99","status":"Active","crop_id":"6"}', 'ADD', '2023-01-03 03:41:31', 2),
	(30, 'rnd_2023.trial_forms', 10, 'TrialFormsController', 'saveItemForm', '[]', '{"name":"Interval Data","entry_count":"5","entry_interval":"0","ordering":"99","status":"Active","crop_id":"6"}', 'ADD', '2023-01-03 03:41:53', 2),
	(31, 'rnd_2023.trial_form_inputs', 16, 'TrialFormsController', 'saveItemInput', '[]', '{"name":"Fruit Leangth","type":"text","options":null,"default":null,"mandatory":"Yes","class":null,"ordering":"5","status":"Active","trial_form_id":"7"}', 'ADD', '2023-01-03 03:43:31', 2),
	(32, 'rnd_2023.trial_form_inputs', 17, 'TrialFormsController', 'saveItemInput', '[]', '{"name":"Fruit Color","type":"dropdown","options":"White\\r\\nPink\\r\\nMegenda\\r\\nBlue","default":"Blue","mandatory":"No","class":null,"ordering":"7","status":"Active","trial_form_id":"7"}', 'ADD', '2023-01-03 03:45:00', 2),
	(33, 'rnd_2023.trial_form_inputs', 18, 'TrialFormsController', 'saveItemInput', '[]', '{"name":"Fruit (gm)","type":"text","options":null,"default":null,"mandatory":"No","class":"float_all","ordering":"11","status":"Active","trial_form_id":"7"}', 'ADD', '2023-01-03 03:46:07', 2),
	(34, 'rnd_2023.trial_form_inputs', 19, 'TrialFormsController', 'saveItemInput', '[]', '{"name":"Plant Picture","type":"image","options":null,"default":null,"mandatory":"Yes","class":null,"ordering":"1","status":"Active","trial_form_id":"8"}', 'ADD', '2023-01-03 03:47:20', 2),
	(35, 'rnd_2023.trial_form_inputs', 20, 'TrialFormsController', 'saveItemInput', '[]', '{"name":"Cut fruit pic","type":"image","options":null,"default":null,"mandatory":"No","class":null,"ordering":"22","status":"In-Active","trial_form_id":"8"}', 'ADD', '2023-01-03 03:47:59', 2),
	(36, 'rnd_2023.varieties', 12, 'VarietiesController', 'saveItem', '[]', '{"name":"Tahmina","crop_type_id":"24","whose":"ARM","principal_id":null,"competitor_id":null,"ordering":"1","status":"Active","retrial":"Yes","crop_feature_ids":","}', 'ADD', '2023-01-03 03:49:22', 2),
	(37, 'rnd_2023.varieties', 13, 'VarietiesController', 'saveItem', '[]', '{"name":"Anowar","crop_type_id":"25","whose":"ARM","principal_id":null,"competitor_id":null,"ordering":"33","status":"Active","retrial":"Yes","crop_feature_ids":","}', 'ADD', '2023-01-03 03:49:46', 2),
	(38, 'rnd_2023.varieties', 14, 'VarietiesController', 'saveItem', '[]', '{"name":"Biswjid","crop_type_id":"26","whose":"ARM","principal_id":null,"competitor_id":null,"ordering":"99","status":"Active","retrial":"Yes","crop_feature_ids":","}', 'ADD', '2023-01-03 03:50:03', 2),
	(39, 'rnd_2023.varieties', 15, 'VarietySelectionController', 'saveItem', '[]', '{"season_ids":",2,","year":"2023","variety_id":"14","rnd_ordering":1,"rnd_code":"TM-U-01-ARM-23"}', 'ADD', '2023-01-03 03:51:05', 2),
	(40, 'rnd_2023.varieties', 16, 'VarietySelectionController', 'saveItem', '[]', '{"season_ids":",2,","year":"2023","variety_id":"12","rnd_ordering":2,"rnd_code":"TM-G-02-ARM-23"}', 'ADD', '2023-01-03 03:51:17', 2),
	(41, 'rnd_2023.varieties', 17, 'VarietySelectionController', 'saveItem', '[]', '{"season_ids":",1,2,3,4,","year":"2023","variety_id":"13","rnd_ordering":3,"rnd_code":"TM-LG-03-ARM-23"}', 'ADD', '2023-01-03 03:51:30', 2),
	(42, 'rnd_2023.crops', 12, 'VarietySowingController', 'savePending', '{"id":12,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":14,"rnd_ordering":1,"rnd_code":"TM-U-01-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 09:52:45","delivered_by":2,"sowing_status":"No","sowing_date":null,"sowing_at":null,"sowing_by":null}', '{"sowing_status":"Yes","sowing_date":"2023-01-04","sowing_by":2,"sowing_at":"2023-01-03T03:53:06.477101Z"}', 'EDIT', '2023-01-03 03:53:06', 2),
	(43, 'rnd_2023.crops', 13, 'VarietySowingController', 'savePending', '{"id":13,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":12,"rnd_ordering":2,"rnd_code":"TM-G-02-ARM-23","replica":"No","delivery_status":"Yes","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 09:52:45","delivered_by":2,"sowing_status":"No","sowing_date":null,"sowing_at":null,"sowing_by":null}', '{"sowing_status":"Yes","sowing_date":"2023-01-04","sowing_by":2,"sowing_at":"2023-01-03T03:53:06.477101Z"}', 'EDIT', '2023-01-03 03:53:06', 2),
	(44, 'rnd_2023.crops', 14, 'VarietySowingController', 'savePending', '{"id":14,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":13,"rnd_ordering":3,"rnd_code":"TM-LG-03-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 09:52:45","delivered_by":2,"sowing_status":"No","sowing_date":null,"sowing_at":null,"sowing_by":null}', '{"sowing_status":"Yes","sowing_date":"2023-01-04","sowing_by":2,"sowing_at":"2023-01-03T03:53:06.477101Z"}', 'EDIT', '2023-01-03 03:53:06', 2),
	(45, 'rnd_2023.crop_types', 10, 'TrialDataController', 'saveItem', '{"data_1":"{\\"16\\":\\"20\\",\\"17\\":\\"Pink\\",\\"18\\":\\"100\\"}","data_2":"{\\"16\\":\\"20\\",\\"17\\":\\"Megenda\\",\\"18\\":\\"120\\"}"}', '{"data_1":"{\\"16\\":\\"33\\",\\"17\\":\\"White\\",\\"18\\":\\"100\\"}","data_2":"{\\"16\\":\\"343434343434\\",\\"17\\":\\"Megenda\\",\\"18\\":\\"120\\"}"}', 'EDIT', '2023-01-03 03:55:07', 2),
	(46, 'rnd_2023.crop_types', 10, 'TrialDataController', 'saveItem', '{"data_1":"{\\"16\\":\\"33\\",\\"17\\":\\"White\\",\\"18\\":\\"100\\"}","data_2":"{\\"16\\":\\"343434343434\\",\\"17\\":\\"Megenda\\",\\"18\\":\\"120\\"}"}', '{"data_1":"{\\"16\\":\\"33\'\\",\\"17\\":\\"White\\",\\"18\\":\\"100\\"}","data_2":"{\\"16\\":\\"343434343434\\",\\"17\\":\\"Megenda\\",\\"18\\":\\"120\\"}"}', 'EDIT', '2023-01-03 03:55:16', 2),
	(47, 'rnd_2023.crop_types', 10, 'TrialDataController', 'saveItem', '{"data_1":"{\\"16\\":\\"33\'\\",\\"17\\":\\"White\\",\\"18\\":\\"100\\"}","data_2":"{\\"16\\":\\"343434343434\\",\\"17\\":\\"Megenda\\",\\"18\\":\\"120\\"}"}', '{"data_1":"{\\"16\\":\\"33\'\\",\\"17\\":\\"White\\",\\"18\\":\\"10000\\"}","data_2":"{\\"16\\":\\"343434343434\\",\\"17\\":\\"Megenda\\",\\"18\\":\\"120\\"}"}', 'EDIT', '2023-01-03 03:55:51', 2),
	(48, 'rnd_2023.trial_form_inputs', 21, 'TrialFormsController', 'saveItemInput', '[]', '{"name":"Plant H (cm)","type":"text","options":null,"default":null,"mandatory":"No","class":null,"ordering":"99","status":"Active","trial_form_id":"10"}', 'ADD', '2023-01-03 03:57:23', 2),
	(49, 'rnd_2023.crop_types', 11, 'TrialDataController', 'saveItem', '{"data_1":"{\\"21\\":\\"2\\"}","data_2":"{\\"21\\":\\"0\\"}"}', '{"data_1":"{\\"21\\":\\"2\\"}","data_2":"{\\"21\\":\\".\\"}"}', 'EDIT', '2023-01-03 03:57:53', 2),
	(50, 'rnd_2023.crop_types', 11, 'TrialDataController', 'saveItem', '{"data_1":"{\\"21\\":\\"2\\"}","data_2":"{\\"21\\":\\".\\"}"}', '{"data_1":"{\\"21\\":\\"2\\"}","data_2":"{\\"21\\":null}"}', 'EDIT', '2023-01-03 03:58:02', 2),
	(51, 'rnd_2023.crop_types', 13, 'TrialDataController', 'saveItem', '{"data_1":"{\\"19\\":\\"files\\\\\\/trial-data\\\\\\/2023\\\\\\/1\\\\\\/2\\\\\\/6\\\\\\/8\\\\\\/F-5.jpg\\"}","data_2":"{\\"19\\":\\"files\\\\\\/trial-data\\\\\\/2023\\\\\\/1\\\\\\/2\\\\\\/6\\\\\\/8\\\\\\/F-4.jpg\\"}"}', '{"data_1":"{\\"19\\":\\"files\\\\\\/trial-data\\\\\\/2023\\\\\\/1\\\\\\/2\\\\\\/6\\\\\\/8\\\\\\/F-5.jpg\\"}","data_2":"{\\"19\\":\\"files\\\\\\/trial-data\\\\\\/2023\\\\\\/1\\\\\\/2\\\\\\/6\\\\\\/8\\\\\\/F-50.jpg\\"}"}', 'EDIT', '2023-01-03 03:59:59', 2),
	(52, 'rnd_2023.trial_form_inputs', 22, 'TrialFormsController', 'saveItemInput', '[]', '{"name":"Leaf","type":"image","options":null,"default":null,"mandatory":"No","class":null,"ordering":"99","status":"Active","trial_form_id":"9"}', 'ADD', '2023-01-03 04:01:19', 2),
	(53, 'rnd_2023.trial_form_inputs', 23, 'TrialFormsController', 'saveItemInput', '[]', '{"name":"Root","type":"text","options":null,"default":null,"mandatory":"No","class":null,"ordering":"99","status":"Active","trial_form_id":"9"}', 'ADD', '2023-01-03 04:01:26', 2),
	(54, 'rnd_2023.trial_form_inputs', 24, 'TrialFormsController', 'saveItemInput', '[]', '{"name":"Fruit","type":"text","options":null,"default":null,"mandatory":"No","class":null,"ordering":"99","status":"Active","trial_form_id":"9"}', 'ADD', '2023-01-03 04:01:32', 2),
	(55, 'rnd_2023.trial_report_forms', 4, 'TrialReportFormsController', 'saveItem', '[]', '{"name":"Fruit Report","ordering":"1","status":"Active","crop_id":"6"}', 'ADD', '2023-01-03 04:05:22', 2),
	(56, 'rnd_2023.trial_report_forms', 4, 'TrialReportFormsController', 'saveIFields', NULL, '{"1":{"name":"Fruit Leangth","formula":"none","ordering":"1","inputId":"16","equation":"16"},"2":{"name":"Plant H (cm)","formula":"average","ordering":"3","inputId":"21","equation":"average(21)"},"3":{"name":"Plant H (cm)","formula":"total","ordering":"3","inputId":"21","equation":"total(21)"},"4":{"name":"Plant Picture","formula":"none","ordering":"99","inputId":"19","equation":"19"}}', 'EDIT', '2023-01-03 04:07:58', 2),
	(57, 'rnd_2023.trial_report_forms', 4, 'TrialReportFormsController', 'saveIFields', '{"1":{"name":"Fruit Leangth","formula":"none","ordering":"1","inputId":"16","equation":"16"},"2":{"name":"Plant H (cm)","formula":"average","ordering":"3","inputId":"21","equation":"average(21)"},"3":{"name":"Plant H (cm)","formula":"total","ordering":"3","inputId":"21","equation":"total(21)"},"4":{"name":"Plant Picture","formula":"none","ordering":"99","inputId":"19","equation":"19"}}', '{"0":{"name":"Fruit Leangth","formula":"none","ordering":"1","equation":"16","inputId":"16"},"1":{"name":"Plant H (cm)","formula":"average","ordering":"3","equation":"average(21)","inputId":"21"},"3":{"name":"Plant Picture","formula":"none","ordering":"99","equation":"19","inputId":"19"},"5":{"name":"Plant (cm)","formula":"total","ordering":"99","inputId":"21","equation":"total(21)"}}', 'EDIT', '2023-01-03 04:08:54', 2),
	(58, 'rnd_2023.trial_report_forms', 4, 'TrialReportFormsController', 'saveIFields', '{"0":{"name":"Fruit Leangth","formula":"none","ordering":"1","equation":"16","inputId":"16"},"1":{"name":"Plant H (cm)","formula":"average","ordering":"3","equation":"average(21)","inputId":"21"},"3":{"name":"Plant Picture","formula":"none","ordering":"99","equation":"19","inputId":"19"},"5":{"name":"Plant (cm)","formula":"total","ordering":"99","inputId":"21","equation":"total(21)"}}', '{"0":{"name":"Fruit Leangth","formula":"none","ordering":"1","equation":"16","inputId":"16"},"1":{"name":"Plant H (cm)","formula":"average","ordering":"3","equation":"average(21)","inputId":"21"},"2":{"name":"Plant Picture","formula":"none","ordering":"99","equation":"19","inputId":"19"},"3":{"name":"Plant (cm)","formula":"total","ordering":"99","equation":"total(21)","inputId":"21"},"6":{"name":"Plant all (cm)","formula":"none","ordering":"99","inputId":"21","equation":"21"}}', 'EDIT', '2023-01-03 04:11:46', 2),
	(59, 'rnd_2023.trial_stations', 2, 'TrialStationsController', 'saveItem', '{"name":"test","ordering":99}', '{"name":"Jessore Trial Station","ordering":"3"}', 'EDIT', '2023-01-03 04:27:26', 2),
	(60, 'rnd_2023.trial_stations', 3, 'TrialStationsController', 'saveItem', '[]', '{"name":"Sitakunda Trial Station","ordering":"5","status":"Active"}', 'ADD', '2023-01-03 04:27:45', 2),
	(61, 'rnd_2023.trial_stations', 1, 'TrialStationsController', 'saveItem', '{"name":"RND"}', '{"name":"Pran Nagar Trial Station"}', 'EDIT', '2023-01-03 04:28:09', 2),
	(62, 'rnd_2023.crops', 10, 'VarietyDeliveryController', 'saveDelivered', '{"id":10,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":4,"rnd_ordering":3,"rnd_code":"CF-EX-03-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-01 00:00:00","delivered_at":"2023-01-03 09:25:54","delivered_by":2,"sowing_status":"Yes","sowing_date":"2023-03-04 00:00:00","sowing_at":"2023-01-03 09:37:55","sowing_by":2}', '{"delivery_status":"No","delivered_by":1,"delivered_at":"2023-01-03T13:31:13.969888Z","sowing_status":"No"}', 'EDIT', '2023-01-03 13:31:13', 1),
	(63, 'rnd_2023.crops', 11, 'VarietyDeliveryController', 'saveDelivered', '{"id":11,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":3,"rnd_ordering":4,"rnd_code":"CF-EX-04-ARM-23","replica":"No","delivery_status":"Yes","delivered_date":"2023-01-01 00:00:00","delivered_at":"2023-01-03 09:25:54","delivered_by":2,"sowing_status":"Yes","sowing_date":"2023-03-04 00:00:00","sowing_at":"2023-01-03 09:37:55","sowing_by":2}', '{"delivery_status":"No","delivered_by":1,"delivered_at":"2023-01-03T13:31:13.969888Z","sowing_status":"No"}', 'EDIT', '2023-01-03 13:31:13', 1),
	(64, 'rnd_2023.crops', 12, 'VarietyDeliveryController', 'saveDelivered', '{"id":12,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":14,"rnd_ordering":1,"rnd_code":"TM-U-01-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 09:52:45","delivered_by":2,"sowing_status":"Yes","sowing_date":"2023-01-04 00:00:00","sowing_at":"2023-01-03 09:53:06","sowing_by":2}', '{"delivery_status":"No","delivered_by":1,"delivered_at":"2023-01-03T13:31:28.864723Z","sowing_status":"No"}', 'EDIT', '2023-01-03 13:31:28', 1),
	(65, 'rnd_2023.crops', 13, 'VarietyDeliveryController', 'saveDelivered', '{"id":13,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":12,"rnd_ordering":2,"rnd_code":"TM-G-02-ARM-23","replica":"No","delivery_status":"Yes","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 09:52:45","delivered_by":2,"sowing_status":"Yes","sowing_date":"2023-01-04 00:00:00","sowing_at":"2023-01-03 09:53:06","sowing_by":2}', '{"delivery_status":"No","delivered_by":1,"delivered_at":"2023-01-03T13:31:28.864723Z","sowing_status":"No"}', 'EDIT', '2023-01-03 13:31:28', 1),
	(66, 'rnd_2023.crops', 14, 'VarietyDeliveryController', 'saveDelivered', '{"id":14,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":13,"rnd_ordering":3,"rnd_code":"TM-LG-03-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 09:52:45","delivered_by":2,"sowing_status":"Yes","sowing_date":"2023-01-04 00:00:00","sowing_at":"2023-01-03 09:53:06","sowing_by":2}', '{"delivery_status":"No","delivered_by":1,"delivered_at":"2023-01-03T13:31:28.864723Z","sowing_status":"No"}', 'EDIT', '2023-01-03 13:31:28', 1),
	(67, 'rnd_2023.crops', 10, 'VarietyDeliveryController', 'savePending', '{"id":10,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":4,"rnd_ordering":3,"rnd_code":"CF-EX-03-ARM-23","replica":"Yes","delivery_status":"No","delivered_date":"2023-01-01 00:00:00","delivered_at":"2023-01-03 19:31:13","delivered_by":1,"sowing_status":"No","sowing_date":"2023-03-04 00:00:00","sowing_at":"2023-01-03 09:37:55","sowing_by":2}', '{"variety_id":"4","rnd_ordering":"3","rnd_code":"CF-EX-03-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-02","delivered_by":1,"delivered_at":"2023-01-03T13:31:39.744103Z","sowing_status":"No"}', 'EDIT', '2023-01-03 13:31:39', 1),
	(68, 'rnd_2023.crops', 11, 'VarietyDeliveryController', 'savePending', '{"id":11,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":3,"rnd_ordering":4,"rnd_code":"CF-EX-04-ARM-23","replica":"No","delivery_status":"No","delivered_date":"2023-01-01 00:00:00","delivered_at":"2023-01-03 19:31:13","delivered_by":1,"sowing_status":"No","sowing_date":"2023-03-04 00:00:00","sowing_at":"2023-01-03 09:37:55","sowing_by":2}', '{"variety_id":"3","rnd_ordering":"4","rnd_code":"CF-EX-04-ARM-23","replica":"No","delivery_status":"Yes","delivered_date":"2023-01-02","delivered_by":1,"delivered_at":"2023-01-03T13:31:39.744103Z","sowing_status":"No"}', 'EDIT', '2023-01-03 13:31:39', 1),
	(69, 'rnd_2023.crops', 15, 'VarietySowingController', 'savePending', '{"id":15,"trial_station_id":2,"year":2023,"season_id":2,"variety_id":4,"rnd_ordering":3,"rnd_code":"CF-EX-03-ARM-23","replica":"No","delivery_status":"Yes","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 19:39:28","delivered_by":1,"sowing_status":"No","sowing_date":null,"sowing_at":null,"sowing_by":null}', '{"sowing_status":"Yes","sowing_date":"2023-01-02","sowing_by":1,"sowing_at":"2023-01-03T13:39:40.696190Z"}', 'EDIT', '2023-01-03 13:39:40', 1),
	(70, 'rnd_2023.crops', 16, 'VarietySowingController', 'savePending', '{"id":16,"trial_station_id":2,"year":2023,"season_id":2,"variety_id":3,"rnd_ordering":4,"rnd_code":"CF-EX-04-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 19:39:28","delivered_by":1,"sowing_status":"No","sowing_date":null,"sowing_at":null,"sowing_by":null}', '{"sowing_status":"Yes","sowing_date":"2023-01-02","sowing_by":1,"sowing_at":"2023-01-03T13:39:40.696190Z"}', 'EDIT', '2023-01-03 13:39:40', 1),
	(71, 'rnd_2023.crops', 15, 'VarietySowingController', 'saveSowed', '{"id":15,"trial_station_id":2,"year":2023,"season_id":2,"variety_id":4,"rnd_ordering":3,"rnd_code":"CF-EX-03-ARM-23","replica":"No","delivery_status":"Yes","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 19:39:28","delivered_by":1,"sowing_status":"Yes","sowing_date":"2023-01-02 00:00:00","sowing_at":"2023-01-03 19:39:40","sowing_by":1}', '{"sowing_status":"No","sowing_by":1,"sowing_at":"2023-01-03T13:39:51.890053Z"}', 'EDIT', '2023-01-03 13:39:51', 1),
	(72, 'rnd_2023.crops', 16, 'VarietySowingController', 'saveSowed', '{"id":16,"trial_station_id":2,"year":2023,"season_id":2,"variety_id":3,"rnd_ordering":4,"rnd_code":"CF-EX-04-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 19:39:28","delivered_by":1,"sowing_status":"Yes","sowing_date":"2023-01-02 00:00:00","sowing_at":"2023-01-03 19:39:40","sowing_by":1}', '{"sowing_status":"No","sowing_by":1,"sowing_at":"2023-01-03T13:39:51.890053Z"}', 'EDIT', '2023-01-03 13:39:51', 1),
	(73, 'rnd_2023.crops', 15, 'VarietySowingController', 'savePending', '{"id":15,"trial_station_id":2,"year":2023,"season_id":2,"variety_id":4,"rnd_ordering":3,"rnd_code":"CF-EX-03-ARM-23","replica":"No","delivery_status":"Yes","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 19:39:28","delivered_by":1,"sowing_status":"No","sowing_date":"2023-01-02 00:00:00","sowing_at":"2023-01-03 19:39:51","sowing_by":1}', '{"sowing_status":"Yes","sowing_date":"2002-02-02","sowing_by":1,"sowing_at":"2023-01-03T13:40:25.075361Z"}', 'EDIT', '2023-01-03 13:40:25', 1),
	(74, 'rnd_2023.crops', 16, 'VarietySowingController', 'savePending', '{"id":16,"trial_station_id":2,"year":2023,"season_id":2,"variety_id":3,"rnd_ordering":4,"rnd_code":"CF-EX-04-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 19:39:28","delivered_by":1,"sowing_status":"No","sowing_date":"2023-01-02 00:00:00","sowing_at":"2023-01-03 19:39:51","sowing_by":1}', '{"sowing_status":"Yes","sowing_date":"2002-02-02","sowing_by":1,"sowing_at":"2023-01-03T13:40:25.075361Z"}', 'EDIT', '2023-01-03 13:40:25', 1),
	(75, 'rnd_2023.crops', 15, 'VarietyDeliveryController', 'saveDelivered', '{"id":15,"trial_station_id":2,"year":2023,"season_id":2,"variety_id":4,"rnd_ordering":3,"rnd_code":"CF-EX-03-ARM-23","replica":"No","delivery_status":"Yes","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 19:39:28","delivered_by":1,"sowing_status":"Yes","sowing_date":"2002-02-02 00:00:00","sowing_at":"2023-01-03 19:40:25","sowing_by":1}', '{"delivery_status":"No","delivered_by":1,"delivered_at":"2023-01-03T14:45:06.634738Z","sowing_status":"No"}', 'EDIT', '2023-01-03 14:45:06', 1),
	(76, 'rnd_2023.crops', 16, 'VarietyDeliveryController', 'saveDelivered', '{"id":16,"trial_station_id":2,"year":2023,"season_id":2,"variety_id":3,"rnd_ordering":4,"rnd_code":"CF-EX-04-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 19:39:28","delivered_by":1,"sowing_status":"Yes","sowing_date":"2002-02-02 00:00:00","sowing_at":"2023-01-03 19:40:25","sowing_by":1}', '{"delivery_status":"No","delivered_by":1,"delivered_at":"2023-01-03T14:45:06.634738Z","sowing_status":"No"}', 'EDIT', '2023-01-03 14:45:06', 1),
	(77, 'rnd_2023.crops', 15, 'VarietyDeliveryController', 'savePending', '{"id":15,"trial_station_id":2,"year":2023,"season_id":2,"variety_id":4,"rnd_ordering":3,"rnd_code":"CF-EX-03-ARM-23","replica":"No","delivery_status":"No","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 20:45:06","delivered_by":1,"sowing_status":"No","sowing_date":"2002-02-02 00:00:00","sowing_at":"2023-01-03 19:40:25","sowing_by":1}', '{"variety_id":"4","rnd_ordering":"3","rnd_code":"CF-EX-03-ARM-23","replica":"No","delivery_status":"Yes","delivered_date":"2023-01-05","delivered_by":1,"delivered_at":"2023-01-03T14:45:24.987602Z","sowing_status":"No"}', 'EDIT', '2023-01-03 14:45:24', 1),
	(78, 'rnd_2023.crops', 16, 'VarietyDeliveryController', 'savePending', '{"id":16,"trial_station_id":2,"year":2023,"season_id":2,"variety_id":3,"rnd_ordering":4,"rnd_code":"CF-EX-04-ARM-23","replica":"Yes","delivery_status":"No","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 20:45:06","delivered_by":1,"sowing_status":"No","sowing_date":"2002-02-02 00:00:00","sowing_at":"2023-01-03 19:40:25","sowing_by":1}', '{"variety_id":"3","rnd_ordering":"4","rnd_code":"CF-EX-04-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-05","delivered_by":1,"delivered_at":"2023-01-03T14:45:24.987602Z","sowing_status":"No"}', 'EDIT', '2023-01-03 14:45:24', 1),
	(79, 'rnd_2023.crops', 15, 'VarietySowingController', 'savePending', '{"id":15,"trial_station_id":2,"year":2023,"season_id":2,"variety_id":4,"rnd_ordering":3,"rnd_code":"CF-EX-03-ARM-23","replica":"No","delivery_status":"Yes","delivered_date":"2023-01-05 00:00:00","delivered_at":"2023-01-03 20:45:24","delivered_by":1,"sowing_status":"No","sowing_date":"2002-02-02 00:00:00","sowing_at":"2023-01-03 19:40:25","sowing_by":1}', '{"sowing_status":"Yes","sowing_date":"2023-01-02","sowing_by":1,"sowing_at":"2023-01-03T14:46:20.981200Z"}', 'EDIT', '2023-01-03 14:46:20', 1),
	(80, 'rnd_2023.crops', 16, 'VarietySowingController', 'savePending', '{"id":16,"trial_station_id":2,"year":2023,"season_id":2,"variety_id":3,"rnd_ordering":4,"rnd_code":"CF-EX-04-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-05 00:00:00","delivered_at":"2023-01-03 20:45:24","delivered_by":1,"sowing_status":"No","sowing_date":"2002-02-02 00:00:00","sowing_at":"2023-01-03 19:40:25","sowing_by":1}', '{"sowing_status":"Yes","sowing_date":"2023-01-02","sowing_by":1,"sowing_at":"2023-01-03T14:46:20.981200Z"}', 'EDIT', '2023-01-03 14:46:20', 1),
	(81, 'rnd_2023.varieties', 18, 'VarietySelectionController', 'saveItem', '[]', '{"season_ids":",1,2,3,","year":"2023","variety_id":"11","rnd_ordering":5,"rnd_code":"CF-S-05-PSID-23"}', 'ADD', '2023-01-03 18:02:35', 1),
	(82, 'rnd_2023.crops', 17, 'VarietySowingController', 'savePending', '{"id":17,"trial_station_id":2,"year":2023,"season_id":2,"variety_id":14,"rnd_ordering":1,"rnd_code":"TM-U-01-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-04 00:00:00","delivered_at":"2023-01-04 00:15:45","delivered_by":1,"sowing_status":"No","sowing_date":null,"sowing_at":null,"sowing_by":null}', '{"sowing_status":"Yes","sowing_date":"2023-01-05","sowing_by":1,"sowing_at":"2023-01-03T18:15:55.618200Z"}', 'EDIT', '2023-01-03 18:15:55', 1),
	(83, 'rnd_2023.crops', 18, 'VarietySowingController', 'savePending', '{"id":18,"trial_station_id":2,"year":2023,"season_id":2,"variety_id":12,"rnd_ordering":2,"rnd_code":"TM-G-02-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-04 00:00:00","delivered_at":"2023-01-04 00:15:45","delivered_by":1,"sowing_status":"No","sowing_date":null,"sowing_at":null,"sowing_by":null}', '{"sowing_status":"Yes","sowing_date":"2023-01-05","sowing_by":1,"sowing_at":"2023-01-03T18:15:55.618200Z"}', 'EDIT', '2023-01-03 18:15:55', 1),
	(84, 'rnd_2023.crops', 19, 'VarietySowingController', 'savePending', '{"id":19,"trial_station_id":2,"year":2023,"season_id":2,"variety_id":13,"rnd_ordering":3,"rnd_code":"TM-LG-03-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-04 00:00:00","delivered_at":"2023-01-04 00:15:45","delivered_by":1,"sowing_status":"No","sowing_date":null,"sowing_at":null,"sowing_by":null}', '{"sowing_status":"Yes","sowing_date":"2023-01-05","sowing_by":1,"sowing_at":"2023-01-03T18:15:55.618200Z"}', 'EDIT', '2023-01-03 18:15:55', 1),
	(85, 'rnd_2023.trial_stations', 1, 'TrialStationsController', 'saveItem', '{"ordering":99}', '{"ordering":"1"}', 'EDIT', '2023-01-03 18:16:37', 1),
	(86, 'rnd_2023.crops', 12, 'VarietyDeliveryController', 'savePending', '{"id":12,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":14,"rnd_ordering":1,"rnd_code":"TM-U-01-ARM-23","replica":"Yes","delivery_status":"No","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 19:31:28","delivered_by":1,"sowing_status":"No","sowing_date":"2023-01-04 00:00:00","sowing_at":"2023-01-03 09:53:06","sowing_by":2}', '{"variety_id":"14","rnd_ordering":"1","rnd_code":"TM-U-01-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-04","delivered_by":1,"delivered_at":"2023-01-03T18:17:06.162148Z","sowing_status":"No"}', 'EDIT', '2023-01-03 18:17:06', 1),
	(87, 'rnd_2023.crops', 13, 'VarietyDeliveryController', 'savePending', '{"id":13,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":12,"rnd_ordering":2,"rnd_code":"TM-G-02-ARM-23","replica":"No","delivery_status":"No","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 19:31:28","delivered_by":1,"sowing_status":"No","sowing_date":"2023-01-04 00:00:00","sowing_at":"2023-01-03 09:53:06","sowing_by":2}', '{"variety_id":"12","rnd_ordering":"2","rnd_code":"TM-G-02-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-04","delivered_by":1,"delivered_at":"2023-01-03T18:17:06.162148Z","sowing_status":"No"}', 'EDIT', '2023-01-03 18:17:06', 1),
	(88, 'rnd_2023.crops', 14, 'VarietyDeliveryController', 'savePending', '{"id":14,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":13,"rnd_ordering":3,"rnd_code":"TM-LG-03-ARM-23","replica":"Yes","delivery_status":"No","delivered_date":"2023-01-03 00:00:00","delivered_at":"2023-01-03 19:31:28","delivered_by":1,"sowing_status":"No","sowing_date":"2023-01-04 00:00:00","sowing_at":"2023-01-03 09:53:06","sowing_by":2}', '{"variety_id":"13","rnd_ordering":"3","rnd_code":"TM-LG-03-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-04","delivered_by":1,"delivered_at":"2023-01-03T18:17:06.162148Z","sowing_status":"No"}', 'EDIT', '2023-01-03 18:17:06', 1),
	(89, 'rnd_2023.crops', 12, 'VarietySowingController', 'savePending', '{"id":12,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":14,"rnd_ordering":1,"rnd_code":"TM-U-01-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-04 00:00:00","delivered_at":"2023-01-04 00:17:06","delivered_by":1,"sowing_status":"No","sowing_date":"2023-01-04 00:00:00","sowing_at":"2023-01-03 09:53:06","sowing_by":2}', '{"sowing_status":"Yes","sowing_date":"2023-01-05","sowing_by":1,"sowing_at":"2023-01-03T18:17:14.959530Z"}', 'EDIT', '2023-01-03 18:17:14', 1),
	(90, 'rnd_2023.crops', 13, 'VarietySowingController', 'savePending', '{"id":13,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":12,"rnd_ordering":2,"rnd_code":"TM-G-02-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-04 00:00:00","delivered_at":"2023-01-04 00:17:06","delivered_by":1,"sowing_status":"No","sowing_date":"2023-01-04 00:00:00","sowing_at":"2023-01-03 09:53:06","sowing_by":2}', '{"sowing_status":"Yes","sowing_date":"2023-01-05","sowing_by":1,"sowing_at":"2023-01-03T18:17:14.959530Z"}', 'EDIT', '2023-01-03 18:17:14', 1),
	(91, 'rnd_2023.crops', 14, 'VarietySowingController', 'savePending', '{"id":14,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":13,"rnd_ordering":3,"rnd_code":"TM-LG-03-ARM-23","replica":"Yes","delivery_status":"Yes","delivered_date":"2023-01-04 00:00:00","delivered_at":"2023-01-04 00:17:06","delivered_by":1,"sowing_status":"No","sowing_date":"2023-01-04 00:00:00","sowing_at":"2023-01-03 09:53:06","sowing_by":2}', '{"sowing_status":"Yes","sowing_date":"2023-01-05","sowing_by":1,"sowing_at":"2023-01-03T18:17:14.959530Z"}', 'EDIT', '2023-01-03 18:17:14', 1),
	(92, 'rnd_2023.trial_form_inputs', 25, 'TrialFormsController', 'saveItemInput', '[]', '{"name":"Image size test","type":"image","options":null,"default":null,"mandatory":"No","class":"2","ordering":"99","status":"Active","trial_form_id":"3"}', 'ADD', '2023-01-04 18:17:13', 1),
	(93, 'rnd_2023.trial_form_inputs', 22, 'TrialFormsController', 'saveItemInput', '{"class":null}', '{"class":"2"}', 'EDIT', '2023-01-04 18:19:05', 1),
	(94, 'rnd_2023.trial_form_inputs', 26, 'TrialFormsController', 'saveItemInput', '[]', '{"name":"image default","type":"text","options":null,"default":null,"mandatory":"No","class":null,"ordering":"99","status":"Active","trial_form_id":"9"}', 'ADD', '2023-01-04 18:19:53', 1),
	(95, 'rnd_2023.trial_form_inputs', 22, 'TrialFormsController', 'saveItemInput', '{"name":"Leaf"}', '{"name":"Leaf image 2mb"}', 'EDIT', '2023-01-04 18:20:06', 1),
	(96, 'rnd_2023.trial_form_inputs', 26, 'TrialFormsController', 'saveItemInput', '{"type":"text"}', '{"type":"image"}', 'EDIT', '2023-01-07 01:40:30', 1),
	(97, 'rnd_2023.trial_form_inputs', 22, 'TrialFormsController', 'saveItemInput', '{"class":"2"}', '{"class":"a50"}', 'EDIT', '2023-01-07 01:40:42', 1),
	(98, 'rnd_2023.trial_form_inputs', 22, 'TrialFormsController', 'saveItemInput', '{"name":"Leaf image 2mb","class":"a50"}', '{"name":"Leaf image 50mb","class":"50"}', 'EDIT', '2023-01-07 01:41:37', 1),
	(99, 'rnd_2023.crop_types', 15, 'TrialDataController', 'saveItem', '{"data_1":"{\\"22\\":\\"files\\\\\\/trial-data\\\\\\/2023\\\\\\/1\\\\\\/2\\\\\\/6\\\\\\/9\\\\\\/IMG_002.bmp.png\\",\\"23\\":null,\\"24\\":null,\\"26\\":null}","data_2":"{\\"22\\":null,\\"23\\":null,\\"24\\":null,\\"26\\":null}"}', '{"data_1":"{\\"22\\":\\"files\\\\\\/trial-data\\\\\\/2023\\\\\\/1\\\\\\/2\\\\\\/6\\\\\\/9\\\\\\/b.jpg\\",\\"23\\":null,\\"24\\":null,\\"26\\":null}","data_2":"{\\"22\\":null,\\"23\\":null,\\"24\\":null,\\"26\\":null}"}', 'EDIT', '2023-01-07 02:04:22', 1),
	(100, 'rnd_2023.trial_form_inputs', 22, 'TrialFormsController', 'saveItemInput', '{"class":"50"}', '{"class":"25"}', 'EDIT', '2023-01-07 02:06:06', 1),
	(101, 'rnd_2023.crop_types', 15, 'TrialDataController', 'saveItem', '{"data_1":"{\\"22\\":\\"files\\\\\\/trial-data\\\\\\/2023\\\\\\/1\\\\\\/2\\\\\\/6\\\\\\/9\\\\\\/b.jpg\\",\\"23\\":null,\\"24\\":null,\\"26\\":null}","data_2":"{\\"22\\":null,\\"23\\":null,\\"24\\":null,\\"26\\":null}"}', '{"data_1":"{\\"22\\":\\"files\\\\\\/trial-data\\\\\\/2023\\\\\\/1\\\\\\/2\\\\\\/6\\\\\\/9\\\\\\/b1.jpg\\",\\"23\\":null,\\"24\\":null,\\"26\\":null}","data_2":"{\\"22\\":null,\\"23\\":null,\\"24\\":null,\\"26\\":null}"}', 'EDIT', '2023-01-07 02:07:50', 1),
	(102, 'rnd_2023.trial_form_inputs', 27, 'TrialFormsController', 'saveItemInput', '[]', '{"name":"Crop Features","type":"features","options":null,"default":null,"mandatory":"No","class":null,"ordering":"99","status":"Active","trial_form_id":"10"}', 'ADD', '2023-01-07 02:37:10', 1),
	(103, 'rnd_2023.trial_form_inputs', 28, 'TrialFormsController', 'saveItemInput', '[]', '{"name":"Chekbo","type":"checkbox","options":"x\\r\\ny\\r\\nz","default":"x,z","mandatory":"No","class":null,"ordering":"99","status":"Active","trial_form_id":"10"}', 'ADD', '2023-01-07 02:40:50', 1),
	(104, 'rnd_2023.trial_form_inputs', 28, 'TrialFormsController', 'saveItemInput', '{"default":"x,z"}', '{"default":"[x]"}', 'EDIT', '2023-01-07 02:44:11', 1),
	(105, 'rnd_2023.trial_form_inputs', 28, 'TrialFormsController', 'saveItemInput', '{"default":"[x]"}', '{"default":null}', 'EDIT', '2023-01-07 02:44:24', 1),
	(106, 'rnd_2023.crop_types', 15, 'TrialDataController', 'saveItem', '{"data_1":"{\\"22\\":\\"files\\\\\\/trial-data\\\\\\/2023\\\\\\/1\\\\\\/2\\\\\\/6\\\\\\/9\\\\\\/b1.jpg\\",\\"23\\":null,\\"24\\":null,\\"26\\":null}","data_2":"{\\"22\\":null,\\"23\\":null,\\"24\\":null,\\"26\\":null}"}', '{"data_1":"{\\"22\\":\\"files\\\\\\/trial-data\\\\\\/2023\\\\\\/1\\\\\\/2\\\\\\/6\\\\\\/9\\\\\\/b.bmp\\",\\"23\\":null,\\"24\\":null,\\"26\\":null}","data_2":"{\\"22\\":null,\\"23\\":null,\\"24\\":null,\\"26\\":null}"}', 'EDIT', '2023-01-07 07:54:19', 1),
	(107, 'rnd_2023.crop_types', 12, 'TrialDataController', 'saveItem', '{"data_1":"{\\"21\\":\\"22\\"}","data_2":"{\\"21\\":null}"}', '{"data_1":"{\\"21\\":\\"22\\",\\"27\\":null}","data_2":"{\\"21\\":null,\\"27\\":null,\\"28\\":[\\"x\\",\\"y\\"]}"}', 'EDIT', '2023-01-07 11:25:20', 1),
	(108, 'rnd_2023.trial_report_forms', 4, 'TrialReportFormsController', 'saveIFields', '{"0":{"name":"Fruit Leangth","formula":"none","ordering":"1","equation":"16","inputId":"16"},"1":{"name":"Plant H (cm)","formula":"average","ordering":"3","equation":"average(21)","inputId":"21"},"2":{"name":"Plant Picture","formula":"none","ordering":"99","equation":"19","inputId":"19"},"3":{"name":"Plant (cm)","formula":"total","ordering":"99","equation":"total(21)","inputId":"21"},"6":{"name":"Plant all (cm)","formula":"none","ordering":"99","inputId":"21","equation":"21"}}', '{"0":{"name":"Fruit Leangth","formula":"none","ordering":"1","equation":"16","inputId":"16"},"1":{"name":"Plant H (cm)","formula":"average","ordering":"3","equation":"average(21)","inputId":"21"},"2":{"name":"Plant Picture","formula":"none","ordering":"99","equation":"19","inputId":"19"},"3":{"name":"Plant (cm)","formula":"total","ordering":"99","equation":"total(21)","inputId":"21"},"4":{"name":"Plant all (cm)","formula":"none","ordering":"99","equation":"21","inputId":"21"},"6":{"name":"Chekbo","formula":"none","ordering":"99","inputId":"28","equation":"28"},"8":{"name":"Chekbo Total","formula":"total","ordering":"99","inputId":"28","equation":"total(28)"}}', 'EDIT', '2023-01-07 11:26:47', 1),
	(109, 'rnd_2023.trial_report_forms', 4, 'TrialReportFormsController', 'saveIFields', '{"0":{"name":"Fruit Leangth","formula":"none","ordering":"1","equation":"16","inputId":"16"},"1":{"name":"Plant H (cm)","formula":"average","ordering":"3","equation":"average(21)","inputId":"21"},"2":{"name":"Plant Picture","formula":"none","ordering":"99","equation":"19","inputId":"19"},"3":{"name":"Plant (cm)","formula":"total","ordering":"99","equation":"total(21)","inputId":"21"},"4":{"name":"Plant all (cm)","formula":"none","ordering":"99","equation":"21","inputId":"21"},"6":{"name":"Chekbo","formula":"none","ordering":"99","inputId":"28","equation":"28"},"8":{"name":"Chekbo Total","formula":"total","ordering":"99","inputId":"28","equation":"total(28)"}}', '{"0":{"name":"Fruit Leangth","formula":"none","ordering":"1","equation":"16","inputId":"16"},"1":{"name":"Plant H (cm)","formula":"average","ordering":"3","equation":"average(21)","inputId":"21"},"2":{"name":"Plant Picture","formula":"none","ordering":"99","equation":"19","inputId":"19"},"3":{"name":"Plant (cm)","formula":"total","ordering":"99","equation":"total(21)","inputId":"21"},"4":{"name":"Plant all (cm)","formula":"none","ordering":"99","equation":"21","inputId":"21"},"5":{"name":"Chekbo","formula":"none","ordering":"99","equation":"28","inputId":"28"},"6":{"name":"Chekbo Total","formula":"total","ordering":"99","equation":"total(28)","inputId":"28"},"8":{"name":"Crop Features","formula":"none","ordering":"99","inputId":"27","equation":"27"},"9":{"name":"Crop Features Total","formula":"total","ordering":"99","inputId":"27","equation":"total(27)"}}', 'EDIT', '2023-01-07 11:28:32', 1),
	(110, 'rnd_2023.varieties', 12, 'VarietiesController', 'saveItem', '{"crop_feature_ids":","}', '{"crop_feature_ids":",17,20,21,22,"}', 'EDIT', '2023-01-07 12:16:26', 1),
	(111, 'rnd_2023.crop_types', 16, 'TrialDataController', 'saveItem', '{"data_1":"{\\"21\\":null,\\"27\\":null,\\"28\\":[\\"y\\"]}","data_2":"{\\"21\\":null,\\"27\\":null}"}', '{"data_1":"{\\"21\\":null,\\"27\\":[\\"20\\"],\\"28\\":[\\"y\\"]}","data_2":"{\\"21\\":null}"}', 'EDIT', '2023-01-07 12:42:57', 1),
	(112, 'rnd_2023.crop_types', 16, 'TrialDataController', 'saveItem', '{"data_1":"{\\"21\\":null,\\"27\\":[\\"20\\"],\\"28\\":[\\"y\\"]}","data_2":"{\\"21\\":null}"}', '{"data_1":"{\\"21\\":null,\\"27\\":[\\"20\\",\\"22\\"],\\"28\\":[\\"y\\"]}","data_2":"{\\"21\\":null,\\"27\\":[\\"21\\"]}"}', 'EDIT', '2023-01-07 12:44:02', 1),
	(113, 'rnd_2023.crop_types', 12, 'TrialDataController', 'saveItem', '{"data_1":"{\\"21\\":\\"22\\",\\"27\\":null}","data_2":"{\\"21\\":null,\\"27\\":null,\\"28\\":[\\"x\\",\\"y\\"]}"}', '{"data_1":"{\\"21\\":\\"22\\"}","data_2":"{\\"21\\":null,\\"28\\":[\\"x\\",\\"y\\"]}"}', 'EDIT', '2023-01-07 12:44:16', 1),
	(114, 'rnd_2023.varieties', 13, 'VarietySelectionController', 'saveItem', '{"id":13,"season_ids":",1,2,","rnd_ordering":2}', '{"season_ids":",1,2,3,4,","rnd_ordering":2,"rnd_code":"CB-E-02-ARM-23"}', 'EDIT', '2023-01-07 12:45:08', 1),
	(115, 'rnd_2023.crops', 20, 'VarietySowingController', 'savePending', '{"id":20,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":7,"rnd_ordering":1,"rnd_code":"CB-M-01-ARM-23","replica":"No","delivery_status":"Yes","delivered_date":"2023-01-05 00:00:00","delivered_at":"2023-01-07 18:45:24","delivered_by":1,"sowing_status":"No","sowing_date":null,"sowing_at":null,"sowing_by":null}', '{"sowing_status":"Yes","sowing_date":"2023-01-08","sowing_by":1,"sowing_at":"2023-01-07T12:45:34.587773Z"}', 'EDIT', '2023-01-07 12:45:34', 1),
	(116, 'rnd_2023.crops', 21, 'VarietySowingController', 'savePending', '{"id":21,"trial_station_id":1,"year":2023,"season_id":2,"variety_id":6,"rnd_ordering":2,"rnd_code":"CB-E-02-ARM-23","replica":"No","delivery_status":"Yes","delivered_date":"2023-01-05 00:00:00","delivered_at":"2023-01-07 18:45:24","delivered_by":1,"sowing_status":"No","sowing_date":null,"sowing_at":null,"sowing_by":null}', '{"sowing_status":"Yes","sowing_date":"2023-01-08","sowing_by":1,"sowing_at":"2023-01-07T12:45:34.587773Z"}', 'EDIT', '2023-01-07 12:45:34', 1),
	(117, 'rnd_2023.trial_form_inputs', 29, 'TrialFormsController', 'saveItemInput', '[]', '{"name":"Features","type":"features","options":null,"default":null,"mandatory":"No","class":null,"ordering":"99","status":"Active","trial_form_id":"4"}', 'ADD', '2023-01-07 12:46:21', 1),
	(118, 'rnd_2023.crop_types', 11, 'TrialDataController', 'saveItem', '{"data_1":"{\\"21\\":\\"2\\"}","data_2":"{\\"21\\":null}"}', '{"data_1":"{\\"21\\":\\"2\\",\\"28\\":[\\"y\\"]}","data_2":"{\\"21\\":null,\\"28\\":[\\"y\\",\\"z\\"]}"}', 'EDIT', '2023-01-07 13:07:30', 1),
	(119, 'rnd_2023.trial_form_inputs', 30, 'TrialFormsController', 'saveItemInput', '[]', '{"name":"Viideo Url","type":"video_url","options":null,"default":null,"mandatory":"No","class":null,"ordering":"99","status":"Active","trial_form_id":"10"}', 'ADD', '2023-01-08 01:24:09', 1),
	(120, 'rnd_2023.crop_types', 11, 'TrialDataController', 'saveItem', '{"data_1":"{\\"21\\":\\"2\\",\\"28\\":[\\"y\\"]}","data_2":"{\\"21\\":null,\\"28\\":[\\"y\\",\\"z\\"]}"}', '{"data_1":"{\\"21\\":\\"2\\",\\"28\\":[\\"y\\"],\\"30\\":\\"youtube.com\\"}","data_2":"{\\"21\\":null,\\"28\\":[\\"y\\",\\"z\\"],\\"30\\":\\"https:\\\\\\/\\\\\\/shaiful.me\\\\\\/\\"}"}', 'EDIT', '2023-01-08 01:55:10', 1),
	(121, 'rnd_2023.trial_report_forms', 4, 'TrialReportFormsController', 'saveIFields', '{"0":{"name":"Fruit Leangth","formula":"none","ordering":"1","equation":"16","inputId":"16"},"1":{"name":"Plant H (cm)","formula":"average","ordering":"3","equation":"average(21)","inputId":"21"},"2":{"name":"Plant Picture","formula":"none","ordering":"99","equation":"19","inputId":"19"},"3":{"name":"Plant (cm)","formula":"total","ordering":"99","equation":"total(21)","inputId":"21"},"4":{"name":"Plant all (cm)","formula":"none","ordering":"99","equation":"21","inputId":"21"},"5":{"name":"Chekbo","formula":"none","ordering":"99","equation":"28","inputId":"28"},"6":{"name":"Chekbo Total","formula":"total","ordering":"99","equation":"total(28)","inputId":"28"},"8":{"name":"Crop Features","formula":"none","ordering":"99","inputId":"27","equation":"27"},"9":{"name":"Crop Features Total","formula":"total","ordering":"99","inputId":"27","equation":"total(27)"}}', '{"0":{"name":"Fruit Leangth","formula":"none","ordering":"1","equation":"16","inputId":"16"},"1":{"name":"Plant H (cm)","formula":"average","ordering":"3","equation":"average(21)","inputId":"21"},"2":{"name":"Plant Picture","formula":"none","ordering":"99","equation":"19","inputId":"19"},"3":{"name":"Plant (cm)","formula":"total","ordering":"99","equation":"total(21)","inputId":"21"},"4":{"name":"Plant all (cm)","formula":"none","ordering":"99","equation":"21","inputId":"21"},"5":{"name":"Chekbo","formula":"none","ordering":"99","equation":"28","inputId":"28"},"6":{"name":"Chekbo Total","formula":"total","ordering":"99","equation":"total(28)","inputId":"28"},"7":{"name":"Crop Features","formula":"none","ordering":"99","equation":"27","inputId":"27"},"8":{"name":"Crop Features Total","formula":"total","ordering":"99","equation":"total(27)","inputId":"27"},"10":{"name":"Viideo Url","formula":"none","ordering":"99","inputId":"30","equation":"30"}}', 'EDIT', '2023-01-08 01:55:58', 1),
	(122, 'rnd_2023.trial_form_inputs', 30, 'TrialFormsController', 'saveItemInput', '{"type":"video_url"}', '{"type":"url"}', 'EDIT', '2023-01-08 02:14:02', 1),
	(123, 'rnd_2023.system_tasks', 28, 'ModuleTasksController', 'saveItem', '[]', '{"name":"Reports","type":"TASK","url":"reports","parent":0,"ordering":"70","status":"Active"}', 'ADD', '2023-05-04 23:47:23', 1),
	(124, 'rnd_2023.user_groups', 1, 'UserGroupsController', 'saveRole', '{"action_0":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_1":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_2":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_3":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_4":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_5":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_6":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_7":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_8":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,"}', '{"action_0":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,","action_1":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,","action_2":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,","action_3":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_4":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,","action_5":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,","action_6":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,","action_7":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_8":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,"}', 'EDIT', '2023-05-04 23:47:37', 1),
	(125, 'rnd_2023.system_tasks', 28, 'ModuleTasksController', 'saveItem', '{"type":"TASK","url":"reports"}', '{"type":"MODULE","url":null}', 'EDIT', '2023-05-04 23:52:10', 1),
	(126, 'rnd_2023.system_tasks', 29, 'ModuleTasksController', 'saveItem', '[]', '{"name":"Variety","type":"TASK","url":"reports\\/variety","parent":"28","ordering":"1","status":"Active"}', 'ADD', '2023-05-04 23:55:51', 1),
	(127, 'rnd_2023.user_groups', 1, 'UserGroupsController', 'saveRole', '{"action_0":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,","action_1":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,","action_2":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,","action_3":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_4":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,","action_5":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,","action_6":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,","action_7":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_8":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,"}', '{"action_0":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_1":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_2":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_3":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_4":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_5":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_6":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_7":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_8":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,"}', 'EDIT', '2023-05-04 23:56:04', 1),
	(128, 'rnd_2023.system_tasks', 29, 'ModuleTasksController', 'saveItem', '{"url":"reports\\/variety"}', '{"url":"reports\\/varieties"}', 'EDIT', '2023-05-05 00:14:03', 1),
	(129, 'rnd_2023.user_groups', 1, 'UserGroupsController', 'saveRole', '{"action_0":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_1":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_2":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_3":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_4":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_5":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_6":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_7":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_8":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,"}', '{"action_0":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_1":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_2":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_3":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_4":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_5":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_6":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,","action_7":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_8":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,29,"}', 'EDIT', '2023-05-05 01:40:49', 1),
	(130, 'rnd_2023.system_user_hidden_columns', 2, 'ColumnsControlController', 'saveItem', '[]', '{"user_id":1,"url":"reports\\/varieties","method":"list","hidden_columns":"[\\"created_at\\"]","created_at":"2023-05-05T01:58:40.787290Z","id":2}', 'ADD', '2023-05-05 01:58:40', 1);

-- Dumping structure for table rnd_2023_back.system_history_mobile_sms
DROP TABLE IF EXISTS `system_history_mobile_sms`;
CREATE TABLE IF NOT EXISTS `system_history_mobile_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(20) DEFAULT NULL,
  `contacts` text DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `status_http` varchar(5) DEFAULT NULL,
  `status_sms` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.system_history_mobile_sms: ~0 rows (approximately)

-- Dumping structure for table rnd_2023_back.system_tasks
DROP TABLE IF EXISTS `system_tasks`;
CREATE TABLE IF NOT EXISTS `system_tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` enum('MODULE','TASK') NOT NULL DEFAULT 'TASK' COMMENT 'MODULE,TASK',
  `parent` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.system_tasks: ~27 rows (approximately)
INSERT INTO `system_tasks` (`id`, `name`, `type`, `parent`, `url`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'System Settings', 'MODULE', 0, '', 1, 'Active', 1, NULL, '2022-10-18 20:38:06', NULL),
	(2, 'Modules & Tasks', 'TASK', 1, 'system/module-tasks', 1, 'Active', 1, NULL, '2022-10-18 20:38:06', NULL),
	(3, 'System Configuration', 'TASK', 1, 'system/configurations', 2, 'Active', 1, NULL, '2022-10-18 20:38:06', NULL),
	(4, 'User Groups', 'TASK', 1, 'system/user-groups', 3, 'Active', 1, NULL, '2022-10-18 20:38:06', NULL),
	(5, 'User Types', 'TASK', 1, 'system/user-types', 3, 'Active', 1, NULL, '2022-10-18 20:38:06', NULL),
	(6, 'Setup', 'MODULE', 0, '', 2, 'Active', 1, NULL, '2022-10-18 20:38:06', NULL),
	(7, 'Admin Setup', 'MODULE', 6, '', 1, 'Active', 1, 1, '2022-10-18 20:38:06', '2022-10-19 19:50:16'),
	(8, 'Designations', 'TASK', 7, 'setup/designations', 1, 'Active', 1, NULL, '2022-10-18 20:38:06', NULL),
	(9, 'Principals', 'TASK', 7, 'setup/principals', 2, 'Active', 1, NULL, '2022-10-18 20:38:06', NULL),
	(10, 'Competitors', 'TASK', 7, 'setup/competitors', 3, 'Active', 1, NULL, '2022-10-18 20:38:06', NULL),
	(11, 'Seasons', 'TASK', 7, 'setup/seasons', 4, 'Active', 1, NULL, '2022-10-18 20:38:06', NULL),
	(12, 'Users', 'TASK', 0, 'users', 30, 'Active', 1, 1, '2022-10-18 20:38:06', '2022-11-12 13:42:07'),
	(13, 'Crop Classification', 'MODULE', 6, '', 5, 'Active', 1, 1, '2022-10-18 20:38:06', '2022-12-04 21:32:48'),
	(14, 'Crop', 'TASK', 13, 'setup/crops', 1, 'Active', 1, 1, '2022-10-18 20:38:06', '2022-11-08 14:36:00'),
	(15, 'Crop Types', 'TASK', 13, 'setup/crop-types', 2, 'Active', 1, NULL, '2022-10-18 20:38:06', NULL),
	(16, 'Variety', 'TASK', 13, 'setup/varieties', 4, 'Active', 1, 1, '2022-10-18 20:38:06', '2022-11-08 14:36:18'),
	(17, 'Trial Form Setup', 'TASK', 6, 'trial/forms', 10, 'Active', 1, 1, '2022-10-20 00:25:14', '2022-12-04 21:32:59'),
	(18, 'Trial Data Entry', 'TASK', 0, 'trial/data', 50, 'Active', 1, 1, '2022-10-20 00:58:54', '2022-11-12 13:41:12'),
	(19, 'Crop Features', 'TASK', 13, 'setup/crop-features', 3, 'Active', 1, NULL, '2022-11-08 14:37:22', NULL),
	(20, 'Trial Stations', 'TASK', 7, 'setup/trial-stations', 0, 'Active', 1, 1, '2022-11-08 16:29:09', '2022-11-12 13:10:18'),
	(21, 'Diseases Setup', 'TASK', 7, 'setup/diseases', 5, 'Active', 1, 1, '2022-11-08 16:29:58', '2022-11-12 13:10:45'),
	(22, 'Variety Configuration', 'MODULE', 0, NULL, 40, 'Active', 1, NULL, '2022-11-12 13:44:02', NULL),
	(23, 'Variety Coding', 'TASK', 22, 'variety-configuration/selection', 1, 'Active', 1, 1, '2022-11-12 13:46:10', '2022-11-12 13:47:12'),
	(24, 'Variety Delivery', 'TASK', 22, 'variety-configuration/delivery', 20, 'Active', 1, 1, '2022-11-12 13:46:57', '2022-11-12 13:48:31'),
	(25, 'Variety Sowing', 'TASK', 22, 'variety-configuration/sowing', 30, 'Active', 1, NULL, '2022-11-12 13:48:05', NULL),
	(26, 'Report Form Setup', 'TASK', 6, 'trial/report-forms', 15, 'Active', 1, 1, '2022-12-04 21:31:52', '2022-12-04 21:33:15'),
	(27, 'Trial Reports', 'TASK', 0, 'trial/report-data', 60, 'Active', 1, 1, '2022-12-04 21:34:25', '2022-12-04 21:34:36'),
	(28, 'Reports', 'MODULE', 0, NULL, 70, 'Active', 1, 1, '2023-05-04 23:47:23', '2023-05-04 23:52:10'),
	(29, 'Variety', 'TASK', 28, 'reports/varieties', 1, 'Active', 1, 1, '2023-05-04 23:55:51', '2023-05-05 00:14:03');

-- Dumping structure for table rnd_2023_back.system_user_hidden_columns
DROP TABLE IF EXISTS `system_user_hidden_columns`;
CREATE TABLE IF NOT EXISTS `system_user_hidden_columns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `hidden_columns` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.system_user_hidden_columns: ~0 rows (approximately)
INSERT INTO `system_user_hidden_columns` (`id`, `user_id`, `url`, `method`, `hidden_columns`, `created_at`, `updated_at`) VALUES
	(1, 1, 'trial/report-forms', 'list', '[]', '2022-12-06 21:40:26', '2022-12-06 21:50:26'),
	(2, 1, 'reports/varieties', 'list', '["created_at"]', '2023-05-05 01:58:40', NULL);

-- Dumping structure for table rnd_2023_back.trial_data
DROP TABLE IF EXISTS `trial_data`;
CREATE TABLE IF NOT EXISTS `trial_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `trial_station_id` smallint(6) NOT NULL,
  `year` smallint(6) NOT NULL,
  `season_id` smallint(6) NOT NULL,
  `trial_form_id` int(11) NOT NULL,
  `variety_id` int(11) NOT NULL,
  `entry_no` smallint(6) NOT NULL,
  `data_1` text DEFAULT NULL,
  `data_2` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.trial_data: ~18 rows (approximately)
INSERT INTO `trial_data` (`id`, `trial_station_id`, `year`, `season_id`, `trial_form_id`, `variety_id`, `entry_no`, `data_1`, `data_2`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 1, 2022, 2, 2, 4, 1, '{"7":"Test","8":"files\\/trial-data\\/2022\\/1\\/2\\/1\\/2\\/accesstoken table.PNG","9":null,"10":["x","y","z"],"12":"2022-11-04","13":"234"}', '{"7":"Replica test","8":"files\\/trial-data\\/2022\\/1\\/2\\/1\\/2\\/galco3.PNG","9":"b","10":["z"],"12":"2022-11-16","13":"4.6"}', 1, 1, '2022-11-28 15:51:52', '2022-11-28 23:04:05'),
	(3, 1, 2022, 2, 4, 7, 1, '{"4":"shaiful2","5":"files\\/trial-data\\/2022\\/1\\/2\\/2\\/4\\/galco.PNG","6":"2022-11-30"}', NULL, 1, 1, '2022-11-28 16:45:08', '2022-11-28 19:26:36'),
	(4, 1, 2022, 2, 2, 4, 2, '{"7":"Sha","8":null,"9":"b","10":["x"],"12":null,"13":null}', '{"7":null,"8":null,"9":"b","10":["y","z"],"12":null,"13":null}', 1, NULL, '2022-11-28 18:00:20', NULL),
	(5, 1, 2022, 2, 3, 4, 1, '{"14":"1","15":"my re"}', '{"14":"2","15":null}', 1, NULL, '2022-11-28 19:11:27', NULL),
	(6, 1, 2022, 2, 3, 4, 2, '{"14":"3","15":"rem1"}', '{"14":"3","15":"rem2"}', 1, 1, '2022-11-28 19:11:57', '2022-11-28 22:34:19'),
	(7, 1, 2022, 2, 3, 4, 3, '{"14":"2","15":"fins"}', '{"14":"2","15":"adsf"}', 1, 1, '2022-11-28 19:24:30', '2022-11-28 19:24:50'),
	(8, 1, 2022, 2, 1, 4, 1, '{"1":"2","2":null,"3":null,"11":null}', '{"1":"3","2":null,"3":null,"11":null}', 1, 1, '2022-11-28 22:33:17', '2022-11-28 23:01:12'),
	(9, 1, 2022, 2, 2, 4, 3, '{"7":null,"8":"files\\/trial-data\\/2022\\/1\\/2\\/1\\/2\\/315522050_691936369214715_1327418633320085978_n1.jpg","9":"b","12":"2022-12-15","13":"100"}', '{"7":null,"8":"files\\/trial-data\\/2022\\/1\\/2\\/1\\/2\\/315089751_1544510059395696_5225576873743654708_n1.jpg","9":"b","12":"2022-12-17","13":"50"}', 1, NULL, '2022-12-19 06:29:43', NULL),
	(10, 1, 2023, 2, 7, 14, 1, '{"16":"33\'","17":"White","18":"10000"}', '{"16":"343434343434","17":"Megenda","18":"120"}', 2, 2, '2023-01-03 03:54:48', '2023-01-03 03:55:51'),
	(11, 1, 2023, 2, 10, 14, 1, '{"21":"2","28":["y"],"30":"youtube.com"}', '{"21":null,"28":["y","z"],"30":"https:\\/\\/shaiful.me\\/"}', 2, 1, '2023-01-03 03:57:42', '2023-01-08 01:55:10'),
	(12, 1, 2023, 2, 10, 14, 5, '{"21":"22"}', '{"21":null,"28":["x","y"]}', 2, 1, '2023-01-03 03:58:18', '2023-01-07 12:44:16'),
	(13, 1, 2023, 2, 8, 14, 1, '{"19":"files\\/trial-data\\/2023\\/1\\/2\\/6\\/8\\/F-5.jpg"}', '{"19":"files\\/trial-data\\/2023\\/1\\/2\\/6\\/8\\/F-50.jpg"}', 2, 2, '2023-01-03 03:59:28', '2023-01-03 03:59:59'),
	(14, 1, 2023, 2, 9, 14, 1, '{"22":"files\\/trial-data\\/2023\\/1\\/2\\/6\\/9\\/F-3.jpg","23":"100","24":null}', '{"22":null,"23":null,"24":null}', 2, NULL, '2023-01-03 04:02:16', NULL),
	(15, 1, 2023, 2, 9, 14, 2, '{"22":"files\\/trial-data\\/2023\\/1\\/2\\/6\\/9\\/b.bmp","23":null,"24":null,"26":null}', '{"22":null,"23":null,"24":null,"26":null}', 1, 1, '2023-01-07 01:26:03', '2023-01-07 07:54:19'),
	(16, 1, 2023, 2, 10, 12, 1, '{"21":null,"27":["20","22"],"28":["y"]}', '{"21":null,"27":["21"]}', 1, 1, '2023-01-07 02:44:35', '2023-01-07 12:44:02'),
	(17, 1, 2023, 2, 4, 7, 1, '{"4":null,"5":null,"6":null}', NULL, 1, NULL, '2023-01-07 12:47:15', NULL),
	(18, 1, 2023, 2, 10, 12, 2, '{"21":null,"27":["20","21","22"]}', '{"21":null}', 1, NULL, '2023-01-07 13:26:56', NULL),
	(19, 1, 2023, 2, 10, 13, 2, '{"21":null,"30":"https:\\/\\/stackoverflow.com"}', '{"21":null,"30":null}', 1, NULL, '2023-01-08 02:16:43', NULL),
	(20, 1, 2023, 2, 10, 13, 3, '{"21":null,"30":null}', '{"21":null,"30":"http:\\/\\/192.168.0.110:8080\\/trial\\/report-data\\/6\\/4\\/1\\/2023\\/2"}', 1, NULL, '2023-01-08 02:19:35', NULL);

-- Dumping structure for table rnd_2023_back.trial_forms
DROP TABLE IF EXISTS `trial_forms`;
CREATE TABLE IF NOT EXISTS `trial_forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `crop_id` smallint(6) NOT NULL,
  `entry_count` smallint(6) NOT NULL DEFAULT 1,
  `entry_interval` smallint(6) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.trial_forms: ~10 rows (approximately)
INSERT INTO `trial_forms` (`id`, `name`, `crop_id`, `entry_count`, `entry_interval`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Single Entry', 1, 1, 0, 99, 'Active', 1, 1, '2022-11-25 16:21:00', '2022-11-25 16:21:47'),
	(2, 'Fixed Entry', 1, 3, 0, 99, 'Active', 1, NULL, '2022-11-25 16:21:23', NULL),
	(3, 'Unknow Entry', 1, -1, 10, 99, 'Active', 1, NULL, '2022-11-25 16:21:34', NULL),
	(4, 'Single', 2, 1, 0, 99, 'Active', 1, NULL, '2022-11-27 12:33:26', NULL),
	(5, 'Multiple', 2, 5, 5, 99, 'Active', 1, NULL, '2022-11-27 12:33:43', NULL),
	(6, 'Unknown', 2, -1, 0, 99, 'Active', 1, NULL, '2022-11-27 12:33:51', NULL),
	(7, 'Fruit Data Entry', 6, 1, 0, 99, 'Active', 2, NULL, '2023-01-03 03:40:47', NULL),
	(8, 'Fruit Picture Entry', 6, 1, 0, 99, 'Active', 2, NULL, '2023-01-03 03:41:03', NULL),
	(9, 'Disease data Entry', 6, -1, 0, 99, 'Active', 2, NULL, '2023-01-03 03:41:31', NULL),
	(10, 'Interval Data', 6, 5, 0, 99, 'Active', 2, NULL, '2023-01-03 03:41:53', NULL);

-- Dumping structure for table rnd_2023_back.trial_form_inputs
DROP TABLE IF EXISTS `trial_form_inputs`;
CREATE TABLE IF NOT EXISTS `trial_form_inputs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `trial_form_id` smallint(6) NOT NULL,
  `options` text DEFAULT NULL,
  `default` varchar(255) DEFAULT '',
  `mandatory` enum('Yes','No') DEFAULT 'No' COMMENT 'Yes,No',
  `class` varchar(255) DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.trial_form_inputs: ~29 rows (approximately)
INSERT INTO `trial_form_inputs` (`id`, `type`, `name`, `trial_form_id`, `options`, `default`, `mandatory`, `class`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'text', 'Curd Weight', 1, NULL, NULL, 'Yes', 'float_positive', 3, 'Active', 2, 2, '2022-10-25 03:53:35', '2022-10-25 03:55:16'),
	(2, 'dropdown', 'Ranking', 1, '1\r\n2\r\n3\r\n4', NULL, 'No', NULL, 99, 'Active', 1, NULL, '2022-11-06 15:17:37', NULL),
	(3, 'text', 'Weight', 1, NULL, NULL, 'No', 'float_positive', 99, 'Active', 1, NULL, '2022-11-06 15:20:11', NULL),
	(4, 'text', 'Test1', 4, NULL, NULL, 'No', NULL, 99, 'Active', 1, NULL, '2022-11-27 12:34:33', NULL),
	(5, 'image', 'Image', 4, NULL, NULL, 'No', NULL, 99, 'Active', 1, NULL, '2022-11-27 12:34:42', NULL),
	(6, 'date', 'Date1', 4, NULL, NULL, 'No', NULL, 99, 'Active', 1, NULL, '2022-11-27 12:34:47', NULL),
	(7, 'text', 't1', 2, NULL, NULL, 'No', NULL, 99, 'Active', 1, NULL, '2022-11-27 23:16:54', NULL),
	(8, 'image', 'im1', 2, NULL, NULL, 'Yes', NULL, 99, 'Active', 1, 1, '2022-11-27 23:17:01', '2022-11-28 23:02:40'),
	(9, 'dropdown', 'd1', 2, 'a\r\nb\r\nc', 'b', 'No', NULL, 99, 'Active', 1, NULL, '2022-11-27 23:17:14', NULL),
	(10, 'checkbox', 'c1', 2, 'x\r\ny\r\nz', 'x,y', 'Yes', NULL, 99, 'Active', 1, 1, '2022-11-27 23:17:35', '2022-11-28 23:02:28'),
	(11, 'textarea', 'ta', 1, NULL, NULL, 'No', NULL, 99, 'Active', 1, NULL, '2022-11-27 23:25:02', NULL),
	(12, 'date', 'date', 2, NULL, NULL, 'Yes', NULL, 99, 'Active', 1, NULL, '2022-11-28 01:41:11', NULL),
	(13, 'text', 'rating', 2, NULL, NULL, 'Yes', 'float_positive', 99, 'Active', 1, NULL, '2022-11-28 01:41:31', NULL),
	(14, 'dropdown', 'Rating', 3, '1\r\n2\r\n3', NULL, 'Yes', NULL, 99, 'Active', 1, NULL, '2022-11-28 15:04:57', NULL),
	(15, 'textarea', 'Remarks', 3, NULL, NULL, 'No', NULL, 99, 'Active', 1, NULL, '2022-11-28 15:05:08', NULL),
	(16, 'text', 'Fruit Leangth', 7, NULL, NULL, 'Yes', NULL, 5, 'Active', 2, NULL, '2023-01-03 03:43:31', NULL),
	(17, 'dropdown', 'Fruit Color', 7, 'White\r\nPink\r\nMegenda\r\nBlue', 'Blue', 'No', NULL, 7, 'Active', 2, NULL, '2023-01-03 03:45:00', NULL),
	(18, 'text', 'Fruit (gm)', 7, NULL, NULL, 'No', 'float_all', 11, 'Active', 2, NULL, '2023-01-03 03:46:07', NULL),
	(19, 'image', 'Plant Picture', 8, NULL, NULL, 'Yes', NULL, 1, 'Active', 2, NULL, '2023-01-03 03:47:20', NULL),
	(20, 'image', 'Cut fruit pic', 8, NULL, NULL, 'No', NULL, 22, 'In-Active', 2, NULL, '2023-01-03 03:47:59', NULL),
	(21, 'text', 'Plant H (cm)', 10, NULL, NULL, 'No', NULL, 99, 'Active', 2, NULL, '2023-01-03 03:57:23', NULL),
	(22, 'image', 'Leaf image 50mb', 9, NULL, NULL, 'No', '25', 99, 'Active', 2, 1, '2023-01-03 04:01:19', '2023-01-07 02:06:06'),
	(23, 'text', 'Root', 9, NULL, NULL, 'No', NULL, 99, 'Active', 2, NULL, '2023-01-03 04:01:26', NULL),
	(24, 'text', 'Fruit', 9, NULL, NULL, 'No', NULL, 99, 'Active', 2, NULL, '2023-01-03 04:01:32', NULL),
	(25, 'image', 'Image size test', 3, NULL, NULL, 'No', '2', 99, 'Active', 1, NULL, '2023-01-04 18:17:13', NULL),
	(26, 'image', 'image default', 9, NULL, NULL, 'No', NULL, 99, 'Active', 1, 1, '2023-01-04 18:19:53', '2023-01-07 01:40:30'),
	(27, 'features', 'Crop Features', 10, NULL, NULL, 'No', NULL, 99, 'Active', 1, NULL, '2023-01-07 02:37:10', NULL),
	(28, 'checkbox', 'Chekbo', 10, 'x\r\ny\r\nz', NULL, 'No', NULL, 99, 'Active', 1, 1, '2023-01-07 02:40:50', '2023-01-07 02:44:24'),
	(29, 'features', 'Features', 4, NULL, NULL, 'No', NULL, 99, 'Active', 1, NULL, '2023-01-07 12:46:21', NULL),
	(30, 'url', 'Viideo Url', 10, NULL, NULL, 'No', NULL, 99, 'Active', 1, 1, '2023-01-08 01:24:09', '2023-01-08 02:14:02');

-- Dumping structure for table rnd_2023_back.trial_report_forms
DROP TABLE IF EXISTS `trial_report_forms`;
CREATE TABLE IF NOT EXISTS `trial_report_forms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `crop_id` smallint(6) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `fields` longtext DEFAULT NULL,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.trial_report_forms: ~4 rows (approximately)
INSERT INTO `trial_report_forms` (`id`, `name`, `crop_id`, `ordering`, `fields`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'R-1', 1, 99, '{"4":{"name":"Curd Weight","formula":"none","ordering":"1","inputId":"1","equation":"1"},"5":{"name":"images","formula":"none","ordering":"2","inputId":"8","equation":"8"},"6":{"name":"Rating","formula":"none","ordering":"3","inputId":"13","equation":"13"},"7":{"name":"Total Rating","formula":"total","ordering":"4","inputId":"13","equation":"total(13)"},"8":{"name":"Average Rating","formula":"total","ordering":"5","inputId":"13","equation":"total(13)"},"9":{"name":"date","formula":"none","ordering":"6","inputId":"12","equation":"12"}}', 'Active', 1, 1, '2022-12-07 22:16:58', '2022-12-19 06:26:00'),
	(2, 'r-2', 1, 99, '{"1":{"name":"Ranking","formula":"none","ordering":"99","equation":"2"}}', 'Active', 1, 1, '2022-12-07 22:30:37', '2022-12-08 02:35:33'),
	(3, 'cA-1', 2, 99, NULL, 'Active', 1, NULL, '2022-12-08 02:39:34', NULL),
	(4, 'Fruit Report', 6, 1, '{"0":{"name":"Fruit Leangth","formula":"none","ordering":"1","equation":"16","inputId":"16"},"1":{"name":"Plant H (cm)","formula":"average","ordering":"3","equation":"average(21)","inputId":"21"},"2":{"name":"Plant Picture","formula":"none","ordering":"99","equation":"19","inputId":"19"},"3":{"name":"Plant (cm)","formula":"total","ordering":"99","equation":"total(21)","inputId":"21"},"4":{"name":"Plant all (cm)","formula":"none","ordering":"99","equation":"21","inputId":"21"},"5":{"name":"Chekbo","formula":"none","ordering":"99","equation":"28","inputId":"28"},"6":{"name":"Chekbo Total","formula":"total","ordering":"99","equation":"total(28)","inputId":"28"},"7":{"name":"Crop Features","formula":"none","ordering":"99","equation":"27","inputId":"27"},"8":{"name":"Crop Features Total","formula":"total","ordering":"99","equation":"total(27)","inputId":"27"},"10":{"name":"Viideo Url","formula":"none","ordering":"99","inputId":"30","equation":"30"}}', 'Active', 2, 1, '2023-01-03 04:05:22', '2023-01-08 01:55:58');

-- Dumping structure for table rnd_2023_back.trial_report_form_inputs
DROP TABLE IF EXISTS `trial_report_form_inputs`;
CREATE TABLE IF NOT EXISTS `trial_report_form_inputs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `trial_form_id` smallint(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `source` enum('form_input','report_form_input') NOT NULL DEFAULT 'form_input' COMMENT 'From Input fields,From Report Fields',
  `hidden` enum('Yes','No') DEFAULT 'No' COMMENT 'Yes,No',
  `field_ids` varchar(255) NOT NULL DEFAULT ',',
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.trial_report_form_inputs: ~0 rows (approximately)

-- Dumping structure for table rnd_2023_back.trial_stations
DROP TABLE IF EXISTS `trial_stations`;
CREATE TABLE IF NOT EXISTS `trial_stations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 99,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.trial_stations: ~3 rows (approximately)
INSERT INTO `trial_stations` (`id`, `name`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Pran Nagar Trial Station', 1, 'Active', 1, 1, '2022-11-20 16:26:22', '2023-01-03 18:16:37'),
	(2, 'Jessore Trial Station', 3, 'Active', 1, 2, '2022-11-20 18:09:54', '2023-01-03 04:27:26'),
	(3, 'Sitakunda Trial Station', 5, 'Active', 2, NULL, '2023-01-03 04:27:45', NULL);

-- Dumping structure for table rnd_2023_back.trial_varieties
DROP TABLE IF EXISTS `trial_varieties`;
CREATE TABLE IF NOT EXISTS `trial_varieties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `trial_station_id` smallint(6) NOT NULL,
  `year` smallint(6) NOT NULL,
  `season_id` smallint(6) NOT NULL,
  `variety_id` int(11) NOT NULL,
  `rnd_ordering` smallint(6) NOT NULL DEFAULT 0,
  `rnd_code` varchar(255) DEFAULT NULL,
  `replica` enum('Yes','No') NOT NULL COMMENT 'Yes,No',
  `delivery_status` enum('Yes','No') NOT NULL COMMENT 'Yes,No',
  `delivered_date` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `delivered_by` int(11) NOT NULL,
  `sowing_status` enum('Yes','No') NOT NULL DEFAULT 'No' COMMENT 'Yes,No',
  `sowing_date` timestamp NULL DEFAULT NULL,
  `sowing_at` timestamp NULL DEFAULT NULL,
  `sowing_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.trial_varieties: ~10 rows (approximately)
INSERT INTO `trial_varieties` (`id`, `trial_station_id`, `year`, `season_id`, `variety_id`, `rnd_ordering`, `rnd_code`, `replica`, `delivery_status`, `delivered_date`, `delivered_at`, `delivered_by`, `sowing_status`, `sowing_date`, `sowing_at`, `sowing_by`) VALUES
	(10, 1, 2023, 2, 4, 3, 'CF-EX-03-ARM-23', 'Yes', 'Yes', '2023-01-01 18:00:00', '2023-01-03 13:31:39', 1, 'No', '2023-03-03 18:00:00', '2023-01-03 03:37:55', 2),
	(11, 1, 2023, 2, 3, 4, 'CF-EX-04-ARM-23', 'No', 'Yes', '2023-01-01 18:00:00', '2023-01-03 13:31:39', 1, 'No', '2023-03-03 18:00:00', '2023-01-03 03:37:55', 2),
	(12, 1, 2023, 2, 14, 1, 'TM-U-01-ARM-23', 'Yes', 'Yes', '2023-01-03 18:00:00', '2023-01-03 18:17:06', 1, 'Yes', '2023-01-04 18:00:00', '2023-01-03 18:17:14', 1),
	(13, 1, 2023, 2, 12, 2, 'TM-G-02-ARM-23', 'Yes', 'Yes', '2023-01-03 18:00:00', '2023-01-03 18:17:06', 1, 'Yes', '2023-01-04 18:00:00', '2023-01-03 18:17:14', 1),
	(14, 1, 2023, 2, 13, 3, 'TM-LG-03-ARM-23', 'Yes', 'Yes', '2023-01-03 18:00:00', '2023-01-03 18:17:06', 1, 'Yes', '2023-01-04 18:00:00', '2023-01-03 18:17:14', 1),
	(15, 2, 2023, 2, 4, 3, 'CF-EX-03-ARM-23', 'No', 'Yes', '2023-01-04 18:00:00', '2023-01-03 14:45:24', 1, 'Yes', '2023-01-01 18:00:00', '2023-01-03 14:46:20', 1),
	(16, 2, 2023, 2, 3, 4, 'CF-EX-04-ARM-23', 'Yes', 'Yes', '2023-01-04 18:00:00', '2023-01-03 14:45:24', 1, 'Yes', '2023-01-01 18:00:00', '2023-01-03 14:46:20', 1),
	(17, 2, 2023, 2, 14, 1, 'TM-U-01-ARM-23', 'Yes', 'Yes', '2023-01-03 18:00:00', '2023-01-03 18:15:45', 1, 'Yes', '2023-01-04 18:00:00', '2023-01-03 18:15:55', 1),
	(18, 2, 2023, 2, 12, 2, 'TM-G-02-ARM-23', 'Yes', 'Yes', '2023-01-03 18:00:00', '2023-01-03 18:15:45', 1, 'Yes', '2023-01-04 18:00:00', '2023-01-03 18:15:55', 1),
	(19, 2, 2023, 2, 13, 3, 'TM-LG-03-ARM-23', 'Yes', 'Yes', '2023-01-03 18:00:00', '2023-01-03 18:15:45', 1, 'Yes', '2023-01-04 18:00:00', '2023-01-03 18:15:55', 1),
	(20, 1, 2023, 2, 7, 1, 'CB-M-01-ARM-23', 'No', 'Yes', '2023-01-04 18:00:00', '2023-01-07 12:45:24', 1, 'Yes', '2023-01-07 18:00:00', '2023-01-07 12:45:34', 1),
	(21, 1, 2023, 2, 6, 2, 'CB-E-02-ARM-23', 'No', 'Yes', '2023-01-04 18:00:00', '2023-01-07 12:45:24', 1, 'Yes', '2023-01-07 18:00:00', '2023-01-07 12:45:34', 1);

-- Dumping structure for table rnd_2023_back.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_group_id` smallint(6) NOT NULL DEFAULT 3,
  `user_type_id` tinyint(4) NOT NULL DEFAULT 1,
  `trial_station_ids` varchar(255) NOT NULL DEFAULT ',',
  `name` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `infos` longtext DEFAULT NULL,
  `mobile_authentication_off_end` timestamp NULL DEFAULT NULL,
  `max_logged_browser` smallint(6) NOT NULL DEFAULT 3,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `employee_id`, `username`, `password`, `user_group_id`, `user_type_id`, `trial_station_ids`, `name`, `email`, `mobile_no`, `ordering`, `status`, `infos`, `mobile_authentication_off_end`, `max_logged_browser`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'superadmin', '$2y$10$yPy37d.aKlLeS2bzo0CU6upacwVLW7lRq2OuvArsuBxwB6x8e0DNq', 1, 1, ',', 'Shaiful Islam', 'shaiful@shaiful.me', '01912097849', 9999, 'Active', NULL, NULL, 3, 1, NULL, '2022-10-18 17:51:03', NULL),
	(2, '0026', '0026', '$2y$10$s5JN6y3hcUHsSfzdMx/L1u3ixyPz5wgbTDQ2J0paGXNrGcIj9BxLu', 2, 1, ',', 'Abidur Rahman', 'hoit@malikseeds.com', '01713090961', 9999, 'Active', NULL, NULL, 3, 1, 1, '2022-10-18 17:51:03', '2022-10-25 03:24:30');

-- Dumping structure for table rnd_2023_back.user_auth_tokens
DROP TABLE IF EXISTS `user_auth_tokens`;
CREATE TABLE IF NOT EXISTS `user_auth_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `save_token` varchar(255) DEFAULT NULL,
  `device_info` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.user_auth_tokens: ~71 rows (approximately)
INSERT INTO `user_auth_tokens` (`id`, `user_id`, `token`, `save_token`, `device_info`, `created_at`, `last_used_at`, `expires_at`) VALUES
	(1, 1, '$2y$10$bGdWMz6KLvOG9BG2xnC...vyQk1aAin7OPKTG2hICWp3itkovjhF2', NULL, '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-05 06:21:27', '2022-11-05 06:21:27', '2022-11-05 07:21:27'),
	(2, 1, '$2y$10$O.jwSDefFhuYVlMZldLhO.Lh91G/24pDQYnmIgmIm506xmkFAr8cy', '1667659596002', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-05 14:46:40', '2022-11-05 14:46:40', '2022-11-05 15:46:40'),
	(3, 1, '$2y$10$N3UHNV6gCjRyTg0hsq347eZtE.pWNqYGZqzfPvx.Ve2Dx1OoSa.yS', '1667664424958', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-05 16:21:47', '2022-11-05 16:21:47', '2022-11-05 17:21:47'),
	(4, 1, '$2y$10$BnwlQ2yd9B8DE30gX7OQjuGUnKC.gZm66KpFrkQO9Pq2RlOZYuxyy', '1667728598612', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-06 09:56:49', '2022-11-06 09:56:49', '2022-11-06 10:56:49'),
	(5, 1, '$2y$10$QZZt67QQjqJvruQXwYnJDeGHYo95UFsJSzmNO422WemmOCAsKTMpW', '1667740330488', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-06 13:12:48', '2022-11-06 13:12:48', '2022-11-06 14:12:48'),
	(6, 1, '$2y$10$MGIRj/IURmmYju1IJ1ZIY.fmVtKGBdAenvnQ3BrK6E6GibxwpFjv2', '1667748002187', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-06 15:23:39', '2022-11-06 15:23:39', '2022-11-06 16:23:39'),
	(7, 1, '$2y$10$DDKf90sSIBh7eCotS/lCtu2IIdpGS/q6/0iO9hU8WGwcjmmEn6Vua', '1667924953832', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-08 16:30:07', '2022-11-08 16:30:07', '2022-11-08 17:30:07'),
	(8, 1, '$2y$10$cTo6DbeGiw2PevrD0Lsq.eJZILe4oywoj7ZOd/Wg4i6SDOfJRHFCO', NULL, '{"REMOTE_ADDR":"103.89.24.45","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-08 16:45:32', '2022-11-08 14:45:32', '2022-11-08 15:45:32'),
	(9, 1, '$2y$10$OZeXhpOT0lX470IP3ex7vOXMTdb2MlRZUYUwy5k7fg/AeSqoI3/Ce', NULL, '{"REMOTE_ADDR":"103.89.24.45","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-11 04:37:04', '2022-11-11 02:37:04', '2022-11-11 03:37:04'),
	(10, 1, '$2y$10$.o0zSfnJt/5wZ.KCSXKOfO04gCvpB2NyI60SmjwSq3qAHNgQyPpqW', NULL, '{"REMOTE_ADDR":"160.238.0.221","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-12 11:22:46', '2022-11-12 11:22:46', '2022-11-12 12:22:46'),
	(11, 1, '$2y$10$uW/PNN/aRivIykJXmSCAm.SF7yvzdh8AnKjI4uyIqENsizEQ2Az3u', '1668268092757', '{"REMOTE_ADDR":"160.238.0.221","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-12 15:51:33', '2022-11-12 13:51:33', '2022-11-12 14:51:33'),
	(12, 1, '$2y$10$T9nPcjWmhRec0ONKMkoO3OXks/w9/8RFbhVtkvxNh7E09qgyElgpu', NULL, '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-12 15:55:54', '2022-11-12 15:55:54', '2022-11-12 16:55:54'),
	(13, 1, '$2y$10$0opatXOl3FUy0XTJGXLdHeCsE6nlPEbhl8C6XtDryZzPvknEtFs/.', NULL, '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-12 23:24:55', '2022-11-12 23:24:55', '2022-11-13 00:24:55'),
	(14, 1, '$2y$10$HZdG4W2ru2nL1uM6dCTwBOj8xjCOJe.soo268UhrksfSS0U4HU872', NULL, '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-13 07:00:54', '2022-11-13 07:00:54', '2022-11-13 08:00:54'),
	(15, 1, '$2y$10$1HM6vxkmSg37XrfgCswwW.j2LsrAkPIx/2H/NwmocSF5JlY9wf/ua', NULL, '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-16 09:26:33', '2022-11-16 09:26:33', '2022-11-16 10:26:33'),
	(16, 1, '$2y$10$wvqumTy8kiBY3UUpMQnSXO03nH34O6.O.YKJbcrzU5RicTnnDKNHS', NULL, '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-16 10:42:24', '2022-11-16 10:42:24', '2022-11-16 11:42:24'),
	(17, 1, '$2y$10$1rqpec8QUrSsTH5wpHRLfuDaMnc4Pfkd/PeifDj6H0lVCJP.FOWfK', NULL, '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-16 13:20:57', '2022-11-16 13:20:57', '2022-11-16 14:20:57'),
	(18, 1, '$2y$10$q/QB/1Hm4E5Zc0ts0py5DOh/Lrc3Nw.widHmFIlLa2CSb0hNB.nxu', '1668698956913', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-17 16:58:05', '2022-11-17 16:58:05', '2022-11-17 17:58:05'),
	(19, 1, '$2y$10$Mqu0WzVh5E27BfVvnhQyiOUfBhC7EUslnjtHQWoA.E471dkHqaHci', NULL, '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/107.0.0.0 Safari\\/537.36"}', '2022-11-17 16:57:38', '2022-11-17 16:57:38', '2022-11-17 17:57:38'),
	(20, 1, '$2y$10$KF7EL1FsspERd7vVKD1L6ePtVxDwFG4SijbeuUdaUO.GJ7ghKFq4G', NULL, '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-18 14:35:13', '2022-11-18 14:35:13', '2022-11-18 15:35:13'),
	(21, 1, '$2y$10$bEZStK5ubeqkdJbYJtoDUeqpUGncaaUUZbWV0DE4asgMBxKtpgW9a', NULL, '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-19 09:34:30', '2022-11-19 09:34:30', '2022-11-19 10:34:30'),
	(22, 1, '$2y$10$mKvoKYCcpvqHJ9/BxZjtjeTiA289R9tVA7feTfh2.3nnwkJDogRX6', NULL, '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-19 11:14:51', '2022-11-19 11:14:51', '2022-11-19 12:14:51'),
	(23, 1, '$2y$10$YMF3.1sP4Q9f7qwyuasG7O38NAt6YEWT8IcrFJhrv38D4ihuevbSi', '1668862692335', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-19 13:13:09', '2022-11-19 13:13:09', '2022-11-19 14:13:09'),
	(24, 1, '$2y$10$CGdcbbcCHhg3WpTSGQ36yO/ohhSZ6i.db.LlIowXi0GR4KwcZ9yZC', '1668883727500', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2022-11-19 19:48:29', '2022-11-19 19:48:29', '2022-11-19 20:48:29'),
	(25, 1, '$2y$10$RFMIPgO19YAC4JoWFfqHO.4qHiDlpY.6thdIxMbfuPyXdhadJl1Di', '1668927565639', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-20 06:59:39', '2022-11-20 06:59:39', '2022-11-20 07:59:39'),
	(26, 1, '$2y$10$iorwjtAMFWRSlc8TT/u4cO6wCcdB2czKMdCNiNfLsGjF3veBv9fW6', '1668961578371', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-20 16:33:36', '2022-11-20 16:33:36', '2022-11-20 17:33:36'),
	(27, 1, '$2y$10$LMVtYeJxsViFviWaS66/C.nWXGPgFmW6DxBi8qftDI8G/D.eFeT16', '1668967791943', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-20 18:22:39', '2022-11-20 18:22:39', '2022-11-20 19:22:39'),
	(28, 1, '$2y$10$/8fRNb.f0bttjFyhtXTSB.NDr0LV9pCHoSfxINk1p5cRKcjy8dq0W', NULL, '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-21 15:59:32', '2022-11-21 15:59:32', '2022-11-21 16:59:32'),
	(29, 1, '$2y$10$GIJCF/z.QxyIftQUkSgtc.f6sAMnPLuigd/nFWw4FEYfW20e0gB3.', '1669145926802', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-22 20:08:27', '2022-11-22 20:08:27', '2022-11-22 21:08:27'),
	(30, 1, '$2y$10$HD05Y.cAK1orZBLlqCB96O2Eo63.o1TBek7JfKTNmeLECpbc4qFYa', NULL, '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-24 09:47:21', '2022-11-24 09:47:21', '2022-11-24 10:47:21'),
	(31, 1, '$2y$10$W0fZFaRmdtfXCIhcxg4bC..V5Bhjjx5tkmkkP7pPpTb7bcyv6VG7q', NULL, '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-24 13:02:15', '2022-11-24 13:02:15', '2022-11-24 14:02:15'),
	(32, 1, '$2y$10$TdUKVDYzj3EFqji5.sWu../J2uWNqCyNRw0t7ABCOiVdmiBTSHuri', '1669307009711', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-24 16:23:42', '2022-11-24 16:23:42', '2022-11-24 17:23:42'),
	(33, 1, '$2y$10$N2/IrTiGS8FZ7n3DINkIsuaD5q6uSSzBSdFmr1tZ5psBZzJooLwRy', NULL, '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-25 00:13:49', '2022-11-25 00:13:49', '2022-11-25 01:13:49'),
	(34, 1, '$2y$10$wCRaRYFU9JEWfyTgaHoKiOHWJy1zcH143JvG/d9o8vi4FxkSkzKj2', '1669393298498', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-25 16:21:56', '2022-11-25 16:21:56', '2022-11-25 17:21:56'),
	(35, 1, '$2y$10$dXpuRAzG7FqNjDKiM48UIuVF8WxY7A5ZWC4XdhbHK52ZMw0.wTInm', '1669552482648', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-27 13:19:51', '2022-11-27 13:19:51', '2022-11-27 14:19:51'),
	(36, 1, '$2y$10$uRJoLwZWecNC1dm8lgiAiuBYk/1Yid8ppab3jGA85.Ja7QzhC.KTS', '1669562848115', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-27 15:33:53', '2022-11-27 15:33:53', '2022-11-27 16:33:53'),
	(37, 1, '$2y$10$VhzSnFRtTVKoyHMUwvWnJetQ4ACBlS29NFOcXppkIeTM03a.yHuxq', '1669591496425', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-27 23:42:10', '2022-11-27 23:42:10', '2022-11-28 00:42:10'),
	(38, 1, '$2y$10$QcmIwrYXNKzGM71g40.Q9umPhR2DU6sl9.iwMybmZIYAB.CJS1RbC', '1669599673689', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-28 02:37:44', '2022-11-28 02:37:44', '2022-11-28 03:37:44'),
	(39, 1, '$2y$10$fo5PfAfmtSLxdPHmcqDZr.2w6FJRs324lGublByHoNrz00xhUOoBm', NULL, '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-28 08:31:35', '2022-11-28 08:31:35', '2022-11-28 09:31:35'),
	(40, 1, '$2y$10$QXf7dzhlyUPXpETT6/859eR2uk0ojvHHehIy2IhzArRbecXSwiD6G', '1669638289913', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-28 13:21:50', '2022-11-28 13:21:50', '2022-11-28 14:21:50'),
	(41, 1, '$2y$10$yck4ZFhI1be.xOvciJ5Npe6ateyo0w3GOn3nw8mIfC2DkwIgRPHfe', '1669647897955', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-28 16:45:15', '2022-11-28 16:45:15', '2022-11-28 17:45:15'),
	(42, 1, '$2y$10$cRrj9T4vRJY0osya.DECSuh2LmEyJgqumedk1kK5OxD5jUqikClS2', '1669663589180', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-28 19:26:36', '2022-11-28 19:26:36', '2022-11-28 20:26:36'),
	(43, 1, '$2y$10$GqNeySem.XHyWYK.6MPOSel6Aw0BG.JxmquwF0aum1HoJff.ygP36', '1669676639703', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-11-28 23:04:05', '2022-11-28 23:04:05', '2022-11-29 00:04:05'),
	(44, 1, '$2y$10$pJMEdvL3jLClGLvM50nvgu6c9j5Nydk3SG/RLdu8XYl0L9Ze9Zn7i', '1670192558448', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-12-04 22:41:32', '2022-12-04 22:41:32', '2022-12-04 23:41:32'),
	(45, 1, '$2y$10$GoGU9NDmJN25TzCsuTEz6eXFXQUy036tYX3.8tczxiTCcR0F/wvGG', '1670367466802', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-12-06 23:46:24', '2022-12-06 23:46:24', '2022-12-07 00:46:24'),
	(46, 1, '$2y$10$CUaZc1tXdI94zYfxfMnOi.jJf9rtn9/pu4Z0rYDwAZDNmUNCtuY5C', NULL, '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-12-07 02:08:08', '2022-12-07 02:08:08', '2022-12-07 03:08:08'),
	(47, 1, '$2y$10$H66E3uXa2JXYuya/gFV35eikxPQIQ1WgO1/UwOMybTFuuodDO3rdi', '1670455383456', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-12-07 23:26:41', '2022-12-07 23:26:41', '2022-12-08 00:26:41'),
	(48, 1, '$2y$10$b9oa5Eun8MYRZ8XyMhmn2egIFCcvXTKHR2t8cLOhWfWrJ2YBanFmK', '1670466929656', '{"REMOTE_ADDR":"192.168.0.109","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-12-08 02:35:36', '2022-12-08 02:35:36', '2022-12-08 03:35:36'),
	(49, 1, '$2y$10$8fgv0BJ9SwfFecERRE1P7O9V6..cCr/50l6BevvWyzbgfJ71db19u', '1670467165757', '{"REMOTE_ADDR":"103.89.24.45","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:107.0) Gecko\\/20100101 Firefox\\/107.0"}', '2022-12-08 02:39:43', '2022-12-08 02:39:43', '2022-12-08 03:39:43'),
	(50, 2, '$2y$10$N/57Cpr4milg1aHNZPDn7eL.gYoqIYhLLSZnYYpe.ENhlPOTnW7hu', NULL, '{"REMOTE_ADDR":"103.58.74.94","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36"}', '2022-12-18 09:51:18', '2022-12-18 09:51:18', '2022-12-18 10:51:18'),
	(51, 1, '$2y$10$k8CoHb6L72raPJkTDZ9/veIrSqPo5xGIG64Bt5c5LmtI4lExaMhDi', '1671431288772', '{"REMOTE_ADDR":"103.89.24.45","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2022-12-19 06:30:04', '2022-12-19 06:30:04', '2022-12-19 07:30:04'),
	(52, 1, '$2y$10$NibtG4G9IKGHUXBGR6rUpOsjKLh7WLbHOlOHvUYJoVks6qQrfoqo6', NULL, '{"REMOTE_ADDR":"103.89.24.45","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2022-12-27 19:01:22', '2022-12-27 19:01:22', '2022-12-27 20:01:22'),
	(53, 2, '$2y$10$WvVeDqDKx406DWwKP/AEaObcDfbmd0F1sMzGly9Cn1zgte1iVop3a', NULL, '{"REMOTE_ADDR":"103.58.74.94","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36"}', '2023-01-03 02:50:47', '2023-01-03 02:50:47', '2023-01-03 02:50:47'),
	(54, 2, '$2y$10$zZiL4rxZhNUvy/PaNo9DbOpaksg2XtMj1EXSJWkvdrPCQV2DM7RrK', '1672720051281', '{"REMOTE_ADDR":"45.251.57.49","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/108.0.0.0 Safari\\/537.36"}', '2023-01-03 04:29:19', '2023-01-03 04:29:19', '2023-01-03 05:29:19'),
	(55, 2, '$2y$10$j8/3uXWQFV4jvM1qyzvmLesSz3h5.zP5FYJ4kyGi/Mto3i4ASTJNW', '1672719050268', '{"REMOTE_ADDR":"45.251.57.49","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko\\/20100101 Firefox\\/106.0"}', '2023-01-03 04:39:44', '2023-01-03 04:39:44', '2023-01-03 05:39:44'),
	(56, 1, '$2y$10$T5Z.uwQgVA13uNkIh6n6DOsn/t5mkjc.AaYM0A01Fa7wmFXuVxrui', NULL, '{"REMOTE_ADDR":"103.89.24.36","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2023-01-03 11:26:07', '2023-01-03 11:26:07', '2023-01-03 12:26:07'),
	(57, 1, '$2y$10$Y15QRcpqUwhcUV6t.tadB..Tdw9vhOhTOZZSjmi/Pa091xvHQTCju', '1672753190943', '{"REMOTE_ADDR":"103.89.24.36","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2023-01-03 13:40:43', '2023-01-03 13:40:43', '2023-01-03 14:40:43'),
	(58, 1, '$2y$10$3LmrYK4OJPFRQjkwL4RFFeTHEqcYquxTk0A7FoPUESv4YiJImhKfq', '1672757162230', '{"REMOTE_ADDR":"103.89.24.36","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2023-01-03 14:53:31', '2023-01-03 14:53:31', '2023-01-03 15:53:31'),
	(59, 1, '$2y$10$8Z3e2vVXmX6USc6VYjf7FegljghSFVB6qG92mMV5SC5v4O0dNVtMO', NULL, '{"REMOTE_ADDR":"103.89.24.36","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2023-01-03 14:51:42', '2023-01-03 14:51:42', '2023-01-03 15:51:42'),
	(60, 1, '$2y$10$hYvDmiYa1lvZHjZv9EVF4OrpTstc88B9kq98lDnhTDS7b1IoIX61m', '1672769828389', '{"REMOTE_ADDR":"103.89.24.36","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2023-01-03 18:17:22', '2023-01-03 18:17:22', '2023-01-03 19:17:22'),
	(61, 1, '$2y$10$U10z/GbJnCR8DIqWxNPF..eXypbkPJCIGJUqbNLeEHF48uIhREwta', NULL, '{"REMOTE_ADDR":"192.168.0.110","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2023-01-03 18:30:39', '2023-01-03 18:30:39', '2023-01-03 19:30:39'),
	(62, 1, '$2y$10$hfOomP8PQi9Rh549lR0WKO0osUyFzAYflsCHcaOjY7XLgqY9Sdk2W', '1672856401580', '{"REMOTE_ADDR":"192.168.0.110","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2023-01-04 18:20:07', '2023-01-04 18:20:07', '2023-01-04 19:20:07'),
	(63, 1, '$2y$10$PcvYu92U2TiRSjzH5WqCY.ZiT0XbQ/CPhoALXpChKNGTWQKC3mVWO', NULL, '{"REMOTE_ADDR":"192.168.0.110","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2023-01-05 12:54:38', '2023-01-05 12:54:38', '2023-01-05 13:54:38'),
	(64, 1, '$2y$10$DB6E087A.efPwnZd0EDHmOdMUt/fdd//4alqHFU..g.CAdSRjKO.S', '1673059456355', '{"REMOTE_ADDR":"192.168.0.110","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2023-01-07 02:51:09', '2023-01-07 02:51:09', '2023-01-07 03:51:09'),
	(65, 1, '$2y$10$K5aaGrO9Rs/71rqiT46CHOt/4CVAXxjEZmJDeqyjhqQA4YQsOMek.', '1673078028847', '{"REMOTE_ADDR":"192.168.0.110","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2023-01-07 07:54:24', '2023-01-07 07:54:24', '2023-01-07 08:54:24'),
	(66, 1, '$2y$10$xuKjLM604pUozx7NJ380UePq/mSTs/uhsLlI1/8RFukrSxwLx2IdG', '1673098009682', '{"REMOTE_ADDR":"192.168.0.110","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2023-01-07 13:27:56', '2023-01-07 13:27:56', '2023-01-07 14:27:56'),
	(67, 1, '$2y$10$6Qzyr3GQImCJrj8CPfJIyu2REvQP0gc2FJSGF.g7xnzZR0rNns6gK', NULL, '{"REMOTE_ADDR":"192.168.0.110","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2023-01-07 16:07:41', '2023-01-07 16:07:41', '2023-01-07 17:07:41'),
	(68, 1, '$2y$10$Tl6jofCu.PgQjAxHxSjyiu46f0OLx74/N8YRuWBnbd8mtc47vVflm', NULL, '{"REMOTE_ADDR":"192.168.0.110","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2023-01-07 16:52:19', '2023-01-07 16:52:19', '2023-01-07 17:52:19'),
	(69, 1, '$2y$10$ahAO7FDPgzKpdra07A0EVOxVC4o8yxf8AomFvlU2m5IjdCn80gzZa', NULL, '{"REMOTE_ADDR":"192.168.0.110","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2023-01-07 17:08:53', '2023-01-07 17:08:53', '2023-01-07 18:08:53'),
	(70, 1, '$2y$10$0qqsQEX7TAjCrGtMRNwrQubpllZjK6JliWSBq0CwO77j86541d6k.', '1673144371619', '{"REMOTE_ADDR":"192.168.0.110","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2023-01-08 02:19:50', '2023-01-08 02:19:50', '2023-01-08 03:19:50'),
	(71, 1, '$2y$10$DLNQIpYHPI/0n9V0N.x1Gue7YAc.7CgGK8Nc0cEx6/5BlrGY./62W', NULL, '{"REMOTE_ADDR":"192.168.0.110","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko\\/20100101 Firefox\\/108.0"}', '2023-01-09 19:42:49', '2023-01-09 19:42:49', '2023-01-09 20:42:49'),
	(72, 1, '$2y$10$tpINgUcPMqqlSScc3jc0NeS1N1oKLCGq1Tiih9sskhbh5VX8Y1LBS', '1683245634456', '{"REMOTE_ADDR":"192.168.179.1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko\\/20100101 Firefox\\/112.0"}', '2023-05-05 02:27:44', '2023-05-05 02:27:44', '2023-05-05 03:27:44'),
	(73, 1, '$2y$10$/2DzkLzldlmvgHS4VpmmLuC2K3vrugYgUC3uG/59Y58fZikVNDTdq', NULL, '{"REMOTE_ADDR":"192.168.0.100","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko\\/20100101 Firefox\\/127.0"}', '2024-07-03 06:27:56', '2024-07-03 06:27:56', '2024-07-03 07:27:56');

-- Dumping structure for table rnd_2023_back.user_groups
DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE IF NOT EXISTS `user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 99,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `action_0` varchar(255) NOT NULL DEFAULT ',' COMMENT 'VIEW',
  `action_1` varchar(255) NOT NULL DEFAULT ',' COMMENT 'ADD',
  `action_2` varchar(255) NOT NULL DEFAULT ',' COMMENT 'EDIT',
  `action_3` varchar(255) NOT NULL DEFAULT ',' COMMENT 'DELETE',
  `action_4` varchar(255) NOT NULL DEFAULT ',' COMMENT 'PRINT',
  `action_5` varchar(255) NOT NULL DEFAULT ',' COMMENT 'CSV',
  `action_6` varchar(255) NOT NULL DEFAULT ',' COMMENT 'SEARCH',
  `action_7` varchar(255) NOT NULL DEFAULT ',' COMMENT 'FORWARD',
  `action_8` varchar(255) NOT NULL DEFAULT ',' COMMENT 'COLUMN_CONTROL',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.user_groups: ~3 rows (approximately)
INSERT INTO `user_groups` (`id`, `name`, `ordering`, `status`, `action_0`, `action_1`, `action_2`, `action_3`, `action_4`, `action_5`, `action_6`, `action_7`, `action_8`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Super Admin', 1, 'Active', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,28,29,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,29,', 1, 1, '2022-11-05 05:57:26', '2023-05-05 01:40:49'),
	(2, 'Admin', 2, 'Active', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,', 1, NULL, '2022-11-05 05:57:26', NULL),
	(3, 'Registered', 3, 'Active', ',12,', ',12,', ',12,', ',12,', ',', ',', ',', ',', ',', 1, NULL, '2022-11-05 05:57:26', NULL);

-- Dumping structure for table rnd_2023_back.user_otps
DROP TABLE IF EXISTS `user_otps`;
CREATE TABLE IF NOT EXISTS `user_otps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `reason` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.user_otps: ~0 rows (approximately)

-- Dumping structure for table rnd_2023_back.user_types
DROP TABLE IF EXISTS `user_types`;
CREATE TABLE IF NOT EXISTS `user_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `prefix` varchar(20) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 99,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.user_types: ~0 rows (approximately)
INSERT INTO `user_types` (`id`, `name`, `prefix`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Employee', '001', 99, 'Active', 1, NULL, '2022-11-05 05:57:26', NULL);

-- Dumping structure for table rnd_2023_back.varieties
DROP TABLE IF EXISTS `varieties`;
CREATE TABLE IF NOT EXISTS `varieties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `crop_type_id` smallint(6) NOT NULL,
  `crop_feature_ids` varchar(255) NOT NULL DEFAULT ',',
  `whose` varchar(10) NOT NULL DEFAULT 'ARM' COMMENT 'ARM,Principal,Competitor',
  `principal_id` int(11) DEFAULT NULL,
  `competitor_id` int(11) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `retrial` enum('Yes','No') NOT NULL DEFAULT 'Yes' COMMENT 'Yes,No',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table rnd_2023_back.varieties: ~14 rows (approximately)
INSERT INTO `varieties` (`id`, `name`, `crop_type_id`, `crop_feature_ids`, `whose`, `principal_id`, `competitor_id`, `ordering`, `status`, `retrial`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'shaiful', 4, ',2,3,8,9,', 'Competitor', 1, 1, 9999, 'Active', 'Yes', 0, 1, NULL, '2022-11-19 12:58:20'),
	(2, 'Saasdf', 24, ',', 'Principal', 2, NULL, 99, 'Active', 'Yes', 1, NULL, '2022-11-08 16:02:42', NULL),
	(3, 'asdfsadf', 1, ',', 'ARM', NULL, NULL, 99, 'Active', 'Yes', 1, NULL, '2022-11-17 15:29:16', NULL),
	(4, 'asdf', 1, ',', 'ARM', NULL, NULL, 99, 'Active', 'Yes', 1, NULL, '2022-11-17 15:29:22', NULL),
	(5, 'Test', 3, ',1,7,11,15,19,', 'ARM', NULL, NULL, 99, 'Active', 'No', 1, NULL, '2022-11-19 18:20:24', NULL),
	(6, 'asdf', 7, ',22,23,', 'ARM', NULL, NULL, 99, 'Active', 'Yes', 1, NULL, '2022-11-19 18:21:58', NULL),
	(7, 'asdf', 75, ',22,', 'ARM', NULL, NULL, 99, 'Active', 'Yes', 1, NULL, '2022-11-19 18:22:04', NULL),
	(8, 'sadf', 12, ',', 'ARM', NULL, NULL, 99, 'Active', 'Yes', 1, NULL, '2022-11-19 18:24:40', NULL),
	(9, 'abid', 12, ',', 'Principal', 1, NULL, 99, 'Active', 'Yes', 1, NULL, '2022-11-28 12:03:32', NULL),
	(10, 'Marble', 1, ',1,5,8,', 'Principal', 2, NULL, 99, 'Active', 'Yes', 2, 2, '2023-01-03 03:04:14', '2023-01-03 03:19:32'),
	(11, 'W. Mountain', 77, ',9,17,18,21,', 'Principal', 2, NULL, 99, 'Active', 'Yes', 2, NULL, '2023-01-03 03:15:20', NULL),
	(12, 'Tahmina', 24, ',17,20,21,22,', 'ARM', NULL, NULL, 1, 'Active', 'Yes', 2, 1, '2023-01-03 03:49:22', '2023-01-07 12:16:26'),
	(13, 'Anowar', 25, ',', 'ARM', NULL, NULL, 33, 'Active', 'Yes', 2, NULL, '2023-01-03 03:49:46', NULL),
	(14, 'Biswjid', 26, ',', 'ARM', NULL, NULL, 99, 'Active', 'Yes', 2, NULL, '2023-01-03 03:50:03', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
