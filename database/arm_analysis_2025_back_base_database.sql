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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table arm_analysis_2025_back.system_tasks: ~18 rows (approximately)
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
	(18, 'Territory', 'TASK', 15, 'setup/location_territories', 3, 'Active', 1, NULL, '2024-12-01 12:31:21', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
