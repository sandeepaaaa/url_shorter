-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2023 at 04:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `url_shoter`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_13_040640_create_short_urls_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('test@gmail.com', '$2y$10$J/j3qjp9Pm9AYdKcSsE.tOHvnUMxAMDaCcw7YWV5/OTpWkcQOIQD6', '2023-10-13 03:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `short_urls`
--

CREATE TABLE `short_urls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `original_url` text NOT NULL,
  `short_url` varchar(255) DEFAULT NULL,
  `visits` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `short_urls`
--

INSERT INTO `short_urls` (`id`, `user_id`, `original_url`, `short_url`, `visits`, `created_at`, `updated_at`) VALUES
(1, NULL, 'https://www.youtube.com/watch?v=4m4hV_XZw98&list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV&index=3', NULL, '0', '2023-10-12 23:53:01', '2023-10-12 23:53:01'),
(10000001, NULL, 'https://www.youtube.com/watch?v=4m4hV_XZw98&list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV&index=3', '2', '0', '2023-10-12 23:58:43', '2023-10-12 23:58:43'),
(10000002, NULL, 'https://www.youtube.com/watch?v=4m4hV_XZw98&list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV&index=3', '5yc1u', '0', '2023-10-13 00:06:21', '2023-10-13 00:06:21'),
(10000004, NULL, 'https://www.youtube.com/watch?v=4m4hV_XZw98&list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV&index=3', '5yc1w', '0', '2023-10-13 00:32:48', '2023-10-13 00:32:48'),
(10000005, NULL, 'https://www.youtube.com/watch?v=4m4hV_XZw98&list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV&index=3', '5yc1x', '1', '2023-10-13 00:49:47', '2023-10-13 00:49:49'),
(10000006, NULL, 'https://www.youtube.com/watch?v=4m4hV_XZw98&list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV&index=3', '5yc1y', '0', '2023-10-13 01:21:03', '2023-10-13 01:21:03'),
(10000007, 1, 'http://localhost/phpmyadmin/index.php?route=/sql&pos=0&db=url_shoter&table=users', '5yc1z', '0', '2023-10-13 01:23:52', '2023-10-13 01:23:52'),
(10000008, 1, 'http://localhost/phpmyadmin/index.php?route=/sql&pos=0&db=url_shoter&table=users', '5yc20', '2', '2023-10-13 01:42:42', '2023-10-13 01:43:38'),
(10000009, 1, 'https://www.youtube.com/watch?v=4m4hV_XZw98&list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV&index=3', '5yc21', '0', '2023-10-13 01:54:12', '2023-10-13 01:54:12'),
(10000010, NULL, 'https://www.youtube.com/watch?v=4m4hV_XZw98&list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV&index=3', '5yc22', '0', '2023-10-13 03:05:18', '2023-10-13 03:05:18'),
(10000011, 2, 'https://www.youtube.com/watch?v=4m4hV_XZw98&list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV&index=3', '5yc23', '0', '2023-10-13 03:19:55', '2023-10-13 03:19:55'),
(10000012, 2, 'https://www.youtube.com/watch?v=4m4hV_XZw98&list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV&index=3', '5yc24', '0', '2023-10-13 04:24:19', '2023-10-13 04:24:19'),
(10000013, NULL, 'https://www.youtube.com/watch?v=4m4hV_XZw98&list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV&index=3', '5yc25', '0', '2023-10-13 05:04:10', '2023-10-13 05:04:10'),
(10000014, NULL, 'http://localhost/phpmyadmin/index.php?route=/sql&pos=0&db=url_shoter&table=users', '5yc26', '0', '2023-10-13 05:47:09', '2023-10-13 05:47:09'),
(10000015, 3, 'http://localhost/phpmyadmin/index.php?route=/sql&pos=0&db=url_shoter&table=users', '5yc27', '2', '2023-10-13 05:50:16', '2023-10-13 05:50:29'),
(10000016, 5, 'https://www.youtube.com/watch?v=RUGm1Lwc55s&t=30s', '5yc28', '1', '2023-10-13 07:29:19', '2023-10-13 07:29:27'),
(10000017, 5, 'https://www.youtube.com/watch?v=RUGm1Lwc55s&t=30s', '5yc29', '1', '2023-10-13 07:30:45', '2023-10-13 07:30:49'),
(10000018, 5, 'https://www.youtube.com/watch?v=RUGm1Lwc55s&t=30s', '5yc2a', '1', '2023-10-13 07:31:17', '2023-10-13 07:31:19'),
(10000019, 5, 'https://www.youtube.com/watch?v=4m4hV_XZw98&list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV&index=3', '5yc2b', '3', '2023-10-13 07:32:10', '2023-10-13 07:32:24'),
(10000020, 5, 'kkkkkk', '5yc2c', '1', '2023-10-13 08:01:19', '2023-10-13 08:01:44'),
(10000021, 5, 'kkkkkk', '5yc2d', '0', '2023-10-13 08:04:50', '2023-10-13 08:04:50'),
(10000022, 5, 'kkkkkk', '5yc2e', '0', '2023-10-13 08:05:57', '2023-10-13 08:05:57'),
(10000023, 5, 'https://www.youtube.com/watch?v=4m4hV_XZw98&list=PL6tf8fRbavl0FL-vGyykIeiPyOoQvDLoV&index=3', '5yc2f', '0', '2023-10-13 08:26:54', '2023-10-13 08:26:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test 1', 'test@gmail.com', NULL, '$2y$10$.akWCPq7juxdusahX2pLMuKUk0IPW7wWMSoPneE9muPQ/S5LN9LQG', NULL, '2023-10-13 01:21:59', '2023-10-13 01:21:59'),
(2, 'sandeepa', 'sandeepa@gmail.com', NULL, '$2y$10$IgOa/22lD1PEdQmkF0JIWe6EduChqCuPxfWKXoqZ9Z.JP8fPlTh7O', '4MamuuzvchZLuXmnbzjflYlrdZ9vFcVgKTsBU3NsAR93Ux6Pf7Ey0fP4ouOD', '2023-10-13 03:09:20', '2023-10-13 03:09:20'),
(3, 'sandeepa', 'sandeepajayatunga@gmail.com', NULL, '$2y$10$1uGLbxjupdF7SYescmJ/du8eB/3csOXxLo2kOTLQdfuc7nRbba742', NULL, '2023-10-13 05:48:05', '2023-10-13 05:48:05'),
(4, 'sandeepa', 'sandeepajayatungaii@gmail.com', NULL, '$2y$10$.chVrYqrYsxGkXYPkW970uCLqJecQhVwXn8gX.b.zY6LBO.nfniwW', NULL, '2023-10-13 06:28:05', '2023-10-13 06:28:05'),
(5, 'test2', 'test2@gmail.com', NULL, '$2y$10$AwvC6TCwCugEX/uAiZMuVOLg3pjjePLWbdCi/E3RifPaZVAQfHeF2', NULL, '2023-10-13 07:29:06', '2023-10-13 07:29:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `short_urls`
--
ALTER TABLE `short_urls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `short_urls_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `short_urls`
--
ALTER TABLE `short_urls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000024;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `short_urls`
--
ALTER TABLE `short_urls`
  ADD CONSTRAINT `short_urls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
