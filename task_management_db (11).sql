-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2025 at 01:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_management_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `other_works`
--

CREATE TABLE `other_works` (
  `id` int(11) NOT NULL,
  `mechanic_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `work_category` enum('Misc Work','Rescue','Housekeeping','Misload') NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `requested_by` varchar(255) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requested_items`
--

CREATE TABLE `requested_items` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `wor_id` int(11) DEFAULT NULL,
  `wor_number` varchar(20) DEFAULT NULL,
  `mechanic_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `available_qty` int(11) DEFAULT 0,
  `unit` varchar(50) DEFAULT NULL,
  `item_description` text DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `remarks` text DEFAULT NULL,
  `date_requested` datetime DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requested_items`
--

INSERT INTO `requested_items` (`id`, `session_id`, `wor_id`, `wor_number`, `mechanic_id`, `qty`, `available_qty`, `unit`, `item_description`, `status`, `remarks`, `date_requested`, `date_updated`, `updated_by`) VALUES
(94, 349, 316, '2500001', 20, 10, 0, 'MTRS', 'WIRE', 'Available', NULL, '2025-11-04 09:38:53', '2025-11-04 09:39:39', NULL),
(95, 349, 316, '2500001', 20, 1, 0, 'PC', 'RELAY', 'Available', NULL, '2025-11-04 09:38:53', '2025-11-04 09:40:54', NULL),
(96, 349, 316, '2500001', 20, 1, 0, 'PC', 'RELAY HOLDER', 'Available', NULL, '2025-11-04 09:38:53', '2025-11-04 09:41:03', NULL),
(97, 349, 316, '2500001', 20, 1, 0, 'PC', 'FUSE', 'Available', NULL, '2025-11-04 09:38:53', '2025-11-04 09:40:36', NULL),
(98, 349, 316, '2500001', 20, 1, 0, 'PC', 'FUSE HOLDER', 'Available', NULL, '2025-11-04 09:38:53', '2025-11-04 09:40:24', NULL),
(99, 350, 317, '2500002', 48, 2, 0, 'PCS', 'N70 BATTERY', 'Pending', NULL, '2025-11-04 09:43:52', '2025-11-04 09:43:52', NULL),
(100, 350, 317, '2500002', 48, 4, 0, 'PCS', 'BATTERY CLAMP', 'Pending', NULL, '2025-11-04 09:43:52', '2025-11-04 09:43:52', NULL),
(101, 353, 323, '2500008', 20, 2, 0, 'PCS', 'FOG LIGHT LEFT AND RIGHT', 'Pending', NULL, '2025-11-04 09:54:34', '2025-11-04 09:55:25', NULL),
(102, 354, 324, '2500009', 21, 1, 0, 'PC', 'CHECK VALVE', 'Pending', NULL, '2025-11-04 09:58:10', '2025-11-04 09:58:10', NULL),
(103, 355, 325, '2500010', 20, 1, 0, 'PC', 'ODO HUB', 'Pending', NULL, '2025-11-04 10:29:13', '2025-11-04 10:29:13', NULL),
(104, 360, 330, '2500015', 21, 1, 0, 'PC', 'MANUAL TEMPERATURE GAUGE', 'Available', NULL, '2025-11-04 10:47:38', '2025-11-04 10:48:46', NULL),
(105, 363, 331, '2500016', 20, 1, 0, 'MTR', 'HYDRAULIC HOSE', 'Pending', NULL, '2025-11-04 10:56:06', '2025-11-04 10:56:06', NULL),
(107, 368, 332, '2500017', 20, 1, 0, 'PC', '24V BULB', 'Pending', NULL, '2025-11-04 11:13:47', '2025-11-04 11:13:47', NULL),
(108, 369, 336, '2500021', 20, 1, 0, 'PC', 'CLEARANCE LIGHT', 'Pending', NULL, '2025-11-04 11:16:01', '2025-11-04 11:16:01', NULL),
(109, 370, 338, '2500023', 20, 1, 0, 'PCS', 'SET HEADLIGHT LEFT AND RIGHT', 'Pending', NULL, '2025-11-04 11:22:27', '2025-11-04 11:22:27', NULL),
(110, 371, 341, '2500026', 21, 1, 0, 'PC', 'SET LINING', 'Pending', NULL, '2025-11-04 11:24:43', '2025-11-04 11:24:43', NULL),
(111, 371, 341, '2500026', 21, 4, 0, 'PCS', 'BRAKE SHOE ROLLER PIN', 'Pending', NULL, '2025-11-04 11:24:43', '2025-11-04 11:24:43', NULL),
(112, 374, 344, '2500029', 20, 1, 0, 'PC', 'HEADLIGHT SET', 'Pending', NULL, '2025-11-04 11:33:42', '2025-11-04 11:33:42', NULL),
(113, 375, 345, '2500030', 20, 4, 0, 'MTRS', 'WIRE', 'Pending', NULL, '2025-11-04 11:36:59', '2025-11-04 11:36:59', NULL),
(114, 378, 348, '2500033', 21, 1, 0, 'PC', 'DIAPHRAGM T30', 'Pending', NULL, '2025-11-04 15:00:18', '2025-11-04 15:00:18', NULL),
(115, 380, 349, '2500034', 21, 1, 0, 'PC', 'MAXI BRAKE SWITCH', 'Pending', NULL, '2025-11-04 15:04:35', '2025-11-04 15:04:35', NULL),
(116, 383, 352, '2500037', 20, 2, 0, 'LTRS', '15W 40', 'Pending', NULL, '2025-11-04 15:11:21', '2025-11-04 15:11:21', NULL),
(117, 387, 370, '2500055', 48, 3, 0, 'PCS', 'BEARING', 'Available', NULL, '2025-11-04 15:26:24', '2025-11-04 15:52:03', NULL),
(118, 387, 370, '2500055', 48, 1, 0, 'PC', 'OIL SEAL', 'Available', NULL, '2025-11-04 15:26:24', '2025-11-04 15:52:15', NULL),
(119, 387, 370, '2500055', 48, 1, 0, 'PC', 'PRESS IN PRESS OUT BEARING', 'Available', NULL, '2025-11-04 15:26:24', '2025-11-04 15:52:27', NULL),
(120, 388, 358, '2500043', 21, 1, 0, 'PC', 'SHOCK ABSORBER PIN', 'Available', NULL, '2025-11-04 15:29:57', '2025-11-12 08:05:51', NULL),
(121, 390, 360, '2500045', 20, 1, 0, 'PC', 'BRAKE LINING', 'Available', NULL, '2025-11-04 15:39:10', '2025-11-12 08:05:23', NULL),
(122, 391, 359, '2500044', 20, 1, 0, 'PC', 'BRAKE PAD', 'Available', NULL, '2025-11-04 15:40:55', '2025-11-12 08:05:13', NULL),
(123, 393, 361, '2500046', 20, 6, 0, 'PCS', 'OIL 5W 40', 'Available', NULL, '2025-11-04 15:58:32', '2025-11-12 08:01:58', NULL),
(124, 393, 361, '2500046', 20, 1, 0, 'PC', 'FUEL FILTER', 'Available', NULL, '2025-11-04 15:58:32', '2025-11-12 08:03:36', NULL),
(125, 393, 361, '2500046', 20, 1, 0, 'PC', 'OIL FILTER', 'Available', NULL, '2025-11-04 15:58:32', '2025-11-12 08:04:18', NULL),
(126, 393, 361, '2500046', 20, 1, 0, 'PC', 'AIR FILTER', 'Available', NULL, '2025-11-04 15:58:32', '2025-11-12 08:04:31', NULL),
(127, 394, 362, '2500047', 20, 1, 0, 'PC', 'ODOMETER CABLE', 'Available', NULL, '2025-11-04 16:00:30', '2025-11-12 08:00:58', NULL),
(128, 396, 368, '2500053', 20, 2, 0, 'PCS', 'BATTERY N70', 'Available', NULL, '2025-11-04 16:04:49', '2025-11-12 07:59:48', NULL),
(129, 396, 368, '2500053', 20, 4, 0, 'PCS', 'BATTERY CLAMP', 'Available', NULL, '2025-11-04 16:04:49', '2025-11-12 08:00:10', NULL),
(130, 397, 369, '2500054', 20, 1, 0, 'PC', '1 PAIL HYDRAULIC OIL', 'Available', NULL, '2025-11-04 16:06:28', '2025-11-12 07:59:21', NULL),
(131, 398, 373, '2500058', 21, 1, 0, 'PC', 'CHECK VALVE', 'Available', NULL, '2025-11-04 16:08:37', '2025-11-12 07:58:32', NULL),
(132, 401, 375, '2500060', 20, 1, 0, 'PC', 'LEAF SPRING', 'Available', NULL, '2025-11-04 16:12:32', '2025-11-12 07:57:53', NULL),
(133, 404, 378, '2500063', 21, 1, 0, 'PC', 'DRUMBOLT', 'Available', NULL, '2025-11-04 16:29:32', '2025-11-12 07:57:24', NULL),
(134, 412, 383, '2500068', 21, 1, 0, 'PC', 'STABILIZER BUSHING', 'Available', NULL, '2025-11-04 16:43:29', '2025-11-12 07:56:11', NULL),
(135, 416, 388, '2500073', 20, 2, 0, 'PCS', 'ORING', 'Available', NULL, '2025-11-04 16:51:57', '2025-11-12 07:55:41', NULL),
(137, 426, 406, '2500074', 20, 1, 0, 'PC', 'ENGINE SUPPORT', 'Available', NULL, '2025-11-12 07:18:42', '2025-11-12 07:22:33', NULL),
(139, 433, 392, '2500077', 20, 1, 0, 'PC', 'NUT', 'Available', NULL, '2025-11-12 07:54:28', '2025-11-12 07:55:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `returned_parts`
--

CREATE TABLE `returned_parts` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `wor_id` int(11) DEFAULT NULL,
  `wor_number` varchar(20) DEFAULT NULL,
  `mechanic_id` int(11) NOT NULL,
  `part_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `part_condition` enum('Usable','Damage') DEFAULT 'Usable',
  `remarks` text DEFAULT NULL,
  `received_by` int(11) DEFAULT NULL,
  `status` enum('Pending','Received') DEFAULT 'Pending',
  `category` varchar(50) DEFAULT NULL,
  `date_returned` datetime DEFAULT current_timestamp(),
  `date_received` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `returned_parts`
--

INSERT INTO `returned_parts` (`id`, `session_id`, `wor_id`, `wor_number`, `mechanic_id`, `part_name`, `description`, `qty`, `unit`, `part_condition`, `remarks`, `received_by`, `status`, `category`, `date_returned`, `date_received`) VALUES
(28, 363, 331, '2500016', 20, 'HYDRAULIC HOSE', 'HYDRAULIC HOSE', 1, 'MTR', 'Damage', 'DAMAGE ITEM', NULL, 'Pending', NULL, '2025-11-04 10:56:06', NULL),
(30, 368, 332, '2500017', 20, '24V BULB', '24V BULB', 1, 'PC', 'Damage', 'DISPOSE', NULL, 'Pending', NULL, '2025-11-04 11:13:47', NULL),
(31, 369, 336, '2500021', 20, 'CLEARANCE LIGHT', 'CLEARANCE LIGHT', 1, 'PC', 'Damage', 'DISPOSE', NULL, 'Pending', NULL, '2025-11-04 11:16:01', NULL),
(32, 370, 338, '2500023', 20, 'SET HEADLIGHT LEFT AND RIGHT', 'SET HEADLIGHT LEFT AND RIGHT', 1, 'PC', 'Damage', 'CRAP', NULL, 'Pending', NULL, '2025-11-04 11:22:27', NULL),
(33, 374, 344, '2500029', 20, 'HEADLIGHT SET', 'HEADLIGHT SET', 1, 'PC', 'Damage', 'CRAP', NULL, 'Pending', NULL, '2025-11-04 11:33:42', NULL),
(34, 375, 345, '2500030', 20, 'WIRE', 'WIRE', 4, 'MTRS', 'Usable', 'CAN BE RECYCLE', NULL, 'Pending', NULL, '2025-11-04 11:36:59', NULL),
(35, 378, 348, '2500033', 21, 'DIAPHRAGM T30', 'DIAPHRAGM T30', 1, 'PC', 'Usable', 'CAN BE REUSABLE', NULL, 'Pending', NULL, '2025-11-04 15:00:18', NULL),
(36, 390, 360, '2500045', 20, 'BRAKE LINING', 'BRAKE LINING', 1, 'PC', 'Usable', '', NULL, 'Pending', NULL, '2025-11-04 15:39:10', NULL),
(37, 391, 359, '2500044', 20, 'BRAKE PAD', 'BRAKE PAD', 1, 'PC', 'Usable', '', NULL, 'Pending', NULL, '2025-11-04 15:40:55', NULL),
(38, 393, 361, '2500046', 20, 'FUEL FILTER', 'FUEL FILTER', 1, 'PC', 'Usable', '', NULL, 'Pending', NULL, '2025-11-04 15:58:32', NULL),
(39, 393, 361, '2500046', 20, 'OIL FILTER', 'OIL FILTER', 1, 'PC', 'Usable', '', NULL, 'Pending', NULL, '2025-11-04 15:58:32', NULL),
(40, 393, 361, '2500046', 20, 'AIR FILTER', 'AIR FILTER', 1, 'PC', 'Usable', '', NULL, 'Pending', NULL, '2025-11-04 15:58:32', NULL),
(41, 394, 362, '2500047', 20, 'ODOMETER CABLE', 'ODOMETER CABLE', 1, 'PC', 'Usable', '', NULL, 'Pending', NULL, '2025-11-04 16:00:30', NULL),
(42, 396, 368, '2500053', 20, 'BATTERY N70', 'BATTERY N70', 2, 'PCS', 'Usable', '', NULL, 'Pending', NULL, '2025-11-04 16:04:49', NULL),
(44, 426, 406, '2500074', 20, 'ENGINE SUPPORT', 'ENGINE SUPPORT', 1, 'PC', 'Usable', '', NULL, 'Pending', NULL, '2025-11-12 07:18:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tanker_checklist`
--

CREATE TABLE `tanker_checklist` (
  `id` int(11) NOT NULL,
  `tanker_code` varchar(20) NOT NULL,
  `depot` varchar(50) NOT NULL,
  `checklist_date` date NOT NULL,
  `available` tinyint(1) DEFAULT 0,
  `created_by` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `edited_by` varchar(50) DEFAULT NULL,
  `edited_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','driver','mechanic','warehouse') NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `password`, `role`, `status`, `created_at`) VALUES
(15, 'CALVIN SABANTO', 'Calvin', '$2y$10$aImjEE0/GWY8eVX0Ez1FiusQQkZkGkOz3l95MWCIiadZmaxYNb0KK', 'warehouse', 'active', '2025-09-23 08:24:03'),
(20, 'HARROLD GAN URAGA', 'Harrold', '$2y$10$R8uL6ZgW7VzRYYBeLBG1mefTAIriLHp.UYWBuSMWCcGXw1xQ3RbXK', 'mechanic', 'active', '2025-09-27 05:40:30'),
(21, 'REYNAN QUITA', 'Reynan', '$2y$10$VwfHUNzk8Jmh2S4PdskHsuvqtndOujdD8MQ019j3QzTeOzsDGOJA6', 'mechanic', 'active', '2025-09-27 05:40:47'),
(22, 'CHRISTIAN MORGA', 'Christian', '$2y$10$nAeBR79DCe6dMiLO8pCuoO8DpWX9XQIabTTWVH9B3WBWxUG.cxUby', 'driver', 'active', '2025-09-27 05:41:58'),
(23, 'PEDRO ARMENTON', 'Pedro', '$2y$10$AdyHplPhfzx/YBBQweEiPOFTjM8fOmhhYTPZ8af779ucBjP/Keomu', 'driver', 'active', '2025-09-29 02:43:14'),
(24, 'HAIDEE ONOFRE', 'Haidee', '$2y$10$jOEfLOxC9uYf55Wye9SU9euPWEuE92kSAVrQRDtjC/gVrh.OPaa8G', 'warehouse', 'active', '2025-10-01 07:55:35'),
(25, 'DARIL MAGALAMAN', 'Daril', '$2y$10$C1H1iYIQ.XBPIxrvyXMP6.SFmZLPmUoqtUeKPm/9mHmbDa.rpwZOS', 'driver', 'active', '2025-10-02 02:15:58'),
(26, 'JESS DALAPO', 'Jess', '$2y$10$dvFIBVc7n2G9l33zkMUD9OHXunGe7MMwUWYWlLyhPIs6m4XN6K/Ly', 'driver', 'active', '2025-10-03 07:43:55'),
(33, 'ALMAR SARCAUGA', 'Almar', '$2y$10$OhCpTgbyi4oQIlesk9U9KeKCbXLKFWWP7AUEOeSygeHRfXsrDg.1m', 'driver', 'active', '2025-10-07 03:36:44'),
(40, 'ROSE BULLECER', 'Rose', '$2y$10$vxG.Kl.LPJo1XTLvjwFkUOz8V0EZ92o/mtFfdf2fmYLgTNqK.tR6a', 'admin', 'active', '2025-10-18 05:06:19'),
(41, 'JADE TOLENTINO', 'Jade', '$2y$10$uMXmL.hxgFjhabO/z1B46O11LED6f7rcPIjyL7OFPU/JL/jIQD60W', 'driver', 'active', '2025-10-20 05:24:56'),
(42, 'LEONIDES SARIEGO', 'Leonides', '$2y$10$SJu3jzDNkhqbA39UgpdIS.7ebfZEfWTBwfpA3neUdA94fUqyRHAmC', 'driver', 'active', '2025-10-20 05:27:15'),
(43, 'RAYMUNDO QUIROL', 'Raymund', '$2y$10$ISUBUguDrFpOjzCDxGHhAuaCk9LJ55IPboVpxiPwskH4SoZlUTAQm', 'driver', 'active', '2025-10-20 05:32:09'),
(46, 'XYZA YUVALLOS', 'Admin', '$2y$10$gNvdT967V5jPlhRb4DlNQOXr0N7RAsZP.YFJeH9c0WEwAq9BbXTPO', 'admin', 'active', '2025-10-25 01:33:46'),
(47, 'CARLO MIGUEL VALLEDOR', 'Miguel', '$2y$10$0w/bTu.cGiq/Ott.FXNzpuZ1k0DA0BUCAizAzxoemxHhruwZ5Cizm', 'admin', 'active', '2025-10-25 01:36:28'),
(48, 'JOSE ALIGRE', 'Jose', '$2y$10$U5Pww3SkBCnilAkalNZN.emWcacO/1ia6nNpqP3gYFxH42p8MlrRW', 'mechanic', 'active', '2025-10-25 02:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `tanker_code` varchar(50) NOT NULL,
  `plate_no` varchar(50) NOT NULL,
  `category` enum('tanker','service','heavy_equipment') DEFAULT 'tanker',
  `active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `tanker_code`, `plate_no`, `category`, `active`, `created_at`, `status`) VALUES
(38, 'T1501', 'AAS3545', 'tanker', 1, '2025-10-10 03:46:06', 'active'),
(39, 'T1502', 'ABV5244', 'tanker', 1, '2025-10-10 03:46:24', 'active'),
(40, 'T1915', 'GAL7564', 'tanker', 1, '2025-10-10 03:46:41', 'active'),
(41, 'T1916', 'GAL7563', 'tanker', 1, '2025-10-10 03:46:56', 'active'),
(42, 'T2401', 'GBD8454', 'tanker', 1, '2025-10-10 03:47:12', 'active'),
(43, 'T2402', 'CCB2382', 'tanker', 1, '2025-10-10 03:47:28', 'active'),
(44, 'T2501', 'KBF3135', 'tanker', 1, '2025-10-10 03:47:49', 'active'),
(45, 'T2502', 'KBF3142', 'tanker', 1, '2025-10-10 03:48:02', 'active'),
(46, 'BOOMTRUCK', 'JAO 7200', 'heavy_equipment', 1, '2025-10-10 03:48:44', 'active'),
(48, 'BOOMTRUCK 2', 'MDQ 4435', 'heavy_equipment', 1, '2025-10-10 03:49:54', 'active'),
(49, 'BOOMTRUCK 3', 'YCZ 689', 'heavy_equipment', 1, '2025-10-10 03:50:33', 'active'),
(50, 'KOBELCO CRANE', '-', 'heavy_equipment', 1, '2025-10-10 03:50:49', 'active'),
(51, 'TADANO CRANE', '-', 'heavy_equipment', 1, '2025-10-10 03:51:01', 'active'),
(52, 'CAT BACKHOE', '-', 'heavy_equipment', 1, '2025-10-10 03:51:23', 'active'),
(53, 'TOYOTA FORTUNER', 'NDX 7959', 'service', 1, '2025-10-10 03:51:40', 'active'),
(54, 'TOYOTA HILUX', 'KAB 9908', 'service', 1, '2025-10-10 03:52:14', 'active'),
(55, 'TOYOTA COROLLA CROSS', 'GNW 1289', 'service', 1, '2025-10-10 03:52:41', 'active'),
(56, 'TOYOTA INNOVA', 'KDO 9200', 'service', 1, '2025-10-10 03:53:14', 'active'),
(57, 'MITSUBISHI STRADA', 'YJR 626', 'service', 1, '2025-10-10 03:53:46', 'active'),
(58, 'MITSUBISHI L300', 'GAH 9682', 'service', 1, '2025-10-10 03:54:09', 'active'),
(59, 'FX', 'GBG 6435', 'service', 1, '2025-10-14 23:59:15', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_inventory`
--

CREATE TABLE `warehouse_inventory` (
  `id` int(11) NOT NULL,
  `mrs_number` varchar(20) NOT NULL,
  `part_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT 0.00,
  `total_value` decimal(10,2) DEFAULT NULL,
  `type` enum('Consumable','Non-Consumable') NOT NULL,
  `date_added` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse_inventory`
--

INSERT INTO `warehouse_inventory` (`id`, `mrs_number`, `part_name`, `description`, `stock_quantity`, `unit`, `price`, `total_value`, `type`, `date_added`) VALUES
(16, 'MRS-00001', 'Signal Light', 'Signal light', 50, 'pc/s', 180.00, NULL, 'Consumable', '2025-10-27 11:52:26'),
(17, 'MRS-00002', 'Tire', 'Trailer Tire', 50, 'pc/s', 9000.00, NULL, 'Consumable', '2025-10-27 13:23:11'),
(18, 'MRS-00003', 'Pumping Hose', 'Pumping Hose', 20, 'pc/s', 300.00, NULL, 'Consumable', '2025-10-27 13:30:23'),
(19, 'MRS-00004', 'Head Light', 'Truck head light', 18, 'pc/s', 150.00, NULL, 'Consumable', '2025-10-27 13:44:00'),
(20, 'MRS-00005', 'Brake', 'Brake', 5, 'pc/s', 100.00, NULL, 'Non-Consumable', '2025-10-28 07:58:24'),
(21, 'MRS-00006', 'Universal Drumbolt', 'Universal Drumbolt', 17, 'pc/s', 200.00, NULL, 'Consumable', '2025-10-28 08:17:43'),
(22, 'MRS-00007', 'Temperature Gauge', 'Temperature Gauge', 19, 'pc/s', 3525.00, NULL, 'Consumable', '2025-10-28 08:20:10'),
(23, 'MRS-00008', 'Rubber Cap Brakes', 'Rubber Cap Brakes', 14, 'pc/s', 400.00, NULL, 'Consumable', '2025-10-28 08:21:41'),
(24, 'MRS-00009', 'Rubber Bots', 'Rubber Bots', 14, 'pc/s', 230.00, NULL, 'Non-Consumable', '2025-10-28 08:22:17'),
(25, 'MRS-00010', 'Stick Bearing IKO Japan RN 8906', 'Stick Bearing IKO Japan RN 8906', 13, 'pc/s', 117.00, NULL, 'Consumable', '2025-10-28 08:24:50'),
(26, 'MRS-00011', 'NSK Bearing 98092', 'NSK Bearing 98092', 9, 'pc/s', 17.67, NULL, 'Consumable', '2025-10-28 08:27:05'),
(27, 'MRS-00012', 'NSK Bearing 6210', 'NSK Bearing 6210', 6, 'pc/s', 1940.00, NULL, 'Consumable', '2025-10-28 08:28:29'),
(28, 'MRS-00013', 'Gear Oil', 'Gear Oil', 30, 'Lts', 260.00, NULL, 'Non-Consumable', '2025-10-28 08:30:31'),
(29, 'MRS-00014', 'Hydraulic Hose', 'Hydraulic Hose', 19, 'Mtrs', 1800.00, NULL, 'Consumable', '2025-10-28 08:32:45'),
(30, 'MRS-00015', 'Hydraulic Oil', 'Hydraulic Oil', 8, 'pc/s', 150.00, NULL, 'Consumable', '2025-10-28 08:33:20'),
(32, 'MRS-00016', 'Fuse Holder', 'Fuse Holder', 16, 'pc/s', 300.00, NULL, 'Consumable', '2025-10-28 13:09:35'),
(33, 'MRS-00017', 'NTR Bearing SL09 - 5012NR', 'NTR Bearing SL09 - 5012NR', 9, 'pc/s', 350.00, NULL, 'Consumable', '2025-10-28 13:25:01'),
(34, 'MRS-00018', 'Wire', 'Wire', 16, 'Mtrs', 150.00, NULL, 'Consumable', '2025-10-29 09:46:20'),
(35, 'MRS-00019', 'Fuse', 'Fuse', 17, 'pc/s', 300.00, NULL, 'Consumable', '2025-10-29 09:50:05'),
(36, 'MRS-00020', 'Relay', 'Relay', 17, 'pc/s', 300.00, NULL, 'Consumable', '2025-10-29 09:50:45'),
(37, 'MRS-00021', 'Relay Holder', 'Relay Holder', 17, 'pc/s', 200.00, NULL, 'Consumable', '2025-10-29 09:51:36'),
(38, 'MRS-00022', 'N70 Battery', 'N70 Battery', 14, 'pc/s', 1500.00, NULL, 'Consumable', '2025-10-29 09:54:54'),
(39, 'MRS-00023', 'Battery Clamp', 'Battery Clamp', 8, 'pc/s', 500.00, NULL, 'Consumable', '2025-10-29 09:55:48'),
(40, 'MRS-00024', 'Fog Light', 'Fog Light', 18, 'pc/s', 250.00, NULL, 'Consumable', '2025-10-29 09:57:17'),
(41, 'MRS-00025', 'Check Valve', 'Check Valve', 17, 'pc/s', 350.00, NULL, 'Consumable', '2025-10-29 09:58:05'),
(42, 'MRS-00026', 'Odo Hub', 'Odo Hub', 9, 'pc/s', 3000.00, NULL, 'Consumable', '2025-10-29 09:59:09'),
(43, 'MRS-00027', 'Manual Temperature', 'Manual Temperature', 9, 'pc/s', 2000.00, NULL, 'Consumable', '2025-10-29 10:00:14'),
(44, 'MRS-00028', '24 V Bulb', '24 V Bulb', 16, 'pc/s', 250.00, NULL, 'Consumable', '2025-10-29 10:01:35'),
(45, 'MRS-00029', 'Clearance Light', 'Clearance Light', 19, 'pc/s', 350.00, NULL, 'Consumable', '2025-10-29 10:02:35'),
(46, 'MRS-00030', 'Head Light', '1 Set Head Light Left and Right', 18, 'pc/s', 500.00, 10000.00, 'Consumable', '2025-10-29 10:03:33'),
(47, 'MRS-00031', 'Lining', '1 Set Lining', 20, 'pc/s', 500.00, NULL, 'Consumable', '2025-10-29 10:05:23'),
(48, 'MRS-00032', 'Brake Shoe Roller Pin', 'Brake Shoe Roller Pin', 20, 'pc/s', 500.00, NULL, 'Non-Consumable', '2025-10-29 10:07:16'),
(49, 'MRS-00033', 'Diaphragm T30', 'Diaphragm T30', 19, 'pc/s', 500.00, NULL, 'Consumable', '2025-10-29 10:09:12'),
(50, 'MRS-00034', 'Maxi Brake Switch', 'Maxi Brake Switch', 19, 'pc/s', 5000.00, NULL, 'Consumable', '2025-10-29 10:10:03'),
(51, 'MRS-00035', '15W 40', '15W 40', 20, 'Ltrs', 2500.00, NULL, 'Consumable', '2025-10-29 10:11:36'),
(52, 'MRS-00036', 'Shock Absorber Pin', 'Shock Absorber Pin', 17, 'pc/s', 500.00, NULL, 'Consumable', '2025-10-29 10:12:29'),
(53, 'MRS-00037', 'Brake Pad', 'Brake Pad', 18, 'pc/s', 600.00, NULL, 'Consumable', '2025-10-29 10:13:24'),
(54, 'MRS-00038', 'Brake Lining', 'Brake Lining', 18, 'pc/s', 550.00, NULL, 'Consumable', '2025-10-29 10:14:05'),
(55, 'MRS-00039', '5W 40', '5W 40 / per plastic', 8, 'pc/s', 500.00, NULL, 'Consumable', '2025-10-29 10:18:25'),
(56, 'MRS-00040', 'Fuel Filter', 'Fuel Filter', 18, 'pc/s', 1500.00, NULL, 'Consumable', '2025-10-29 10:19:23'),
(57, 'MRS-00041', 'Oil Filter', 'Oil Filter', 18, 'pc/s', 1500.00, NULL, 'Consumable', '2025-10-29 10:20:53'),
(58, 'MRS-00042', 'Air Filter', 'Air Filter', 18, 'pc/s', 1500.00, NULL, 'Consumable', '2025-10-29 10:21:52'),
(59, 'MRS-00043', 'Odometer Cable', 'Odometer Cable', 18, 'pc/s', 500.00, NULL, 'Consumable', '2025-10-29 10:22:40'),
(60, 'MRS-00044', 'Oil Seal', 'Oil Seal', 19, 'pc/s', 1500.00, NULL, 'Consumable', '2025-10-29 10:29:22'),
(61, 'MRS-00045', 'Press In Press Out Bearing', 'Press In Press Out Bearing', 19, 'pc/s', 5000.00, NULL, 'Consumable', '2025-10-29 10:30:32'),
(62, 'MRS-00046', 'Leaf Spring', 'Leaf Spring', 15, 'pc/s', 2000.00, NULL, 'Consumable', '2025-10-29 10:31:19'),
(63, 'MRS-00047', 'Stabilizer Bushing', 'Stabilizer Bushing', 19, 'pc/s', 400.00, NULL, 'Consumable', '2025-10-29 10:32:48'),
(64, 'MRS-00048', 'O-Ring', 'O-Ring', 18, 'pc/s', 300.00, NULL, 'Consumable', '2025-10-29 10:33:41'),
(65, 'MRS-00049', 'Engine Support', 'Engine Support Left', 18, 'pc/s', 2500.00, NULL, 'Consumable', '2025-10-29 10:34:45'),
(66, 'MRS-00050', 'Engine Support', 'Engine Support Right', 20, 'pc/s', 2500.00, NULL, 'Consumable', '2025-10-29 10:35:11'),
(67, 'MRS-00051', 'Nut', 'Nut', 18, 'pc/s', 250.00, NULL, 'Consumable', '2025-10-29 10:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(11) NOT NULL,
  `wor_number` varchar(20) NOT NULL,
  `mechanic_id` int(11) NOT NULL,
  `mrs_number` varchar(20) NOT NULL,
  `part_name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `type` enum('Consumable','Non-Consumable') NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `released_by` varchar(100) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `date_withdrawn` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `wor_number`, `mechanic_id`, `mrs_number`, `part_name`, `description`, `quantity`, `unit`, `type`, `price`, `total`, `released_by`, `remarks`, `date_withdrawn`) VALUES
(75, '2500001', 15, 'MRS-00018', 'Wire', 'Wire', 10, 'Mtrs', 'Consumable', 150.00, 1500.00, 'HAIDEE ONOFRE', NULL, '2025-11-04 09:39:39'),
(76, '2500001', 15, 'MRS-00016', 'Fuse Holder', 'Fuse Holder', 1, 'PC', 'Consumable', 300.00, 300.00, 'HAIDEE ONOFRE', NULL, '2025-11-04 09:40:24'),
(77, '2500001', 15, 'MRS-00019', 'Fuse', 'Fuse', 1, 'pc/s', 'Consumable', 300.00, 300.00, 'HAIDEE ONOFRE', NULL, '2025-11-04 09:40:36'),
(78, '2500001', 15, 'MRS-00020', 'Relay', 'Relay', 1, 'PC', 'Consumable', 300.00, 300.00, 'HAIDEE ONOFRE', NULL, '2025-11-04 09:40:54'),
(79, '2500001', 15, 'MRS-00021', 'Relay Holder', 'Relay Holder', 1, 'pc/s', 'Consumable', 200.00, 200.00, 'HAIDEE ONOFRE', NULL, '2025-11-04 09:41:03'),
(80, '2500015', 15, 'MRS-00007', 'Temperature Gauge', 'Temperature Gauge', 1, 'pc/s', 'Consumable', 3525.00, 3525.00, 'CALVIN SABANTO', NULL, '2025-11-04 10:48:46'),
(81, '2500017', 15, 'MRS-00028', '24 V Bulb', '24 V Bulb', 1, 'pc/s', 'Consumable', 250.00, 250.00, 'HAIDEE ONOFRE', NULL, '2025-11-04 11:04:16'),
(82, '2500055', 15, 'MRS-00012', 'NSK Bearing 6210', 'NSK Bearing 6210', 3, 'pc/s', 'Consumable', 1940.00, 5820.00, 'CALVIN SABANTO', NULL, '2025-11-04 15:52:03'),
(83, '2500055', 15, 'MRS-00044', 'Oil Seal', 'Oil Seal', 1, 'pc/s', 'Consumable', 1500.00, 1500.00, 'HAIDEE ONOFRE', NULL, '2025-11-04 15:52:15'),
(84, '2500055', 15, 'MRS-00045', 'Press In Press Out Bearing', 'Press In Press Out Bearing', 1, 'pc/s', 'Consumable', 5000.00, 5000.00, 'CALVIN SABANTO', NULL, '2025-11-04 15:52:27'),
(85, '2500074', 15, 'MRS-00049', 'Engine Support', 'Engine Support Left', 1, 'pc/s', 'Consumable', 2500.00, 2500.00, 'HAIDEE ONOFRE', NULL, '2025-11-12 07:22:33'),
(86, '2500077', 24, 'MRS-00051', 'Nut', 'Nut', 1, 'pc/s', 'Consumable', 250.00, 250.00, 'HAIDEE ONOFRE', NULL, '2025-11-12 07:55:19'),
(87, '2500073', 24, 'MRS-00048', 'O-Ring', 'O-Ring', 2, 'pc/s', 'Consumable', 300.00, 600.00, 'HAIDEE ONOFRE', NULL, '2025-11-12 07:55:41'),
(88, '2500068', 24, 'MRS-00047', 'Stabilizer Bushing', 'Stabilizer Bushing', 1, 'pc/s', 'Consumable', 400.00, 400.00, 'HAIDEE ONOFRE', NULL, '2025-11-12 07:56:11'),
(89, '2500063', 24, 'MRS-00006', 'Universal Drumbolt', 'Universal Drumbolt', 1, 'pc/s', 'Consumable', 200.00, 200.00, 'HAIDEE ONOFRE', NULL, '2025-11-12 07:57:24'),
(90, '2500060', 24, 'MRS-00046', 'Leaf Spring', 'Leaf Spring', 1, 'pc/s', 'Consumable', 2000.00, 2000.00, 'HAIDEE ONOFRE', NULL, '2025-11-12 07:57:53'),
(91, '2500058', 24, 'MRS-00025', 'Check Valve', 'Check Valve', 1, 'pc/s', 'Consumable', 350.00, 350.00, 'HAIDEE ONOFRE', NULL, '2025-11-12 07:58:32'),
(92, '2500054', 24, 'MRS-00015', 'Hydraulic Oil', 'Hydraulic Oil', 1, 'pc/s', 'Consumable', 150.00, 150.00, 'HAIDEE ONOFRE', NULL, '2025-11-12 07:59:21'),
(93, '2500053', 24, 'MRS-00022', 'N70 Battery', 'N70 Battery', 2, 'pc/s', 'Consumable', 1500.00, 3000.00, 'HAIDEE ONOFRE', NULL, '2025-11-12 07:59:48'),
(94, '2500053', 24, 'MRS-00023', 'Battery Clamp', 'Battery Clamp', 4, 'pc/s', 'Consumable', 500.00, 2000.00, 'HAIDEE ONOFRE', NULL, '2025-11-12 08:00:10'),
(95, '2500047', 24, 'MRS-00043', 'Odometer Cable', 'Odometer Cable', 1, 'pc/s', 'Consumable', 500.00, 500.00, 'HAIDEE ONOFRE', NULL, '2025-11-12 08:00:58'),
(96, '2500046', 24, 'MRS-00039', '5W 40', '5W 40 / per plastic', 6, 'pc/s', 'Consumable', 500.00, 3000.00, 'CALVIN SABANTO', NULL, '2025-11-12 08:01:58'),
(97, '2500046', 24, 'MRS-00040', 'Fuel Filter', 'Fuel Filter', 1, 'pc/s', 'Consumable', 1500.00, 1500.00, 'CALVIN SABANTO', NULL, '2025-11-12 08:03:36'),
(98, '2500046', 24, 'MRS-00041', 'Oil Filter', 'Oil Filter', 1, 'pc/s', 'Consumable', 1500.00, 1500.00, 'CALVIN SABANTO', NULL, '2025-11-12 08:04:18'),
(99, '2500046', 24, 'MRS-00042', 'Air Filter', 'Air Filter', 1, 'pc/s', 'Consumable', 1500.00, 1500.00, 'HAIDEE ONOFRE', NULL, '2025-11-12 08:04:31'),
(100, '2500044', 24, 'MRS-00037', 'Brake Pad', 'Brake Pad', 1, 'pc/s', 'Consumable', 600.00, 600.00, 'HAIDEE ONOFRE', NULL, '2025-11-12 08:05:13'),
(101, '2500045', 24, 'MRS-00038', 'Brake Lining', 'Brake Lining', 1, 'pc/s', 'Consumable', 550.00, 550.00, 'CALVIN SABANTO', NULL, '2025-11-12 08:05:23'),
(102, '2500043', 24, 'MRS-00036', 'Shock Absorber Pin', 'Shock Absorber Pin', 1, 'pc/s', 'Consumable', 500.00, 500.00, 'HAIDEE ONOFRE', NULL, '2025-11-12 08:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `work_orders`
--

CREATE TABLE `work_orders` (
  `id` int(11) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `wor_number` varchar(20) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `tanker_code` varchar(50) NOT NULL,
  `plate_no` varchar(50) NOT NULL,
  `odo` int(11) DEFAULT NULL,
  `symptoms` text DEFAULT NULL,
  `urgency` enum('High','Medium','Low','N/A') DEFAULT 'N/A',
  `created_by` varchar(100) DEFAULT NULL,
  `mechanic_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` enum('Pending','In Progress','Completed','Backjob') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work_orders`
--

INSERT INTO `work_orders` (`id`, `date_time`, `wor_number`, `driver_id`, `driver_name`, `tanker_code`, `plate_no`, `odo`, `symptoms`, `urgency`, `created_by`, `mechanic_id`, `start_date`, `end_date`, `status`) VALUES
(316, '2025-10-30 08:30:00', '2500001', 33, 'ALMAR SARCAUGA', 'T1915', 'GAL7564', 0, 'AUXILLARY LAMP FOR WIRING', 'N/A', 'driver - Almar', NULL, NULL, NULL, 'Completed'),
(317, '2025-10-30 13:17:17', '2500002', 41, 'JADE TOLENTINO', 'BOOMTRUCK 3', 'YCZ 689', 0, 'REPLACE BATTERY', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(318, '2025-10-30 13:17:51', '2500003', 41, 'JADE TOLENTINO', 'BOOMTRUCK 3', 'YCZ 689', 0, 'WATER PIPE', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(319, '2025-10-30 13:18:34', '2500004', 43, 'RAYMUNDO QUIROL', 'MITSUBISHI STRADA', 'YJR 626', 0, 'ADJUST CLUTCH MASTER', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(320, '2025-10-30 13:23:06', '2500005', 22, 'CHRISTIAN MORGA', 'T1501', 'AAS3545', 0, 'FIX FRAME 2 HEADLIGHTS', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(321, '2025-10-30 13:24:03', '2500006', 22, 'CHRISTIAN MORGA', 'T1501', 'AAS3545', 0, 'INSTALL BRACKET FOR 2 HEADLIGHTS', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(322, '2025-10-30 13:24:34', '2500007', 22, 'CHRISTIAN MORGA', 'T1501', 'AAS3545', 0, 'HOODLOCK LEFT AND RIGHT', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(323, '2025-10-30 13:25:17', '2500008', 22, 'CHRISTIAN MORGA', 'T1501', 'AAS3545', 0, 'FOG LIGHT LEFT AND RIGHT', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(324, '2025-10-30 13:25:49', '2500009', 22, 'CHRISTIAN MORGA', 'T1501', 'AAS3545', 0, 'FIX AIR LEAK SYSTEM', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(325, '2025-10-30 13:26:27', '2500010', 23, 'PEDRO ARMENTON', 'T2502', 'KBF3142', 0, 'INSTALLATION OF ODO HUB', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(326, '2025-10-30 13:27:07', '2500011', 23, 'PEDRO ARMENTON', 'T2502', 'KBF3142', 0, 'CHECK ALTERNATOR', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(327, '2025-10-30 13:27:46', '2500012', 23, 'PEDRO ARMENTON', 'T2502', 'KBF3142', 0, 'SIGNAL LIGHT DRIVER SIDE', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(328, '2025-10-30 13:28:11', '2500013', 22, 'CHRISTIAN MORGA', 'T1501', 'AAS3545', 0, 'TIRE CARRIER', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(329, '2025-10-30 13:28:37', '2500014', 22, 'CHRISTIAN MORGA', 'T1501', 'AAS3545', 0, 'TRAILER SIGNAL LIGHT', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(330, '2025-10-30 13:29:10', '2500015', 41, 'JADE TOLENTINO', 'CAT BACKHOE', '-', 0, 'ENGINE OVERHEAT', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(331, '2025-10-30 13:29:35', '2500016', 41, 'JADE TOLENTINO', 'CAT BACKHOE', '-', 0, 'HYDRAULIC OIL LEAK', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(332, '2025-10-30 13:30:19', '2500017', 33, 'ALMAR SARCAUGA', 'T1915', 'GAL7564', 0, 'PARKING LIGHT BUSTED LEFT SIDE', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(333, '2025-10-30 13:30:57', '2500018', 33, 'ALMAR SARCAUGA', 'T1915', 'GAL7564', 0, 'U-BOLT SA TRAILER LU-AG', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(334, '2025-10-30 13:31:42', '2500019', 42, 'LEONIDES SARIEGO', 'T2402', 'CCB2382', 0, 'WELDING PRODUCT PIPE LINE COMP', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(335, '2025-10-30 13:32:40', '2500020', 42, 'LEONIDES SARIEGO', 'T2401', 'GBD8454', 0, 'GATTER VALVE REPAIR / REPLACE HOSE', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(336, '2025-10-30 13:33:15', '2500021', 42, 'LEONIDES SARIEGO', 'T2402', 'CCB2382', 0, 'REPLACE CLEARANCE LIGHT NAAY BUAK', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(337, '2025-10-30 13:33:42', '2500022', 26, 'JESS DALAPO', 'T1916', 'GAL7563', 0, 'CONNECT CCTV WIRE', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(338, '2025-10-30 13:34:12', '2500023', 26, 'JESS DALAPO', 'T1916', 'GAL7563', 0, 'ATTACH FRONT HEAD LIGHT', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(339, '2025-10-30 13:34:32', '2500024', 26, 'JESS DALAPO', 'T1916', 'GAL7563', 0, 'GREASING', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(340, '2025-10-30 13:35:17', '2500025', 26, 'JESS DALAPO', 'T1916', 'GAL7563', 0, 'KADENA PARA BATTERY / TAORAN PARA KABITAN SA PADLOCK', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(341, '2025-10-30 13:35:34', '2500026', 23, 'PEDRO ARMENTON', 'T2502', 'KBF3142', 0, 'REPLACE LINING', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(342, '2025-10-30 13:36:16', '2500027', 23, 'PEDRO ARMENTON', 'T2502', 'KBF3142', 0, 'CHECK-UP BLOWER AIRCON AND ALTERNATOR', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'In Progress'),
(343, '2025-10-30 13:36:52', '2500028', 23, 'PEDRO ARMENTON', 'T2502', 'KBF3142', 0, 'CHECK-UP AIR DRYER', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(344, '2025-10-30 13:37:28', '2500029', 33, 'ALMAR SARCAUGA', 'T1915', 'GAL7564', 0, 'CONNECT LOW LIGHT HEAD', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(345, '2025-10-30 13:37:52', '2500030', 22, 'CHRISTIAN MORGA', 'T1501', 'AAS3545', 0, 'WIRING SA FOG LAMP', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(346, '2025-10-30 13:38:16', '2500031', 22, 'CHRISTIAN MORGA', 'T1501', 'AAS3545', 0, 'TRAILER BRAKE', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(347, '2025-10-30 13:38:39', '2500032', 22, 'CHRISTIAN MORGA', 'T2501', 'KBF3135', 0, 'ATTACH PUMPING HOSE', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(348, '2025-10-30 13:39:34', '2500033', 23, 'PEDRO ARMENTON', 'T2502', 'KBF3142', 0, 'REPLACE DIAPHRAGM', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(349, '2025-10-30 13:39:53', '2500034', 22, 'CHRISTIAN MORGA', 'T2501', 'KBF3135', 0, 'AIR LEAK', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(350, '2025-10-30 13:41:06', '2500035', 22, 'CHRISTIAN MORGA', 'T2501', 'KBF3135', 0, 'LEAK PRODUCT PUMP', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(351, '2025-10-30 13:41:36', '2500036', 22, 'CHRISTIAN MORGA', 'T2501', 'KBF3135', 0, 'CHARGING OUTLET', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(352, '2025-10-30 13:43:46', '2500037', 22, 'CHRISTIAN MORGA', 'T2402', 'CCB2382', 0, 'TOP OIL FILTER', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(353, '2025-10-30 13:44:33', '2500038', 26, 'JESS DALAPO', 'T1916', 'GAL7563', 0, 'CHECK TRAILER BRAKE RIGHT BACK', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(354, '2025-10-30 13:45:22', '2500039', 22, 'CHRISTIAN MORGA', 'T1501', 'AAS3545', 0, 'SPARK SA STARTER', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(355, '2025-10-30 13:46:21', '2500040', 42, 'LEONIDES SARIEGO', 'T2402', 'CCB2382', 0, 'REQUEST REFLECTORIZE STICKER 10FT', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(356, '2025-10-30 13:47:07', '2500041', 23, 'PEDRO ARMENTON', 'T2502', 'KBF3142', 0, 'ARROW SIGNAL LIGHT 2 PCS LEFT AND RIGHT', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(357, '2025-10-30 13:47:44', '2500042', 26, 'JESS DALAPO', 'T1916', 'GAL7563', 0, 'PROPELLER SA PRODUCT PUMP', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(358, '2025-10-30 13:48:56', '2500043', 26, 'JESS DALAPO', 'T1916', 'GAL7563', 0, 'CHECK CABIN SHOCK ABSORBER & REPLACE PIN', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(359, '2025-10-30 13:49:40', '2500044', 43, 'RAYMUNDO QUIROL', 'MITSUBISHI L300', 'GAH 9682', 0, 'REPAIR BRAKE PAD', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(360, '2025-10-30 13:50:18', '2500045', 43, 'RAYMUNDO QUIROL', 'MITSUBISHI L300', 'GAH 9682', 0, 'BRAKE LINING', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(361, '2025-10-30 13:50:45', '2500046', 43, 'RAYMUNDO QUIROL', 'MITSUBISHI L300', 'GAH 9682', 0, 'PMS', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(362, '2025-10-30 13:51:02', '2500047', 43, 'RAYMUNDO QUIROL', 'MITSUBISHI L300', 'GAH 9682', 0, 'ODOMETER', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(363, '2025-10-30 13:51:55', '2500048', 23, 'PEDRO ARMENTON', 'T2502', 'KBF3142', 0, 'TRANSFER HUB METER / ODO METER', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(364, '2025-10-30 13:52:45', '2500049', 33, 'ALMAR SARCAUGA', 'T1915', 'GAL7564', 0, 'PASSING COMPARTMENT 2 & 6 SA LINYADA', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(365, '2025-10-30 13:53:13', '2500050', 33, 'ALMAR SARCAUGA', 'T1915', 'GAL7564', 0, 'TIRE ROTATION', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(366, '2025-10-30 13:54:20', '2500051', 43, 'RAYMUNDO QUIROL', 'MITSUBISHI L300', 'GAH 9682', 0, 'CHANGE TRANSMISSION OIL', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(367, '2025-10-30 13:55:09', '2500052', 43, 'RAYMUNDO QUIROL', 'MITSUBISHI L300', 'GAH 9682', 0, 'CHANGE DIFFERENTIAL OIL', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(368, '2025-10-30 13:57:57', '2500053', 41, 'JADE TOLENTINO', 'CAT BACKHOE', '-', 0, 'CHECK UP BATTERY / ELECTRICAL WIRING / DILI MUANDAR & INSTALL NEW BATTERY', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(369, '2025-10-30 13:59:23', '2500054', 41, 'JADE TOLENTINO', 'BOOMTRUCK', 'JAO 7200', 0, 'TOP UP HYDRAULIC OIL', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(370, '2025-10-30 14:00:24', '2500055', 41, 'JADE TOLENTINO', 'BOOMTRUCK', 'JAO 7200', 0, 'DILI MO SWING / REPAIR SWING MOTOR', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(371, '2025-10-30 14:02:29', '2500056', 26, 'JESS DALAPO', 'T1916', 'GAL7563', 0, 'WELDING DISCHARGE HOSE COVER C/O SIR GANI (ALDRIN)', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(372, '2025-10-30 14:03:51', '2500057', 22, 'CHRISTIAN MORGA', 'T2501', 'KBF3135', 0, 'DISCHARGE VALVE BUTTERFLY', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(373, '2025-10-30 14:05:23', '2500058', 22, 'CHRISTIAN MORGA', 'T1501', 'AAS3545', 0, 'QUICK RELEASE VALVE / INSTALLATION', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(374, '2025-10-30 14:14:17', '2500059', 26, 'JESS DALAPO', 'T1916', 'GAL7563', 0, 'REPAIR COMPARTMENT #1', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(375, '2025-10-30 14:15:47', '2500060', 22, 'CHRISTIAN MORGA', 'T1501', 'AAS3545', 0, 'CHANGE MOLYE TRAILER', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(376, '2025-10-30 14:16:18', '2500061', 26, 'JESS DALAPO', 'T1916', 'GAL7563', 0, 'CHECK UNDER CHASSIS PRIME MOVER', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(377, '2025-10-30 14:17:12', '2500062', 26, 'JESS DALAPO', 'T1916', 'GAL7563', 0, 'CHECK TEMPERATURE GAUGE', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(378, '2025-10-30 14:17:51', '2500063', 25, 'DARIL MAGALAMAN', 'T2401', 'GBD8454', 0, 'CHECK DRUMBOLT TRAILER', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(379, '2025-10-30 14:18:21', '2500064', 22, 'CHRISTIAN MORGA', 'T2501', 'KBF3135', 0, 'PRODUCT PUMP LEAKING', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(380, '2025-10-30 14:19:31', '2500065', 22, 'CHRISTIAN MORGA', 'T2501', 'KBF3135', 0, 'ODO HUB - HALAP DILI MAKLARO', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(381, '2025-10-30 14:20:17', '2500066', 22, 'CHRISTIAN MORGA', 'T2501', 'KBF3135', 0, 'ADDITIONAL LEAF SPRING - GATUWAD ANG TRUCK', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(382, '2025-10-30 14:20:57', '2500067', 22, 'CHRISTIAN MORGA', 'T2501', 'KBF3135', 0, 'NAAY LEAK SA TUBO SA WINILDINGAN #4', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(383, '2025-10-30 14:21:41', '2500068', 22, 'CHRISTIAN MORGA', 'T2501', 'KBF3135', 0, 'REPLACE STABILIZER BUSHING', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(384, '2025-10-30 14:22:10', '2500069', 22, 'CHRISTIAN MORGA', 'T2501', 'KBF3135', 0, 'LEAKING INTAKE MANIFOLD', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'In Progress'),
(385, '2025-10-30 14:25:04', '2500070', 22, 'CHRISTIAN MORGA', 'T2501', 'KBF3135', 0, 'LETTERING KUNG PILA KA KL DUOL SA HATCH MM SA KADA BANGAG SAYUP PA ILISAN', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(386, '2025-10-30 14:25:39', '2500071', 42, 'LEONIDES SARIEGO', 'T2402', 'CCB2382', 0, 'REPLACE BACKHORN', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(387, '2025-10-30 14:26:24', '2500072', 42, 'LEONIDES SARIEGO', 'T2402', 'CCB2382', 0, 'CHECK-UP TAIL LIGHT', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(388, '2025-10-30 14:26:49', '2500073', 22, 'CHRISTIAN MORGA', 'T2501', 'KBF3135', 0, 'TRANSMISSION OIL LEAK', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(390, '2025-10-30 14:29:17', '2500075', 23, 'PEDRO ARMENTON', 'T2502', 'KBF3142', 0, 'REPAIR SIGNAL LIGHT TRAILER RIGHT & LEFT', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(391, '2025-10-30 14:30:00', '2500076', 22, 'CHRISTIAN MORGA', 'T1501', 'AAS3545', 0, 'SIGNAL LIGHT RIGHT SIDE & HEADLIGHT MALFUNCTION', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(392, '2025-10-30 14:30:23', '2500077', 33, 'ALMAR SARCAUGA', 'T1915', 'GAL7564', 0, 'REPLACE TORQUE ROD NUT', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Completed'),
(393, '2025-11-03 11:06:18', '2500078', 26, 'JESS DALAPO', 'T1916', 'GAL7563', 0, 'TIRE ROTATION', 'N/A', 'driver - Jess', NULL, NULL, NULL, 'Pending'),
(402, '2025-11-04 17:04:13', '2500079', 46, 'XYZA YUVALLOS', 'T2501', 'KBF3135', 0, 'REPLACE ENGINE SUPPORT LEFT SIDE', 'N/A', 'admin - Admin', NULL, NULL, NULL, 'Pending'),
(406, '2025-11-04 17:04:47', '2500074', 22, 'CHRISTIAN MORGA', 'T2501', 'KBF3135', 0, 'REPLACE ENGINE SUPPORT LEFT SIDE', 'N/A', 'driver - Christian', NULL, NULL, NULL, 'Completed');

--
-- Triggers `work_orders`
--
DELIMITER $$
CREATE TRIGGER `protect_date_requested` BEFORE UPDATE ON `work_orders` FOR EACH ROW BEGIN
  SET NEW.date_time = OLD.date_time;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `work_sessions`
--

CREATE TABLE `work_sessions` (
  `session_id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `wor_id` int(11) NOT NULL,
  `mechanic_id` int(11) NOT NULL,
  `activity` enum('Repair','PMS','Misc Work','Canvass','Housekeeping','Inspection','Request Item') DEFAULT NULL,
  `work_start` datetime DEFAULT NULL,
  `work_end` datetime DEFAULT NULL,
  `status` enum('Pending','In Progress','On Hold','Completed') DEFAULT 'Pending',
  `test_date` datetime DEFAULT NULL,
  `release_date` datetime DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `total_minutes` int(11) GENERATED ALWAYS AS (timestampdiff(MINUTE,`work_start`,`work_end`)) STORED,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_time` varchar(10) GENERATED ALWAYS AS (concat(lpad(floor(`total_minutes` / 60),2,'0'),':',lpad(`total_minutes` MOD 60,2,'0'),':00')) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `work_sessions`
--

INSERT INTO `work_sessions` (`session_id`, `task_id`, `wor_id`, `mechanic_id`, `activity`, `work_start`, `work_end`, `status`, `test_date`, `release_date`, `remarks`, `updated_at`) VALUES
(349, NULL, 316, 20, 'Repair', '2025-10-30 09:00:00', '2025-10-30 10:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 09:49:11'),
(350, NULL, 317, 48, 'Repair', '2025-10-30 14:00:00', '2025-10-30 15:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 09:49:59'),
(351, NULL, 318, 48, 'Repair', '2025-10-30 15:00:00', '2025-10-30 16:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 09:50:31'),
(352, NULL, 319, 48, 'Repair', '2025-10-30 16:00:00', '2025-10-30 17:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 09:50:52'),
(353, NULL, 323, 20, 'Repair', '2025-10-30 14:00:00', '2025-10-30 15:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 09:54:34'),
(354, NULL, 324, 21, 'Repair', '2025-10-30 14:00:00', '2025-10-30 15:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 09:58:10'),
(355, NULL, 325, 20, 'Repair', '2025-10-30 15:00:00', '2025-10-30 16:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 10:29:13'),
(356, NULL, 327, 20, 'Repair', '2025-10-30 16:00:00', '2025-10-30 17:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 10:32:24'),
(357, NULL, 326, 48, 'Inspection', '2025-11-03 07:15:00', '2025-11-03 08:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 10:35:55'),
(358, NULL, 329, 20, 'Repair', '2025-11-03 07:15:00', '2025-11-03 08:00:00', 'Completed', NULL, NULL, '', '2025-11-04 10:44:13'),
(359, NULL, 329, 21, 'Repair', '2025-11-03 08:00:00', '2025-11-03 09:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 10:44:28'),
(360, NULL, 330, 21, 'Repair', '2025-11-03 07:15:00', '2025-11-03 08:00:00', 'Completed', NULL, NULL, '', '2025-11-04 10:49:34'),
(362, NULL, 330, 20, 'Repair', '2025-11-03 08:00:00', '2025-11-03 09:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 10:49:34'),
(363, NULL, 331, 20, 'Repair', '2025-11-03 09:00:00', '2025-11-03 10:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 10:56:06'),
(365, NULL, 333, 21, 'Repair', '2025-11-03 09:00:00', '2025-11-03 10:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 11:02:07'),
(368, NULL, 332, 20, 'Repair', '2025-11-03 10:00:00', '2025-11-03 11:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 11:13:47'),
(369, NULL, 336, 20, 'Repair', '2025-11-03 11:00:00', '2025-11-03 12:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 11:20:06'),
(370, NULL, 338, 20, 'Repair', '2025-11-03 13:00:00', '2025-11-03 14:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 11:22:27'),
(371, NULL, 341, 21, 'Repair', '2025-11-03 10:00:00', '2025-11-03 11:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 11:24:43'),
(372, NULL, 342, 20, 'Repair', '2025-11-03 14:00:00', NULL, 'In Progress', NULL, NULL, '', '2025-11-04 11:27:55'),
(373, NULL, 343, 48, 'Repair', '2025-11-03 09:00:00', '2025-11-03 10:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 11:29:12'),
(374, NULL, 344, 20, 'Repair', '2025-11-03 15:00:00', '2025-11-03 16:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 11:33:42'),
(375, NULL, 345, 20, 'Repair', '2025-11-03 16:00:00', '2025-11-03 17:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 11:36:59'),
(376, NULL, 346, 21, 'Repair', '2025-11-03 11:00:00', '2025-11-03 12:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 14:53:26'),
(377, NULL, 347, 48, 'Repair', '2025-11-03 11:00:00', '2025-11-03 12:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 14:54:48'),
(378, NULL, 348, 21, 'Repair', '2025-11-03 13:00:00', '2025-11-03 14:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 15:13:14'),
(379, NULL, 349, 48, 'Repair', '2025-11-03 13:00:00', '2025-11-03 14:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 15:04:35'),
(380, NULL, 349, 21, 'Repair', '2025-11-03 14:00:00', '2025-11-03 15:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 15:04:35'),
(381, NULL, 350, 48, 'Repair', '2025-11-03 14:00:00', '2025-11-03 15:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 15:13:43'),
(382, NULL, 351, 20, 'Repair', '2025-11-04 07:15:00', '2025-11-04 08:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 15:08:34'),
(383, NULL, 352, 20, 'PMS', '2025-11-04 08:00:00', '2025-11-04 08:30:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 15:11:21'),
(384, NULL, 353, 21, 'Repair', '2025-11-03 15:00:00', '2025-11-03 16:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 15:15:28'),
(385, NULL, 354, 21, 'Repair', '2025-11-03 16:00:00', '2025-11-03 17:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 15:17:03'),
(386, NULL, 357, 48, 'Repair', '2025-11-03 15:00:00', '2025-11-03 16:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 15:22:49'),
(387, NULL, 370, 48, 'Repair', '2025-11-03 16:00:00', '2025-11-03 17:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 15:53:29'),
(388, NULL, 358, 21, 'Repair', '2025-11-04 07:15:00', '2025-11-04 08:30:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 15:29:57'),
(389, NULL, 360, 21, 'Repair', '2025-11-04 08:30:00', '2025-11-04 09:00:00', 'Completed', NULL, NULL, '', '2025-11-04 15:39:10'),
(390, NULL, 360, 20, 'Repair', '2025-11-04 10:00:00', '2025-11-04 11:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 15:39:10'),
(391, NULL, 359, 20, 'Repair', '2025-11-04 08:30:00', '2025-11-04 10:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 15:40:55'),
(392, NULL, 370, 21, 'Repair', '2025-11-04 09:00:00', '2025-11-04 10:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 15:53:29'),
(393, NULL, 361, 20, 'PMS', '2025-11-04 11:00:00', '2025-11-04 12:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 15:58:32'),
(394, NULL, 362, 20, 'Repair', '2025-11-04 13:00:00', '2025-11-04 14:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 16:00:30'),
(395, NULL, 363, 20, 'Repair', '2025-11-04 14:00:00', '2025-11-04 15:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 16:01:50'),
(396, NULL, 368, 20, 'Repair', '2025-11-04 15:00:00', '2025-11-04 16:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 16:04:49'),
(397, NULL, 369, 20, 'Repair', '2025-11-04 16:00:00', '2025-11-04 17:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 16:06:28'),
(398, NULL, 373, 21, 'Repair', '2025-11-04 10:00:00', '2025-11-04 11:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 16:08:37'),
(399, NULL, 375, 48, 'Repair', '2025-11-04 07:15:00', '2025-11-04 08:00:00', 'Completed', NULL, NULL, '', '2025-11-04 16:12:32'),
(400, NULL, 375, 21, 'Repair', '2025-11-04 11:00:00', '2025-11-04 12:00:00', 'Completed', NULL, NULL, '', '2025-11-04 16:12:32'),
(401, NULL, 375, 20, 'Repair', '2025-11-05 07:15:00', '2025-11-05 08:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 16:14:35'),
(402, NULL, 376, 21, 'Inspection', '2025-11-04 13:00:00', '2025-11-04 14:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 16:19:04'),
(403, NULL, 379, 48, 'Repair', '2025-11-04 08:00:00', '2025-11-04 09:00:00', 'Completed', NULL, NULL, '', '2025-11-04 16:30:22'),
(404, NULL, 378, 21, 'Repair', '2025-11-04 15:00:00', '2025-11-04 16:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 16:29:32'),
(405, NULL, 379, 21, 'Repair', '2025-11-04 16:00:00', '2025-11-04 17:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 16:30:22'),
(406, NULL, 380, 20, 'Inspection', '2025-11-05 08:00:00', '2025-11-05 09:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 16:34:47'),
(407, NULL, 381, 48, 'Repair', '2025-11-04 09:00:00', '2025-11-04 11:00:00', 'Completed', NULL, NULL, '', '2025-11-04 16:38:11'),
(408, NULL, 381, 21, 'Repair', '2025-11-05 07:15:00', '2025-11-05 08:00:00', 'Completed', NULL, NULL, '', '2025-11-04 16:38:11'),
(409, NULL, 381, 20, 'Repair', '2025-11-05 09:00:00', '2025-11-05 10:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 16:38:11'),
(410, NULL, 383, 48, 'Repair', '2025-11-04 11:00:00', '2025-11-04 12:00:00', 'Completed', NULL, NULL, '', '2025-11-04 16:43:29'),
(411, NULL, 384, 48, 'Repair', '2025-11-04 13:00:00', NULL, 'In Progress', NULL, NULL, '', '2025-11-04 16:41:39'),
(412, NULL, 383, 21, 'Repair', '2025-11-05 08:00:00', '2025-11-05 09:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-12 07:19:35'),
(413, NULL, 386, 20, 'Repair', '2025-11-05 11:00:00', '2025-11-05 12:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 16:46:31'),
(414, NULL, 388, 48, 'Repair', '2025-11-04 14:00:00', '2025-11-04 16:00:00', 'Completed', NULL, NULL, '', '2025-11-04 16:51:57'),
(415, NULL, 388, 21, 'Repair', '2025-11-05 09:00:00', '2025-11-05 10:00:00', 'Completed', NULL, NULL, '', '2025-11-04 16:51:57'),
(416, NULL, 388, 20, 'Repair', '2025-11-05 13:00:00', '2025-11-05 14:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-04 16:51:57'),
(422, NULL, 406, 48, 'Repair', '2025-11-04 16:00:00', '2025-11-04 17:00:00', 'Completed', NULL, NULL, '', '2025-11-12 07:18:42'),
(424, NULL, 406, 21, 'Repair', '2025-11-05 10:00:00', '2025-11-05 11:00:00', 'Completed', NULL, NULL, '', '2025-11-12 07:18:42'),
(426, NULL, 406, 20, 'Repair', '2025-11-05 14:00:00', '2025-11-05 15:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-12 07:18:42'),
(427, NULL, 390, 20, 'Repair', '2025-11-12 15:00:00', '2025-11-12 16:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-12 07:41:23'),
(428, NULL, 391, 20, 'Repair', '2025-11-12 16:00:00', '2025-11-12 17:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-12 07:41:52'),
(429, NULL, 390, 20, 'Repair', '2025-11-05 15:00:00', '2025-11-05 16:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-12 07:41:23'),
(430, NULL, 390, 20, 'Repair', '2025-11-05 15:00:00', '2025-11-05 16:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-12 07:41:23'),
(431, NULL, 391, 20, 'Repair', '2025-11-05 16:00:00', '2025-11-05 17:00:00', 'Completed', NULL, NULL, 'DONE', '2025-11-12 07:41:52'),
(433, NULL, 392, 20, 'Repair', '2025-11-06 07:15:00', '2025-11-06 08:30:00', 'Completed', NULL, NULL, 'DONE', '2025-11-12 08:07:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `other_works`
--
ALTER TABLE `other_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requested_items`
--
ALTER TABLE `requested_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_session_request` (`session_id`);

--
-- Indexes for table `returned_parts`
--
ALTER TABLE `returned_parts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_session_return` (`session_id`);

--
-- Indexes for table `tanker_checklist`
--
ALTER TABLE `tanker_checklist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_check` (`tanker_code`,`depot`,`checklist_date`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tanker_code` (`tanker_code`);

--
-- Indexes for table `warehouse_inventory`
--
ALTER TABLE `warehouse_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mrs_number` (`mrs_number`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mechanic_id` (`mechanic_id`);

--
-- Indexes for table `work_orders`
--
ALTER TABLE `work_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wor_number` (`wor_number`);

--
-- Indexes for table `work_sessions`
--
ALTER TABLE `work_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `wor_id` (`wor_id`),
  ADD KEY `idx_ws_task_id` (`task_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `other_works`
--
ALTER TABLE `other_works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `requested_items`
--
ALTER TABLE `requested_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `returned_parts`
--
ALTER TABLE `returned_parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tanker_checklist`
--
ALTER TABLE `tanker_checklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `warehouse_inventory`
--
ALTER TABLE `warehouse_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `work_orders`
--
ALTER TABLE `work_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;

--
-- AUTO_INCREMENT for table `work_sessions`
--
ALTER TABLE `work_sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=434;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `requested_items`
--
ALTER TABLE `requested_items`
  ADD CONSTRAINT `fk_session_request` FOREIGN KEY (`session_id`) REFERENCES `work_sessions` (`session_id`) ON DELETE CASCADE;

--
-- Constraints for table `returned_parts`
--
ALTER TABLE `returned_parts`
  ADD CONSTRAINT `fk_session_return` FOREIGN KEY (`session_id`) REFERENCES `work_sessions` (`session_id`) ON DELETE CASCADE;

--
-- Constraints for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD CONSTRAINT `withdrawals_ibfk_1` FOREIGN KEY (`mechanic_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `work_sessions`
--
ALTER TABLE `work_sessions`
  ADD CONSTRAINT `fk_workorder_session` FOREIGN KEY (`wor_id`) REFERENCES `work_orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
