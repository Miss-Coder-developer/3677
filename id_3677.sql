-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jan 07, 2021 at 07:41 PM
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
-- Database: `id_3677`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_09_09_092757_create_posts_table', 1),
(10, '2020_09_09_100030_add_last_login_to_users', 1),
(11, '2020_09_10_022616_add_slug_column_to_posts', 1),
(12, '2020_09_10_045018_add_nickname_column_to_users', 1),
(13, '2020_09_10_045822_add_surname_column_to_users', 1),
(14, '2020_09_10_050032_create_user_profiles_table', 1),
(15, '2020_09_11_060025_create_post_comments_table', 1),
(16, '2020_09_14_050546_create_post_likes_table', 1),
(17, '2020_09_14_064808_create_user_followers_table', 1),
(18, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(20, '2020_11_25_073716_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1ab0233c858ef9355665e8ac05507dfb79bea1757ce1c4379017b72e5ad793a05d51103a8e4840c2', 1, 3, 'Personal Access Token', '[]', 0, '2020-12-08 08:04:28', '2020-12-08 08:04:28', '2021-12-08 12:04:28'),
('2998eacf388f9d318819d7fbe23ce05d59afe26a437b269f65a61a176e4ef412678c8181afb50d36', 1, 3, 'Personal Access Token', '[]', 0, '2020-12-04 02:43:33', '2020-12-04 02:43:33', '2021-12-04 06:43:33'),
('357865b874cddbfa192acb87ebf6385c43c37eea2a61ff2609ebbf097f3795a1ee71605a73382e2d', 1, 3, 'Personal Access Token', '[]', 0, '2020-12-04 06:53:50', '2020-12-04 06:53:50', '2021-12-04 10:53:50'),
('5fc1679935321b5b1d24ea31de3ccb45389f9559a8593f020da820cbc412f8e47d23fce3820c4c50', 1, 3, 'Personal Access Token', '[]', 0, '2020-12-18 08:34:25', '2020-12-18 08:34:25', '2021-12-18 12:34:25'),
('65ed311dafbf4db33727e09a816c8aeccb3ca3e36ef46adc1700fd5b0ae7d7c789af25db76bc25af', 1, 3, 'Personal Access Token', '[]', 0, '2020-12-09 08:38:54', '2020-12-09 08:38:54', '2021-12-09 12:38:54'),
('677169374e21b037c5dd276fb7b5657bd9023eaf4d509058d7d15b97e902dd9fb2052cc26e8194f4', 1, 3, 'Personal Access Token', '[]', 0, '2020-12-02 06:01:06', '2020-12-02 06:01:06', '2021-12-02 10:01:06'),
('681501117e1182622306f76569c4d3bf8ddfcb96638716a44a168643ecd2dfdc2e6aa3388afe8c0c', 1, 3, 'Personal Access Token', '[]', 0, '2020-12-09 07:35:43', '2020-12-09 07:35:43', '2021-12-09 11:35:43'),
('78c2926be5e1e8daeb63aff4c7f0341d354115f7a1dd4580cec6c630f226614180cb36a52378e2f5', 1, 3, 'Personal Access Token', '[]', 0, '2020-12-04 01:58:23', '2020-12-04 01:58:23', '2021-12-04 05:58:23'),
('7e72bec2e9ce1f4117b6784bca2beb96b0f12c599d1ca71ee30d6facf0238ce358ad3f7951436e53', 1, 3, 'Personal Access Token', '[]', 0, '2020-12-09 08:39:40', '2020-12-09 08:39:40', '2021-12-09 12:39:40'),
('87c8ee6e2b5c7ec216c4b1d872f73e542f863a35038451ad55f8025384a7daa6727c08ee1d3b4afc', 6, 3, 'Personal Access Token', '[]', 0, '2020-12-04 08:05:56', '2020-12-04 08:05:56', '2021-12-04 12:05:56'),
('99547907c03a082c0a0d5fb6f755f80ac475f2d21a340cb594f9e6597bd9eafc816c088bbe0671dd', 1, 3, 'Personal Access Token', '[]', 0, '2020-12-04 07:37:30', '2020-12-04 07:37:30', '2021-12-04 11:37:30'),
('bad31fcfc17229c33f3976b52bc6f6e1e9be6fdb746078a11813871113bc0b7a5f831f02d5a99d98', 1, 3, 'Personal Access Token', '[]', 0, '2020-12-04 07:38:09', '2020-12-04 07:38:09', '2021-12-04 11:38:09'),
('d861b37fc7df0f31a908aeffa427deaaa3c08a8ea6ea7ef2c359c11f909e2c6f18c1a599e39bf50a', 1, 3, 'Personal Access Token', '[]', 0, '2020-12-07 08:59:26', '2020-12-07 08:59:26', '2021-12-07 12:59:26'),
('e00587f26b6a1ce933fc0f46174d9e0d7aad7a5078fe339ddfd5b7c1fa3be617465e0e4b924b130c', 2, 3, 'Personal Access Token', '[]', 0, '2020-12-04 07:46:16', '2020-12-04 07:46:16', '2021-12-04 11:46:16'),
('e8328bb1daf5fd94695945b772266d3ad3a97ba3528e8b29dc12227cacd17a7a326b51fe752b6359', 1, 3, 'Personal Access Token', '[]', 0, '2020-12-09 08:43:19', '2020-12-09 08:43:19', '2021-12-09 12:43:19'),
('ec8c4e3da4f900451dcd3993be6f3cc27a53b92c42f50024be9eac330fc3c42be21b9f7ea81f5a9f', 1, 3, 'Personal Access Token', '[]', 0, '2020-12-09 08:38:01', '2020-12-09 08:38:01', '2021-12-09 12:38:01'),
('fc8f255003feac426b1da2ce9fcfed90239418f58e0339a0920e2c8d3aad0827af9334dfaf5e5761', 1, 3, 'Personal Access Token', '[]', 0, '2020-12-07 07:50:41', '2020-12-07 07:50:41', '2021-12-07 11:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'ukSKF0uR7GY5sw45hDeP15ZN1lxg0DaKn3TVGRmd', NULL, 'http://localhost', 1, 0, 0, '2020-11-25 04:05:42', '2020-11-25 04:05:42'),
(2, NULL, 'Laravel Password Grant Client', 'X1zTEY782bYs10m9ATXUs118JXMx3tLmxYsiNGpM', 'users', 'http://localhost', 0, 1, 0, '2020-11-25 04:05:42', '2020-11-25 04:05:42'),
(3, NULL, 'Laravel Personal Access Client', 'eml7BnLo01mAhZgjzYAYSBQmAU4X5E8Xqv6pDQ2h', NULL, 'http://localhost', 1, 0, 0, '2020-11-27 07:49:56', '2020-11-27 07:49:56'),
(4, NULL, 'Laravel Password Grant Client', 'KOppCzA6wjb7P9n4F3Repo7F3ICz8rhuNbrJhvfX', 'users', 'http://localhost', 0, 1, 0, '2020-11-27 07:49:56', '2020-11-27 07:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-25 04:05:42', '2020-11-25 04:05:42'),
(2, 3, '2020-11-27 07:49:56', '2020-11-27 07:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `posts_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `status`, `title`, `slug`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'iiii', 'hello', '5623', 'kkkk', '2021-01-04 07:00:27', '2021-01-05 04:45:27'),
(3, 1, 1, 'Hello', 'hello-1', '5623', 'kkkk', '2021-01-05 04:11:17', '2021-01-05 04:11:17');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

DROP TABLE IF EXISTS `post_comments`;
CREATE TABLE IF NOT EXISTS `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_comments_user_id_index` (`user_id`),
  KEY `post_comments_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

DROP TABLE IF EXISTS `post_likes`;
CREATE TABLE IF NOT EXISTS `post_likes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `isLike` enum('true','false') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_likes_user_id_index` (`user_id`),
  KEY `post_likes_post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`id`, `user_id`, `post_id`, `isLike`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'true', '2021-01-05 08:57:14', '2021-01-05 08:57:14');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jKTxqEukJksKU3Pm8YvOtH20iobQXZfrvn0ALnOt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYk1wZDRqdlRvU1VPZ1pQMGtNWUdnbFY5RUdMdjRkRXhhV1lhcWFJZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1606290302),
('KqGTOnfM3kLSiZvJFGjiu5YSkdMfBBdkqrA8XwRG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36 OPR/72.0.3815.186', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTIwTmRkMUlCR2w4Q0RHcU5EcWx4V1FhUEdmMmNJYjdiQUtVZVNJNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8zNjc3LWJhY2tlbmQvc2VydmVyLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1606474057),
('lWkQT1Ny32BuwWo5Fm5o0xiyFC2Q6LXY8dMsS1Ds', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36 OPR/72.0.3815.186', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMk53OWw1MDVDTkU4YVJZWFp3c3l3aHhUcVI0M3N4YzlPMmluMFJ5dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8zNjc3LWJhY2tlbmQvc2VydmVyLnBocCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1606474057),
('OEfb5b9Kb5B1ocJSnAGGYdac4be3dc3fbB1f9dYM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib002R3RqUkxWSFZyNzY5bDNwcGJyU2NsZzFtQnpacVNoMU1aM1ZHWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1606476722);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_nickname_unique` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `nickname`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`, `last_login`) VALUES
(1, 'dvfddsfv', 'AAAA', NULL, 'email@email.com', NULL, '$2y$10$IPkU8JXYjQd0tVPNJpcH4.VvTmnJvAldp7JrmSpNX4vUx5v4Y7f4W', NULL, NULL, NULL, '2020-12-02 05:50:31', '2020-12-02 05:50:31', NULL),
(2, 'fstx', 'fstx', NULL, 'fstx@gmail.com', NULL, '$2y$10$gKqZnJnn90bfBrn4LIA17.RKxDTHfQxwNzOaCUNfzRmLEg/eUxC2O', NULL, NULL, NULL, '2020-12-04 07:43:02', '2020-12-04 07:43:02', NULL),
(3, 'asd', 'asd', NULL, 'asd@yopmail.com', NULL, '$2y$10$hNG4.Hn4MnwsOUJ1FwZp5OrC/9zEq88OPAAxp.5u7uXv5B5wFWW86', NULL, NULL, NULL, '2020-12-04 07:44:51', '2020-12-04 07:44:51', NULL),
(4, 'asd', 'asd', NULL, 'asd@yopmail.coma', NULL, '$2y$10$3r3KutZu4bG7ZRS.ERUsUui9VkcPRom3WxlNjN4te4.lnyeHckk/2', NULL, NULL, NULL, '2020-12-04 07:45:27', '2020-12-04 07:45:27', NULL),
(5, 'as', 'asd', NULL, 'asd@yopmail.comdd', NULL, '$2y$10$f1JtgDjZj.DF3aZWbEZcvey3ePLv3kkyiQeOGYhKgy0yqBxPbQOaG', NULL, NULL, NULL, '2020-12-04 07:46:02', '2020-12-04 07:46:02', NULL),
(6, 'first Name', 'last Name', NULL, 'em@email.com', NULL, '$2y$10$QcXpWTMBrQ3iE0NCjCLgiu/JaDALqXP6vfZsNrQ0IHEI5MODQOSF.', NULL, NULL, NULL, '2020-12-04 08:05:44', '2020-12-04 08:05:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_followers`
--

DROP TABLE IF EXISTS `user_followers`;
CREATE TABLE IF NOT EXISTS `user_followers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `follower_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_followers_user_id_index` (`user_id`),
  KEY `user_followers_follower_id_index` (`follower_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_followers`
--

INSERT INTO `user_followers` (`id`, `user_id`, `follower_id`, `created_at`, `updated_at`) VALUES
(12, 1, 6, '2021-01-04 04:53:46', '2021-01-04 04:53:46'),
(13, 1, 6, '2021-01-04 04:57:48', '2021-01-04 04:57:48'),
(14, 1, 6, '2021-01-04 04:58:17', '2021-01-04 04:58:17'),
(15, 1, 6, '2021-01-04 04:58:40', '2021-01-04 04:58:40'),
(16, 1, 6, '2021-01-04 04:58:59', '2021-01-04 04:58:59'),
(17, 1, 6, '2021-01-04 04:59:16', '2021-01-04 04:59:16'),
(18, 1, 6, '2021-01-04 04:59:52', '2021-01-04 04:59:52'),
(20, 1, 1, '2021-01-04 06:19:59', '2021-01-04 06:19:59'),
(21, 5, 5, '2021-01-04 06:20:09', '2021-01-04 06:20:09'),
(23, 4, 4, '2021-01-05 04:05:01', '2021-01-05 04:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

DROP TABLE IF EXISTS `user_profiles`;
CREATE TABLE IF NOT EXISTS `user_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_profiles_user_id_unique` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_followers`
--
ALTER TABLE `user_followers`
  ADD CONSTRAINT `user_followers_follower_id_foreign` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_followers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
