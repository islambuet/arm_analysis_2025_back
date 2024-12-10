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

-- Dumping structure for table arm_analysis_2025_back.competitors
DROP TABLE IF EXISTS `competitors`;
CREATE TABLE IF NOT EXISTS `competitors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table arm_analysis_2025_back.competitors: ~2 rows (approximately)
INSERT INTO `competitors` (`id`, `name`, `code`, `contact_person`, `email`, `mobile_no`, `address`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'c1', 'a', NULL, NULL, NULL, NULL, 99, 'Active', 1, NULL, '2022-11-06 13:11:51', NULL),
	(2, 'c2', 'a', NULL, NULL, NULL, NULL, 99, 'Active', 1, NULL, '2022-11-06 13:11:54', NULL),
	(3, 'sadf', 'asdf', NULL, NULL, NULL, NULL, 99, 'Active', 1, NULL, '2024-12-02 12:18:00', NULL);

-- Dumping structure for table arm_analysis_2025_back.crops
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table arm_analysis_2025_back.crops: ~32 rows (approximately)
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
	(31, 'Country Bean', 'CBN', 'No', 0, 28, 'Active', 2, NULL, '2022-10-25 04:11:16', NULL),
	(32, 'Ac1', 'ac', 'No', 0, 99, 'Active', 1, NULL, '2024-10-25 17:07:19', NULL),
	(33, 'asdf', 'asdf', 'No', 0, 99, 'Active', 1, 1, '2024-12-02 12:18:20', '2024-12-02 12:18:29');

-- Dumping structure for table arm_analysis_2025_back.crop_types
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table arm_analysis_2025_back.crop_types: ~81 rows (approximately)
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
	(79, 'Shaiful', 1, 'sh', 99, 'Active', 1, NULL, '2022-11-08 15:19:00', NULL),
	(80, 'early', 32, 'ea', 99, 'Active', 1, NULL, '2024-10-25 17:07:47', NULL),
	(81, 'late', 32, 'la', 99, 'Active', 1, NULL, '2024-10-25 17:08:01', NULL),
	(82, 'asdf', 2, 'adsf', 99, 'Active', 1, 1, '2024-12-02 12:18:38', '2024-12-02 12:18:44');

-- Dumping structure for table arm_analysis_2025_back.location_areas
DROP TABLE IF EXISTS `location_areas`;
CREATE TABLE IF NOT EXISTS `location_areas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `part_id` smallint(6) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table arm_analysis_2025_back.location_areas: ~7 rows (approximately)
INSERT INTO `location_areas` (`id`, `name`, `part_id`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Rangpur', 1, 1, 'Active', 1, NULL, '2024-11-03 13:08:04', NULL),
	(2, 'Bagura', 1, 2, 'Active', 1, NULL, '2024-11-03 13:08:18', NULL),
	(3, 'Khulna', 2, 1, 'Active', 1, NULL, '2024-11-03 13:08:33', NULL),
	(4, 'Barishal', 2, 2, 'Active', 1, NULL, '2024-11-03 13:08:44', NULL),
	(5, 'Dhaka', 3, 1, 'Active', 1, NULL, '2024-11-03 13:09:02', NULL),
	(6, 'Cumilla', 3, 2, 'Active', 1, NULL, '2024-11-03 13:09:19', NULL),
	(7, 'sadf', 4, 99, 'Active', 1, NULL, '2024-12-02 12:19:21', NULL),
	(8, 'sdfg', 3, 99, 'Active', 1, NULL, '2024-12-10 16:18:07', NULL);

-- Dumping structure for table arm_analysis_2025_back.location_districts
DROP TABLE IF EXISTS `location_districts`;
CREATE TABLE IF NOT EXISTS `location_districts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table arm_analysis_2025_back.location_districts: ~2 rows (approximately)
INSERT INTO `location_districts` (`id`, `name`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Dhaka', 99, 'Active', 1, NULL, '2024-12-10 15:53:55', NULL),
	(2, 'Rajsahi2', 99, 'Active', 1, 1, '2024-12-10 15:54:00', '2024-12-10 15:54:11');

-- Dumping structure for table arm_analysis_2025_back.location_parts
DROP TABLE IF EXISTS `location_parts`;
CREATE TABLE IF NOT EXISTS `location_parts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table arm_analysis_2025_back.location_parts: ~3 rows (approximately)
INSERT INTO `location_parts` (`id`, `name`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'North', 1, 'Active', 1, NULL, '2024-11-03 13:07:19', NULL),
	(2, 'South', 2, 'Active', 1, NULL, '2024-11-03 13:07:29', NULL),
	(3, 'East', 3, 'Active', 1, NULL, '2024-11-03 13:07:35', NULL),
	(4, 'asdf', 99, 'Active', 1, NULL, '2024-12-02 12:19:13', NULL);

-- Dumping structure for table arm_analysis_2025_back.location_territories
DROP TABLE IF EXISTS `location_territories`;
CREATE TABLE IF NOT EXISTS `location_territories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `area_id` smallint(6) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table arm_analysis_2025_back.location_territories: ~13 rows (approximately)
INSERT INTO `location_territories` (`id`, `name`, `area_id`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Rangpur1', 1, 1, 'Active', 1, NULL, '2024-11-04 10:15:10', NULL),
	(2, 'Rangpur2', 1, 1, 'Active', 1, NULL, '2024-11-04 10:15:10', NULL),
	(3, 'Rangpur3', 1, 1, 'Active', 1, NULL, '2024-11-04 10:15:10', NULL),
	(4, 'Bagura1', 2, 1, 'Active', 1, NULL, '2024-11-04 10:15:10', NULL),
	(5, 'Bagura2', 2, 1, 'Active', 1, NULL, '2024-11-04 10:15:10', NULL),
	(6, 'Khulna', 3, 1, 'Active', 1, NULL, '2024-11-04 10:15:10', NULL),
	(7, 'Khulna2', 3, 1, 'Active', 1, NULL, '2024-11-04 10:15:10', NULL),
	(8, 'Barisal', 4, 1, 'Active', 1, NULL, '2024-11-04 10:15:10', NULL),
	(9, 'Barisal2', 4, 1, 'Active', 1, NULL, '2024-11-04 10:15:10', NULL),
	(10, 'Dhaka', 5, 1, 'Active', 1, NULL, '2024-11-04 10:15:10', NULL),
	(11, 'Dhaka2', 5, 1, 'Active', 1, NULL, '2024-11-04 10:15:10', NULL),
	(12, 'Cumilla1', 6, 1, 'Active', 1, NULL, '2024-11-04 10:15:10', NULL),
	(13, 'Cumilla2', 6, 1, 'Active', 1, NULL, '2024-11-04 10:15:10', NULL),
	(14, 'sadf', 1, 99, 'Active', 1, NULL, '2024-12-02 12:19:34', NULL),
	(15, 'zxcvz', 1, 99, 'Active', 1, NULL, '2024-12-10 16:38:02', NULL);

-- Dumping structure for table arm_analysis_2025_back.location_unions
DROP TABLE IF EXISTS `location_unions`;
CREATE TABLE IF NOT EXISTS `location_unions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `upazila_id` smallint(6) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table arm_analysis_2025_back.location_unions: ~1 rows (approximately)
INSERT INTO `location_unions` (`id`, `name`, `upazila_id`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'asdf', 1, 99, 'Active', 1, 1, '2024-12-10 16:34:12', '2024-12-10 16:35:49');

-- Dumping structure for table arm_analysis_2025_back.location_upazilas
DROP TABLE IF EXISTS `location_upazilas`;
CREATE TABLE IF NOT EXISTS `location_upazilas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `district_id` smallint(6) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 9999,
  `status` enum('Active','In-Active','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,In-Active,Deleted',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table arm_analysis_2025_back.location_upazilas: ~2 rows (approximately)
INSERT INTO `location_upazilas` (`id`, `name`, `district_id`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'd1', 1, 99, 'Active', 1, NULL, '2024-12-10 16:16:41', NULL),
	(2, 'd2', 1, 99, 'Active', 1, 1, '2024-12-10 16:16:45', '2024-12-10 16:16:53');

-- Dumping structure for table arm_analysis_2025_back.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table arm_analysis_2025_back.migrations: ~25 rows (approximately)
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

-- Dumping structure for table arm_analysis_2025_back.principals
DROP TABLE IF EXISTS `principals`;
CREATE TABLE IF NOT EXISTS `principals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table arm_analysis_2025_back.principals: ~2 rows (approximately)
INSERT INTO `principals` (`id`, `name`, `code`, `contact_person`, `email`, `mobile_no`, `address`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'p1', 'p1', NULL, NULL, NULL, NULL, 99, 'Active', 1, NULL, '2022-11-06 13:11:39', NULL),
	(2, 'Sakata India', 'SID', NULL, NULL, NULL, NULL, 120, 'Active', 1, 2, '2022-11-06 13:11:43', '2023-01-03 02:54:33'),
	(3, 'asd', 'asdasdasdasd', NULL, NULL, NULL, NULL, 99, 'Active', 1, 1, '2024-12-02 12:15:57', '2024-12-02 12:17:10');

-- Dumping structure for table arm_analysis_2025_back.system_configurations
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

-- Dumping data for table arm_analysis_2025_back.system_configurations: ~7 rows (approximately)
INSERT INTO `system_configurations` (`id`, `purpose`, `config_value`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'SITE_OFF_LINE', '0', 'Making the application go offline.1 for yes', 'Active', 1, NULL, '2022-10-18 17:51:03', NULL),
	(2, 'OTP_EXPIRE_DURATION', '300', 'OTP expires/Resend OTP in seconds.', 'Active', 1, 2, '2022-10-18 17:51:03', '2022-10-19 06:26:10'),
	(3, 'LOGIN_MOBILE_VERIFICATION', '0', 'Mobile verification for all.1=yes 0 no', 'Active', 1, 1, '2022-10-18 17:51:03', '2022-11-04 23:47:43'),
	(4, 'LOGIN_SESSION_EXPIRE_HOURS', '100', 'User Session Expires in hours', 'Active', 1, 2, '2022-10-18 17:51:03', '2022-10-19 06:28:08'),
	(5, 'MOBILE_SMS_API_TOKEN', 'C200230461b99ed0cb1594.89498470', 'SMS system api key', 'Active', 1, NULL, '2022-10-18 17:51:03', NULL),
	(6, 'UPLOADED_IMAGE_BASEURL', 'http://localhost/rnd_2023_upload/public/', 'base url for uploaded Image', 'Active', 1, NULL, '2022-10-18 17:51:03', NULL),
	(7, 'CURRENT_ANALYSIS_ID', '1', 'Running Analysis', 'Active', 1, 1, '2022-11-27 15:27:48', '2022-11-28 12:01:00');

-- Dumping structure for table arm_analysis_2025_back.system_histories
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table arm_analysis_2025_back.system_histories: ~48 rows (approximately)
INSERT INTO `system_histories` (`id`, `table_name`, `table_id`, `controller`, `method`, `data_old`, `data_new`, `action`, `created_at`, `created_by`) VALUES
	(1, 'arm_analysis_2025_back.system_tasks', 7, 'ModuleTasksController', 'saveItem', '[]', '{"name":"Setup","type":"MODULE","url":null,"parent":0,"ordering":"30","status":"Active"}', 'ADD', '2024-12-01 12:22:23', 1),
	(2, 'arm_analysis_2025_back.system_tasks', 8, 'ModuleTasksController', 'saveItem', '[]', '{"name":"Admin Setup","type":"MODULE","url":null,"parent":"7","ordering":"10","status":"Active"}', 'ADD', '2024-12-01 12:22:52', 1),
	(3, 'arm_analysis_2025_back.system_tasks', 9, 'ModuleTasksController', 'saveItem', '[]', '{"name":"Designations","type":"TASK","url":"setup\\/designations","parent":"8","ordering":"1","status":"Active"}', 'ADD', '2024-12-01 12:23:23', 1),
	(4, 'arm_analysis_2025_back.system_tasks', 9, 'ModuleTasksController', 'saveItem', '{"name":"Designations","url":"setup\\/designations"}', '{"name":"Principals","url":"setup\\/principals"}', 'EDIT', '2024-12-01 12:25:03', 1),
	(5, 'arm_analysis_2025_back.system_tasks', 10, 'ModuleTasksController', 'saveItem', '[]', '{"name":"Competitors","type":"TASK","url":"setup\\/competitors","parent":"8","ordering":"3","status":"Active"}', 'ADD', '2024-12-01 12:25:20', 1),
	(6, 'arm_analysis_2025_back.system_tasks', 11, 'ModuleTasksController', 'saveItem', '[]', '{"name":"Crop Classification","type":"MODULE","url":null,"parent":"7","ordering":"20","status":"Active"}', 'ADD', '2024-12-01 12:26:23', 1),
	(7, 'arm_analysis_2025_back.system_tasks', 12, 'ModuleTasksController', 'saveItem', '[]', '{"name":"Crop","type":"TASK","url":"setup\\/crops","parent":"11","ordering":"1","status":"Active"}', 'ADD', '2024-12-01 12:26:50', 1),
	(8, 'arm_analysis_2025_back.system_tasks', 13, 'ModuleTasksController', 'saveItem', '[]', '{"name":"Crop Types","type":"TASK","url":"setup\\/crop-types","parent":"11","ordering":"3","status":"Active"}', 'ADD', '2024-12-01 12:27:36', 1),
	(9, 'arm_analysis_2025_back.system_tasks', 14, 'ModuleTasksController', 'saveItem', '[]', '{"name":"Variety","type":"TASK","url":"setup\\/varieties","parent":"11","ordering":"3","status":"Active"}', 'ADD', '2024-12-01 12:28:00', 1),
	(10, 'arm_analysis_2025_back.system_tasks', 14, 'ModuleTasksController', 'saveItem', '{"ordering":3}', '{"ordering":"5"}', 'EDIT', '2024-12-01 12:28:10', 1),
	(11, 'arm_analysis_2025_back.system_tasks', 15, 'ModuleTasksController', 'saveItem', '[]', '{"name":"Location Setup","type":"MODULE","url":null,"parent":"7","ordering":"30","status":"Active"}', 'ADD', '2024-12-01 12:28:56', 1),
	(12, 'arm_analysis_2025_back.system_tasks', 16, 'ModuleTasksController', 'saveItem', '[]', '{"name":"Parts","type":"TASK","url":"setup\\/location_parts","parent":"15","ordering":"1","status":"Active"}', 'ADD', '2024-12-01 12:30:40', 1),
	(13, 'arm_analysis_2025_back.system_tasks', 17, 'ModuleTasksController', 'saveItem', '[]', '{"name":"Area","type":"TASK","url":"setup\\/location_areas","parent":"15","ordering":"2","status":"Active"}', 'ADD', '2024-12-01 12:31:03', 1),
	(14, 'arm_analysis_2025_back.system_tasks', 18, 'ModuleTasksController', 'saveItem', '[]', '{"name":"Territory","type":"TASK","url":"setup\\/location_territories","parent":"15","ordering":"3","status":"Active"}', 'ADD', '2024-12-01 12:31:21', 1),
	(15, 'arm_analysis_2025_back.system_user_hidden_columns', 1, 'ColumnsControlController', 'saveItem', '[]', '{"user_id":1,"url":"system\\/configurations","method":"list","hidden_columns":"[\\"purpose\\",\\"created_at\\"]","created_at":"2024-12-02T03:10:07.123451Z","id":1}', 'ADD', '2024-12-02 03:10:07', 1),
	(16, 'arm_analysis_2025_back.system_user_hidden_columns', 1, 'ColumnsControlController', 'saveItem', '{"id":1,"url":"system\\/configurations","method":"list","hidden_columns":"[\\"purpose\\",\\"created_at\\"]"}', '{"user_id":1,"url":"system\\/configurations","method":"list","hidden_columns":"[]","updated_at":"2024-12-02T03:10:18.906008Z"}', 'EDIT', '2024-12-02 03:10:18', 1),
	(17, 'arm_analysis_2025_back.users', 3, 'UsersController', 'saveItem', '[]', '{"employee_id":"0074","username":"0074","password":"$2y$10$H\\/aB6\\/TrwNqQCOtYe3J2PeEB\\/ffgVka\\/sFGlCqt6rDai.8n8z.OlW","user_group_id":"2","email":"man.monitoring@malikseedsbd.com","name":"Mahi Uddin","mobile_no":"01713090950","created_by":1,"created_at":"2024-12-02T03:20:27.246156Z"}', 'ADD', '2024-12-02 03:20:27', 1),
	(18, 'arm_analysis_2025_back.users', 3, 'UsersController', 'saveItem', '{"part_id":0,"area_id":0}', '{"part_id":"1","area_id":"1","updated_by":1,"updated_at":"2024-12-02T03:23:13.415369Z"}', 'EDIT', '2024-12-02 03:23:13', 1),
	(19, 'arm_analysis_2025_back.system_user_hidden_columns', 1, 'UserController', 'profilePicture', '{"infos":{"profile_picture":"files\\/profile-pictures\\/1\\/bg_13.png"}}', '{"infos":{"profile_picture":"files\\/profile-pictures\\/1\\/bikas.PNG"}}', 'EDIT', '2024-12-02 03:25:39', 1),
	(20, 'arm_analysis_2025_back.principals', 3, 'PrincipalsController', 'saveItem', '[]', '{"name":"asd","code":"asd","contact_person":null,"email":null,"mobile_no":null,"address":null,"ordering":"99","status":"Active"}', 'ADD', '2024-12-02 12:15:57', 1),
	(21, 'arm_analysis_2025_back.principals', 3, 'PrincipalsController', 'saveItem', '{"code":"asd"}', '{"code":"as"}', 'EDIT', '2024-12-02 12:16:09', 1),
	(22, 'arm_analysis_2025_back.principals', 3, 'PrincipalsController', 'saveItem', '{"code":"as"}', '{"code":"asdasdasdasd"}', 'EDIT', '2024-12-02 12:17:10', 1),
	(23, 'arm_analysis_2025_back.competitors', 3, 'CompetitorsController', 'saveItem', '[]', '{"name":"sadf","code":"asdf","contact_person":null,"email":null,"mobile_no":null,"address":null,"ordering":"99","status":"Active"}', 'ADD', '2024-12-02 12:18:00', 1),
	(24, 'arm_analysis_2025_back.crops', 33, 'CropsController', 'saveItem', '[]', '{"name":"asdf","code":"asd","replica":"No","ordering":"99","initial_plants":"0","status":"Active"}', 'ADD', '2024-12-02 12:18:20', 1),
	(25, 'arm_analysis_2025_back.crops', 33, 'CropsController', 'saveItem', '{"code":"asd"}', '{"code":"asdf"}', 'EDIT', '2024-12-02 12:18:29', 1),
	(26, 'arm_analysis_2025_back.crop_types', 82, 'CropTypesController', 'saveItem', '[]', '{"name":"asdf","code":"adsf","crop_id":"1","ordering":"99","status":"Active"}', 'ADD', '2024-12-02 12:18:38', 1),
	(27, 'arm_analysis_2025_back.crop_types', 82, 'CropTypesController', 'saveItem', '{"crop_id":1}', '{"crop_id":"2"}', 'EDIT', '2024-12-02 12:18:44', 1),
	(28, 'arm_analysis_2025_back.location_parts', 4, 'LocationPartsController', 'saveItem', '[]', '{"name":"asdf","ordering":"99","status":"Active"}', 'ADD', '2024-12-02 12:19:13', 1),
	(29, 'arm_analysis_2025_back.location_areas', 7, 'LocationAreasController', 'saveItem', '[]', '{"name":"sadf","part_id":"4","ordering":"99","status":"Active"}', 'ADD', '2024-12-02 12:19:21', 1),
	(30, 'arm_analysis_2025_back.location_territories', 14, 'LocationTerritoriesController', 'saveItem', '[]', '{"name":"sadf","area_id":"1","ordering":"99","status":"Active"}', 'ADD', '2024-12-02 12:19:34', 1),
	(31, 'arm_analysis_2025_back.user_groups', 2, 'UserGroupsController', 'saveRole', '{"action_0":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_1":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_2":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_3":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_4":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_5":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_6":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_7":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,","action_8":",2,3,4,5,6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,"}', '{"action_0":",6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,","action_1":",6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,","action_2":",6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,","action_3":",6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,","action_4":",6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,","action_5":",6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,","action_6":",6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,","action_7":",6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,","action_8":",6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,"}', 'EDIT', '2024-12-02 12:20:29', 1),
	(32, 'arm_analysis_2025_back.varieties', 1, 'VarietiesController', 'saveItem', '[]', '{"name":"adf","crop_type_id":"8","whose":"ARM","principal_id":null,"competitor_id":null,"ordering":"99","status":"Active","retrial":"Yes"}', 'ADD', '2024-12-02 12:43:46', 1),
	(33, 'arm_analysis_2025_back.varieties', 2, 'VarietiesController', 'saveItem', '[]', '{"name":"asd","crop_type_id":"12","whose":"Principal","principal_id":"1","competitor_id":null,"ordering":"99","status":"Active","retrial":"Yes"}', 'ADD', '2024-12-02 12:43:57', 1),
	(34, 'arm_analysis_2025_back.varieties', 2, 'VarietiesController', 'saveItem', '{"status":"Active"}', '{"status":"In-Active"}', 'EDIT', '2024-12-02 12:44:06', 1),
	(35, 'arm_analysis_2025_back.system_tasks', 19, 'ModuleTasksController', 'saveItem', '[]', '{"name":"Districts","type":"TASK","url":"setup\\/districts","parent":"15","ordering":"4","status":"Active"}', 'ADD', '2024-12-10 14:45:23', 1),
	(36, 'arm_analysis_2025_back.system_tasks', 20, 'ModuleTasksController', 'saveItem', '[]', '{"name":"Upazila","type":"TASK","url":"setup\\/location_upazila","parent":"15","ordering":"5","status":"Active"}', 'ADD', '2024-12-10 14:46:29', 1),
	(37, 'arm_analysis_2025_back.system_tasks', 19, 'ModuleTasksController', 'saveItem', '{"url":"setup\\/districts"}', '{"url":"setup\\/location_districts"}', 'EDIT', '2024-12-10 14:46:51', 1),
	(38, 'arm_analysis_2025_back.system_tasks', 20, 'ModuleTasksController', 'saveItem', '{"name":"Upazila","url":"setup\\/location_upazila"}', '{"name":"Upazilas","url":"setup\\/location_upazilas"}', 'EDIT', '2024-12-10 14:47:23', 1),
	(39, 'arm_analysis_2025_back.system_tasks', 21, 'ModuleTasksController', 'saveItem', '[]', '{"name":"Unions","type":"TASK","url":"setup\\/location_unions","parent":"15","ordering":"6","status":"Active"}', 'ADD', '2024-12-10 14:48:23', 1),
	(40, 'arm_analysis_2025_back.location_districts', 1, 'LocationDistrictsController', 'saveItem', '[]', '{"name":"Dhaka","ordering":"99","status":"Active"}', 'ADD', '2024-12-10 15:53:55', 1),
	(41, 'arm_analysis_2025_back.location_districts', 2, 'LocationDistrictsController', 'saveItem', '[]', '{"name":"Rajsahi","ordering":"99","status":"Active"}', 'ADD', '2024-12-10 15:54:00', 1),
	(42, 'arm_analysis_2025_back.location_districts', 2, 'LocationDistrictsController', 'saveItem', '{"name":"Rajsahi"}', '{"name":"Rajsahi2"}', 'EDIT', '2024-12-10 15:54:11', 1),
	(43, 'arm_analysis_2025_back.location_upazilas', 1, 'LocationUpazilasController', 'saveItem', '[]', '{"name":"d1","district_id":"1","ordering":"99","status":"Active"}', 'ADD', '2024-12-10 16:16:41', 1),
	(44, 'arm_analysis_2025_back.location_upazilas', 2, 'LocationUpazilasController', 'saveItem', '[]', '{"name":"r1","district_id":"2","ordering":"99","status":"Active"}', 'ADD', '2024-12-10 16:16:45', 1),
	(45, 'arm_analysis_2025_back.location_upazilas', 2, 'LocationUpazilasController', 'saveItem', '{"name":"r1","district_id":2}', '{"name":"d2","district_id":"1"}', 'EDIT', '2024-12-10 16:16:53', 1),
	(46, 'arm_analysis_2025_back.location_areas', 8, 'LocationAreasController', 'saveItem', '[]', '{"name":"sdfg","part_id":"3","ordering":"99","status":"Active"}', 'ADD', '2024-12-10 16:18:07', 1),
	(47, 'arm_analysis_2025_back.location_unions', 1, 'LocationUnionsController', 'saveItem', '[]', '{"name":"asdf","upazila_id":"2","ordering":"99","status":"Active"}', 'ADD', '2024-12-10 16:34:12', 1),
	(48, 'arm_analysis_2025_back.location_unions', 1, 'LocationUnionsController', 'saveItem', '{"upazila_id":2}', '{"upazila_id":"1"}', 'EDIT', '2024-12-10 16:35:49', 1),
	(49, 'arm_analysis_2025_back.location_territories', 15, 'LocationTerritoriesController', 'saveItem', '[]', '{"name":"zxcvz","area_id":"1","ordering":"99","status":"Active"}', 'ADD', '2024-12-10 16:38:02', 1);

-- Dumping structure for table arm_analysis_2025_back.system_history_mobile_sms
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

-- Dumping data for table arm_analysis_2025_back.system_history_mobile_sms: ~0 rows (approximately)

-- Dumping structure for table arm_analysis_2025_back.system_tasks
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table arm_analysis_2025_back.system_tasks: ~21 rows (approximately)
INSERT INTO `system_tasks` (`id`, `name`, `type`, `parent`, `url`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'System Settings', 'MODULE', 0, '', 10, 'Active', 1, NULL, '2022-10-18 20:38:06', NULL),
	(2, 'Modules & Tasks', 'TASK', 1, 'system/module-tasks', 1, 'Active', 1, NULL, '2022-10-18 20:38:06', NULL),
	(3, 'System Configuration', 'TASK', 1, 'system/configurations', 2, 'Active', 1, NULL, '2022-10-18 20:38:06', NULL),
	(4, 'User Groups', 'TASK', 1, 'system/user-groups', 3, 'Active', 1, NULL, '2022-10-18 20:38:06', NULL),
	(5, 'User Types', 'TASK', 1, 'system/user-types', 4, 'Active', 1, NULL, '2022-10-18 20:38:06', NULL),
	(6, 'Users', 'TASK', 0, 'users', 20, 'Active', 1, 1, '2022-10-18 20:38:06', '2022-11-12 13:42:07'),
	(7, 'Setup', 'MODULE', 0, NULL, 30, 'Active', 1, NULL, '2024-12-01 12:22:23', NULL),
	(8, 'Admin Setup', 'MODULE', 7, NULL, 10, 'Active', 1, NULL, '2024-12-01 12:22:52', NULL),
	(9, 'Principals', 'TASK', 8, 'setup/principals', 1, 'Active', 1, 1, '2024-12-01 12:23:23', '2024-12-01 12:25:03'),
	(10, 'Competitors', 'TASK', 8, 'setup/competitors', 3, 'Active', 1, NULL, '2024-12-01 12:25:20', NULL),
	(11, 'Crop Classification', 'MODULE', 7, NULL, 20, 'Active', 1, NULL, '2024-12-01 12:26:23', NULL),
	(12, 'Crop', 'TASK', 11, 'setup/crops', 1, 'Active', 1, NULL, '2024-12-01 12:26:50', NULL),
	(13, 'Crop Types', 'TASK', 11, 'setup/crop-types', 3, 'Active', 1, NULL, '2024-12-01 12:27:36', NULL),
	(14, 'Variety', 'TASK', 11, 'setup/varieties', 5, 'Active', 1, 1, '2024-12-01 12:28:00', '2024-12-01 12:28:10'),
	(15, 'Location Setup', 'MODULE', 7, NULL, 30, 'Active', 1, NULL, '2024-12-01 12:28:56', NULL),
	(16, 'Parts', 'TASK', 15, 'setup/location_parts', 1, 'Active', 1, NULL, '2024-12-01 12:30:40', NULL),
	(17, 'Area', 'TASK', 15, 'setup/location_areas', 2, 'Active', 1, NULL, '2024-12-01 12:31:03', NULL),
	(18, 'Territory', 'TASK', 15, 'setup/location_territories', 3, 'Active', 1, NULL, '2024-12-01 12:31:21', NULL),
	(19, 'Districts', 'TASK', 15, 'setup/location_districts', 4, 'Active', 1, 1, '2024-12-10 14:45:23', '2024-12-10 14:46:51'),
	(20, 'Upazilas', 'TASK', 15, 'setup/location_upazilas', 5, 'Active', 1, 1, '2024-12-10 14:46:29', '2024-12-10 14:47:23'),
	(21, 'Unions', 'TASK', 15, 'setup/location_unions', 6, 'Active', 1, NULL, '2024-12-10 14:48:23', NULL);

-- Dumping structure for table arm_analysis_2025_back.system_user_hidden_columns
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table arm_analysis_2025_back.system_user_hidden_columns: ~0 rows (approximately)

-- Dumping structure for table arm_analysis_2025_back.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_group_id` smallint(6) NOT NULL DEFAULT 3,
  `user_type_id` tinyint(4) NOT NULL DEFAULT 1,
  `part_id` smallint(6) NOT NULL DEFAULT 0,
  `area_id` smallint(6) NOT NULL DEFAULT 0,
  `territory_id` smallint(6) NOT NULL DEFAULT 0,
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

-- Dumping data for table arm_analysis_2025_back.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `employee_id`, `username`, `password`, `user_group_id`, `user_type_id`, `part_id`, `area_id`, `territory_id`, `name`, `email`, `mobile_no`, `ordering`, `status`, `infos`, `mobile_authentication_off_end`, `max_logged_browser`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'superadmin', '$2y$10$r0kOQvv4S55zRvLWWBzJNuo1AmPnjp2dLu3x078dVF2/rJvLjYNS6', 1, 1, 1, 1, 3, 'Shaiful Islam', 'shaiful@shaiful.me', '01912097849', 9999, 'Active', '{"profile_picture":"files\\/profile-pictures\\/1\\/bikas.PNG"}', NULL, 3, 1, 1, '2022-10-18 17:51:03', '2024-12-02 03:25:39'),
	(2, '0074', '0074', '$2y$10$H/aB6/TrwNqQCOtYe3J2PeEB/ffgVka/sFGlCqt6rDai.8n8z.OlW', 2, 1, 1, 1, 0, 'Mahi Uddin', 'man.monitoring@malikseedsbd.com', '01713090950', 9999, 'Active', NULL, NULL, 3, 1, 1, '2024-12-02 03:20:27', '2024-12-02 03:23:13');

-- Dumping structure for table arm_analysis_2025_back.user_auth_tokens
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table arm_analysis_2025_back.user_auth_tokens: ~8 rows (approximately)
INSERT INTO `user_auth_tokens` (`id`, `user_id`, `token`, `save_token`, `device_info`, `created_at`, `last_used_at`, `expires_at`) VALUES
	(1, 1, '$2y$10$ziL/380UdPOCogrOuL1ETOwch5MjC.Z1RCenddWVtPDP1AxFkRETG', NULL, '{"REMOTE_ADDR":"192.168.179.1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko\\/20100101 Firefox\\/133.0"}', '2024-12-01 12:06:10', '2024-12-01 07:13:56', '2024-12-01 12:06:10'),
	(2, 1, '$2y$10$OMG/nCSMDl7um3fBCGgEKeLRY64/1f7/QVgBOf/APurfFDvGAERwe', NULL, '{"REMOTE_ADDR":"192.168.179.1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko\\/20100101 Firefox\\/133.0"}', '2024-12-01 12:08:50', '2024-12-01 07:14:07', '2024-12-01 12:08:50'),
	(3, 1, '$2y$10$q6h/DcyB.5bDYzPOJSauU.4.QKcaJria.SNVQGTQYNz4Mp0CUx.da', NULL, '{"REMOTE_ADDR":"192.168.179.1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko\\/20100101 Firefox\\/133.0"}', '2024-12-01 12:14:42', '2024-12-01 12:03:55', '2024-12-01 12:14:42'),
	(4, 1, '$2y$10$RnNka3002to1uNiO054/XO1q1NCkHKyy85F193rB3zXga9DHEvXc.', NULL, '{"REMOTE_ADDR":"192.168.179.1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko\\/20100101 Firefox\\/133.0"}', '2024-12-01 12:06:10', '2024-12-01 12:06:10', '2024-12-05 16:06:10'),
	(5, 1, '$2y$10$C8z/KaG.W4Ct1n0YatBwker05qlxt7UprSzUAzCmBHTqPYWxryolS', NULL, '{"REMOTE_ADDR":"192.168.179.1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko\\/20100101 Firefox\\/133.0"}', '2024-12-01 12:08:50', '2024-12-01 12:08:50', '2024-12-05 16:08:50'),
	(6, 1, '$2y$10$arntsRx5oHDF0odEHCpOE.ealk7NN59dFnsEceD6AKInZeIcjIgzK', '1733109915012', '{"REMOTE_ADDR":"192.168.179.1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko\\/20100101 Firefox\\/133.0"}', '2024-12-02 03:26:26', '2024-12-02 03:26:26', '2024-12-02 03:26:26'),
	(7, 1, '$2y$10$drtFKijEVPpSdw/fs8rG3eAH5tApSH8GCrxrTSEk4UACKPMjLsV4i', '1733143440727', '{"REMOTE_ADDR":"192.168.179.1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko\\/20100101 Firefox\\/133.0"}', '2024-12-02 12:45:44', '2024-12-02 12:45:44', '2024-12-06 16:45:44'),
	(8, 1, '$2y$10$hDq.3wA4UaHjo9hEBqpc3uhAgH09CTMG1g.GbbZiBlZ1TQLHpbItq', '1733848676432', '{"REMOTE_ADDR":"192.168.179.1","HTTP_USER_AGENT":"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko\\/20100101 Firefox\\/133.0"}', '2024-12-10 16:38:04', '2024-12-10 16:38:04', '2024-12-14 20:38:04');

-- Dumping structure for table arm_analysis_2025_back.user_groups
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

-- Dumping data for table arm_analysis_2025_back.user_groups: ~3 rows (approximately)
INSERT INTO `user_groups` (`id`, `name`, `ordering`, `status`, `action_0`, `action_1`, `action_2`, `action_3`, `action_4`, `action_5`, `action_6`, `action_7`, `action_8`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Super Admin', 1, 'Active', ',2,3,4,5,6,7,12,13,18,22,23,24,25,27,28,29,38,39,40,41,20,8,9,10,11,21,32,14,15,19,16,30,31,34,35,36,17,26,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,27,28,29,38,39,40,41,20,8,9,10,11,21,32,14,15,19,16,30,31,34,35,36,17,26,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,27,28,29,38,39,40,41,20,8,9,10,11,21,32,14,15,19,16,30,31,34,35,36,17,26,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,27,38,39,40,41,20,8,9,10,11,21,14,15,19,16,17,26,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,27,28,29,38,39,40,41,20,8,9,10,11,21,32,14,15,19,16,30,31,34,35,36,17,26,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,27,28,29,38,39,40,41,20,8,9,10,11,21,32,14,15,19,16,30,31,34,35,36,17,26,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,27,28,29,38,39,40,41,20,8,9,10,11,21,32,14,15,19,16,30,31,34,35,36,17,26,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,27,38,39,40,41,20,8,9,10,11,21,14,15,19,16,17,26,', ',2,3,4,5,6,7,12,13,18,22,23,24,25,27,29,38,39,40,41,20,8,9,10,11,21,14,15,19,16,34,35,36,17,26,', 1, 1, '2022-11-05 05:57:26', '2024-11-06 16:52:56'),
	(2, 'Admin', 2, 'Active', ',6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,', ',6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,', ',6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,', ',6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,', ',6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,', ',6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,', ',6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,', ',6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,', ',6,7,12,13,18,22,23,24,25,20,8,9,10,11,21,14,15,19,16,17,26,27,3,4,', 1, 1, '2022-11-05 05:57:26', '2024-12-02 12:20:29'),
	(3, 'Registered', 3, 'Active', ',12,32,', ',12,32,', ',12,32,', ',12,', ',32,', ',32,', ',32,', ',', ',', 1, 1, '2022-11-05 05:57:26', '2024-10-31 20:58:04');

-- Dumping structure for table arm_analysis_2025_back.user_otps
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

-- Dumping data for table arm_analysis_2025_back.user_otps: ~0 rows (approximately)

-- Dumping structure for table arm_analysis_2025_back.user_types
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

-- Dumping data for table arm_analysis_2025_back.user_types: ~0 rows (approximately)
INSERT INTO `user_types` (`id`, `name`, `prefix`, `ordering`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'Employee', '001', 99, 'Active', 1, NULL, '2022-11-05 05:57:26', NULL);

-- Dumping structure for table arm_analysis_2025_back.varieties
DROP TABLE IF EXISTS `varieties`;
CREATE TABLE IF NOT EXISTS `varieties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `crop_type_id` smallint(6) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table arm_analysis_2025_back.varieties: ~2 rows (approximately)
INSERT INTO `varieties` (`id`, `name`, `crop_type_id`, `whose`, `principal_id`, `competitor_id`, `ordering`, `status`, `retrial`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
	(1, 'adf', 8, 'ARM', NULL, NULL, 99, 'Active', 'Yes', 1, NULL, '2024-12-02 12:43:46', NULL),
	(2, 'asd', 12, 'Principal', 1, NULL, 99, 'In-Active', 'Yes', 1, 1, '2024-12-02 12:43:57', '2024-12-02 12:44:06');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
