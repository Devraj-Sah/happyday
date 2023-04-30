-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2023 at 07:20 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `happyday`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_customuser`
--

CREATE TABLE `account_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `apply_role_type` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `role` smallint(5) UNSIGNED DEFAULT NULL CHECK (`role` >= 0),
  `current_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `c_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_customuser`
--

INSERT INTO `account_customuser` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `sex`, `phone`, `email`, `username`, `apply_role_type`, `image`, `role`, `current_address`, `permanent_address`, `c_id`) VALUES
(1, 'pbkdf2_sha256$390000$uxfpBKLAVp81wwQMCr68sG$ToSmzkvfZwRNE9FuxkEzVo04v6ZW7bOzw7Bicb8AOSo=', '2023-04-30 04:37:14.462512', 0, 'Admin', '', 0, 1, '2023-02-24 08:25:14.290423', NULL, '9829936530', 'admin@gmail.com', 'Devraj', NULL, 'user/profile/admin-sign-laptop-icon-stock-vector-166205404.jpg', 2, NULL, NULL, 160062);

-- --------------------------------------------------------

--
-- Table structure for table `account_customuser_groups`
--

CREATE TABLE `account_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_customuser_user_permissions`
--

CREATE TABLE `account_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 69);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add page type', 6, 'add_pagetype'),
(22, 'Can change page type', 6, 'change_pagetype'),
(23, 'Can delete page type', 6, 'delete_pagetype'),
(24, 'Can view page type', 6, 'view_pagetype'),
(25, 'Can add blog', 7, 'add_blog'),
(26, 'Can change blog', 7, 'change_blog'),
(27, 'Can delete blog', 7, 'delete_blog'),
(28, 'Can view blog', 7, 'view_blog'),
(29, 'Can add contact us', 8, 'add_contactus'),
(30, 'Can change contact us', 8, 'change_contactus'),
(31, 'Can delete contact us', 8, 'delete_contactus'),
(32, 'Can view contact us', 8, 'view_contactus'),
(33, 'Can add excel file upload', 9, 'add_excelfileupload'),
(34, 'Can change excel file upload', 9, 'change_excelfileupload'),
(35, 'Can delete excel file upload', 9, 'delete_excelfileupload'),
(36, 'Can view excel file upload', 9, 'view_excelfileupload'),
(37, 'Can add global settings', 10, 'add_globalsettings'),
(38, 'Can change global settings', 10, 'change_globalsettings'),
(39, 'Can delete global settings', 10, 'delete_globalsettings'),
(40, 'Can view global settings', 10, 'view_globalsettings'),
(41, 'Can add navigation', 11, 'add_navigation'),
(42, 'Can change navigation', 11, 'change_navigation'),
(43, 'Can delete navigation', 11, 'delete_navigation'),
(44, 'Can view navigation', 11, 'view_navigation'),
(45, 'Can add products', 12, 'add_products'),
(46, 'Can change products', 12, 'change_products'),
(47, 'Can delete products', 12, 'delete_products'),
(48, 'Can view products', 12, 'view_products'),
(49, 'Can add shipping', 13, 'add_shipping'),
(50, 'Can change shipping', 13, 'change_shipping'),
(51, 'Can delete shipping', 13, 'delete_shipping'),
(52, 'Can view shipping', 13, 'view_shipping'),
(53, 'Can add team', 14, 'add_team'),
(54, 'Can change team', 14, 'change_team'),
(55, 'Can delete team', 14, 'delete_team'),
(56, 'Can view team', 14, 'view_team'),
(57, 'Can add wishlist', 15, 'add_wishlist'),
(58, 'Can change wishlist', 15, 'change_wishlist'),
(59, 'Can delete wishlist', 15, 'delete_wishlist'),
(60, 'Can view wishlist', 15, 'view_wishlist'),
(61, 'Can add order', 16, 'add_order'),
(62, 'Can change order', 16, 'change_order'),
(63, 'Can delete order', 16, 'delete_order'),
(64, 'Can view order', 16, 'view_order'),
(65, 'Can add home navigation', 17, 'add_homenavigation'),
(66, 'Can change home navigation', 17, 'change_homenavigation'),
(67, 'Can delete home navigation', 17, 'delete_homenavigation'),
(68, 'Can view home navigation', 17, 'view_homenavigation'),
(69, 'Can add user', 18, 'add_customuser'),
(70, 'Can change user', 18, 'change_customuser'),
(71, 'Can delete user', 18, 'delete_customuser'),
(72, 'Can view user', 18, 'view_customuser'),
(73, 'Can add access attempt', 19, 'add_accessattempt'),
(74, 'Can change access attempt', 19, 'change_accessattempt'),
(75, 'Can delete access attempt', 19, 'delete_accessattempt'),
(76, 'Can view access attempt', 19, 'view_accessattempt'),
(77, 'Can add access log', 20, 'add_accesslog'),
(78, 'Can change access log', 20, 'change_accesslog'),
(79, 'Can delete access log', 20, 'delete_accesslog'),
(80, 'Can view access log', 20, 'view_accesslog'),
(81, 'Can add access failure', 21, 'add_accessfailurelog'),
(82, 'Can change access failure', 21, 'change_accessfailurelog'),
(83, 'Can delete access failure', 21, 'delete_accessfailurelog'),
(84, 'Can view access failure', 21, 'view_accessfailurelog'),
(85, 'Can add review', 22, 'add_review'),
(86, 'Can change review', 22, 'change_review'),
(87, 'Can delete review', 22, 'delete_review'),
(88, 'Can view review', 22, 'view_review');

-- --------------------------------------------------------

--
-- Table structure for table `axes_accessattempt`
--

