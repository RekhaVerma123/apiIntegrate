-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jan 20, 2024 at 06:50 AM
-- Server version: 8.0.18
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qoute`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2024_01_18_080127_create_quotes_table', 1),
(9, '2024_01_19_113407_add_api_token_to_users', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
CREATE TABLE IF NOT EXISTS `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quote_list` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `quote_list`, `created_at`, `updated_at`) VALUES
(1, '\"We will heal. We will cure.\"', NULL, NULL),
(2, '\"Life is the ultimate gift\"', NULL, NULL),
(3, '\"Everything you do in life stems from either fear or love\"', NULL, NULL),
(4, '\"I\'m the new Moses\"', NULL, NULL),
(5, '\"We as a people will heal. We will insure the well being of each other\"', NULL, NULL),
(6, '\"My dad got me a drone for Christmas\"', NULL, NULL),
(7, '\"People tried to talk me out of running for President. Never let weak controlling people kill your spirit\"', NULL, NULL),
(8, '\"I give up drinking every week\"', NULL, NULL),
(9, '\"There\'s so many lonely emojis man\"', NULL, NULL),
(10, '\"For me, money is not my definition of success. Inspiring people is a definition of success\"', NULL, NULL),
(11, '\"There are 5 main pillars in a professional musicians business - Recording, Publishing, Touring, Merchandise & Name and likeness\"', NULL, NULL),
(12, '\"So many of us need so much less than we have especially when so many of us are in need\"', NULL, NULL),
(13, '\"People say it\'s enough and I got my point across ... the point isn\'t across until we cross the point\"', NULL, NULL),
(14, '\"I wish I had a friend like me\"', NULL, NULL),
(15, '\"I\'m a creative genius\"', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` longtext COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'r', 'test2@gmail.com', NULL, '$2y$10$/rbIRFTra7oHNlz5hetiE.mR3YRwYhtdHsvOrxsrMtXXOBOmdBaAi', '0', NULL, '2024-01-18 02:46:11', '2024-01-20 01:05:40'),
(3, 'Rekha2', 'rekhyyyyyyyyyyya@gmail.com', NULL, '$2y$10$.pQizmzYg0xTEngJUrqNXevamVj9xJdbCxW0NW6pMLChOwEtYSCQK', NULL, NULL, '2024-01-19 10:02:31', '2024-01-19 10:02:31'),
(4, 'Rekha3', 'rekh@gmail.com', NULL, '$2y$10$Rmh83IyAvDPcklwQ.rC.kuDvYeR6f26MuWuK7kcyTaGvKlPKSqiNa', NULL, NULL, '2024-01-19 10:04:16', '2024-01-19 10:04:16'),
(5, 'Rekha3', 'ffff@gmail.com', NULL, '$2y$10$6huxi0jDhGrf7OOWXM/Glenuhif9wPZILmtJYO5B64onDIFgXnItK', NULL, NULL, '2024-01-19 10:04:24', '2024-01-19 10:04:24'),
(2, 'Rekha', 'rekha@gmail.com', NULL, '$2y$10$tDjvLb3BaojORwt3L.S..eOoBr/4h.VE7jIpqzegF8m/3TNVZldV.', NULL, NULL, '2024-01-19 07:44:00', '2024-01-19 07:44:00'),
(6, 'Rekha Verma', 'userfffffffffffffffffffffffff@gmail.com', NULL, '$2y$10$UKuimhaH5kGZdDvPJFBaV.Ip55HDdfQiyIQ1SAnrf6Gr4AYSA569C', NULL, NULL, '2024-01-19 10:05:17', '2024-01-19 10:05:17'),
(7, 'c', 'ccc@gmail.com', NULL, '$2y$10$rj4puZrwc/FqpTbVFjDbl.DAF8jG2qKd1U4ajZ84WaixtV1wzctK6', NULL, NULL, '2024-01-19 10:06:12', '2024-01-19 10:06:12'),
(8, 'p', 'poyij39343@tanlanav.com', NULL, '$2y$10$UmsYxGsTgzFTducY08iBoOuXnVq5Tzmy7ruFjTQQEenZ8hNG/OrFS', '0', NULL, '2024-01-19 10:18:27', '2024-01-19 10:19:11'),
(9, 'Mohan', 'mohan@gmail.com', NULL, '$2y$10$7Cu6/50w7qWjmw.O0C2QZOC.RMC4HIt.GbEZF1PkcwJPMo1PkS.8O', NULL, NULL, '2024-01-19 10:19:41', '2024-01-19 10:19:41'),
(10, 'Rekha Verma', 'rv8201164@gmail.com', NULL, '$2y$10$Al/BmmiEmWXVFxlXRduv8OwD8589m87uNFG2adgDmdiaBswltaLw2', NULL, NULL, '2024-01-19 10:22:41', '2024-01-19 10:22:41');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
