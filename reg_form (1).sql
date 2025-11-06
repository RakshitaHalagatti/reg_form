-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 06, 2025 at 05:42 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reg_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
CREATE TABLE IF NOT EXISTS `registrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` int DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `search_key` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `birth_time` time DEFAULT NULL,
  `appointment_datetime` datetime DEFAULT NULL,
  `birth_month` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birth_week` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fav_color` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agree_terms` tinyint(1) DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `resume_file` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_general_ci,
  `hidden_token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `full_name`, `password_hash`, `email`, `age`, `phone`, `website`, `search_key`, `birth_date`, `birth_time`, `appointment_datetime`, `birth_month`, `birth_week`, `fav_color`, `agree_terms`, `gender`, `rating`, `profile_image`, `resume_file`, `notes`, `hidden_token`, `created_at`) VALUES
(7, 'rakshi', '$2y$10$IvPvBZvn6E/V2aClPOz26.2MjLPWGaLoFVVlkOoN9Ocmk8AxJfQNO', 'kav@gmail.com', 20, '0785937927', 'https://www.linkedin.com/in/kavya-angadi-94a783303', 'java', '2025-11-29', '13:40:00', '2025-11-06 18:35:00', '2025-04', '2025-W46', '0', 1, 'Female', 5, '1762416421_Screenshot 2025-10-05 202008.png', '1762416421_Rakshita H_20250828_121708_0000.pdf', 'Hello world', 'REGFORM_TOKEN_2025', '2025-11-06 08:07:01'),
(8, 'rakshu', '$2y$10$08C7JMltm1bwU9JRRhiE5uyyuTh80OACUrcN28E9emu6fKgkBCMs6', 'kav@gmail.com', 20, '0785937927', 'https://www.linkedin.com/in/kavya-angadi-94a783303', 'java', '0000-00-00', '00:00:00', '0000-00-00 00:00:00', '', '', '0', 0, '', 5, '1762434339_Screenshot 2025-10-05 202008.png', '1762434339_Registration Page kaviiii.pdf', '', 'REGFORM_TOKEN_2025', '2025-11-06 13:05:39'),
(6, 'Rakshita', '$2y$10$vjRliRRwtBjHBsmoWTjSwOaghPbIBjt7pp0QfPESz3R6DftD6zpWm', 'rghalagatti@gmail.com', 20, '0785937927', 'https://www.linkedin.com/in/kavya-angadi-94a783303', 'java', '2025-11-21', '09:12:00', '2025-11-04 09:08:00', '2025-08', '2025-W48', '0', 1, 'Female', 5, '1762400392_Screenshot 2025-10-05 202008.png', '1762400392_Rakshita H_20250828_121708_0000.pdf', 'hii', 'REGFORM_TOKEN_2025', '2025-11-06 03:39:52');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
