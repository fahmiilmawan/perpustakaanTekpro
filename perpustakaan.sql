-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 11, 2023 at 11:46 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_terbit` int NOT NULL,
  `stok` int NOT NULL,
  `pengarang_id` bigint UNSIGNED NOT NULL,
  `penerbit_id` bigint UNSIGNED NOT NULL,
  `rak_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `tahun_terbit`, `stok`, `pengarang_id`, `penerbit_id`, `rak_id`, `created_at`, `updated_at`) VALUES
(6, 'Sunt.', 2015, 4, 3, 4, 1, '2023-06-25 15:10:37', '2023-06-25 15:10:37'),
(7, 'Voluptas placeat.', 1974, 10, 2, 5, 1, '2023-06-25 15:10:37', '2023-06-25 15:10:37'),
(9, 'Quia.', 2020, 2, 9, 2, 1, '2023-06-25 15:11:57', '2023-06-25 15:11:57'),
(10, 'Architecto ad.', 2017, 10, 2, 7, 1, '2023-06-25 15:11:57', '2023-06-25 15:11:57'),
(11, 'Magnam quibusdam.', 1974, 9, 7, 3, 1, '2023-06-25 15:11:57', '2023-06-25 15:11:57'),
(13, 'Eaque.', 1977, 8, 8, 5, 1, '2023-06-25 15:12:15', '2023-06-25 15:12:15'),
(14, 'Tempore error.', 1978, 8, 6, 9, 1, '2023-06-25 15:12:15', '2023-06-25 15:12:15'),
(16, 'Expedita.', 1977, 4, 8, 7, 1, '2023-06-25 15:13:30', '2023-06-25 15:13:30'),
(18, 'Aut omnis.', 2016, 2, 4, 10, 1, '2023-06-25 15:15:46', '2023-06-25 15:15:46'),
(20, 'Perferendis eum.', 2019, 4, 6, 4, 1, '2023-06-25 15:15:46', '2023-06-25 15:15:46'),
(21, 'Rerum molestiae.', 1972, 8, 6, 8, 1, '2023-06-25 15:15:46', '2023-06-25 15:15:46'),
(22, 'Blanditiis et.', 2009, 3, 5, 2, 1, '2023-06-25 15:15:46', '2023-06-25 15:15:46'),
(23, 'Cupiditate.', 2005, 6, 6, 3, 1, '2023-06-25 15:15:46', '2023-06-25 15:15:46'),
(24, 'Animi.', 1978, 9, 5, 2, 1, '2023-06-25 15:15:46', '2023-06-25 15:15:46'),
(25, 'Omnis doloribus.', 2012, 6, 9, 9, 1, '2023-06-25 15:15:46', '2023-06-25 15:15:46'),
(27, 'Aa', 2019, 10, 6, 4, 1, '2023-06-27 03:22:01', '2023-06-27 03:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_24_111428_create_raks_table', 1),
(6, '2023_06_24_115259_create_penerbit_table', 1),
(7, '2023_06_24_115501_create_pengarangs_table', 1),
(8, '2023_06_24_120841_create_bukus_table', 1),
(9, '2023_06_24_121317_create_pinjams_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(2, 'Sallie Metz DDS', '2023-06-25 15:02:31', '2023-06-25 15:02:31'),
(3, 'Dr. Kyler Gutmann', '2023-06-25 15:02:31', '2023-06-25 15:02:31'),
(4, 'Ms. Eva McDermott DDS', '2023-06-25 15:02:31', '2023-06-25 15:02:31'),
(5, 'Prof. Sherman Lang', '2023-06-25 15:02:31', '2023-06-25 15:02:31'),
(6, 'Quinton Leffler', '2023-06-25 15:02:31', '2023-06-25 15:02:31'),
(7, 'Jammie Carroll', '2023-06-25 15:02:31', '2023-06-25 15:02:31'),
(8, 'Zackary Turcotte', '2023-06-25 15:02:31', '2023-06-25 15:02:31'),
(9, 'Amparo Ziemann', '2023-06-25 15:02:31', '2023-06-25 15:02:31'),
(10, 'Dr. Shyanne Sauer', '2023-06-25 15:02:31', '2023-06-25 15:02:31'),
(11, 'Orval Bahringer', '2023-06-25 15:02:31', '2023-06-25 15:02:31'),
(12, 'Aa', '2023-06-27 03:22:40', '2023-06-27 03:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `pengarang`
--

CREATE TABLE `pengarang` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengarang`
--

INSERT INTO `pengarang` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(2, 'Ardith Howe', '2023-06-25 15:00:23', '2023-06-25 15:00:23'),
(3, 'Dr. Dashawn Gusikowski', '2023-06-25 15:00:23', '2023-06-25 15:00:23'),
(4, 'Ms. Daniela Carroll V', '2023-06-25 15:00:23', '2023-06-25 15:00:23'),
(5, 'Jayson Rice', '2023-06-25 15:00:23', '2023-06-25 15:00:23'),
(6, 'Kaitlyn Fahey', '2023-06-25 15:00:23', '2023-06-25 15:00:23'),
(7, 'Mr. Dawson Greenfelder Sr.', '2023-06-25 15:00:23', '2023-06-25 15:00:23'),
(8, 'Maiya Leannon', '2023-06-25 15:00:23', '2023-06-25 15:00:23'),
(9, 'Dina Emmerich', '2023-06-25 15:00:23', '2023-06-25 15:00:23'),
(10, 'Edmond Considine', '2023-06-25 15:00:23', '2023-06-25 15:00:23'),
(11, 'Clementine Bechtelar', '2023-06-25 15:00:23', '2023-06-25 15:00:23'),
(12, 'Aa', '2023-06-27 03:28:31', '2023-06-27 03:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id` bigint UNSIGNED NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `status_pengembalian` tinyint(1) NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `buku_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`id`, `tanggal_pinjam`, `tanggal_pengembalian`, `status_pengembalian`, `deskripsi`, `user_id`, `buku_id`, `created_at`, `updated_at`) VALUES
(9, '2023-06-09', '2023-06-11', 0, 'qwe', 1, 7, '2023-06-26 02:42:25', '2023-06-26 02:42:25'),
(10, '2023-06-27', '2023-06-28', 1, 'q', 2, 6, '2023-06-26 22:34:50', '2023-06-26 22:49:56'),
(11, '2023-06-27', '2023-06-28', 0, 'q', 2, 6, '2023-06-26 22:34:58', '2023-06-26 22:34:58'),
(12, '2023-06-27', '2023-07-04', 1, 'Harap dikembalikan sesuai tanggal pengembalian, Apabila melebihi dari tanggal pengembalian akan dikenakan denda', 1, 11, '2023-06-27 01:13:06', '2023-06-27 01:13:06'),
(13, '2023-06-27', '2023-07-04', 0, 'Harap dikembalikan sesuai tanggal pengembalian, Apabila melebihi dari tanggal pengembalian akan dikenakan denda', 2, 24, '2023-06-27 01:14:05', '2023-06-27 01:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `rak`
--

CREATE TABLE `rak` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_rak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi_rak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rak`
--

INSERT INTO `rak` (`id`, `nama_rak`, `lokasi_rak`, `created_at`, `updated_at`) VALUES
(1, 'A', 'Jauh', '2023-06-24 07:45:58', '2023-06-24 07:45:58'),
(2, 'B', 'Dekat', '2023-06-27 03:50:25', '2023-06-27 03:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fahmi Ilmawan', 'admin@gmail.com', '2023-06-24 07:42:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'N1qYRSO8LuQFoTJNUGWqVFfavEWWkQ4jJCzNxz1HyJgAHAFuvcLoVhd8vplB', '2023-06-24 07:42:32', '2023-06-24 07:42:32'),
(2, 'user', 'user@gmail.com', '2023-06-24 08:03:52', '$2y$10$jGPo54l7pQL7Iblh49RH9u3xU3u.qmrUhnF0ttUIRp44VU1WWT0Ba', 0, 'FqJw1FEBs96nAt8JUSB7kJimpdN0RVb86nDMTK5Rcbqh0tZXUj267Ac5ArHM', '2023-06-24 08:03:52', '2023-06-24 08:42:26'),
(3, 'Jeffry Erdman', 'jkuvalis@example.org', '2023-06-25 15:22:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'q9GYPOMjnV', '2023-06-25 15:22:09', '2023-06-25 15:22:09'),
(4, 'Prof. Katheryn Lang', 'lionel21@example.org', '2023-06-25 15:22:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'PtRHzgEJAU', '2023-06-25 15:22:09', '2023-06-25 15:22:09'),
(5, 'Samantha Corwin', 'claudie10@example.net', '2023-06-25 15:22:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '0Hcqoj7Oih', '2023-06-25 15:22:09', '2023-06-25 15:22:09'),
(6, 'Prof. William Harber DDS', 'qkertzmann@example.com', '2023-06-25 15:22:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'gEMJtpI9bf', '2023-06-25 15:22:09', '2023-06-25 15:22:09'),
(7, 'Prof. Delpha Kihn PhD', 'jschiller@example.com', '2023-06-25 15:22:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '11y7uaWGfE', '2023-06-25 15:22:09', '2023-06-25 15:22:09'),
(8, 'Pierre Hills', 'qschoen@example.com', '2023-06-25 15:22:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '5E0RKjwrL2', '2023-06-25 15:22:09', '2023-06-25 15:22:09'),
(9, 'Prof. Gregory Daniel Sr.', 'huels.jayden@example.com', '2023-06-25 15:22:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, '0a8eNttfVP', '2023-06-25 15:22:09', '2023-06-25 15:22:09'),
(10, 'Prof. Elroy Kerluke', 'rogelio.wilkinson@example.org', '2023-06-25 15:22:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'SqTkmRjbjZ', '2023-06-25 15:22:09', '2023-06-25 15:22:09'),
(11, 'Ms. Lottie Stanton', 'lexi17@example.com', '2023-06-25 15:22:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'c3wn47augf', '2023-06-25 15:22:09', '2023-06-25 15:22:09'),
(12, 'Arlene Stokes', 'morgan.schaefer@example.com', '2023-06-25 15:22:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'lh2tEUrOmt', '2023-06-25 15:22:09', '2023-06-25 15:22:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buku_pengarang_id_foreign` (`pengarang_id`),
  ADD KEY `buku_penerbit_id_foreign` (`penerbit_id`),
  ADD KEY `buku_rak_id_foreign` (`rak_id`);

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
-- Indexes for table `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengarang`
--
ALTER TABLE `pengarang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pinjam_user_id_foreign` (`user_id`),
  ADD KEY `pinjam_buku_id_foreign` (`buku_id`);

--
-- Indexes for table `rak`
--
ALTER TABLE `rak`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pengarang`
--
ALTER TABLE `pengarang`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rak`
--
ALTER TABLE `rak`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_penerbit_id_foreign` FOREIGN KEY (`penerbit_id`) REFERENCES `penerbit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buku_pengarang_id_foreign` FOREIGN KEY (`pengarang_id`) REFERENCES `pengarang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buku_rak_id_foreign` FOREIGN KEY (`rak_id`) REFERENCES `rak` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD CONSTRAINT `pinjam_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pinjam_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