CREATE TABLE `axes_accessattempt` (
  `id` int(11) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime(6) NOT NULL,
  `get_data` longtext NOT NULL,
  `post_data` longtext NOT NULL,
  `failures_since_start` int(10) UNSIGNED NOT NULL CHECK (`failures_since_start` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `axes_accessfailurelog`
--

CREATE TABLE `axes_accessfailurelog` (
  `id` int(11) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime(6) NOT NULL,
  `locked_out` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `axes_accesslog`
--

CREATE TABLE `axes_accesslog` (
  `id` int(11) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime(6) NOT NULL,
  `logout_time` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `axes_accesslog`
--

INSERT INTO `axes_accesslog` (`id`, `user_agent`, `ip_address`, `username`, `http_accept`, `path_info`, `attempt_time`, `logout_time`) VALUES
(1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/signup', '2023-02-24 08:25:15.145894', '2023-03-15 07:01:41.049102'),
(2, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-02-24 08:25:35.150231', '2023-03-15 07:01:41.049102'),
(3, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-01 05:28:42.271084', '2023-03-15 07:01:41.049102'),
(4, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-02 05:20:47.975137', '2023-03-15 07:01:41.049102'),
(5, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-03 04:35:24.628519', '2023-03-15 07:01:41.049102'),
(6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-08 05:23:22.789310', '2023-03-15 07:01:41.049102'),
(7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'dev@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/register', '2023-03-13 07:28:58.161070', '2023-03-29 08:44:09.583601'),
(8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-13 07:38:28.154194', '2023-03-15 07:01:41.049102'),
(9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-15 05:22:58.437992', '2023-03-15 07:01:41.049102'),
(10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-15 07:03:42.475176', '2023-03-15 07:05:49.903312'),
(11, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-15 07:08:58.651065', '2023-03-15 07:22:42.757077'),
(12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-15 07:22:50.219124', '2023-03-17 11:31:15.949017'),
(13, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-17 11:31:22.936708', '2023-03-29 11:14:27.050539'),
(14, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'dev@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-20 05:30:01.219308', '2023-03-29 08:44:09.583601'),
(15, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-20 06:43:41.232390', '2023-03-29 11:14:27.050539'),
(16, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-22 05:58:49.675698', '2023-03-29 11:14:27.050539'),
(17, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'dev@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-29 08:43:13.504285', '2023-03-29 08:44:09.583601'),
(18, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'dev@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-29 09:03:16.433948', '2023-03-29 11:00:09.255439'),
(19, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'dev@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-29 10:42:50.839233', '2023-03-29 11:00:09.255439'),
(20, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'dev@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-29 10:45:46.395898', '2023-03-29 11:00:09.255439'),
(21, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'dev@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-29 11:00:21.286162', '2023-03-31 06:59:32.141267'),
(22, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-29 11:01:47.683618', '2023-03-29 11:14:27.050539'),
(23, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'dev@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-29 11:14:35.228916', '2023-03-31 06:59:32.141267'),
(24, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-29 11:26:40.679344', '2023-03-31 06:56:35.097528'),
(25, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'user@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-29 11:41:21.632033', NULL),
(26, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'dev@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 06:59:09.668379', '2023-03-31 06:59:32.141267'),
(27, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 07:00:10.547550', '2023-03-31 07:07:21.716129'),
(28, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 07:00:36.575187', '2023-03-31 07:07:21.716129'),
(29, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/register', '2023-03-31 07:40:35.696046', '2023-03-31 07:41:12.817157'),
(30, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 07:41:23.848072', '2023-03-31 07:46:28.022161'),
(31, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 07:46:57.759847', '2023-03-31 07:47:02.723563'),
(32, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 07:47:49.006033', '2023-03-31 07:47:52.948897'),
(33, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 07:48:14.563311', '2023-03-31 07:48:21.859868'),
(34, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 07:49:10.577480', '2023-03-31 07:49:45.011005'),
(35, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 07:49:52.276291', '2023-03-31 07:52:33.136744'),
(36, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 07:52:39.307677', '2023-03-31 07:53:21.009319'),
(37, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 07:53:26.970521', '2023-03-31 07:53:46.792556'),
(38, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 07:53:52.996814', '2023-03-31 07:54:30.353783'),
(39, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 07:54:38.497381', '2023-03-31 07:56:11.983703'),
(40, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 07:56:17.614929', '2023-03-31 07:59:14.418275'),
(41, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 07:59:56.391229', '2023-03-31 08:00:41.071980'),
(42, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 08:00:46.089313', '2023-03-31 08:17:16.382619'),
(43, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 08:17:48.390145', '2023-03-31 08:18:57.708005'),
(44, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 08:21:44.981074', '2023-03-31 08:21:49.098761'),
(45, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 08:24:53.561060', '2023-03-31 08:25:09.510512'),
(46, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'cid@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 08:25:22.592239', '2023-03-31 08:25:41.406771'),
(47, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 08:29:25.212535', '2023-03-31 09:00:15.938359'),
(48, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 08:31:43.014768', '2023-03-31 09:00:15.938359'),
(49, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 09:01:02.809802', '2023-03-31 09:01:08.913875'),
(50, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 09:03:01.320389', '2023-03-31 09:04:08.914491'),
(51, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 09:04:29.516812', '2023-03-31 09:04:49.016480'),
(52, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 09:05:28.443040', '2023-03-31 09:07:14.740959'),
(53, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 09:07:18.958276', '2023-03-31 09:07:24.028477'),
(54, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-03-31 09:27:29.240380', '2023-04-03 06:00:16.094016'),
(55, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'attempt@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 09:49:34.847628', '2023-03-31 09:49:47.459927'),
(56, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'attempt@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 09:51:43.938410', '2023-03-31 09:51:52.101199'),
(57, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'attempt@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 10:33:53.287225', '2023-03-31 10:37:02.887433'),
(58, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'attempt@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 10:33:56.629947', '2023-03-31 10:37:02.887433'),
(59, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'attempt@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 10:33:58.619883', '2023-03-31 10:37:02.887433'),
(60, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'attempt@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 10:36:01.527295', '2023-03-31 10:37:02.887433'),
(61, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'attempt@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 10:36:07.312585', '2023-03-31 10:37:02.887433'),
(62, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'attempt@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 10:36:11.423683', '2023-03-31 10:37:02.887433'),
(63, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'attempt@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 10:36:14.086832', '2023-03-31 10:37:02.887433'),
(64, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'attempt@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 10:36:58.390337', '2023-03-31 10:37:02.887433'),
(65, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'attempt@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-03-31 10:37:05.708735', '2023-03-31 10:37:20.399607'),
(66, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-04-03 06:49:06.827437', '2023-04-03 06:51:03.066542'),
(67, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-04-03 06:51:15.977134', '2023-04-03 07:08:34.387950'),
(68, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-04-03 07:21:26.574235', '2023-04-03 07:26:41.419909'),
(69, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-04-03 07:26:58.978722', '2023-04-03 07:28:14.219561'),
(70, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-04-03 07:28:20.319242', '2023-04-03 07:30:43.722483'),
(71, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/login', '2023-04-03 07:30:49.386343', '2023-04-05 06:37:11.433199'),
(72, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-04-05 06:30:41.151735', '2023-04-05 06:37:11.433199'),
(73, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'staff@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-04-05 06:37:17.663698', NULL),
(74, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-04-05 06:38:01.016684', NULL),
(75, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-04-23 08:56:02.390495', NULL),
(76, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', '127.0.0.1', 'admin@gmail.com', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7', '/account/login', '2023-04-30 04:37:14.467510', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(18, 'account', 'customuser'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(19, 'axes', 'accessattempt'),
(21, 'axes', 'accessfailurelog'),
(20, 'axes', 'accesslog'),
(4, 'contenttypes', 'contenttype'),
(7, 'root', 'blog'),
(8, 'root', 'contactus'),
(9, 'root', 'excelfileupload'),
(10, 'root', 'globalsettings'),
(17, 'root', 'homenavigation'),
(11, 'root', 'navigation'),
(16, 'root', 'order'),
(6, 'root', 'pagetype'),
(12, 'root', 'products'),
(22, 'root', 'review'),
(13, 'root', 'shipping'),
(14, 'root', 'team'),
(15, 'root', 'wishlist'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-02-24 06:23:47.334839'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-02-24 06:23:47.448769'),
(3, 'auth', '0001_initial', '2023-02-24 06:23:47.795366'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-02-24 06:23:47.877690'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-02-24 06:23:47.894680'),
(6, 'auth', '0004_alter_user_username_opts', '2023-02-24 06:23:47.911672'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-02-24 06:23:47.932659'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-02-24 06:23:47.937655'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-02-24 06:23:47.961641'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-02-24 06:23:47.976631'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-02-24 06:23:47.992623'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-02-24 06:23:48.025600'),
(13, 'auth', '0011_update_proxy_permissions', '2023-02-24 06:23:48.043586'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-02-24 06:23:48.061580'),
(15, 'account', '0001_initial', '2023-02-24 06:23:48.538544'),
(16, 'account', '0002_alter_customuser_role', '2023-02-24 06:23:48.570573'),
(17, 'admin', '0001_initial', '2023-02-24 06:23:48.910495'),
(18, 'admin', '0002_logentry_remove_auto_add', '2023-02-24 06:23:48.967345'),
(19, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-24 06:23:49.019313'),
(20, 'axes', '0001_initial', '2023-02-24 06:23:49.098266'),
(21, 'axes', '0002_auto_20151217_2044', '2023-02-24 06:23:49.332117'),
(22, 'axes', '0003_auto_20160322_0929', '2023-02-24 06:23:49.385087'),
(23, 'axes', '0004_auto_20181024_1538', '2023-02-24 06:23:49.444050'),
(24, 'axes', '0005_remove_accessattempt_trusted', '2023-02-24 06:23:49.483028'),
(25, 'axes', '0006_remove_accesslog_trusted', '2023-02-24 06:23:49.520003'),
(26, 'axes', '0007_alter_accessattempt_unique_together', '2023-02-24 06:23:49.592967'),
(27, 'axes', '0008_accessfailurelog', '2023-02-24 06:23:49.723876'),
(28, 'root', '0001_initial', '2023-02-24 06:23:49.757861'),
(29, 'root', '0002_blog_contactus_excelfileupload_globalsettings_and_more', '2023-02-24 06:23:50.876158'),
(30, 'root', '0003_products_long_contents', '2023-02-24 06:23:50.943118'),
(31, 'root', '0004_products_most_ordered_products_most_viewed', '2023-02-24 06:23:51.051051'),
(32, 'root', '0005_blog_main_title', '2023-02-24 06:23:51.098033'),
(33, 'root', '0006_globalsettings_configure_email', '2023-02-24 06:23:51.143992'),
(34, 'root', '0007_globalsettings_tiktok_link', '2023-02-24 06:23:51.184967'),
(35, 'root', '0008_alter_globalsettings_site_contact', '2023-02-24 06:23:51.318884'),
(36, 'root', '0009_products_color', '2023-02-24 06:23:51.392838'),
(37, 'root', '0010_products_star', '2023-02-24 06:23:51.460793'),
(38, 'sessions', '0001_initial', '2023-02-24 06:23:51.528754'),
(39, 'root', '0011_products_image5_products_image6_products_image7_and_more', '2023-03-01 07:43:31.609565'),
(40, 'account', '0003_customuser_current_address_and_more', '2023-03-13 07:24:04.336352'),
(41, 'root', '0012_globalsettings_image10_globalsettings_image11_and_more', '2023-03-13 08:53:21.755543'),
(42, 'root', '0013_products_link', '2023-03-13 10:23:33.633679'),
(43, 'root', '0014_order_email', '2023-03-15 09:16:21.616610'),
(44, 'root', '0015_review', '2023-03-15 11:08:22.244052'),
(45, 'root', '0016_review_created_at_review_updated_at', '2023-03-15 11:09:18.937956'),
(46, 'root', '0017_alter_review_product', '2023-03-17 05:43:14.324744'),
(47, 'account', '0004_customuser_c_id', '2023-03-31 07:09:16.344181'),
(48, 'account', '0005_alter_customuser_role', '2023-04-05 06:31:44.710765'),
(49, 'account', '0006_alter_customuser_role', '2023-04-05 06:32:44.471164'),
(50, 'root', '0018_alter_order_product', '2023-04-23 09:15:08.265189'),
(51, 'root', '0019_alter_review_product', '2023-04-23 09:18:14.711684'),
(52, 'root', '0020_alter_wishlist_user', '2023-04-23 09:18:41.385041'),
(53, 'root', '0021_alter_wishlist_product_alter_wishlist_user', '2023-04-23 09:19:15.622406'),
(54, 'root', '0022_products_sub_category', '2023-04-23 10:40:50.791089');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0uklsxi51fhyi8nzqhz0bgo8chgzw5pl', '.eJxVjMEOwiAQRP-FsyEshO7i0bvf0GxhK1UDSWlPjf9um_Sgx5n3ZjbV87rkfm0y91NSVwXq8tsNHF9SDpCeXB5Vx1qWeRr0oeiTNn2vSd630_07yNzyvjYxeoBx7AjRUmBy6NkAhIDeekvCgkDkKYgVNnuiIWBI6LyzBjr1-QK2LTZ0:1pXbN1:yOaMLES3ShT6lqd1FbUTBz8UQjBX8mcxDrS_9EB3KCc', '2023-03-16 05:20:47.986130'),
('0xkatexrq00z6j8xyqq2rignwdslp9im', '.eJxVjMEOwiAQRP-FsyEshO7i0bvf0GxhK1UDSWlPjf9um_Sgx5n3ZjbV87rkfm0y91NSVwXq8tsNHF9SDpCeXB5Vx1qWeRr0oeiTNn2vSd630_07yNzyvjYxeoBx7AjRUmBy6NkAhIDeekvCgkDkKYgVNnuiIWBI6LyzBjr1-QK2LTZ0:1pi8k6:At_iq7almJ-0nEujeBYCit9tROAw_NcbofTrIb7eCfg', '2023-04-14 07:00:10.551192'),
('1z5etrvff80mmbn1mcpnan1xzkcoekfk', '.eJxVjMEOwiAQRP-FsyEshO7i0bvf0GxhK1UDSWlPjf9um_Sgx5n3ZjbV87rkfm0y91NSVwXq8tsNHF9SDpCeXB5Vx1qWeRr0oeiTNn2vSd630_07yNzyvjYxeoBx7AjRUmBy6NkAhIDeekvCgkDkKYgVNnuiIWBI6LyzBjr1-QK2LTZ0:1psyoE:DoEzT4kF06gX7lwbcfC9EZ2AZ0OqLLoCgHzPiRsT3YQ', '2023-05-14 04:37:14.477502'),
('2brdxbipq8vhj7636pc4o1jvjt47g8q6', '.eJxVjsEKwjAQRP8lZwnZlHQ3Hr37DWGTbE1VWmjak_jvplBEjzPzZpiXCrytJWxVljBmdVagTr9e5PSQaQ_ynafbrNM8rcsY9Y7oI636Omd5Xg72b6BwLa1tUnIAw9AToiXP1KFjA-A9OussCQsCkSMvVtg0RdGjz9i5zhro2-j3I7w_Wv86Og:1psKAX:S2Kp0sAxLhStQZj0sZ_1BSAC_KJzL5GFZXjoPgUV1sk', '2023-05-12 09:13:33.910352'),
('30fo6sqjwjoa55xm9mho9jqzehzlyz3v', '.eJxVjMEOwiAQRP-FsyEshO7i0bvf0GxhK1UDSWlPjf9um_Sgx5n3ZjbV87rkfm0y91NSVwXq8tsNHF9SDpCeXB5Vx1qWeRr0oeiTNn2vSd630_07yNzyvjYxeoBx7AjRUmBy6NkAhIDeekvCgkDkKYgVNnuiIWBI6LyzBjr1-QK2LTZ0:1pXx8e:czUXXpzM6b95wmLRB1InFM4UVhS9DOto7j3qx0kSE3g', '2023-03-17 04:35:24.636515'),
('8z80ex4v4pyp1egpg3myo8fkyq9j8y3h', '.eJxVjEEOwiAQRe_C2pDKDAFcuvcMzcwAUjWQlHbVeHdt0oVu_3vvb2qkdSnj2tM8TlFdlFOn341JnqnuID6o3puWVpd5Yr0r-qBd31pMr-vh_h0U6uVbiwOwg1iDZ6JoABlBDHsKQ7YJgzXBQ3SJI2ZIhtlbERoyEBpCAvX-ANzxOBs:1phUB7:aJ3i4jbXOkfMcBsmLp9zIF4JaQ8fGuhjwfQvaBH0JNI', '2023-04-12 11:41:21.636029'),
('aesli5mjyyk99ziqrcfvzuryotm6t6s5', '.eJxVjMEOwiAQRP-FsyEshO7i0bvf0GxhK1UDSWlPjf9um_Sgx5n3ZjbV87rkfm0y91NSVwXq8tsNHF9SDpCeXB5Vx1qWeRr0oeiTNn2vSd630_07yNzyvjYxeoBx7AjRUmBy6NkAhIDeekvCgkDkKYgVNnuiIWBI6LyzBjr1-QK2LTZ0:1perUn:L9cWT2aTVf8EehZcG4F2pUUwqAzf8YTNhZBI-74iby4', '2023-04-05 05:58:49.687155'),
('g00koamhawu0dan979000jb3pfygmrln', '.eJxVjMEOwiAQRP-FsyEshO7i0bvf0GxhK1UDSWlPjf9um_Sgx5n3ZjbV87rkfm0y91NSVwXq8tsNHF9SDpCeXB5Vx1qWeRr0oeiTNn2vSd630_07yNzyvjYxeoBx7AjRUmBy6NkAhIDeekvCgkDkKYgVNnuiIWBI6LyzBjr1-QK2LTZ0:1pjEeP:CtN_Bc-0seqKmQczxxuTYBxvjv5uvlaXnwfwUO0Ka54', '2023-04-17 07:30:49.389630'),
('j2uj7w5oieeilk5gj90qdz5fotwylgc5', '.eJxVjMEOwiAQRP-FsyEshO7i0bvf0GxhK1UDSWlPjf9um_Sgx5n3ZjbV87rkfm0y91NSVwXq8tsNHF9SDpCeXB5Vx1qWeRr0oeiTNn2vSd630_07yNzyvjYxeoBx7AjRUmBy6NkAhIDeekvCgkDkKYgVNnuiIWBI6LyzBjr1-QK2LTZ0:1pVTOZ:B7DBdxa7Fe3Pwnjjfa_QFIp3XPqvhRUYp-k4korAY88', '2023-03-10 08:25:35.153229'),
('lh9h9opaxj55t71qv02fi79bo5omwvt4', '.eJxVjMEOwiAQRP-FsyEshO7i0bvf0GxhK1UDSWlPjf9um_Sgx5n3ZjbV87rkfm0y91NSVwXq8tsNHF9SDpCeXB5Vx1qWeRr0oeiTNn2vSd630_07yNzyvjYxeoBx7AjRUmBy6NkAhIDeekvCgkDkKYgVNnuiIWBI6LyzBjr1-QK2LTZ0:1pbclI:rFRBX1n00jBMVaX0le9xV55b-yV3zulSJiK-GW5wx9c', '2023-03-27 07:38:28.163869'),
('lnyb7mettwjuzio5jo2zx77jbhfhh98h', '.eJxVjMEOwiAQRP-FsyEshO7i0bvf0GxhK1UDSWlPjf9um_Sgx5n3ZjbV87rkfm0y91NSVwXq8tsNHF9SDpCeXB5Vx1qWeRr0oeiTNn2vSd630_07yNzyvjYxeoBx7AjRUmBy6NkAhIDeekvCgkDkKYgVNnuiIWBI6LyzBjr1-QK2LTZ0:1pjwmP:J3EBFMtDGoetl8hMB4lFIGlAwuuh7h3O4jpD_S2TkAU', '2023-04-19 06:38:01.023680'),
('m1zs7rbuuwabtrj9q1kgxob21o7pasnp', '.eJxVjMEOwiAQRP-FsyEshO7i0bvf0GxhK1UDSWlPjf9um_Sgx5n3ZjbV87rkfm0y91NSVwXq8tsNHF9SDpCeXB5Vx1qWeRr0oeiTNn2vSd630_07yNzyvjYxeoBx7AjRUmBy6NkAhIDeekvCgkDkKYgVNnuiIWBI6LyzBjr1-QK2LTZ0:1pd8Is:LWP2YFAKfyGlsIjgVcRYWcxV2k5aPgLxtrBWP03ldVg', '2023-03-31 11:31:22.941705'),
('o1lf8bshib45e6p7unopyrbo25zdylmf', '.eJxVjMEOwiAQRP-FsyEshO7i0bvf0GxhK1UDSWlPjf9um_Sgx5n3ZjbV87rkfm0y91NSVwXq8tsNHF9SDpCeXB5Vx1qWeRr0oeiTNn2vSd630_07yNzyvjYxeoBx7AjRUmBy6NkAhIDeekvCgkDkKYgVNnuiIWBI6LyzBjr1-QK2LTZ0:1pe9F7:FXO6hQoVVezVv31aZdPxNF7ZNvvjIjb6S-aur89K-hY', '2023-04-03 06:43:41.237436'),
('qqtr1m4bt670q3k5sjjcloytnruzg42u', '.eJxVjMEOwiAQRP-FsyEshO7i0bvf0GxhK1UDSWlPjf9um_Sgx5n3ZjbV87rkfm0y91NSVwXq8tsNHF9SDpCeXB5Vx1qWeRr0oeiTNn2vSd630_07yNzyvjYxeoBx7AjRUmBy6NkAhIDeekvCgkDkKYgVNnuiIWBI6LyzBjr1-QK2LTZ0:1pXF18:TWYP9fr9uYZP0xeUOlhSPQxrXLHlmzWFjB8ozE-HdDg', '2023-03-15 05:28:42.303096');

-- --------------------------------------------------------

--
-- Table structure for table `root_blog`
--

CREATE TABLE `root_blog` (
  `id` bigint(20) NOT NULL,
  `title` varchar(2000) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `discription` longtext DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `banner_image` varchar(100) DEFAULT NULL,
  `icon_image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `main_title` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `root_contactus`
--

CREATE TABLE `root_contactus` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `read_unread` tinyint(1) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `root_contactus`
--

INSERT INTO `root_contactus` (`id`, `name`, `email`, `subject`, `message`, `read_unread`, `updated_at`) VALUES
(2, 'review', 're@gmail.com', 'Review of DS-2CD2020F-I 2mega pixel Product', 'Specifically, the error message says that you\'re trying to delete a record from the root_products table, but there are records in the root_order table that reference the record you\'re trying to delete via a foreign key constraint. Deleting the record from root_products would therefore violate the foreign key constraint and is not allowed.\r\n\r\nTo resolve this issue, you\'ll need to remove the foreign key constraint between the two tables, or update the records in the root_order table so that they no longer reference the record you\'re trying to delete.\r\n\r\nIf you want to remove the foreign key constraint, you\'ll need to modify the schema of the database to remove the constraint. This will depend on the database you\'re using, but in general, you can use a SQL command such as ALTER TABLE to modify the table\'s schema.\r\n\r\nIf you want to update the records in the root_order table, you\'ll need to update the foreign key values in the table to reference a different record in the root_products table. You may need to modify your application logic to ensure that you don\'t attempt to delete a record from root_products if there are still references to the record in the ro', 0, '2023-03-15 11:58:54.336323'),
(3, 'devraj', 'devraj@gmail.com', 'Review of DS-7104HGHI-F1 4-CHANNEL1 Product', 'jhku', 0, '2023-03-17 11:08:49.063278'),
(4, 'admin', 'dev@gmail.com', 'Review of DS-7104HGHI-F1 4-CHANNEL1 Product', 'sdfg', 0, '2023-03-17 11:09:14.447853'),
(5, 'asdf', 'asdf@dasdf', 'Review of DS-7104HGHI-F1 4-CHANNEL1 Product', 'asdfasdf', 0, '2023-03-17 11:09:37.795505'),
(7, 'devraj', 'devraj.sah13@gmail.com', 'Why i didn;t get my product', 'i Hate you very musch', 0, '2023-03-22 06:28:03.923768'),
(8, 'admin', 'dev@gmail.com', 'Review of asdf Product', 'ok', 0, '2023-04-05 09:10:35.545614');

-- --------------------------------------------------------

--
-- Table structure for table `root_excelfileupload`
--

CREATE TABLE `root_excelfileupload` (
  `id` bigint(20) NOT NULL,
  `excel_file_upload` varchar(100) NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `root_globalsettings`
--

CREATE TABLE `root_globalsettings` (
  `id` bigint(20) NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `site_name_nepali` varchar(255) DEFAULT NULL,
  `site_email` varchar(254) NOT NULL,
  `site_contact` varchar(255) DEFAULT NULL,
  `site_contact_nepali` bigint(20) DEFAULT NULL,
  `site_address` varchar(255) NOT NULL,
  `site_address_nepali` varchar(255) DEFAULT NULL,
  `fb_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `other_link` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_keyword` varchar(200) DEFAULT NULL,
  `page_discription` longtext DEFAULT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `configure_email` varchar(254) DEFAULT NULL,
  `tiktok_link` varchar(255) DEFAULT NULL,
  `Image10` varchar(100) DEFAULT NULL,
  `Image11` varchar(100) DEFAULT NULL,
  `Image12` varchar(100) DEFAULT NULL,
  `Image13` varchar(100) DEFAULT NULL,
  `Image4` varchar(100) DEFAULT NULL,
  `Image5` varchar(100) DEFAULT NULL,
  `Image6` varchar(100) DEFAULT NULL,
  `Image7` varchar(100) DEFAULT NULL,
  `Image8` varchar(100) DEFAULT NULL,
  `Image9` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `root_globalsettings`
--

INSERT INTO `root_globalsettings` (`id`, `site_name`, `site_name_nepali`, `site_email`, `site_contact`, `site_contact_nepali`, `site_address`, `site_address_nepali`, `fb_link`, `twitter_link`, `linkedin_link`, `other_link`, `page_title`, `page_keyword`, `page_discription`, `image1`, `image2`, `image3`, `created_at`, `updated_at`, `configure_email`, `tiktok_link`, `Image10`, `Image11`, `Image12`, `Image13`, `Image4`, `Image5`, `Image6`, `Image7`, `Image8`, `Image9`) VALUES
(1, 'Happy Day', '', 'happyday@examplemail.com', '+977-1-4372908, +977-9712345678', 0, 'Kathmandu, Nepal', '', 'https://www.facebook.com/HikvisionNepalOfficial', 'https://twitter.com/', 'https://www.instagram.com/', 'https://www.youtube.com/', 'Happy Day', '', '', '', 'global/logo/favicon.png', '', '2023-04-28 08:00:20.523484', '2023-04-28 08:00:20.523484', NULL, 'https://www.tiktok.com/en/', 'ads/home-banner2_eE4iFgm.png', 'ads/home-banner2_4yUChEj.jpg', '', '', 'ads/home-banner1.png', 'ads/home-banner2.jpg', 'ads/home-banner2.png', 'ads/home-banner11.png', 'ads/home-banner4.jpg', 'ads/detail-page-banner.png');

-- --------------------------------------------------------

--
-- Table structure for table `root_homenavigation`
--

CREATE TABLE `root_homenavigation` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_page_id` int(11) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `page_type` varchar(255) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `short_description` varchar(3000) DEFAULT NULL,
  `long_contents` longtext DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `banner_image1` varchar(100) DEFAULT NULL,
  `banner_image2` varchar(100) DEFAULT NULL,
  `icon_image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `root_homenavigation`
--

INSERT INTO `root_homenavigation` (`id`, `name`, `parent_page_id`, `caption`, `status`, `page_type`, `title`, `short_description`, `long_contents`, `meta_title`, `keyword`, `position`, `banner_image1`, `banner_image2`, `icon_image`, `created_at`, `updated_at`, `parent_id`) VALUES
(3, 'slider', 0, 'Slider', 1, 'group', '', '', '', '', '', 1, '', '', '', '2023-03-01 05:31:02.405671', '2023-03-01 05:31:02.405671', NULL),
(4, 'slider1', 3, 'Slider1', 1, 'sale', '', '', '<div>\r\n<div><span style=\"font-size: 26px; color: #000000;\">TOP BRANDS</span></div>\r\n</div>\r\n<div>\r\n<div><span style=\"color: #000000;\"><strong><span style=\"font-size: 62px;\">New Collections</span></strong></span></div>\r\n<div>\r\n<div>\r\n<div><span style=\"font-size: 18px; color: #000000;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></div>\r\n</div>\r\n</div>\r\n</div>', '', '', 1, 'home/banner1/slider2.png', '', '', '2023-03-01 05:55:25.544161', '2023-03-01 05:55:25.544161', 3),
(5, 'slider2', 3, 'Slider2', 1, 'sale', '', '', '<div>\r\n<div><span style=\"font-size: 26px; color: #000000;\">TOP BRANDS</span></div>\r\n</div>\r\n<div>\r\n<div><span style=\"color: #000000;\"><strong><span style=\"font-size: 62px;\">New Collections</span></strong></span></div>\r\n<div>\r\n<div>\r\n<div><span style=\"font-size: 18px; color: #000000;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</span></div>\r\n</div>\r\n</div>\r\n</div>', '', '', 2, 'home/banner1/slider1.png', '', '', '2023-03-01 05:55:52.928795', '2023-03-01 05:55:52.928795', 3),
(6, 'clients', 0, 'Clients', 1, 'group', '', '', '', '', '', 2, '', '', '', '2023-03-02 09:04:04.330634', '2023-03-02 09:04:04.330634', NULL),
(7, 'Happy_Customers', 0, 'Happy Customers', 1, 'group', '', '', '', '', '', 3, '', '', '', '2023-03-02 09:07:21.530460', '2023-03-02 09:07:21.530460', NULL),
(8, 'John Doe', 7, 'ABC Company', 1, 'normal', '', '', '<p><em>\"</em> Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer. Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat.<em>\"</em></p>', '', '', 1, 'home/banner1/member1.png', '', '', '2023-03-02 09:09:27.857809', '2023-03-02 09:09:27.857809', 7),
(9, 'Stephen Doe', 7, 'Xperia Designs', 1, 'normal', '', '', '<p><em>\"</em>Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer. Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat.<em>\"</em></p>', '', '', 2, 'home/banner1/member2.png', '', '', '2023-03-02 09:09:58.611716', '2023-03-02 09:09:58.611716', 7),
(10, 'Saraha Smith', 7, 'Data Scientist', 1, 'normal', '', '', '<p><em>\"</em>Vtae sodales aliq uam morbi non sem lacus port mollis. Nunc condime tum metus eud molest sed consectetuer. Sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat.<em>\"</em></p>', '', '', 3, 'home/banner1/member3.png', '', '', '2023-03-02 09:10:39.693149', '2023-03-02 09:10:39.693149', 7),
(11, 'client1', 6, '', 1, 'blog', '', '', '', '', '', 1, 'home/banner1/algolia.svg', '', '', '2023-03-02 11:47:09.251323', '2023-03-02 11:47:09.251323', 6),
(12, 'client2', 6, '', 1, 'blog', '', '', '', '', '', 2, 'home/banner1/slack-icon.svg', '', '', '2023-03-02 11:47:23.642461', '2023-03-02 11:47:23.642461', 6),
(13, 'client3', 6, '', 1, 'blog', '', '', '', '', '', 3, 'home/banner1/todoist.svg', '', '', '2023-03-02 11:47:36.675253', '2023-03-02 11:47:36.675253', 6),
(14, 'client4', 6, '', 1, 'blog', '', '', '', '', '', 4, 'home/banner1/typeform.svg', '', '', '2023-03-02 11:47:53.614067', '2023-03-02 11:47:53.614067', 6),
(15, 'client5', 6, '', 1, 'blog', '', '', '', '', '', 5, 'home/banner1/vimeo.svg', '', '', '2023-03-02 11:48:12.799784', '2023-03-02 11:48:12.799784', 6),
(16, 'client6', 6, '', 1, 'blog', '', '', '', '', '', 6, 'home/banner1/yahoo.svg', '', '', '2023-03-02 11:48:26.141261', '2023-03-02 11:48:26.141261', 6),
(17, 'client7', 6, '', 1, 'blog', '', '', '', '', '', 7, 'home/banner1/todoist_iCDk6u2.svg', '', '', '2023-03-02 11:49:15.770886', '2023-03-02 11:49:15.770886', 6),
(18, 'client8', 6, '', 1, 'blog', '', '', '', '', '', 8, 'home/banner1/yahoo_l4uiZ3e.svg', '', '', '2023-03-02 11:49:31.169517', '2023-03-02 11:49:31.169517', 6),
(19, 'client9', 6, '', 1, 'blog', '', '', '', '', '', 9, 'home/banner1/vimeo_SjlfteE.svg', '', '', '2023-03-02 11:49:46.480166', '2023-03-02 11:49:46.480166', 6);

-- --------------------------------------------------------

--
-- Table structure for table `root_navigation`
--

CREATE TABLE `root_navigation` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_page_id` int(11) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `page_type` varchar(255) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `short_description` varchar(3000) DEFAULT NULL,
  `long_contents` longtext DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `banner_image1` varchar(100) DEFAULT NULL,
  `banner_image2` varchar(100) DEFAULT NULL,
  `icon_image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `root_navigation`
--

INSERT INTO `root_navigation` (`id`, `name`, `parent_page_id`, `caption`, `status`, `page_type`, `title`, `short_description`, `long_contents`, `meta_title`, `keyword`, `position`, `banner_image1`, `banner_image2`, `icon_image`, `created_at`, `updated_at`, `parent_id`) VALUES
(1, 'New-Arrival', 0, 'New Arrival', 1, 'product', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '<div class=\"big-text\">BIG SALE</div>\r\n<div class=\"excerpt hidden-sm hidden-md\">Save up to 39% off</div>', '', '', 1, 'navigation/banner1/cat-banner-1.jpg', '', '', '2023-03-03 06:38:29.036098', '2023-03-03 06:38:29.036098', NULL),
(2, 'partners', 0, 'Partners', 1, 'group', '', '<h4>Laptop/PC Repair</h4>\r\n<p>Do you want to fix your laptop or computer right away but don\'t want to get scammed? If this is a problem for you, we will take care of it. We will do everything possible to resolve your issue as quickly as possible while maintaining complete transparency.</p>', '<h4>Upgrade hardware/Software</h4>\r\n<p>Data recovery is the process of gaining access to and retrieving data from digital media that is inaccessible by conventional means. This service is required in a variety of circumstances, including user error and deletion, as well as mechanical and physical damage to your storage device. If you are going through this problem, stop worrying and contact us immediately.</p>', '', '', 2, 'navigation/banner1/0f391-aboutus_image2.jpg', 'navigation/banner2/0f391-aboutus_image2.jpg', '', '2023-04-07 07:23:11.128582', '2023-04-07 07:23:11.128582', NULL),
(3, 'product-categories', 0, 'Categories', 0, 'group', '', '', '', '', '', 3, '', '', '', '2023-04-28 08:59:47.010565', '2023-04-28 08:59:47.011568', NULL),
(4, 'analog-turbo-hd-dvrs', 3, 'Analog Turbo HD DVRs', 1, 'sale_group', '', '', '', '', '', 1, '', '', '', '2023-04-23 10:51:28.908820', '2023-04-23 10:51:28.908820', 3),
(5, 'HD1080p-EXIR-&-True-WDR-Series', 3, 'HD1080p EXIR & True WDR Series', 1, 'sale_group', '', '', '', '', '', 2, '', '', '', '2023-04-23 10:51:38.775894', '2023-04-23 10:51:38.775894', 3),
(6, 'IP-Network-NVR', 3, 'IP Network NVR', 1, 'sale_group', '', '', '', '', '', 3, '', '', '', '2023-04-23 10:51:49.320901', '2023-04-23 10:51:49.320901', 3),
(7, 'IP-Cameras', 3, 'IP Cameras', 1, 'sale_group', '', '', '', '', '', 4, '', '', '', '2023-04-23 10:33:37.511420', '2023-04-23 10:33:37.511420', 3),
(8, 'PTZ-IP-Camera', 3, 'PTZ IP Camera', 1, 'sale_group', '', '', '', '', '', 5, '', '', '', '2023-04-23 10:52:00.303307', '2023-04-23 10:52:00.303307', 3),
(9, 'POE-Switch', 3, 'POE Switch', 1, 'sale_group', '', '', '', '', '', 6, '', '', '', '2023-04-23 10:52:10.267929', '2023-04-23 10:52:10.267929', 3),
(10, 'Hard-Disc', 3, 'Hard Disc', 1, 'sale_group', '', '', '', '', '', 7, '', '', '', '2023-04-23 10:52:19.778487', '2023-04-23 10:52:19.779489', 3),
(11, 'Moniter', 3, 'Moniter', 1, 'sale_group', '', '', '', '', '', 8, '', '', '', '2023-04-23 10:52:32.211994', '2023-04-23 10:52:32.211994', 3),
(12, 'Video-Door-phone', 3, 'Video Door phone', 1, 'sale_group', '', '', '', '', '', 9, '', '', '', '2023-04-23 10:52:41.713785', '2023-04-23 10:52:41.713785', 3),
(13, 'about-us', 0, 'About-Us', 0, 'contact', '', '', '', '', '', 4, '', '', '', '2023-03-22 06:12:34.861568', '2023-03-22 06:12:34.861568', NULL),
(26, 'sub_cat', 7, 'Sub Category', 1, 'sale', '', '', '', '', '', 1, '', '', '', '2023-04-23 10:36:04.869994', '2023-04-23 10:36:04.869994', 7),
(27, 'test_sub_cat', 7, 'Test Sub Cat', 1, 'sale', '', '', '', '', '', 2, '', '', '', '2023-04-24 06:18:35.744719', '2023-04-24 06:18:35.744719', 7),
(28, 'about-us-description', 13, 'Welcome To Shop', 1, 'normal', '', '', '<p><span>Nulla auctor mauris ut dui luctus semper. In hac habitasse platea dictumst. Duis pellentesque ligula a risus suscipit dignissim. Nunc non nisl lacus. Integer pharetra lacinia dapibus. Donec eu dolor dui, vel posuere mauris.</span><br /><br /><span>Pellentesque semper congue sodales. In consequat, metus eget con sequat ornare, augue dolor blandit purus, vitae lacinia nisi tellus in erat. Nulla ac justo eget massa aliquet sodales. Maecenas mattis male suada sem, in fringilla massa dapibus quis. Suspendisse aliquam leo id neque auctor molestie. Etiam at nulla tellus.</span><br /><br /><span>Nulla auctor mauris ut dui luctus semper. In hac habitasse platea dictumst. Duis pellentesque ligula a risus suscipit dignissim.</span></p>', '', '', 1, 'navigation/banner1/about-us1.jpg', '', '', '2023-04-30 04:55:08.609692', '2023-04-30 04:55:08.609692', 13),
(29, 'our-members', 13, 'Our Member', 1, 'group', '', '', '<p><span>Consectetur adipiscing elit. Donec pellentesque venenatis elit, quis aliquet mauris malesuada vel. Donec vitae libero dolor, eget dapibus justo.</span><br /><span>Aenean facilisis aliquet feugiat. Suspendisse lacinia congue est ac semper. Nulla ut elit magna, vitae volutpat magna.</span></p>', '', '', 2, '', '', '', '2023-04-30 04:55:50.968916', '2023-04-30 04:55:50.969915', 13),
(30, 'asdfasdf', 29, 'asdfasdfasdf', 1, 'team', 'asdf', '', '', '', '', 1, '', '', '', '2023-04-30 05:02:48.849521', '2023-04-30 05:02:48.849521', 29);

-- --------------------------------------------------------

--
-- Table structure for table `root_order`
--

CREATE TABLE `root_order` (
  `id` bigint(20) NOT NULL,
  `product_details` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_detail` varchar(300) NOT NULL,
  `shipping_address` varchar(2055) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `pdc` varchar(10) DEFAULT NULL,
  `get_shipping_address_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `root_order`
--

INSERT INTO `root_order` (`id`, `product_details`, `user_id`, `user_detail`, `shipping_address`, `created_at`, `updated_at`, `phone`, `pdc`, `get_shipping_address_id`, `product_id`, `email`) VALUES
(2, '1', 1, 'devraj', 'Janakpur ,shipping', '2023-03-15 09:03:45.697023', '2023-03-15 09:03:45.697023', '9829936530', 'd', 2, 5, NULL),
(3, '1', 1, 'Devraj', 'None', '2023-03-15 09:25:27.325923', '2023-03-15 09:25:27.325923', '9829936530', 'c', 3, 1, NULL),
(5, '4', 1, 'Devraj', 'Janakpur', '2023-03-17 06:51:21.504923', '2023-03-31 08:54:06.910574', '9829936530', 'd', 5, 1, NULL),
(6, '2', 1, 'Devraj', 'Janakpur ,shipping', '2023-03-17 06:55:34.164899', '2023-03-17 06:55:34.164899', '9829936530', 'c', 6, 1, NULL),
(7, '0', 10, 'test', 'test', '2023-03-31 07:41:02.331184', '2023-03-31 07:41:02.331184', '9829936530', 'p', 7, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `root_pagetype`
--

CREATE TABLE `root_pagetype` (
  `id` bigint(20) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `root_pagetype`
--

INSERT INTO `root_pagetype` (`id`, `page_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'group', 1, NULL, NULL),
(2, 'normal', 1, NULL, NULL),
(3, 'product', 1, NULL, NULL),
(4, 'sale', 1, NULL, NULL),
(5, 'blog', 1, NULL, NULL),
(6, 'contact', 1, NULL, NULL),
(7, 'partners', 0, NULL, NULL),
(8, 'sale_group', 1, NULL, NULL),
(9, 'team', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `root_products`
--

CREATE TABLE `root_products` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `discount_type` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `title` varchar(2000) DEFAULT NULL,
  `discription` longtext DEFAULT NULL,
  `meta_title` varchar(300) DEFAULT NULL,
  `keyword` varchar(2000) DEFAULT NULL,
  `brand` varchar(2000) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL,
  `image4` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `ftn` varchar(50) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `long_contents` longtext DEFAULT NULL,
  `most_ordered` bigint(20) DEFAULT NULL,
  `most_viewed` bigint(20) DEFAULT NULL,
  `color` varchar(255) NOT NULL,
  `star` varchar(50) NOT NULL,
  `image5` varchar(100) DEFAULT NULL,
  `image6` varchar(100) DEFAULT NULL,
  `image7` varchar(100) DEFAULT NULL,
  `image8` varchar(100) DEFAULT NULL,
  `image9` varchar(100) DEFAULT NULL,
  `link` varchar(300) DEFAULT NULL,
  `sub_category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `root_products`
--

INSERT INTO `root_products` (`id`, `name`, `price`, `discount_type`, `discount`, `quantity`, `vendor`, `payment_type`, `size`, `title`, `discription`, `meta_title`, `keyword`, `brand`, `status`, `image1`, `image2`, `image3`, `image4`, `created_at`, `updated_at`, `ftn`, `category_id`, `long_contents`, `most_ordered`, `most_viewed`, `color`, `star`, `image5`, `image6`, `image7`, `image8`, `image9`, `link`, `sub_category_id`) VALUES
(1, 'DS-7104HGHI-F1 4-CHANNEL1', '1500', '25%', '375', 1, 'door_phone', '', '', '', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"313\" height=\"111\">\r\n<tbody>\r\n<tr height=\"35\">\r\n<td height=\"35\" style=\"width: 312px;\">16 Turbo HD<span>/AHD/Analog interface</span><span>&nbsp;input,<br />16-ch video&amp;1-ch audio input,<br />1 SATA interface,<br />1280&times;720P: 25(P)/30(N) fps/ch,<br />mini 1U case</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '', '', 1, 'uploads/download_1.jpeg', 'uploads/download.jpeg', 'uploads/images_1.jpeg', 'uploads/images_2.jpeg', '2023-03-17 11:09:37.784023', '2023-03-17 11:09:37.784023', 'n', 4, '', 0, NULL, '', '3', 'uploads/download_b7ZBijS.jpeg', 'uploads/images.jpeg', 'uploads/images_6.jpeg', 'uploads/images_5.jpeg', 'uploads/images_3.jpeg', 'https://www.website.com/produt-link', NULL),
(4, 'DS-7108HQHI-F1/N 8-Channel', '2000', '15%', '300', 75, '', '', '', '', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"318\" height=\"83\">\r\n<tbody>\r\n<tr height=\"34\">\r\n<td height=\"34\" style=\"width: 317px;\">8 Turbo HD/AHD/Analog interface input,<br />8-ch video&amp;1-ch audio input,<br />1 SATA interface,<br />1920&times;1080P: 12 fps/ch</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '', '', 1, 'uploads/download.jpg', 'uploads/images_1_15tKjtw.jpeg', '', '', '2023-03-13 10:29:12.051207', '2023-03-13 10:29:12.051207', 'n', 4, '', 0, NULL, '', '0', '', '', '', '', '', 'https://www.website.com/produt-link', NULL),
(5, 'DS-7216HGHI-F1 16-Channel', '3000', '50%', '1500', 12, 'door_phone', '', '', '', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"331\" height=\"133\">\r\n<tbody>\r\n<tr height=\"39\">\r\n<td height=\"39\" style=\"width: 330px;\">16 Turbo HD<span>/AHD/Analog interface input,<br />16-ch video&amp;4-ch audio input,<br />1 SATA interface,<br />1280&times;720P: 25(P)/30(N) fps/ch,<br />260 1U case</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '', '', 1, 'uploads/DS-7216HGHI-F1.jpg', 'uploads/download_7.jpeg', '', '', '2023-03-13 10:28:12.469587', '2023-03-13 10:28:12.469587', 'n', 4, '', 0, NULL, '', '0', '', '', '', '', '', 'https://www.website.com/produt-link', NULL),
(6, 'asdf', '12321', '3%', '369.63', 0, 'door_phone', '', '', 'asdf', '', '', '', '', 1, 'uploads/WhatsApp_Image_2023-03-10_at_9.19.00_PM.jpeg', 'uploads/WhatsApp_Image_2023-03-10_at_9.18.59_PM.jpeg', '', '', '2023-04-05 09:10:35.523626', '2023-04-05 09:10:35.523626', 'n', 4, '', 0, NULL, '', '1', '', '', '', '', '', 'https://www.website.com/produt-link', NULL),
(7, 'test1', '330', '', '', 0, '', '', '', 'Tets 2', '', '', '', '', 1, 'uploads/2.png', 'uploads/hand.png', '', '', '2023-04-24 10:03:44.946196', '2023-04-24 10:03:44.946196', 'n', 7, '', 0, NULL, '', '0', '', '', '', '', '', 'https://www.website.com/produt-link-test', 27);

-- --------------------------------------------------------

--
-- Table structure for table `root_review`
--

CREATE TABLE `root_review` (
  `id` bigint(20) NOT NULL,
  `star` varchar(50) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `root_review`
--

INSERT INTO `root_review` (`id`, `star`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(8, '22', 1, 1, '2023-03-17 11:09:37.790630', '2023-03-17 11:09:37.790630'),
(9, '2', 6, 1, '2023-04-05 09:10:35.538617', '2023-04-05 09:10:35.538617');

-- --------------------------------------------------------

--
-- Table structure for table `root_shipping`
--

CREATE TABLE `root_shipping` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `name` varchar(205) NOT NULL,
  `phone` varchar(205) NOT NULL,
  `email` varchar(205) NOT NULL,
  `shpping_address` varchar(2055) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `root_shipping`
--

INSERT INTO `root_shipping` (`id`, `user_id`, `name`, `phone`, `email`, `shpping_address`) VALUES
(1, '1', 'devraj', '9829936530', 'devraj.sah13@gmail.com', 'Janakpur ,shipping'),
(2, '1', 'devraj', '9829936530', 'devraj.sah13@gmail.com', 'Janakpur2 ,shipping'),
(3, '1', 'Devraj', '9829936530', 'admin@gmail.com', 'None'),
(4, '1', 'Devraj', '9829936530', 'admin@gmail.com', 'Janakpur ,shipping'),
(5, '1', 'Devraj', '9829936530', 'admin@gmail.com', 'Janakpur'),
(6, '1', 'Devraj', '9829936530', 'admin@gmail.com', 'Janakpur ,shipping'),
(7, '10', 'test', '9829936530', 'cid@gmail.com', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `root_team`
--

CREATE TABLE `root_team` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `long_contents` longtext DEFAULT NULL,
  `profile_picture` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `root_wishlist`
--

CREATE TABLE `root_wishlist` (
  `id` bigint(20) NOT NULL,
  `ishere` smallint(6) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `temp_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `root_wishlist`
--

INSERT INTO `root_wishlist` (`id`, `ishere`, `color`, `size`, `quantity`, `temp_id`, `product_id`, `user_id`) VALUES
(22, 2, NULL, NULL, 1, 806123, 5, NULL),
(26, 2, NULL, NULL, 4, 806123, 1, 1),
(27, 2, NULL, NULL, 2, 806123, 1, 1),
(28, 0, NULL, NULL, 12, 806123, 1, 1),
(33, 0, NULL, NULL, 1, 823340, 6, NULL),
(38, 0, NULL, NULL, 1, 422532, 1, NULL),
(39, 0, NULL, NULL, 1, 441178, 1, NULL),
(40, 0, NULL, NULL, 1, 886218, 1, NULL),
(41, 0, NULL, NULL, 3, 450541, 5, NULL),
(42, 0, NULL, NULL, 9, 876556, 4, NULL),
(44, 0, NULL, NULL, 1, 160062, 6, NULL),
(45, 0, NULL, NULL, 1, 160062, 1, NULL),
(47, 1, NULL, NULL, 1, 160062, 5, NULL),
(48, 0, NULL, NULL, 3, 160062, 7, 1),
(49, 1, NULL, NULL, 1, 160062, 7, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_customuser`
--
ALTER TABLE `account_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `account_customuser_groups`
--
ALTER TABLE `account_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_customuser_groups_customuser_id_group_id_7e51db7b_uniq` (`customuser_id`,`group_id`),
  ADD KEY `account_customuser_groups_group_id_2be9f6d7_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `account_customuser_user_permissions`
--
ALTER TABLE `account_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_customuser_user__customuser_id_permission_650e378f_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `account_customuser_u_permission_id_f4aec423_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `axes_accessattempt`
--
ALTER TABLE `axes_accessattempt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `axes_accessattempt_username_ip_address_user_agent_8ea22282_uniq` (`username`,`ip_address`,`user_agent`),
  ADD KEY `axes_accessattempt_ip_address_10922d9c` (`ip_address`),
  ADD KEY `axes_accessattempt_user_agent_ad89678b` (`user_agent`),
  ADD KEY `axes_accessattempt_username_3f2d4ca0` (`username`);

--
-- Indexes for table `axes_accessfailurelog`
--
ALTER TABLE `axes_accessfailurelog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `axes_accessfailurelog_user_agent_ea145dda` (`user_agent`),
  ADD KEY `axes_accessfailurelog_ip_address_2e9f5a7f` (`ip_address`),
  ADD KEY `axes_accessfailurelog_username_a8b7e8a4` (`username`);

--
-- Indexes for table `axes_accesslog`
--
ALTER TABLE `axes_accesslog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `axes_accesslog_ip_address_86b417e5` (`ip_address`),
  ADD KEY `axes_accesslog_user_agent_0e659004` (`user_agent`),
  ADD KEY `axes_accesslog_username_df93064b` (`username`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_account_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `root_blog`
--
ALTER TABLE `root_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `root_contactus`
--
ALTER TABLE `root_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `root_excelfileupload`
--
ALTER TABLE `root_excelfileupload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `root_globalsettings`
--
ALTER TABLE `root_globalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `root_homenavigation`
--
ALTER TABLE `root_homenavigation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `root_homenavigation_parent_id_ae7e4585_fk_root_homenavigation_id` (`parent_id`);

--
-- Indexes for table `root_navigation`
--
ALTER TABLE `root_navigation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `root_navigation_parent_id_84f5ff03_fk_root_navigation_id` (`parent_id`);

--
-- Indexes for table `root_order`
--
ALTER TABLE `root_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `root_order_get_shipping_address_id_7c9ba136_fk_root_shipping_id` (`get_shipping_address_id`),
  ADD KEY `root_order_product_id_b34059f1_fk_root_products_id` (`product_id`);

--
-- Indexes for table `root_pagetype`
--
ALTER TABLE `root_pagetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `root_products`
--
ALTER TABLE `root_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `root_products_category_id_47274a89_fk_root_navigation_id` (`category_id`),
  ADD KEY `root_products_sub_category_id_392c7c56_fk_root_navigation_id` (`sub_category_id`);

--
-- Indexes for table `root_review`
--
ALTER TABLE `root_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `root_review_product_id_01f6ef31_fk_root_products_id` (`product_id`),
  ADD KEY `root_review_user_id_45a63821_fk_account_customuser_id` (`user_id`);

--
-- Indexes for table `root_shipping`
--
ALTER TABLE `root_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `root_team`
--
ALTER TABLE `root_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `root_wishlist`
--
ALTER TABLE `root_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `root_wishlist_product_id_f2b33d49_fk_root_products_id` (`product_id`),
  ADD KEY `root_wishlist_user_id_15f797f8_fk_account_customuser_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_customuser`
--
ALTER TABLE `account_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `account_customuser_groups`
--
ALTER TABLE `account_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_customuser_user_permissions`
--
ALTER TABLE `account_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `axes_accessattempt`
--
ALTER TABLE `axes_accessattempt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `axes_accessfailurelog`
--
ALTER TABLE `axes_accessfailurelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `axes_accesslog`
--
ALTER TABLE `axes_accesslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `root_blog`
--
ALTER TABLE `root_blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `root_contactus`
--
ALTER TABLE `root_contactus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `root_excelfileupload`
--
ALTER TABLE `root_excelfileupload`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `root_globalsettings`
--
ALTER TABLE `root_globalsettings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `root_homenavigation`
--
ALTER TABLE `root_homenavigation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `root_navigation`
--
ALTER TABLE `root_navigation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `root_order`
--
ALTER TABLE `root_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `root_pagetype`
--
ALTER TABLE `root_pagetype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `root_products`
--
ALTER TABLE `root_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `root_review`
--
ALTER TABLE `root_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `root_shipping`
--
ALTER TABLE `root_shipping`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `root_team`
--
ALTER TABLE `root_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `root_wishlist`
--
ALTER TABLE `root_wishlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_customuser_groups`
--
ALTER TABLE `account_customuser_groups`
  ADD CONSTRAINT `account_customuser_g_customuser_id_b6c60904_fk_account_c` FOREIGN KEY (`customuser_id`) REFERENCES `account_customuser` (`id`),
  ADD CONSTRAINT `account_customuser_groups_group_id_2be9f6d7_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `account_customuser_user_permissions`
--
ALTER TABLE `account_customuser_user_permissions`
  ADD CONSTRAINT `account_customuser_u_customuser_id_03bcc114_fk_account_c` FOREIGN KEY (`customuser_id`) REFERENCES `account_customuser` (`id`),
  ADD CONSTRAINT `account_customuser_u_permission_id_f4aec423_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_account_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `account_customuser` (`id`);

--
-- Constraints for table `root_homenavigation`
--
ALTER TABLE `root_homenavigation`
  ADD CONSTRAINT `root_homenavigation_parent_id_ae7e4585_fk_root_homenavigation_id` FOREIGN KEY (`parent_id`) REFERENCES `root_homenavigation` (`id`);

--
-- Constraints for table `root_navigation`
--
ALTER TABLE `root_navigation`
  ADD CONSTRAINT `root_navigation_parent_id_84f5ff03_fk_root_navigation_id` FOREIGN KEY (`parent_id`) REFERENCES `root_navigation` (`id`);

--
-- Constraints for table `root_order`
--
ALTER TABLE `root_order`
  ADD CONSTRAINT `root_order_get_shipping_address_id_7c9ba136_fk_root_shipping_id` FOREIGN KEY (`get_shipping_address_id`) REFERENCES `root_shipping` (`id`),
  ADD CONSTRAINT `root_order_product_id_b34059f1_fk_root_products_id` FOREIGN KEY (`product_id`) REFERENCES `root_products` (`id`);

--
-- Constraints for table `root_products`
--
ALTER TABLE `root_products`
  ADD CONSTRAINT `root_products_category_id_47274a89_fk_root_navigation_id` FOREIGN KEY (`category_id`) REFERENCES `root_navigation` (`id`),
  ADD CONSTRAINT `root_products_sub_category_id_392c7c56_fk_root_navigation_id` FOREIGN KEY (`sub_category_id`) REFERENCES `root_navigation` (`id`);

--
-- Constraints for table `root_review`
--
ALTER TABLE `root_review`
  ADD CONSTRAINT `root_review_product_id_01f6ef31_fk_root_products_id` FOREIGN KEY (`product_id`) REFERENCES `root_products` (`id`),
  ADD CONSTRAINT `root_review_user_id_45a63821_fk_account_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `account_customuser` (`id`);

--
-- Constraints for table `root_wishlist`
--
ALTER TABLE `root_wishlist`
  ADD CONSTRAINT `root_wishlist_product_id_f2b33d49_fk_root_products_id` FOREIGN KEY (`product_id`) REFERENCES `root_products` (`id`),
  ADD CONSTRAINT `root_wishlist_user_id_15f797f8_fk_account_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `account_customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
