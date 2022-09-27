-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 08, 2022 at 06:53 AM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `testtable`
--

CREATE TABLE `testtable` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `testtable`
--

INSERT INTO `testtable` (`id`, `title`, `description`) VALUES
(1, 'test1', 'test2'),
(2, 'REALTEST', 'test22222');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'vvd', 'svvd@vvd.vvd', '$argon2id$v=19$m=65536,t=4,p=1$UXpjZERlbDRsUE9mUGZERA$oRxne59PrzbEu/F3hx9lm4CW52taimR7kQp3zru7VPU', '2022-09-25 05:44:34', NULL),
(2, 'ccc', 'ccc@ccc.ccc', '$argon2id$v=19$m=65536,t=4,p=1$aGdhY3duaUMxT1ZpbnFJTA$ikcUREBHnI5L4oxU6ajClsGBAu2d/2kNaaIR7de/E3I', '2022-09-25 05:45:35', NULL),
(3, 'bfd', 'bfd@bfd.bfd', '$argon2id$v=19$m=65536,t=4,p=1$TC96NG14T1hDUWlucVE0ZA$6gpCFOKn4UWuVMsIOWrIu2/id97mTylgyrp+wAYSwMs', '2022-09-27 04:39:27', NULL),
(4, 'sds', 'sds@sds.sds', '$argon2id$v=19$m=65536,t=4,p=1$Y0RadGhzeGUwbi44eElGMw$Smb+yoNAlqTVIuHWi6Xh7CUsCfLg71vuiEvCOyqIufw', '2022-09-27 04:40:31', NULL),
(5, 'htr', 'htr@htr.htr', '$argon2id$v=19$m=65536,t=4,p=1$TVlZUWxVM2JUTkF0aUhtYw$3G4Anrl2cmP6Hc/pfmDQWgyzWxdX8FGYsYmd8y3JZ14', '2022-09-27 05:57:28', NULL),
(6, 'sdz', 'sdz@sdz.sdz', '$argon2id$v=19$m=65536,t=4,p=1$OTRBQ2pjZUxsQXVwTi90ag$VUKuuFnB3WPe/EuanwBcerdUX1RVLShP2U2LHOvAlSg', '2022-09-28 01:25:21', NULL),
(7, 'zzx', 'zzx@zzx.zzx', '$argon2id$v=19$m=65536,t=4,p=1$UExuaS4vMXdIUmhTWC5JZg$Y6P0Z3vsd42nj+MVxDWc2j+d7lGJAOCmA3KhN3qXgqc', '2022-09-28 01:28:14', NULL),
(8, 'vxcx', 'vxcx@vxcx.vxcx', '$argon2id$v=19$m=65536,t=4,p=1$UC9rQkxvbnF0b3hKSVRnLg$f60SkXRdvCTXeE+SV9zjcg0Jyv8VgNeGuWqyFwTVW6E', '2022-09-28 01:28:49', NULL),
(9, 'vvbb', 'vvbb@vvbb.vvbb', '$argon2id$v=19$m=65536,t=4,p=1$OHVZamsvaUIyYXQ0LmJSdg$g8TIOFMsfQZCkaO7RgHe9BmSWW7/vkdWYhyDpcuxI6M', '2022-09-28 01:29:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_s`
--

CREATE TABLE `user_s` (
  `id` int NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `user_s`
--

INSERT INTO `user_s` (`id`, `name`, `login`, `password`) VALUES
(99991, 'vasya', 'vasya123', NULL),
(99992, 'petya', 'petya123', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE `workers` (
  `id` int NOT NULL,
  `name` varchar(256) NOT NULL,
  `age` int NOT NULL,
  `salary` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `workers`
--

INSERT INTO `workers` (`id`, `name`, `age`, `salary`) VALUES
(1, 'Дима', 23, 400),
(2, 'Петя', 25, 500),
(3, 'Вася', 23, 500),
(4, 'Коля', 30, 1000),
(5, 'Иван', 27, 500),
(6, 'Кирилл', 28, 1000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `testtable`
--
ALTER TABLE `testtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `email_unique` (`email`) USING BTREE;

--
-- Indexes for table `user_s`
--
ALTER TABLE `user_s`
  ADD UNIQUE KEY `ID` (`id`);

--
-- Indexes for table `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `testtable`
--
ALTER TABLE `testtable`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_s`
--
ALTER TABLE `user_s`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99993;

--
-- AUTO_INCREMENT for table `workers`
--
ALTER TABLE `workers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
