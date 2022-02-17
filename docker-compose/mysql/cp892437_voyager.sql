-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 11, 2022 at 10:00 AM
-- Server version: 5.6.51
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cp892437_voyager`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-01-02 23:54:33', '2020-01-02 23:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `excerpt`, `body`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'LAO NATIONAL PAYMENT NETWORK, CO LTD', 'Picture1', '', 'picture1', 'contents/April2021/pGyL5rvxzDTgfIbpWBIy.jpg', '2020-06-03 01:15:00', '2021-07-18 21:29:21'),
(3, 'Application Careers', 'IT Position, Operation Position, Financial Position', '', NULL, 'contents/January2022/5ocjiqNckzhEapv2Z5d5.jpg', '2022-01-10 21:17:45', '2022-01-10 21:17:45'),
(4, 'Indochina New Member of LMPS', '', '', 'https://lapnet.com.la/product/lao-mobile-payment-switching', 'contents/January2022/nE2KPN4nQNxto1W7vwaK.jpg', '2022-01-25 01:37:00', '2022-01-25 01:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(57, 11, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 11, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(59, 11, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 3),
(60, 11, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 4),
(61, 11, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 5),
(62, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(63, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(64, 11, 'image', 'image', 'Product Image', 0, 1, 1, 1, 1, 1, '{}', 8),
(65, 16, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(66, 16, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(67, 16, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(68, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(69, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(70, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(71, 17, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(72, 17, 'excerpt', 'text_area', 'Excerpt', 0, 1, 1, 1, 1, 1, '{}', 3),
(73, 17, 'body', 'rich_text_box', 'Body', 0, 1, 1, 1, 1, 1, '{}', 4),
(74, 17, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 5),
(75, 17, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(76, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(77, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(78, 16, 'web_site', 'text', 'Web SIte', 0, 1, 1, 1, 1, 1, '{}', 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(7, 'product', 'product', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-14 20:02:12', '2020-01-14 20:26:00'),
(11, 'products', 'products', 'Product', 'Products', NULL, 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-14 20:26:48', '2020-01-14 20:44:42'),
(15, 'member', 'member', 'Member', 'Members', 'voyager-photos', 'App\\Member', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-06-02 21:15:02', '2020-06-02 21:15:02'),
(16, 'members', 'members', 'Member', 'Members', 'voyager-company', 'App\\Member', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-06-02 23:48:05', '2020-06-04 23:16:15'),
(17, 'contents', 'contents', 'Content', 'Contents', NULL, 'App\\Content', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-06-03 01:05:50', '2020-06-03 01:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `web_site` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `image`, `created_at`, `updated_at`, `web_site`) VALUES
(1, 'BCEL', 'members\\June2020\\BCEL.png', '2020-06-02 23:52:00', '2020-06-04 23:03:00', 'http://www.bcel.com.la/'),
(2, 'LDB', 'members/December2021/VXJph3AG4ivtUZXzIXAd.png', '2020-06-02 23:52:00', '2021-12-07 23:30:04', 'http://www.ldblao.la/'),
(3, 'JDB ', 'members\\June2020\\JDB.png', '2020-06-03 00:07:00', '2020-06-04 23:02:38', 'http://www.jdbbank.com.la/'),
(4, 'APB', 'members\\June2020\\APB.png', '2020-06-03 00:07:00', '2020-06-04 23:02:19', 'http://www.apb.com.la/'),
(5, 'MJBL', 'members\\June2020\\MJBL.png', '2020-06-03 00:08:00', '2020-06-04 23:02:01', 'http://www.maruhanjapanbanklao.com/'),
(6, 'LVB', 'members\\June2020\\LVB.png', '2020-06-03 00:08:00', '2020-06-04 23:01:29', 'http://www.laovietbank.com.la/'),
(7, 'ICBC', 'members\\June2020\\ICBC.png', '2020-06-03 00:09:00', '2020-06-04 23:00:57', 'http://vientiane.icbc.com.cn/'),
(8, 'BOC', 'members\\June2020\\BOC.png', '2020-06-03 00:10:00', '2020-06-04 23:00:42', 'http://www.boc.cn/en/'),
(9, 'VTB', 'members\\June2020\\VTB.png', '2020-06-03 00:10:00', '2020-06-04 23:00:17', 'http://www.vietinbank.com.la/'),
(10, 'IDCN', 'members\\June2020\\IB.png', '2020-06-03 00:10:00', '2020-06-04 23:00:00', 'http://www.indochinabank.com/'),
(11, 'ACLEDA', 'members\\June2020\\ACB.png', '2020-06-03 00:11:00', '2020-06-04 22:59:26', 'http://www.acledabank.com/'),
(12, 'BIC', 'members\\June2020\\BIC.png', '2020-06-03 00:11:00', '2020-06-04 22:58:53', 'http://www.biclaos.com/'),
(13, 'Sacom', 'members\\June2020\\Sacom.png', '2020-06-03 00:11:00', '2020-06-04 22:59:43', 'http://www.sacombank.com.vn/'),
(14, 'STB', 'members\\June2020\\STB.png', '2020-06-03 00:11:00', '2020-06-04 22:58:33', 'https://www.stbanklaos.la/'),
(15, 'Public Bank', 'members/December2020/UxZKzAFL0GuFx9M9gzpu.png', '2020-12-11 00:32:37', '2020-12-11 00:32:37', 'https://www.publicbank.com.la/'),
(16, 'Kbank', 'members/December2020/ltnBKLoCWmEncBJi34WS.png', '2020-12-11 00:33:28', '2020-12-11 00:33:28', 'https://www.kasikornbank.com.la/LA/Pages/welcome.aspx');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(2, 'main', '2020-01-07 20:22:28', '2020-01-07 20:22:28'),
(5, 'navtop', '2020-06-14 20:33:57', '2020-06-14 20:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-01-02 23:54:32', '2020-01-02 23:54:32', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2020-01-02 23:54:32', '2020-01-03 01:30:39', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-01-02 23:54:32', '2020-01-02 23:54:32', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-01-02 23:54:32', '2020-01-02 23:54:32', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 11, '2020-01-02 23:54:32', '2020-06-04 23:10:13', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-01-02 23:54:32', '2020-01-03 01:30:39', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-01-02 23:54:32', '2020-01-03 01:30:39', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-01-02 23:54:32', '2020-01-03 01:30:39', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-01-02 23:54:32', '2020-01-03 01:30:39', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2020-01-02 23:54:32', '2020-06-04 23:10:13', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2020-01-02 23:54:33', '2020-01-03 01:30:39', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2020-01-02 23:54:33', '2020-01-03 01:30:39', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2020-01-02 23:54:33', '2020-01-03 01:30:39', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-01-02 23:54:33', '2020-01-03 01:30:39', 'voyager.hooks', NULL),
(16, 2, 'Product & Service', '/product/all', '_self', NULL, '#000000', NULL, 2, '2020-01-07 21:40:15', '2020-07-14 00:54:39', NULL, ''),
(17, 2, 'News & Events', '/post/all', '_self', NULL, '#000000', NULL, 4, '2020-01-07 21:40:47', '2021-04-19 20:24:04', NULL, ''),
(19, 2, 'About Us', '/company-history', '_self', NULL, '#000000', NULL, 6, '2020-01-09 00:59:36', '2021-04-19 20:24:04', NULL, ''),
(20, 2, 'Contact us', '/contact-us', '_self', NULL, '#000000', NULL, 8, '2020-01-09 01:00:09', '2021-11-04 17:50:08', NULL, ''),
(24, 1, 'Products', '', '_self', 'voyager-bag', '#000000', NULL, 8, '2020-01-14 20:29:15', '2020-01-14 20:30:46', 'voyager.products.index', 'null'),
(37, 2, 'Balance Inquiry ATM', '/product/atm-balance-inquiry', '_self', NULL, '#000000', 16, 1, '2020-02-13 23:21:46', '2020-07-14 00:54:45', NULL, ''),
(38, 2, 'Cash Withdraw', '/product/cash-withdraw', '_self', NULL, '#000000', 16, 2, '2020-02-13 23:22:09', '2020-12-24 23:33:20', NULL, ''),
(39, 2, 'Fund Transfer Interbank', '/product/fund-transfer-interbank', '_self', NULL, '#000000', 16, 3, '2020-02-13 23:22:22', '2020-12-24 23:33:21', NULL, ''),
(41, 2, 'Company History', '/company-history', '_self', NULL, '#000000', 19, 3, '2020-02-13 23:24:09', '2020-07-14 00:58:26', NULL, ''),
(42, 2, 'Role', '/role', '_self', NULL, '#000000', 19, 2, '2020-02-13 23:24:15', '2020-07-14 00:58:20', NULL, ''),
(43, 2, 'Board of Director', '/board-of-director', '_self', NULL, '#000000', 19, 4, '2020-02-13 23:35:05', '2020-07-14 00:58:33', NULL, ''),
(44, 2, 'Organizational Chart', '/organizational-chart', '_self', NULL, '#000000', 19, 5, '2020-02-13 23:35:20', '2020-07-14 00:58:39', NULL, ''),
(45, 2, 'Vision and Mission', '/vision-and-mission', '_self', NULL, '#000000', 19, 1, '2020-03-19 01:28:42', '2020-07-14 00:57:07', NULL, ''),
(46, 2, 'Home', '/', '_self', NULL, '#000000', NULL, 1, '2020-03-24 02:12:11', '2020-07-14 00:54:30', NULL, ''),
(48, 2, 'Member Lao ATM Pool Switching', '/member-lao-atm-pool-switching', '_self', NULL, '#000000', 47, 1, '2020-05-07 00:08:50', '2020-07-14 00:59:17', NULL, ''),
(49, 2, 'Member Mobile Payment Switching', '/member-mobile-payment-switching', '_self', NULL, '#000000', 47, 2, '2020-05-07 00:09:03', '2020-07-14 00:56:31', NULL, ''),
(51, 1, 'Members', '', '_self', 'voyager-company', '#000000', NULL, 9, '2020-06-02 23:48:05', '2020-06-04 23:16:40', 'voyager.members.index', 'null'),
(52, 1, 'Contents', '', '_self', 'voyager-activity', '#000000', NULL, 10, '2020-06-03 01:05:50', '2020-06-04 23:20:55', 'voyager.contents.index', 'null'),
(54, 2, 'LDB', 'http://www.ldblao.la/', '_self', NULL, '#000000', 48, 2, '2020-06-07 20:45:52', '2020-06-11 20:10:33', NULL, ''),
(55, 2, 'APB', 'http://www.apb.com.la/', '_self', NULL, '#000000', 48, 4, '2020-06-08 01:59:51', '2020-06-11 20:10:51', NULL, ''),
(56, 2, 'JDB', 'http://www.jdbbank.com.la/', '_self', NULL, '#000000', 48, 3, '2020-06-08 01:59:59', '2020-06-11 20:10:43', NULL, ''),
(57, 2, 'MJBL', 'http://www.maruhanjapanbanklao.com/', '_self', NULL, '#000000', 48, 5, '2020-06-09 00:37:08', '2020-06-11 20:11:20', NULL, ''),
(58, 2, 'LVB', 'http://www.laovietbank.com.la/', '_self', NULL, '#000000', 48, 6, '2020-06-09 00:38:37', '2020-06-11 20:11:08', NULL, ''),
(59, 2, 'ICBC', 'http://vientiane.icbc.com.cn/', '_self', NULL, '#000000', 48, 7, '2020-06-09 00:38:55', '2020-06-11 20:11:29', NULL, ''),
(60, 2, 'BOC', 'http://www.boc.cn/en/', '_self', NULL, '#000000', 48, 8, '2020-06-09 00:39:24', '2020-06-11 20:11:49', NULL, ''),
(61, 2, 'VTB', 'http://www.vietinbank.com.la/', '_self', NULL, '#000000', 48, 9, '2020-06-09 00:39:34', '2020-06-11 20:11:57', NULL, ''),
(62, 2, 'Indochina', 'http://www.indochinabank.com/', '_self', NULL, '#000000', 48, 10, '2020-06-09 00:39:43', '2020-06-11 20:12:06', NULL, ''),
(63, 2, 'ACLEDA', 'http://www.acledabank.com/', '_self', NULL, '#000000', 48, 11, '2020-06-09 00:40:01', '2020-06-11 20:12:23', NULL, ''),
(64, 2, 'BIC', 'http://www.biclaos.com/', '_self', NULL, '#000000', 48, 12, '2020-06-09 00:40:13', '2020-06-11 20:12:31', NULL, ''),
(65, 2, 'Sacom', 'http://www.sacombank.com.vn/', '_self', NULL, '#000000', 48, 13, '2020-06-09 00:48:23', '2020-06-11 20:12:38', NULL, ''),
(66, 2, 'ST', 'https://www.stbanklaos.la/', '_self', NULL, '#000000', 48, 14, '2020-06-09 00:48:34', '2020-06-11 20:12:47', NULL, ''),
(68, 5, 'Login', 'mail.lapnet.com.la', '_self', NULL, '#000000', NULL, 1, '2020-06-14 20:34:16', '2020-07-14 01:24:31', NULL, ''),
(69, 5, 'EN', 'locale/en', '_self', NULL, '#000000', NULL, 3, '2020-06-14 20:48:48', '2020-06-14 20:50:43', NULL, ''),
(70, 5, 'LA', 'locale/lao', '_self', NULL, '#000000', NULL, 2, '2020-06-14 20:48:53', '2020-06-14 20:51:23', NULL, ''),
(71, 2, 'Member', 'member-lao-atm-pool-switching', '_self', NULL, '#000000', NULL, 5, '2020-12-21 00:40:58', '2021-04-19 20:24:04', NULL, ''),
(72, 2, 'Member Lao ATM Pool Switching', '/member-lao-atm-pool-switching', '_self', NULL, '#000000', 71, 1, '2020-12-21 00:41:51', '2021-01-26 00:05:29', NULL, ''),
(73, 2, 'Member Mobile Payment Switching', '/member-mobile-payment-switching', '_self', NULL, '#000000', 71, 2, '2020-12-21 00:42:43', '2021-01-26 00:05:37', NULL, ''),
(74, 2, 'Lao Mobile Payment Switching', '/product/lao-mobile-payment-switching', '_self', NULL, '#000000', 16, 4, '2021-01-07 19:26:43', '2021-01-07 19:27:12', NULL, ''),
(77, 2, 'Service Fee', '', '_self', NULL, '#000000', NULL, 3, '2021-04-19 20:22:42', '2021-04-19 20:24:25', NULL, ''),
(78, 2, 'Fee charge of Cash Withdraw via ATM', '/fee-charge-of-cash-withdraw-via-atm', '_self', NULL, '#000000', 77, 1, '2021-04-19 20:22:53', '2021-04-19 20:36:08', NULL, ''),
(79, 2, 'Fee charge of Fund Transfer via ATM', '/fee-charge-of-fund-transfer-via-atm', '_self', NULL, '#000000', 77, 2, '2021-04-19 20:23:24', '2021-04-19 20:58:45', NULL, ''),
(80, 2, 'Fee charge of Fund Transfer via Mobile Application', '/fee-charge-of-fund-transfer-via-mobile-application', '_self', NULL, '#000000', 77, 3, '2021-04-19 20:23:42', '2021-04-19 20:58:53', NULL, ''),
(82, 2, 'Lecal', '', '_self', NULL, '#000000', NULL, 7, '2021-11-04 01:51:30', '2021-11-04 17:50:08', NULL, ''),
(83, 2, 'Rule for member', 'rule-for-member-document', '_self', NULL, '#000000', 82, 1, '2021-11-04 02:42:28', '2021-11-04 19:37:55', NULL, ''),
(84, 2, 'Announcement', 'announcement-document', '_self', NULL, '#000000', 82, 2, '2021-11-04 02:42:28', '2021-11-04 19:39:09', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(3, 1, 'About Us', 'About Us', '<h3 style=\"text-align: center;\"><strong>ຈຸດປະສົງ</strong></h3>\n<p style=\"text-indent: 50px; word-break: break-all;\">ຈຸດປະສົງຂອງການສ້າງຕັ້ງບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAO NATIONAL PAYMENT NETWORK CO.,LTD ຂຽນຫຍໍ້ວ່າ LAPNET) ແມ່ນອີງໃສ່ຄວາມຮຽກຮ້ອງ ຕ້ອງການໃນການພັດທະນາລະບົບການຊຳລະສະສາງໃນໄລຍະໃໝ່ ຂອງ ສປປ ລາວ ແລະ ອີງໃສ່ຄວາມພ້ອມຂອງບັນດາຜູ້ຖືຮຸ້ນທີ່ມີປະສົບການທາງດ້ານການເງິນ-ການທະນາຄານ ແລະ ຄວາມຊຳນານດ້ານເຕັກ ໂນໂລຊີທາງການເງິນ (Financial Technology: FinTech), ທຫລ ຈຶ່ງມີຄວາມເຊື່ອໝັ້ນທີ່ຈະໂອນພາລະບົດບາດການດຳເນີນທຸລະກິດການໃຫ້ບໍລິການລະບົບ LAPS ໃຫ້ແກ່ບໍລິສັດ LAPNet ທີ່ຈະສ້າງຕັ້ງຂຶ້ນ ກາຍເປັນບໍລິສັດທີ່ໃຫ້ບໍລິການລະບົບຊຳລະທຸລະກຳຍ່ອຍທີ່ທັນສະໄໝ, ປອດໄພ ສາມາດເຊື່ອມໂຍງກັບທຸກພາກພື້ນ ແລະ ສາກົນ ກໍ່ຄືການເນັ້ນການປັບປຸງທຸລະກິດຂອງບໍລິສັດໃຫ້ແທດເໝາະກັບສະພາບປ່ຽນແປງໃໝ່ ແລະ ສ້າງບໍລິສັດໃຫ້ກາຍເປັນບໍລິສັດແຫ່ງທຳອິດທີ່ປະສົບຜົນສຳເລັດໃນການໃຫ້ບໍລິການລະບົບການຊຳລະທຸລະກຳຍ່ອຍແຫ່ງຊາດໃນ ສປປ ລາວ ຕ້ອງໄດ້ຍົກສູງປະສິດຕິພາບການດຳເນີນທຸລະກິດ ແລະ ການຄຸ້ມຄອງຄວາມສ່ຽງໃຫ້ເຂັ້ມແຂງ, ສ້າງ ແລະ ພັດທະນາລະບົບການຊຳລະທີ່ໄດ້ມາດຕະຖານສາກົນ ໂດຍນຳໃຊ້ເຕັກໂນໂລຊີທີ່ທັນສະໄໝ ແລະ ຍົກລະດັບຄວາມຮູ້, ຄວາມຊ່ຽວຊານສະເພາະດ້ານໃຫ້ເທົ່າທຽມກັບສາກົນ ແລະ ຍັງສາມາດຂະຫຍາຍຕານ່າງການບໍລິການລົງສູ່ທ້ອງຖີ່ນໃຫ້ທົ່ວເຖິງ ແລະ ສາມາດແກ້ໄຂທຸລະກຳຂັດຂ້ອງໃຫ້ທ່ວງທັນເວລາ ເພື່ອໃຫ້ຖັນແຖວພະນັກງານ, ພໍ່ຄ້າຊາວຂາຍ, ພໍ່ແມ່ປະຊາຊົນສາມາດ ຝາກ-ຖອນ, ໂອນເງິນຂ້າມທະນາຄານຫາກັນໄດ້ສະດວກ ພ້ອມກັບກຳຈັດປັດເປົ່າຫາງສຽງຂອງສັງຄົມເຖິງການບໍລິການບໍມີປະສິດທິພາບໃຫ້ໜ້ອຍລົງ ແລະ ຍັງເປັນອົງປະກອບທີ່ສຳຄັນໃຫ້ແກ່ພື້ນຖານເສດຖະກິດໃຫ້ມີການຂະ ຫຍາຍຕົວແບບຍືນຍົງ, ທັງເປັນການຫຼຸດຜ່ອນການນຳໃຊ້ເງິນສົດໃນສັງຄົມ ແລະ ສົ່ງເສີມໃຫ້ເງິນກີບເປັນສະກຸນເງິນດຽວທີ່ໃຊ້ໃນການຊຳລະສະສາງໃນ ສປປ ລາວ.</p>\n<hr />\n<h3 style=\"text-align: center;\"><strong>ຄວາມເປັນມາ</strong></h3>\n<p style=\"text-indent: 50px; word-break: break-all;\">ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ຫືຼ LAPNet ດຳເນີນທຸລະກິດໃນຮູບແບບ ບໍລິສັດ ຈຳກັດ,&nbsp; ເຊິ່ງໄດ້ຮັບອະນຸຍາດເປັນຜູ້ຄວບຄຸມລະບົບບັດທະນາຄານຮ່ວມກັນ ຫຼື Lao ATM Pool Switching (LAPS) ໂດຍແມ່ນໂຄງການຊ່ວຍເຫຼືອລະຫວ່າງລັດຖະບານ ສປ ຈີນ ຕໍ່ກັບ ສປປ ລາວ ຕາມສານແລກປ່ຽນວ່າດ້ວຍລັດຖະບານ ສປ ຈີນ ເຫັນດີຊ່ວຍເຫຼືອລັດຖະບານ ສປປ ລາວ ປະຕິບັດ &lsquo;&rsquo;ໂຄງການລະບົບຊຳລະດ້ວຍບັດອັດຕະໂນມັດຂອງທະນາຄານ&rsquo;&rsquo;. ໂຄງການດັ່ງກ່າວໄດ້ສຳເລັດ ແລະ ເປີດນຳໃຊ້ລະບົບຢ່າງເປັນທາງການໃນວັນທີ 01/12/2015 ໂດຍຢູ່ພາຍໃຕ້ການບໍລິຫານຂອງ ທຫລ, ເຊິ່ງຂັ້ນເທິງ&nbsp; ໄດ້ເຫັນດີມອບໝາຍໃຫ້ກົມເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານເປັນຜູ້ຈັດຕັ້ງປະຕິບັດ ແລະ ໄດ້ສ້າງຕັ້ງພະແນກຄຸ້ມຄອງບັດທະນາຄານຂຶ້ນມາເພື່ອຄຸ້ມຄອງ ແລະ ເຮັດວຽກງານດັ່ງກ່າວໂດຍກົງ, ເຊິ່ງທາງຝ່າຍຈີນ ຮັບຜິດ ຊອບໃນການບຳລຸງຮັກສາທາງດ້ານເຕັກນິກຂອງລະບົບໃຫ້ ສປປ ລາວ ລ້າ ເປັນໄລຍະເວລາ 3 ປີ. ຜ່ານການຈັດຕັ້ງປະຕິບັດຕົວຈິງເຫັນວ່າການນຳໃຊ້ລະບົບດັ່ງກ່າວແມ່ນຍັງບໍ່ເຕັມປະສິດທິພາບເທົ່າທີ່ຄວນ ເນື່ອງຈາກການດຳເນີນງານແມ່ນບໍ່ສອດຄ່ອງກັບພາລະບົດບາດຂອງ ທຫລ ທີ່ເປັນຜູ້ຄຸ້ມຄອງມະຫາພາກດ້ານການເງິນ-ເງິນຕາ, ທັງເປັນອົງກອນທີ່ບໍ່ສະແຫວງຫາຜົນກຳໄລ ຈຶ່ງເຮັດໃຫ້ການຄຸຸ້ມຄອງບໍລິຫານລະບົບດັ່ງ ກ່າວ ຍັງມີລັກສະນະ &lsquo;&rsquo;ນະໂຍບາຍ&rsquo;&rsquo;. ດັ່ງນັ້ນ, ຄະນະພັກ, ຄະນະຜູ້ວ່າການ ທຫລ ຈຶ່ງມີມະຕິຕົກລົງເຫັນດີໃຫ້ຫັນເອົາວຽກງານ LAPS ເປັນນິຕິບຸກຄົນຕາມມະຕິກອງປະຊຸມຄະນະປະຈຳພັກ-ຄະນະຜູ້ວ່າການ ທຫລ ປະຈຳເດືອນ ກຸມພາ 2016. ສະນັ້ນ,&nbsp; ພາຍຫຼັງສິ້ນສຸດໄລຍະການບຳລຸງຮັກສາທາງດ້ານເຕັກນິກລ້າຈາກຝ່າຍຈີນໃນວັນທີ 01/12/2018, ສປປ ລາວ ຕ້ອງໄດ້ສືບຕໍ່ໃນການບໍາລຸງຮັກສາລະບົບເອງ. ໂດຍ ທຫລ ໄດ້ໂອນພາລະບົດບາດການດຳເນີນງານໃຫ້ບໍລິສັດ LAPNet ທີ່ຈະສ້າງຂຶ້ນ ເປັນຜູ້ສືບຕໍ່ດຳເນີນທຸລະກິດໃນການໃຫ້ບໍລິການລະບົບ LAPS ໃຫ້ມີປະສິດທິຜົນສູງສຸດ ແລະ ພັດທະນາໃຫ້ສາມາດເຊື່ອມໂຍງກັບພາກພື້ນ ແລະ ສາກົນ, ເພາະວ່າລະບົບຊຳລະທາງການເງິນແມ່ນຍິ່ງມີຄວາມສຳຄັນເປັນອັນດັບຕົ້ນໆຂອງຂະແໜງເສດຖະຖິດ-ການເງິນ ທີ່ຄວນໄດ້ຮັບການພັດທະນາໃຫ້ມີຄວາມ ເໝາະສົມ-ສອດຄ່ອງກັບຄວາມຕ້ອງການຂອງໜ່ວຍງານເສດຖະກິດ ທັງພາກລັດ ແລະ ເອກະຊົນ.&nbsp; ບໍລິສັດລາວ ຈະເປັນສ່ວນໜຶ່ງໃນການປະກອບສ່ວນຊຸກຍູ້ເສດຖະກິດ ແລະ ໃຫ້ການສະໜັບສະໜູນບັນທະນາຄານທຸລະກິດໃຫ້ສາມາດເຊື່ອມໂຍງ&nbsp; ກັນໃຫ້ໄດ້ຫລາຍຊ່ອງທາງຂຶ້ນກວ່າເກົ່າ ເພື່ອເປັນການອຳນວຍຄວາມສະດວກໃຫ້ແກ່ຜູ້ຊົມໃຊ້ໄດ້ສາມາດດຳເນີນທຸລະກຳທາງດ້ານການເງິນໄດ້ &ldquo; ທຸກທີ່, ທຸກເວລາ, ທຸກຊ່ອງທາງການຊຳລະ&rdquo; .<br />ໃນປະຈຸບັນ ມີໂຄງສ້າງຜູ້ຖືຮຸ້ນຂອງບໍລິສັດມີດັ່ງລຸ່ມນີ້:<br /><br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານແຫ່ງ ສປປ ລາວ ຖືຮຸ້ນຈຳນວນ: 25%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານການຄ້າຕ່າງປະເທດລາວມະຫາຊົນ ຖືຮຸ້ນຈຳນວນ: 20%;<br />&bull;&nbsp;&nbsp; &nbsp;ບໍລິສັດ ຢູນຽນເພສາກົນ ຖືຮຸ້ນຈຳນວນ: 15%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານພັດທະນາລາວ ຖືຮຸ້ນຈຳນວນ: 10%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານສົ່ງເສີມກະສິກຳ ຖືຮຸ້ນຈຳນວນ: 10%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານຮ່ວມທຸລະກິດລາວຫວຽດ ຖືຮຸ້ນຈຳນວນ: 5%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານຮ່ວມພັດທະນາ ຖືຮຸ້ນຈຳນວນ: 5%<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານເອສທີຈຳກັດ ຖືຮຸ້ນຈຳນວນ: 5%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານບີໄອຊີຈຳກັດ ຖືຮຸ້ນຈຳນວນ: 5%;<br />&nbsp;</p>\n<hr />\n<h3 style=\"text-align: center;\"><strong>ພາລະບົດບາດ</strong></h3>\n<p style=\"text-indent: 50px; word-break: break-all;\">ບໍລິສັດ LAPNet ຈະສືບຕໍ່ດຳເນີນທຸລະກິດໃຫ້ບໍລິການລະບົບ LAPS ທີ່ໄດ້ຮັບໂອນພາລະການບົດບາດຈາກ ທຫລ ເພື່ອອຳນວຍຄວາມສະດວກໃຫ້ມວນຊົນ ສາມາດນຳໃຊ້ບັດສິນເຊື່ອ ແລະ ບັດເງິນ ຝາກ ໃນການເຮັດທຸລະກຳຜ່ານຕູ້ເອທິເອັມ, ຕູ້ຊີດີເອັມ ເຊັ່ນ: ກວດຍອດເງິນໃນບັນຊີ, ຝາກ-ຖອນເງິນສົດ, ໂອນເງິນ ພ້ອມທັງສາມາດຊຳລະສິນຄ້າ ແລະ ຄ່າບໍລິການຕ່າງໆຢູ່ຮ້ານຄ້າ ຜ່ານເຄື່ອງພີໂອເອສຂອງທະນາຄານທຸລະກິດອື່ນທີ່ເປັນສະມາຊິກຂອງລະບົບ LAPS ໄດ້, ເຊິ່ງໃນໄລຍະຜ່ານມາໄດ້ດຳເນີນການເປີດໃຫ້ບໍລິການແກ່ມວນຊົນສາມາດນຳໃຊ້ບັດເງິນຝາກ (Debit Card) ໃນການເຮັດທຸລະກຳກວດຍອດເງິນໃນບັນຊີ ແລະ ຖອນເງິນສົດຢູ່ຕູ້ ATM ໄດ້ຕະຫຼອດ 24 ຊົ່ວໂມງ. ສະນັ້ນ, ເຮັດໃຫ້ທະນາຄານສາມາດນຳໃຊ້ອຸປະກອນຮ່ວມກັນ ທັງເປັນການຫຼຸດຜ່ອນການລົງທຶນທີ່ຊຳ້ຊ້ອນໃນການຊື້ອຸປະກອນດັ່ງທີ່ໄດ້ກ່າວ&nbsp; ມາ. ດັ່ງນັ້ນ, ການດຳເນີນທຸລະກິດຂອງບໍລິສັດແມ່ນມີເອກະລັກ ແລະ ຈຸດພິເສດເນື່ອງຈາກຖືເປັນລະບົບທຳອິດຂອງ ສປປ ລາວ ທີ່ສອດຄ່ອງຕາມກົດໝາຍວ່າດ້ວຍລະບົບການຊຳລະ ແລະ ສອດຄ່ອງຕາມແຜນ&nbsp; ຍຸດທະສາດພັດທະນາລະບົບສະຖາບັນການເງິນ-ເງິນຕາ ຂອງ ສປປ ລາວ. <br /><br /></p>', 'pages\\January2020\\sbSdfhYTMynhsoIIdVmx.png', 'about-us', 'About us', 'About us', 'ACTIVE', '2020-01-09 01:32:22', '2020-02-06 23:18:26'),
(4, 1, 'Contact us', 'contact us', '<div class=\"row\">\n<div class=\"col-4 col-12-medium\">\n<p><img style=\"display: block; margin-right: auto; width: 200px; margin-left: auto;\" src=\"https://lapnet.com.la/images/Logo.png\" alt=\"\" /></p>\n<p>LAO NATIONAL PAYMENT NETWORK Live in <br /><strong>Village:</strong>Phonsaart Village, <br /><strong>City:</strong> Saysettha City, <br /><strong>Province:</strong> Vientiane Capital <br /><strong>Call Tel:</strong> 030 568 7610 <br /><strong>Call Tel:</strong> 030 552 9158<br /><strong>Email:</strong> info@lapnet.com.la</p>\n</div>\n<div class=\"col-8 col-12-medium\">\n<h1 style=\"text-align: center;\">MAP</h1>\n<div class=\"mapouter\">\n<div class=\"gmap_canvas\"><iframe id=\"gmap_canvas\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d948.7504760546849!2d102.6285086!3d17.9786484!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x312467f0b486944f%3A0x84af2329498cb982!2sLao%20National%20Payment%20Network%20.%2C%20CO!5e0!3m2!1slo!2sla!4v1626766794751!5m2!1slo!2sla\" width=\"100%\" height=\"400\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe></div>\n</div>\n</div>\n</div>', NULL, 'contact-us', 'Contact us', 'Contact us', 'ACTIVE', '2020-01-12 23:35:48', '2021-07-20 00:41:07'),
(5, 1, 'Career', 'Excerpt of Excerpt', '<p>&nbsp; &nbsp; &nbsp; &nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse condimentum viverra dolor nec aliquam. In at mi elit. Curabitur commodo finibus augue, quis sodales mauris pretium eget. Integer eros felis, convallis vel urna ut, aliquet interdum leo. Praesent auctor, augue vitae congue vestibulum, massa tortor porttitor nisi, nec imperdiet risus elit auctor eros. Duis quis suscipit est. Mauris ultrices at orci id faucibus. Pellentesque a libero quam. Cras imperdiet tincidunt risus, sit amet tincidunt felis. Suspendisse imperdiet lobortis diam.</p>\n<hr />\n<p>&nbsp; &nbsp; &nbsp; Donec volutpat lorem sed facilisis commodo. Nullam vehicula quam eu fermentum vulputate. Pellentesque posuere ac lectus non rhoncus. Vivamus mauris urna, hendrerit id dolor a, porttitor tincidunt odio. Sed pharetra ex sed sem euismod dignissim. Proin vitae tellus luctus, tincidunt nunc et, vestibulum risus. Duis scelerisque auctor luctus. Donec maximus sed neque in rutrum. Cras non justo scelerisque, semper tortor venenatis, rhoncus felis. Proin non odio at lacus eleifend imperdiet. Suspendisse ac turpis et massa ullamcorper mollis. Donec convallis erat nec nulla consectetur, vel facilisis turpis tincidunt. Sed ut nunc diam. Integer in enim sollicitudin, maximus arcu et, tempor odio. Fusce feugiat consectetur tellus, a fringilla dui cursus tincidunt. Aliquam maximus eu lacus nec laoreet.</p>', NULL, 'career', 'career', 'career', 'ACTIVE', '2020-01-15 01:04:10', '2020-01-29 02:02:09'),
(6, 1, 'Purpose', 'Excerpt of Purpose', '<p style=\"text-indent: 50px; word-break: break-all;\">ຈຸດປະສົງຂອງການສ້າງຕັ້ງບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAO NATIONAL PAYMENT NETWORK CO.,LTD ຂຽນຫຍໍ້ວ່າ LAPNET) ແມ່ນອີງໃສ່ຄວາມຮຽກຮ້ອງ ຕ້ອງການໃນການພັດທະນາລະບົບການຊຳລະສະສາງໃນໄລຍະໃໝ່ ຂອງ ສປປ ລາວ ແລະ ອີງໃສ່ຄວາມພ້ອມຂອງບັນດາຜູ້ຖືຮຸ້ນທີ່ມີປະສົບການທາງດ້ານການເງິນ-ການທະນາຄານ ແລະ ຄວາມຊຳນານດ້ານເຕັກ ໂນໂລຊີທາງການເງິນ (Financial Technology: FinTech), ທຫລ ຈຶ່ງມີຄວາມເຊື່ອໝັ້ນທີ່ຈະໂອນພາລະບົດບາດການດຳເນີນທຸລະກິດການໃຫ້ບໍລິການລະບົບ LAPS ໃຫ້ແກ່ບໍລິສັດ LAPNet ທີ່ຈະສ້າງຕັ້ງຂຶ້ນ ກາຍເປັນບໍລິສັດທີ່ໃຫ້ບໍລິການລະບົບຊຳລະທຸລະກຳຍ່ອຍທີ່ທັນສະໄໝ, ປອດໄພ ສາມາດເຊື່ອມໂຍງກັບທຸກພາກພື້ນ ແລະ ສາກົນ ກໍ່ຄືການເນັ້ນການປັບປຸງທຸລະກິດຂອງບໍລິສັດໃຫ້ແທດເໝາະກັບສະພາບປ່ຽນແປງໃໝ່ ແລະ ສ້າງບໍລິສັດໃຫ້ກາຍເປັນບໍລິສັດແຫ່ງທຳອິດທີ່ປະສົບຜົນສຳເລັດໃນການໃຫ້ບໍລິການລະບົບການຊຳລະທຸລະກຳຍ່ອຍແຫ່ງຊາດໃນ ສປປ ລາວ ຕ້ອງໄດ້ຍົກສູງປະສິດຕິພາບການດຳເນີນທຸລະກິດ ແລະ ການຄຸ້ມຄອງຄວາມສ່ຽງໃຫ້ເຂັ້ມແຂງ, ສ້າງ ແລະ ພັດທະນາລະບົບການຊຳລະທີ່ໄດ້ມາດຕະຖານສາກົນ ໂດຍນຳໃຊ້ເຕັກໂນໂລຊີທີ່ທັນສະໄໝ ແລະ ຍົກລະດັບຄວາມຮູ້, ຄວາມຊ່ຽວຊານສະເພາະດ້ານໃຫ້ເທົ່າທຽມກັບສາກົນ ແລະ ຍັງສາມາດຂະຫຍາຍຕານ່າງການບໍລິການລົງສູ່ທ້ອງຖີ່ນໃຫ້ທົ່ວເຖິງ ແລະ ສາມາດແກ້ໄຂທຸລະກຳຂັດຂ້ອງໃຫ້ທ່ວງທັນເວລາ ເພື່ອໃຫ້ຖັນແຖວພະນັກງານ, ພໍ່ຄ້າຊາວຂາຍ, ພໍ່ແມ່ປະຊາຊົນສາມາດ ຝາກ-ຖອນ, ໂອນເງິນຂ້າມທະນາຄານຫາກັນໄດ້ສະດວກ ພ້ອມກັບກຳຈັດປັດເປົ່າຫາງສຽງຂອງສັງຄົມເຖິງການບໍລິການບໍມີປະສິດທິພາບໃຫ້ໜ້ອຍລົງ ແລະ ຍັງເປັນອົງປະກອບທີ່ສຳຄັນໃຫ້ແກ່ພື້ນຖານເສດຖະກິດໃຫ້ມີການຂະ ຫຍາຍຕົວແບບຍືນຍົງ, ທັງເປັນການຫຼຸດຜ່ອນການນຳໃຊ້ເງິນສົດໃນສັງຄົມ ແລະ ສົ່ງເສີມໃຫ້ເງິນກີບເປັນສະກຸນເງິນດຽວທີ່ໃຊ້ໃນການຊຳລະສະສາງໃນ ສປປ ລາວ.</p>\n<hr />', NULL, 'purpose', 'purpose', 'purpose', 'ACTIVE', '2020-02-18 23:13:37', '2020-02-26 19:03:02'),
(7, 1, 'Company History', 'Excerpt of Company History', '<p style=\"text-indent: 50px; word-break: break-all;\">ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ຫືຼ LAPNet ດຳເນີນທຸລະກິດໃນຮູບແບບ ບໍລິສັດ ຈຳກັດ,&nbsp; ເຊິ່ງໄດ້ຮັບອະນຸຍາດເປັນຜູ້ຄວບຄຸມລະບົບບັດທະນາຄານຮ່ວມກັນ ຫຼື Lao ATM Pool Switching (LAPS) ໂດຍແມ່ນໂຄງການຊ່ວຍເຫຼືອລະຫວ່າງລັດຖະບານ ສປ ຈີນ ຕໍ່ກັບ ສປປ ລາວ ຕາມສານແລກປ່ຽນວ່າດ້ວຍລັດຖະບານ ສປ ຈີນ ເຫັນດີຊ່ວຍເຫຼືອລັດຖະບານ ສປປ ລາວ ປະຕິບັດ &lsquo;&rsquo;ໂຄງການລະບົບຊຳລະດ້ວຍບັດອັດຕະໂນມັດຂອງທະນາຄານ&rsquo;&rsquo;. ໂຄງການດັ່ງກ່າວໄດ້ສຳເລັດ ແລະ ເປີດນຳໃຊ້ລະບົບຢ່າງເປັນທາງການໃນວັນທີ 01/12/2015 ໂດຍຢູ່ພາຍໃຕ້ການບໍລິຫານຂອງ ທຫລ, ເຊິ່ງຂັ້ນເທິງ&nbsp; ໄດ້ເຫັນດີມອບໝາຍໃຫ້ກົມເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານເປັນຜູ້ຈັດຕັ້ງປະຕິບັດ ແລະ ໄດ້ສ້າງຕັ້ງພະແນກຄຸ້ມຄອງບັດທະນາຄານຂຶ້ນມາເພື່ອຄຸ້ມຄອງ ແລະ ເຮັດວຽກງານດັ່ງກ່າວໂດຍກົງ, ເຊິ່ງທາງຝ່າຍຈີນ ຮັບຜິດ ຊອບໃນການບຳລຸງຮັກສາທາງດ້ານເຕັກນິກຂອງລະບົບໃຫ້ ສປປ ລາວ ລ້າ ເປັນໄລຍະເວລາ 3 ປີ. ຜ່ານການຈັດຕັ້ງປະຕິບັດຕົວຈິງເຫັນວ່າການນຳໃຊ້ລະບົບດັ່ງກ່າວແມ່ນຍັງບໍ່ເຕັມປະສິດທິພາບເທົ່າທີ່ຄວນ ເນື່ອງຈາກການດຳເນີນງານແມ່ນບໍ່ສອດຄ່ອງກັບພາລະບົດບາດຂອງ ທຫລ ທີ່ເປັນຜູ້ຄຸ້ມຄອງມະຫາພາກດ້ານການເງິນ-ເງິນຕາ, ທັງເປັນອົງກອນທີ່ບໍ່ສະແຫວງຫາຜົນກຳໄລ ຈຶ່ງເຮັດໃຫ້ການຄຸຸ້ມຄອງບໍລິຫານລະບົບດັ່ງ ກ່າວ ຍັງມີລັກສະນະ &lsquo;&rsquo;ນະໂຍບາຍ&rsquo;&rsquo;. ດັ່ງນັ້ນ, ຄະນະພັກ, ຄະນະຜູ້ວ່າການ ທຫລ ຈຶ່ງມີມະຕິຕົກລົງເຫັນດີໃຫ້ຫັນເອົາວຽກງານ LAPS ເປັນນິຕິບຸກຄົນຕາມມະຕິກອງປະຊຸມຄະນະປະຈຳພັກ-ຄະນະຜູ້ວ່າການ ທຫລ ປະຈຳເດືອນ ກຸມພາ 2016. ສະນັ້ນ,&nbsp; ພາຍຫຼັງສິ້ນສຸດໄລຍະການບຳລຸງຮັກສາທາງດ້ານເຕັກນິກລ້າຈາກຝ່າຍຈີນໃນວັນທີ 01/12/2018, ສປປ ລາວ ຕ້ອງໄດ້ສືບຕໍ່ໃນການບໍາລຸງຮັກສາລະບົບເອງ. ໂດຍ ທຫລ ໄດ້ໂອນພາລະບົດບາດການດຳເນີນງານໃຫ້ບໍລິສັດ LAPNet ທີ່ຈະສ້າງຂຶ້ນ ເປັນຜູ້ສືບຕໍ່ດຳເນີນທຸລະກິດໃນການໃຫ້ບໍລິການລະບົບ LAPS ໃຫ້ມີປະສິດທິຜົນສູງສຸດ ແລະ ພັດທະນາໃຫ້ສາມາດເຊື່ອມໂຍງກັບພາກພື້ນ ແລະ ສາກົນ, ເພາະວ່າລະບົບຊຳລະທາງການເງິນແມ່ນຍິ່ງມີຄວາມສຳຄັນເປັນອັນດັບຕົ້ນໆຂອງຂະແໜງເສດຖະຖິດ-ການເງິນ ທີ່ຄວນໄດ້ຮັບການພັດທະນາໃຫ້ມີຄວາມ ເໝາະສົມ-ສອດຄ່ອງກັບຄວາມຕ້ອງການຂອງໜ່ວຍງານເສດຖະກິດ ທັງພາກລັດ ແລະ ເອກະຊົນ.&nbsp; ບໍລິສັດລາວ ຈະເປັນສ່ວນໜຶ່ງໃນການປະກອບສ່ວນຊຸກຍູ້ເສດຖະກິດ ແລະ ໃຫ້ການສະໜັບສະໜູນບັນທະນາຄານທຸລະກິດໃຫ້ສາມາດເຊື່ອມໂຍງ&nbsp; ກັນໃຫ້ໄດ້ຫລາຍຊ່ອງທາງຂຶ້ນກວ່າເກົ່າ ເພື່ອເປັນການອຳນວຍຄວາມສະດວກໃຫ້ແກ່ຜູ້ຊົມໃຊ້ໄດ້ສາມາດດຳເນີນທຸລະກຳທາງດ້ານການເງິນໄດ້ &ldquo; ທຸກທີ່, ທຸກເວລາ, ທຸກຊ່ອງທາງການຊຳລະ&rdquo; .<br />ໃນປະຈຸບັນ ມີໂຄງສ້າງຜູ້ຖືຮຸ້ນຂອງບໍລິສັດມີດັ່ງລຸ່ມນີ້:<br /><br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານແຫ່ງ ສປປ ລາວ ຖືຮຸ້ນຈຳນວນ: 25%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານການຄ້າຕ່າງປະເທດລາວມະຫາຊົນ ຖືຮຸ້ນຈຳນວນ: 20%;<br />&bull;&nbsp;&nbsp; &nbsp;ບໍລິສັດ ຢູນຽນເພສາກົນ ຖືຮຸ້ນຈຳນວນ: 15%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານພັດທະນາລາວ ຖືຮຸ້ນຈຳນວນ: 10%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານສົ່ງເສີມກະສິກຳ ຖືຮຸ້ນຈຳນວນ: 10%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານຮ່ວມທຸລະກິດລາວຫວຽດ ຖືຮຸ້ນຈຳນວນ: 5%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານຮ່ວມພັດທະນາ ຖືຮຸ້ນຈຳນວນ: 5%<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານເອສທີຈຳກັດ ຖືຮຸ້ນຈຳນວນ: 5%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານບີໄອຊີຈຳກັດ ຖືຮຸ້ນຈຳນວນ: 5%;<br />&nbsp;</p>\n<hr />', NULL, 'company-history', 'company history', 'company history', 'ACTIVE', '2020-02-18 23:21:03', '2020-02-18 23:30:08'),
(8, 1, 'Role', 'Excerpt of Role', '<p style=\"text-indent: 50px; word-break: break-all;\">ບໍລິສັດ LAPNet ຈະສືບຕໍ່ດຳເນີນທຸລະກິດໃຫ້ບໍລິການລະບົບ LAPS ທີ່ໄດ້ຮັບໂອນພາລະບົດບາດຈາກ ທຫລ ເພື່ອອຳນວຍຄວາມສະດວກໃຫ້ມວນຊົນ ສາມາດນຳໃຊ້ບັດສິນເຊື່ອ ແລະ ບັດເງິນ ຝາກ ໃນການເຮັດທຸລະກຳຜ່ານຕູ້ເອທິເອັມ, ຕູ້ຊີດີເອັມ ເຊັ່ນ: ກວດຍອດເງິນໃນບັນຊີ, ຝາກ-ຖອນເງິນສົດ, ໂອນເງິນ ພ້ອມທັງສາມາດຊຳລະສິນຄ້າ ແລະ ຄ່າບໍລິການຕ່າງໆຢູ່ຮ້ານຄ້າ ຜ່ານເຄື່ອງພີໂອເອສຂອງທະນາຄານທຸລະກິດອື່ນທີ່ເປັນສະມາຊິກຂອງລະບົບ LAPS ໄດ້, ເຊິ່ງໃນໄລຍະຜ່ານມາໄດ້ດຳເນີນການເປີດໃຫ້ບໍລິການແກ່ມວນຊົນສາມາດນຳໃຊ້ບັດເງິນຝາກ (Debit Card) ໃນການເຮັດທຸລະກຳກວດຍອດເງິນໃນບັນຊີ ແລະ ຖອນເງິນສົດຢູ່ຕູ້ ATM ໄດ້ຕະຫຼອດ 24 ຊົ່ວໂມງ. ສະນັ້ນ, ເຮັດໃຫ້ທະນາຄານສາມາດນຳໃຊ້ອຸປະກອນຮ່ວມກັນ ທັງເປັນການຫຼຸດຜ່ອນການລົງທຶນທີ່ຊຳ້ຊ້ອນໃນການຊື້ອຸປະກອນດັ່ງທີ່ໄດ້ກ່າວ&nbsp; ມາ. ດັ່ງນັ້ນ, ການດຳເນີນທຸລະກິດຂອງບໍລິສັດແມ່ນມີເອກະລັກ ແລະ ຈຸດພິເສດເນື່ອງຈາກຖືເປັນລະບົບທຳອິດຂອງ ສປປ ລາວ ທີ່ສອດຄ່ອງຕາມກົດໝາຍວ່າດ້ວຍລະບົບການຊຳລະ ແລະ ສອດຄ່ອງຕາມແຜນ&nbsp; ຍຸດທະສາດພັດທະນາລະບົບສະຖາບັນການເງິນ-ເງິນຕາ ຂອງ ສປປ ລາວ.</p>\n<hr />', NULL, 'role', 'role', 'role', 'ACTIVE', '2020-02-18 23:23:01', '2020-07-20 20:21:18'),
(9, 1, 'Board of Director', 'Excerpt of Board of Director', '<!-- Table -->\n<h3><strong>ຄະນະບໍລິຫານງານ ລພນ</strong></h3>\n<h4><strong>ຄະນະສະພາບໍລິຫານ</strong></h4>\n<div class=\"table-wrapper\">\n<table>\n<tbody>\n<tr>\n<td>&nbsp;</td>\n<td><strong>ຕາງໜ້າຜູ້ຖືຫຸ້ນຈາກ</strong></td>\n<td><strong>ດຳລົງຕຳແໜ່ງ</strong></td>\n</tr>\n<tr>\n<td>ທ່ານ ສຸລິສັກ ທຳນຸວົງ</td>\n<td>BOL</td>\n<td>ປະທານສະພາ</td>\n</tr>\n<tr>\n<td>ທ່ານ ນັນທະລາດ ແກ້ວປະເສີດ</td>\n<td>BCEL</td>\n<td>ຮອງປະທານສະພາ</td>\n</tr>\n<tr>\n<td>ທ່ານ Cai Huiming</td>\n<td>UPI</td>\n<td>ຫົວໜ້າຄະນະກຳມະການກວດກາ</td>\n</tr>\n<tr>\n<td>ທ່ານ ວຽງຄຳ ວັນສີລາລົມ</td>\n<td>JDB</td>\n<td>ຄະນະກຳມະການກວດກາ</td>\n</tr>\n<tr>\n<td>ທ່ານ ສີສະອາດ ນຶມອາສາ</td>\n<td>APB</td>\n<td>ຄະນະກຳມະການກວດກາ</td>\n</tr>\n<tr>\n<td>ທ່ານ ຟີລິກ. ດີຟຣານຊິສ</td>\n<td>BIC</td>\n<td>ສະມາຊິກສະພາ</td>\n</tr>\n<tr>\n<td>ທ່ານ ຈັນຊະນະ ສິງຫາວົງ</td>\n<td>JDB</td>\n<td>ສະມາຊິກສະພາ</td>\n</tr>\n<tr>\n<td>ທ່ານ ວຽງວິໄລ ແສງຄຳຢອງ</td>\n<td>LVB</td>\n<td>ສະມາຊິກສະພາ</td>\n</tr>\n<tr>\n<td>ທ່ານ ເອກະລາດ ລັດຕະນະຈານ</td>\n<td>ST</td>\n<td>ສະມາຊິກສະພາ</td>\n</tr>\n</tbody>\n</table>\n</div>', NULL, 'board-of-director', 'board of director', 'board of director', 'INACTIVE', '2020-02-19 20:23:25', '2021-08-05 02:27:37'),
(10, 1, 'Organizational Chart', 'Excerpt of Organizational Chart', '', NULL, 'organizational-chart', 'organization chart', 'organization chart', 'INACTIVE', '2020-02-19 20:24:24', '2021-09-01 01:39:59'),
(11, 1, 'Home Slide Wallpaper', 'Home Slide Wallpaper', '<div class=\"swiper-wrapper\">\n<div class=\"swiper-slide\"><a href=\"#\"><img src=\"http://192.168.0.168:3000/storage/home/Home%20Slide/union.jpg\" width=\"100%\" /></a></div>\n<div class=\"swiper-slide\"><a href=\"#\"><img src=\"http://192.168.0.168:3000/storage/home/Home%20Slide/Cover2.png\" width=\"100%\" /></a></div>\n</div>', 'pages/April2021/1QwidsHTGuRtREfsad6L.png', 'home-slide-wallpaper', 'home-slide-wallpaper', 'home-slide-wallpaper', 'ACTIVE', '2020-03-04 20:22:10', '2021-04-20 00:29:11'),
(12, 1, 'Vision and Mission', 'Excerpt of vision and mission', '<h3 style=\"text-align: center;\"><strong>ວິໄສທັດ</strong></h3>\n<p style=\"text-indent: 50px; word-break: break-all;\">ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ມີຄວາມເຊື່ອໝັ້ນວ່າ ໃນຍຸກທີ່ເສດຖະກິດພວມມີການຂະຫຍາຍ ແລະ ມີການເຊື່ອມໂຍງກັນຂອງບັນດາຫົວໜ່ວຍທຸລະກິດຫຼາຍພາກສ່ວນ, ລະບົບຊຳລະທາງການເງິນ ແມ່ນຍິ່ງມີຄວາມສຳຄັນເປັນອັນດັບຕົ້ນໆຂອງຂະແໜງເສດຖະກິດ - ການເງິນ ທີ່ຄວນໄດ້ຮັບການພັດທະນາໃຫ້ມີຄວາມເໝາະສົມ ແລະ ສອດຄ່ອງກັບຄວາມຕ້ອງການຂອງໜ່ວຍງານເສດຖະກິດ ທັງພາກລັດ ແລະ ເອກະຊົນ. ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈະເປັນສ່ວນໜຶ່ງໃນການປະກອບສ່ວນຊຸກຍູ້ເສດຖະກິດ ແລະ ໃຫ້ການສະໜັບສະໜຸນບັນດາທະນາຄານທຸລະກິດ ໃຫ້ສາມາດເຊື່ອມໂຍງກັນໃຫ້ໄດ້ຫຼາຍຊ່ອງທາງຂຶ້ນກວ່າເກົ່າ ເພື່ອເປັນການອຳນວຍຄວາມສະດວກໃຫ້ແກ່ຜູ້ຊົມໃຊ້ໄດ້ສາມາດດຳເນີນທຸລະກິດທາງດ້ານການເງິນໄດ້ \"ທຸກທີ່, ທຸກເວລາ, ທຸກຊ່ອງທາງການຊຳລະ\".</p>\n<hr />\n<h3 style=\"text-align: center;\"><strong>ພາລະກິດ</strong></h3>\n<p style=\"text-indent: 50px; word-break: break-all;\">ເພື່ອເຮັດໃຫ້ ບໍລິສັດ LAPNet ກາຍເປັນບໍລິສັດທີ່ໃຫ້ບໍລິການລະບົບຊຳລະທີ່ທັນສະໄໝ, ປອດໄພ ສາມາດເຊື່ອມໂຍງກັບພາກພື້ນ ແລະ ສາກົນ ກໍ່ຄືການເນັ້ນການປັບປຸງທຸລະກິດຂອງບໍລິສັດໃຫ້ແທດເໝາະກັບສະພາບປ່ຽນແປງໃໝ່ ແລະ ສ້າງບໍລິສັດໃຫ້ກາຍເປັນບໍລິສັດແຫ່ງທຳອິດທີ່ປະສົບຜົນສຳເລັດໃນການໃຫ້ບໍລິການລະບົບການຊຳລະທຸລະກຳຍ່ອຍແຫ່ງຊາດໃນ ສປປ ລາວ ຕ້ອງໄດ້ຍົກສູງປະສິດຕິພາບການດຳເນີນທຸລະກິດ ແລະ ການຄຸ້ມຄອງຄວາມສ່ຽງໃຫ້ເຂັ້ມແຂງ, ສ້າງ ແລະ ພັດທະນາລະບົບການຊຳລະທີ່ໄດ້ມາດຕະຖານສາກົນ ໂດຍນຳໃຊ້ເຕັກໂນໂລຊີທີ່ທັນສະໄໝ ແລະ ຍົກລະດັບຄວາມຮູ້,​ ຄວາມຊ່ຽວຊານສະເພາະດ້ານໃຫ້ເທົ່າທຽມກັບສາກົນ.</p>\n<hr />', NULL, 'vision-and-mission', 'vision-and-mission', 'vision-and-mission', 'ACTIVE', '2020-03-19 01:53:16', '2020-03-19 01:55:34'),
(13, 1, 'Member Lao ATM Pool Switching', 'Excerpt of Member Lao ATM Pool Switching', '<div class=\"table-wrapper\">\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>Name, Location and Website</strong></td>\n<td><strong>Telephone Number</strong></td>\n</tr>\n<tr>\n<td>BANQUE POUR LE COMMERCE EXTERIEUR LAO PUBLIC <br /><strong>BCEL</strong><br />ປາງ​ຄຳ, ຊຽ​ງ​ຍືນ, ​ຈັນ​ທະ​ບູ​ລີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"https://www.bcel.com.la/\" rel=\"noopener\">https://www.bcel.com.la</a></td>\n<td>856-21 213 200</td>\n</tr>\n<tr>\n<td>Lao Development Bank <br /><strong>LDB</strong><br />ສຸ​ພາ​ນຸ​ວົງ, ​ສີ​ຫອມ, ​ຈັນ​ທະ​ບູ​ລີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"https://www.ldblao.la/\" rel=\"noopener\">https://www.ldblao.la</a></td>\n<td>021 213 300-04</td>\n</tr>\n<tr>\n<td>Joint Development Bank <br /><strong>JDB</strong><br />ລ້ານ​ຊ້າງ, ​ຫັດ​ສະ​ດີ, ​ຈັນ​ທະ​ບູ​ລີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"https://www.jdbbank.com.la/\" rel=\"noopener\">https://www.jdbbank.com.la</a></td>\n<td>021-213 531-6</td>\n</tr>\n<tr>\n<td>Agricultural Promotion Bank<br /><strong>APB</strong><br />ໄກ​ສອນ, ​ພະ​ຂາວ, ​ໄຊ​ທາ​ນີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"https://www.apb.com.la/\" rel=\"noopener\">https://www.apb.com.la</a></td>\n<td>021-713 060</td>\n</tr>\n<tr>\n<td>MARUHAN Japan Bank Lao<br /><strong>MJBL</strong><br />23ສິງ​ຫາ, ໂພນໄຊ, ໄຊ​ເສດ​ຖາ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"https://www.maruhanjapanbanklao.com/\" rel=\"noopener\">https://www.maruhanjapanbanklao.com</a></td>\n<td>021-266 000</td>\n</tr>\n<tr>\n<td>Laos-Vietnam Joint Venture Bank<br /><strong>LVB</strong><br />ລ້ານ​ຊ້າງ, ​ຫັດ​ສະ​ດີ, ​ຈັນ​ທະ​ບູ​ລີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"https://www.laovietbank.com.la/\" rel=\"noopener\">https://www.laovietbank.com.la</a></td>\n<td>021-251 416</td>\n</tr>\n<tr>\n<td>the Industrial and Commercial Bank of China<br /><strong>ICBC</strong><br />ລ້ານຊ້າງ, ຫັດສະດີ, ​ຈັນ​ທະ​ບູ​ລີ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"https://vientiane.icbc.com.cn/\" rel=\"noopener\">https://vientiane.icbc.com.cn</a></td>\n<td>021-258 888</td>\n</tr>\n<tr>\n<td>Bank of China<br /><strong>BOC</strong><br />ຄູວຽງ, ໜອງ​ຈັນ, ສີສັດຕະນາກ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"https://www.boc.cn/en/\" rel=\"noopener\">https://www.boc.cn/en</a></td>\n<td>021-228 888</td>\n</tr>\n<tr>\n<td>VietinBank Lao<br /><strong>VTB</strong><br />ຂຸນບູລົມ, ວັດຈັນ, ຈັນທະບູລີ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"https://www.vietinbank.com.la/\" rel=\"noopener\">https://www.vietinbank.com.la</a></td>\n<td>021-263 997</td>\n</tr>\n<tr>\n<td>INDOCHINA BANK LTD<br /><strong>Indochina</strong><br />23ສິງ​ຫາ, ໜອງບອນ, ​ໄຊ​ເສດ​ຖາ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"https://www.indochinabank.com/\" rel=\"noopener\">https://www.indochinabank.com</a></td>\n<td>021-455 000</td>\n</tr>\n<tr>\n<td>ACLEDA BANK LAO.,LTD<br /><strong>ACLEDA</strong><br />ວົງວຽນດົງປ່າລານ, ໂພນສະຫວັນເໜືອ, ສີສັດຕະນາກ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"https://www.acledabank.com/\" rel=\"noopener\">https://www.acledabank.com</a></td>\n<td>021-264 994</td>\n</tr>\n<tr>\n<td>BIC Bank Lao Co., Ltd<br /><strong>BIC</strong><br />ຫັດສະດີ, ຫັດສະດີໃຕ້, ຈັນທະບູລີ, ນະຄອນຫຼວງວຽງຈັນ.<br /><a style=\"color: #444;\" href=\"https://www.biclaos.com/\" rel=\"noopener\">https://www.biclaos.com</a></td>\n<td>(856-21) 250 388</td>\n</tr>\n<tr>\n<td>Sacombank Lao<br /><strong>Sacom</strong><br />ແຫ່ງບຸນ, ຫາຍໂສກ, ຈັນທະບູລີ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"https://www.sacombank.com.vn/\" rel=\"noopener\">https://www.sacombank.com.vn</a></td>\n<td>021-265 726</td>\n</tr>\n<tr>\n<td>ST BANK CO.,LTD<br /><strong>ST</strong><br />ສຸພານຸວົງ, ເມືອງວາທ່າ, ສີໂຄດຕະບອງ, ນະຄອນຫຼວງວຽງຈັນ.<br /><a style=\"color: #444;\" href=\"https://www.stbanklaos.la/\" rel=\"noopener\">https://www.stbanklaos.la</a></td>\n<td>021-241 559-62</td>\n</tr>\n<tr>\n<td>PUBLIC BANK BERHAD <br /><strong>PBB</strong><br />ຕະຫຼາດເຊົ້າ, ຫັດສະດີໃຕ້, ​ຈັນ​ທະ​ບູ​ລີ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"https://www.pbebank.com/\" rel=\"noopener\">https://www.pbebank.com</a></td>\n<td>021-223 394</td>\n</tr>\n<tr>\n<td>KASIKORNTHAI BANK Limited <br /><strong>KBANK</strong><br />ບູຣິຈັນ, ໂພນສີນວນ, ສີສັດຕະນາກ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"https://www.kasikornbank.com.la/\" rel=\"noopener\">https://www.kasikornbank.com.la</a></td>\n<td>021-410 885</td>\n</tr>\n</tbody>\n</table>\n</div>', NULL, 'member-lao-atm-pool-switching', 'member-lao-atm-pool-switching', 'member-lao-atm-pool-switching', 'INACTIVE', '2020-05-11 20:24:56', '2021-01-26 00:17:16'),
(14, 1, 'Member Mobile Payment Switching', 'Excerpt of Member Mobile Payment Switching', '<div class=\"table-wrapper\">\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>Name, Location and Website</strong></td>\n<td><strong>Telephone Number</strong></td>\n</tr>\n<tr>\n<td>Lao Development Bank <br /><strong>LDB</strong><br />ສຸ​ພາ​ນຸ​ວົງ, ​ສີ​ຫອມ, ​ຈັນ​ທະ​ບູ​ລີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.ldblao.la/\" rel=\"noopener\">http://www.ldblao.la</a></td>\n<td>021 213 300-04</td>\n</tr>\n<tr>\n<td>ST BANK CO.,LTD<br /><strong>ST</strong><br />ສຸພານຸວົງ, ເມືອງວາທ່າ, ສີໂຄດຕະບອງ, ນະຄອນຫຼວງວຽງຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.stbanklaos.la/\" rel=\"noopener\">http://www.stbanklaos.la</a></td>\n<td>021-241 559-62</td>\n</tr>\n<tr>\n<td>BANQUE POUR LE COMMERCE EXTERIEUR LAO PUBLIC <br /><strong>BCEL</strong><br />ປາງ​ຄຳ, ຊຽ​ງ​ຍືນ, ​ຈັນ​ທະ​ບູ​ລີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.bcel.com.la/\" rel=\"noopener\">http://www.bcel.com.la</a></td>\n<td>856-21 213 200</td>\n</tr>\n<tr>\n<td>BIC Bank Lao Co., Ltd<br /><strong>BIC</strong><br />ຫັດສະດີ, ຫັດສະດີໃຕ້, ຈັນທະບູລີ, ນະຄອນຫຼວງວຽງຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.biclaos.com/\" rel=\"noopener\">http://www.biclaos.com</a></td>\n<td>(856-21) 250 388</td>\n</tr>\n<tr>\n<td>Joint Development Bank <br /><strong>JDB</strong><br />ລ້ານ​ຊ້າງ, ​ຫັດ​ສະ​ດີ, ​ຈັນ​ທະ​ບູ​ລີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.jdbbank.com.la/\" rel=\"noopener\">http://www.jdbbank.com.la</a></td>\n<td>021-213 531-6</td>\n</tr>\n<tr>\n<td>Laos-Vietnam Joint Venture Bank<br /><strong>LVB</strong><br />ລ້ານ​ຊ້າງ, ​ຫັດ​ສະ​ດີ, ​ຈັນ​ທະ​ບູ​ລີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.laovietbank.com.la/\" rel=\"noopener\">http://www.laovietbank.com.la</a></td>\n<td>021-251 416</td>\n</tr>\n<tr>\n<td>Agricultural Promotion Bank<br /><strong>APB</strong><br />ໄກ​ສອນ, ​ພະ​ຂາວ, ​ໄຊ​ທາ​ນີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.apb.com.la/\" rel=\"noopener\">http://www.apb.com.la</a></td>\n<td>021-713 060</td>\n</tr>\n</tbody>\n</table>\n</div>', NULL, 'member-mobile-payment-switching', 'member-mobile-payment-switching', 'member-mobile-payment-switching', 'INACTIVE', '2020-05-11 20:33:08', '2020-12-11 01:24:29'),
(15, 1, 'Home', 'Picture', '', 'pages/December2021/wUB9ch11Z1KN5LHQ0RSh.jpg', 'home', 'Picture', 'Picture', 'ACTIVE', '2021-01-26 01:55:27', '2021-12-15 20:01:37'),
(16, 1, 'Fee charge of Cash Withdraw via ATM', 'Fee charge of Cash Withdraw via ATM', '<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>Fee charge for Cash Withdraw Service via ATM</strong></td>\n</tr>\n<tr>\n<td>2.000 LAK per once time</td>\n</tr>\n</tbody>\n</table>', NULL, 'fee-charge-of-cash-withdraw-via-atm', 'Fee charge of Cash Withdraw via ATM', 'Fee charge of Cash Withdraw via ATM', 'INACTIVE', '2021-04-19 20:35:38', '2021-04-19 20:35:38'),
(17, 1, 'Fee charge of Fund Transfer via ATM', 'Fee charge of Fund Transfer via ATM', '<p>Range table for Customer do Fund Transfer via ATM can transfer from 1.000 LAK to 100.000.000 LAK per once time.</p>\n<div class=\"table-wrapper\">\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>Do Fund Transfer from</strong></td>\n<td><strong>to</strong></td>\n<td><strong>Fee Charge</strong></td>\n</tr>\n<tr>\n<td>1.000 LAK</td>\n<td>2.000.000 LAK</td>\n<td>1.000 LAK per transaction</td>\n</tr>\n<tr>\n<td>2.000.001 LAK</td>\n<td>3.000.000 LAK</td>\n<td>1.500 LAK per transaction</td>\n</tr>\n<tr>\n<td>3.000.001 LAK</td>\n<td>4.000.000 LAK</td>\n<td>2.500 LAK per transaction</td>\n</tr>\n<tr>\n<td>4.000.001 LAK</td>\n<td>5.000.000 LAK</td>\n<td>3.000 LAK per transaction</td>\n</tr>\n<tr>\n<td>5.000.001 LAK</td>\n<td>7.000.000 LAK</td>\n<td>4.500 LAK per transaction</td>\n</tr>\n<tr>\n<td>7.000.001 LAK</td>\n<td>10.000.000 LAK</td>\n<td>7.500 LAK per transaction</td>\n</tr>\n<tr>\n<td>10.000.001 LAK</td>\n<td>30.000.000 LAK</td>\n<td>12.000 LAK per transaction</td>\n</tr>\n<tr>\n<td>30.000.001 LAK</td>\n<td>50.000.000 LAK</td>\n<td>15.500 LAK per transaction</td>\n</tr>\n<tr>\n<td>50.000.001 LAK</td>\n<td>100.000.000 LAK</td>\n<td>20.000 LAK per transaction</td>\n</tr>\n</tbody>\n</table>\n</div>', NULL, 'fee-charge-of-fund-transfer-via-atm', 'Fee charge of Fund Transfer via ATM', 'Fee charge of Fund Transfer via ATM', 'INACTIVE', '2021-04-19 20:43:52', '2021-09-01 02:29:17'),
(18, 1, 'Fee charge of Fund Transfer via Mobile Application', 'Fee charge of Fund Transfer via Mobile Application', '<div class=\"table-wrapper\">\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>Do Fund Transfer from</strong></td>\n<td><strong>to</strong></td>\n<td><strong>Fee Charge</strong></td>\n</tr>\n<tr>\n<td>1 LAK</td>\n<td>2.000.000 LAK</td>\n<td>1.000 LAK per transaction</td>\n</tr>\n<tr>\n<td>2.000.001 LAK</td>\n<td>3.000.000 LAK</td>\n<td>1.500 LAK per transaction</td>\n</tr>\n<tr>\n<td>3.000.001 LAK</td>\n<td>4.000.000 LAK</td>\n<td>2.500 LAK per transaction</td>\n</tr>\n<tr>\n<td>4.000.001 LAK</td>\n<td>5.000.000 LAK</td>\n<td>3.000 LAK per transaction</td>\n</tr>\n<tr>\n<td>5.000.001 LAK</td>\n<td>7.000.000 LAK</td>\n<td>4.500 LAK per transaction</td>\n</tr>\n<tr>\n<td>7.000.001 LAK</td>\n<td>10.000.000 LAK</td>\n<td>7.500 LAK per transaction</td>\n</tr>\n<tr>\n<td>10.000.001 LAK</td>\n<td>30.000.000 LAK</td>\n<td>12.000 LAK per transaction</td>\n</tr>\n<tr>\n<td>30.000.001 LAK</td>\n<td>50.000.000 LAK</td>\n<td>15.500 LAK per transaction</td>\n</tr>\n<tr>\n<td>50.000.001 LAK</td>\n<td>100.000.000 LAK</td>\n<td>20.000 LAK per transaction</td>\n</tr>\n</tbody>\n</table>\n</div>', NULL, 'fee-charge-of-fund-transfer-via-mobile-application', 'Fee charge of Fund Transfer via Mobile Application', 'Fee charge of Fund Transfer via Mobile Application', 'INACTIVE', '2021-04-19 20:55:56', '2021-04-19 20:55:56'),
(19, 1, 'Lecal', 'ນິຕິກຳ ກ່ຽວກັບ ກົດລະບຽບການເຂົ້າເປັນສະມາຊິກ ຄ່າທຳນຽມ', '', NULL, 'lecal', 'Lecal', 'Lecal', 'ACTIVE', '2021-11-04 02:01:28', '2021-11-04 02:01:28'),
(20, 1, 'Announcement', 'ເອກະສານແຈ້ງການ', '', NULL, 'announcement-document', 'Announcement', 'Announcement', 'ACTIVE', '2021-11-04 19:29:28', '2021-11-04 19:29:38'),
(21, 1, 'Rule for member', 'ເອກະສານ ກົດລະບຽບສຳລັບສະມາຊິກ', '', NULL, 'rule-for-member-document', 'Rule from member document', 'Rule from member document', 'ACTIVE', '2021-11-04 19:33:01', '2021-11-04 19:36:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(2, 'browse_bread', NULL, '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(3, 'browse_database', NULL, '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(4, 'browse_media', NULL, '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(5, 'browse_compass', NULL, '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(6, 'browse_menus', 'menus', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(7, 'read_menus', 'menus', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(8, 'edit_menus', 'menus', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(9, 'add_menus', 'menus', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(10, 'delete_menus', 'menus', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(11, 'browse_roles', 'roles', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(12, 'read_roles', 'roles', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(13, 'edit_roles', 'roles', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(14, 'add_roles', 'roles', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(15, 'delete_roles', 'roles', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(16, 'browse_users', 'users', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(17, 'read_users', 'users', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(18, 'edit_users', 'users', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(19, 'add_users', 'users', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(20, 'delete_users', 'users', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(21, 'browse_settings', 'settings', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(22, 'read_settings', 'settings', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(23, 'edit_settings', 'settings', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(24, 'add_settings', 'settings', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(25, 'delete_settings', 'settings', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(26, 'browse_categories', 'categories', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(27, 'read_categories', 'categories', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(28, 'edit_categories', 'categories', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(29, 'add_categories', 'categories', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(30, 'delete_categories', 'categories', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(31, 'browse_posts', 'posts', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(32, 'read_posts', 'posts', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(33, 'edit_posts', 'posts', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(34, 'add_posts', 'posts', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(35, 'delete_posts', 'posts', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(36, 'browse_pages', 'pages', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(37, 'read_pages', 'pages', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(38, 'edit_pages', 'pages', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(39, 'add_pages', 'pages', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(40, 'delete_pages', 'pages', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(41, 'browse_hooks', NULL, '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(42, 'browse_product', 'product', '2020-01-14 20:02:12', '2020-01-14 20:02:12'),
(43, 'read_product', 'product', '2020-01-14 20:02:12', '2020-01-14 20:02:12'),
(44, 'edit_product', 'product', '2020-01-14 20:02:12', '2020-01-14 20:02:12'),
(45, 'add_product', 'product', '2020-01-14 20:02:12', '2020-01-14 20:02:12'),
(46, 'delete_product', 'product', '2020-01-14 20:02:12', '2020-01-14 20:02:12'),
(52, 'browse_products', 'products', '2020-01-14 20:26:48', '2020-01-14 20:26:48'),
(53, 'read_products', 'products', '2020-01-14 20:26:48', '2020-01-14 20:26:48'),
(54, 'edit_products', 'products', '2020-01-14 20:26:48', '2020-01-14 20:26:48'),
(55, 'add_products', 'products', '2020-01-14 20:26:48', '2020-01-14 20:26:48'),
(56, 'delete_products', 'products', '2020-01-14 20:26:48', '2020-01-14 20:26:48'),
(57, 'browse_member', 'member', '2020-06-02 21:15:03', '2020-06-02 21:15:03'),
(58, 'read_member', 'member', '2020-06-02 21:15:03', '2020-06-02 21:15:03'),
(59, 'edit_member', 'member', '2020-06-02 21:15:03', '2020-06-02 21:15:03'),
(60, 'add_member', 'member', '2020-06-02 21:15:03', '2020-06-02 21:15:03'),
(61, 'delete_member', 'member', '2020-06-02 21:15:03', '2020-06-02 21:15:03'),
(62, 'browse_members', 'members', '2020-06-02 23:48:05', '2020-06-02 23:48:05'),
(63, 'read_members', 'members', '2020-06-02 23:48:05', '2020-06-02 23:48:05'),
(64, 'edit_members', 'members', '2020-06-02 23:48:05', '2020-06-02 23:48:05'),
(65, 'add_members', 'members', '2020-06-02 23:48:05', '2020-06-02 23:48:05'),
(66, 'delete_members', 'members', '2020-06-02 23:48:05', '2020-06-02 23:48:05'),
(67, 'browse_contents', 'contents', '2020-06-03 01:05:50', '2020-06-03 01:05:50'),
(68, 'read_contents', 'contents', '2020-06-03 01:05:50', '2020-06-03 01:05:50'),
(69, 'edit_contents', 'contents', '2020-06-03 01:05:50', '2020-06-03 01:05:50'),
(70, 'add_contents', 'contents', '2020-06-03 01:05:50', '2020-06-03 01:05:50'),
(71, 'delete_contents', 'contents', '2020-06-03 01:05:50', '2020-06-03 01:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 4),
(2, 1),
(3, 1),
(4, 1),
(4, 4),
(5, 1),
(6, 1),
(6, 4),
(7, 1),
(7, 4),
(8, 1),
(8, 4),
(9, 1),
(9, 4),
(10, 1),
(10, 4),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(31, 4),
(32, 1),
(32, 4),
(33, 1),
(33, 4),
(34, 1),
(34, 4),
(35, 1),
(35, 4),
(36, 1),
(36, 4),
(37, 1),
(37, 4),
(38, 1),
(38, 4),
(39, 1),
(39, 4),
(40, 1),
(40, 4),
(42, 1),
(42, 4),
(43, 1),
(43, 4),
(44, 1),
(44, 4),
(45, 1),
(45, 4),
(46, 1),
(46, 4),
(52, 1),
(52, 4),
(53, 1),
(53, 4),
(54, 1),
(54, 4),
(55, 1),
(55, 4),
(56, 1),
(56, 4),
(57, 1),
(57, 4),
(58, 1),
(58, 4),
(59, 1),
(59, 4),
(60, 1),
(60, 4),
(61, 1),
(61, 4),
(62, 1),
(62, 4),
(63, 1),
(63, 4),
(64, 1),
(64, 4),
(65, 1),
(65, 4),
(66, 1),
(66, 4),
(67, 1),
(67, 4),
(68, 1),
(68, 4),
(69, 1),
(69, 4),
(70, 1),
(70, 4),
(71, 1),
(71, 4);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(8, 1, 1, 'LAPNet Shareholders JVA Signing Ceremony', 'LAPNet-Shareholders-JVA', 'LAPNet Shareholders Joint Venture Agreement Signing Ceremony', '<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/January2020/64JUCMCUCYN8drx5tQ6J.jpg\" alt=\"\" /></p>\n<p>ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ຫຼື LAPNet (Lao National Payment Network) ໄດ້ຈັດພິທີລົງນາມໃນສັນຍາການຮ່ວມທຶນ ຂອງບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ໃນຕອນເຊົ້າວັນທີ 22/11/2019, ທີ່ໂຮງແຮມ ຄຣາວ ພລາຊ່າ ໂດຍການໃຫ້ກຽດເຂົ້າຮ່ວມຂອງ ທ່ານ ສອນໄຊ ສິດພະໄຊ ຜູ້ວ່າການທະນາຄານແຫ່ງ ສປປ ລາວ, ຕາງໜ້າຈາກກະຊວງອຸດສາຫະກຳ ແລະ ການຄ້າ ແລະ ບັນດາທະນາຄານຕາງໜ້າຈາກຜູ້ຖືຮຸ້ນ 9 ຝ່າຍ ທັງພາຍໃນ ແລະ ຕ່າງປະເທດ ພ້ອມທັງການເຂົ້າຮ່ວມເປັນສັກຂີພະຍານຂອງຕາງໜ້າຈາກບັນດາທະນາຄານທຸລະກິດ ພາຍໃນ ສປປ ລາວ.</p>\n<p><br />ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ໄດ້ສ້າງຕັ້ງຂຶ້ນພາຍໃຕ້ການຮ່ວມມື ຂອງ 9 ຜູ້ຖືຮຸ້ນ ອັນໄດ້ແກ່: ທະນາຄານ ແຫ່ງ ສປປ ລາວ, ທະນາຄານການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ, ບໍລິສັດ ຢູນຽນເພ ສາກົນ, ທະນາຄານພັດທະນາລາວ, ທະນາຄານສົ່ງເສີມກະສິກຳ, ທະນາຄານຮ່ວມພັດທະນາ, ທະນາຄານຮ່ວມທຸລະກິດລາວ-ຫວຽດ, ທະນາຄານເອັສທີ ຈຳກັດ ແລະ ທະນາຄານ ບີໄອຊີ ລາວ ຈຳກັດ</p>\n<p>&nbsp;</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/January2020/74524019_153873802661356_2452165200594337792_o1.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/January2020/78279416_153873769328026_4372879772275965952_n1.jpg\" alt=\"\" /></p>', 'posts\\January2020\\64JUCMCUCYN8drx5tQ6J.jpg', 'lapnet-shareholders-jva-signing-ceremony', 'LAPNet-Shareholders-JVA', 'LAPNet-Shareholders-JVA', 'PUBLISHED', 0, '2020-01-30 01:02:15', '2021-08-10 00:41:24'),
(9, 1, 1, 'Grand Opening LAPNet', 'grand-opening-lapnet', 'Grand Opening of Lao National Payment Network Co., Ltd and Launching Its Product of the Funds Transfer via ATM', '<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/1.jpg\" alt=\"\" /></p>\n<p>ພິທີເປີດບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ຢ່າງເປັນທາງການ ແລະ ເປີດໂຕການບໍລິການໂອນເງິນຂ້າມທະນາຄານ ໂດຍຜ່ານຕູ້ ATM</p>\n<p>ຕອນບ່າຍ ວັນທີ 25 ພະຈິກ 2019 ທີ່ຜ່ານມາ ໄດ້ມີພິທີເປີດໂຕ ບໍລິສັດ ລາວເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ຢ່າງເປັນທາງການ ທີ່ໂຮງແຮມຄຣາວ ພລາຊ່າ ວຽງຈັນ ແລະ ເປີດໂຕຜະລິດຕະພັນໂອນເງິນຂ້າມທະນາຄານ ໂດຍຜ່ານຕູ້ ເອທີເອັມ ໂດຍການໃຫ້ກຽດເຂົ້າຮ່ວມຂອງ ທ່ານ ສອນໄຊ ສິດພະໄຊ ຜູ້ວ່າການ ທະນາຄານ ແຫ່ງ ສປປ ລາວ ພ້ອມດ້ວຍການເຂົ້າຮ່ວມຂອງບັນດາຕາງໜ້າຜູ້ຖືຮຸ້ນຂອງບໍລິສັດ, ບັນດາກົມຂອງ ທະນາຄານ ແຫ່ງ ສປປ ລາວ, ບັນດາກະຊວງ, ທະນາຄານທຸລະກິດ ແລະ ບັນດາພາກສ່ວນທີ່ກ່ຽວຂ້ອງ.</p>\n<p>ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (Lao National Payment Network Co., Ltd ຫຼື LAPNet ) ໄດ້ສ້າງຕັ້ງຂຶ້ນແຕ່ວັນທີ 12 ມີນາ 2019 ແລະ ວັນທີ 22 ພະຈິກ 2019 ກໍ່ໄດ້ມີການຈັດພິທີລົງນາມໃນສັນຍາການຮ່ວມທຶນ ສ້າງຕັ້ງບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ພາຍໃຕ້ການຮ່ວມມືຂອງບັນດາຜູ້ຖືຮຸ້ນພາຍໃນ ນຳພາໂດຍ ທະນາຄານ ແຫ່ງ ສປປ ລາວ, ພ້ອມກັບ 7 ທະນາຄານທຸລະກິດຍັກໃຫຍ່ ຂອງ ສປປ ລາວຄື: ທະນາຄານການຄ້າ ຕ່າງປະເທດລາວ ມະຫາຊົນ, ທະນາຄານພັດທະນາລາວ, ທະນາຄານສົ່ງເສີມກະສິກຳ, ທະນາຄານຮ່ວມພັດທະນາ, ທະນາຄານຮ່ວມທຸລະກິດລາວ-ຫວຽດ, ທະນາຄານ ເອັສທີ ຈຳກັດ ແລະ ທະນາຄານ ບີໄອຊີ ລາວ ຈຳກັດ ແລະ ຜູ້ຖືຮຸ້ນຕ່າງປະເທດອັນໄດ້ແກ່: ບໍລິສັດ ຢູນຽນເພ ສາກົນ;.<br /><br />ໂດຍຈຸດປະສົງການດຳເນີນທຸລະກິດຂອງບໍລິສັດ ແມ່ນເຮັດໜ້າທີ່ຄວບຄຸມລະບົບຊຳລະທຸລະກຳຍ່ອຍ ໃນ ສປປ ລາວ ຕາມຄຳຂວັນຂອງບໍລິສັດ ທີ່ວ່າ: &ldquo;ທຸກທີ່, ທຸກເວລາ ແລະ ທຸກເຄື່ອງມືການຊຳລະ (Any Time, Any Where and Any Payment Channel)&rdquo; ສອດຄ່ອງກັບລະດັບຄາດໝາຍທີ່ໄດ້ວາງໄວ້ໃນແຜນຍຸດທະສາດພັດທະນາລະບົບສະຖາບັນການເງິນ-ເງິນຕາ ຂອງ ສປປ ລາວ ໄລຍະ 10 ປີ (2016-2025) ແລະ ຕາມວິໄສທັດຮອດປີ 2030.<br /><br />ປະຈຸບັນ ບໍລິສັດ LAPNet ໄດ້ມີ ສະມາຊິກທັງໝົດ 12 ທະນາຄານ ທີ່ສາມາດເຮັດທຸລະກຳ ຄື: ກວດຍອດເງິນໃນບັນຊີ, ຖອນເງິນສົດ ຜ່ານຕູ້ເອທີເອັມຮ່ວມກັນໄດ້ແລ້ວ ທົ່ວປະເທດ ອັນໄດ້ແກ່: ທະນາຄານການຄ້າຕ່າງປະເທດລາວ, ທະນາຄານພັດທະນາລາວ, ທະນາຄານສົ່ງເສີມກະສິກຳ, ທະນາຄານຮ່ວມທຸລະກິດລາວ-ຫວຽດ, ທະນາຄານຮ່ວມພັດທະນາ, ທະນາຄານ ມາຣູຮານ ເຈແປນ ລາວ ຈຳກັດ, ທະນາຄານ ຫວຽດຕິນ ລາວ, ທະນາຄານອຸດສາຫະກຳ ແລະ ການຄ້າຈີນ, ທະນາຄານແຫ່ງ ປະເທດຈີນ, ທະນາຄານເອຊີລີດາລາວ, ທະນາຄານ ອິນໂດຈີນລາວ ແລະ ທະນາຄານ ບີໄອຊີລາວ ຈຳກັດ.<br /><br />- ປະຈຸບັນ ບໍລິສັດກຳລັງລິເລີ່ມໂຄງການໂອນເງິນເງິນຂ້າມທະນາຄານ ໂດຍຜ່ານຕູ້ເອທີເອັມ ຊຶ່ງຕອນນີ້ໄດ້ມີ 6 ທະນາຄານທີ່ເປັນສະມາຊິກ ສາມາດພັດທະນາລະບົບຂອງຕົນສຳເລັດ ຊຶ່ງຈະເປີດໃຫ້ນຳໃຊ້ໄດ້ບາງຈຸດ ແລະ ສາມາດນຳໃຊ້ໄດ້ທຸກຕູ້ພາຍໃນທ້າຍປີ 2019 ນີ້:<br />- ຊຶ່ງໃນຕໍ່ໜ້າບໍລິສັດ ຈະພະຍາຍາມພັດທະນາລະບົບທີ່ສາມາດຊຳລະຄ່າສິນຄ້າ ແລະ ຄ່າບໍລິການຕ່າງໆຢູ່ຮ້ານຄ້າໂດຍຜ່ານເຄື່ອງພີໂອເອສ,ຜ່ານ QR Code ຂອງທະນາຄານທຸລະກິດອື່ນທີ່ເປັນສະມາຊິກຂອງບໍລິສັດ LAPNet ໄດ້.</p>\n<p>&nbsp;</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/2.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/3.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/4.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/5.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/6.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/7.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/8.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/9.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/10.jpg\" alt=\"\" /></p>', 'posts\\January2020\\SV515nKmVqdWxiVQzxug.jpg', 'grand-opening-lapnet', 'grand-opening-lapnet', 'grand-opening-lapnet', 'PUBLISHED', 0, '2020-01-30 01:18:07', '2020-07-15 20:41:18'),
(11, 1, 1, 'Invitation to bid', '', 'Lao National Payment Network Co Ltd (LAPNet) Will hold an open procurement bid to seek a supplier or business partner for creation of the \" Interbank Mobile Payment Service\" ', '<p>Lao National Payment Network Co Ltd (LAPNet) Will hold an open procurement bid to seek a supplier or business partner for creation of the \" Interbank Mobile Payment Service\"<br />For more information please contact us at Email: lapnet110@gmail.com Telephone 020 28175150, 030 5687610, 030 5687614</p>\n<p>&nbsp;</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 50%;\" src=\"https://lapnet.com.la/storage/posts/Invitation%20to%20bid/1.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 50%;\" src=\"https://lapnet.com.la/storage/posts/Invitation%20to%20bid/2.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 50%;\" src=\"https://lapnet.com.la/storage/posts/Invitation%20to%20bid/3.png\" alt=\"\" /></p>', 'posts\\February2020\\or93vrjPqBnIaOW9ttgK.png', 'invitation-to-bid', 'invitation-to-bid', 'invitation-to-bid', 'PUBLISHED', 0, '2020-01-30 01:44:47', '2020-07-15 20:40:27'),
(12, 1, 1, 'Suetsaka College take students on a Field Trip at LAPNet company', '', '', '<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/1.jpg\" alt=\"\" /></p>\n<p>ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ຕ້ອນຮັບຄະນະນັກສຶກສາ ຈາກວິທະຍາໄລ ສຸດສະກະເພື່ອການບໍລິຫານ ແລະ ເຕັກໂນໂລຊີ ເພື່ອທັດສະນະສຶກສາ ຮຽນຮູ້ການປະຕິບັດ ວຽກງານຕົວຈິງຂອງລະບົບຊໍາລະ ແລະ ການພັດທະນາການເຊື່ອມຕໍ່ລະບົບຊໍາລະຍ່ອຍ ລະຫວ່າງ ທະນາຄານໃນ ສປປ ລາວ.</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/2.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/3.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/3-1.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/4.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/5.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/6.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/7.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/8.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/9.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/10.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/11.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/12.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/13.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/14.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/15.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/16.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/17.jpg\" alt=\"\" /></p>', 'posts/September2020/LZbZWu2vwbIeOmeCUrND.jpg', 'lapnet-suetsaka-collage-04-09-2020', '', '', 'PUBLISHED', 0, '2020-09-15 00:41:12', '2020-09-15 01:07:50'),
(13, 1, 1, 'Event Football friendship LAPNet Company & JDB Bank', '', '', '<p style=\"text-align: center;\">ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ສ້າງກິດຈະກຳ ກິລາບານເຕະມິດຕະພາບ ຮ່ວມກັບ ທະນາຄານ ຮ່ວມພັດທະນາ (JDB) ໃນວັນທີ 11 ກັນຍາ 2020 ທີ່ຜ່ານມາ.<br />ເພື່ອເປັນການຂໍ່ານັບຮັບຕ້ອນ ວັນສ້າງຕັ້ງ ທະນາຄານ ແຫ່ງ ສປປ ລາວ ຄົບຮອບ 52 ປີ ທີ່ຈະໝູນວຽນມາເຖິງ.</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/YzYphpAgSxWaBv7nhw9t.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020LAPNet-JDB/LAPNet-vs-JDB-1.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020LAPNet-JDB/LAPNet-vs-JDB-2.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020LAPNet-JDB/LAPNet-vs-JDB-3.jpg\" alt=\"\" /></p>', 'posts/September2020/YzYphpAgSxWaBv7nhw9t.jpg', 'football-friendship-lapnet-jdb-11-09-2020', '', '', 'PUBLISHED', 0, '2020-09-15 01:13:20', '2020-09-15 01:33:27'),
(14, 1, 1, 'Event Football friendship LAPNet Company & PSD', '', '', '<p style=\"text-align: center;\">ໃນວັນທີ 22 ຕຸລາ 2020 ທີ່ຜ່ານມາ ທີ່ເດີ່ນເຕະບານ ຫຍ້າທຽມ Victory, ນະຄອນຫຼວງວຽງຈັນ ໄດ້ມີກິດຈະກຳບານເຕະມິດຕະພາບ ລະຫວ່າງ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ແລະ&nbsp; ກົມຄຸ້ມຄອງລະບົບຊຳລະສະສາງ (Payment Systems Department).</p>\n<p style=\"text-align: center;\">ເພື່ອເປັນການຮັດແໜ້ນຄວາມສາມັກຄີ, ແລກປ່ຽນສາຍສຳພັນ ແລະ ເສີມສ້າງສາຍສຳພັນ ລະຫວ່າງພະນັກງານທັງ 2 ພາກສ່ວນ.</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/October2020/RlWtHwJOYvZChC216OEi.png\" alt=\"\" /></p>', 'posts/October2020/RlWtHwJOYvZChC216OEi.png', 'football-friendship-lapnet-psd-22-10-2020', '', '', 'PUBLISHED', 0, '2020-10-26 19:09:14', '2020-10-26 19:11:47'),
(18, 1, 1, 'LAPNet launch product of Fund Transfer cross banks via Banks Application', '', '', '<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/1.jpg\" alt=\"\" /></p>\n<p>ໃນຕອນບ່າຍ ວັນອັງຄານທີ 08 ທັນວາ 2020 ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ຫຼື LAPNet ໄດ້ຈັດພິທີເປີດໂຕຜະລິດຕະພັນໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື ຢ່າງເປັນທາງການ ທີ່ໂຮງແຮມແລນມາກ ແລະ ພາຍໃນງານຍັງໄດ້ມອບໃບຍ້ອງຍໍໃຫ້ແກ່ 7 ທະນາຄານແບບຢ່າງທີ່ສາມາດເປີດໃຫ້ບໍລິການຜະລິດຕະພັນໂອນເງິນຂ້າມທະນາຄານເທິງມືຖືໃຫ້ແກ່ມວນຊົນນຳໃຊ້ຢ່າງເປັນທາງການ. ພິທີດັ່ງກ່າວໃຫ້ກຽດເຂົ້າຮ່ວມຍິນດີໂດຍ ທ່ານ ສອນໄຊ ສິດພະໄຊ ຜູ້ວ່າການ ທະນາຄານ ແຫ່ງ ສປປ ລາວ ພ້ອມດ້ວຍການເຂົ້າຮ່ວມຂອງບັນດາຕາງໜ້າຜູ້ຖືຮຸ້ນຂອງບໍລິສັດ, ບັນດາກົມຂອງທະນາຄານ ແຫ່ງ ສປປ ລາວ, ບັນດາກະຊວງ, ທະນາຄານທຸລະກິດ ແລະ ພາກສ່ວນທີ່ກ່ຽວຂ້ອງ.</p>\n<p>ການດຳເນີນທຸລະກິດຂອງ LAPNet ຊຶ່ງເປັນຜູ້ຄວບຄຸມລະບົບການຊຳລະທຸລະກຳຍ່ອຍແຫ່ງຊາດ ໃນ ສປປ ລາວ ມີເຮັດໜ້າທີ່ເປັນສື່ກາງໃນການເຮັດທຸລະກຳຮ່ວມກັນດ້ວຍຫຼາຍຮູບແບບ ແລະ ຫຼາກຫຼາຍຊ່ອງທາງ. LAPNet ໄດ້ພັດທະນາລະບົບເພື່ອສ້າງຜະລິດຕະພັນໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື ທີ່ຈະຊ່ວຍອຳນວຍຄວາມສະດວກໃຫ້ມວນຊົນເຮັດທຸລະກຳທາງການເງິນຢູ່ເທິງມືຖື ຕາມຄຳຂວັນທີ່ວ່າ: &ldquo;ທຸກທີ່ ທຸກເວລາ ທຸກຊ່ອງທາງການຊຳລະ&rdquo;</p>\n<p>ປະຈຸບັນ LAPNet ມີເຄືອຂ່າຍເຮັດທຸລະກໍາການນຳໃຊ້ບັດທະນາຄານຮ່ວມກັນ ຫຼື ນຳໃຊ້ຕູ້ ATM ຮ່ວມກັນ ໃນການຖອນເງິນສົດ, ກວດຍອດເງິນໃນບັນຊີຮ່ວມກັນໄດ້ 16 ທະນາຄານ ໃນນີ້,uທະນາຄານ ການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ; ທະນາຄານ ພັດທະນາລາວ; ທະນາຄານ ຮ່ວມພັດທະນາ; ທະນາຄານ ສົ່ງເສີມກະສິກຳ; ທະນາຄານ ມາຣູຮານເຈແປນລາວ; ທະນາຄານ ຮ່ວມທຸລະກິດລາວ-ຫວຽດ; ທະນາຄານ ອຸດສະຫະກຳ ແລະ ການຄ້າ ຈີນ;ທະນາຄານ ແຫ່ງປະເທດຈີນ ຈຳກັດ; ທະນາຄານ ຫວຽດຕິນ ລາວ ຈຳກັດ; ທະນາຄານ ອິນໂດຈີນ ຈຳກັດ; ທະນາຄານ ເອຊີລີດາລາວ ຈຳກັດ; ທະນາຄານ ບີໄອຊີ ລາວ ຈຳກັດ; ທະນາຄານ ຊາຄອມແບັງ ລາວ; ທະນາຄານ ເອັສທີ ຈຳກັດ; ທະນາຄານ ພາບລິກ ສາຂານະຄອນຫຼວງ; ທະນາຄານກະສິກອນໄທ ສາຂານະຄອນຫຼວງ.</p>\n<p>ສຳລັບການໂອນເງິນຂ້າມທະນາຄານໂດຍຜ່ານຕູ້ ATM ປະກອບມີ 10 ທະນາຄານທຸລະກິດຄື: ທະນາຄານພັດທະນາລາວ; ທະນາຄານສົ່ງເສີມກະສິກຳ; ທະນາຄານ ບີໄອຊີລາວ ຈໍາກັດ; ທະນາຄານ ຮ່ວມພັດທະນາ; ທະນາຄານ ມະຣູຮານ ເຈແປນ ລາວ; ທະນາຄານການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ; ທະນາຄານ ເອັສທີ ຈຳກັດ; ທະນາຄານ ຮ່ວມທຸລະກິດລາວ-ຫວຽດ; ທະນາຄານ ພາບລິກ ສາຂານະຄອນຫຼວງ; ທະນາຄານ ກະສິກອນໄທ ສາຂານະຄອນຫຼວງ.</p>\n<p>ໃນດ້ານຜະລິດຕະພັນໃໝ່ລ້າສຸດທີ່ໄດ້ອອກໃຫ້ມວນຊົນໄດ້ເລີ່ມນຳໃຊ້ແຕ່ວັນທີ 08/12/2020 ແມ່ນການໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື ໂດຍນຳໃຊ້ຮູບແບບສ້າງເປັນ QR Code ຮ່ວມກັນ ລະຫວ່າງ ທະນາຄານ ພັດທະນາລາວ ແລະ ທະນາຄານ ເອັສທີ ຈຳກັດ; ສ່ວນການໂອນເງິນເທີງມືຖືໂດຍນຳໃຊ້ຮູບແບບການໂອນ ບັນຊີຫາບັນຊີ ຫຼື ເອີ້ນວ່າ Account Fund transfer ແມ່ນແລ້ວ 5 ທະນາຄານ ຄື: ທະນາຄານການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ, ທະນາຄານຮ່ວມທຸລະກິດລາວ - ຫວຽດ, ທະນາຄານຮ່ວມພັດທະນາ ແລະ ທະນາຄານ ບີໄອຊີລາວ ຈຳກັດ ຊຶ່ງ ໃນນັ້ນ ທະນາຄານ ສົ່ງເສີມກະສິກຳ ແມ່ນກຳລັງດຳເນີນການ ແລະ ຄາດວ່າຈະໃຫ້ສຳເລັດ ໃນໄຕມາດທີ 1 ຂອງປີ 2021.</p>\n<p>ທ່ານ ຫົງຄຳ ເພັດດາວົງ ຜູ້ອຳນວຍການ ບໍລິສັດ LAPNet ໄດ້ໃຫ້ຮູ້ວ່າ: &ldquo;ໃນຕໍ່ໜ້າຈະໃຫ້ສາມາດຊຳລະຄ່າສິນຄ້າ ແລະ ຄ່າບໍລິການຕ່າງໆຢູ່ຮ້ານຄ້າໂດຍຜ່ານເຄື່ອງພີໂອເອສ, ຜ່ານ QR Code ຮ່ວມກັນໄດ້ຂອງບັນດາທະນາຄານທຸລະກິດ ແລະ ບໍລິສັດ Fintech ອື່ນທີ່ເປັນສະມາຊິກຂອງບໍລີສັດ LAPNet. ບໍລິສັດ LAPNet ຍັງໄດ້ຕັ້ງເປົ້າຜັນຂະຫຍາຍທຸລະກິດ ແລະ ວາງແຜນພັດທະນາລະບົບໂຄງລ່າງພື້ນຖານດ້ານການຊຳລະໃຫ້ມວນຊົນສາມາດເຮັດທຸລະກຳທາງການເງິນ ທີ່ທັນສະໄໝ, ປອດໄພ ສາມາດເຊື່ອມໂຍງກັບພາກພື້ນ ແລະ ສາກົນ.&rdquo;</p>\n<p>&nbsp;</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/2.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/3-1.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/3-2.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/3-3.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/3_copy.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/4.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/4_1.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/4_2.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/5.jpg\" alt=\"\" /></p>\n<div class=\"fb-wrapper\"><iframe style=\"border: none; overflow: hidden;\" src=\"https://www.facebook.com/plugins/video.php?height=314&amp;href=https%3A%2F%2Fwww.facebook.com%2Flaonationalpaymentnetwork%2Fvideos%2F872070253562725%2F&amp;show_text=false&amp;width=560\" width=\"560\" height=\"314\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"true\"></iframe></div>', 'posts/December2020/VQxo8qhdCIGmIt2gCUuR.jpg', 'lapnet-launch-product-of-fund-transfer-cross-banks-via-banks-application', '', '', 'PUBLISHED', 0, '2020-12-17 18:39:23', '2020-12-18 02:01:46'),
(19, 1, 1, 'LAPNet Holds the 1st Ordinary the Board of Directors Meeting and the 1st Shareholder Meeting in 2021', '', 'LAPNet Holds the 1st Ordinary the Board of Directors Meeting and the 1st Shareholder Meeting in 2021', '<p style=\"text-align: left;\"><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/March2021/WhatsApp%20Image%202021-03-16%20at%2013.13.32.jpg\" alt=\"\" />ໃນຕອນເຊົ້າຂອງວັນສຸກ ວັນທີ 12&nbsp; ມີນາ 2021, ເວລາ 9:00 ໂມງ, LAPNet ໄດ້ມີການຈັດກອງປະຊຸມສະພາບໍລິຫານ ສະໄໝສາມັນ ແລະ ກອງປະຊຸມຜູ້ຖືຮຸ້ນ ສະໄໝສາມັນ ຄັ້ງທີ I ປະຈໍາປີ 2021 ໂດຍການເປັນປະທານຂອງ ທ່ານ ລັດສະໝີ ສຸວັນທອງ ຮອງຫົວໜ້າກົມເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ ທະນາຄານແຫ່ງ ສປປ ລາວ, ປະທານສະພາບໍລິຫານຂອງບໍລິສັດ ທັງເປັນຕາງໜ້າຜູ້ຖືຮຸ້ນອັນດັບໜຶ່ງຂອງ LAPNet ພ້ອມດ້ວຍ ທ່ານ ຮອງປະທານສະພາບໍລິຫານ, ບັນດາທ່ານ ສະມາຊິກສະພາບໍລິຫານ ແລະ ບັນດາຕາງໜ້າຂອງແຕ່ລະຜູ້ຖືຮຸ້ນ ກໍ່ໄດ້ເຂົ້າຮ່ວມ.</p>\n<p style=\"text-align: left;\">ເນື້ອໃນຫຼັກຂອງກອງປະຊຸມຄັ້ງນີ້ ແມ່ນເພື່ອລາຍງານກ່ຽວກັບການເຄື່ອນໄຫວທຸລະກິດ ປະຈຳປີ&nbsp; 2020&nbsp; ແລະ ແຜນດຳເນີນງານປະຈຳປີ 2021. ພ້ອມນັ້ນ ຍັງໄດ້ນຳສະເໜີແຜນຍຸດທະສາດໃນການດຳເນີນທຸລະກິດ ແຕ່ປີ 2021 &ndash; 2025 ໂດຍຍົກໃຫ້ເຫັນຜົນສຳເລັດຂອງວຽກງານໃນໄລຍະຜ່ານມາ ແລະ ແຜນທີ່ຈະດຳເນີນໃນຕໍ່ໜ້າ.</p>\n<p style=\"text-align: left;\">ຍ້ອນການໃຫ້ຄວາມຮ່ວມມືຂອງບັນດາສະມາຊິກສະພາບໍລິຫານ ທີ່ສະແດງອອກຜ່ານການປຶກສາຫາລື ແລະ ປະກອບຄຳຄິດຄຳເຫັນຮ່ວມກັນ ຕໍ່ຫຼາຍບັນຫາ ຢ່າງກົງໄປກົງມາ ເຮັດໃຫ້ເນື້ອໃນຂອງກອງປະຊຸມມີຄວາມສົມບູນຄົບຖ້ວນ ແລະ ສາມາດນຳໄປເປັນບ່ອນອີງໃນການຈັດຕັ້ງປະຕິບັດວຽກງານຕົວຈິງໃຫ້ເກີດໝາກຜົນດີທີ່ສຸດ. ດັ່ງນັ້ນ, ໃນວັນດຽວກັນ ກອງປະຊຸມສຳຄັນຂອງປີຈຶ່ງໄດ້ຮັບການສິ້ນສຸດລົງ ຢ່າງຈົບງາມ ແລະ ສຳເລັດຜົນ ຕາມຄາດໝາຍ.</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/March2021/WhatsApp%20Image%202021-03-16%20at%2013.13.35.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/March2021/WhatsApp%20Image%202021-03-16%20at%2013.13.34.jpg\" alt=\"\" /></p>', 'posts/March2021/eOPluWXcn6s7TN6e8zwd.jpg', 'lapnet-meeting-share-holders-i-2021', '', '', 'PUBLISHED', 0, '2021-03-16 20:45:54', '2021-03-17 00:25:31'),
(20, 1, 1, 'Lapnet company received face masks from Viet Card International Technology Corporation', 'Lapnet company received face masks from Viet Card International Technology Corporation', 'ບໍລິສັດ Viet Card International Technology Corporation ໄດ້ມອບຜ້າປິດປາກ ຈຳນວນ 100 ກັບໃຫ້ແກ່ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ເພື່ອຮັບໃຊ້ເຂົ້າໃນການປ້ອງກັນພະຍາດ ໂຄວິດ-19.', '<p style=\"text-align: left;\"><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/May2021/WhatsApp%20Image%202021-05-06%20at%2014.03.53.jpeg\" alt=\"\" /></p>\n<p style=\"text-align: left;\">ໃນຕອນເຊົ້າ ຂອງວັນທີ 30 ເມສາ 2021 ບໍລິສັດ Viet Card International Technology Corporation ໄດ້ມອບຜ້າປິດປາກ ຈຳນວນ 100 ກັບໃຫ້ແກ່ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ເພື່ອຮັບໃຊ້ເຂົ້າໃນການປ້ອງກັນພະຍາດ ໂຄວິດ-19.&nbsp; ການມອບຮັບໃນຄັ້ງນີ້ ແມ່ນໃຫ້ກຽດກ່າວຮັບໂດຍ ທ່ານ ຫົງຄຳ ເພັດດາວົງ&nbsp; ຜູ້ອຳນວຍການ ບໍລິສັດ LAPNet ແລະ ກ່າວມອບໂດຍທ່ານ ນາງ ສຸພາພອນ ແສງມະນີ ຕ່າງໜ້າ ຂອງບໍລິສັດ Viet Card.&nbsp; ດັ່ງນັ້ນ ທາງບໍລິສັດ ຈຶ່ງໄດ້ມອບໃບຍ້ອງຍໍໃຫ້ແກ່ບໍລິສັດດັ່ງກ່າວ ເພື່ອເປັນການຢັ້ງຢຶນ ແທນຄຳຂອບໃຈຕໍ່ບໍລິສັດ ທີ່ມີນໍ້າໃຈໃນການປະກອບສ່ວນ ຊຸກຍູ້ ຊ່ວຍເຫຼືອໃນຄັ້ງນີ້.</p>', 'posts/May2021/DMMtznoiv86HPkvcwK5Z.jpeg', 'lapnet-viet-card-international-technology-corporation', 'ບໍລິສັດ Viet Card International Technology Corporation ໄດ້ມອບຜ້າປິດປາກ ຈຳນວນ 100 ກັບໃຫ້ແກ່ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ເພື່ອຮັບໃຊ້ເຂົ້າໃນການປ້ອງກັນພະຍາດ ໂຄວິດ-19.', 'ບໍລິສັດ Viet Card International Technology Corporation ໄດ້ມອບຜ້າປິດປາກ ຈຳນວນ 100 ກັບໃຫ້ແກ່ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ເພື່ອຮັບໃຊ້ເຂົ້າໃນການປ້ອງກັນພະຍາດ ໂຄວິດ-19.', 'PUBLISHED', 0, '2021-05-09 20:35:03', '2021-05-10 01:14:07'),
(21, 1, 1, 'List of payment provider in Laos that allowed by Bank of the Lao PDR', 'List of payment provider in Laos ', 'List of payment provider in Laos ', '<p>ທະນາຄານແຫ່ງ ສປປ ລາວ ໄດ້ອອກແຈ້ງການ ກ່ຽວກັບ ລາຍຊື່ ຜູ້ຄວບຄຸມລະບົບການຊໍາລະທຸລະກຳຍ່ອຍ ຜູ້ໃຫ້ບໍລິການຊໍາລະ ທີ່ໄດ້ຮັບອະນຸຍາດ ຈາກ ທະນາຄານແຫ່ງ ສປປ ລາວ.</p>\n<p style=\"text-align: left;\"><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/June2021/kLFB5ZFR6jBGTSZKl7QD.png\" alt=\"\" /></p>\n<p>ເຊິ່ງລາຍລະອຽດທັງໝົດສາມາດ ດາວໂຫລດໄດ້ຕາມລິ້ງ:</p>', 'posts/June2021/kLFB5ZFR6jBGTSZKl7QD.png', 'list-of-payment-provider-in-laos-that-allowed-by-bank-of-the-lao-pdr', 'List of payment provider in Laos ', 'List of payment provider in Laos ', 'PUBLISHED', 0, '2021-06-22 21:15:31', '2021-06-22 21:18:32'),
(22, 1, 1, 'LAPNet Company held placement new chairman of board directors', 'ພິທີປະກາດ ມອບຮັບ ໜ້າທີ່ ປະທານສະພາບໍລິຫານຂອງບໍລິສັດ ລະຫວ່າງ ຜູ້ເກົ່າ ແລະ ຜູ້ໃຫມ່ ', 'ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ໄດ້ຈັດພິທີປະກາດ ມອບຮັບ ໜ້າທີ່ ປະທານສະພາບໍລິຫານຂອງບໍລິສັດ ລະຫວ່າງ ຜູ້ເກົ່າ ແລະ ຜູ້ໃຫມ່ ພ້ອມທັງປະກາດການແຕ່ງຕັ້ງຄະນະສະພາບໍລິຫານຊຸດໃໝ່ ຊຶ່ງພິທີໄດ້ຈັດຂຶ້ນໃນວາລະກອງປະຊຸມຜູ້ຖືຮຸ້ນສະໄໝວິສາມັນ ຄັ້ງທີ I ແລະ ກອງປະຊຸມສະພາບໍລິຫານ ສະໄໝສາມັນຄັ້ງທີ່ II ຂອງບໍລິສັດ ປະຈຳປີ 2021', '<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/July2021/IMG_20210630_093627.jpg\" alt=\"\" /></p>\n<p>ໃນວັນທີ 30 ມິຖຸນາ 2021 ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ໄດ້ຈັດພິທີປະກາດ ມອບຮັບ ໜ້າທີ່ ປະທານສະພາບໍລິຫານຂອງບໍລິສັດ ລະຫວ່າງ ຜູ້ເກົ່າ ແລະ ຜູ້ໃຫມ່ ພ້ອມທັງປະກາດການແຕ່ງຕັ້ງຄະນະສະພາບໍລິຫານຊຸດໃໝ່ ຊຶ່ງພິທີໄດ້ຈັດຂຶ້ນໃນວາລະກອງປະຊຸມຜູ້ຖືຮຸ້ນສະໄໝວິສາມັນ ຄັ້ງທີ I ແລະ ກອງປະຊຸມສະພາບໍລິຫານ ສະໄໝສາມັນຄັ້ງທີ່ II ຂອງບໍລິສັດ ປະຈຳປີ 2021 ທີ່ຫ້ອງປະຊຸມ ດອກຮັກ ອາຄານຊັ້ນ 5 ຕຶກສໍານັກງານຄະນະກໍາມະການຄຸ້ມຄອງຫຼັກຊັບ ໂດຍມີຜູ້ເຂົ້າຮ່ວມກອງປະຊຸມທັງໝົດ ຈຳນວນ 14 ທ່ານ ປະກອບດ້ວຍຕາງໜ້າຂາຮຸ້ນຂອງແຕ່ລະພາກສ່ວນ, ສະມາຊິກສະພາບໍລິຫານ, ຄະນະອຳນວຍການ, ຄະນະພະແນກ ແລະ ວິຊາການ ຂອງບໍລິສັດຈຳນວນໜຶ່ງກໍ່ໄດ້ເຂົ້າຮ່ວມ;</p>\n<p>ໃນພິທີໄດ້ມີການມອບໜ້າທີ່ ປະທານສະພາບໍລິຫານ ບໍລິສັດ LAPNet ລະຫວ່າງ ທ່ານ ລັດສະໝີ ສຸວັນທອງ (ຜູ້ເກົ່າ) ແລະ ທ່ານ ສຸລິສັກ ທຳນຸວົງ (ຜູ້ໃຫມ່), ທັງສອງທ່ານກໍ່ໄດ້ມີການກ່າວ ມອບ-ຮັບ ໜ້າທີ່ອັນສຳຄັນຕໍ່ກັນຢ່າງເປັນທາງການ ໂດຍມີໃຈຄວາມດັ່ງນີ້: ທ່ານ ລັດສະໝີ ສຸວັນທອງ ປະທານສະພາບໍລິຫານຜູ້ເກົ່າ ໄດ້ກ່າວຄຳຂອບໃຈມາຍັງບັນດາສະມາຊິກສະພາບໍລິຫານ ແລະ ບໍລິສັດ LAPNet ທີ່ໄດ້ຮ່ວມແຮງຮ່ວມໃຈກັນ ລະດົມຄວາມຄິດ ເຮັດໃຫ້ບໍລິສັດສາມາດກ້າວມາຍັງຈຸດນີ້ໄດ້ ຊຶ່ງແຕ່ລະຄຳເຫັນຂອງບັນດາສະມາຊິກສະພາບໍລິຫານ ແມ່ນມີຄວາມໝາຍຄວາມສຳຄັນໃນການຈັດຕັ້ງປະຕິບັດວຽກງານຂອງບໍລິສັດໃນໄລຍະຜ່ານມາ. ຢ່າງໃດກໍ່ຕາມ, ກໍ່ຍັງມີສິ່ງທ້າທາຍທີ່ຍັງຄົງຄ້າງຢູ່ໃນໃຈ ກໍ່ຄື ລະບົບໂອນເງິນຜ່ານມືຖືທີ່ພວກເຮົາມີຄວາມຕັ້ງໃຈຢາກເຮັດນັ້ນ ແມ່ນຍັງບໍ່ທັນສຳເລັດໂດຍສົມບູນເທື່ອ. ດັ່ງນັ້ນ, ຈຶ່ງຂໍຝາກໃຫ້ປະທານສະພາບໍລິຫານຜູ້ໃຫມ່ ເປັນຜູ້ສືບຕໍ່ນຳພາເຮັດໃຫ້ສຳເລັດ ແລະ ເຮັດໃຫ້ບໍລິສັດ LAPNet ກາຍເປັນບໍລິສັດຕົວແບບໃນການດຳເນີນທຸລະກິດທີ່ປະສົບຜົນສຳເລັດສູງສຸດ.</p>\n<p>ທ່ານ ສຸລິສັກ ທຳນຸວົງ ປະທານສະພາບໍລິຫານຜູ້ໃໝ່ ໄດ້ກ່າວຄຳຂອບໃຈ ແລະ ຊົມເຊີຍທ່ານປະທານສະພາບໍລິຫານຜູ້ເກົ່າ ຕໍ່ຜົນງານທີ່ມີໃນໄລຍະຜ່ານມາ ແລະ ກ່າວຂອບໃຈຕໍ່ທີ່ປະຊຸມ ທີ່ໄດ້ໃຫ້ຄວາມໄວ້ເນື້ອເຊື່ອໃຈແກ່ທ່ານ ໃນການເປັນຜູ້ສືບຕໍ່ພາລະກິດນຳພາບໍລິສັດ ກ້າວໄປເຖິງຈຸດໝາຍການເປັນສູນກາງເຊື່ອມຕໍ່ຂອງການຊຳລະ ໃຫ້ສາມາດເຊື່ອມໃຊ້ຮ່ວມກັນທົ່ວລະບົບ ຢ່າງໝັ້ນຄົງ. ພ້ອມນັ້ນ, ທ່ານກໍ່ຍັງໄດ້ນໍາເອົາເນື້ອໃນຈິດໃຈຂອງພາກລັດ ກໍ່ຄື ຂອງ ທະນາຄານແຫ່ງ ສປປ ລາວ ມາເຜີຍແຜ່ໃນທີ່ປະຊຸມໃຫ້ມີຄວາມເຂົ້າໃຈ ເຖິງການໃຫ້ຄວາມສຳຄັນຂອງພາກລັດ ຕໍ່ກັບພາລະບົດບາດຂອງບໍລິສັດ LAPNet, ໂດຍໄດ້ຊີ້ໃຫ້ເຫັນວ່າ: ຫົວໃຈຂອງຂະແໜງການທະນາຄານແມ່ນລະບົບການຊຳລະທຸລະກຳຍ່ອຍ ທີ່ ບໍລິສັດ LAPNet ເປັນຜູ້ຄວບຄຸມລະບົບນີ້ ເຮັດໃຫ້ການຊຳລະ ຫຼືການໂອນເງິນຂ້າມທະນາຄານ ມີຄວາມສະດວກສະບາຍ ແລະລະບົບນີ້ ເປັນອົງປະກອບຫຼັກໃນການປະກອບສ່ວນເຂົ້າໃນການຈັດຕັ້ງປະຕິບັດ ແຜນຍຸດທະສາດການພັດທະນາແໜງການເງິນ-ເງິນຕາ ແລະຍຸດທະສາດການພັດທະນາລະບົບການຊຳລະຂອງຂະແໜງທະນາຄານ-ການເງິນ ຂອງ ທະນາຄານແຫ່ງ ສປປ ລາວ ຊຶ່ງເປັນການສ້າງປະຖົມປັດໄຈໃຫ້ແກ່ການກ້າວໄປສູ່ເສດຖະກິດດິຈິຕອນ ຂອງລັດຖະບານທີ່ໄດ້ຖືກຮັບຮອງເອົາແລ້ວນັ້ນ. ນອກນັ້ນ, ກະຊວງການເງິນເອງກໍ່ມີແຜນແມ່ບົດໃນການຫັນການເກັບລາຍຮັບ ແລະຄຸ້ມຄອງລາຍຈ່າຍງົບປະມານ ເປັນທັນສະໄໝ. ສະນັ້ນ, ຈຶ່ງເປັນສິ່ງແນ່ນອນວ່າ ບໍລິສັດ LAPNet ຕ້ອງຮີບຮ້ອນສ້າງຕົນເອງໃຫ້ເຂັ້ມແຂງ ກາຍເປັນເປັນສູນກາງເຊື່ອມຕໍ່ຂອງການຊຳລະ ເພື່ອສ່ວນລວມຢ່າງແທ້ຈິງ. ສຸດທ້າຍ, ທ່ານປະທານສະພາບໍລິຫານຜູ້ໃໝ່ ກໍ່ໄດ້ໃຫ້ຄຳໝັ້ນສັນຍາ ຈະສືບຕໍ່ຜົນງານຂອງທ່ານປະທານຜູ້ເກົ່າໄດ້ສ້າງໄວ້ໃນໄລຍະຜ່ານມາ ແລະ ຈະນຳພາສະພາບໍລິຫານຊຸດໃໝ່ສ້າງຜົນງານໃໝ່ໃຫ້ດີຂຶ້ນກວ່າເກົ່າໃນຕໍ່ໜ້າ.</p>\n<p>&nbsp;</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/July2021/IMG_20210630_093413.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/July2021/IMG_20210630_094948.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/July2021/IMG_20210630_173602.jpg\" alt=\"\" /></p>', 'posts/July2021/YezV2u1QQMlXxB25dwvC.jpg', 'lapnet-company-held-placement-new-chairman-of-board-directors', 'ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ໄດ້ຈັດພິທີປະກາດ ມອບຮັບ ໜ້າທີ່ ປະທານສະພາບໍລິຫານຂອງບໍລິສັດ ລະຫວ່າງ ຜູ້ເກົ່າ ແລະ ຜູ້ໃຫມ່ ພ້ອມທັງປະກາດການແຕ່ງຕັ້ງຄະນະສະພາບໍລິຫານຊຸດໃໝ່ ', 'ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ໄດ້ຈັດພິທີປະກາດ ມອບຮັບ ໜ້າທີ່ ປະທານສະພາບໍລິຫານຂອງບໍລິສັດ ລະຫວ່າງ ຜູ້ເກົ່າ ແລະ ຜູ້ໃຫມ່ ພ້ອມທັງປະກາດການແຕ່ງຕັ້ງຄະນະສະພາບໍລິຫານຊຸດໃໝ່ ', 'PUBLISHED', 0, '2021-07-01 21:35:01', '2021-07-01 23:36:00'),
(23, 1, 1, 'Signing Ceremony Lapnet and Lanexang as Financial Advisor ', 'Signing Ceremony Lapnet and Lanexang as Financial Advisor ', 'Signing Ceremony Lapnet and Lanexang as Financial Advisor ', '<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/July2021/WhatsApp%20Image%202021-07-14%20at%2014.05.00.jpeg\" alt=\"\" /></p>\n<p>ໃນຕອນບ່າຍຂອງວັນທີ 14 ກໍລະກົດ 2021 ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ໄດ້ຮ່ວມລົງນາມເຊັນສັນຍາແຕ່ງຕັ້ງ ທີ່ປຶກສາທາງການເງິນ ລະຫວ່າງ ບໍລິສັດ ລາວເນເຊິນນໍ ເພເມັ້ນເນັດເວີກ ຈຳກັດ ແລະ ບໍລິສັດ ຫຼັກຊັບ ລ້ານຊ້າງ ມະຫາຊົນ&nbsp; ໂດຍເປັນກຽດເຂົ້າຮ່ວມພິທີໃນຄັ້ງນີ້ມີ: ທ່ານ ສຸລິສັກ ທຳນຸວົງ ປະທານສະພາບໍລິຫານບໍລິສັດ LAPNet, ທ່ານ ວຽງຄຳ ວັນສີລາລົມ ປະທານສະພາບໍລິຫານ ບໍລິສັດ ຫຼັກຊັບລ້ານຊ້າງ ມະຫາຊົນ, ທ່ານ ຫົງຄຳ ເພັດດາວົງ ຜູ້ອຳນວຍການ ບໍລິສັດ LAPNet, ທ່ານ ອານຸກອນ ສຸທຳມະວົງ ຜູ້ອຳນວຍການ ບໍລິສັດ ຫຼັກຊັບລ້ານຊ້າງ ມະຫາຊົນ ນອກຈາກນັ້ນ ກໍ່ຍັງມີຄະນະອຳນວຍການ ແລະ ຄະນະພະແນກຂອງທັງສອງພາກສ່ວນເຂົ້າຮ່ວມ.</p>\n<ul>\n<li>ເປັນກຽດລົງນາມເຊັນສັນຍາແຕ່ງຕັ້ງທີ່ປຶກສາທາງການເງິນຄັ້ງນີ້ໂດຍ:</li>\n</ul>\n<ol>\n<li style=\"list-style-type: none;\">\n<ol>\n<li>ທ່ານ ຫົງຄຳ ເພັດດາວົງ ຜູ້ອຳນວຍການ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ</li>\n<li>ທ່ານ ອານຸກອນ ສຸທຳມະວົງ ຜູ້ອຳນວຍການ ບໍລິສັດ ຫຼັກຊັບລ້ານຊ້າງ ມະຫາຊົນ</li>\n</ol>\n</li>\n</ol>\n<p>ຈຸດປະສົງຂອງການລົງນາມເຊັນສັນຍາແຕ່ງຕັ້ງທີ່ປຶກສາທາງການເງິນໃນຄັ້ງນີ້ ແມ່ນເພື່ອ ປັບປຸງໂຄງສ້າງການດຳເນີນທຸລະກິດຂອງບໍລິສັດໃຫ້ເຂັ້ມແຂງ ໃນໄລຍະແຕ່ປີ 2021 ຫາ ປີ 2025.</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/July2021/WhatsApp%20Image%202021-07-14%20at%2013.53.57.jpeg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/July2021/WhatsApp%20Image%202021-07-14%20at%2013.53.56.jpeg\" alt=\"\" /></p>', 'posts/July2021/oWRoTTe3txBUNkdMfolF.jpeg', 'signing-ceremony-lapnet-and-lanexang-as-financial-advisor', 'ວັນທີ 14 ກໍລະກົດ 2021 ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ໄດ້ຮ່ວມລົງນາມເຊັນສັນຍາແຕ່ງຕັ້ງ ທີ່ປຶກສາທາງການເງິນ ລະຫວ່າງ ບໍລິສັດ ລາວເນເຊິນນໍ ເພເມັ້ນເນັດເວີກ ຈຳກັດ ແລະ ບໍລິສັດ ຫຼັກຊັບ ລ້ານຊ້າງ ມະຫາຊົນ', 'ວັນທີ 14 ກໍລະກົດ 2021 ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ໄດ້ຮ່ວມລົງນາມເຊັນສັນຍາແຕ່ງຕັ້ງ ທີ່ປຶກສາທາງການເງິນ ລະຫວ່າງ ບໍລິສັດ ລາວເນເຊິນນໍ ເພເມັ້ນເນັດເວີກ ຈຳກັດ ແລະ ບໍລິສັດ ຫຼັກຊັບ ລ້ານຊ້າງ ມະຫາຊົນ', 'PUBLISHED', 0, '2021-07-16 02:10:58', '2021-07-16 02:35:21'),
(24, 1, 1, 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານໄອທີ ຈໍານວນ 04 ຕໍາແໜ່ງ\" ', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານໄອທີ ຈໍານວນ 04 ຕໍາແໜ່ງ\" ', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານໄອທີ ຈໍານວນ 04 ຕໍາແໜ່ງ\" ', '<p><strong>1.&nbsp;&nbsp;&nbsp; <span style=\"text-decoration: underline;\">ວິສະວະກອນບຳລຸງຮັກສາ ແລະ ພັດທະນາໂປຣແກຣມເບື້ອງໜ້າ (Front-End Application and Software Engineer) 01 ຕໍາແໜ່ງ</span></strong><br /><strong>&bull;&nbsp;&nbsp;&nbsp; ໜ້າທີ່ຮັບຜິດຊອບ:</strong><br />ຮັບຜິດຊອບໃນການບຳລຸງຮັກສາ ແລະ ແກ້ໄຂບັນຫາຕ່າງໆ ທີ່ເກີດຂື້ນໃນລະບົບບັດທະນາຄານຮ່ວມກັນ (LAPS) ແລະ ລະບົບໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື (LMPS), ພ້ອມທັງຄົ້ນຄວ້າພັດທະນາລະບົບໂປຣແກຣມ ແລະ ເຕັກໂນໂລຊີໃໝ່ໆ (ເບື້ອງໜ້າ) ເພື່ອຍົກລະດັບຂະບວນການເຮັດວຽກຂອງລະບົບທີ່ນຳໃຊ້ຢູ່ປັດຈຸບັນ ຂອງບໍລິສັດ LAPNet ໃຫ້ມີປະສິດທິພາບຍິ່ງຂື້ນ ແລະ ຮັບຜິດຊອບວຽກງານສະເພາະອື່ນໆ ຕາມການມອບໝາຍຈາກຄະນະພະແນກ.&nbsp; <br /><strong>&bull;&nbsp;&nbsp;&nbsp; ເງື່ອນໄຂຜູ້ສະໝັກ:</strong><br />&ndash;&nbsp;&nbsp;&nbsp; ເພດຍິງ ຫຼື ຊາຍ ອາຍຸ 20 - 30 ປີ;<br />&ndash;&nbsp;&nbsp;&nbsp; ຈົບປະລີນຍາຕີຂື້ນໄປ (ສາຂາໄອທີ ຫຼື ສາຂາອື່ນທີ່ກ່ຽວຂ້ອງ);<br />&ndash;&nbsp;&nbsp;&nbsp; ຄະແນນສະເລ່ຍ 2.50 ຂຶ້ນໄປ; <br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮູ້ກ່ຽວກັບລະບົບປະຕິບັດການ Linux ແລະ Window;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮູ້ກ໋ຽວກັບການນຳໃຊ້ຖານຂໍ້ມູນເຊັ່ນ: MySQL, MariaDB, PostgreSQL ແລະ ອື່ນໆ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສາມາດພັດທະນາຊັອບແວດ້ວຍພາສາເຊັ່ນ: HTML, CSS, Java script ແລະ ອື່ນໆ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສາມາດນຳໃຊ້ພາສາອັງກິດໄດ້ໃນລະດັບດີ;<br />&ndash;&nbsp;&nbsp;&nbsp; ພ້ອມຮຽນຮູ້ເທັກໂນໂລຊີໃໝ່ໆຕະຫຼອດເວລາ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮັບຜິດຊອບສູງຕໍ່ໜ້າວຽກຂອງຕົນ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຫ້າວຫັນຕໍ່ໜ້າທີ່ຮັບຜິດຊອບ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີທັກສະໃນການສື່ສານ ແລະ ສາມາດເຮັດວຽກເປັນທີມໄດ້;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີມະນຸດສຳພັນທີ່ດີ, ອົດທົນ, ແລະ ສາມາດເຮັດວຽກລ່ວງເວລາໄດ້;<br />&ndash;&nbsp;&nbsp;&nbsp; ຖ້າມີປະສົບການໃນການເຮັດວຽກມາກ່ອນ ຈະພິຈາລະນາເປັນພິເສດ.</p>\n<p><strong>2.&nbsp;&nbsp;&nbsp; <span style=\"text-decoration: underline;\">ວິສະວະກອນບຳລຸງຮັກສາ ແລະ ພັດທະນາໂປຣແກຣມເບື້ອງຫຼັງ (Back-End Application and Software Engineer) 01 ຕໍາແໜ່ງ</span></strong><br /><strong>&bull;&nbsp;&nbsp;&nbsp; ໜ້າທີ່ຮັບຜິດຊອບ:</strong><br />ຮັບຜິດຊອບໃນການບຳລຸງຮັກສາ ແລະ ແກ້ໄຂບັນຫາຕ່າງໆ ທີ່ເກີດຂື້ນໃນລະບົບບັດທະນາຄານຮ່ວມກັນ (LAPS) ແລະ ລະບົບໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື (LMPS), ພ້ອມທັງຄົ້ນຄວ້າພັດທະນາລະບົບໂປຣແກຣມ ແລະ ເຕັກໂນໂລຊີໃໝ່ໆ (ເບື້ອງຫຼັງ) ເພື່ອຍົກລະດັບຂະບວນການເຮັດວຽກຂອງລະບົບທີ່ນຳໃຊ້ຢູ່ປັດຈຸບັນຂອງ ບໍລິສັດ LAPNet ໃຫ້ມີປະສິດທິພາບຍິ່ງຂື້ນ ແລະ ຮັບຜິດຊອບວຽກງານທີ່ຕິດພັນອື່ນໆ ຕາມການມອບໝາຍຈາກຄະນະພະແນກ.&nbsp;&nbsp; <br />&bull;&nbsp;&nbsp;&nbsp; <strong>ເງື່ອນໄຂຜູ້ສະໝັກ:</strong><br />&ndash;&nbsp;&nbsp;&nbsp; ເພດຍິງ ຫຼື ຊາຍ ອາຍຸ 20 - 30 ປີ;<br />&ndash;&nbsp;&nbsp;&nbsp; ຈົບປະລີນຍາຕີຂື້ນໄປ (ສາຂາໄອທີ ຫຼືສາຂາອື່ນທີ່ກ່ຽວຂ້ອງ);<br />&ndash;&nbsp;&nbsp;&nbsp; ຄະແນນສະເລ່ຍ 2.50 ຂຶ້ນໄປ; <br />&ndash;&nbsp;&nbsp;&nbsp; ສາມາດນຳໃຊ້ພາສາອັງກິດໄດ້ໃນລະດັບດີ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮູ້ກ່ຽວກັບລະບົບປະຕິບັດການ Linux ແລະ Window;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮູ້ກ໋ຽວກັບການນຳໃຊ້ຖານຂໍ້ມູນເຊັ່ນ: MySQL, MariaDB, PostgreSQL ແລະ ອື່ນໆ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສາມາດພັດທະນາຊັອບແວດ້ວຍພາສາເຊັ່ນ: C++, C#, JAVA, PHP, VB.net, Python ແລະ ອື່ນໆ;<br />&ndash;&nbsp;&nbsp;&nbsp; ພ້ອມຮຽນຮູ້ເທັກໂນໂລຊີໃໝ່ໆຕະຫຼອດເວລາ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮັບຜິດຊອບສູງຕໍ່ໜ້າວຽກຂອງຕົນ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຫ້າວຫັນຕໍ່ໜ້າທີ່ຮັບຜິດຊອບ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີທັກສະໃນການສື່ສານ ແລະ ສາມາດເຮັດວຽກເປັນທີມໄດ້;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີມະນຸດສຳພັນທີ່ດີ, ອົດທົນ, ແລະ ສາມາດເຮັດວຽກລ່ວງເວລາໄດ້;<br />&ndash;&nbsp;&nbsp;&nbsp; ຖ້າມີປະສົບການໃນການເຮັດວຽກມາກ່ອນ ຈະພິຈາລະນາເປັນພິເສດ.</p>\n<p><strong>3.&nbsp;&nbsp;&nbsp; <span style=\"text-decoration: underline;\">ພະນັກງານ Operation 02 ຕໍາແໜ່ງ</span></strong><br /><strong>&bull;&nbsp;&nbsp;&nbsp; ໜ້າທີ່ຮັບຜິດຊອບ:</strong><br />ຮັບຜິດຊອບໃນການໃຫ້ການສະໜັບສະໜູນສະມາຊິກ, ຄົ້ນຄວ້າ ແລະ ວິເຄາະ, ຕິດຕາມທຸລະກຳ ແລະ ແກ້ໄຂບັນຫາຕ່າງໆ ທີ່ເກີດຂື້ນກັບການໃຫ້ບໍລິການຂອງລະບົບ ແລະ ຮັບຜິດຊອບວຽກງານອື່ນໆ ທີ່ໄດ້ຮັບການມອບໝາຍຈາກຄະນະພະແນກ.<br /><strong>&bull;&nbsp;&nbsp;&nbsp; ເງື່ອນໄຂຜູ້ສະໝັກ:</strong><br />&ndash;&nbsp;&nbsp;&nbsp; ເພດຍິງ ຫຼື ຊາຍ ອາຍຸ 20 - 30 ປີ;<br />&ndash;&nbsp;&nbsp;&nbsp; ຈົບປະລີນຍາຕີຂື້ນໄປ (ສາຂາໄອທີ ຫຼື ສາຂາອື່ນທີ່ກ່ຽວຂ້ອງ);<br />&ndash;&nbsp;&nbsp;&nbsp; ຄະແນນສະເລ່ຍ 2.50 ຂຶ້ນໄປ; <br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮູ້ກ່ຽວກັບລະບົບປະຕິບັດການ Linux ແລະ Window;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມເຂົ້າໃຈກ່ຽວກັບການບໍລິຫານຈັດການລະບົບຖານຂໍ້ມູນເຊັ່ນ: Oracle, DB2, SQL, MySQL ແລະ ອື່ນໆ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສາມາດນຳໃຊ້ພາສາອັງກິດໄດ້ໃນລະດັບດີ ຫຼື ສາມາດສື່ສານພາສາຈີນໄດ້ຍິ່ງເປັນການດີ;<br />&ndash;&nbsp;&nbsp;&nbsp; ພ້ອມຮຽນຮູ້ເທັກໂນໂລຊີໃໝ່ໆຕະຫຼອດເວລາ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮັບຜິດຊອບສູງຕໍ່ໜ້າວຽກຂອງຕົນ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຫ້າວຫັນຕໍ່ໜ້າທີ່ຮັບຜິດຊອບ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີທັກສະໃນການສື່ສານ ແລະ ສາມາດເຮັດວຽກເປັນທີມໄດ້;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີມະນຸດສຳພັນທີ່ດີ, ອົດທົນ, ແລະ ສາມາດເຮັດວຽກລ່ວງເວລາໄດ້;<br />&ndash;&nbsp;&nbsp;&nbsp; ຖ້າມີປະສົບການໃນການເຮັດວຽກມາກ່ອນ ຈະພິຈາລະນາເປັນພິເສດ.</p>\n<p><strong>ເອກະສານຍື່ນສະໝັກງານປະກອບມີ:</strong><br />1.&nbsp;&nbsp;&nbsp; ຮູບ 3x4 ຈຳນວນ 02 ໃບ (ພື້ນຟ້າ ຫຼື ພື້ນຂາວ);<br />2.&nbsp;&nbsp;&nbsp; ໃບຢັ້ງຢືນທີ່ຢູ່ຕິດຮູບ (ບໍ່ເກີນ 03 ເດືອນ) ສະບັບແທ້;<br />3.&nbsp;&nbsp;&nbsp; ສຳເນົາໃບປະກາຊະນີຍະບັດ, ໃບຄະແນນ ແລະ ໃບຜ່ານງານ (ຖ້າມີ);<br />4.&nbsp;&nbsp;&nbsp; ສຳເນົາບັດປະຈຳຕົວ ຫຼື ສຳມະໂນຄົວ;<br />5.&nbsp;&nbsp;&nbsp; ຊີວະປະຫວັດຫຍໍ້ (ຂຽນດ້ວຍຕົນເອງ);<br />6.&nbsp;&nbsp;&nbsp; ແບບຟອມສະໝັກວຽກຂອງບໍລິສັດ, ສາມາດດາວໂຫຼດແບບຟອມໄດ້ທີ່ <a href=\"https://drive.google.com/file/d/16GkWRnHKDmjJLbjgubD4cnSXb-WSKV0o/view?fbclid=IwAR10hcB1R5WiOC4TkHNjcQgINCcDu_uL7LjZkZDLXvVnrh-3xd6qh6vGkSo\" target=\"_blank\" rel=\"noopener\">Download Form</a>;<br />7.&nbsp;&nbsp;&nbsp; ເອກະສານອື່ນ ທີ່ຈຳເປັນຈະຮຽກເກັບຕາມພາຍຫຼັງ.<br />ເວລາເຂົ້າມາຍື່ນເອກະສານຕ້ອງເອົາເອກະສານກ່ຽວຂ້ອງທີ່ເປັນສະບັບແທ້ເພື່ອມາຢັ້ງຢືນ ເຊັ່ນ: ໃບປະກາຊະນີຍະບັດ, ໃບຄະແນນ, ໃບຜ່ານງານ, ບັດປະຈຳຕົວ ຫຼື ສຳມະໂນຄົວ ແລະ ເອກະສານອື່ນໆ (ຖ້າມີ).<br /><strong>(ໝາຍເຫດ: ເອກະສານທີ່ມາຍື່ນ ທາງບໍລິສັດຈະບໍ່ສົ່ງຄືນ)</strong><br /><br />ທ່ານໃດສົນໃຈສາມາດຍື່ນເອກະສານໄດ້ດ້ວຍຕົນເອງທີ່ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ສຳນັກງານຕັ້ງຢູ່ &ldquo;ຊັ້ນ 05 ຕຶກສຳນັກງານຄະນະກຳມະການຄຸ້ມຄອງຫຼັກຊັບ&rdquo; ບ້ານ ໂພນສະອາດ, ເມືອງ ໄຊເສດຖາ, ນະຄອນຫຼວງວຽງຈັນ ໃນໂມງລັດຖະການ. <br />-&nbsp;&nbsp;&nbsp; ເລີ່ມເປີດຮັບເອກະສານແຕ່ວັນທີ 14 ທັນວາ 2021&nbsp; ປິດຮັບເອກະສານ ວັນທີ 31 ມັງກອນ 2022;<br />-&nbsp;&nbsp;&nbsp; ສຳລັບຜູ້ທີ່ຢູ່ຕ່າງແຂວງ ຫຼື ຜູ້ທີ່ບໍ່ສະດວກເຂົ້າມາຍື່ນໃບສະໝັກດ້ວຍຕົນເອງແມ່ນສາມາດສົ່ງເອກະສານທັງໝົດມາຍັງອີເມວ info@lapnet.com.la, ສ່ວນມື້ສອບເສັງ ຫຼື ມື້ທີ່ມາເອົາໃບເຂົ້າຫ້ອງເສັງຕ້ອງຖືເອກະສານທັງໝົດເຂົ້າມານຳ. ສຳລັບຜູ້ທີ່ມາຈາກຕ່າງແຂວງ ທາງບໍລິສັດບໍ່ມີນະໂຍບາຍທີ່ພັກເຊົາໃຫ້ ຊຶ່ງຜູ້ກ່ຽວຕ້ອງກຸ້ມຕົນເອງສຳລັບສະຖານທີ່ພັກເຊົາໃນເວລາເຂົ້າມາສອບເສັງ;<br />-&nbsp;&nbsp;&nbsp; ໂດຍອີງຕາມສະຖານະການຂອງການລະບາດພະຍາດ ໂຄວິດ-19 ໃນປັດຈຸບັນ, ສຳລັບວັນ ແລະ ເວລາ ໃນການສອບເສັງທາງບໍລິສັດ ຈະໄດ້ມີການແຈ້ງການຕື່ມຕາມພາຍຫຼັງ;<br />-&nbsp;&nbsp;&nbsp; ສອບຖາມຂໍ້ມູນ ເພີ່ມເຕີມ ໂທ: 021 417915.</p>\n<p style=\"text-align: center;\"><a href=\"https://drive.google.com/file/d/16GkWRnHKDmjJLbjgubD4cnSXb-WSKV0o/view?fbclid=IwAR10hcB1R5WiOC4TkHNjcQgINCcDu_uL7LjZkZDLXvVnrh-3xd6qh6vGkSo\" target=\"_blank\" rel=\"noopener\">Download Form</a></p>', 'posts/December2021/V2TrKmmaio0zEcqNEbY2.png', 'job-vacancy-it-2021', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານໄອທີ ຈໍານວນ 04 ຕໍາແໜ່ງ\" ', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານໄອທີ ຈໍານວນ 04 ຕໍາແໜ່ງ\" ', 'PUBLISHED', 0, '2021-12-14 03:06:56', '2021-12-21 19:02:09'),
(25, 1, 1, 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານບໍລິຫານ  ຈໍານວນ 01 ຕໍາແໜ່ງ\" ', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານບໍລິຫານ  ຈໍານວນ 01 ຕໍາແໜ່ງ\" ', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານບໍລິຫານ  ຈໍານວນ 01 ຕໍາແໜ່ງ\" ', '<p><strong>1.&nbsp;&nbsp;&nbsp; <span style=\"text-decoration: underline;\">ພະນັກງານ ການເງິນ 01 ຕໍາແໜ່ງ</span></strong><br /><strong>&bull;&nbsp;&nbsp;&nbsp; ໜ້າທີ່ຮັບຜິດຊອບ:</strong><br />&ndash;&nbsp;&nbsp;&nbsp; ຄຸ້ມຄອງບໍລິຫານຄັງເງິນສົດຂອງບໍລິສັດ ແລະ ບັນທຶກຕິດຕາມບັນດາລາຍການທີ່ເກີດຂື້ນ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສ້າງເອກະສານການເບີກຈ່າຍໃຫ້ພາກສ່ວນກ່ຽວຂ້ອງຂອງບໍລິສັດ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສ້າງເອກະສານຮຽກເກັບເງິນນຳບັນດາຂະແໜງການ ແລະ ຫົວໜ່ວຍທຸລະກິດທີ່ກ່ຽວຂ້ອງຂອງບໍລິສັດ;<br />&ndash;&nbsp;&nbsp;&nbsp; ເກັບກຳບັນດາເອກະສານການເບີກຈ່າຍຂອງບໍລິສັດ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສະຫຼຸບລາຍງານບັນດາປຶ້ມຕິດຕາມເງິນສົດ, ເງິນຝາກທະນາຄານ ປະຈຳເດືອນ, ປະຈຳໄຕມາດ ແລະ ປະຈຳປີ ໃຫ້ກັບບໍລິສັດ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສ້າງລາຍການໂອນ-ຊຳລະ ລາຍຈ່າຍທີ່ເກີດຂື້ນພາຍໃນບໍລິສັດ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສ້າງແຜນລາຍຮັບ-ລາຍຈ່າຍ ປະຈຳໄຕມາດ ແລະ ປະຈຳປີ ຂອງບໍລິສັດ;<br />&ndash;&nbsp;&nbsp;&nbsp; ປະຕິບັດໜ້າທີ່ອື່ນໆ ຕາມການມອບໝາຍຂອງຄະນະພະແນກ ແລະ ຄະນະອຳນວຍການ.&nbsp;&nbsp; <br /><strong>&bull;&nbsp;&nbsp;&nbsp; ເງື່ອນໄຂຜູ້ສະໝັກ:</strong><br />&ndash;&nbsp;&nbsp;&nbsp; ເພດຍິງ ຫຼື ຊາຍ ອາຍຸ 25 - 35 ປີ<br />&ndash;&nbsp;&nbsp;&nbsp; ຈົບປະລີນຍາຕີຂື້ນໄປ (ສາຂາການເງິນ-ການບັນຊີ ຫຼື ສາຂາອື່ນທີ່ກ່ຽວຂ້ອງ);<br />&ndash;&nbsp;&nbsp;&nbsp; ຄະແນນສະເລ່ຍ 3.00 ຂຶ້ນໄປ; <br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮັບຜິດຊອບສູງຕໍ່ໜ້າວຽກຂອງຕົນ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຫ້າວຫັນຕໍ່ໜ້າທີ່ຮັບຜິດຊອບ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມສາມາດສື່ສານພາສາອັງກິດໄດ້ໃນລະດັບດີ ໂດຍສະເພາະສັບທາງດ້ານການເງິນ-ການບັນຊີ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີທັກສະໃນການສື່ສານ ແລະ ສາມາດເຮັດວຽກເປັນທີມໄດ້;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີມະນຸດສຳພັນທີ່ດີ, ອົດທົນ, ແລະ ສາມາດເຮັດວຽກລ່ວງເວລາໄດ້;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີປະສົບການໃນການເຮັດວຽກດ້ານການເງິນຢ່າງໜ້ອຍ 02 ປີ ຈະພິຈາລະນາເປັນພິເສດ.</p>\n<p><strong>ເອກະສານຍື່ນສະໝັກງານປະກອບມີ:</strong><br />1.&nbsp;&nbsp;&nbsp; ຮູບ 3x4 ຈຳນວນ 02 ໃບ (ພື້ນຟ້າ ຫຼື ພື້ນຂາວ);<br />2.&nbsp;&nbsp;&nbsp; ໃບຢັ້ງຢືນທີ່ຢູ່ຕິດຮູບ (ບໍ່ເກີນ 03 ເດືອນ) ສະບັບແທ້;<br />3.&nbsp;&nbsp;&nbsp; ສຳເນົາໃບປະກາຊະນີຍະບັດ, ໃບຄະແນນ ແລະ ໃບຜ່ານງານ (ຖ້າມີ);<br />4.&nbsp;&nbsp;&nbsp; ສຳເນົາບັດປະຈຳຕົວ ຫຼື ສຳມະໂນຄົວ;<br />5.&nbsp;&nbsp;&nbsp; ຊີວະປະຫວັດຫຍໍ້ (ຂຽນດ້ວຍຕົນເອງ);<br />6.&nbsp;&nbsp;&nbsp; ແບບຟອມສະໝັກວຽກຂອງບໍລິສັດ, ສາມາດດາວໂຫຼດແບບຟອມໄດ້ທີ່ <a href=\"https://drive.google.com/file/d/16GkWRnHKDmjJLbjgubD4cnSXb-WSKV0o/view?fbclid=IwAR10hcB1R5WiOC4TkHNjcQgINCcDu_uL7LjZkZDLXvVnrh-3xd6qh6vGkSo\" target=\"_blank\" rel=\"noopener\">Download Form</a>;<br />7.&nbsp;&nbsp;&nbsp; ເອກະສານອື່ນ ທີ່ຈຳເປັນຈະຮຽກເກັບຕາມພາຍຫຼັງ.<br />ເວລາເຂົ້າມາຍື່ນເອກະສານຕ້ອງເອົາເອກະສານກ່ຽວຂ້ອງທີ່ເປັນສະບັບແທ້ເພື່ອມາຢັ້ງຢືນ ເຊັ່ນ: ໃບປະກາຊະນີຍະບັດ, ໃບຄະແນນ, ໃບຜ່ານງານ, ບັດປະຈຳຕົວ ຫຼື ສຳມະໂນຄົວ ແລະ ເອກະສານອື່ນໆ (ຖ້າມີ).<br /><strong>(ໝາຍເຫດ: ເອກະສານທີ່ມາຍື່ນ ທາງບໍລິສັດຈະບໍ່ສົ່ງຄືນ)</strong><br /><br />ທ່ານໃດສົນໃຈສາມາດຍື່ນເອກະສານໄດ້ດ້ວຍຕົນເອງທີ່ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ສຳນັກງານຕັ້ງຢູ່ &ldquo;ຊັ້ນ 05 ຕຶກສຳນັກງານຄະນະກຳມະການຄຸ້ມຄອງຫຼັກຊັບ&rdquo; ບ້ານ ໂພນສະອາດ, ເມືອງ ໄຊເສດຖາ, ນະຄອນຫຼວງວຽງຈັນ ໃນໂມງລັດຖະການ. <br />-&nbsp;&nbsp;&nbsp; ເລີ່ມເປີດຮັບເອກະສານແຕ່ວັນທີ 14 ທັນວາ 2021&nbsp; ປິດຮັບເອກະສານ ວັນທີ 31 ມັງກອນ 2022;<br />-&nbsp;&nbsp;&nbsp; ສຳລັບຜູ້ທີ່ຢູ່ຕ່າງແຂວງ ຫຼື ຜູ້ທີ່ບໍ່ສະດວກເຂົ້າມາຍື່ນໃບສະໝັກດ້ວຍຕົນເອງແມ່ນສາມາດສົ່ງເອກະສານທັງໝົດມາຍັງອີເມວ info@lapnet.com.la, ສ່ວນມື້ສອບເສັງ ຫຼື ມື້ທີ່ມາເອົາໃບເຂົ້າຫ້ອງເສັງຕ້ອງຖືເອກະສານທັງໝົດເຂົ້າມານຳ. ສຳລັບຜູ້ທີ່ມາຈາກຕ່າງແຂວງ ທາງບໍລິສັດບໍ່ມີນະໂຍບາຍທີ່ພັກເຊົາໃຫ້ ຊຶ່ງຜູ້ກ່ຽວຕ້ອງກຸ້ມຕົນເອງສຳລັບສະຖານທີ່ພັກເຊົາໃນເວລາເຂົ້າມາສອບເສັງ;<br />-&nbsp;&nbsp;&nbsp; ໂດຍອີງຕາມສະຖານະການຂອງການລະບາດພະຍາດ ໂຄວິດ-19 ໃນປັດຈຸບັນ, ສຳລັບວັນ ແລະ ເວລາ ໃນການສອບເສັງທາງບໍລິສັດ ຈະໄດ້ມີການແຈ້ງການຕື່ມຕາມພາຍຫຼັງ;<br />-&nbsp;&nbsp;&nbsp; ສອບຖາມຂໍ້ມູນ ເພີ່ມເຕີມ ໂທ: 021 417915.</p>\n<p style=\"text-align: center;\"><a href=\"https://drive.google.com/file/d/16GkWRnHKDmjJLbjgubD4cnSXb-WSKV0o/view?fbclid=IwAR10hcB1R5WiOC4TkHNjcQgINCcDu_uL7LjZkZDLXvVnrh-3xd6qh6vGkSo\" target=\"_blank\" rel=\"noopener\">Download Form</a></p>', 'posts/December2021/srTEFMYL2k6XBuAfERhr.png', 'job-vacancy-management-2021', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານບໍລິຫານ  ຈໍານວນ 01 ຕໍາແໜ່ງ\" ', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານບໍລິຫານ  ຈໍານວນ 01 ຕໍາແໜ່ງ\" ', 'PUBLISHED', 0, '2021-12-14 03:16:06', '2021-12-21 19:03:29'),
(26, 1, 1, 'Lao Start-up Festival, LAPNet also has invited by LCIC to present about LAPNet', 'Lao Start-up Festival, LAPNet also has invited', 'Lao Start-up Festival, LAPNet also has invited by LCIC to present about LAPNet', '<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Lao%20Startup%20Festival/269595710_377442740845000_7055633996643035590_n.jpg\" alt=\"\" /></p>\n<p>On 18 December 2021 at Lao Start-up Festival. In this event LAPNet also has invited by LCIC to present about LAPNet. Honored to be narrated by Ms. Nivasone MALATHIP, Chief Operating Officer of LAPNet to present about roles and product that LAPNet provide to society.<br /><br /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Lao%20Startup%20Festival/IMG_8881.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Lao%20Startup%20Festival/IMG_8948.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Lao%20Startup%20Festival/269603679_377465820842692_4003279498097678606_n.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Lao%20Startup%20Festival/IMG_8912.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Lao%20Startup%20Festival/IMG_8914.jpg\" alt=\"\" /></p>', 'posts/December2021/3AaECG3N0z1WAA79sTrE.jpg', 'lao-start-up-festival-lapnet-also-has-invited-by-lcic-to-present-about-lapnet', 'Lao Start-up Festival, LAPNet also has invited', 'Lao Start-up Festival, LAPNet also has invited', 'PUBLISHED', 0, '2021-12-20 21:35:08', '2021-12-20 21:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `excerpt`, `body`, `slug`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Balance Inquiry ATM', 'Excerpt of Balance Inquiry ATM', '<h3><strong>ຄຸນລັກສະນະ</strong></h3>\n<p>ການກວດຍອດເງິນຂ້າມທະນາຄານຜ່ານຕູ້ ATM ແມ່ນນຳໃຊ້ລະບົບແລັບໃນການເຊື່ອມໂຍງຕູ້ເອທີເອັມຂອງແຕ່ລະທະນາຄານທີ່ເປັນສະມາຊິກຂອງບໍລິສັດລາວ ເນເຊີນນໍເພເມັ້ນ ເນັດເວີກ ໃຫ້ສາມາດໃຊ້ຟັງຊັ່ນການກວດຍອດເງິນຂ້າມທະນາຄານໄດ້.</p>\n<h3><strong>ຜົນປະໂຫຍດທີ່ໄດ້ຮັບ</strong></h3>\n<p>ປະຢັດ​ເວລາ, ສະດວກ ໂດຍລູກຄ້າບໍ່ຕ້ອງລໍຖ້າການໃຊ້ບໍລິການ ຫຼື ຊອກຫາຕູ້​ເອທີ​ເອັມຂອງ ທະນາຄານຜູ້ອອກບັດ ກໍ່ສາມາດກວດຍອດເງິນຜ່ານຕູ້​ເອທີ​ເອັມຂອງບັນດາທະນາຄານທຸກລະກິດທີ່ເຊື່ອມຕໍ່ກັບລະບົບແລັບ.​​</p>\n<h3><strong>​ເງື່ອນໄຂການໃຊ້ບໍລິການ</strong></h3>\n<p>ລູກຄ້າ​ທີ່ມີ​ບັດ​ເອທີເອັມຂອງ​ທະນາຄານ​ທີ່​ເປັນ​ສະມາຊິກ​ຂອງ ແລັບເນັດ, ໂດຍສາມາດສັງເກດໄດ້ຈາກ ສັນຍາ​ລັກແລັບເນັດທີ່ຕິດຕາມຕູ້ເອທີເອັມ ກໍສາມາດໃຊ້ຮ່ວມກັນໄດ້. <strong>ເຊິ່ງການກວດຍອດເງິນຂ້າມຕູ້ເອທີເອັມນີ້ແມ່ນບໍ່ເສຍຄ່າທຳນຽມໃດໆທັງນັ້ນ.</strong></p>\n<h2 style=\"text-align: center;\">ຂັ້ນຕອນການກວດສອບຍອດເງິນ</h2>\n<div class=\"row\">\n<div class=\"col-6 col-12-medium\">\n<h3 style=\"text-align: center;\">ຂັ້ນຕອນທີ 1 ຈຸດໃຫ້ບໍລິການ</h3>\n<p>ສາມາດເລືອກໃຊ້ຕູ້ເອທີເອັມໃດກໍ່ໄດ້ ພາຍໃນ 16 ທະນາຄານທີ່ເປັນສະມາຊິກຂອງບໍລິສັດ LAPNet ເຊັ່ນ:</p>\n<ol>\n<li>ທະນາຄານການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ.</li>\n<li>ທະນາຄານພັດທະນາລາວ.</li>\n<li>ທະນາຄານສົ່ງເສີມກະສິກຳ.</li>\n<li>ທະນາຄານຮ່ວມທຸລະກິດລາວ-ຫວຽດ.</li>\n<li>ທະນາຄານມາຣູຮານເຈແປນລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານຮ່ວມພັດທະນາ.</li>\n<li>ທະນາຄານອຸດສາຫະກຳ ແລະ ການຄ້າຈີນ ຈຳກັດ.</li>\n<li>ທະນາຄານແຫ່ງປະເທດຈີນ ຈຳກັດ</li>\n<li>ທະນາຄານຫວຽດຕິນລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ເອຊີລີດາລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານອິນໂດຈີນ.</li>\n<li>ທະນາຄານ ບີໄອຊີ ລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ໄຊງ່ອນເທື່ອງຕິ່ນ ລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ເອັສທີ ລາວ ຈຳກັດ</li>\n<li>ທະນາຄານ ພາບລິກ ເບີຣາດ ມະຫາຊົນ ສາຂານະຄອນຫຼວງວຽງຈັນ</li>\n<li>ທະນາຄານ ກະສິກອນ</li>\n</ol>\n</div>\n<div class=\"col-6 col-12-medium line\">\n<h3 style=\"text-align: center;\">ຂັ້ນຕອນທີ 2 ການເຮັດທຸລະກຳ</h3>\n<ul>\n<li>ກໍລະນີກວດຍອດເງິນ ເລືອກຄຳສັ່ງ ກວດສອບຍອດເງິນ ແລະ ເຮັດຕາມຂັ້ນຕອນ ຄ່າທຳນຽມ = 0 ກີບ</li>\n</ul>\n</div>\n</div>\n<h2>ທະນາຄານທີ່ເປັນສະມາຊິກຂອງການບໍລິການ Balance Inquiry ATM</h2>\n<div class=\"table-wrapper\">\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>Logo</strong></td>\n<td><strong>Name</strong></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BCEL.png\" width=\"140px\" /></td>\n<td>BANQUE POUR LE COMMERCE EXTERIEUR LAO PUBLIC <br />BCEL<br /><a style=\"color: #444;\" href=\"https://www.bcel.com.la/\" rel=\"noopener\">https://www.bcel.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/LDB_1.png\" width=\"140px\" /></td>\n<td>Lao Development Bank <br />LDB<br /><a style=\"color: #444;\" href=\"https://www.ldblao.la/\" rel=\"noopener\">https://www.ldblao.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/JDB.png\" width=\"140px\" /></td>\n<td>Joint Development Bank <br />JDB<br /><a style=\"color: #444;\" href=\"https://www.jdbbank.com.la/\" rel=\"noopener\">https://www.jdbbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/APB.png\" width=\"140px\" /></td>\n<td>Agricultural Promotion Bank<br />APB<br /><a style=\"color: #444;\" href=\"https://www.apb.com.la/\" rel=\"noopener\">https://www.apb.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/MJBL.png\" width=\"140px\" /></td>\n<td>MARUHAN Japan Bank Lao<br />MJBL<br /><a style=\"color: #444;\" href=\"https://www.maruhanjapanbanklao.com/\" rel=\"noopener\">https://www.maruhanjapanbanklao.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/LVB.png\" width=\"140px\" /></td>\n<td>Laos-Vietnam Joint Venture Bank<br />LVB<br /><a style=\"color: #444;\" href=\"https://www.laovietbank.com.la/\" rel=\"noopener\">https://www.laovietbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/ICBC.png\" width=\"140px\" /></td>\n<td>the Industrial and Commercial Bank of China<br />ICBC<br /><a style=\"color: #444;\" href=\"https://vientiane.icbc.com.cn/\" rel=\"noopener\">https://vientiane.icbc.com.cn</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BOC.png\" width=\"140px\" /></td>\n<td>Bank of China<br />BOC<br /><a style=\"color: #444;\" href=\"https://www.boc.cn/en/\" rel=\"noopener\">https://www.boc.cn/en</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/VTB.png\" width=\"140px\" /></td>\n<td>VietinBank Lao<br />VTB<br /><a style=\"color: #444;\" href=\"https://www.vietinbank.com.la/\" rel=\"noopener\">https://www.vietinbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/IB.png\" width=\"140px\" /></td>\n<td>INDOCHINA BANK LTD<br />Indochina<br /><a style=\"color: #444;\" href=\"https://www.indochinabank.com/\" rel=\"noopener\">https://www.indochinabank.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/ACB.png\" width=\"140px\" /></td>\n<td>ACLEDA BANK LAO.,LTD<br />ACLEDA<br /><a style=\"color: #444;\" href=\"https://www.acledabank.com/\" rel=\"noopener\">https://www.acledabank.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BIC.png\" width=\"140px\" /></td>\n<td>BIC Bank Lao Co., Ltd<br />BIC<br /><a style=\"color: #444;\" href=\"https://www.biclaos.com/\" rel=\"noopener\">https://www.biclaos.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/Sacom.png\" width=\"140px\" /></td>\n<td>Sacombank Lao<br />Sacom<br /><a style=\"color: #444;\" href=\"https://www.sacombank.com.vn/\" rel=\"noopener\">https://www.sacombank.com.vn</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/STB.png\" width=\"140px\" /></td>\n<td>ST BANK LTD <br />STB <br /><a style=\"color: #444;\" href=\"httpss://www.stbanklaos.la/\" rel=\"noopener\">https://www.stbanklaos.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/PBB.png\" width=\"140px\" /></td>\n<td>PUBLIC BANK BERHAD <br />PBB <br /><a style=\"color: #444;\" href=\"https://www.pbebank.com/\" rel=\"noopener\">https://www.pbebank.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/Kbank.png\" width=\"140px\" /></td>\n<td>KASIKORNTHAI BANK Limited <br />Kbank <br /><a style=\"color: #444;\" href=\"www.kasikornbank.com.la/\" rel=\"noopener\">https://www.kasikornbank.com.la</a></td>\n</tr>\n</tbody>\n</table>\n</div>', 'atm-balance-inquiry', '2020-01-14 20:48:00', '2021-12-07 23:35:38', 'products\\January2020\\GnQgjGFobJ0tHY8iYAyB.jpg'),
(2, 'Cash Withdraw', 'Excerpt of Cash Withdraw', '<h3><strong>ຄຸນລັກສະນະ</strong></h3>\n<p>ການຖອນເງິນສົດຜ່ານຕູ້ເອທີເອັມ ແມ່ນນຳໃຊ້ລະບົບແລັບໃນການເຊື່ອມໂຍງຕູ້ເອທີເອັມຂອງແຕ່ລະທະນາຄານທີ່ເປັນສະມາຊິກຂອງບໍລິສັດລາວ ເນເຊີນນໍເພເມັ້ນ ເນັດເວີກ ໃຫ້ສາມາດໃຊ້ຟັງຊັ່ນການຖອນເງິນຂ້າມທະນາຄານໄດ້.</p>\n<h3><strong>ຜົນປະໂຫຍດທີ່ໄດ້ຮັບ</strong></h3>\n<h4><strong>ດ້ານທະນາຄານສະມາຊິກ</strong></h4>\n<p>ປະຢັດຄ່າໃຊ້ຈ່າຍໃນການລົງທຶນເຊັ່ນ: ຫຼດຜ່ອນຄ່າໃຊ້ຈ່າຍໃນການຂະຫຍາຍຕູ້ ATM ແລະ ຄ່າບຳລຸງຮັກສາທີ່ຕິດພັນກັບການຂະຫຍາຍຕູ້ ATM; ເພີ່ມຈຸດບໍລິການຕູ້ ATM ແກ່ລູກຄ້າຂອງທະນາຄານທີ່ເຂົ້າເປັນສະມາຊິກ ຊຶ່ງສາມາດບໍລິການລູກຄ້າໄດ້ທົ່ວປະເທດ ດ້ວຍຄ່າໃຊ້ຈ່າຍໃນການລົງທຶນຕໍ່າ.</p>\n<h4><strong>ດ້ານລູກຄ້າຂອງທະນາຄານ</strong></h4>\n<p>ລູກຄ້າສາມາດນໍາໃຊ້ຕູ້ ATM ຂອງທຸກທະນາຄານທີ່ເປັນສະມາຊິກ ຂອງລະບົບ LAPS ຊຶ່ງປັດຈຸບັນມີທະນາຄານສະມາຊິກທັງໝົດ 16 ທະນາຄານ ເປັນການອຳນວຍຄວາມສະດວກ ແລະ ປະຢັດເວລາ ໂດຍລູກຄ້າບໍ່ຈໍາເປັນຕ້ອງລໍຖ້າການໃຊ້ບໍລິການ ຫຼື ຊອກຫາຕູ້ເອທີເອັມຂອງທະນາຄານຜູ້ອອກບັດເທົ່ານັ້ນ.</p>\n<h3><strong>​ເງື່ອນໄຂການໃຊ້ບໍລິການ</strong></h3>\n<p>ລູກຄ້າທີ່ມີບັດ ATM ຂອງທະນາຄານທີ່ເປັນສະມາຊິກຂອງ LAPNet ສາມາດຖອນເງິນສົດຂ້າມທະນາຄານຜ່ານຕູ້ ATM ຂອງທະນາຄານສະມາຊິກ ໂດຍສາມາດສັງເກດໄດ້ຈາກສັນຍາລັກ LAPNet ວົງມົນສີຟ້າທີ່ຕິດຢູ່ໜ້າຕູ້ ATM. <strong>ເຊິ່ງການຖອນເງິນສົດຂ້າມຕູ້ເອທີເອັມນີ້ແມ່ນຈະຕ້ອງໄດ້ເສຍຄ່າທຳນຽມ 2,000 ກີບ ຕໍ່ ຄັ້ງ.</strong></p>\n<h3 style=\"text-align: center;\"><strong>ຂັ້ນຕອນການຖອນເງິນສົດ</strong></h3>\n<div class=\"row\">\n<div class=\"col-6 col-12-medium\">\n<h4 style=\"text-align: center;\">ຂັ້ນຕອນທີ 1 ຈຸດໃຫ້ບໍລິການ</h4>\n<p>ສາມາດເລືອກໃຊ້ຕູ້ເອທີເອັມໃດກໍ່ໄດ້ ພາຍໃນ 16 ທະນາຄານທີ່ເປັນສະມາຊິກຂອງບໍລິສັດ LAPNet ເຊັ່ນ:</p>\n<ol>\n<li>ທະນາຄານການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ.</li>\n<li>ທະນາຄານພັດທະນາລາວ.</li>\n<li>ທະນາຄານສົ່ງເສີມກະສິກຳ.</li>\n<li>ທະນາຄານຮ່ວມທຸລະກິດລາວ-ຫວຽດ.</li>\n<li>ທະນາຄານມາຣູຮານເຈແປນລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານຮ່ວມພັດທະນາ.</li>\n<li>ທະນາຄານອຸດສາຫະກຳ ແລະ ການຄ້າຈີນ ຈຳກັດ.</li>\n<li>ທະນາຄານແຫ່ງປະເທດຈີນ ຈຳກັດ</li>\n<li>ທະນາຄານຫວຽດຕິນລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ເອຊີລີດາລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານອິນໂດຈີນ.</li>\n<li>ທະນາຄານ ບີໄອຊີ ລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ໄຊງ່ອນເທື່ອງຕິ່ນ ລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ເອັສທີ ລາວ ຈຳກັດ</li>\n<li>ທະນາຄານ ພາບລິກ ເບີຣາດ ມະຫາຊົນ ສາຂານະຄອນຫຼວງວຽງຈັນ</li>\n<li>ທະນາຄານກະສິກອນໄທ ຈໍາກັດ</li>\n</ol>\n</div>\n<div class=\"col-6 col-12-medium line\">\n<h4 style=\"text-align: center;\">ຂັ້ນຕອນທີ 2 ການເຮັດທຸລະກຳ</h4>\n<ul>\n<li>ຖອນເງິນສົດ ກົດເລືອກຄຳສັ່ງຖອນເງິນສົດ ແລະ ເຮັດຕາມຂັ້ນຕອນ ຄ່າທຳນຽມ = 2,000 ກີບ/ຄັ້ງ</li>\n</ul>\n</div>\n</div>\n<h3 style=\"text-align: center;\"><strong>ທະນາຄານທີ່ເປັນສະມາຊິກຂອງການບໍລິການ Cash Withdraw Interbank</strong></h3>\n<div class=\"table-wrapper\">\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>ໂລໂກ້</strong></td>\n<td><strong>ຊື່ທະນາຄານ</strong></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BCEL.png\" width=\"140px\" /></td>\n<td>BANQUE POUR LE COMMERCE EXTERIEUR LAO PUBLIC <br />BCEL<br /><a style=\"color: #444;\" href=\"https://www.bcel.com.la/\" rel=\"noopener\">https://www.bcel.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/LDB_1.png\" width=\"140px\" /></td>\n<td>Lao Development Bank <br />LDB<br /><a style=\"color: #444;\" href=\"https://www.ldblao.la/\" rel=\"noopener\">https://www.ldblao.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/JDB.png\" width=\"140px\" /></td>\n<td>Joint Development Bank <br />JDB<br /><a style=\"color: #444;\" href=\"https://www.jdbbank.com.la/\" rel=\"noopener\">https://www.jdbbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/APB.png\" width=\"140px\" /></td>\n<td>Agricultural Promotion Bank<br />APB<br /><a style=\"color: #444;\" href=\"https://www.apb.com.la/\" rel=\"noopener\">https://www.apb.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/MJBL.png\" width=\"140px\" /></td>\n<td>MARUHAN Japan Bank Lao<br />MJBL<br /><a style=\"color: #444;\" href=\"https://www.maruhanjapanbanklao.com/\" rel=\"noopener\">https://www.maruhanjapanbanklao.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/LVB.png\" width=\"140px\" /></td>\n<td>Laos-Vietnam Joint Venture Bank<br />LVB<br /><a style=\"color: #444;\" href=\"https://www.laovietbank.com.la/\" rel=\"noopener\">https://www.laovietbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/ICBC.png\" width=\"140px\" /></td>\n<td>the Industrial and Commercial Bank of China<br />ICBC<br /><a style=\"color: #444;\" href=\"https://vientiane.icbc.com.cn/\" rel=\"noopener\">https://vientiane.icbc.com.cn</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BOC.png\" width=\"140px\" /></td>\n<td>Bank of China<br />BOC<br /><a style=\"color: #444;\" href=\"https://www.boc.cn/en/\" rel=\"noopener\">https://www.boc.cn/en</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/VTB.png\" width=\"140px\" /></td>\n<td>VietinBank Lao<br />VTB<br /><a style=\"color: #444;\" href=\"https://www.vietinbank.com.la/\" rel=\"noopener\">https://www.vietinbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/IB.png\" width=\"140px\" /></td>\n<td>INDOCHINA BANK LTD<br />Indochina<br /><a style=\"color: #444;\" href=\"https://www.indochinabank.com/\" rel=\"noopener\">https://www.indochinabank.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/ACB.png\" width=\"140px\" /></td>\n<td>ACLEDA BANK LAO.,LTD<br />ACLEDA<br /><a style=\"color: #444;\" href=\"https://www.acledabank.com/\" rel=\"noopener\">https://www.acledabank.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BIC.png\" width=\"140px\" /></td>\n<td>BIC Bank Lao Co., Ltd<br />BIC<br /><a style=\"color: #444;\" href=\"https://www.biclaos.com/\" rel=\"noopener\">https://www.biclaos.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/Sacom.png\" width=\"140px\" /></td>\n<td>Sacombank Lao<br />Sacom<br /><a style=\"color: #444;\" href=\"https://www.sacombank.com.vn/\" rel=\"noopener\">https://www.sacombank.com.vn</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/STB.png\" width=\"140px\" /></td>\n<td>ST BANK LTD <br />STB <br /><a style=\"color: #444;\" href=\"httpss://www.stbanklaos.la/\" rel=\"noopener\">httpss://www.stbanklaos.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/PBB.png\" width=\"140px\" /></td>\n<td>PUBLIC BANK BERHAD <br />PBB <br /><a style=\"color: #444;\" href=\"https://www.pbebank.com/\" rel=\"noopener\">https://www.pbebank.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/Kbank.png\" width=\"140px\" /></td>\n<td>KASIKORNTHAI BANK Limited <br />Kbank <br /><a style=\"color: #444;\" href=\"www.kasikornbank.com.la/\" rel=\"noopener\">https://www.kasikornbank.com.la</a></td>\n</tr>\n</tbody>\n</table>\n</div>', 'cash-withdraw', '2020-01-14 20:52:00', '2021-12-07 23:35:05', 'products\\March2020\\sM5enyqAlXzKsdFh5q80.png'),
(3, 'Fund Transfer Interbank', 'Excerpt of Fund Transfer Interbank', '<h3><strong>ຄຸນລັກສະນະ</strong></h3>\n<p>ການໂອນເງິນຂ້າມທະນາຄານຜ່ານຕູ້ ATM ແມ່ນນຳໃຊ້ລະບົບແລັບໃນການເຊື່ອມໂຍງຕູ້ເອທີເອັມຂອງແຕ່ລະທະນາຄານທີ່ເປັນສະມາຊິກຂອງບໍລິສັດລາວ ເນເຊີນນໍເພເມັ້ນ ເນັດເວີກ ໃຫ້ສາມາດໃຊ້ຟັງຊັ່ນການໂອນເງິນຂ້າມທະນາຄານໄດ້.</p>\n<h3><strong>ຜົນປະໂຫຍດທີ່ໄດ້ຮັບ</strong></h3>\n<h4><strong>ດ້ານທະນາຄານສະມາຊິກ</strong></h4>\n<p>ຫຼຸດຕົ້ນທຶນທາງດ້ານບຸກຂະລາກອນທີ່ໃຫ້ບໍລິການໂອນເງິນຂ້າມທະນາຄານຜ່ານ Counter ຫຼື ປ່ອງບໍລິການຂອງທະນາຄານ ໃຫ້ລູກຄ້າຫັນມານຳໃຊ້ຕູ້ ATM ໃນການເຮັດທຸລະກຳ ແລະ ຍັງສາມາດເພີ່ມຈຳນວນທຸລະກຳການໂອນ ເພາະສາມາດໂອນຢູ່ຕູ້ ATM ຂອງທະນາຄານໃດກໍ່ໄດ້ທີ່ເປັນສະມາຊິກຂອງບໍລິສັດ LAPNet.</p>\n<h4><strong>ດ້ານລູກຄ້າຂອງທະນາຄານ</strong></h4>\n<p>ເປັນການອຳນວຍຄວາມສະດວກ ແລະ ປະຢັດເວລາ ໂດຍລູກຄ້າບໍ່ຈໍາເປັນຕ້ອງລໍຖ້າການໃຊ້ບໍລິການໂອນເງິນຂ້າມທະນາຄານຜ່ານ counter ຫຼື ປ່ອງບໍລິການຂອງທະນາຄານ; ລູກຄ້າສາມາດເຮັດທຸລະກຳໂອນເງິນຂ້າມທະນາຄານໄດ້ດ້ວຍຕົນເອງ ດ້ວຍການໂອນເງິນທີ່ຕູ້ ATM ຂອງທະນາຄານສະມາຊິກ ຊຶ່ງປັດຈຸບັນມີ 13 ທະນາຄານທີ່ສາມາດໃຫ້ບໍລິການໄດ້.</p>\n<h3><strong>​ເງື່ອນໄຂການໃຊ້ບໍລິການ</strong></h3>\n<p>ລູກຄ້າທີ່ມີບັດ ATM ຂອງທະນາຄານທີ່ເປັນສະມາຊິກຂອງ LAPNet ສາມາດໂອນເງິນຂ້າມທະນາຄານຜ່ານຕູ້ ATM ຂອງທະນາຄານສະມາຊິກ. ຂອບເຂດການໂອນເງິນຂ້າມທະນາຄານຜ່ານຕູ້ເອທີເອັມ ແມ່ນສາມາດໂອນເງິນແຕ່ 1.000 ກີບ ຫາ 100.000.000 ກີບ/ຄັ້ງ. ໂດຍຈະຄິດໄລ່ຄ່າບໍລິການຕາມມູນຄ່າການໂອນດັ່ງນີ້:</p>\n<div class=\"table-wrapper\">\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>ໂອນເງິນແຕ່ຈຳນວນເງິນ</strong></td>\n<td><strong>ຫາຈຳນວນ</strong></td>\n<td><strong>ຄິດຄ່າບໍລິການ</strong></td>\n</tr>\n<tr>\n<td>1.000 ກີບ</td>\n<td>2.000.000 ກີບ</td>\n<td>1.000 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>2.000.001 ກີບ</td>\n<td>3.000.000 ກີບ</td>\n<td>1.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>3.000.001 ກີບ</td>\n<td>4.000.000 ກີບ</td>\n<td>2.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>4.000.001 ກີບ</td>\n<td>5.000.000 ກີບ</td>\n<td>3.000 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>5.000.001 ກີບ</td>\n<td>7.000.000 ກີບ</td>\n<td>4.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>7.000.001 ກີບ</td>\n<td>10.000.000 ກີບ</td>\n<td>7.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>10.000.001 ກີບ</td>\n<td>30.000.000 ກີບ</td>\n<td>12.000 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>30.000.001 ກີບ</td>\n<td>50.000.000 ກີບ</td>\n<td>15.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>50.000.001 ກີບ</td>\n<td>100.000.000 ກີບ</td>\n<td>20.000 ກີບ/ທຸລະກໍາ</td>\n</tr>\n</tbody>\n</table>\n</div>\n<h3 style=\"text-align: center;\"><strong>ຂັ້ນຕອນການໂອນເງິນຂ້າມທະນາຄານ ຜ່ານຕູ້ເອທີເອັມ</strong></h3>\n<div class=\"row\">\n<div class=\"col-4 col-12-medium\">\n<h4 style=\"text-align: center;\">ຂັ້ນຕອນທີ 1 ຈຸດໃຫ້ບໍລິການ</h4>\n<p>ການໂອນເງິນຂ້າມທະນາຄານຜ່ານຕູ້ເອທີເອັມສາມາດເຮັດທຸລະກຳ ການໂອນໄດ້ທີ່ຕູ້ເອທີເອັມດັ່ງລຸ່ມນີ້:</p>\n<ol>\n<li>ບັດເອທີເອັມຂອງທະນາຄານ (A) ສາມາດນຳໃຊ້ຕູ້ຂອງທະນາຄານ (A) ເພື່ອໂອນເງິນຫາຜູ້ຮັບປາຍທາງ ທີ່ທະນາຄານ (B)</li>\n<li>ບັດທະນາຄານ (A) ສາມາດນຳໃຊ້ຕູ້ຂອງທະນາຄານ (B) ເພື່ອໂອນເງິນຫາຜູ້ຮັບປາຍທາງທີ່ທະນາຄານ (C)&nbsp;</li>\n</ol>\n</div>\n<div class=\"col-4 col-12-medium line\">\n<h4 style=\"text-align: center;\">ຂັ້ນຕອນທີ 2 ສະມາຊິກທີ່ໃຫ້ບໍລິການ</h4>\n<p>ສາມາດເລືອກໃຊ້ຕູ້ເອທີເອັມໃດກໍ່ໄດ້ ພາຍໃນ 13 ທະນາຄານທີ່ເປັນສະມາຊິກຂອງບໍລິສັດ LAPNet ເຊັ່ນ:</p>\n<ol>\n<li>ທະນາຄານ ພັດທະນາລາວ.</li>\n<li>ທະນາຄານ ສົ່ງເສີມກະສິກຳ.</li>\n<li>ທະນາຄານ ຮ່ວມພັດທະນາ.</li>\n<li>ທະນາຄານ ມາຣູຮານເຈແປນລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ບີໄອຊີ ລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ.</li>\n<li>ທະນາຄານ ເອັສທີ ລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ຮ່ວມທຸລະກິດລາວຫວຽດ.</li>\n<li>ທະນາຄານ ພາບລິກ ເບີຣາດ ມະຫາຊົນ ສາຂານະຄອນຫຼວງວຽງຈັນ.</li>\n<li>ທະນາຄານ ກະສິກອນໄທ ຈໍາກັດ.</li>\n<li>ທະນາຄານ ໄຊງ່ອນເທື່ອງຕິ່ນ ລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ອິນໂດຈີນ.</li>\n<li>ທະນາຄານ ອຸດສາຫະກຳ ແລະ ການຄ້າຈີນ ຈຳກັດ.</li>\n</ol>\n</div>\n<div class=\"col-4 col-12-medium line\">\n<h4 style=\"text-align: center;\">ຂັ້ນຕອນທີ 3 ການເຮັດທຸລະກຳ</h4>\n<ol>\n<li>ນຳບັດເອທີເອັມປ່ອນເຂົ້າຕູ້ເອທີເອັມ ເຮັດຕາມຂັ້ນຕອນການໂອນເງິນ ແລະ ປ້ອນເລກໜ້າບັດ 16 ໂຕເລກຂອງຜູ້ຮັບປາຍທາງ ກົດຈຳນວນເງິນ ແລ້ວຢືນຢັນ</li>\n<li>ຜູ້ຮັບປາຍທາງຈະໄດ້ຮັບເງິນໂອນທັນທີ ຫຼັງຈາກທຸລະກຳການໂອນເງິນສຳເລັດ.</li>\n</ol>\n</div>\n</div>\n<h2 style=\"text-align: center;\"><strong>ທະນາຄານທີ່ເປັນສະມາຊິກຂອງການບໍລິການ Fund Transfer Interbank</strong></h2>\n<div class=\"table-wrapper\">\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>Logo</strong></td>\n<td><strong>Name</strong></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/LDB_1.png\" width=\"140px\" /></td>\n<td>Lao Development Bank <br />LDB <br /><a style=\"color: #444;\" href=\"https://www.ldblao.la/\" rel=\"noopener\">https://www.ldblao.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/APB.png\" width=\"140px\" /></td>\n<td>Agricultural Promotion Bank<br />APB <br /><a style=\"color: #444;\" href=\"https://www.apb.com.la/\" rel=\"noopener\">https://www.apb.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/JDB.png\" width=\"140px\" /></td>\n<td>Joint Development Bank <br />JDB <br /><a style=\"color: #444;\" href=\"https://www.jdbbank.com.la/\" rel=\"noopener\">https://www.jdbbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/MJBL.png\" width=\"140px\" /></td>\n<td>MARUHAN Japan Bank Lao<br />MJBL <br /><a style=\"color: #444;\" href=\"https://www.maruhanjapanbanklao.com/\" rel=\"noopener\">https://www.maruhanjapanbanklao.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BIC.png\" width=\"140px\" /></td>\n<td>BIC Bank Lao Co., Ltd<br />BIC <br /><a style=\"color: #444;\" href=\"https://www.ldblao.la/\" rel=\"noopener\">https://www.ldblao.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BCEL.png\" width=\"140px\" /></td>\n<td>BANQUE POUR LE COMMERCE EXTERIEUR LAO PUBLIC <br />BCEL <br /><a style=\"color: #444;\" href=\"https://www.bcel.com.la/\" rel=\"noopener\">https://www.bcel.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/STB.png\" width=\"140px\" /></td>\n<td>ST BANK LTD <br />STB <br /><a style=\"color: #444;\" href=\"httpss://www.stbanklaos.la/\" rel=\"noopener\">httpss://www.stbanklaos.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/LVB.png\" width=\"140px\" /></td>\n<td>Laos-Vietnam Joint Venture Bank<br />LVB<br /><a style=\"color: #444;\" href=\"https://www.laovietbank.com.la/\" rel=\"noopener\">https://www.laovietbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/PBB.png\" width=\"140px\" /></td>\n<td>PUBLIC BANK BERHAD <br />PBB <br /><a style=\"color: #444;\" href=\"https://www.pbebank.com/\" rel=\"noopener\">https://www.pbebank.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/Kbank.png\" width=\"140px\" /></td>\n<td>KASIKORNTHAI BANK Limited <br />Kbank <br /><a style=\"color: #444;\" href=\"www.kasikornbank.com.la/\" rel=\"noopener\">https://www.kasikornbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/Sacom.png\" width=\"140px\" /></td>\n<td>Sacombank Lao<br />Sacom<br /><a style=\"color: #444;\" href=\"https://www.sacombank.com.vn/\" rel=\"noopener\">https://www.sacombank.com.vn</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/IB.png\" width=\"140px\" /></td>\n<td>INDOCHINA BANK LTD<br />Indochina<br /><a style=\"color: #444;\" href=\"https://www.indochinabank.com/\" rel=\"noopener\">https://www.indochinabank.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/ICBC.png\" width=\"140px\" /></td>\n<td>the Industrial and Commercial Bank of China<br />ICBC<br /><a style=\"color: #444;\" href=\"https://vientiane.icbc.com.cn/\" rel=\"noopener\">https://vientiane.icbc.com.cn</a></td>\n</tr>\n</tbody>\n</table>\n</div>', 'fund-transfer-interbank', '2020-01-14 20:53:00', '2021-12-07 23:34:37', 'products\\February2020\\Ec2wb2uMiRlbapC7bOc7.jpeg'),
(4, 'Lao Mobile Payment Switching', '', '<h3><strong>ຄຸນລັກສະນະ</strong></h3>\n<p>ການໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື (Fund Transfer via Mobile Application) ໂດຍນຳໃຊ້ລະບົບ LAPSໃນການເຊື່ອມໂຍງຜ່ານ Applications ຂອງແຕ່ລະທະນາຄານທີ່ເປັນສະມາຊິກຂອງບໍລິສັດລາວ ເນເຊີນນໍເພເມັ້ນ ເນັດເວີກ ໃຫ້ສາມາດໃຊ້ຟັງຊັ່ນການດຳເນີນທຸລະກຳໂອນເງິນຂ້າມທະນາຄານໄດ້.</p>\n<h3><strong>ຜົນປະໂຫຍດທີ່ໄດ້ຮັບ</strong></h3>\n<h4><strong>ດ້ານທະນາຄານສະມາຊິກ</strong></h4>\n<p>ຊ່ວຍຫຼຸດຜ່ອນຕົ້ນທຶນທາງດ້ານບຸກຄະລາກອນທີ່ໃຫ້ບໍລິການໂອນເງິນຂ້າມທະນາຄານຜ່ານໜ່ວຍງານບໍລິການ ຫຼື ຕູ້ ATM ຂອງແຕ່ລະທະນາຄານທຸລະກິດທີ່ເປັນສະມາຊິກຂອງບໍລິສັດ LAPNet ນັ້ນ, ໃຫ້ລູກຄ້າຫັນມານຳໃຊ້ ການໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື ໃນການດຳເນີນທຸລະກຳ.</p>\n<h4><strong>ດ້ານລູກຄ້າຂອງທະນາຄານ</strong></h4>\n<p>ຜະລິດຕະພັນ ການໂອນເງິນຂ້າມທະນາຄານເທິງມືຖືນີ້ ຈະຊ່ວຍອຳນວຍຄວາມສະດວກໃຫ້ແກ່ມວນຊົນໃນການດຳເນີນທຸລະກຳທາງການເງິນຢູ່ເທິງມືຖືໄດ້ງ່າຍ ແລະ ວ່ອງໄວຂື້ນ ໂດຍນຳໃຊ້ Applications ຂອງແຕ່ລະທະນາຄານທຸລະກິດທີ່ເປັນສະມາຊິກຂອງບໍລິສັດ LAPNet, ຕາມຄຳຂວັນທີ່ກ່າວໄວ້ວ່າ: &ldquo; ທຸກທີ່ ທຸກເວລາ ທຸກຊ່ອງທາງການຊຳລະ&rdquo;</p>\n<h3><strong>​ເງື່ອນໄຂການໃຊ້ບໍລິການ</strong></h3>\n<p>ລຸກຄ້າສາມາດນຳໃຊ້ເລກບັນຊີທະນາຄານ ດຳເນີນທຸລະກຳເທິງມືຖື ໂດຍຜ່ານ Applications ຂອງແຕ່ລະທະນາຄານທຸລະກິດທີ່ເປັນສະມາຊິກຂອງບໍລິສັດ LAPNet ໄດ້ຟຣີໃນໄລຍະທີ່ເປີດຕົວຜະລິດຕະພັນການໂອນເງິນຂ້າມທະນາຄານເທິງມືຖືໃໝ່ ດັ່ງເນື້ອໃນລຸ່ມນີ້:</p>\n<p>- ການໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື ໂດຍນຳໃຊ້ຮູບແບບສ້າງເປັນ QR Code ຮ່ວມກັນ ລະຫວ່າງ ທະນາຄານ ພັດທະນາລາວ ແລະ ທະນາຄານ ເອັສທີ ຈຳກັດ.</p>\n<p style=\"text-align: center;\"><img style=\"width: 100%; max-width: 160px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/LDB_1.png\" width=\"50%\" height=\"\" /><img style=\"width: 100%; max-width: 400px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/STB.png\" width=\"50%\" height=\"\" /></p>\n<p>- ການໂອນເງິນເທີງມືຖືໂດຍນຳໃຊ້ຮູບແບບການໂອນ ບັນຊີຫາບັນຊີ ຫຼື ເອີ້ນວ່າ Account Fund Transfer ແມ່ນແລ້ວ 7 ທະນາຄານ ຄື: ທະນາຄານການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ, ທະນາຄານຮ່ວມທຸລະກິດລາວ - ຫວຽດ, ທະນາຄານຮ່ວມພັດທະນາ ທະນາຄານ ບີໄອຊີລາວ ຈຳກັດ, ທະນາຄານ ພັດທະນາລາວ ແລະ ທະນາຄານ ອິນດູຈີນ ຈຳກັດ.</p>\n<p style=\"text-align: center;\"><img style=\"width: 100%; max-width: 160px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/BCEL.png\" width=\"50%\" height=\"\" /> <img style=\"width: 100%; max-width: 400px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/LVB.png\" width=\"50%\" height=\"\" /> <img style=\"width: 100%; max-width: 160px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/JDB.png\" width=\"50%\" height=\"\" /> <img style=\"width: 100%; max-width: 160px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/BIC.png\" width=\"50%\" height=\"\" /> <img style=\"width: 100%; max-width: 160px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/LDB_1.png\" width=\"50%\" height=\"\" /><img style=\"width: 100%; max-width: 160px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/IB.png\" width=\"50%\" height=\"\" /><img style=\"width: 100%; max-width: 160px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/MJBL.png\" width=\"50%\" height=\"\" /></p>\n<h3 style=\"text-align: center;\"><strong>Members of Lao Mobile Payment Switching</strong></h3>\n<!-- Table -->\n<div class=\"table-wrapper\">\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>Logo</strong></td>\n<td><strong>Members</strong></td>\n</tr>\n<!-- //LDB -->\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/LDB_1.png\" width=\"140px\" /></td>\n<td>Lao Development Bank<br />LDB <br />Email :<a style=\"color: #444;\" href=\"mailto:ldblaoho@ldblao.la\">ldblaoho@ldblao.la</a><br />Tel : <a style=\"color: #444;\" href=\"tel:+8562121330003\">(+856-21) 213300 - 03</a><br /><a style=\"color: #444;\" href=\"https://www.ldblao.la/\" rel=\"noopener\">https://www.ldblao.la</a></td>\n</tr>\n<!-- //STB -->\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/STB.png\" width=\"140px\" /></td>\n<td>ST BANK LTD<br />STB <br />Tel : <a style=\"color: #444;\" href=\"tel:+8562124156062\">(+856-21) 241 560-62</a><br /><a style=\"color: #444;\" href=\"https://www.stbanklaos.la/\" rel=\"noopener\">https://www.stbanklaos.la</a></td>\n</tr>\n<!-- //BCEL -->\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BCEL.png\" width=\"140px\" /></td>\n<td>BANQUE POUR LE COMMERCE EXTERIEUR LAO PUBLIC<br />BCEL <br />Email :<a style=\"color: #444;\" href=\"mailto:bcelhqv@bcel.com.la\">bcelhqv@bcel.com.la</a><br />Tel : <a style=\"color: #444;\" href=\"tel:+85621213200\">(+856-21)213200</a><br />Hotline : <a style=\"color: #444;\" href=\"tel:1555\">1555</a><br /><a style=\"color: #444;\" href=\"http://www.bcel.com.la/\" rel=\"noopener\">http://www.bcel.com.la</a></td>\n</tr>\n<!-- //LVB -->\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/LVB.png\" width=\"140px\" /></td>\n<td>Laos-Vietnam Joint Venture Bank<br />LVB <br />Email :<a style=\"color: #444;\" href=\"mailto:info@laovietbank.com.la\">info@laovietbank.com.la</a><br />Tel : <a style=\"color: #444;\" href=\"tel:+85621251418\">(+856-21)251418</a><br />Hotline : <a style=\"color: #444;\" href=\"tel:1440\">1440</a><br /><a style=\"color: #444;\" href=\"https://www.laovietbank.com.la/\" rel=\"noopener\">https://www.laovietbank.com.la</a></td>\n</tr>\n<!-- //JDB -->\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/JDB.png\" width=\"140px\" /></td>\n<td>Joint Development Bank<br />JDB <br />Email :<a style=\"color: #444;\" href=\"mailto:mrkjdb@gmail.com\">mrkjdb@gmail.com</a><br />Tel : <a style=\"color: #444;\" href=\"tel:+856212135316\">(+856-21) 213531-6</a><br />Hotline : <a style=\"color: #444;\" href=\"tel:1499\">1499</a><br /><a style=\"color: #444;\" href=\"http://www.jdbbank.com.la/\" rel=\"noopener\">http://www.jdbbank.com.la</a></td>\n</tr>\n<!-- //BIC -->\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BIC.png\" width=\"140px\" /></td>\n<td>BIC Bank Lao Co., Ltd<br />BIC <br />Email :<a style=\"color: #444;\" href=\"mailto:enquiry@biclaos.com\">enquiry@biclaos.com</a><br />Tel : <a style=\"color: #444;\" href=\"tel:+85621250388\">(+85621) 250 388 , </a><a style=\"color: #444;\" href=\"tel:+85621250420\">(+85621) 250 420 ,</a><br /><a style=\"color: #444;\" href=\"https://www.biclaos.com/\" rel=\"noopener\">https://www.biclaos.com</a></td>\n</tr>\n<!-- //APB -->\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/IB.png\" width=\"140px\" /></td>\n<td>INDOCHINA BANK LTD<br />Indochina <br />Email :<a style=\"color: #444;\" href=\"mailto:info@indochina.com.la\">info@indochina.com.la</a><br />Tel : <a style=\"color: #444;\" href=\"tel:+85621455000\">(+85621) 455 000 , </a><br /><a style=\"color: #444;\" href=\"https://www.indochinabank.com/\" rel=\"noopener\">https://www.indochinabank.com</a></td>\n</tr>\n<!-- //MJBL -->\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/MJBL.png\" width=\"140px\" /></td>\n<td>MARUHAN Japan Bank Lao<br />MJBL <br />Email :<a style=\"color: #444;\" href=\"mailto:info@maruhanjapanbanklao.com\">info@maruhanjapanbanklao.com</a><br />Tel : <a style=\"color: #444;\" href=\"tel:+85621266000\">(+85621) 266 000, </a><br /><a style=\"color: #444;\" href=\"https://www.maruhanjapanbanklao.com/\" rel=\"noopener\">https://www.maruhanjapanbanklao.com</a></td>\n</tr>\n</tbody>\n</table>\n</div>', 'lao-mobile-payment-switching', '2021-01-07 01:07:00', '2022-02-09 20:32:29', 'products/February2021/y55fXIonJZKId9HvSbex.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(2, 'user', 'Normal User', '2020-01-02 23:54:32', '2020-01-02 23:54:32'),
(4, 'test', 'not admin', '2021-02-01 01:19:49', '2021-02-01 01:19:49');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `details` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Lao National Payment Network', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'ບໍລິສັດ LAPNet ຈະສືບຕໍ່ດຳເນີນທຸລະກິດໃຫ້ບໍລິການລະບົບ LAPS ທີ່ໄດ້ຮັບໂອນພາລະບົດບາດຈາກ ທຫລ ເພື່ອອຳນວຍຄວາມສະດວກໃຫ້ມວນຊົນ ສາມາດນຳໃຊ້ບັດສິນເຊື່ອ ແລະ ບັດເງິນ ຝາກ ໃນການເຮັດທຸລະກຳຜ່ານຕູ້ເອທິເອັມ, ຕູ້ຊີດີເອັມ ເຊັ່ນ: ກວດຍອດເງິນໃນບັນຊີ, ຝາກ-ຖອນເງິນສົດ, ໂອນເງິນ ພ້ອມທັງສາມາດຊຳລະສິນຄ້າ ແລະ ຄ່າບໍລິການຕ່າງໆຢູ່ຮ້ານຄ້າ ຜ່ານເຄື່ອງພີໂອເອສຂອງທະນາຄານທຸລະກິດອື່ນທີ່ເປັນສະມາຊິກຂອງລະບົບ LAPS ໄດ້, ເຊິ່ງໃນໄລຍະຜ່ານມາໄດ້ດຳເນີນການເປີດໃຫ້ບໍລິການແກ່ມວນຊົນສາມາດນຳໃຊ້ບັດເງິນຝາກ (Debit Card) ໃນການເຮັດທຸລະກຳກວດຍອດເງິນໃນບັນຊີ ແລະ ຖອນເງິນສົດຢູ່ຕູ້ ATM ໄດ້ຕະຫຼອດ 24 ຊົ່ວໂມງ. ສະນັ້ນ, ເຮັດໃຫ້ທະນາຄານສາມາດນຳໃຊ້ອຸປະກອນຮ່ວມກັນ ທັງເປັນການຫຼຸດຜ່ອນການລົງທຶນທີ່ຊຳ້ຊ້ອນໃນການຊື້ອຸປະກອນດັ່ງທີ່ໄດ້ກ່າວ  ມາ. ດັ່ງນັ້ນ, ການດຳເນີນທຸລະກິດຂອງບໍລິສັດແມ່ນມີເອກະລັກ ແລະ ຈຸດພິເສດເນື່ອງຈາກຖືເປັນລະບົບທຳອິດຂອງ ສປປ ລາວ ທີ່ສອດຄ່ອງຕາມກົດໝາຍວ່າດ້ວຍລະບົບການຊຳລະ ແລະ ສອດຄ່ອງຕາມແຜນ  ຍຸດທະສາດພັດທະນາລະບົບສະຖາບັນການເງິນ-ເງິນຕາ ຂອງ ສປປ ລາວ.', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '924120046830-6vi56qgr01cfbqu8a8lqo2rl9rl3qcbf.apps.googleusercontent.com', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-01-02 23:54:33', '2020-01-02 23:54:33'),
(35, 'menu_items', 'title', 16, 'lao', 'ຜະລິດຕະພັນ ແລະ ການບໍລິການ', '2020-01-26 23:30:54', '2020-01-27 23:33:48'),
(36, 'menu_items', 'title', 17, 'lao', 'ຂ່າວ ແລະ ກິດຈະກຳ', '2020-01-26 23:31:31', '2020-01-26 23:31:31'),
(38, 'menu_items', 'title', 19, 'lao', 'ກ່ຽວກັບພວກເຮົາ', '2020-01-26 23:34:32', '2020-01-26 23:34:32'),
(39, 'menu_items', 'title', 20, 'lao', 'ຕິດຕໍ່ພວກເຮົາ', '2020-01-26 23:35:56', '2020-02-05 01:29:21'),
(42, 'products', 'name', 3, 'lao', 'ໂອນເງິນຂ້າມທະນາຄານຜ່ານຕູ້ ATM', '2020-01-28 00:20:23', '2020-02-10 21:40:26'),
(43, 'products', 'body', 3, 'lao', '<h3><strong>ຄຸນລັກສະນະ</strong></h3>\n<p>ການໂອນເງິນຂ້າມທະນາຄານຜ່ານຕູ້ ATM ແມ່ນນຳໃຊ້ລະບົບແລັບໃນການເຊື່ອມໂຍງຕູ້ເອທີເອັມຂອງແຕ່ລະທະນາຄານທີ່ເປັນສະມາຊິກຂອງບໍລິສັດລາວ ເນເຊີນນໍເພເມັ້ນ ເນັດເວີກ ໃຫ້ສາມາດໃຊ້ຟັງຊັ່ນການໂອນເງິນຂ້າມທະນາຄານໄດ້.</p>\n<h3><strong>ຜົນປະໂຫຍດທີ່ໄດ້ຮັບ</strong></h3>\n<h4><strong>ດ້ານທະນາຄານສະມາຊິກ</strong></h4>\n<p>ຫຼຸດຕົ້ນທຶນທາງດ້ານບຸກຂະລາກອນທີ່ໃຫ້ບໍລິການໂອນເງິນຂ້າມທະນາຄານຜ່ານ Counter ຫຼື ປ່ອງບໍລິການຂອງທະນາຄານ ໃຫ້ລູກຄ້າຫັນມານຳໃຊ້ຕູ້ ATM ໃນການເຮັດທຸລະກຳ ແລະ ຍັງສາມາດເພີ່ມຈຳນວນທຸລະກຳການໂອນ ເພາະສາມາດໂອນຢູ່ຕູ້ ATM ຂອງທະນາຄານໃດກໍ່ໄດ້ທີ່ເປັນສະມາຊິກຂອງບໍລິສັດ LAPNet.</p>\n<h4><strong>ດ້ານລູກຄ້າຂອງທະນາຄານ</strong></h4>\n<p>ເປັນການອຳນວຍຄວາມສະດວກ ແລະ ປະຢັດເວລາ ໂດຍລູກຄ້າບໍ່ຈໍາເປັນຕ້ອງລໍຖ້າການໃຊ້ບໍລິການໂອນເງິນຂ້າມທະນາຄານຜ່ານ counter ຫຼື ປ່ອງບໍລິການຂອງທະນາຄານ; ລູກຄ້າສາມາດເຮັດທຸລະກຳໂອນເງິນຂ້າມທະນາຄານໄດ້ດ້ວຍຕົນເອງ ດ້ວຍການໂອນເງິນທີ່ຕູ້ ATM ຂອງທະນາຄານສະມາຊິກ ຊຶ່ງປັດຈຸບັນມີ 13 ທະນາຄານທີ່ສາມາດໃຫ້ບໍລິການໄດ້.</p>\n<h3><strong>​ເງື່ອນໄຂການໃຊ້ບໍລິການ</strong></h3>\n<p>ລູກຄ້າທີ່ມີບັດ ATM ຂອງທະນາຄານທີ່ເປັນສະມາຊິກຂອງ LAPNet ສາມາດໂອນເງິນຂ້າມທະນາຄານຜ່ານຕູ້ ATM ຂອງທະນາຄານສະມາຊິກ. ຂອບເຂດການໂອນເງິນຂ້າມທະນາຄານຜ່ານຕູ້ເອທີເອັມ ແມ່ນສາມາດໂອນເງິນແຕ່ 1.000 ກີບ ຫາ 100.000.000 ກີບ/ຄັ້ງ. ໂດຍຈະຄິດໄລ່ຄ່າບໍລິການຕາມມູນຄ່າການໂອນດັ່ງນີ້:</p>\n<div class=\"table-wrapper\">\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>ໂອນເງິນແຕ່ຈຳນວນເງິນ</strong></td>\n<td><strong>ຫາຈຳນວນ</strong></td>\n<td><strong>ຄິດຄ່າບໍລິການ</strong></td>\n</tr>\n<tr>\n<td>1.000 ກີບ</td>\n<td>2.000.000 ກີບ</td>\n<td>1.000 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>2.000.001 ກີບ</td>\n<td>3.000.000 ກີບ</td>\n<td>1.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>3.000.001 ກີບ</td>\n<td>4.000.000 ກີບ</td>\n<td>2.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>4.000.001 ກີບ</td>\n<td>5.000.000 ກີບ</td>\n<td>3.000 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>5.000.001 ກີບ</td>\n<td>7.000.000 ກີບ</td>\n<td>4.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>7.000.001 ກີບ</td>\n<td>10.000.000 ກີບ</td>\n<td>7.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>10.000.001 ກີບ</td>\n<td>30.000.000 ກີບ</td>\n<td>12.000 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>30.000.001 ກີບ</td>\n<td>50.000.000 ກີບ</td>\n<td>15.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>50.000.001 ກີບ</td>\n<td>100.000.000 ກີບ</td>\n<td>20.000 ກີບ/ທຸລະກໍາ</td>\n</tr>\n</tbody>\n</table>\n</div>\n<h3 style=\"text-align: center;\"><strong>ຂັ້ນຕອນການໂອນເງິນຂ້າມທະນາຄານ ຜ່ານຕູ້ເອທີເອັມ</strong></h3>\n<div class=\"row\">\n<div class=\"col-4 col-12-medium\">\n<h4 style=\"text-align: center;\">ຂັ້ນຕອນທີ 1 ຈຸດໃຫ້ບໍລິການ</h4>\n<p>ການໂອນເງິນຂ້າມທະນາຄານຜ່ານຕູ້ເອທີເອັມສາມາດເຮັດທຸລະກຳ ການໂອນໄດ້ທີ່ຕູ້ເອທີເອັມດັ່ງລຸ່ມນີ້:</p>\n<ol>\n<li>ບັດເອທີເອັມຂອງທະນາຄານ (A) ສາມາດນຳໃຊ້ຕູ້ຂອງທະນາຄານ (A) ເພື່ອໂອນເງິນຫາຜູ້ຮັບປາຍທາງ ທີ່ທະນາຄານ (B)</li>\n<li>ບັດທະນາຄານ (A) ສາມາດນຳໃຊ້ຕູ້ຂອງທະນາຄານ (B) ເພື່ອໂອນເງິນຫາຜູ້ຮັບປາຍທາງທີ່ທະນາຄານ (C)&nbsp;</li>\n</ol>\n</div>\n<div class=\"col-4 col-12-medium line\">\n<h4 style=\"text-align: center;\">ຂັ້ນຕອນທີ 2 ສະມາຊິກທີ່ໃຫ້ບໍລິການ</h4>\n<p>ສາມາດເລືອກໃຊ້ຕູ້ເອທີເອັມໃດກໍ່ໄດ້ ພາຍໃນ 13 ທະນາຄານທີ່ເປັນສະມາຊິກຂອງບໍລິສັດ LAPNet ເຊັ່ນ:</p>\n<ol>\n<li>ທະນາຄານ ພັດທະນາລາວ.</li>\n<li>ທະນາຄານ ສົ່ງເສີມກະສິກຳ.</li>\n<li>ທະນາຄານ ຮ່ວມພັດທະນາ.</li>\n<li>ທະນາຄານ ມາຣູຮານເຈແປນລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ບີໄອຊີ ລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ.</li>\n<li>ທະນາຄານ ເອັສທີ ລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ຮ່ວມທຸລະກິດລາວຫວຽດ</li>\n<li>ທະນາຄານ ພາບລິກ ເບີຣາດ ມະຫາຊົນ ສາຂານະຄອນຫຼວງວຽງຈັນ.</li>\n<li>ທະນາຄານ ກະສິກອນໄທ ຈໍາກັດ.</li>\n<li>ທະນາຄານ ໄຊງ່ອນເທື່ອງຕິ່ນ ລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ອິນໂດຈີນ.</li>\n<li>ທະນາຄານ ອຸດສາຫະກຳ ແລະ ການຄ້າຈີນ ຈຳກັດ.</li>\n</ol>\n</div>\n<div class=\"col-4 col-12-medium line\">\n<h4 style=\"text-align: center;\">ຂັ້ນຕອນທີ 3 ການເຮັດທຸລະກຳ</h4>\n<ol>\n<li>ນຳບັດເອທີເອັມປ່ອນເຂົ້າຕູ້ເອທີເອັມ ເຮັດຕາມຂັ້ນຕອນການໂອນເງິນ ແລະ ປ້ອນເລກໜ້າບັດ 16 ໂຕເລກຂອງຜູ້ຮັບປາຍທາງ ກົດຈຳນວນເງິນ ແລ້ວຢືນຢັນ</li>\n<li>ຜູ້ຮັບປາຍທາງຈະໄດ້ຮັບເງິນໂອນທັນທີ ຫຼັງຈາກທຸລະກຳການໂອນເງິນສຳເລັດ.</li>\n</ol>\n</div>\n</div>\n<h2 style=\"text-align: center;\"><strong>ທະນາຄານທີ່ເປັນສະມາຊິກຂອງການບໍລິການ ໂອນເງິນຂ້າມທະນາຄານຜ່ານ​ຕູ້​ເອທີ​ເອັມ</strong></h2>\n<div class=\"table-wrapper\">\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>ໂລໂກ້</strong></td>\n<td><strong>ຊື່ທະນາຄານ</strong></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/LDB_1.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ພັດທະນາລາວ <br />LDB <br /><a style=\"color: #444;\" href=\"https://www.ldblao.la/\" rel=\"noopener\">https://www.ldblao.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/APB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ​ສົ່ງ​ເສີມ​ກະສິກຳ <br />APB <br /><a style=\"color: #444;\" href=\"https://www.apb.com.la/\" rel=\"noopener\">https://www.apb.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/JDB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ຮ່ວມພັດທະນາ <br />JDB <br /><a style=\"color: #444;\" href=\"https://www.jdbbank.com.la/\" rel=\"noopener\">https://www.jdbbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/MJBL.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ມາຣູຮານເຈແປນລາວ <br />MJBL <br /><a style=\"color: #444;\" href=\"https://www.maruhanjapanbanklao.com/\" rel=\"noopener\">https://www.maruhanjapanbanklao.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BIC.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ບີໄອຊີ ລາວ ຈໍາກັດ <br />BIC <br /><a style=\"color: #444;\" href=\"https://www.ldblao.la/\" rel=\"noopener\">https://www.ldblao.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BCEL.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ <br />BCEL <br /><a style=\"color: #444;\" href=\"https://www.bcel.com.la/\" rel=\"noopener\">https://www.bcel.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/STB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ເອັສທີ ຈໍາກັດ <br />STB <br /><a style=\"color: #444;\" href=\"httpss://www.stbanklaos.la/\" rel=\"noopener\">httpss://www.stbanklaos.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/LVB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ຮ່ວມທຸລະກິດລາວຫວຽດ <br />LVB<br /><a style=\"color: #444;\" href=\"https://www.laovietbank.com.la/\" rel=\"noopener\">https://www.laovietbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/PBB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ພາບລິກ ເບີຣາດ ມະຫາຊົນ ສາຂານະຄອນຫຼວງວຽງຈັນ <br />PBB <br /><a style=\"color: #444;\" href=\"https://www.pbebank.com/\" rel=\"noopener\">https://www.pbebank.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/Kbank.png\" width=\"140px\" /></td>\n<td>ທະນາຄານກະສິກອນໄທ ຈໍາກັດ <br />Kbank <br /><a style=\"color: #444;\" href=\"https://www.kasikornbank.com.la/\" rel=\"noopener\">https://www.kasikornbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/Sacom.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ຊາຄອມແບັງ ລາວ <br />Sacom<br /><a style=\"color: #444;\" href=\"https://www.sacombank.com.vn/\" rel=\"noopener\">https://www.sacombank.com.vn</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/IB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ອິນໂດຈີນ ຈຳກັດ <br />Indochina<br /><a style=\"color: #444;\" href=\"https://www.indochinabank.com/\" rel=\"noopener\">https://www.indochinabank.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/ICBC.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ອຸດສາຫະກຳ ແລະ ການຄ້າຈີນ <br />ICBC<br /><a style=\"color: #444;\" href=\"https://vientiane.icbc.com.cn/\" rel=\"noopener\">https://vientiane.icbc.com.cn</a></td>\n</tr>\n</tbody>\n</table>\n</div>', '2020-01-28 00:20:24', '2021-12-07 23:34:37'),
(44, 'products', 'name', 2, 'lao', 'ຖອນເງິນສົດຂ້າມທະນາຄານຜ່ານຕູ້ ATM', '2020-01-28 00:20:52', '2020-02-10 21:27:53'),
(45, 'products', 'body', 2, 'lao', '<h3><strong>ຄຸນລັກສະນະ</strong></h3>\n<p>ການຖອນເງິນສົດຜ່ານຕູ້ເອທີເອັມ ແມ່ນນຳໃຊ້ລະບົບແລັບໃນການເຊື່ອມໂຍງຕູ້ເອທີເອັມຂອງແຕ່ລະທະນາຄານທີ່ເປັນສະມາຊິກຂອງບໍລິສັດລາວ ເນເຊີນນໍເພເມັ້ນ ເນັດເວີກ ໃຫ້ສາມາດໃຊ້ຟັງຊັ່ນການຖອນເງິນຂ້າມທະນາຄານໄດ້.</p>\n<h3><strong>ຜົນປະໂຫຍດທີ່ໄດ້ຮັບ</strong></h3>\n<h4><strong>ດ້ານທະນາຄານສະມາຊິກ</strong></h4>\n<p>ປະຢັດຄ່າໃຊ້ຈ່າຍໃນການລົງທຶນເຊັ່ນ: ຫຼດຜ່ອນຄ່າໃຊ້ຈ່າຍໃນການຂະຫຍາຍຕູ້ ATM ແລະ ຄ່າບຳລຸງຮັກສາທີ່ຕິດພັນກັບການຂະຫຍາຍຕູ້ ATM; ເພີ່ມຈຸດບໍລິການຕູ້ ATM ແກ່ລູກຄ້າຂອງທະນາຄານທີ່ເຂົ້າເປັນສະມາຊິກ ຊຶ່ງສາມາດບໍລິການລູກຄ້າໄດ້ທົ່ວປະເທດ ດ້ວຍຄ່າໃຊ້ຈ່າຍໃນການລົງທຶນຕໍ່າ.</p>\n<h4><strong>ດ້ານລູກຄ້າຂອງທະນາຄານ</strong></h4>\n<p>ລູກຄ້າສາມາດນໍາໃຊ້ຕູ້ ATM ຂອງທຸກທະນາຄານທີ່ເປັນສະມາຊິກ ຂອງລະບົບ LAPS ຊຶ່ງປັດຈຸບັນມີທະນາຄານສະມາຊິກທັງໝົດ 16 ທະນາຄານ ເປັນການອຳນວຍຄວາມສະດວກ ແລະ ປະຢັດເວລາ ໂດຍລູກຄ້າບໍ່ຈໍາເປັນຕ້ອງລໍຖ້າການໃຊ້ບໍລິການ ຫຼື ຊອກຫາຕູ້ເອທີເອັມຂອງທະນາຄານຜູ້ອອກບັດເທົ່ານັ້ນ.</p>\n<h3><strong>​ເງື່ອນໄຂການໃຊ້ບໍລິການ</strong></h3>\n<p>ລູກຄ້າທີ່ມີບັດ ATM ຂອງທະນາຄານທີ່ເປັນສະມາຊິກຂອງ LAPNet ສາມາດຖອນເງິນສົດຂ້າມທະນາຄານຜ່ານຕູ້ ATM ຂອງທະນາຄານສະມາຊິກ ໂດຍສາມາດສັງເກດໄດ້ຈາກສັນຍາລັກ LAPNet ວົງມົນສີຟ້າທີ່ຕິດຢູ່ໜ້າຕູ້ ATM. <strong>ເຊິ່ງການຖອນເງິນສົດຂ້າມຕູ້ເອທີເອັມນີ້ແມ່ນຈະຕ້ອງໄດ້ເສຍຄ່າທຳນຽມ 2,000 ກີບ ຕໍ່ ຄັ້ງ.</strong></p>\n<h3 style=\"text-align: center;\"><strong>ຂັ້ນຕອນການຖອນເງິນສົດ</strong></h3>\n<div class=\"row\">\n<div class=\"col-6 col-12-medium\">\n<h4 style=\"text-align: center;\">ຂັ້ນຕອນທີ 1 ຈຸດໃຫ້ບໍລິການ</h4>\n<p>ສາມາດເລືອກໃຊ້ຕູ້ເອທີເອັມໃດກໍ່ໄດ້ ພາຍໃນ 16 ທະນາຄານທີ່ເປັນສະມາຊິກຂອງບໍລິສັດ LAPNet ເຊັ່ນ:</p>\n<ol>\n<li>ທະນາຄານການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ.</li>\n<li>ທະນາຄານພັດທະນາລາວ.</li>\n<li>ທະນາຄານສົ່ງເສີມກະສິກຳ.</li>\n<li>ທະນາຄານຮ່ວມທຸລະກິດລາວ-ຫວຽດ.</li>\n<li>ທະນາຄານມາຣູຮານເຈແປນລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານຮ່ວມພັດທະນາ.</li>\n<li>ທະນາຄານອຸດສາຫະກຳ ແລະ ການຄ້າຈີນ ຈຳກັດ.</li>\n<li>ທະນາຄານແຫ່ງປະເທດຈີນ ຈຳກັດ</li>\n<li>ທະນາຄານຫວຽດຕິນລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ເອຊີລີດາລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານອິນໂດຈີນ.</li>\n<li>ທະນາຄານ ບີໄອຊີ ລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ໄຊງ່ອນເທື່ອງຕິ່ນ ລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ເອັສທີ ລາວ ຈຳກັດ</li>\n<li>ທະນາຄານ ພາບລິກ ເບີຣາດ ມະຫາຊົນ ສາຂານະຄອນຫຼວງວຽງຈັນ</li>\n<li>ທະນາຄານກະສິກອນໄທ ຈໍາກັດ</li>\n</ol>\n</div>\n<div class=\"col-6 col-12-medium line\">\n<h4 style=\"text-align: center;\">ຂັ້ນຕອນທີ 2 ການເຮັດທຸລະກຳ</h4>\n<ul>\n<li>ຖອນເງິນສົດ ກົດເລືອກຄຳສັ່ງຖອນເງິນສົດ ແລະ ເຮັດຕາມຂັ້ນຕອນ ຄ່າທຳນຽມ = 2,000 ກີບ/ຄັ້ງ</li>\n</ul>\n</div>\n</div>\n<h3 style=\"text-align: center;\"><strong>ທະນາຄານທີ່ເປັນສະມາຊິກຂອງການບໍລິການ ຖອນເງິນສົດຂ້າມທະນາຄານຜ່ານຕູ້ເອທີເອັມ</strong></h3>\n<div class=\"table-wrapper\">\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>ໂລໂກ້</strong></td>\n<td><strong>ຊື່ທະນາຄານ</strong></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BCEL.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ<br />BCEL<br /><a style=\"color: #444;\" href=\"https://www.bcel.com.la/\" rel=\"noopener\">https://www.bcel.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/LDB_1.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ພັດທະນາລາວ<br />LDB<br /><a style=\"color: #444;\" href=\"https://www.ldblao.la/\" rel=\"noopener\">https://www.ldblao.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/JDB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ຮ່ວມພັດທະນາ<br />JDB<br /><a style=\"color: #444;\" href=\"https://www.jdbbank.com.la/\" rel=\"noopener\">https://www.jdbbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/APB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ​ສົ່ງ​ເສີມ​ກະສິກຳ<br />APB<br /><a style=\"color: #444;\" href=\"https://www.apb.com.la/\" rel=\"noopener\">https://www.apb.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/MJBL.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ມາຣູຮານເຈແປນລາວ<br />MJBL<br /><a style=\"color: #444;\" href=\"https://www.maruhanjapanbanklao.com/\" rel=\"noopener\">https://www.maruhanjapanbanklao.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/LVB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ຮ່ວມທຸລະກິດລາວຫວຽດ<br />LVB<br /><a style=\"color: #444;\" href=\"https://www.laovietbank.com.la/\" rel=\"noopener\">https://www.laovietbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/ICBC.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ອຸດສາຫະກຳ ແລະ ການຄ້າຈີນ<br />ICBC<br /><a style=\"color: #444;\" href=\"https://vientiane.icbc.com.cn/\" rel=\"noopener\">https://vientiane.icbc.com.cn</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BOC.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ແຫ່ງປະເທດຈີນ<br />BOC<br /><a style=\"color: #444;\" href=\"https://www.boc.cn/en/\" rel=\"noopener\">https://www.boc.cn/en</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/VTB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ຫວຽດຕິນ ລາວ<br />VTB<br /><a style=\"color: #444;\" href=\"https://www.vietinbank.com.la/\" rel=\"noopener\">https://www.vietinbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/IB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ອິນໂດຈີນ ຈຳກັດ<br />Indochina<br /><a style=\"color: #444;\" href=\"https://www.indochinabank.com/\" rel=\"noopener\">https://www.indochinabank.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/ACB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ເອຊີລິດາ ລາວ ຈໍາກັດ<br />ACLEDA<br /><a style=\"color: #444;\" href=\"https://www.acledabank.com/\" rel=\"noopener\">https://www.acledabank.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BIC.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ບີໄອຊີ ລາວ ຈໍາກັດ<br />BIC<br /><a style=\"color: #444;\" href=\"https://www.biclaos.com/\" rel=\"noopener\">https://www.biclaos.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/Sacom.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ຊາຄອມແບັງ ລາວ<br />Sacom<br /><a style=\"color: #444;\" href=\"https://www.sacombank.com.vn/\" rel=\"noopener\">https://www.sacombank.com.vn</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/STB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ເອັສທີ ຈໍາກັດ<br />STB <br /><a style=\"color: #444;\" href=\"httpss://www.stbanklaos.la/\" rel=\"noopener\">httpss://www.stbanklaos.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/PBB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ພາບລິກ ເບີຣາດ ມະຫາຊົນ ສາຂານະຄອນຫຼວງວຽງຈັນ <br />PBB <br /><a style=\"color: #444;\" href=\"https://www.pbebank.com/\" rel=\"noopener\">https://www.pbebank.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/Kbank.png\" width=\"140px\" /></td>\n<td>ທະນາຄານກະສິກອນໄທ ຈໍາກັດ <br />Kbank <br /><a style=\"color: #444;\" href=\"https://www.kasikornbank.com.la/\" rel=\"noopener\">https://www.kasikornbank.com.la</a></td>\n</tr>\n</tbody>\n</table>\n</div>', '2020-01-28 00:20:52', '2021-12-07 23:35:05'),
(46, 'products', 'name', 1, 'lao', 'ກວດຍອດເງິນຂ້າມທະນາຄານຜ່ານຕູ້ ATM', '2020-01-28 00:21:13', '2020-03-22 19:00:35'),
(47, 'products', 'body', 1, 'lao', '<h3><strong>ຄຸນລັກສະນະ</strong></h3>\n<p>ການກວດຍອດເງິນຂ້າມທະນາຄານຜ່ານຕູ້ ATM ແມ່ນນຳໃຊ້ລະບົບແລັບໃນການເຊື່ອມໂຍງຕູ້ເອທີເອັມຂອງແຕ່ລະທະນາຄານທີ່ເປັນສະມາຊິກຂອງບໍລິສັດລາວ ເນເຊີນນໍເພເມັ້ນ ເນັດເວີກ ໃຫ້ສາມາດໃຊ້ຟັງຊັ່ນການກວດຍອດເງິນຂ້າມທະນາຄານໄດ້.</p>\n<h3><strong>ຜົນປະໂຫຍດທີ່ໄດ້ຮັບ</strong></h3>\n<p>ປະຢັດ​ເວລາ, ສະດວກ ໂດຍລູກຄ້າບໍ່ຕ້ອງລໍຖ້າການໃຊ້ບໍລິການ ຫຼື ຊອກຫາຕູ້​ເອທີ​ເອັມຂອງ ທະນາຄານຜູ້ອອກບັດ ກໍ່ສາມາດກວດຍອດເງິນຜ່ານຕູ້​ເອທີ​ເອັມຂອງບັນດາທະນາຄານທຸກລະກິດທີ່ເຊື່ອມຕໍ່ກັບລະບົບແລັບ.​​</p>\n<h3><strong>​ເງື່ອນໄຂການໃຊ້ບໍລິການ</strong></h3>\n<p>ລູກຄ້າ​ທີ່ມີ​ບັດ​ເອທີເອັມຂອງ​ທະນາຄານ​ທີ່​ເປັນ​ສະມາຊິກ​ຂອງ ແລັບເນັດ, ໂດຍສາມາດສັງເກດໄດ້ຈາກ ສັນຍາ​ລັກແລັບເນັດທີ່ຕິດຕາມຕູ້ເອທີເອັມ ກໍສາມາດໃຊ້ຮ່ວມກັນໄດ້. <strong>ເຊິ່ງການກວດຍອດເງິນຂ້າມຕູ້ເອທີເອັມນີ້ແມ່ນບໍ່ເສຍຄ່າທຳນຽມໃດໆທັງນັ້ນ.</strong></p>\n<h3 style=\"text-align: center;\"><strong>ຂັ້ນຕອນການກວດສອບຍອດເງິນ</strong></h3>\n<div class=\"row\">\n<div class=\"col-6 col-12-medium\">\n<h4 style=\"text-align: center;\"><strong>ຂັ້ນຕອນທີ 1 ຈຸດໃຫ້ບໍລິການ</strong></h4>\n<p>ສາມາດເລືອກໃຊ້ຕູ້ເອທີເອັມໃດກໍ່ໄດ້ ພາຍໃນ 16 ທະນາຄານທີ່ເປັນສະມາຊິກຂອງບໍລິສັດ LAPNet ເຊັ່ນ:</p>\n<ol>\n<li>ທະນາຄານການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ.</li>\n<li>ທະນາຄານພັດທະນາລາວ.</li>\n<li>ທະນາຄານສົ່ງເສີມກະສິກຳ.</li>\n<li>ທະນາຄານຮ່ວມທຸລະກິດລາວ-ຫວຽດ.</li>\n<li>ທະນາຄານມາຣູຮານເຈແປນລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານຮ່ວມພັດທະນາ.</li>\n<li>ທະນາຄານອຸດສາຫະກຳ ແລະ ການຄ້າຈີນ ຈຳກັດ.</li>\n<li>ທະນາຄານແຫ່ງປະເທດຈີນ ຈຳກັດ</li>\n<li>ທະນາຄານຫວຽດຕິນລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ເອຊີລີດາລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານອິນໂດຈີນ.</li>\n<li>ທະນາຄານ ບີໄອຊີ ລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ໄຊງ່ອນເທື່ອງຕິ່ນ ລາວ ຈຳກັດ.</li>\n<li>ທະນາຄານ ເອັສທີ ລາວ ຈຳກັດ</li>\n<li>ທະນາຄານ ພາບລິກ ເບີຣາດ ມະຫາຊົນ ສາຂານະຄອນຫຼວງວຽງຈັນ</li>\n<li>ທະນາຄານກະສິກອນໄທ ຈໍາກັດ</li>\n</ol>\n</div>\n<div class=\"col-6 col-12-medium line\">\n<h4 style=\"text-align: center;\"><strong>ຂັ້ນຕອນທີ 2 ການເຮັດທຸລະກຳ</strong></h4>\n<ul>\n<li>ກໍລະນີກວດຍອດເງິນ ເລືອກຄຳສັ່ງ ກວດສອບຍອດເງິນ ແລະ ເຮັດຕາມຂັ້ນຕອນ ຄ່າທຳນຽມ = 0 ກີບ</li>\n</ul>\n</div>\n</div>\n<h3 style=\"text-align: center;\"><strong>ທະນາຄານທີ່ເປັນສະມາຊິກຂອງການບໍລິການ ກວດ​ຍອດ​ເງິນຜ່ານ​ຕູ້​ເອທີ​ເອັມ</strong></h3>\n<div class=\"table-wrapper\">\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>ໂລໂກ້</strong></td>\n<td><strong>ຊື່ທະນາຄານ</strong></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BCEL.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ <br />BCEL<br /><a style=\"color: #444;\" href=\"https://www.bcel.com.la/\" rel=\"noopener\">https://www.bcel.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/LDB_1.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ພັດທະນາລາວ <br />LDB<br /><a style=\"color: #444;\" href=\"https://www.ldblao.la/\" rel=\"noopener\">https://www.ldblao.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/JDB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ຮ່ວມພັດທະນາ <br />JDB<br /><a style=\"color: #444;\" href=\"https://www.jdbbank.com.la/\" rel=\"noopener\">https://www.jdbbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/APB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ​ສົ່ງ​ເສີມ​ກະສິກຳ <br />APB<br /><a style=\"color: #444;\" href=\"https://www.apb.com.la/\" rel=\"noopener\">https://www.apb.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/MJBL.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ມາຣູຮານເຈແປນລາວ <br />MJBL<br /><a style=\"color: #444;\" href=\"https://www.maruhanjapanbanklao.com/\" rel=\"noopener\">https://www.maruhanjapanbanklao.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/LVB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ຮ່ວມທຸລະກິດລາວຫວຽດ <br />LVB<br /><a style=\"color: #444;\" href=\"https://www.laovietbank.com.la/\" rel=\"noopener\">https://www.laovietbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/ICBC.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ອຸດສາຫະກຳ ແລະ ການຄ້າຈີນ <br />ICBC<br /><a style=\"color: #444;\" href=\"https://vientiane.icbc.com.cn/\" rel=\"noopener\">https://vientiane.icbc.com.cn</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BOC.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ແຫ່ງປະເທດຈີນ <br />BOC<br /><a style=\"color: #444;\" href=\"https://www.boc.cn/en/\" rel=\"noopener\">https://www.boc.cn/en</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/VTB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ຫວຽດຕິນ ລາວ <br />VTB<br /><a style=\"color: #444;\" href=\"https://www.vietinbank.com.la/\" rel=\"noopener\">https://www.vietinbank.com.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/IB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ອິນໂດຈີນ ຈຳກັດ <br />Indochina<br /><a style=\"color: #444;\" href=\"https://www.indochinabank.com/\" rel=\"noopener\">https://www.indochinabank.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/ACB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ເອຊີລິດາ ລາວ ຈໍາກັດ <br />ACLEDA<br /><a style=\"color: #444;\" href=\"https://www.acledabank.com/\" rel=\"noopener\">https://www.acledabank.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BIC.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ບີໄອຊີ ລາວ ຈໍາກັດ <br />BIC<br /><a style=\"color: #444;\" href=\"https://www.biclaos.com/\" rel=\"noopener\">https://www.biclaos.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/Sacom.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ຊາຄອມແບັງ ລາວ <br />Sacom<br /><a style=\"color: #444;\" href=\"https://www.sacombank.com.vn/\" rel=\"noopener\">https://www.sacombank.com.vn</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/STB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ເອັສທີ ຈໍາກັດ <br />STB <br /><a style=\"color: #444;\" href=\"https://www.stbanklaos.la/\" rel=\"noopener\">https://www.stbanklaos.la</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/PBB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ພາບລິກ ເບີຣາດ ມະຫາຊົນ ສາຂານະຄອນຫຼວງວຽງຈັນ <br />PBB <br /><a style=\"color: #444;\" href=\"https://www.pbebank.com/\" rel=\"noopener\">https://www.pbebank.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/Kbank.png\" width=\"140px\" /></td>\n<td>ທະນາຄານກະສິກອນໄທ ຈໍາກັດ <br />Kbank <br /><a style=\"color: #444;\" href=\"https://www.kasikornbank.com.la/\" rel=\"noopener\">https://www.kasikornbank.com.la</a></td>\n</tr>\n</tbody>\n</table>\n</div>', '2020-01-28 00:21:13', '2021-12-07 23:35:38'),
(51, 'pages', 'title', 3, 'lao', 'ກ່ຽວກັບພວກເຮົາ', '2020-01-28 01:06:53', '2020-01-28 01:06:53'),
(52, 'pages', 'slug', 3, 'lao', 'about-us', '2020-01-28 01:06:53', '2020-01-28 01:06:53'),
(53, 'pages', 'body', 3, 'lao', '<h3 style=\"text-align: center;\"><strong>ຈຸດປະສົງ</strong></h3>\n<p style=\"text-indent: 50px; word-break: break-all;\">ຈຸດປະສົງຂອງການສ້າງຕັ້ງບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAO NATIONAL PAYMENT NETWORK CO.,LTD ຂຽນຫຍໍ້ວ່າ LAPNET) ແມ່ນອີງໃສ່ຄວາມຮຽກຮ້ອງ ຕ້ອງການໃນການພັດທະນາລະບົບການຊຳລະສະສາງໃນໄລຍະໃໝ່ ຂອງ ສປປ ລາວ ແລະ ອີງໃສ່ຄວາມພ້ອມຂອງບັນດາຜູ້ຖືຮຸ້ນທີ່ມີປະສົບການທາງດ້ານການເງິນ-ການທະນາຄານ ແລະ ຄວາມຊຳນານດ້ານເຕັກ ໂນໂລຊີທາງການເງິນ (Financial Technology: FinTech), ທຫລ ຈຶ່ງມີຄວາມເຊື່ອໝັ້ນທີ່ຈະໂອນພາລະບົດບາດການດຳເນີນທຸລະກິດການໃຫ້ບໍລິການລະບົບ LAPS ໃຫ້ແກ່ບໍລິສັດ LAPNet ທີ່ຈະສ້າງຕັ້ງຂຶ້ນ ກາຍເປັນບໍລິສັດທີ່ໃຫ້ບໍລິການລະບົບຊຳລະທຸລະກຳຍ່ອຍທີ່ທັນສະໄໝ, ປອດໄພ ສາມາດເຊື່ອມໂຍງກັບທຸກພາກພື້ນ ແລະ ສາກົນ ກໍ່ຄືການເນັ້ນການປັບປຸງທຸລະກິດຂອງບໍລິສັດໃຫ້ແທດເໝາະກັບສະພາບປ່ຽນແປງໃໝ່ ແລະ ສ້າງບໍລິສັດໃຫ້ກາຍເປັນບໍລິສັດແຫ່ງທຳອິດທີ່ປະສົບຜົນສຳເລັດໃນການໃຫ້ບໍລິການລະບົບການຊຳລະທຸລະກຳຍ່ອຍແຫ່ງຊາດໃນ ສປປ ລາວ ຕ້ອງໄດ້ຍົກສູງປະສິດຕິພາບການດຳເນີນທຸລະກິດ ແລະ ການຄຸ້ມຄອງຄວາມສ່ຽງໃຫ້ເຂັ້ມແຂງ, ສ້າງ ແລະ ພັດທະນາລະບົບການຊຳລະທີ່ໄດ້ມາດຕະຖານສາກົນ ໂດຍນຳໃຊ້ເຕັກໂນໂລຊີທີ່ທັນສະໄໝ ແລະ ຍົກລະດັບຄວາມຮູ້, ຄວາມຊ່ຽວຊານສະເພາະດ້ານໃຫ້ເທົ່າທຽມກັບສາກົນ ແລະ ຍັງສາມາດຂະຫຍາຍຕານ່າງການບໍລິການລົງສູ່ທ້ອງຖີ່ນໃຫ້ທົ່ວເຖິງ ແລະ ສາມາດແກ້ໄຂທຸລະກຳຂັດຂ້ອງໃຫ້ທ່ວງທັນເວລາ ເພື່ອໃຫ້ຖັນແຖວພະນັກງານ, ພໍ່ຄ້າຊາວຂາຍ, ພໍ່ແມ່ປະຊາຊົນສາມາດ ຝາກ-ຖອນ, ໂອນເງິນຂ້າມທະນາຄານຫາກັນໄດ້ສະດວກ ພ້ອມກັບກຳຈັດປັດເປົ່າຫາງສຽງຂອງສັງຄົມເຖິງການບໍລິການບໍມີປະສິດທິພາບໃຫ້ໜ້ອຍລົງ ແລະ ຍັງເປັນອົງປະກອບທີ່ສຳຄັນໃຫ້ແກ່ພື້ນຖານເສດຖະກິດໃຫ້ມີການຂະ ຫຍາຍຕົວແບບຍືນຍົງ, ທັງເປັນການຫຼຸດຜ່ອນການນຳໃຊ້ເງິນສົດໃນສັງຄົມ ແລະ ສົ່ງເສີມໃຫ້ເງິນກີບເປັນສະກຸນເງິນດຽວທີ່ໃຊ້ໃນການຊຳລະສະສາງໃນ ສປປ ລາວ.</p>\n<hr />\n<h3 style=\"text-align: center;\"><strong>ຄວາມເປັນມາ</strong></h3>\n<p style=\"text-indent: 50px; word-break: break-all;\">ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ຫືຼ LAPNet ດຳເນີນທຸລະກິດໃນຮູບແບບ ບໍລິສັດ ຈຳກັດ,&nbsp; ເຊິ່ງໄດ້ຮັບອະນຸຍາດເປັນຜູ້ຄວບຄຸມລະບົບບັດທະນາຄານຮ່ວມກັນ ຫຼື Lao ATM Pool Switching (LAPS) ໂດຍແມ່ນໂຄງການຊ່ວຍເຫຼືອລະຫວ່າງລັດຖະບານ ສປ ຈີນ ຕໍ່ກັບ ສປປ ລາວ ຕາມສານແລກປ່ຽນວ່າດ້ວຍລັດຖະບານ ສປ ຈີນ ເຫັນດີຊ່ວຍເຫຼືອລັດຖະບານ ສປປ ລາວ ປະຕິບັດ &lsquo;&rsquo;ໂຄງການລະບົບຊຳລະດ້ວຍບັດອັດຕະໂນມັດຂອງທະນາຄານ&rsquo;&rsquo;. ໂຄງການດັ່ງກ່າວໄດ້ສຳເລັດ ແລະ ເປີດນຳໃຊ້ລະບົບຢ່າງເປັນທາງການໃນວັນທີ 01/12/2015 ໂດຍຢູ່ພາຍໃຕ້ການບໍລິຫານຂອງ ທຫລ, ເຊິ່ງຂັ້ນເທິງ&nbsp; ໄດ້ເຫັນດີມອບໝາຍໃຫ້ກົມເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານເປັນຜູ້ຈັດຕັ້ງປະຕິບັດ ແລະ ໄດ້ສ້າງຕັ້ງພະແນກຄຸ້ມຄອງບັດທະນາຄານຂຶ້ນມາເພື່ອຄຸ້ມຄອງ ແລະ ເຮັດວຽກງານດັ່ງກ່າວໂດຍກົງ, ເຊິ່ງທາງຝ່າຍຈີນ ຮັບຜິດ ຊອບໃນການບຳລຸງຮັກສາທາງດ້ານເຕັກນິກຂອງລະບົບໃຫ້ ສປປ ລາວ ລ້າ ເປັນໄລຍະເວລາ 3 ປີ. ຜ່ານການຈັດຕັ້ງປະຕິບັດຕົວຈິງເຫັນວ່າການນຳໃຊ້ລະບົບດັ່ງກ່າວແມ່ນຍັງບໍ່ເຕັມປະສິດທິພາບເທົ່າທີ່ຄວນ ເນື່ອງຈາກການດຳເນີນງານແມ່ນບໍ່ສອດຄ່ອງກັບພາລະບົດບາດຂອງ ທຫລ ທີ່ເປັນຜູ້ຄຸ້ມຄອງມະຫາພາກດ້ານການເງິນ-ເງິນຕາ, ທັງເປັນອົງກອນທີ່ບໍ່ສະແຫວງຫາຜົນກຳໄລ ຈຶ່ງເຮັດໃຫ້ການຄຸຸ້ມຄອງບໍລິຫານລະບົບດັ່ງ ກ່າວ ຍັງມີລັກສະນະ &lsquo;&rsquo;ນະໂຍບາຍ&rsquo;&rsquo;. ດັ່ງນັ້ນ, ຄະນະພັກ, ຄະນະຜູ້ວ່າການ ທຫລ ຈຶ່ງມີມະຕິຕົກລົງເຫັນດີໃຫ້ຫັນເອົາວຽກງານ LAPS ເປັນນິຕິບຸກຄົນຕາມມະຕິກອງປະຊຸມຄະນະປະຈຳພັກ-ຄະນະຜູ້ວ່າການ ທຫລ ປະຈຳເດືອນ ກຸມພາ 2016. ສະນັ້ນ,&nbsp; ພາຍຫຼັງສິ້ນສຸດໄລຍະການບຳລຸງຮັກສາທາງດ້ານເຕັກນິກລ້າຈາກຝ່າຍຈີນໃນວັນທີ 01/12/2018, ສປປ ລາວ ຕ້ອງໄດ້ສືບຕໍ່ໃນການບໍາລຸງຮັກສາລະບົບເອງ. ໂດຍ ທຫລ ໄດ້ໂອນພາລະບົດບາດການດຳເນີນງານໃຫ້ບໍລິສັດ LAPNet ທີ່ຈະສ້າງຂຶ້ນ ເປັນຜູ້ສືບຕໍ່ດຳເນີນທຸລະກິດໃນການໃຫ້ບໍລິການລະບົບ LAPS ໃຫ້ມີປະສິດທິຜົນສູງສຸດ ແລະ ພັດທະນາໃຫ້ສາມາດເຊື່ອມໂຍງກັບພາກພື້ນ ແລະ ສາກົນ, ເພາະວ່າລະບົບຊຳລະທາງການເງິນແມ່ນຍິ່ງມີຄວາມສຳຄັນເປັນອັນດັບຕົ້ນໆຂອງຂະແໜງເສດຖະຖິດ-ການເງິນ ທີ່ຄວນໄດ້ຮັບການພັດທະນາໃຫ້ມີຄວາມ ເໝາະສົມ-ສອດຄ່ອງກັບຄວາມຕ້ອງການຂອງໜ່ວຍງານເສດຖະກິດ ທັງພາກລັດ ແລະ ເອກະຊົນ.&nbsp; ບໍລິສັດລາວ ຈະເປັນສ່ວນໜຶ່ງໃນການປະກອບສ່ວນຊຸກຍູ້ເສດຖະກິດ ແລະ ໃຫ້ການສະໜັບສະໜູນບັນທະນາຄານທຸລະກິດໃຫ້ສາມາດເຊື່ອມໂຍງ&nbsp; ກັນໃຫ້ໄດ້ຫລາຍຊ່ອງທາງຂຶ້ນກວ່າເກົ່າ ເພື່ອເປັນການອຳນວຍຄວາມສະດວກໃຫ້ແກ່ຜູ້ຊົມໃຊ້ໄດ້ສາມາດດຳເນີນທຸລະກຳທາງດ້ານການເງິນໄດ້ &ldquo; ທຸກທີ່, ທຸກເວລາ, ທຸກຊ່ອງທາງການຊຳລະ&rdquo; .<br />ໃນປະຈຸບັນ ມີໂຄງສ້າງຜູ້ຖືຮຸ້ນຂອງບໍລິສັດມີດັ່ງລຸ່ມນີ້:<br /><br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານແຫ່ງ ສປປ ລາວ ຖືຮຸ້ນຈຳນວນ: 25%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານການຄ້າຕ່າງປະເທດລາວມະຫາຊົນ ຖືຮຸ້ນຈຳນວນ: 20%;<br />&bull;&nbsp;&nbsp; &nbsp;ບໍລິສັດ ຢູນຽນເພສາກົນ ຖືຮຸ້ນຈຳນວນ: 15%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານພັດທະນາລາວ ຖືຮຸ້ນຈຳນວນ: 10%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານສົ່ງເສີມກະສິກຳ ຖືຮຸ້ນຈຳນວນ: 10%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານຮ່ວມທຸລະກິດລາວຫວຽດ ຖືຮຸ້ນຈຳນວນ: 5%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານຮ່ວມພັດທະນາ ຖືຮຸ້ນຈຳນວນ: 5%<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານເອສທີຈຳກັດ ຖືຮຸ້ນຈຳນວນ: 5%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານບີໄອຊີຈຳກັດ ຖືຮຸ້ນຈຳນວນ: 5%;<br />&nbsp;</p>\n<hr />\n<h3 style=\"text-align: center;\"><strong>ພາລະບົດບາດ</strong></h3>\n<p style=\"text-indent: 50px; word-break: break-all;\">ບໍລິສັດ LAPNet ຈະສືບຕໍ່ດຳເນີນທຸລະກິດໃຫ້ບໍລິການລະບົບ LAPS ທີ່ໄດ້ຮັບໂອນພາລະການບົດບາດຈາກ ທຫລ ເພື່ອອຳນວຍຄວາມສະດວກໃຫ້ມວນຊົນ ສາມາດນຳໃຊ້ບັດສິນເຊື່ອ ແລະ ບັດເງິນ ຝາກ ໃນການເຮັດທຸລະກຳຜ່ານຕູ້ເອທິເອັມ, ຕູ້ຊີດີເອັມ ເຊັ່ນ: ກວດຍອດເງິນໃນບັນຊີ, ຝາກ-ຖອນເງິນສົດ, ໂອນເງິນ ພ້ອມທັງສາມາດຊຳລະສິນຄ້າ ແລະ ຄ່າບໍລິການຕ່າງໆຢູ່ຮ້ານຄ້າ ຜ່ານເຄື່ອງພີໂອເອສຂອງທະນາຄານທຸລະກິດອື່ນທີ່ເປັນສະມາຊິກຂອງລະບົບ LAPS ໄດ້, ເຊິ່ງໃນໄລຍະຜ່ານມາໄດ້ດຳເນີນການເປີດໃຫ້ບໍລິການແກ່ມວນຊົນສາມາດນຳໃຊ້ບັດເງິນຝາກ (Debit Card) ໃນການເຮັດທຸລະກຳກວດຍອດເງິນໃນບັນຊີ ແລະ ຖອນເງິນສົດຢູ່ຕູ້ ATM ໄດ້ຕະຫຼອດ 24 ຊົ່ວໂມງ. ສະນັ້ນ, ເຮັດໃຫ້ທະນາຄານສາມາດນຳໃຊ້ອຸປະກອນຮ່ວມກັນ ທັງເປັນການຫຼຸດຜ່ອນການລົງທຶນທີ່ຊຳ້ຊ້ອນໃນການຊື້ອຸປະກອນດັ່ງທີ່ໄດ້ກ່າວ&nbsp; ມາ. ດັ່ງນັ້ນ, ການດຳເນີນທຸລະກິດຂອງບໍລິສັດແມ່ນມີເອກະລັກ ແລະ ຈຸດພິເສດເນື່ອງຈາກຖືເປັນລະບົບທຳອິດຂອງ ສປປ ລາວ ທີ່ສອດຄ່ອງຕາມກົດໝາຍວ່າດ້ວຍລະບົບການຊຳລະ ແລະ ສອດຄ່ອງຕາມແຜນ&nbsp; ຍຸດທະສາດພັດທະນາລະບົບສະຖາບັນການເງິນ-ເງິນຕາ ຂອງ ສປປ ລາວ. <br /><br /></p>', '2020-01-28 01:06:53', '2020-02-06 23:18:26'),
(54, 'pages', 'title', 4, 'lao', 'ຕິດຕໍ່ພວກເຮົາ', '2020-01-28 01:07:03', '2020-01-28 23:22:24'),
(55, 'pages', 'slug', 4, 'lao', 'contact-us', '2020-01-28 01:07:03', '2020-01-28 01:07:03'),
(56, 'pages', 'body', 4, 'lao', '<div class=\"row\">\n<div class=\"col-4 col-12-medium\">\n<p><img style=\"display: block; margin-right: auto; width: 200px; margin-left: auto;\" src=\"https://lapnet.com.la/images/Logo.png\" alt=\"\" /></p>\n<p>ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນເນັດເວີກ<br /><strong>ບ້ານ:</strong> ໂພນສະອາດ, <br /><strong>ເມືອງ:</strong> ໄຊເສດຖາ, <br /><strong>ແຂວງ:</strong> ນະຄອນຫຼວງວຽງຈັນ <br /><strong>ເບີໂທ:</strong> 030 568 7610 <br /><strong>ເບີໂທ:</strong> 030 552 9158<br /><strong>ອີເມວ:</strong> info@lapnet.com.la</p>\n</div>\n<div class=\"col-8 col-12-medium\">\n<h1 style=\"text-align: center;\">ແຜນທີ່</h1>\n<div class=\"mapouter\">\n<div class=\"gmap_canvas\"><iframe id=\"gmap_canvas\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d948.7504760546849!2d102.6285086!3d17.9786484!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x312467f0b486944f%3A0x84af2329498cb982!2sLao%20National%20Payment%20Network%20.%2C%20CO!5e0!3m2!1slo!2sla!4v1626766794751!5m2!1slo!2sla\" width=\"100%\" height=\"400\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe></div>\n</div>\n</div>\n</div>', '2020-01-28 01:07:03', '2021-07-20 00:41:07'),
(57, 'pages', 'title', 5, 'lao', 'ສະໝັກວຽກ', '2020-01-28 01:07:39', '2020-01-28 01:07:39'),
(58, 'pages', 'slug', 5, 'lao', 'career', '2020-01-28 01:07:39', '2020-01-28 01:07:39'),
(59, 'pages', 'body', 5, 'lao', '<p>&nbsp; &nbsp; &nbsp; &nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse condimentum viverra dolor nec aliquam. In at mi elit. Curabitur commodo finibus augue, quis sodales mauris pretium eget. Integer eros felis, convallis vel urna ut, aliquet interdum leo. Praesent auctor, augue vitae congue vestibulum, massa tortor porttitor nisi, nec imperdiet risus elit auctor eros. Duis quis suscipit est. Mauris ultrices at orci id faucibus. Pellentesque a libero quam. Cras imperdiet tincidunt risus, sit amet tincidunt felis. Suspendisse imperdiet lobortis diam.</p>\n<hr />\n<p>&nbsp; &nbsp; &nbsp; Donec volutpat lorem sed facilisis commodo. Nullam vehicula quam eu fermentum vulputate. Pellentesque posuere ac lectus non rhoncus. Vivamus mauris urna, hendrerit id dolor a, porttitor tincidunt odio. Sed pharetra ex sed sem euismod dignissim. Proin vitae tellus luctus, tincidunt nunc et, vestibulum risus. Duis scelerisque auctor luctus. Donec maximus sed neque in rutrum. Cras non justo scelerisque, semper tortor venenatis, rhoncus felis. Proin non odio at lacus eleifend imperdiet. Suspendisse ac turpis et massa ullamcorper mollis. Donec convallis erat nec nulla consectetur, vel facilisis turpis tincidunt. Sed ut nunc diam. Integer in enim sollicitudin, maximus arcu et, tempor odio. Fusce feugiat consectetur tellus, a fringilla dui cursus tincidunt. Aliquam maximus eu lacus nec</p>', '2020-01-28 01:07:39', '2020-02-18 21:29:49'),
(61, 'products', 'excerpt', 3, 'lao', 'ເນື້ອໃນຫຍໍ້ ຂອງໂອນເງິນຂ້າມທະນາຄານຜ່ານຕູ້ ATM', '2020-01-28 23:30:56', '2020-02-10 21:40:26'),
(62, 'products', 'excerpt', 2, 'lao', 'ເນື້ອໃນຫຍໍ້ຂອງ ການຖອນເງິນສົດຂ້າມທະນາຄານຜ່ານຕູ້ ATM', '2020-01-28 23:31:37', '2020-03-20 00:17:59'),
(63, 'products', 'excerpt', 1, 'lao', 'ເນື້ອໃນຫຍໍ້ ຂອງ ກວດຍອດເງິນຂ້າມຕູ້ ATM', '2020-01-28 23:31:58', '2020-02-10 21:37:46'),
(88, 'posts', 'title', 8, 'lao', 'ພິທີລົງນາມໃນສັນຍາການຮ່ວມທຶນຂອງ ບໍລິສັດ ລາວ ເນເຊິນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ', '2020-01-30 01:02:15', '2020-01-30 01:02:15'),
(89, 'posts', 'seo_title', 8, 'lao', 'LAPNet-Shareholders-JVA', '2020-01-30 01:02:15', '2020-01-30 01:02:15'),
(90, 'posts', 'body', 8, 'lao', '<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/January2020/64JUCMCUCYN8drx5tQ6J.jpg\" alt=\"\" /></p>\n<p>ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ຫຼື LAPNet (Lao National Payment Network) ໄດ້ຈັດພິທີລົງນາມໃນສັນຍາການຮ່ວມທຶນ ຂອງບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ໃນຕອນເຊົ້າວັນທີ 22/11/2019, ທີ່ໂຮງແຮມ ຄຣາວ ພລາຊ່າ ໂດຍການໃຫ້ກຽດເຂົ້າຮ່ວມຂອງ ທ່ານ ສອນໄຊ ສິດພະໄຊ ຜູ້ວ່າການທະນາຄານແຫ່ງ ສປປ ລາວ, ຕາງໜ້າຈາກກະຊວງອຸດສາຫະກຳ ແລະ ການຄ້າ ແລະ ບັນດາທະນາຄານຕາງໜ້າຈາກຜູ້ຖືຮຸ້ນ 9 ຝ່າຍ ທັງພາຍໃນ ແລະ ຕ່າງປະເທດ ພ້ອມທັງການເຂົ້າຮ່ວມເປັນສັກຂີພະຍານຂອງຕາງໜ້າຈາກບັນດາທະນາຄານທຸລະກິດ ພາຍໃນ ສປປ ລາວ.</p>\n<p><br />ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ໄດ້ສ້າງຕັ້ງຂຶ້ນພາຍໃຕ້ການຮ່ວມມື ຂອງ 9 ຜູ້ຖືຮຸ້ນ ອັນໄດ້ແກ່: ທະນາຄານ ແຫ່ງ ສປປ ລາວ, ທະນາຄານການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ, ບໍລິສັດ ຢູນຽນເພ ສາກົນ, ທະນາຄານພັດທະນາລາວ, ທະນາຄານສົ່ງເສີມກະສິກຳ, ທະນາຄານຮ່ວມພັດທະນາ, ທະນາຄານຮ່ວມທຸລະກິດລາວ-ຫວຽດ, ທະນາຄານເອັສທີ ຈຳກັດ ແລະ ທະນາຄານ ບີໄອຊີ ລາວ ຈຳກັດ</p>\n<p>&nbsp;</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/January2020/74524019_153873802661356_2452165200594337792_o1.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/January2020/78279416_153873769328026_4372879772275965952_n1.jpg\" alt=\"\" /></p>', '2020-01-30 01:02:15', '2020-07-15 20:41:46'),
(91, 'posts', 'slug', 8, 'lao', 'LAPNet-Shareholders-JVA', '2020-01-30 01:02:15', '2020-01-30 01:02:15'),
(92, 'posts', 'meta_description', 8, 'lao', 'LAPNet-Shareholders-JVA', '2020-01-30 01:02:16', '2020-01-30 01:02:16'),
(93, 'posts', 'meta_keywords', 8, 'lao', 'LAPNet-Shareholders-JVA', '2020-01-30 01:02:16', '2020-01-30 01:02:16'),
(94, 'posts', 'excerpt', 8, 'lao', 'ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ຫຼື LAPNet (Lao National Payment Network) ໄດ້ຈັດພິທີລົງນາມໃນສັນຍາການຮ່ວມທຶນ ຂອງບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ', '2020-01-30 01:05:19', '2020-01-30 01:05:19'),
(95, 'posts', 'title', 9, 'lao', 'ພິທີເປີດບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ', '2020-01-30 01:29:40', '2020-01-30 01:29:40'),
(96, 'posts', 'seo_title', 9, 'lao', 'grand-opening-lapnet', '2020-01-30 01:29:40', '2020-01-30 01:29:40'),
(97, 'posts', 'excerpt', 9, 'lao', 'ພິທີເປີດບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ຢ່າງເປັນທາງການ ແລະ ເປີດໂຕການບໍລິການໂອນເງິນຂ້າມທະນາຄານ ໂດຍຜ່ານຕູ້ ATM', '2020-01-30 01:29:40', '2020-01-30 01:29:40'),
(98, 'posts', 'body', 9, 'lao', '<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/1.jpg\" alt=\"\" /></p>\n<p>ພິທີເປີດບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ຢ່າງເປັນທາງການ ແລະ ເປີດໂຕການບໍລິການໂອນເງິນຂ້າມທະນາຄານ ໂດຍຜ່ານຕູ້ ATM</p>\n<p>ຕອນບ່າຍ ວັນທີ 25 ພະຈິກ 2019 ທີ່ຜ່ານມາ ໄດ້ມີພິທີເປີດໂຕ ບໍລິສັດ ລາວເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ຢ່າງເປັນທາງການ ທີ່ໂຮງແຮມຄຣາວ ພລາຊ່າ ວຽງຈັນ ແລະ ເປີດໂຕຜະລິດຕະພັນໂອນເງິນຂ້າມທະນາຄານ ໂດຍຜ່ານຕູ້ ເອທີເອັມ ໂດຍການໃຫ້ກຽດເຂົ້າຮ່ວມຂອງ ທ່ານ ສອນໄຊ ສິດພະໄຊ ຜູ້ວ່າການ ທະນາຄານ ແຫ່ງ ສປປ ລາວ ພ້ອມດ້ວຍການເຂົ້າຮ່ວມຂອງບັນດາຕາງໜ້າຜູ້ຖືຮຸ້ນຂອງບໍລິສັດ, ບັນດາກົມຂອງ ທະນາຄານ ແຫ່ງ ສປປ ລາວ, ບັນດາກະຊວງ, ທະນາຄານທຸລະກິດ ແລະ ບັນດາພາກສ່ວນທີ່ກ່ຽວຂ້ອງ.</p>\n<p>ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (Lao National Payment Network Co., Ltd ຫຼື LAPNet ) ໄດ້ສ້າງຕັ້ງຂຶ້ນແຕ່ວັນທີ 12 ມີນາ 2019 ແລະ ວັນທີ 22 ພະຈິກ 2019 ກໍ່ໄດ້ມີການຈັດພິທີລົງນາມໃນສັນຍາການຮ່ວມທຶນ ສ້າງຕັ້ງບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ພາຍໃຕ້ການຮ່ວມມືຂອງບັນດາຜູ້ຖືຮຸ້ນພາຍໃນ ນຳພາໂດຍ ທະນາຄານ ແຫ່ງ ສປປ ລາວ, ພ້ອມກັບ 7 ທະນາຄານທຸລະກິດຍັກໃຫຍ່ ຂອງ ສປປ ລາວຄື: ທະນາຄານການຄ້າ ຕ່າງປະເທດລາວ ມະຫາຊົນ, ທະນາຄານພັດທະນາລາວ, ທະນາຄານສົ່ງເສີມກະສິກຳ, ທະນາຄານຮ່ວມພັດທະນາ, ທະນາຄານຮ່ວມທຸລະກິດລາວ-ຫວຽດ, ທະນາຄານ ເອັສທີ ຈຳກັດ ແລະ ທະນາຄານ ບີໄອຊີ ລາວ ຈຳກັດ ແລະ ຜູ້ຖືຮຸ້ນຕ່າງປະເທດອັນໄດ້ແກ່: ບໍລິສັດ ຢູນຽນເພ ສາກົນ;.<br /><br />ໂດຍຈຸດປະສົງການດຳເນີນທຸລະກິດຂອງບໍລິສັດ ແມ່ນເຮັດໜ້າທີ່ຄວບຄຸມລະບົບຊຳລະທຸລະກຳຍ່ອຍ ໃນ ສປປ ລາວ ຕາມຄຳຂວັນຂອງບໍລິສັດ ທີ່ວ່າ: &ldquo;ທຸກທີ່, ທຸກເວລາ ແລະ ທຸກເຄື່ອງມືການຊຳລະ (Any Time, Any Where and Any Payment Channel)&rdquo; ສອດຄ່ອງກັບລະດັບຄາດໝາຍທີ່ໄດ້ວາງໄວ້ໃນແຜນຍຸດທະສາດພັດທະນາລະບົບສະຖາບັນການເງິນ-ເງິນຕາ ຂອງ ສປປ ລາວ ໄລຍະ 10 ປີ (2016-2025) ແລະ ຕາມວິໄສທັດຮອດປີ 2030.<br /><br />ປະຈຸບັນ ບໍລິສັດ LAPNet ໄດ້ມີ ສະມາຊິກທັງໝົດ 12 ທະນາຄານ ທີ່ສາມາດເຮັດທຸລະກຳ ຄື: ກວດຍອດເງິນໃນບັນຊີ, ຖອນເງິນສົດ ຜ່ານຕູ້ເອທີເອັມຮ່ວມກັນໄດ້ແລ້ວ ທົ່ວປະເທດ ອັນໄດ້ແກ່: ທະນາຄານການຄ້າຕ່າງປະເທດລາວ, ທະນາຄານພັດທະນາລາວ, ທະນາຄານສົ່ງເສີມກະສິກຳ, ທະນາຄານຮ່ວມທຸລະກິດລາວ-ຫວຽດ, ທະນາຄານຮ່ວມພັດທະນາ, ທະນາຄານ ມາຣູຮານ ເຈແປນ ລາວ ຈຳກັດ, ທະນາຄານ ຫວຽດຕິນ ລາວ, ທະນາຄານອຸດສາຫະກຳ ແລະ ການຄ້າຈີນ, ທະນາຄານແຫ່ງ ປະເທດຈີນ, ທະນາຄານເອຊີລີດາລາວ, ທະນາຄານ ອິນໂດຈີນລາວ ແລະ ທະນາຄານ ບີໄອຊີລາວ ຈຳກັດ.<br /><br />- ປະຈຸບັນ ບໍລິສັດກຳລັງລິເລີ່ມໂຄງການໂອນເງິນເງິນຂ້າມທະນາຄານ ໂດຍຜ່ານຕູ້ເອທີເອັມ ຊຶ່ງຕອນນີ້ໄດ້ມີ 6 ທະນາຄານທີ່ເປັນສະມາຊິກ ສາມາດພັດທະນາລະບົບຂອງຕົນສຳເລັດ ຊຶ່ງຈະເປີດໃຫ້ນຳໃຊ້ໄດ້ບາງຈຸດ ແລະ ສາມາດນຳໃຊ້ໄດ້ທຸກຕູ້ພາຍໃນທ້າຍປີ 2019 ນີ້:<br />- ຊຶ່ງໃນຕໍ່ໜ້າບໍລິສັດ ຈະພະຍາຍາມພັດທະນາລະບົບທີ່ສາມາດຊຳລະຄ່າສິນຄ້າ ແລະ ຄ່າບໍລິການຕ່າງໆຢູ່ຮ້ານຄ້າໂດຍຜ່ານເຄື່ອງພີໂອເອສ,ຜ່ານ QR Code ຂອງທະນາຄານທຸລະກິດອື່ນທີ່ເປັນສະມາຊິກຂອງບໍລິສັດ LAPNet ໄດ້.</p>\n<p>&nbsp;</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/2.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/3.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/4.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/5.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/6.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/7.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/8.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/9.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Grand%20Opening/10.jpg\" alt=\"\" /></p>', '2020-01-30 01:29:40', '2020-07-15 20:41:18'),
(99, 'posts', 'meta_description', 9, 'lao', 'grand-opening-lapnet', '2020-01-30 01:29:40', '2020-01-30 01:29:40'),
(100, 'posts', 'meta_keywords', 9, 'lao', 'grand-opening-lapnet', '2020-01-30 01:29:40', '2020-01-30 01:29:40'),
(101, 'posts', 'slug', 9, 'lao', 'grand-opening-lapnet', '2020-01-30 01:32:29', '2020-01-30 01:32:29'),
(109, 'posts', 'title', 11, 'lao', 'ແຈ້ງການປະມູນ', '2020-01-30 01:44:47', '2020-01-30 01:44:47'),
(110, 'posts', 'seo_title', 11, 'lao', 'invitation-to-bid', '2020-01-30 01:44:47', '2020-01-30 01:44:47'),
(111, 'posts', 'excerpt', 11, 'lao', 'Lao National Payment Network Co Ltd (LAPNet) Will hold an open procurement bid to seek a supplier or business partner for creation of the \" Interbank Mobile Payment Service\"', '2020-01-30 01:44:47', '2020-01-30 01:44:47'),
(112, 'posts', 'body', 11, 'lao', '<p>Lao National Payment Network Co Ltd (LAPNet) Will hold an open procurement bid to seek a supplier or business partner for creation of the \" Interbank Mobile Payment Service\"<br />For more information please contact us at Email: lapnet110@gmail.com Telephone 020 28175150, 030 5687610, 030 5687614</p>\n<p>&nbsp;</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 50%;\" src=\"https://lapnet.com.la/storage/posts/Invitation%20to%20bid/1.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 50%;\" src=\"https://lapnet.com.la/storage/posts/Invitation%20to%20bid/2.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 50%;\" src=\"https://lapnet.com.la/storage/posts/Invitation%20to%20bid/3.png\" alt=\"\" /></p>', '2020-01-30 01:44:47', '2020-07-15 20:40:27'),
(113, 'posts', 'slug', 11, 'lao', 'invitation-to-bid', '2020-01-30 01:44:47', '2020-01-30 01:44:47'),
(114, 'posts', 'meta_description', 11, 'lao', 'invitation-to-bid', '2020-01-30 01:44:47', '2020-01-30 01:44:47'),
(115, 'posts', 'meta_keywords', 11, 'lao', 'invitation-to-bid', '2020-01-30 01:44:47', '2020-01-30 01:44:47'),
(116, 'menu_items', 'title', 35, 'lao', 'Sign Up', '2020-02-09 20:46:39', '2020-02-09 20:46:39'),
(117, 'menu_items', 'title', 26, 'lao', 'Layouts', '2020-02-09 23:46:20', '2020-02-09 23:46:20'),
(118, 'menu_items', 'title', 27, 'lao', 'Generic', '2020-02-10 00:21:18', '2020-02-10 00:21:18'),
(119, 'menu_items', 'title', 38, 'lao', 'ຖອນເງິນສົດຂ້າມທະນາຄານຜ່ານຕູ້ ATM', '2020-02-13 23:22:09', '2020-02-13 23:22:42'),
(120, 'menu_items', 'title', 37, 'lao', 'ກວດຍອດເງິນຂ້າມທະນາຄານຜ່ານຕູ້ ATM', '2020-02-13 23:22:37', '2020-03-22 19:01:06'),
(121, 'menu_items', 'title', 39, 'lao', 'ໂອນເງິນຂ້າມທະນາຄານຜ່ານຕູ້ ATM', '2020-02-13 23:22:50', '2020-02-13 23:22:50'),
(122, 'menu_items', 'title', 41, 'lao', 'ຄວາມເປັນມາ', '2020-02-13 23:26:13', '2020-02-13 23:26:13'),
(124, 'menu_items', 'title', 42, 'lao', 'ພາລະບົດບາດ', '2020-02-13 23:32:32', '2020-02-13 23:32:32'),
(125, 'menu_items', 'title', 43, 'lao', 'ສະພາຜູ້ບໍລິຫານ', '2020-02-13 23:42:08', '2020-02-13 23:42:08'),
(126, 'menu_items', 'title', 44, 'lao', 'ໂຄງຮ່າງການຈັດຕັ້ງ', '2020-02-13 23:42:26', '2020-02-13 23:42:26'),
(137, 'pages', 'title', 6, 'lao', 'ຈຸດປະສົງ', '2020-02-18 23:13:37', '2020-02-18 23:13:37'),
(138, 'pages', 'slug', 6, 'lao', 'purpose', '2020-02-18 23:13:37', '2020-02-18 23:13:37'),
(139, 'pages', 'body', 6, 'lao', '<p style=\"text-indent: 50px; word-break: break-all;\">ຈຸດປະສົງຂອງການສ້າງຕັ້ງບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAO NATIONAL PAYMENT NETWORK CO.,LTD ຂຽນຫຍໍ້ວ່າ LAPNET) ແມ່ນອີງໃສ່ຄວາມຮຽກຮ້ອງ ຕ້ອງການໃນການພັດທະນາລະບົບການຊຳລະສະສາງໃນໄລຍະໃໝ່ ຂອງ ສປປ ລາວ ແລະ ອີງໃສ່ຄວາມພ້ອມຂອງບັນດາຜູ້ຖືຮຸ້ນທີ່ມີປະສົບການທາງດ້ານການເງິນ-ການທະນາຄານ ແລະ ຄວາມຊຳນານດ້ານເຕັກ ໂນໂລຊີທາງການເງິນ (Financial Technology: FinTech), ທຫລ ຈຶ່ງມີຄວາມເຊື່ອໝັ້ນທີ່ຈະໂອນພາລະບົດບາດການດຳເນີນທຸລະກິດການໃຫ້ບໍລິການລະບົບ LAPS ໃຫ້ແກ່ບໍລິສັດ LAPNet ທີ່ຈະສ້າງຕັ້ງຂຶ້ນ ກາຍເປັນບໍລິສັດທີ່ໃຫ້ບໍລິການລະບົບຊຳລະທຸລະກຳຍ່ອຍທີ່ທັນສະໄໝ, ປອດໄພ ສາມາດເຊື່ອມໂຍງກັບທຸກພາກພື້ນ ແລະ ສາກົນ ກໍ່ຄືການເນັ້ນການປັບປຸງທຸລະກິດຂອງບໍລິສັດໃຫ້ແທດເໝາະກັບສະພາບປ່ຽນແປງໃໝ່ ແລະ ສ້າງບໍລິສັດໃຫ້ກາຍເປັນບໍລິສັດແຫ່ງທຳອິດທີ່ປະສົບຜົນສຳເລັດໃນການໃຫ້ບໍລິການລະບົບການຊຳລະທຸລະກຳຍ່ອຍແຫ່ງຊາດໃນ ສປປ ລາວ ຕ້ອງໄດ້ຍົກສູງປະສິດຕິພາບການດຳເນີນທຸລະກິດ ແລະ ການຄຸ້ມຄອງຄວາມສ່ຽງໃຫ້ເຂັ້ມແຂງ, ສ້າງ ແລະ ພັດທະນາລະບົບການຊຳລະທີ່ໄດ້ມາດຕະຖານສາກົນ ໂດຍນຳໃຊ້ເຕັກໂນໂລຊີທີ່ທັນສະໄໝ ແລະ ຍົກລະດັບຄວາມຮູ້, ຄວາມຊ່ຽວຊານສະເພາະດ້ານໃຫ້ເທົ່າທຽມກັບສາກົນ ແລະ ຍັງສາມາດຂະຫຍາຍຕານ່າງການບໍລິການລົງສູ່ທ້ອງຖີ່ນໃຫ້ທົ່ວເຖິງ ແລະ ສາມາດແກ້ໄຂທຸລະກຳຂັດຂ້ອງໃຫ້ທ່ວງທັນເວລາ ເພື່ອໃຫ້ຖັນແຖວພະນັກງານ, ພໍ່ຄ້າຊາວຂາຍ, ພໍ່ແມ່ປະຊາຊົນສາມາດ ຝາກ-ຖອນ, ໂອນເງິນຂ້າມທະນາຄານຫາກັນໄດ້ສະດວກ ພ້ອມກັບກຳຈັດປັດເປົ່າຫາງສຽງຂອງສັງຄົມເຖິງການບໍລິການບໍມີປະສິດທິພາບໃຫ້ໜ້ອຍລົງ ແລະ ຍັງເປັນອົງປະກອບທີ່ສຳຄັນໃຫ້ແກ່ພື້ນຖານເສດຖະກິດໃຫ້ມີການຂະ ຫຍາຍຕົວແບບຍືນຍົງ, ທັງເປັນການຫຼຸດຜ່ອນການນຳໃຊ້ເງິນສົດໃນສັງຄົມ ແລະ ສົ່ງເສີມໃຫ້ເງິນກີບເປັນສະກຸນເງິນດຽວທີ່ໃຊ້ໃນການຊຳລະສະສາງໃນ ສປປ ລາວ.</p>\n<hr />', '2020-02-18 23:13:37', '2020-02-18 23:30:24'),
(140, 'pages', 'title', 7, 'lao', 'ຄວາມເປັນມາ', '2020-02-18 23:21:03', '2020-02-18 23:30:58'),
(141, 'pages', 'slug', 7, 'lao', 'company-history', '2020-02-18 23:21:03', '2020-02-18 23:21:03');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(142, 'pages', 'body', 7, 'lao', '<p style=\"text-indent: 50px; word-break: break-all;\">ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ຫືຼ LAPNet ດຳເນີນທຸລະກິດໃນຮູບແບບ ບໍລິສັດ ຈຳກັດ,&nbsp; ເຊິ່ງໄດ້ຮັບອະນຸຍາດເປັນຜູ້ຄວບຄຸມລະບົບບັດທະນາຄານຮ່ວມກັນ ຫຼື Lao ATM Pool Switching (LAPS) ໂດຍແມ່ນໂຄງການຊ່ວຍເຫຼືອລະຫວ່າງລັດຖະບານ ສປ ຈີນ ຕໍ່ກັບ ສປປ ລາວ ຕາມສານແລກປ່ຽນວ່າດ້ວຍລັດຖະບານ ສປ ຈີນ ເຫັນດີຊ່ວຍເຫຼືອລັດຖະບານ ສປປ ລາວ ປະຕິບັດ &lsquo;&rsquo;ໂຄງການລະບົບຊຳລະດ້ວຍບັດອັດຕະໂນມັດຂອງທະນາຄານ&rsquo;&rsquo;. ໂຄງການດັ່ງກ່າວໄດ້ສຳເລັດ ແລະ ເປີດນຳໃຊ້ລະບົບຢ່າງເປັນທາງການໃນວັນທີ 01/12/2015 ໂດຍຢູ່ພາຍໃຕ້ການບໍລິຫານຂອງ ທຫລ, ເຊິ່ງຂັ້ນເທິງ&nbsp; ໄດ້ເຫັນດີມອບໝາຍໃຫ້ກົມເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານເປັນຜູ້ຈັດຕັ້ງປະຕິບັດ ແລະ ໄດ້ສ້າງຕັ້ງພະແນກຄຸ້ມຄອງບັດທະນາຄານຂຶ້ນມາເພື່ອຄຸ້ມຄອງ ແລະ ເຮັດວຽກງານດັ່ງກ່າວໂດຍກົງ, ເຊິ່ງທາງຝ່າຍຈີນ ຮັບຜິດ ຊອບໃນການບຳລຸງຮັກສາທາງດ້ານເຕັກນິກຂອງລະບົບໃຫ້ ສປປ ລາວ ລ້າ ເປັນໄລຍະເວລາ 3 ປີ. ຜ່ານການຈັດຕັ້ງປະຕິບັດຕົວຈິງເຫັນວ່າການນຳໃຊ້ລະບົບດັ່ງກ່າວແມ່ນຍັງບໍ່ເຕັມປະສິດທິພາບເທົ່າທີ່ຄວນ ເນື່ອງຈາກການດຳເນີນງານແມ່ນບໍ່ສອດຄ່ອງກັບພາລະບົດບາດຂອງ ທຫລ ທີ່ເປັນຜູ້ຄຸ້ມຄອງມະຫາພາກດ້ານການເງິນ-ເງິນຕາ, ທັງເປັນອົງກອນທີ່ບໍ່ສະແຫວງຫາຜົນກຳໄລ ຈຶ່ງເຮັດໃຫ້ການຄຸຸ້ມຄອງບໍລິຫານລະບົບດັ່ງ ກ່າວ ຍັງມີລັກສະນະ &lsquo;&rsquo;ນະໂຍບາຍ&rsquo;&rsquo;. ດັ່ງນັ້ນ, ຄະນະພັກ, ຄະນະຜູ້ວ່າການ ທຫລ ຈຶ່ງມີມະຕິຕົກລົງເຫັນດີໃຫ້ຫັນເອົາວຽກງານ LAPS ເປັນນິຕິບຸກຄົນຕາມມະຕິກອງປະຊຸມຄະນະປະຈຳພັກ-ຄະນະຜູ້ວ່າການ ທຫລ ປະຈຳເດືອນ ກຸມພາ 2016. ສະນັ້ນ,&nbsp; ພາຍຫຼັງສິ້ນສຸດໄລຍະການບຳລຸງຮັກສາທາງດ້ານເຕັກນິກລ້າຈາກຝ່າຍຈີນໃນວັນທີ 01/12/2018, ສປປ ລາວ ຕ້ອງໄດ້ສືບຕໍ່ໃນການບໍາລຸງຮັກສາລະບົບເອງ. ໂດຍ ທຫລ ໄດ້ໂອນພາລະບົດບາດການດຳເນີນງານໃຫ້ບໍລິສັດ LAPNet ທີ່ຈະສ້າງຂຶ້ນ ເປັນຜູ້ສືບຕໍ່ດຳເນີນທຸລະກິດໃນການໃຫ້ບໍລິການລະບົບ LAPS ໃຫ້ມີປະສິດທິຜົນສູງສຸດ ແລະ ພັດທະນາໃຫ້ສາມາດເຊື່ອມໂຍງກັບພາກພື້ນ ແລະ ສາກົນ, ເພາະວ່າລະບົບຊຳລະທາງການເງິນແມ່ນຍິ່ງມີຄວາມສຳຄັນເປັນອັນດັບຕົ້ນໆຂອງຂະແໜງເສດຖະຖິດ-ການເງິນ ທີ່ຄວນໄດ້ຮັບການພັດທະນາໃຫ້ມີຄວາມ ເໝາະສົມ-ສອດຄ່ອງກັບຄວາມຕ້ອງການຂອງໜ່ວຍງານເສດຖະກິດ ທັງພາກລັດ ແລະ ເອກະຊົນ.&nbsp; ບໍລິສັດລາວ ຈະເປັນສ່ວນໜຶ່ງໃນການປະກອບສ່ວນຊຸກຍູ້ເສດຖະກິດ ແລະ ໃຫ້ການສະໜັບສະໜູນບັນທະນາຄານທຸລະກິດໃຫ້ສາມາດເຊື່ອມໂຍງ&nbsp; ກັນໃຫ້ໄດ້ຫລາຍຊ່ອງທາງຂຶ້ນກວ່າເກົ່າ ເພື່ອເປັນການອຳນວຍຄວາມສະດວກໃຫ້ແກ່ຜູ້ຊົມໃຊ້ໄດ້ສາມາດດຳເນີນທຸລະກຳທາງດ້ານການເງິນໄດ້ &ldquo; ທຸກທີ່, ທຸກເວລາ, ທຸກຊ່ອງທາງການຊຳລະ&rdquo; .<br />ໃນປະຈຸບັນ ມີໂຄງສ້າງຜູ້ຖືຮຸ້ນຂອງບໍລິສັດມີດັ່ງລຸ່ມນີ້:<br /><br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານແຫ່ງ ສປປ ລາວ ຖືຮຸ້ນຈຳນວນ: 25%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານການຄ້າຕ່າງປະເທດລາວມະຫາຊົນ ຖືຮຸ້ນຈຳນວນ: 20%;<br />&bull;&nbsp;&nbsp; &nbsp;ບໍລິສັດ ຢູນຽນເພສາກົນ ຖືຮຸ້ນຈຳນວນ: 15%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານພັດທະນາລາວ ຖືຮຸ້ນຈຳນວນ: 10%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານສົ່ງເສີມກະສິກຳ ຖືຮຸ້ນຈຳນວນ: 10%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານຮ່ວມທຸລະກິດລາວຫວຽດ ຖືຮຸ້ນຈຳນວນ: 5%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານຮ່ວມພັດທະນາ ຖືຮຸ້ນຈຳນວນ: 5%<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານເອສທີຈຳກັດ ຖືຮຸ້ນຈຳນວນ: 5%;<br />&bull;&nbsp;&nbsp; &nbsp;ທະນາຄານບີໄອຊີຈຳກັດ ຖືຮຸ້ນຈຳນວນ: 5%;<br />&nbsp;</p>\n<hr />', '2020-02-18 23:21:03', '2020-02-18 23:30:08'),
(143, 'pages', 'title', 8, 'lao', 'ພາລະບົດບາດ', '2020-02-18 23:23:01', '2020-02-18 23:23:01'),
(144, 'pages', 'slug', 8, 'lao', 'role', '2020-02-18 23:23:01', '2020-02-18 23:23:01'),
(145, 'pages', 'body', 8, 'lao', '<p style=\"text-indent: 50px; word-break: break-all;\">ບໍລິສັດ LAPNet ຈະສືບຕໍ່ດຳເນີນທຸລະກິດໃຫ້ບໍລິການລະບົບ LAPS ທີ່ໄດ້ຮັບໂອນພາລະບົດບາດຈາກ ທຫລ ເພື່ອອຳນວຍຄວາມສະດວກໃຫ້ມວນຊົນ ສາມາດນຳໃຊ້ບັດສິນເຊື່ອ ແລະ ບັດເງິນ ຝາກ ໃນການເຮັດທຸລະກຳຜ່ານຕູ້ເອທິເອັມ, ຕູ້ຊີດີເອັມ ເຊັ່ນ: ກວດຍອດເງິນໃນບັນຊີ, ຝາກ-ຖອນເງິນສົດ, ໂອນເງິນ ພ້ອມທັງສາມາດຊຳລະສິນຄ້າ ແລະ ຄ່າບໍລິການຕ່າງໆຢູ່ຮ້ານຄ້າ ຜ່ານເຄື່ອງພີໂອເອສຂອງທະນາຄານທຸລະກິດອື່ນທີ່ເປັນສະມາຊິກຂອງລະບົບ LAPS ໄດ້, ເຊິ່ງໃນໄລຍະຜ່ານມາໄດ້ດຳເນີນການເປີດໃຫ້ບໍລິການແກ່ມວນຊົນສາມາດນຳໃຊ້ບັດເງິນຝາກ (Debit Card) ໃນການເຮັດທຸລະກຳກວດຍອດເງິນໃນບັນຊີ ແລະ ຖອນເງິນສົດຢູ່ຕູ້ ATM ໄດ້ຕະຫຼອດ 24 ຊົ່ວໂມງ. ສະນັ້ນ, ເຮັດໃຫ້ທະນາຄານສາມາດນຳໃຊ້ອຸປະກອນຮ່ວມກັນ ທັງເປັນການຫຼຸດຜ່ອນການລົງທຶນທີ່ຊຳ້ຊ້ອນໃນການຊື້ອຸປະກອນດັ່ງທີ່ໄດ້ກ່າວ&nbsp; ມາ. ດັ່ງນັ້ນ, ການດຳເນີນທຸລະກິດຂອງບໍລິສັດແມ່ນມີເອກະລັກ ແລະ ຈຸດພິເສດເນື່ອງຈາກຖືເປັນລະບົບທຳອິດຂອງ ສປປ ລາວ ທີ່ສອດຄ່ອງຕາມກົດໝາຍວ່າດ້ວຍລະບົບການຊຳລະ ແລະ ສອດຄ່ອງຕາມແຜນ&nbsp; ຍຸດທະສາດພັດທະນາລະບົບສະຖາບັນການເງິນ-ເງິນຕາ ຂອງ ສປປ ລາວ.</p>\n<hr />', '2020-02-18 23:23:01', '2020-07-20 20:21:18'),
(146, 'pages', 'title', 9, 'lao', 'ສະພາຜູ້ບໍລິຫານ', '2020-02-19 20:23:25', '2020-02-19 20:23:25'),
(147, 'pages', 'slug', 9, 'lao', 'board-of-director', '2020-02-19 20:23:25', '2020-02-19 20:23:25'),
(148, 'pages', 'body', 9, 'lao', '<!-- Table -->\n<h3><strong>ຄະນະບໍລິຫານງານ ລພນ</strong></h3>\n<h4><strong>ຄະນະສະພາບໍລິຫານ</strong></h4>\n<div class=\"table-wrapper\">\n<table>\n<tbody>\n<tr>\n<td>&nbsp;</td>\n<td><strong>ຕາງໜ້າຜູ້ຖືຫຸ້ນຈາກ</strong></td>\n<td><strong>ດຳລົງຕຳແໜ່ງ</strong></td>\n</tr>\n<tr>\n<td>ທ່ານ ສຸລິສັກ ທຳນຸວົງ</td>\n<td>ທະນາຄານແຫ່ງ ສປປ ລາວ</td>\n<td>ປະທານສະພາ</td>\n</tr>\n<tr>\n<td>ທ່ານ ນັນທະລາດ ແກ້ວປະເສີດ</td>\n<td>ທະນາຄານການຄ້າຕ່າງປະເທດລາວມະຫາຊົນ</td>\n<td>ຮອງປະທານສະພາ</td>\n</tr>\n<tr>\n<td>ທ່ານ Cai Huiming</td>\n<td>ບໍລິສັດ ຢູນຽນເພສາກົນ</td>\n<td>ຫົວໜ້າຄະນະກຳມະການກວດກາ</td>\n</tr>\n<tr>\n<td>ທ່ານ ວຽງຄຳ ວັນສີລາລົມ</td>\n<td>ທະນາຄານພັດທະນາລາວ</td>\n<td>ຄະນະກຳມະການກວດກາ</td>\n</tr>\n<tr>\n<td>ທ່ານ ສີສະອາດ ນຶມອາສາ</td>\n<td>ທະນາຄານສົ່ງເສີມກະສິກຳ</td>\n<td>ຄະນະກຳມະການກວດກາ</td>\n</tr>\n<tr>\n<td>ທ່ານ ຟີລິກ. ດີຟຣານຊິສ</td>\n<td>ທະນາຄານບີໄອຊີຈຳກັດ</td>\n<td>ສະມາຊິກສະພາ</td>\n</tr>\n<tr>\n<td>ທ່ານ ຈັນຊະນະ ສິງຫາວົງ</td>\n<td>ທະນາຄານຮ່ວມພັດທະນາ</td>\n<td>ສະມາຊິກສະພາ</td>\n</tr>\n<tr>\n<td>ທ່ານ ວຽງວິໄລ ແສງຄຳຢອງ</td>\n<td>ທະນາຄານຮ່ວມທຸລະກິດລາວຫວຽດ</td>\n<td>ສະມາຊິກສະພາ</td>\n</tr>\n<tr>\n<td>ທ່ານ ເອກະລາດ ລັດຕະນະຈານ</td>\n<td>ທະນາຄານເອສທີຈຳກັດ</td>\n<td>ສະມາຊິກສະພາ</td>\n</tr>\n</tbody>\n</table>\n</div>', '2020-02-19 20:23:25', '2021-08-04 20:46:58'),
(149, 'pages', 'title', 10, 'lao', 'ໂຄງຮ່າງການຈັດຕັ້ງ', '2020-02-19 20:24:24', '2020-02-19 20:24:24'),
(150, 'pages', 'slug', 10, 'lao', 'organizational-chart', '2020-02-19 20:24:24', '2020-02-19 20:24:24'),
(151, 'pages', 'body', 10, 'lao', '', '2020-02-19 20:27:18', '2020-07-15 20:31:36'),
(152, 'pages', 'title', 11, 'lao', 'Home Slide Wallpaper', '2020-03-04 20:22:10', '2020-03-04 20:22:10'),
(153, 'pages', 'slug', 11, 'lao', 'home-slide-wallpaper', '2020-03-04 20:22:10', '2020-03-04 20:22:10'),
(154, 'pages', 'body', 11, 'lao', '<div class=\"swiper-wrapper\">\n<div class=\"swiper-slide\"><a href=\"#\"><img src=\"http://192.168.0.168:3000/storage/home/Home%20Slide/union.jpg\" width=\"100%\" /></a></div>\n<div class=\"swiper-slide\"><a href=\"#\"><img src=\"http://192.168.0.168:3000/storage/home/Home%20Slide/Cover2.png\" width=\"100%\" /></a></div>\n</div>', '2020-03-04 20:22:10', '2020-06-01 00:54:26'),
(155, 'menu_items', 'title', 45, 'lao', 'ວິໄສທັດ ແລະ ພາລະກິດ', '2020-03-19 01:28:42', '2020-03-19 01:28:42'),
(156, 'pages', 'title', 12, 'lao', 'ວິໄສທັດ ແລະ ພາລະກິດ', '2020-03-19 01:53:16', '2020-03-19 01:53:16'),
(157, 'pages', 'body', 12, 'lao', '<h3 style=\"text-align: center;\"><strong>ວິໄສທັດ</strong></h3>\n<p style=\"text-indent: 50px; word-break: break-all;\">ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ມີຄວາມເຊື່ອໝັ້ນວ່າ ໃນຍຸກທີ່ເສດຖະກິດພວມມີການຂະຫຍາຍ ແລະ ມີການເຊື່ອມໂຍງກັນຂອງບັນດາຫົວໜ່ວຍທຸລະກິດຫຼາຍພາກສ່ວນ, ລະບົບຊຳລະທາງການເງິນ ແມ່ນຍິ່ງມີຄວາມສຳຄັນເປັນອັນດັບຕົ້ນໆຂອງຂະແໜງເສດຖະກິດ - ການເງິນ ທີ່ຄວນໄດ້ຮັບການພັດທະນາໃຫ້ມີຄວາມເໝາະສົມ ແລະ ສອດຄ່ອງກັບຄວາມຕ້ອງການຂອງໜ່ວຍງານເສດຖະກິດ ທັງພາກລັດ ແລະ ເອກະຊົນ. ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈະເປັນສ່ວນໜຶ່ງໃນການປະກອບສ່ວນຊຸກຍູ້ເສດຖະກິດ ແລະ ໃຫ້ການສະໜັບສະໜຸນບັນດາທະນາຄານທຸລະກິດ ໃຫ້ສາມາດເຊື່ອມໂຍງກັນໃຫ້ໄດ້ຫຼາຍຊ່ອງທາງຂຶ້ນກວ່າເກົ່າ ເພື່ອເປັນການອຳນວຍຄວາມສະດວກໃຫ້ແກ່ຜູ້ຊົມໃຊ້ໄດ້ສາມາດດຳເນີນທຸລະກິດທາງດ້ານການເງິນໄດ້ \"ທຸກທີ່, ທຸກເວລາ, ທຸກຊ່ອງທາງການຊຳລະ\".</p>\n<hr />\n<h3 style=\"text-align: center;\"><strong>ພາລະກິດ</strong></h3>\n<p style=\"text-indent: 50px; word-break: break-all;\">ເພື່ອເຮັດໃຫ້ ບໍລິສັດ LAPNet ກາຍເປັນບໍລິສັດທີ່ໃຫ້ບໍລິການລະບົບຊຳລະທີ່ທັນສະໄໝ, ປອດໄພ ສາມາດເຊື່ອມໂຍງກັບພາກພື້ນ ແລະ ສາກົນ ກໍ່ຄືການເນັ້ນການປັບປຸງທຸລະກິດຂອງບໍລິສັດໃຫ້ແທດເໝາະກັບສະພາບປ່ຽນແປງໃໝ່ ແລະ ສ້າງບໍລິສັດໃຫ້ກາຍເປັນບໍລິສັດແຫ່ງທຳອິດທີ່ປະສົບຜົນສຳເລັດໃນການໃຫ້ບໍລິການລະບົບການຊຳລະທຸລະກຳຍ່ອຍແຫ່ງຊາດໃນ ສປປ ລາວ ຕ້ອງໄດ້ຍົກສູງປະສິດຕິພາບການດຳເນີນທຸລະກິດ ແລະ ການຄຸ້ມຄອງຄວາມສ່ຽງໃຫ້ເຂັ້ມແຂງ, ສ້າງ ແລະ ພັດທະນາລະບົບການຊຳລະທີ່ໄດ້ມາດຕະຖານສາກົນ ໂດຍນຳໃຊ້ເຕັກໂນໂລຊີທີ່ທັນສະໄໝ ແລະ ຍົກລະດັບຄວາມຮູ້,​ ຄວາມຊ່ຽວຊານສະເພາະດ້ານໃຫ້ເທົ່າທຽມກັບສາກົນ.</p>\n<hr />', '2020-03-19 01:53:16', '2020-03-19 01:55:34'),
(158, 'pages', 'slug', 12, 'lao', 'vision-and-mission', '2020-03-19 01:54:36', '2020-03-19 01:54:36'),
(159, 'menu_items', 'title', 46, 'lao', 'ໜ້າຫຼັກ', '2020-03-24 02:13:27', '2020-03-24 02:13:27'),
(161, 'menu_items', 'title', 48, 'lao', 'ສະມາຊິກລະບົບບັດທະນາຄານຮ່ວມກັນ', '2020-05-07 00:09:43', '2020-05-11 20:45:07'),
(162, 'menu_items', 'title', 49, 'lao', '  ສະມາຊິກລະບົບຊຳລະຂ້າມທະນາຄານເທິງມືຖື', '2020-05-07 00:11:33', '2020-05-11 20:45:44'),
(163, 'pages', 'title', 13, 'lao', 'ສະມາຊິກລະບົບບັດທະນາຄານຮ່ວມກັນ', '2020-05-11 20:24:56', '2020-05-11 20:36:44'),
(164, 'pages', 'slug', 13, 'lao', 'member-lao-atm-pool-switching', '2020-05-11 20:24:56', '2020-05-11 20:36:44'),
(165, 'pages', 'body', 13, 'lao', '<div class=\"table-wrapper\">\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>ຊື່ທະນາຄານ, ທີ່ຕັ້ງສຳນັກງານ ແລະ ເວັບໄຊ</strong></td>\n<td><strong>ເບີໂທຕິດຕໍ່</strong></td>\n</tr>\n<tr>\n<td>ທະນາຄານ ການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ <br /><strong>BCEL</strong><br />ປາງ​ຄຳ, ຊຽ​ງ​ຍືນ, ​ຈັນ​ທະ​ບູ​ລີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.bcel.com.la/\" rel=\"noopener\">http://www.bcel.com.la</a></td>\n<td>856-21 213 200</td>\n</tr>\n<tr>\n<td>ທະນາຄານ ພັດທະນາລາວ <br /><strong>LDB</strong><br />ສຸ​ພາ​ນຸ​ວົງ, ​ສີ​ຫອມ, ​ຈັນ​ທະ​ບູ​ລີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.ldblao.la/\" rel=\"noopener\">http://www.ldblao.la</a></td>\n<td>021 213 300-04</td>\n</tr>\n<tr>\n<td>ທະນາຄານ ຮ່ວມພັດທະນາ <br /><strong>JDB</strong><br />ລ້ານ​ຊ້າງ, ​ຫັດ​ສະ​ດີ, ​ຈັນ​ທະ​ບູ​ລີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.jdbbank.com.la/\" rel=\"noopener\">http://www.jdbbank.com.la</a></td>\n<td>021-213 531-6</td>\n</tr>\n<tr>\n<td>ທະນາຄານ​ສົ່ງ​ເສີມ​ກະສິກຳ <br /><strong>APB</strong><br />ໄກ​ສອນ, ​ພະ​ຂາວ, ​ໄຊ​ທາ​ນີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.apb.com.la/\" rel=\"noopener\">http://www.apb.com.la</a></td>\n<td>021-713 060</td>\n</tr>\n<tr>\n<td>ທະນາຄານ ມາຣູຮານເຈແປນລາວ <br /><strong>MJBL</strong><br />23ສິງ​ຫາ, ໂພນໄຊ, ໄຊ​ເສດ​ຖາ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.maruhanjapanbanklao.com/\" rel=\"noopener\">http://www.maruhanjapanbanklao.com</a></td>\n<td>021-266 000</td>\n</tr>\n<tr>\n<td>ທະນາຄານ ຮ່ວມທຸລະກິດລາວຫວຽດ <br /><strong>LVB</strong><br />ລ້ານ​ຊ້າງ, ​ຫັດ​ສະ​ດີ, ​ຈັນ​ທະ​ບູ​ລີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.laovietbank.com.la/\" rel=\"noopener\">http://www.laovietbank.com.la</a></td>\n<td>021-251 416</td>\n</tr>\n<tr>\n<td>ທະນາຄານ ອຸດສາຫະກຳ ແລະ ການຄ້າຈີນ <br /><strong>ICBC</strong><br />ລ້ານຊ້າງ, ຫັດສະດີ, ​ຈັນ​ທະ​ບູ​ລີ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://vientiane.icbc.com.cn/\" rel=\"noopener\">http://vientiane.icbc.com.cn</a></td>\n<td>021-258 888</td>\n</tr>\n<tr>\n<td>ທະນາຄານ ແຫ່ງປະເທດຈີນ <br /><strong>BOC</strong><br />ຄູວຽງ, ໜອງ​ຈັນ, ສີສັດຕະນາກ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.boc.cn/en/\" rel=\"noopener\">http://www.boc.cn/en</a></td>\n<td>021-228 888</td>\n</tr>\n<tr>\n<td>ທະນາຄານ ຫວຽດຕິນ ລາວ <br /><strong>VTB</strong><br />ຂຸນບູລົມ, ວັດຈັນ, ຈັນທະບູລີ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.vietinbank.com.la/\" rel=\"noopener\">http://www.vietinbank.com.la</a></td>\n<td>021-263 997</td>\n</tr>\n<tr>\n<td>ທະນາຄານ ອິນໂດຈີນ ຈຳກັດ <br /><strong>Indochina</strong><br />23ສິງ​ຫາ, ໜອງບອນ, ​ໄຊ​ເສດ​ຖາ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.indochinabank.com/\" rel=\"noopener\">http://www.indochinabank.com</a></td>\n<td>021-455 000</td>\n</tr>\n<tr>\n<td>ທະນາຄານ ເອຊີລິດາ ລາວ ຈໍາກັດ <br /><strong>ACLEDA</strong><br />ວົງວຽນດົງປ່າລານ, ໂພນສະຫວັນເໜືອ, ສີສັດຕະນາກ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.acledabank.com/\" rel=\"noopener\">http://www.acledabank.com</a></td>\n<td>021-264 994</td>\n</tr>\n<tr>\n<td>ທະນາຄານ ບີໄອຊີ ລາວ ຈໍາກັດ <br /><strong>BIC</strong><br />ຫັດສະດີ, ຫັດສະດີໃຕ້, ຈັນທະບູລີ, ນະຄອນຫຼວງວຽງຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.biclaos.com/\" rel=\"noopener\">http://www.biclaos.com</a></td>\n<td>(856-21) 250 388</td>\n</tr>\n<tr>\n<td>ທະນາຄານ ຊາຄອມແບັງ ລາວ <br /><strong>Sacom</strong><br />ແຫ່ງບຸນ, ຫາຍໂສກ, ຈັນທະບູລີ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.sacombank.com.vn/\" rel=\"noopener\">http://www.sacombank.com.vn</a></td>\n<td>021-265 726</td>\n</tr>\n<tr>\n<td>ທະນາຄານເອັສທີ ຈໍາກັດ <br /><strong>ST</strong><br />ສຸພານຸວົງ, ເມືອງວາທ່າ, ສີໂຄດຕະບອງ, ນະຄອນຫຼວງວຽງຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.stbanklaos.la/\" rel=\"noopener\">http://www.stbanklaos.la</a></td>\n<td>021-241 559-62</td>\n</tr>\n<tr>\n<td>ທະນາຄານ ພາບລິກ ເບີຣາດ ມະຫາຊົນ ສາຂານະຄອນຫຼວງວຽງຈັນ <br /><strong>PBB</strong><br />ຕະຫຼາດເຊົ້າ, ຫັດສະດີໃຕ້, ​ຈັນ​ທະ​ບູ​ລີ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"https://www.pbebank.com/\" rel=\"noopener\">https://www.pbebank.com</a></td>\n<td>021-223 394</td>\n</tr>\n<tr>\n<td>ທະນາຄານກະສິກອນໄທ ຈໍາກັດ <br /><strong>KBANK</strong><br />ບູຣິຈັນ, ໂພນສີນວນ, ສີສັດຕະນາກ, ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"https://www.kasikornbank.com.la/\" rel=\"noopener\">https://www.kasikornbank.com.la</a></td>\n<td>021-410 885</td>\n</tr>\n</tbody>\n</table>\n</div>', '2020-05-11 20:24:56', '2021-01-26 00:21:11'),
(166, 'pages', 'title', 14, 'lao', 'ສະມາຊິກລະບົບຊຳລະຂ້າມທະນາຄານເທິງມືຖື', '2020-05-11 20:33:08', '2020-05-11 20:37:17'),
(167, 'pages', 'slug', 14, 'lao', 'member-mobile-payment-switching', '2020-05-11 20:33:08', '2020-05-11 20:33:08'),
(168, 'pages', 'body', 14, 'lao', '<div class=\"table-wrapper\">\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>ຊື່ທະນາຄານ, ທີ່ຕັ້ງສຳນັກງານ ແລະ ເວັບໄຊ</strong></td>\n<td><strong>ເບີໂທຕິດຕໍ່</strong></td>\n</tr>\n<tr>\n<td>ທະນາຄານ ພັດທະນາລາວ <br /><strong>LDB</strong><br />ສຸ​ພາ​ນຸ​ວົງ, ​ສີ​ຫອມ, ​ຈັນ​ທະ​ບູ​ລີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.ldblao.la/\" rel=\"noopener\">http://www.ldblao.la</a></td>\n<td>021 213 300-04</td>\n</tr>\n<tr>\n<td>ທະນາຄານເອັສທີ ຈໍາກັດ <br /><strong>ST</strong><br />ສຸພານຸວົງ, ເມືອງວາທ່າ, ສີໂຄດຕະບອງ, ນະຄອນຫຼວງວຽງຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.stbanklaos.la/\" rel=\"noopener\">http://www.stbanklaos.la</a></td>\n<td>021-241 559-62</td>\n</tr>\n<tr>\n<td>ທະນາຄານ ການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ <br /><strong>BCEL</strong><br />ປາງ​ຄຳ, ຊຽ​ງ​ຍືນ, ​ຈັນ​ທະ​ບູ​ລີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.bcel.com.la/\" rel=\"noopener\">http://www.bcel.com.la</a></td>\n<td>856-21 213 200</td>\n</tr>\n<tr>\n<td>ທະນາຄານ ບີໄອຊີ ລາວ ຈໍາກັດ <br /><strong>BIC</strong><br />ຫັດສະດີ, ຫັດສະດີໃຕ້, ຈັນທະບູລີ, ນະຄອນຫຼວງວຽງຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.biclaos.com/\" rel=\"noopener\">http://www.biclaos.com</a></td>\n<td>(856-21) 250 388</td>\n</tr>\n<tr>\n<td>ທະນາຄານ ຮ່ວມພັດທະນາ <br /><strong>JDB</strong><br />ລ້ານ​ຊ້າງ, ​ຫັດ​ສະ​ດີ, ​ຈັນ​ທະ​ບູ​ລີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.jdbbank.com.la/\" rel=\"noopener\">http://www.jdbbank.com.la</a></td>\n<td>021-213 531-6</td>\n</tr>\n<tr>\n<td>ທະນາຄານ ຮ່ວມທຸລະກິດລາວຫວຽດ <br /><strong>LVB</strong><br />ລ້ານ​ຊ້າງ, ​ຫັດ​ສະ​ດີ, ​ຈັນ​ທະ​ບູ​ລີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.laovietbank.com.la/\" rel=\"noopener\">http://www.laovietbank.com.la</a></td>\n<td>021-251 416</td>\n</tr>\n<tr>\n<td>ທະນາຄານ​ສົ່ງ​ເສີມ​ກະສິກຳ <br /><strong>APB</strong><br />ໄກ​ສອນ, ​ພະ​ຂາວ, ​ໄຊ​ທາ​ນີ, ​ນະ​ຄອນ​ຫຼວງວຽງ​ຈັນ.<br /><a style=\"color: #444;\" href=\"http://www.apb.com.la/\" rel=\"noopener\">http://www.apb.com.la</a></td>\n<td>021-713 060</td>\n</tr>\n</tbody>\n</table>\n</div>', '2020-05-11 20:33:08', '2020-12-11 01:24:29'),
(169, 'contents', 'title', 1, 'lao', 'ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ', '2020-06-03 01:15:26', '2020-07-20 20:04:34'),
(170, 'contents', 'excerpt', 1, 'lao', 'ຮູບທີ 1', '2020-06-03 01:15:26', '2020-06-03 01:15:26'),
(171, 'contents', 'body', 1, 'lao', '<div class=\"fb-wrapper\"><iframe style=\"border: none; overflow: hidden;\" src=\"https://www.facebook.com/plugins/video.php?height=476&amp;href=https%3A%2F%2Fwww.facebook.com%2Flaonationalpaymentnetwork%2Fvideos%2F549337809426337%2F&amp;show_text=false&amp;width=476&amp;t=0\" width=\"476\" height=\"476\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"true\"></iframe></div>', '2020-06-03 01:15:26', '2021-07-16 02:35:38'),
(180, 'data_rows', 'display_name', 65, 'lao', 'Id', '2020-06-04 21:53:49', '2020-06-04 21:53:49'),
(181, 'data_rows', 'display_name', 66, 'lao', 'Name', '2020-06-04 21:53:49', '2020-06-04 21:53:49'),
(182, 'data_rows', 'display_name', 67, 'lao', 'Image', '2020-06-04 21:53:49', '2020-06-04 21:53:49'),
(183, 'data_rows', 'display_name', 68, 'lao', 'Created At', '2020-06-04 21:53:49', '2020-06-04 21:53:49'),
(184, 'data_rows', 'display_name', 69, 'lao', 'Updated At', '2020-06-04 21:53:49', '2020-06-04 21:53:49'),
(185, 'data_types', 'display_name_singular', 16, 'lao', 'Member', '2020-06-04 21:53:49', '2020-06-04 21:53:49'),
(186, 'data_types', 'display_name_plural', 16, 'lao', 'Members', '2020-06-04 21:53:49', '2020-06-04 21:53:49'),
(187, 'members', 'name', 2, 'lao', 'LDB', '2020-06-04 21:56:34', '2020-06-04 21:56:34'),
(188, 'members', 'name', 14, 'lao', 'STB', '2020-06-04 22:58:33', '2020-06-04 22:58:33'),
(189, 'members', 'name', 12, 'lao', 'BIC', '2020-06-04 22:58:53', '2020-06-04 22:58:53'),
(190, 'members', 'name', 11, 'lao', 'ACLEDA', '2020-06-04 22:59:26', '2020-06-04 22:59:26'),
(191, 'members', 'name', 13, 'lao', 'Sacom', '2020-06-04 22:59:43', '2020-06-04 22:59:43'),
(192, 'members', 'name', 10, 'lao', 'IDCN', '2020-06-04 23:00:00', '2020-06-04 23:00:00'),
(193, 'members', 'name', 9, 'lao', 'VTB', '2020-06-04 23:00:17', '2020-06-04 23:00:17'),
(194, 'members', 'name', 8, 'lao', 'BOC', '2020-06-04 23:00:42', '2020-06-04 23:00:42'),
(195, 'members', 'name', 7, 'lao', 'ICBC', '2020-06-04 23:00:57', '2020-06-04 23:00:57'),
(196, 'members', 'name', 6, 'lao', 'LVB', '2020-06-04 23:01:29', '2020-06-04 23:01:29'),
(197, 'members', 'name', 5, 'lao', 'MJBL', '2020-06-04 23:02:01', '2020-06-04 23:02:01'),
(198, 'members', 'name', 4, 'lao', 'APB', '2020-06-04 23:02:19', '2020-06-04 23:02:19'),
(199, 'members', 'name', 3, 'lao', 'JDB ', '2020-06-04 23:02:38', '2020-06-04 23:02:38'),
(200, 'members', 'name', 1, 'lao', 'BCEL', '2020-06-04 23:03:00', '2020-06-04 23:03:00'),
(201, 'data_rows', 'display_name', 78, 'lao', 'Web SIte', '2020-06-04 23:15:13', '2020-06-04 23:15:13'),
(202, 'menu_items', 'title', 51, 'lao', 'Members', '2020-06-04 23:16:40', '2020-06-04 23:16:40'),
(203, 'menu_items', 'title', 52, 'lao', 'Contents', '2020-06-04 23:20:55', '2020-06-04 23:20:55'),
(205, 'menu_items', 'title', 54, 'lao', 'ທະນາຄານ ພັດທະນາລາວ', '2020-06-08 00:37:47', '2020-06-09 01:15:16'),
(206, 'menu_items', 'title', 57, 'lao', 'ທະນາຄານ ມາຣູຮານເຈແປນລາວ', '2020-06-09 00:37:08', '2020-06-09 00:37:08'),
(207, 'menu_items', 'title', 58, 'lao', 'ທະນາຄານ ຮ່ວມທຸລະກິດລາວຫວຽດ ', '2020-06-09 00:38:37', '2020-06-09 00:38:37'),
(208, 'menu_items', 'title', 59, 'lao', 'ທະນາຄານ ອຸດສາຫະກຳ ແລະ ການຄ້າຈີນ ', '2020-06-09 00:38:55', '2020-06-09 00:38:55'),
(209, 'menu_items', 'title', 60, 'lao', 'ທະນາຄານ ແຫ່ງປະເທດຈີນ', '2020-06-09 00:39:24', '2020-06-09 00:39:24'),
(210, 'menu_items', 'title', 61, 'lao', 'ທະນາຄານ ຫວຽດຕິນ ລາວ ', '2020-06-09 00:39:34', '2020-06-09 00:39:34'),
(211, 'menu_items', 'title', 62, 'lao', 'ທະນາຄານ ອິນໂດຈີນ ຈຳກັດ ', '2020-06-09 00:39:43', '2020-06-09 00:39:43'),
(212, 'menu_items', 'title', 63, 'lao', 'ທະນາຄານ ເອຊີລິດາ ລາວ ຈໍາກັດ', '2020-06-09 00:40:01', '2020-06-09 00:40:01'),
(213, 'menu_items', 'title', 64, 'lao', 'ທະນາຄານ ບີໄອຊີ ລາວ ຈໍາກັດ', '2020-06-09 00:40:13', '2020-06-09 00:40:13'),
(214, 'menu_items', 'title', 65, 'lao', 'ທະນາຄານ ຊາຄອມແບັງ ລາວ ', '2020-06-09 00:48:23', '2020-06-09 00:48:23'),
(215, 'menu_items', 'title', 66, 'lao', 'ທະນາຄານ ເອັສທີ ຈໍາກັດ ', '2020-06-09 00:48:34', '2020-06-09 01:15:41'),
(216, 'menu_items', 'title', 56, 'lao', 'ທະນາຄານ ຮ່ວມພັດທະນາ ', '2020-06-09 01:01:12', '2020-06-09 01:01:12'),
(217, 'menu_items', 'title', 55, 'lao', 'ທະນາຄານ​ ສົ່ງ​ເສີມ​ກະສິກຳ ', '2020-06-09 01:01:21', '2020-06-09 01:15:30'),
(218, 'menu_items', 'title', 68, 'lao', 'ເຂົ້າສູ່ລະບົບ', '2020-06-14 20:34:31', '2020-06-14 20:34:31'),
(219, 'menu_items', 'title', 69, 'lao', 'EN', '2020-06-14 20:49:10', '2020-06-14 20:49:10'),
(220, 'menu_items', 'title', 70, 'lao', 'LA', '2020-06-14 20:49:18', '2020-06-14 20:49:18'),
(221, 'posts', 'title', 12, 'lao', 'ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ຕ້ອນຮັບຄະນະນັກສຶກສາ ຈາກວິທະຍາໄລສຸດສະກະ', '2020-09-15 00:41:12', '2020-09-15 00:41:12'),
(222, 'posts', 'body', 12, 'lao', '<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/1.jpg\" alt=\"\" /></p>\n<p>ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ຕ້ອນຮັບຄະນະນັກສຶກສາ ຈາກວິທະຍາໄລ ສຸດສະກະເພື່ອການບໍລິຫານ ແລະ ເຕັກໂນໂລຊີ ເພື່ອທັດສະນະສຶກສາ ຮຽນຮູ້ການປະຕິບັດ ວຽກງານຕົວຈິງຂອງລະບົບຊໍາລະ ແລະ ການພັດທະນາການເຊື່ອມຕໍ່ລະບົບຊໍາລະຍ່ອຍ ລະຫວ່າງ ທະນາຄານໃນ ສປປ ລາວ.</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/2.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/3.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/3-1.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/4.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/5.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/6.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/7.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/8.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/9.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/10.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/11.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/12.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/13.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/14.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/15.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/16.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/Suetsaka-College/17.jpg\" alt=\"\" /></p>', '2020-09-15 00:41:12', '2020-09-15 01:07:50'),
(223, 'posts', 'slug', 12, 'lao', 'lapnet-suetsaka-collage-04-09-2020', '2020-09-15 00:41:12', '2020-09-15 00:41:12'),
(224, 'posts', 'title', 13, 'lao', 'ກິດຈະກຳກິລາບານເຕະມິດຕະພາບ ລະຫວ່າງບໍລິສັດ LAPNet ຮ່ວມກັບ ທະນາຄານ JDB', '2020-09-15 01:13:20', '2020-09-15 01:13:20'),
(225, 'posts', 'body', 13, 'lao', '<p style=\"text-align: center;\">ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ສ້າງກິດຈະກຳ ກິລາບານເຕະມິດຕະພາບ ຮ່ວມກັບ ທະນາຄານ ຮ່ວມພັດທະນາ (JDB) ໃນວັນທີ 11 ກັນຍາ 2020 ທີ່ຜ່ານມາ.<br />ເພື່ອເປັນການຂໍ່ານັບຮັບຕ້ອນ ວັນສ້າງຕັ້ງ ທະນາຄານ ແຫ່ງ ສປປ ລາວ ຄົບຮອບ 52 ປີ ທີ່ຈະໝູນວຽນມາເຖິງ.</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020/YzYphpAgSxWaBv7nhw9t.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020LAPNet-JDB/LAPNet-vs-JDB-1.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020LAPNet-JDB/LAPNet-vs-JDB-2.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/September2020LAPNet-JDB/LAPNet-vs-JDB-3.jpg\" alt=\"\" /></p>', '2020-09-15 01:13:20', '2020-09-15 01:34:01'),
(226, 'posts', 'slug', 13, 'lao', 'football-friendship-lapnet-jdb-11-09-2020', '2020-09-15 01:13:20', '2020-09-15 01:15:02'),
(227, 'posts', 'title', 14, 'lao', 'ກິດຈະກຳກິລາບານເຕະມິດຕະພາບ ລະຫວ່າງບໍລິສັດ LAPNet ຮ່ວມກັບ ກົມຄຸ້ມຄອງລະບົບຊຳລະສະສາງ', '2020-10-26 19:09:14', '2020-10-26 19:09:14'),
(228, 'posts', 'body', 14, 'lao', '<p style=\"text-align: center;\">ໃນວັນທີ 22 ຕຸລາ 2020 ທີ່ຜ່ານມາ ທີ່ເດີ່ນເຕະບານ ຫຍ້າທຽມ Victory, ນະຄອນຫຼວງວຽງຈັນ ໄດ້ມີກິດຈະກຳບານເຕະມິດຕະພາບ ລະຫວ່າງ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ແລະ&nbsp; ກົມຄຸ້ມຄອງລະບົບຊຳລະສະສາງ (Payment Systems Department).</p>\n<p style=\"text-align: center;\">ເພື່ອເປັນການຮັດແໜ້ນຄວາມສາມັກຄີ, ແລກປ່ຽນສາຍສຳພັນ ແລະ ເສີມສ້າງສາຍສຳພັນ ລະຫວ່າງພະນັກງານທັງ 2 ພາກສ່ວນ.</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/October2020/RlWtHwJOYvZChC216OEi.png\" alt=\"\" /></p>', '2020-10-26 19:09:14', '2020-10-26 19:10:25'),
(229, 'posts', 'slug', 14, 'lao', 'football-friendship-lapnet-psd-22-10-2020', '2020-10-26 19:09:14', '2020-10-26 19:11:47'),
(230, 'members', 'name', 15, 'lao', 'ທະນາຄານ ພາບບິກ', '2020-12-11 00:32:37', '2020-12-11 00:32:37'),
(231, 'members', 'name', 16, 'lao', 'ທະນາຄານ ກະສິກອນ', '2020-12-11 00:33:28', '2020-12-11 00:33:28'),
(237, 'posts', 'title', 18, 'lao', 'ພິທີເປີດໂຕຜະລິດຕະພັນ ໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື', '2020-12-17 18:39:23', '2021-01-05 00:59:32'),
(238, 'posts', 'body', 18, 'lao', '<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/1.jpg\" alt=\"\" /></p>\n<p>ໃນຕອນບ່າຍ ວັນອັງຄານທີ 08 ທັນວາ 2020 ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ຫຼື LAPNet ໄດ້ຈັດພິທີເປີດໂຕຜະລິດຕະພັນໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື ຢ່າງເປັນທາງການ ທີ່ໂຮງແຮມແລນມາກ ແລະ ພາຍໃນງານຍັງໄດ້ມອບໃບຍ້ອງຍໍໃຫ້ແກ່ 7 ທະນາຄານແບບຢ່າງທີ່ສາມາດເປີດໃຫ້ບໍລິການຜະລິດຕະພັນໂອນເງິນຂ້າມທະນາຄານເທິງມືຖືໃຫ້ແກ່ມວນຊົນນຳໃຊ້ຢ່າງເປັນທາງການ. ພິທີດັ່ງກ່າວໃຫ້ກຽດເຂົ້າຮ່ວມຍິນດີໂດຍ ທ່ານ ສອນໄຊ ສິດພະໄຊ ຜູ້ວ່າການ ທະນາຄານ ແຫ່ງ ສປປ ລາວ ພ້ອມດ້ວຍການເຂົ້າຮ່ວມຂອງບັນດາຕາງໜ້າຜູ້ຖືຮຸ້ນຂອງບໍລິສັດ, ບັນດາກົມຂອງທະນາຄານ ແຫ່ງ ສປປ ລາວ, ບັນດາກະຊວງ, ທະນາຄານທຸລະກິດ ແລະ ພາກສ່ວນທີ່ກ່ຽວຂ້ອງ.</p>\n<p>ການດຳເນີນທຸລະກິດຂອງ LAPNet ຊຶ່ງເປັນຜູ້ຄວບຄຸມລະບົບການຊຳລະທຸລະກຳຍ່ອຍແຫ່ງຊາດ ໃນ ສປປ ລາວ ມີເຮັດໜ້າທີ່ເປັນສື່ກາງໃນການເຮັດທຸລະກຳຮ່ວມກັນດ້ວຍຫຼາຍຮູບແບບ ແລະ ຫຼາກຫຼາຍຊ່ອງທາງ. LAPNet ໄດ້ພັດທະນາລະບົບເພື່ອສ້າງຜະລິດຕະພັນໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື ທີ່ຈະຊ່ວຍອຳນວຍຄວາມສະດວກໃຫ້ມວນຊົນເຮັດທຸລະກຳທາງການເງິນຢູ່ເທິງມືຖື ຕາມຄຳຂວັນທີ່ວ່າ: &ldquo;ທຸກທີ່ ທຸກເວລາ ທຸກຊ່ອງທາງການຊຳລະ&rdquo;</p>\n<p>ປະຈຸບັນ LAPNet ມີເຄືອຂ່າຍເຮັດທຸລະກໍາການນຳໃຊ້ບັດທະນາຄານຮ່ວມກັນ ຫຼື ນຳໃຊ້ຕູ້ ATM ຮ່ວມກັນ ໃນການຖອນເງິນສົດ, ກວດຍອດເງິນໃນບັນຊີຮ່ວມກັນໄດ້ 16 ທະນາຄານ ໃນນີ້,uທະນາຄານ ການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ; ທະນາຄານ ພັດທະນາລາວ; ທະນາຄານ ຮ່ວມພັດທະນາ; ທະນາຄານ ສົ່ງເສີມກະສິກຳ; ທະນາຄານ ມາຣູຮານເຈແປນລາວ; ທະນາຄານ ຮ່ວມທຸລະກິດລາວ-ຫວຽດ; ທະນາຄານ ອຸດສະຫະກຳ ແລະ ການຄ້າ ຈີນ;ທະນາຄານ ແຫ່ງປະເທດຈີນ ຈຳກັດ; ທະນາຄານ ຫວຽດຕິນ ລາວ ຈຳກັດ; ທະນາຄານ ອິນໂດຈີນ ຈຳກັດ; ທະນາຄານ ເອຊີລີດາລາວ ຈຳກັດ; ທະນາຄານ ບີໄອຊີ ລາວ ຈຳກັດ; ທະນາຄານ ຊາຄອມແບັງ ລາວ; ທະນາຄານ ເອັສທີ ຈຳກັດ; ທະນາຄານ ພາບລິກ ສາຂານະຄອນຫຼວງ; ທະນາຄານກະສິກອນໄທ ສາຂານະຄອນຫຼວງ.</p>\n<p>ສຳລັບການໂອນເງິນຂ້າມທະນາຄານໂດຍຜ່ານຕູ້ ATM ປະກອບມີ 10 ທະນາຄານທຸລະກິດຄື: ທະນາຄານພັດທະນາລາວ; ທະນາຄານສົ່ງເສີມກະສິກຳ; ທະນາຄານ ບີໄອຊີລາວ ຈໍາກັດ; ທະນາຄານ ຮ່ວມພັດທະນາ; ທະນາຄານ ມະຣູຮານ ເຈແປນ ລາວ; ທະນາຄານການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ; ທະນາຄານ ເອັສທີ ຈຳກັດ; ທະນາຄານ ຮ່ວມທຸລະກິດລາວ-ຫວຽດ; ທະນາຄານ ພາບລິກ ສາຂານະຄອນຫຼວງ; ທະນາຄານ ກະສິກອນໄທ ສາຂານະຄອນຫຼວງ.</p>\n<p>ໃນດ້ານຜະລິດຕະພັນໃໝ່ລ້າສຸດທີ່ໄດ້ອອກໃຫ້ມວນຊົນໄດ້ເລີ່ມນຳໃຊ້ແຕ່ວັນທີ 08/12/2020 ແມ່ນການໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື ໂດຍນຳໃຊ້ຮູບແບບສ້າງເປັນ QR Code ຮ່ວມກັນ ລະຫວ່າງ ທະນາຄານ ພັດທະນາລາວ ແລະ ທະນາຄານ ເອັສທີ ຈຳກັດ; ສ່ວນການໂອນເງິນເທີງມືຖືໂດຍນຳໃຊ້ຮູບແບບການໂອນ ບັນຊີຫາບັນຊີ ຫຼື ເອີ້ນວ່າ Account Fund transfer ແມ່ນແລ້ວ 5 ທະນາຄານ ຄື: ທະນາຄານການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ, ທະນາຄານຮ່ວມທຸລະກິດລາວ - ຫວຽດ, ທະນາຄານຮ່ວມພັດທະນາ ແລະ ທະນາຄານ ບີໄອຊີລາວ ຈຳກັດ ຊຶ່ງ ໃນນັ້ນ ທະນາຄານ ສົ່ງເສີມກະສິກຳ ແມ່ນກຳລັງດຳເນີນການ ແລະ ຄາດວ່າຈະໃຫ້ສຳເລັດ ໃນໄຕມາດທີ 1 ຂອງປີ 2021.</p>\n<p>ທ່ານ ຫົງຄຳ ເພັດດາວົງ ຜູ້ອຳນວຍການ ບໍລິສັດ LAPNet ໄດ້ໃຫ້ຮູ້ວ່າ: &ldquo;ໃນຕໍ່ໜ້າຈະໃຫ້ສາມາດຊຳລະຄ່າສິນຄ້າ ແລະ ຄ່າບໍລິການຕ່າງໆຢູ່ຮ້ານຄ້າໂດຍຜ່ານເຄື່ອງພີໂອເອສ, ຜ່ານ QR Code ຮ່ວມກັນໄດ້ຂອງບັນດາທະນາຄານທຸລະກິດ ແລະ ບໍລິສັດ Fintech ອື່ນທີ່ເປັນສະມາຊິກຂອງບໍລີສັດ LAPNet. ບໍລິສັດ LAPNet ຍັງໄດ້ຕັ້ງເປົ້າຜັນຂະຫຍາຍທຸລະກິດ ແລະ ວາງແຜນພັດທະນາລະບົບໂຄງລ່າງພື້ນຖານດ້ານການຊຳລະໃຫ້ມວນຊົນສາມາດເຮັດທຸລະກຳທາງການເງິນ ທີ່ທັນສະໄໝ, ປອດໄພ ສາມາດເຊື່ອມໂຍງກັບພາກພື້ນ ແລະ ສາກົນ.&rdquo;</p>\n<p>&nbsp;</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/2.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/3-1.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/3-2.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/3-3.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/3_copy.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/4.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/4_1.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/4_2.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/LMPS/5.jpg\" alt=\"\" /></p>\n<div class=\"fb-wrapper\"><iframe style=\"border: none; overflow: hidden;\" src=\"https://www.facebook.com/plugins/video.php?height=314&amp;href=https%3A%2F%2Fwww.facebook.com%2Flaonationalpaymentnetwork%2Fvideos%2F872070253562725%2F&amp;show_text=false&amp;width=560\" width=\"560\" height=\"314\" frameborder=\"0\" scrolling=\"no\" allowfullscreen=\"true\"></iframe></div>', '2020-12-17 18:39:23', '2020-12-18 02:02:06'),
(239, 'posts', 'slug', 18, 'lao', 'lapnet-launch-product-of-fund-transfer-cross-banks-via-banks-application', '2020-12-17 18:39:23', '2020-12-17 18:39:23'),
(240, 'menu_items', 'title', 71, 'lao', 'ສະມາຊິກ', '2020-12-21 00:40:58', '2020-12-21 00:40:58'),
(241, 'menu_items', 'title', 72, 'lao', 'ສະມາຊິກລະບົບບັດທະນາຄານຮ່ວມກັນ', '2020-12-21 00:41:51', '2020-12-21 00:41:51'),
(242, 'menu_items', 'title', 73, 'lao', 'ສະມາຊິກລະບົບຊຳລະຂ້າມທະນາຄານເທິງມືຖື', '2020-12-21 00:42:43', '2020-12-21 00:42:43'),
(243, 'categories', 'slug', 2, 'lao', 'category-2', '2021-01-05 01:11:22', '2021-01-05 01:11:22'),
(244, 'categories', 'name', 2, 'lao', 'Category 2', '2021-01-05 01:11:22', '2021-01-05 01:11:22'),
(245, 'products', 'name', 4, 'lao', 'ໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື', '2021-01-07 01:07:30', '2021-01-07 01:07:30'),
(246, 'products', 'body', 4, 'lao', '<h3><strong>ຄຸນລັກສະນະ</strong></h3>\n<p>ການໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື (Fund Transfer via Mobile Application) ໂດຍນຳໃຊ້ລະບົບ LAPSໃນການເຊື່ອມໂຍງຜ່ານ Applications ຂອງແຕ່ລະທະນາຄານທີ່ເປັນສະມາຊິກຂອງບໍລິສັດລາວ ເນເຊີນນໍເພເມັ້ນ ເນັດເວີກ ໃຫ້ສາມາດໃຊ້ຟັງຊັ່ນການດຳເນີນທຸລະກຳໂອນເງິນຂ້າມທະນາຄານໄດ້.</p>\n<h3><strong>ຜົນປະໂຫຍດທີ່ໄດ້ຮັບ</strong></h3>\n<h4><strong>ດ້ານທະນາຄານສະມາຊິກ</strong></h4>\n<p>ຊ່ວຍຫຼຸດຜ່ອນຕົ້ນທຶນທາງດ້ານບຸກຄະລາກອນທີ່ໃຫ້ບໍລິການໂອນເງິນຂ້າມທະນາຄານຜ່ານໜ່ວຍງານບໍລິການ ຫຼື ຕູ້ ATM ຂອງແຕ່ລະທະນາຄານທຸລະກິດທີ່ເປັນສະມາຊິກຂອງບໍລິສັດ LAPNet ນັ້ນ, ໃຫ້ລູກຄ້າຫັນມານຳໃຊ້ ການໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື ໃນການດຳເນີນທຸລະກຳ.</p>\n<h4><strong>ດ້ານລູກຄ້າຂອງທະນາຄານ</strong></h4>\n<p>ຜະລິດຕະພັນ ການໂອນເງິນຂ້າມທະນາຄານເທິງມືຖືນີ້ ຈະຊ່ວຍອຳນວຍຄວາມສະດວກໃຫ້ແກ່ມວນຊົນໃນການດຳເນີນທຸລະກຳທາງການເງິນຢູ່ເທິງມືຖືໄດ້ງ່າຍ ແລະ ວ່ອງໄວຂື້ນ ໂດຍນຳໃຊ້ Applications ຂອງແຕ່ລະທະນາຄານທຸລະກິດທີ່ເປັນສະມາຊິກຂອງບໍລິສັດ LAPNet, ຕາມຄຳຂວັນທີ່ກ່າວໄວ້ວ່າ: &ldquo; ທຸກທີ່ ທຸກເວລາ ທຸກຊ່ອງທາງການຊຳລະ&rdquo;</p>\n<h3><strong>​ເງື່ອນໄຂການໃຊ້ບໍລິການ</strong></h3>\n<p>ລຸກຄ້າສາມາດນຳໃຊ້ເລກບັນຊີທະນາຄານ ດຳເນີນທຸລະກຳເທິງມືຖື ໂດຍຜ່ານ Applications ຂອງແຕ່ລະທະນາຄານທຸລະກິດທີ່ເປັນສະມາຊິກຂອງບໍລິສັດ LAPNet ໄດ້ຟຣີໃນໄລຍະທີ່ເປີດຕົວຜະລິດຕະພັນການໂອນເງິນຂ້າມທະນາຄານເທິງມືຖືໃໝ່ ດັ່ງເນື້ອໃນລຸ່ມນີ້:</p>\n<p>- ການໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື ໂດຍນຳໃຊ້ຮູບແບບສ້າງເປັນ QR Code ຮ່ວມກັນ ລະຫວ່າງ ທະນາຄານ ພັດທະນາລາວ ແລະ ທະນາຄານ ເອັສທີ ຈຳກັດ.</p>\n<p style=\"text-align: center;\"><img style=\"width: 100%; max-width: 160px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/LDB_1.png\" width=\"50%\" height=\"\" /><img style=\"width: 100%; max-width: 400px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/STB.png\" width=\"50%\" height=\"\" /></p>\n<p>- ການໂອນເງິນເທີງມືຖືໂດຍນຳໃຊ້ຮູບແບບການໂອນ ບັນຊີຫາບັນຊີ ຫຼື ເອີ້ນວ່າ Account Fund Transfer ແມ່ນແລ້ວ 7 ທະນາຄານ ຄື: ທະນາຄານການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ, ທະນາຄານຮ່ວມທຸລະກິດລາວ - ຫວຽດ, ທະນາຄານຮ່ວມພັດທະນາ, ທະນາຄານ ບີໄອຊີລາວ ຈຳກັດ, ທະນາຄານ ພັດທະນາລາວ ແລະ ທະນາຄານ ອິນໂດຈີນ ຈຳກັດ.</p>\n<p style=\"text-align: center;\"><img style=\"width: 100%; max-width: 160px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/BCEL.png\" width=\"50%\" height=\"\" /> <img style=\"width: 100%; max-width: 400px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/LVB.png\" width=\"50%\" height=\"\" /> <img style=\"width: 100%; max-width: 160px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/JDB.png\" width=\"50%\" height=\"\" /> <img style=\"width: 100%; max-width: 160px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/BIC.png\" width=\"50%\" height=\"\" /> <img style=\"width: 100%; max-width: 160px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/LDB_1.png\" width=\"50%\" height=\"\" /><img style=\"width: 100%; max-width: 160px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/IB.png\" width=\"50%\" height=\"\" /><img style=\"width: 100%; max-width: 160px; height: auto;\" src=\"https://lapnet.com.la/storage/members/June2020/MJBL.png\" width=\"50%\" height=\"\" /></p>\n<!-- Table -->\n<h2 class=\"table-wrapper\" style=\"text-align: center;\"><strong>ທະນາຄານທີ່ເປັນສະມາຊິກຂອງການບໍລິການ ໂອນເງີນຂ້າມທະນາຄານເທິງມືຖື</strong></h2>\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>ໂລໂກ້</strong></td>\n<td><strong>ຊື່ທະນາຄານ</strong></td>\n</tr>\n<!-- //LDB_1 -->\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/LDB_1.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ພັດທະນາລາວ <br />LDB<br />Email :<a style=\"color: #444;\" href=\"mailto:ldblaoho@ldblao.la\">ldblaoho@ldblao.la</a><br />Tel : <a style=\"color: #444;\" href=\"tel:+8562121330003\">(+856-21) 213300 - 03</a><br /><a style=\"color: #444;\" href=\"https://www.ldblao.la/\" rel=\"noopener\">https://www.ldblao.la</a></td>\n</tr>\n<!-- //STB -->\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/STB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ເອັສທີ ຈໍາກັດ <br />STB <br />Tel : <a style=\"color: #444;\" href=\"tel:+8562124156062\">(+856-21) 241 560-62</a><br /><a style=\"color: #444;\" href=\"https://www.stbanklaos.la/\" rel=\"noopener\">https://www.stbanklaos.la</a></td>\n</tr>\n<!-- //BCEL -->\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BCEL.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ການຄ້າຕ່າງປະເທດລາວ ມະຫາຊົນ <br />BCEL <br />Email :<a style=\"color: #444;\" href=\"mailto:bcelhqv@bcel.com.la\">bcelhqv@bcel.com.la</a><br />Tel : <a style=\"color: #444;\" href=\"tel:+85621213200\">(+856-21)213200</a><br />Hotline : <a style=\"color: #444;\" href=\"tel:1555\">1555</a><br /><a style=\"color: #444;\" href=\"http://www.bcel.com.la/\" rel=\"noopener\">http://www.bcel.com.la</a></td>\n</tr>\n<!-- //LVB -->\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/LVB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ຮ່ວມທຸລະກິດລາວຫວຽດ <br />LVB <br />Email :<a style=\"color: #444;\" href=\"mailto:info@laovietbank.com.la\">info@laovietbank.com.la</a><br />Tel : <a style=\"color: #444;\" href=\"tel:+85621251418\">(+856-21)251418</a><br />Hotline : <a style=\"color: #444;\" href=\"tel:1440\">1440</a><br /><a style=\"color: #444;\" href=\"https://www.laovietbank.com.la/\" rel=\"noopener\">https://www.laovietbank.com.la</a></td>\n</tr>\n<!-- //JDB -->\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/JDB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ຮ່ວມພັດທະນາ <br />JDB <br />Email :<a style=\"color: #444;\" href=\"mailto:mrkjdb@gmail.com\">mrkjdb@gmail.com</a><br />Tel : <a style=\"color: #444;\" href=\"tel:+856212135316\">(+856-21) 213531-6</a><br />Hotline : <a style=\"color: #444;\" href=\"tel:1499\">1499</a><br /><a style=\"color: #444;\" href=\"http://www.jdbbank.com.la/\" rel=\"noopener\">http://www.jdbbank.com.la</a></td>\n</tr>\n<!-- //BIC -->\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/BIC.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ບີໄອຊີ ລາວ ຈໍາກັດ <br />BIC <br />Email :<a style=\"color: #444;\" href=\"mailto:enquiry@biclaos.com\">enquiry@biclaos.com</a><br />Tel : <a style=\"color: #444;\" href=\"tel:+85621250388\">(+85621) 250 388 , </a><a style=\"color: #444;\" href=\"tel:+85621250420\">(+85621) 250 420 ,</a><br /><a style=\"color: #444;\" href=\"https://www.biclaos.com/\" rel=\"noopener\">https://www.biclaos.com</a></td>\n</tr>\n<!-- //APB -->\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/IB.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ອິນໂດຈີນ ຈຳກັດ<br />Indochina <br />Email :<a style=\"color: #444;\" href=\"mailto:info@indochina.com.la\">info@indochina.com.la</a><br />Tel : <a style=\"color: #444;\" href=\"tel:+85621455000\">(+85621) 455 000 , </a><br /><a style=\"color: #444;\" href=\"https://www.indochinabank.com/\" rel=\"noopener\">https://www.indochinabank.com</a></td>\n</tr>\n<tr>\n<td><img src=\"https://lapnet.com.la/storage/members/June2020/MJBL.png\" width=\"140px\" /></td>\n<td>ທະນາຄານ ມາຣູຮານເຈແປນລາວ<br />MJBL <br />Email :<a style=\"color: #444;\" href=\"mailto:info@maruhanjapanbanklao.com\">info@maruhanjapanbanklao.com</a><br />Tel : <a style=\"color: #444;\" href=\"tel:+85621266000\">(+85621) 266 000, </a><br /><a style=\"color: #444;\" href=\"https://www.maruhanjapanbanklao.com/\" rel=\"noopener\">https://www.maruhanjapanbanklao.com</a></td>\n</tr>\n</tbody>\n</table>', '2021-01-07 01:10:40', '2022-02-09 20:32:14'),
(247, 'menu_items', 'title', 74, 'lao', 'ໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື', '2021-01-07 19:26:43', '2021-01-07 19:26:43'),
(248, 'posts', 'title', 19, 'lao', 'LAPNet ຈັດກອງປະຊຸມສະພາບໍລິຫານ ສະໄໝສາມັນ ແລະ ກອງປະຊຸມຜູ້ຖືຮຸ້ນ ສະໄໝສາມັນ ຄັ້ງທີ I ປະຈໍາປີ 2021', '2021-03-16 20:45:54', '2021-03-16 20:45:54'),
(249, 'posts', 'excerpt', 19, 'lao', 'ໃນຕອນເຊົ້າຂອງວັນສຸກ ວັນທີ 12  ມີນາ 2021, ເວລາ 9:00 ໂມງ, LAPNet ໄດ້ມີການຈັດກອງປະຊຸມສະພາບໍລິຫານ ສະໄໝສາມັນ ແລະ ກອງປະຊຸມຜູ້ຖືຮຸ້ນ ສະໄໝສາມັນ ຄັ້ງທີ I ປະຈໍາປີ 2021 ໂດຍການເປັນປະທານຂອງ ທ່ານ ລັດສະໝີ ສຸວັນທອງ ຮອງຫົວໜ້າກົມເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ ທະນາຄານແຫ່ງ ສປປ ລາວ', '2021-03-16 20:45:54', '2021-03-16 20:45:54'),
(250, 'posts', 'body', 19, 'lao', '<p style=\"text-align: left;\"><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/March2021/WhatsApp%20Image%202021-03-16%20at%2013.13.32.jpg\" alt=\"\" />ໃນຕອນເຊົ້າຂອງວັນສຸກ ວັນທີ 12&nbsp; ມີນາ 2021, ເວລາ 9:00 ໂມງ, LAPNet ໄດ້ມີການຈັດກອງປະຊຸມສະພາບໍລິຫານ ສະໄໝສາມັນ ແລະ ກອງປະຊຸມຜູ້ຖືຮຸ້ນ ສະໄໝສາມັນ ຄັ້ງທີ I ປະຈໍາປີ 2021 ໂດຍການເປັນປະທານຂອງ ທ່ານ ລັດສະໝີ ສຸວັນທອງ ຮອງຫົວໜ້າກົມເຕັກໂນໂລຊີຂໍ້ມູນຂ່າວສານ ທະນາຄານແຫ່ງ ສປປ ລາວ, ປະທານສະພາບໍລິຫານຂອງບໍລິສັດ ທັງເປັນຕາງໜ້າຜູ້ຖືຮຸ້ນອັນດັບໜຶ່ງຂອງ LAPNet ພ້ອມດ້ວຍ ທ່ານ ຮອງປະທານສະພາບໍລິຫານ, ບັນດາທ່ານ ສະມາຊິກສະພາບໍລິຫານ ແລະ ບັນດາຕາງໜ້າຂອງແຕ່ລະຜູ້ຖືຮຸ້ນ ກໍ່ໄດ້ເຂົ້າຮ່ວມ.</p>\n<p style=\"text-align: left;\">ເນື້ອໃນຫຼັກຂອງກອງປະຊຸມຄັ້ງນີ້ ແມ່ນເພື່ອລາຍງານກ່ຽວກັບການເຄື່ອນໄຫວທຸລະກິດ ປະຈຳປີ&nbsp; 2020&nbsp; ແລະ ແຜນດຳເນີນງານປະຈຳປີ 2021. ພ້ອມນັ້ນ ຍັງໄດ້ນຳສະເໜີແຜນຍຸດທະສາດໃນການດຳເນີນທຸລະກິດ ແຕ່ປີ 2021 &ndash; 2025 ໂດຍຍົກໃຫ້ເຫັນຜົນສຳເລັດຂອງວຽກງານໃນໄລຍະຜ່ານມາ ແລະ ແຜນທີ່ຈະດຳເນີນໃນຕໍ່ໜ້າ.</p>\n<p style=\"text-align: left;\">ຍ້ອນການໃຫ້ຄວາມຮ່ວມມືຂອງບັນດາສະມາຊິກສະພາບໍລິຫານ ທີ່ສະແດງອອກຜ່ານການປຶກສາຫາລື ແລະ ປະກອບຄຳຄິດຄຳເຫັນຮ່ວມກັນ ຕໍ່ຫຼາຍບັນຫາ ຢ່າງກົງໄປກົງມາ ເຮັດໃຫ້ເນື້ອໃນຂອງກອງປະຊຸມມີຄວາມສົມບູນຄົບຖ້ວນ ແລະ ສາມາດນຳໄປເປັນບ່ອນອີງໃນການຈັດຕັ້ງປະຕິບັດວຽກງານຕົວຈິງໃຫ້ເກີດໝາກຜົນດີທີ່ສຸດ. ດັ່ງນັ້ນ, ໃນວັນດຽວກັນ ກອງປະຊຸມສຳຄັນຂອງປີຈຶ່ງໄດ້ຮັບການສິ້ນສຸດລົງ ຢ່າງຈົບງາມ ແລະ ສຳເລັດຜົນ ຕາມຄາດໝາຍ.</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/March2021/WhatsApp%20Image%202021-03-16%20at%2013.13.35.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/March2021/WhatsApp%20Image%202021-03-16%20at%2013.13.34.jpg\" alt=\"\" /></p>', '2021-03-16 20:45:54', '2021-03-16 20:55:33'),
(251, 'posts', 'slug', 19, 'lao', 'lapnet-meeting-share-holders-i-2021', '2021-03-16 20:45:54', '2021-03-17 00:25:31'),
(253, 'menu_items', 'title', 77, 'lao', 'ຄ່າທຳນຽມ', '2021-04-19 20:22:42', '2021-04-19 20:22:42'),
(254, 'menu_items', 'title', 78, 'lao', 'ຄ່າທຳນຽມຖອນເງິນຜ່ານ ATM', '2021-04-19 20:23:07', '2021-04-19 20:23:07'),
(255, 'menu_items', 'title', 79, 'lao', 'ຄ່າທຳນຽມໂອນເງິນຜ່ານ ATM', '2021-04-19 20:23:24', '2021-04-19 20:23:24'),
(256, 'menu_items', 'title', 80, 'lao', 'ຄ່າທຳນຽມໂອນເງິນຜ່ານມືຖື', '2021-04-19 20:23:42', '2021-04-19 20:23:42'),
(257, 'pages', 'title', 16, 'lao', 'ຄ່າທຳນຽມຖອນເງິນຜ່ານ ATM', '2021-04-19 20:35:38', '2021-04-19 20:35:38'),
(258, 'pages', 'slug', 16, 'lao', 'atm', '2021-04-19 20:35:38', '2021-04-19 20:35:38'),
(259, 'pages', 'body', 16, 'lao', '<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>ຄ່າທຳນຽມການໃຊ້ບໍລິການຖອນເງິນຜ່ານ ATM</strong></td>\n</tr>\n<tr>\n<td>2.000 ກີບ/ຄັ້ງ</td>\n</tr>\n</tbody>\n</table>', '2021-04-19 20:35:38', '2021-04-19 20:35:38'),
(260, 'pages', 'title', 17, 'lao', 'ຄ່າທຳນຽມໂອນເງິນຜ່ານ ATM', '2021-04-19 20:43:52', '2021-04-19 20:43:52'),
(261, 'pages', 'slug', 17, 'lao', 'atm', '2021-04-19 20:43:52', '2021-04-19 20:43:52'),
(262, 'pages', 'body', 17, 'lao', '<p>ຈຳນວນການໂອນເງິນຜ່ານລະບົບ ເອທີເອັມ ແມ່ນສາມາດໂອນໄດ້ຈາກ 1.000 ກີບ ຫາ 100.000.000 ກີບ ຕໍ່ 1 ຄັ້ງ.</p>\n<div class=\"table-wrapper\">\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>ໂອນເງິນແຕ່ຈຳນວນເງິນ</strong></td>\n<td><strong>ຫາຈຳນວນ</strong></td>\n<td><strong>ຄິດຄ່າບໍລິການ</strong></td>\n</tr>\n<tr>\n<td>1.000 ກີບ</td>\n<td>2.000.000 ກີບ</td>\n<td>1.000 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>2.000.001 ກີບ</td>\n<td>3.000.000 ກີບ</td>\n<td>1.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>3.000.001 ກີບ</td>\n<td>4.000.000 ກີບ</td>\n<td>2.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>4.000.001 ກີບ</td>\n<td>5.000.000 ກີບ</td>\n<td>3.000 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>5.000.001 ກີບ</td>\n<td>7.000.000 ກີບ</td>\n<td>4.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>7.000.001 ກີບ</td>\n<td>10.000.000 ກີບ</td>\n<td>7.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>10.000.001 ກີບ</td>\n<td>30.000.000 ກີບ</td>\n<td>12.000 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>30.000.001 ກີບ</td>\n<td>50.000.000 ກີບ</td>\n<td>15.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>50.000.001 ກີບ</td>\n<td>100.000.000 ກີບ</td>\n<td>20.000 ກີບ/ທຸລະກໍາ</td>\n</tr>\n</tbody>\n</table>\n</div>', '2021-04-19 20:43:52', '2021-09-01 02:29:17'),
(263, 'pages', 'title', 18, 'lao', 'ຄ່າທຳນຽມໂອນເງິນຜ່ານມືຖື', '2021-04-19 20:55:56', '2021-04-19 20:55:56'),
(264, 'pages', 'body', 18, 'lao', '<div class=\"table-wrapper\">\n<table style=\"table-layout: fixed; text-align: center;\">\n<tbody>\n<tr>\n<td><strong>ໂອນເງິນແຕ່ຈຳນວນເງິນ</strong></td>\n<td><strong>ຫາຈຳນວນ</strong></td>\n<td><strong>ຄິດຄ່າບໍລິການ</strong></td>\n</tr>\n<tr>\n<td>1 ກີບ</td>\n<td>2.000.000 ກີບ</td>\n<td>1.000 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>2.000.001 ກີບ</td>\n<td>3.000.000 ກີບ</td>\n<td>1.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>3.000.001 ກີບ</td>\n<td>4.000.000 ກີບ</td>\n<td>2.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>4.000.001 ກີບ</td>\n<td>5.000.000 ກີບ</td>\n<td>3.000 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>5.000.001 ກີບ</td>\n<td>7.000.000 ກີບ</td>\n<td>4.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>7.000.001 ກີບ</td>\n<td>10.000.000 ກີບ</td>\n<td>7.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>10.000.001 ກີບ</td>\n<td>30.000.000 ກີບ</td>\n<td>12.000 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>30.000.001 ກີບ</td>\n<td>50.000.000 ກີບ</td>\n<td>15.500 ກີບ/ທຸລະກໍາ</td>\n</tr>\n<tr>\n<td>50.000.001 ກີບ</td>\n<td>100.000.000 ກີບ</td>\n<td>20.000 ກີບ/ທຸລະກໍາ</td>\n</tr>\n</tbody>\n</table>\n</div>', '2021-04-19 20:55:56', '2021-04-19 20:55:56'),
(265, 'posts', 'title', 20, 'lao', 'ບໍລິສັດ LAPNet ໄດ້ຮັບມອບຜ້າປິດປາກ ຈາກບໍລິສັດ Viet Card International Technology Corporation', '2021-05-09 20:35:03', '2021-05-09 20:35:03'),
(266, 'posts', 'seo_title', 20, 'lao', 'ບໍລິສັດ LAPNet ໄດ້ຮັບມອບຜ້າປິດປາກ ຈາກບໍລິສັດ Viet Card International Technology Corporation', '2021-05-09 20:35:03', '2021-05-09 20:35:03'),
(267, 'posts', 'excerpt', 20, 'lao', 'ບໍລິສັດ Viet Card International Technology Corporation ໄດ້ມອບຜ້າປິດປາກ ຈຳນວນ 100 ກັບໃຫ້ແກ່ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ເພື່ອຮັບໃຊ້ເຂົ້າໃນການປ້ອງກັນພະຍາດ ໂຄວິດ-19.', '2021-05-09 20:35:03', '2021-05-09 20:35:03'),
(268, 'posts', 'body', 20, 'lao', '<p style=\"text-align: left;\"><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/May2021/WhatsApp%20Image%202021-05-06%20at%2014.03.53.jpeg\" alt=\"\" /></p>\n<p style=\"text-align: left;\">ໃນຕອນເຊົ້າ ຂອງວັນທີ 30 ເມສາ 2021 ບໍລິສັດ Viet Card International Technology Corporation ໄດ້ມອບຜ້າປິດປາກ ຈຳນວນ 100 ກັບໃຫ້ແກ່ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ເພື່ອຮັບໃຊ້ເຂົ້າໃນການປ້ອງກັນພະຍາດ ໂຄວິດ-19.&nbsp; ການມອບຮັບໃນຄັ້ງນີ້ ແມ່ນໃຫ້ກຽດກ່າວຮັບໂດຍ ທ່ານ ຫົງຄຳ ເພັດດາວົງ&nbsp; ຜູ້ອຳນວຍການ ບໍລິສັດ LAPNet ແລະ ກ່າວມອບໂດຍທ່ານ ນາງ ສຸພາພອນ ແສງມະນີ ຕ່າງໜ້າ ຂອງບໍລິສັດ Viet Card.&nbsp; ດັ່ງນັ້ນ ທາງບໍລິສັດ ຈຶ່ງໄດ້ມອບໃບຍ້ອງຍໍໃຫ້ແກ່ບໍລິສັດດັ່ງກ່າວ ເພື່ອເປັນການຢັ້ງຢຶນ ແທນຄຳຂອບໃຈຕໍ່ບໍລິສັດ ທີ່ມີນໍ້າໃຈໃນການປະກອບສ່ວນ ຊຸກຍູ້ ຊ່ວຍເຫຼືອໃນຄັ້ງນີ້.</p>', '2021-05-09 20:35:03', '2021-05-10 01:14:07'),
(269, 'posts', 'slug', 20, 'lao', 'lapnet-viet-card-international-technology-corporation', '2021-05-09 20:35:03', '2021-05-09 20:35:03'),
(270, 'posts', 'meta_description', 20, 'lao', 'ບໍລິສັດ Viet Card International Technology Corporation ໄດ້ມອບຜ້າປິດປາກ ຈຳນວນ 100 ກັບໃຫ້ແກ່ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ເພື່ອຮັບໃຊ້ເຂົ້າໃນການປ້ອງກັນພະຍາດ ໂຄວິດ-19.', '2021-05-09 20:35:03', '2021-05-09 20:35:03'),
(271, 'posts', 'meta_keywords', 20, 'lao', 'ບໍລິສັດ Viet Card International Technology Corporation ໄດ້ມອບຜ້າປິດປາກ ຈຳນວນ 100 ກັບໃຫ້ແກ່ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ເພື່ອຮັບໃຊ້ເຂົ້າໃນການປ້ອງກັນພະຍາດ ໂຄວິດ-19.', '2021-05-09 20:35:03', '2021-05-09 20:35:03'),
(272, 'posts', 'title', 21, 'lao', 'ລາຍຊື່ ຜູ້ຄວບຄຸມລະບົບການຊໍາລະທຸລະກຳຍ່ອຍ ຜູ້ໃຫ້ບໍລິການຊໍາລະ ທີ່ໄດ້ຮັບອະນຸຍາດ ຈາກ ທະນາຄານແຫ່ງ ສປປ ລາວ', '2021-06-22 21:15:32', '2021-06-22 21:18:16'),
(273, 'posts', 'excerpt', 21, 'lao', 'ລາຍຊື່ ຜູ້ຄວບຄຸມລະບົບການຊໍາລະທຸລະກຳຍ່ອຍ ຜູ້ໃຫ້ບໍລິການຊໍາລະ', '2021-06-22 21:15:32', '2021-06-22 21:15:32');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(274, 'posts', 'body', 21, 'lao', '<p>ທະນາຄານແຫ່ງ ສປປ ລາວ ໄດ້ອອກແຈ້ງການ ກ່ຽວກັບ ລາຍຊື່ ຜູ້ຄວບຄຸມລະບົບການຊໍາລະທຸລະກຳຍ່ອຍ ຜູ້ໃຫ້ບໍລິການຊໍາລະ ທີ່ໄດ້ຮັບອະນຸຍາດ ຈາກ ທະນາຄານແຫ່ງ ສປປ ລາວ.</p>\n<p style=\"text-align: left;\"><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/June2021/kLFB5ZFR6jBGTSZKl7QD.png\" alt=\"\" /></p>\n<p>ເຊິ່ງລາຍລະອຽດທັງໝົດສາມາດ ດາວໂຫລດໄດ້ຕາມລິ້ງ: <a href=\"http://mail.lapnet.com.la/d/lapnet.com.la/eQEe4w/5KP0MR88ZK0V\" target=\"_blank\" rel=\"noopener\">Download</a></p>', '2021-06-22 21:15:32', '2021-06-22 21:17:45'),
(275, 'posts', 'slug', 21, 'lao', 'list-of-payment-provider-in-laos-that-allowed-by-bank-of-the-lao-pdr', '2021-06-22 21:15:32', '2021-06-22 21:15:32'),
(276, 'posts', 'meta_description', 21, 'lao', 'ລາຍຊື່ ຜູ້ຄວບຄຸມລະບົບການຊໍາລະທຸລະກຳຍ່ອຍ ຜູ້ໃຫ້ບໍລິການຊໍາລະ', '2021-06-22 21:15:32', '2021-06-22 21:15:32'),
(277, 'posts', 'meta_keywords', 21, 'lao', 'ລາຍຊື່ ຜູ້ຄວບຄຸມລະບົບການຊໍາລະທຸລະກຳຍ່ອຍ ຜູ້ໃຫ້ບໍລິການຊໍາລະ', '2021-06-22 21:15:32', '2021-06-22 21:15:32'),
(278, 'posts', 'seo_title', 21, 'lao', 'ລາຍຊື່ ຜູ້ຄວບຄຸມລະບົບການຊໍາລະທຸລະກຳຍ່ອຍ ຜູ້ໃຫ້ບໍລິການຊໍາລະ', '2021-06-22 21:17:45', '2021-06-22 21:17:45'),
(279, 'pages', 'title', 15, 'lao', 'Home', '2021-07-01 01:31:56', '2021-07-01 01:31:56'),
(280, 'pages', 'slug', 15, 'lao', 'home', '2021-07-01 01:31:56', '2021-07-01 01:31:56'),
(281, 'posts', 'title', 22, 'lao', 'ບໍລິສັດ LAPNet ໄດ້ຈັດພິທີມອບ-ຮັບໜ້າທີ່ປະທານສະພາບໍລິຫານຄົນໃຫມ່', '2021-07-01 21:35:01', '2021-07-01 21:35:01'),
(282, 'posts', 'seo_title', 22, 'lao', 'ພິທີປະກາດ ມອບຮັບ ໜ້າທີ່ ປະທານສະພາບໍລິຫານຂອງບໍລິສັດ ລະຫວ່າງ ຜູ້ເກົ່າ ແລະ ຜູ້ໃຫມ່ ', '2021-07-01 21:35:01', '2021-07-01 21:35:01'),
(283, 'posts', 'excerpt', 22, 'lao', 'ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ໄດ້ຈັດພິທີປະກາດ ມອບຮັບ ໜ້າທີ່ ປະທານສະພາບໍລິຫານຂອງບໍລິສັດ ລະຫວ່າງ ຜູ້ເກົ່າ ແລະ ຜູ້ໃຫມ່ ພ້ອມທັງປະກາດການແຕ່ງຕັ້ງຄະນະສະພາບໍລິຫານຊຸດໃໝ່ ຊຶ່ງພິທີໄດ້ຈັດຂຶ້ນໃນວາລະກອງປະຊຸມຜູ້ຖືຮຸ້ນສະໄໝວິສາມັນ ຄັ້ງທີ I ແລະ ກອງປະຊຸມສະພາບໍລິຫານ ສະໄໝສາມັນຄັ້ງທີ່ II ຂອງບໍລິສັດ ປະຈຳປີ 2021', '2021-07-01 21:35:01', '2021-07-01 21:35:01'),
(284, 'posts', 'body', 22, 'lao', '<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/July2021/IMG_20210630_093627.jpg\" alt=\"\" /></p>\n<p>ໃນວັນທີ 30 ມິຖຸນາ 2021 ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ໄດ້ຈັດພິທີປະກາດ ມອບຮັບ ໜ້າທີ່ ປະທານສະພາບໍລິຫານຂອງບໍລິສັດ ລະຫວ່າງ ຜູ້ເກົ່າ ແລະ ຜູ້ໃຫມ່ ພ້ອມທັງປະກາດການແຕ່ງຕັ້ງຄະນະສະພາບໍລິຫານຊຸດໃໝ່ ຊຶ່ງພິທີໄດ້ຈັດຂຶ້ນໃນວາລະກອງປະຊຸມຜູ້ຖືຮຸ້ນສະໄໝວິສາມັນ ຄັ້ງທີ I ແລະ ກອງປະຊຸມສະພາບໍລິຫານ ສະໄໝສາມັນຄັ້ງທີ່ II ຂອງບໍລິສັດ ປະຈຳປີ 2021 ທີ່ຫ້ອງປະຊຸມ ດອກຮັກ ອາຄານຊັ້ນ 5 ຕຶກສໍານັກງານຄະນະກໍາມະການຄຸ້ມຄອງຫຼັກຊັບ ໂດຍມີຜູ້ເຂົ້າຮ່ວມກອງປະຊຸມທັງໝົດ ຈຳນວນ 14 ທ່ານ ປະກອບດ້ວຍຕາງໜ້າຂາຮຸ້ນຂອງແຕ່ລະພາກສ່ວນ, ສະມາຊິກສະພາບໍລິຫານ, ຄະນະອຳນວຍການ, ຄະນະພະແນກ ແລະ ວິຊາການ ຂອງບໍລິສັດຈຳນວນໜຶ່ງກໍ່ໄດ້ເຂົ້າຮ່ວມ;</p>\n<p>ໃນພິທີໄດ້ມີການມອບໜ້າທີ່ ປະທານສະພາບໍລິຫານ ບໍລິສັດ LAPNet ລະຫວ່າງ ທ່ານ ລັດສະໝີ ສຸວັນທອງ (ຜູ້ເກົ່າ) ແລະ ທ່ານ ສຸລິສັກ ທຳນຸວົງ (ຜູ້ໃຫມ່), ທັງສອງທ່ານກໍ່ໄດ້ມີການກ່າວ ມອບ-ຮັບ ໜ້າທີ່ອັນສຳຄັນຕໍ່ກັນຢ່າງເປັນທາງການ ໂດຍມີໃຈຄວາມດັ່ງນີ້: ທ່ານ ລັດສະໝີ ສຸວັນທອງ ປະທານສະພາບໍລິຫານຜູ້ເກົ່າ ໄດ້ກ່າວຄຳຂອບໃຈມາຍັງບັນດາສະມາຊິກສະພາບໍລິຫານ ແລະ ບໍລິສັດ LAPNet ທີ່ໄດ້ຮ່ວມແຮງຮ່ວມໃຈກັນ ລະດົມຄວາມຄິດ ເຮັດໃຫ້ບໍລິສັດສາມາດກ້າວມາຍັງຈຸດນີ້ໄດ້ ຊຶ່ງແຕ່ລະຄຳເຫັນຂອງບັນດາສະມາຊິກສະພາບໍລິຫານ ແມ່ນມີຄວາມໝາຍຄວາມສຳຄັນໃນການຈັດຕັ້ງປະຕິບັດວຽກງານຂອງບໍລິສັດໃນໄລຍະຜ່ານມາ. ຢ່າງໃດກໍ່ຕາມ, ກໍ່ຍັງມີສິ່ງທ້າທາຍທີ່ຍັງຄົງຄ້າງຢູ່ໃນໃຈ ກໍ່ຄື ລະບົບໂອນເງິນຜ່ານມືຖືທີ່ພວກເຮົາມີຄວາມຕັ້ງໃຈຢາກເຮັດນັ້ນ ແມ່ນຍັງບໍ່ທັນສຳເລັດໂດຍສົມບູນເທື່ອ. ດັ່ງນັ້ນ, ຈຶ່ງຂໍຝາກໃຫ້ປະທານສະພາບໍລິຫານຜູ້ໃຫມ່ ເປັນຜູ້ສືບຕໍ່ນຳພາເຮັດໃຫ້ສຳເລັດ ແລະ ເຮັດໃຫ້ບໍລິສັດ LAPNet ກາຍເປັນບໍລິສັດຕົວແບບໃນການດຳເນີນທຸລະກິດທີ່ປະສົບຜົນສຳເລັດສູງສຸດ.</p>\n<p>ທ່ານ ສຸລິສັກ ທຳນຸວົງ ປະທານສະພາບໍລິຫານຜູ້ໃໝ່ ໄດ້ກ່າວຄຳຂອບໃຈ ແລະ ຊົມເຊີຍທ່ານປະທານສະພາບໍລິຫານຜູ້ເກົ່າ ຕໍ່ຜົນງານທີ່ມີໃນໄລຍະຜ່ານມາ ແລະ ກ່າວຂອບໃຈຕໍ່ທີ່ປະຊຸມ ທີ່ໄດ້ໃຫ້ຄວາມໄວ້ເນື້ອເຊື່ອໃຈແກ່ທ່ານ ໃນການເປັນຜູ້ສືບຕໍ່ພາລະກິດນຳພາບໍລິສັດ ກ້າວໄປເຖິງຈຸດໝາຍການເປັນສູນກາງເຊື່ອມຕໍ່ຂອງການຊຳລະ ໃຫ້ສາມາດເຊື່ອມໃຊ້ຮ່ວມກັນທົ່ວລະບົບ ຢ່າງໝັ້ນຄົງ. ພ້ອມນັ້ນ, ທ່ານກໍ່ຍັງໄດ້ນໍາເອົາເນື້ອໃນຈິດໃຈຂອງພາກລັດ ກໍ່ຄື ຂອງ ທະນາຄານແຫ່ງ ສປປ ລາວ ມາເຜີຍແຜ່ໃນທີ່ປະຊຸມໃຫ້ມີຄວາມເຂົ້າໃຈ ເຖິງການໃຫ້ຄວາມສຳຄັນຂອງພາກລັດ ຕໍ່ກັບພາລະບົດບາດຂອງບໍລິສັດ LAPNet, ໂດຍໄດ້ຊີ້ໃຫ້ເຫັນວ່າ: ຫົວໃຈຂອງຂະແໜງການທະນາຄານແມ່ນລະບົບການຊຳລະທຸລະກຳຍ່ອຍ ທີ່ ບໍລິສັດ LAPNet ເປັນຜູ້ຄວບຄຸມລະບົບນີ້ ເຮັດໃຫ້ການຊຳລະ ຫຼືການໂອນເງິນຂ້າມທະນາຄານ ມີຄວາມສະດວກສະບາຍ ແລະລະບົບນີ້ ເປັນອົງປະກອບຫຼັກໃນການປະກອບສ່ວນເຂົ້າໃນການຈັດຕັ້ງປະຕິບັດ ແຜນຍຸດທະສາດການພັດທະນາແໜງການເງິນ-ເງິນຕາ ແລະຍຸດທະສາດການພັດທະນາລະບົບການຊຳລະຂອງຂະແໜງທະນາຄານ-ການເງິນ ຂອງ ທະນາຄານແຫ່ງ ສປປ ລາວ ຊຶ່ງເປັນການສ້າງປະຖົມປັດໄຈໃຫ້ແກ່ການກ້າວໄປສູ່ເສດຖະກິດດິຈິຕອນ ຂອງລັດຖະບານທີ່ໄດ້ຖືກຮັບຮອງເອົາແລ້ວນັ້ນ. ນອກນັ້ນ, ກະຊວງການເງິນເອງກໍ່ມີແຜນແມ່ບົດໃນການຫັນການເກັບລາຍຮັບ ແລະຄຸ້ມຄອງລາຍຈ່າຍງົບປະມານ ເປັນທັນສະໄໝ. ສະນັ້ນ, ຈຶ່ງເປັນສິ່ງແນ່ນອນວ່າ ບໍລິສັດ LAPNet ຕ້ອງຮີບຮ້ອນສ້າງຕົນເອງໃຫ້ເຂັ້ມແຂງ ກາຍເປັນເປັນສູນກາງເຊື່ອມຕໍ່ຂອງການຊຳລະ ເພື່ອສ່ວນລວມຢ່າງແທ້ຈິງ. ສຸດທ້າຍ, ທ່ານປະທານສະພາບໍລິຫານຜູ້ໃໝ່ ກໍ່ໄດ້ໃຫ້ຄຳໝັ້ນສັນຍາ ຈະສືບຕໍ່ຜົນງານຂອງທ່ານປະທານຜູ້ເກົ່າໄດ້ສ້າງໄວ້ໃນໄລຍະຜ່ານມາ ແລະ ຈະນຳພາສະພາບໍລິຫານຊຸດໃໝ່ສ້າງຜົນງານໃໝ່ໃຫ້ດີຂຶ້ນກວ່າເກົ່າໃນຕໍ່ໜ້າ.</p>\n<p>&nbsp;</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/July2021/IMG_20210630_093413.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/July2021/IMG_20210630_094948.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/July2021/IMG_20210630_173602.jpg\" alt=\"\" /></p>', '2021-07-01 21:35:01', '2021-07-01 23:36:00'),
(285, 'posts', 'slug', 22, 'lao', 'lapnet-company-held-placement-new-chairman-of-board-directors', '2021-07-01 21:35:01', '2021-07-01 21:35:01'),
(286, 'posts', 'meta_description', 22, 'lao', 'ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ໄດ້ຈັດພິທີປະກາດ ມອບຮັບ ໜ້າທີ່ ປະທານສະພາບໍລິຫານຂອງບໍລິສັດ ລະຫວ່າງ ຜູ້ເກົ່າ ແລະ ຜູ້ໃຫມ່ ພ້ອມທັງປະກາດການແຕ່ງຕັ້ງຄະນະສະພາບໍລິຫານຊຸດໃໝ່ ຊຶ່ງພິທີໄດ້ຈັດຂຶ້ນໃນວາລະກອງປະຊຸມຜູ້ຖືຮຸ້ນສະໄໝວິສາມັນ ຄັ້ງທີ I ແລະ ກອງປະຊຸມສະພາບໍລິຫານ ສະໄໝສາມັນຄັ້ງທີ່ II ຂອງບໍລິສັດ ປະຈຳປີ 2021', '2021-07-01 21:35:01', '2021-07-01 21:35:01'),
(287, 'posts', 'meta_keywords', 22, 'lao', 'ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ໄດ້ຈັດພິທີປະກາດ ມອບຮັບ ໜ້າທີ່ ປະທານສະພາບໍລິຫານຂອງບໍລິສັດ ລະຫວ່າງ ຜູ້ເກົ່າ ແລະ ຜູ້ໃຫມ່ ພ້ອມທັງປະກາດການແຕ່ງຕັ້ງຄະນະສະພາບໍລິຫານຊຸດໃໝ່ ຊຶ່ງພິທີໄດ້ຈັດຂຶ້ນໃນວາລະກອງປະຊຸມຜູ້ຖືຮຸ້ນສະໄໝວິສາມັນ ຄັ້ງທີ I ແລະ ກອງປະຊຸມສະພາບໍລິຫານ ສະໄໝສາມັນຄັ້ງທີ່ II ຂອງບໍລິສັດ ປະຈຳປີ 2021', '2021-07-01 21:35:01', '2021-07-01 21:35:01'),
(288, 'posts', 'title', 23, 'lao', 'ພິທີເຊັນສັນຍາແຕ່ງຕັ້ງທີ່ປຶກສາດ້ານການເງິນ ລະຫວ່າງ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ແລະ ບໍລິສັດ ຫຼັກຊັບ ລ້ານຊ້າງ ມະຫາຊົນ', '2021-07-16 02:10:58', '2021-07-16 02:10:58'),
(289, 'posts', 'seo_title', 23, 'lao', 'ພິທີເຊັນສັນຍາແຕ່ງຕັ້ງທີ່ປຶກສາດ້ານການເງິນ ລະຫວ່າງ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ແລະ ບໍລິສັດ ຫຼັກຊັບ ລ້ານຊ້າງ ມະຫາຊົນ', '2021-07-16 02:10:58', '2021-07-16 02:10:58'),
(290, 'posts', 'excerpt', 23, 'lao', 'ວັນທີ 14 ກໍລະກົດ 2021 ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ໄດ້ຮ່ວມລົງນາມເຊັນສັນຍາແຕ່ງຕັ້ງ ທີ່ປຶກສາທາງການເງິນ ລະຫວ່າງ ບໍລິສັດ ລາວເນເຊິນນໍ ເພເມັ້ນເນັດເວີກ ຈຳກັດ ແລະ ບໍລິສັດ ຫຼັກຊັບ ລ້ານຊ້າງ ມະຫາຊົນ', '2021-07-16 02:10:58', '2021-07-16 02:10:58'),
(291, 'posts', 'body', 23, 'lao', '<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/July2021/WhatsApp%20Image%202021-07-14%20at%2014.05.00.jpeg\" alt=\"\" /></p>\n<p>ໃນຕອນບ່າຍຂອງວັນທີ 14 ກໍລະກົດ 2021 ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ໄດ້ຮ່ວມລົງນາມເຊັນສັນຍາແຕ່ງຕັ້ງ ທີ່ປຶກສາທາງການເງິນ ລະຫວ່າງ ບໍລິສັດ ລາວເນເຊິນນໍ ເພເມັ້ນເນັດເວີກ ຈຳກັດ ແລະ ບໍລິສັດ ຫຼັກຊັບ ລ້ານຊ້າງ ມະຫາຊົນ&nbsp; ໂດຍເປັນກຽດເຂົ້າຮ່ວມພິທີໃນຄັ້ງນີ້ມີ: ທ່ານ ສຸລິສັກ ທຳນຸວົງ ປະທານສະພາບໍລິຫານບໍລິສັດ LAPNet, ທ່ານ ວຽງຄຳ ວັນສີລາລົມ ປະທານສະພາບໍລິຫານ ບໍລິສັດ ຫຼັກຊັບລ້ານຊ້າງ ມະຫາຊົນ, ທ່ານ ຫົງຄຳ ເພັດດາວົງ ຜູ້ອຳນວຍການ ບໍລິສັດ LAPNet, ທ່ານ ອານຸກອນ ສຸທຳມະວົງ ຜູ້ອຳນວຍການ ບໍລິສັດ ຫຼັກຊັບລ້ານຊ້າງ ມະຫາຊົນ ນອກຈາກນັ້ນ ກໍ່ຍັງມີຄະນະອຳນວຍການ ແລະ ຄະນະພະແນກຂອງທັງສອງພາກສ່ວນເຂົ້າຮ່ວມ.</p>\n<ul>\n<li>ເປັນກຽດລົງນາມເຊັນສັນຍາແຕ່ງຕັ້ງທີ່ປຶກສາທາງການເງິນຄັ້ງນີ້ໂດຍ:</li>\n</ul>\n<ol>\n<li style=\"list-style-type: none;\">\n<ol>\n<li>ທ່ານ ຫົງຄຳ ເພັດດາວົງ ຜູ້ອຳນວຍການ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ</li>\n<li>ທ່ານ ອານຸກອນ ສຸທຳມະວົງ ຜູ້ອຳນວຍການ ບໍລິສັດ ຫຼັກຊັບລ້ານຊ້າງ ມະຫາຊົນ</li>\n</ol>\n</li>\n</ol>\n<p>ຈຸດປະສົງຂອງການລົງນາມເຊັນສັນຍາແຕ່ງຕັ້ງທີ່ປຶກສາທາງການເງິນໃນຄັ້ງນີ້ ແມ່ນເພື່ອ ປັບປຸງໂຄງສ້າງການດຳເນີນທຸລະກິດຂອງບໍລິສັດໃຫ້ເຂັ້ມແຂງ ໃນໄລຍະແຕ່ປີ 2021 ຫາ ປີ 2025.</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/July2021/WhatsApp%20Image%202021-07-14%20at%2013.53.57.jpeg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/July2021/WhatsApp%20Image%202021-07-14%20at%2013.53.56.jpeg\" alt=\"\" /></p>', '2021-07-16 02:10:58', '2021-07-16 02:35:21'),
(292, 'posts', 'slug', 23, 'lao', 'signing-ceremony-lapnet-and-lanexang-as-financial-advisor', '2021-07-16 02:10:58', '2021-07-16 02:10:58'),
(293, 'posts', 'meta_description', 23, 'lao', 'ວັນທີ 14 ກໍລະກົດ 2021 ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ໄດ້ຮ່ວມລົງນາມເຊັນສັນຍາແຕ່ງຕັ້ງ ທີ່ປຶກສາທາງການເງິນ ລະຫວ່າງ ບໍລິສັດ ລາວເນເຊິນນໍ ເພເມັ້ນເນັດເວີກ ຈຳກັດ ແລະ ບໍລິສັດ ຫຼັກຊັບ ລ້ານຊ້າງ ມະຫາຊົນ', '2021-07-16 02:10:58', '2021-07-16 02:10:58'),
(294, 'posts', 'meta_keywords', 23, 'lao', 'ວັນທີ 14 ກໍລະກົດ 2021 ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ ໄດ້ຮ່ວມລົງນາມເຊັນສັນຍາແຕ່ງຕັ້ງ ທີ່ປຶກສາທາງການເງິນ ລະຫວ່າງ ບໍລິສັດ ລາວເນເຊິນນໍ ເພເມັ້ນເນັດເວີກ ຈຳກັດ ແລະ ບໍລິສັດ ຫຼັກຊັບ ລ້ານຊ້າງ ມະຫາຊົນ', '2021-07-16 02:10:58', '2021-07-16 02:10:58'),
(297, 'menu_items', 'title', 82, 'lao', 'ນິຕິກຳ', '2021-11-04 01:51:30', '2021-11-04 01:51:30'),
(298, 'pages', 'title', 19, 'lao', 'ນິຕິກຳ', '2021-11-04 02:01:28', '2021-11-04 02:01:28'),
(299, 'pages', 'slug', 19, 'lao', 'Lecal', '2021-11-04 02:01:28', '2021-11-04 02:01:28'),
(300, 'pages', 'body', 19, 'lao', '<p>ນິຕິກຳ ກ່ຽວກັບ ກົດລະບຽບການເຂົ້າເປັນສະມາຊິກ ຄ່າທຳນຽມ</p>\n<p>ປະເພດຍ່ອຍ:</p>\n<ol>\n<li>ນິຕິກຳທີ່ຕິດພັນກັບສະມາຊິກ&nbsp;</li>\n<li>ແຈ້ງການ</li>\n</ol>\n<p><a href=\"https://win01-mailpro.zth.netdesignhost.com/d/lapnet.com.la/eQEe4w/QAP7PGDR9P0V\">ລະບຽບວ່າດ້ວຍສະມາຊິກຂອງລະບົບຊຳລະຂ້າມທະນາຄານເທິງມືຖືຂອງບໍລິສັດ LAPNet</a></p>\n<p><a href=\"https://win01-mailpro.zth.netdesignhost.com/d/lapnet.com.la/eQEe4w/2TV0BFDR9P0V\">ຮ່າງລະບຽບວ່າດ້ວຍການເປັນສະມາຊິກລະບົບບັດທະນາຄານຮ່ວມກັນ</a></p>', '2021-11-04 02:01:28', '2021-11-04 02:01:28'),
(301, 'menu_items', 'title', 83, 'lao', 'ກົດລະບຽບສຳລັບສະມາຊິກ', '2021-11-04 02:42:28', '2021-11-04 19:18:28'),
(302, 'menu_items', 'title', 84, 'lao', 'ແຈ້ງການ', '2021-11-04 02:42:28', '2021-11-04 19:21:15'),
(303, 'pages', 'title', 20, 'lao', 'ແຈ້ງການ', '2021-11-04 19:29:28', '2021-11-04 19:29:28'),
(304, 'pages', 'slug', 20, 'lao', 'announcement-document', '2021-11-04 19:29:28', '2021-11-04 19:29:28'),
(305, 'pages', 'title', 21, 'lao', 'ນິຕິກຳ', '2021-11-04 19:33:01', '2021-11-04 19:49:59'),
(306, 'pages', 'slug', 21, 'lao', 'rule-for-member-document', '2021-11-04 19:33:01', '2021-11-04 19:33:01'),
(307, 'pages', 'body', 20, 'lao', '<h3>ເອກະສານແຈ້ງການ</h3>', '2021-11-04 19:34:28', '2021-11-04 19:37:19'),
(308, 'pages', 'body', 21, 'lao', '<h3>ກົດລະບຽບສຳລັບສະມາຊິກ</h3>\n<ol>\n<li><a href=\"https://win01-mailpro.zth.netdesignhost.com/d/lapnet.com.la/eQEe4w/QAP7PGDR9P0V\">ລະບຽບວ່າດ້ວຍສະມາຊິກຂອງລະບົບຊຳລະຂ້າມທະນາຄານເທິງມືຖືຂອງບໍລິສັດ LAPNet</a></li>\n<li><a href=\"https://win01-mailpro.zth.netdesignhost.com/d/lapnet.com.la/eQEe4w/2TV0BFDR9P0V\">ຮ່າງລະບຽບວ່າດ້ວຍການເປັນສະມາຊິກລະບົບບັດທະນາຄານຮ່ວມກັນ</a></li>\n</ol>', '2021-11-04 19:35:32', '2021-11-04 19:45:20'),
(309, 'posts', 'title', 24, 'lao', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານໄອທີ ຈໍານວນ 04 ຕໍາແໜ່ງ\" ', '2021-12-14 03:06:56', '2021-12-14 03:11:04'),
(310, 'posts', 'seo_title', 24, 'lao', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານໄອທີ ຈໍານວນ 04 ຕໍາແໜ່ງ\" ', '2021-12-14 03:06:56', '2021-12-14 03:11:04'),
(311, 'posts', 'excerpt', 24, 'lao', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານໄອທີ ຈໍານວນ 04 ຕໍາແໜ່ງ\" ', '2021-12-14 03:06:56', '2021-12-14 03:11:04'),
(312, 'posts', 'body', 24, 'lao', '<p><strong>1.&nbsp;&nbsp;&nbsp; <span style=\"text-decoration: underline;\">ວິສະວະກອນບຳລຸງຮັກສາ ແລະ ພັດທະນາໂປຣແກຣມເບື້ອງໜ້າ (Front-End Application and Software Engineer) 01 ຕໍາແໜ່ງ</span></strong><br /><strong>&bull;&nbsp;&nbsp;&nbsp; ໜ້າທີ່ຮັບຜິດຊອບ:</strong><br />ຮັບຜິດຊອບໃນການບຳລຸງຮັກສາ ແລະ ແກ້ໄຂບັນຫາຕ່າງໆ ທີ່ເກີດຂື້ນໃນລະບົບບັດທະນາຄານຮ່ວມກັນ (LAPS) ແລະ ລະບົບໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື (LMPS), ພ້ອມທັງຄົ້ນຄວ້າພັດທະນາລະບົບໂປຣແກຣມ ແລະ ເຕັກໂນໂລຊີໃໝ່ໆ (ເບື້ອງໜ້າ) ເພື່ອຍົກລະດັບຂະບວນການເຮັດວຽກຂອງລະບົບທີ່ນຳໃຊ້ຢູ່ປັດຈຸບັນ ຂອງບໍລິສັດ LAPNet ໃຫ້ມີປະສິດທິພາບຍິ່ງຂື້ນ ແລະ ຮັບຜິດຊອບວຽກງານສະເພາະອື່ນໆ ຕາມການມອບໝາຍຈາກຄະນະພະແນກ.&nbsp; <br /><strong>&bull;&nbsp;&nbsp;&nbsp; ເງື່ອນໄຂຜູ້ສະໝັກ:</strong><br />&ndash;&nbsp;&nbsp;&nbsp; ເພດຍິງ ຫຼື ຊາຍ ອາຍຸ 20 - 30 ປີ;<br />&ndash;&nbsp;&nbsp;&nbsp; ຈົບປະລີນຍາຕີຂື້ນໄປ (ສາຂາໄອທີ ຫຼື ສາຂາອື່ນທີ່ກ່ຽວຂ້ອງ);<br />&ndash;&nbsp;&nbsp;&nbsp; ຄະແນນສະເລ່ຍ 2.50 ຂຶ້ນໄປ; <br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮູ້ກ່ຽວກັບລະບົບປະຕິບັດການ Linux ແລະ Window;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮູ້ກ໋ຽວກັບການນຳໃຊ້ຖານຂໍ້ມູນເຊັ່ນ: MySQL, MariaDB, PostgreSQL ແລະ ອື່ນໆ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສາມາດພັດທະນາຊັອບແວດ້ວຍພາສາເຊັ່ນ: HTML, CSS, Java script ແລະ ອື່ນໆ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສາມາດນຳໃຊ້ພາສາອັງກິດໄດ້ໃນລະດັບດີ;<br />&ndash;&nbsp;&nbsp;&nbsp; ພ້ອມຮຽນຮູ້ເທັກໂນໂລຊີໃໝ່ໆຕະຫຼອດເວລາ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮັບຜິດຊອບສູງຕໍ່ໜ້າວຽກຂອງຕົນ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຫ້າວຫັນຕໍ່ໜ້າທີ່ຮັບຜິດຊອບ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີທັກສະໃນການສື່ສານ ແລະ ສາມາດເຮັດວຽກເປັນທີມໄດ້;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີມະນຸດສຳພັນທີ່ດີ, ອົດທົນ, ແລະ ສາມາດເຮັດວຽກລ່ວງເວລາໄດ້;<br />&ndash;&nbsp;&nbsp;&nbsp; ຖ້າມີປະສົບການໃນການເຮັດວຽກມາກ່ອນ ຈະພິຈາລະນາເປັນພິເສດ.</p>\n<p><strong>2.&nbsp;&nbsp;&nbsp; <span style=\"text-decoration: underline;\">ວິສະວະກອນບຳລຸງຮັກສາ ແລະ ພັດທະນາໂປຣແກຣມເບື້ອງຫຼັງ (Back-End Application and Software Engineer) 01 ຕໍາແໜ່ງ</span></strong><br /><strong>&bull;&nbsp;&nbsp;&nbsp; ໜ້າທີ່ຮັບຜິດຊອບ:</strong><br />ຮັບຜິດຊອບໃນການບຳລຸງຮັກສາ ແລະ ແກ້ໄຂບັນຫາຕ່າງໆ ທີ່ເກີດຂື້ນໃນລະບົບບັດທະນາຄານຮ່ວມກັນ (LAPS) ແລະ ລະບົບໂອນເງິນຂ້າມທະນາຄານເທິງມືຖື (LMPS), ພ້ອມທັງຄົ້ນຄວ້າພັດທະນາລະບົບໂປຣແກຣມ ແລະ ເຕັກໂນໂລຊີໃໝ່ໆ (ເບື້ອງຫຼັງ) ເພື່ອຍົກລະດັບຂະບວນການເຮັດວຽກຂອງລະບົບທີ່ນຳໃຊ້ຢູ່ປັດຈຸບັນຂອງ ບໍລິສັດ LAPNet ໃຫ້ມີປະສິດທິພາບຍິ່ງຂື້ນ ແລະ ຮັບຜິດຊອບວຽກງານທີ່ຕິດພັນອື່ນໆ ຕາມການມອບໝາຍຈາກຄະນະພະແນກ.&nbsp;&nbsp; <br />&bull;&nbsp;&nbsp;&nbsp; <strong>ເງື່ອນໄຂຜູ້ສະໝັກ:</strong><br />&ndash;&nbsp;&nbsp;&nbsp; ເພດຍິງ ຫຼື ຊາຍ ອາຍຸ 20 - 30 ປີ;<br />&ndash;&nbsp;&nbsp;&nbsp; ຈົບປະລີນຍາຕີຂື້ນໄປ (ສາຂາໄອທີ ຫຼືສາຂາອື່ນທີ່ກ່ຽວຂ້ອງ);<br />&ndash;&nbsp;&nbsp;&nbsp; ຄະແນນສະເລ່ຍ 2.50 ຂຶ້ນໄປ; <br />&ndash;&nbsp;&nbsp;&nbsp; ສາມາດນຳໃຊ້ພາສາອັງກິດໄດ້ໃນລະດັບດີ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮູ້ກ່ຽວກັບລະບົບປະຕິບັດການ Linux ແລະ Window;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮູ້ກ໋ຽວກັບການນຳໃຊ້ຖານຂໍ້ມູນເຊັ່ນ: MySQL, MariaDB, PostgreSQL ແລະ ອື່ນໆ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສາມາດພັດທະນາຊັອບແວດ້ວຍພາສາເຊັ່ນ: C++, C#, JAVA, PHP, VB.net, Python ແລະ ອື່ນໆ;<br />&ndash;&nbsp;&nbsp;&nbsp; ພ້ອມຮຽນຮູ້ເທັກໂນໂລຊີໃໝ່ໆຕະຫຼອດເວລາ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮັບຜິດຊອບສູງຕໍ່ໜ້າວຽກຂອງຕົນ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຫ້າວຫັນຕໍ່ໜ້າທີ່ຮັບຜິດຊອບ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີທັກສະໃນການສື່ສານ ແລະ ສາມາດເຮັດວຽກເປັນທີມໄດ້;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີມະນຸດສຳພັນທີ່ດີ, ອົດທົນ, ແລະ ສາມາດເຮັດວຽກລ່ວງເວລາໄດ້;<br />&ndash;&nbsp;&nbsp;&nbsp; ຖ້າມີປະສົບການໃນການເຮັດວຽກມາກ່ອນ ຈະພິຈາລະນາເປັນພິເສດ.</p>\n<p><strong>3.&nbsp;&nbsp;&nbsp; <span style=\"text-decoration: underline;\">ພະນັກງານ Operation 02 ຕໍາແໜ່ງ</span></strong><br /><strong>&bull;&nbsp;&nbsp;&nbsp; ໜ້າທີ່ຮັບຜິດຊອບ:</strong><br />ຮັບຜິດຊອບໃນການໃຫ້ການສະໜັບສະໜູນສະມາຊິກ, ຄົ້ນຄວ້າ ແລະ ວິເຄາະ, ຕິດຕາມທຸລະກຳ ແລະ ແກ້ໄຂບັນຫາຕ່າງໆ ທີ່ເກີດຂື້ນກັບການໃຫ້ບໍລິການຂອງລະບົບ ແລະ ຮັບຜິດຊອບວຽກງານອື່ນໆ ທີ່ໄດ້ຮັບການມອບໝາຍຈາກຄະນະພະແນກ.<br /><strong>&bull;&nbsp;&nbsp;&nbsp; ເງື່ອນໄຂຜູ້ສະໝັກ:</strong><br />&ndash;&nbsp;&nbsp;&nbsp; ເພດຍິງ ຫຼື ຊາຍ ອາຍຸ 20 - 30 ປີ;<br />&ndash;&nbsp;&nbsp;&nbsp; ຈົບປະລີນຍາຕີຂື້ນໄປ (ສາຂາໄອທີ ຫຼື ສາຂາອື່ນທີ່ກ່ຽວຂ້ອງ);<br />&ndash;&nbsp;&nbsp;&nbsp; ຄະແນນສະເລ່ຍ 2.50 ຂຶ້ນໄປ; <br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮູ້ກ່ຽວກັບລະບົບປະຕິບັດການ Linux ແລະ Window;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມເຂົ້າໃຈກ່ຽວກັບການບໍລິຫານຈັດການລະບົບຖານຂໍ້ມູນເຊັ່ນ: Oracle, DB2, SQL, MySQL ແລະ ອື່ນໆ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສາມາດນຳໃຊ້ພາສາອັງກິດໄດ້ໃນລະດັບດີ ຫຼື ສາມາດສື່ສານພາສາຈີນໄດ້ຍິ່ງເປັນການດີ;<br />&ndash;&nbsp;&nbsp;&nbsp; ພ້ອມຮຽນຮູ້ເທັກໂນໂລຊີໃໝ່ໆຕະຫຼອດເວລາ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮັບຜິດຊອບສູງຕໍ່ໜ້າວຽກຂອງຕົນ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຫ້າວຫັນຕໍ່ໜ້າທີ່ຮັບຜິດຊອບ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີທັກສະໃນການສື່ສານ ແລະ ສາມາດເຮັດວຽກເປັນທີມໄດ້;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີມະນຸດສຳພັນທີ່ດີ, ອົດທົນ, ແລະ ສາມາດເຮັດວຽກລ່ວງເວລາໄດ້;<br />&ndash;&nbsp;&nbsp;&nbsp; ຖ້າມີປະສົບການໃນການເຮັດວຽກມາກ່ອນ ຈະພິຈາລະນາເປັນພິເສດ.</p>\n<p><strong>ເອກະສານຍື່ນສະໝັກງານປະກອບມີ:</strong><br />1.&nbsp;&nbsp;&nbsp; ຮູບ 3x4 ຈຳນວນ 02 ໃບ (ພື້ນຟ້າ ຫຼື ພື້ນຂາວ);<br />2.&nbsp;&nbsp;&nbsp; ໃບຢັ້ງຢືນທີ່ຢູ່ຕິດຮູບ (ບໍ່ເກີນ 03 ເດືອນ) ສະບັບແທ້;<br />3.&nbsp;&nbsp;&nbsp; ສຳເນົາໃບປະກາຊະນີຍະບັດ, ໃບຄະແນນ ແລະ ໃບຜ່ານງານ (ຖ້າມີ);<br />4.&nbsp;&nbsp;&nbsp; ສຳເນົາບັດປະຈຳຕົວ ຫຼື ສຳມະໂນຄົວ;<br />5.&nbsp;&nbsp;&nbsp; ຊີວະປະຫວັດຫຍໍ້ (ຂຽນດ້ວຍຕົນເອງ);<br />6.&nbsp;&nbsp;&nbsp; ແບບຟອມສະໝັກວຽກຂອງບໍລິສັດ, ສາມາດດາວໂຫຼດແບບຟອມໄດ້ທີ່ <a href=\"https://drive.google.com/file/d/16GkWRnHKDmjJLbjgubD4cnSXb-WSKV0o/view?fbclid=IwAR10hcB1R5WiOC4TkHNjcQgINCcDu_uL7LjZkZDLXvVnrh-3xd6qh6vGkSo\" target=\"_blank\" rel=\"noopener\">Download Form</a>;<br />7.&nbsp;&nbsp;&nbsp; ເອກະສານອື່ນ ທີ່ຈຳເປັນຈະຮຽກເກັບຕາມພາຍຫຼັງ.<br />ເວລາເຂົ້າມາຍື່ນເອກະສານຕ້ອງເອົາເອກະສານກ່ຽວຂ້ອງທີ່ເປັນສະບັບແທ້ເພື່ອມາຢັ້ງຢືນ ເຊັ່ນ: ໃບປະກາຊະນີຍະບັດ, ໃບຄະແນນ, ໃບຜ່ານງານ, ບັດປະຈຳຕົວ ຫຼື ສຳມະໂນຄົວ ແລະ ເອກະສານອື່ນໆ (ຖ້າມີ).<br /><strong>(ໝາຍເຫດ: ເອກະສານທີ່ມາຍື່ນ ທາງບໍລິສັດຈະບໍ່ສົ່ງຄືນ)</strong><br /><br />ທ່ານໃດສົນໃຈສາມາດຍື່ນເອກະສານໄດ້ດ້ວຍຕົນເອງທີ່ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ສຳນັກງານຕັ້ງຢູ່ &ldquo;ຊັ້ນ 05 ຕຶກສຳນັກງານຄະນະກຳມະການຄຸ້ມຄອງຫຼັກຊັບ&rdquo; ບ້ານ ໂພນສະອາດ, ເມືອງ ໄຊເສດຖາ, ນະຄອນຫຼວງວຽງຈັນ ໃນໂມງລັດຖະການ. <br />-&nbsp;&nbsp;&nbsp; ເລີ່ມເປີດຮັບເອກະສານແຕ່ວັນທີ 14 ທັນວາ 2021&nbsp; ປິດຮັບເອກະສານ ວັນທີ 31 ມັງກອນ 2022;<br />-&nbsp;&nbsp;&nbsp; ສຳລັບຜູ້ທີ່ຢູ່ຕ່າງແຂວງ ຫຼື ຜູ້ທີ່ບໍ່ສະດວກເຂົ້າມາຍື່ນໃບສະໝັກດ້ວຍຕົນເອງແມ່ນສາມາດສົ່ງເອກະສານທັງໝົດມາຍັງອີເມວ info@lapnet.com.la, ສ່ວນມື້ສອບເສັງ ຫຼື ມື້ທີ່ມາເອົາໃບເຂົ້າຫ້ອງເສັງຕ້ອງຖືເອກະສານທັງໝົດເຂົ້າມານຳ. ສຳລັບຜູ້ທີ່ມາຈາກຕ່າງແຂວງ ທາງບໍລິສັດບໍ່ມີນະໂຍບາຍທີ່ພັກເຊົາໃຫ້ ຊຶ່ງຜູ້ກ່ຽວຕ້ອງກຸ້ມຕົນເອງສຳລັບສະຖານທີ່ພັກເຊົາໃນເວລາເຂົ້າມາສອບເສັງ;<br />-&nbsp;&nbsp;&nbsp; ໂດຍອີງຕາມສະຖານະການຂອງການລະບາດພະຍາດ ໂຄວິດ-19 ໃນປັດຈຸບັນ, ສຳລັບວັນ ແລະ ເວລາ ໃນການສອບເສັງທາງບໍລິສັດ ຈະໄດ້ມີການແຈ້ງການຕື່ມຕາມພາຍຫຼັງ;<br />-&nbsp;&nbsp;&nbsp; ສອບຖາມຂໍ້ມູນ ເພີ່ມເຕີມ ໂທ: 021 417915.</p>\n<p style=\"text-align: center;\"><a href=\"https://drive.google.com/file/d/16GkWRnHKDmjJLbjgubD4cnSXb-WSKV0o/view?fbclid=IwAR10hcB1R5WiOC4TkHNjcQgINCcDu_uL7LjZkZDLXvVnrh-3xd6qh6vGkSo\" target=\"_blank\" rel=\"noopener\">Download Form</a></p>', '2021-12-14 03:06:56', '2021-12-21 19:02:09'),
(313, 'posts', 'slug', 24, 'lao', 'job-vacancy-it-2021', '2021-12-14 03:06:56', '2021-12-14 03:11:33'),
(314, 'posts', 'meta_description', 24, 'lao', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານໄອທີ ຈໍານວນ 04 ຕໍາແໜ່ງ\" ', '2021-12-14 03:06:56', '2021-12-14 03:11:04'),
(315, 'posts', 'meta_keywords', 24, 'lao', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານໄອທີ ຈໍານວນ 04 ຕໍາແໜ່ງ\" ', '2021-12-14 03:06:56', '2021-12-14 03:11:04'),
(316, 'posts', 'title', 25, 'lao', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານບໍລິຫານ  ຈໍານວນ 01 ຕໍາແໜ່ງ\" ', '2021-12-14 03:16:06', '2021-12-14 03:16:06'),
(317, 'posts', 'seo_title', 25, 'lao', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານບໍລິຫານ  ຈໍານວນ 01 ຕໍາແໜ່ງ\" ', '2021-12-14 03:16:06', '2021-12-14 03:16:06'),
(318, 'posts', 'excerpt', 25, 'lao', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານບໍລິຫານ  ຈໍານວນ 01 ຕໍາແໜ່ງ\" ', '2021-12-14 03:16:06', '2021-12-14 03:16:06'),
(319, 'posts', 'body', 25, 'lao', '<p><strong>1.&nbsp;&nbsp;&nbsp; <span style=\"text-decoration: underline;\">ພະນັກງານ ການເງິນ 01 ຕໍາແໜ່ງ</span></strong><br /><strong>&bull;&nbsp;&nbsp;&nbsp; ໜ້າທີ່ຮັບຜິດຊອບ:</strong><br />&ndash;&nbsp;&nbsp;&nbsp; ຄຸ້ມຄອງບໍລິຫານຄັງເງິນສົດຂອງບໍລິສັດ ແລະ ບັນທຶກຕິດຕາມບັນດາລາຍການທີ່ເກີດຂື້ນ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສ້າງເອກະສານການເບີກຈ່າຍໃຫ້ພາກສ່ວນກ່ຽວຂ້ອງຂອງບໍລິສັດ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສ້າງເອກະສານຮຽກເກັບເງິນນຳບັນດາຂະແໜງການ ແລະ ຫົວໜ່ວຍທຸລະກິດທີ່ກ່ຽວຂ້ອງຂອງບໍລິສັດ;<br />&ndash;&nbsp;&nbsp;&nbsp; ເກັບກຳບັນດາເອກະສານການເບີກຈ່າຍຂອງບໍລິສັດ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສະຫຼຸບລາຍງານບັນດາປຶ້ມຕິດຕາມເງິນສົດ, ເງິນຝາກທະນາຄານ ປະຈຳເດືອນ, ປະຈຳໄຕມາດ ແລະ ປະຈຳປີ ໃຫ້ກັບບໍລິສັດ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສ້າງລາຍການໂອນ-ຊຳລະ ລາຍຈ່າຍທີ່ເກີດຂື້ນພາຍໃນບໍລິສັດ;<br />&ndash;&nbsp;&nbsp;&nbsp; ສ້າງແຜນລາຍຮັບ-ລາຍຈ່າຍ ປະຈຳໄຕມາດ ແລະ ປະຈຳປີ ຂອງບໍລິສັດ;<br />&ndash;&nbsp;&nbsp;&nbsp; ປະຕິບັດໜ້າທີ່ອື່ນໆ ຕາມການມອບໝາຍຂອງຄະນະພະແນກ ແລະ ຄະນະອຳນວຍການ.&nbsp;&nbsp; <br /><strong>&bull;&nbsp;&nbsp;&nbsp; ເງື່ອນໄຂຜູ້ສະໝັກ:</strong><br />&ndash;&nbsp;&nbsp;&nbsp; ເພດຍິງ ຫຼື ຊາຍ ອາຍຸ 25 - 35 ປີ<br />&ndash;&nbsp;&nbsp;&nbsp; ຈົບປະລີນຍາຕີຂື້ນໄປ (ສາຂາການເງິນ-ການບັນຊີ ຫຼື ສາຂາອື່ນທີ່ກ່ຽວຂ້ອງ);<br />&ndash;&nbsp;&nbsp;&nbsp; ຄະແນນສະເລ່ຍ 3.00 ຂຶ້ນໄປ; <br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຮັບຜິດຊອບສູງຕໍ່ໜ້າວຽກຂອງຕົນ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມຫ້າວຫັນຕໍ່ໜ້າທີ່ຮັບຜິດຊອບ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີຄວາມສາມາດສື່ສານພາສາອັງກິດໄດ້ໃນລະດັບດີ ໂດຍສະເພາະສັບທາງດ້ານການເງິນ-ການບັນຊີ;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີທັກສະໃນການສື່ສານ ແລະ ສາມາດເຮັດວຽກເປັນທີມໄດ້;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີມະນຸດສຳພັນທີ່ດີ, ອົດທົນ, ແລະ ສາມາດເຮັດວຽກລ່ວງເວລາໄດ້;<br />&ndash;&nbsp;&nbsp;&nbsp; ມີປະສົບການໃນການເຮັດວຽກດ້ານການເງິນຢ່າງໜ້ອຍ 02 ປີ ຈະພິຈາລະນາເປັນພິເສດ.</p>\n<p><strong>ເອກະສານຍື່ນສະໝັກງານປະກອບມີ:</strong><br />1.&nbsp;&nbsp;&nbsp; ຮູບ 3x4 ຈຳນວນ 02 ໃບ (ພື້ນຟ້າ ຫຼື ພື້ນຂາວ);<br />2.&nbsp;&nbsp;&nbsp; ໃບຢັ້ງຢືນທີ່ຢູ່ຕິດຮູບ (ບໍ່ເກີນ 03 ເດືອນ) ສະບັບແທ້;<br />3.&nbsp;&nbsp;&nbsp; ສຳເນົາໃບປະກາຊະນີຍະບັດ, ໃບຄະແນນ ແລະ ໃບຜ່ານງານ (ຖ້າມີ);<br />4.&nbsp;&nbsp;&nbsp; ສຳເນົາບັດປະຈຳຕົວ ຫຼື ສຳມະໂນຄົວ;<br />5.&nbsp;&nbsp;&nbsp; ຊີວະປະຫວັດຫຍໍ້ (ຂຽນດ້ວຍຕົນເອງ);<br />6.&nbsp;&nbsp;&nbsp; ແບບຟອມສະໝັກວຽກຂອງບໍລິສັດ, ສາມາດດາວໂຫຼດແບບຟອມໄດ້ທີ່ <a href=\"https://drive.google.com/file/d/16GkWRnHKDmjJLbjgubD4cnSXb-WSKV0o/view?fbclid=IwAR10hcB1R5WiOC4TkHNjcQgINCcDu_uL7LjZkZDLXvVnrh-3xd6qh6vGkSo\" target=\"_blank\" rel=\"noopener\">Download Form</a>;<br />7.&nbsp;&nbsp;&nbsp; ເອກະສານອື່ນ ທີ່ຈຳເປັນຈະຮຽກເກັບຕາມພາຍຫຼັງ.<br />ເວລາເຂົ້າມາຍື່ນເອກະສານຕ້ອງເອົາເອກະສານກ່ຽວຂ້ອງທີ່ເປັນສະບັບແທ້ເພື່ອມາຢັ້ງຢືນ ເຊັ່ນ: ໃບປະກາຊະນີຍະບັດ, ໃບຄະແນນ, ໃບຜ່ານງານ, ບັດປະຈຳຕົວ ຫຼື ສຳມະໂນຄົວ ແລະ ເອກະສານອື່ນໆ (ຖ້າມີ).<br /><strong>(ໝາຍເຫດ: ເອກະສານທີ່ມາຍື່ນ ທາງບໍລິສັດຈະບໍ່ສົ່ງຄືນ)</strong><br /><br />ທ່ານໃດສົນໃຈສາມາດຍື່ນເອກະສານໄດ້ດ້ວຍຕົນເອງທີ່ ບໍລິສັດ ລາວເນເຊີນນໍ ເພເມັ້ນ ເນັດເວີກ ຈຳກັດ (LAPNet) ສຳນັກງານຕັ້ງຢູ່ &ldquo;ຊັ້ນ 05 ຕຶກສຳນັກງານຄະນະກຳມະການຄຸ້ມຄອງຫຼັກຊັບ&rdquo; ບ້ານ ໂພນສະອາດ, ເມືອງ ໄຊເສດຖາ, ນະຄອນຫຼວງວຽງຈັນ ໃນໂມງລັດຖະການ. <br />-&nbsp;&nbsp;&nbsp; ເລີ່ມເປີດຮັບເອກະສານແຕ່ວັນທີ 14 ທັນວາ 2021&nbsp; ປິດຮັບເອກະສານ ວັນທີ 31 ມັງກອນ 2022;<br />-&nbsp;&nbsp;&nbsp; ສຳລັບຜູ້ທີ່ຢູ່ຕ່າງແຂວງ ຫຼື ຜູ້ທີ່ບໍ່ສະດວກເຂົ້າມາຍື່ນໃບສະໝັກດ້ວຍຕົນເອງແມ່ນສາມາດສົ່ງເອກະສານທັງໝົດມາຍັງອີເມວ info@lapnet.com.la, ສ່ວນມື້ສອບເສັງ ຫຼື ມື້ທີ່ມາເອົາໃບເຂົ້າຫ້ອງເສັງຕ້ອງຖືເອກະສານທັງໝົດເຂົ້າມານຳ. ສຳລັບຜູ້ທີ່ມາຈາກຕ່າງແຂວງ ທາງບໍລິສັດບໍ່ມີນະໂຍບາຍທີ່ພັກເຊົາໃຫ້ ຊຶ່ງຜູ້ກ່ຽວຕ້ອງກຸ້ມຕົນເອງສຳລັບສະຖານທີ່ພັກເຊົາໃນເວລາເຂົ້າມາສອບເສັງ;<br />-&nbsp;&nbsp;&nbsp; ໂດຍອີງຕາມສະຖານະການຂອງການລະບາດພະຍາດ ໂຄວິດ-19 ໃນປັດຈຸບັນ, ສຳລັບວັນ ແລະ ເວລາ ໃນການສອບເສັງທາງບໍລິສັດ ຈະໄດ້ມີການແຈ້ງການຕື່ມຕາມພາຍຫຼັງ;<br />-&nbsp;&nbsp;&nbsp; ສອບຖາມຂໍ້ມູນ ເພີ່ມເຕີມ ໂທ: 021 417915.</p>\n<p style=\"text-align: center;\"><a href=\"https://drive.google.com/file/d/16GkWRnHKDmjJLbjgubD4cnSXb-WSKV0o/view?fbclid=IwAR10hcB1R5WiOC4TkHNjcQgINCcDu_uL7LjZkZDLXvVnrh-3xd6qh6vGkSo\" target=\"_blank\" rel=\"noopener\">Download Form</a></p>', '2021-12-14 03:16:06', '2021-12-21 19:03:29'),
(320, 'posts', 'slug', 25, 'lao', 'job-vacancy-management-2021', '2021-12-14 03:16:06', '2021-12-14 03:16:06'),
(321, 'posts', 'meta_description', 25, 'lao', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານບໍລິຫານ  ຈໍານວນ 01 ຕໍາແໜ່ງ\" ', '2021-12-14 03:16:06', '2021-12-14 03:16:06'),
(322, 'posts', 'meta_keywords', 25, 'lao', 'ປະກາດຮັບສະໝັກພະນັກງານ \"ດ້ານບໍລິຫານ  ຈໍານວນ 01 ຕໍາແໜ່ງ\" ', '2021-12-14 03:16:06', '2021-12-14 03:16:06'),
(323, 'posts', 'title', 26, 'lao', 'ເທດສະການສະຕາດອັບລາວ ບໍລິສັດ LAPNet ກໍໄດ້ຮັບກຽດໃຫ້ເຂົ້າຮ່ວມບັນຍາຍເພື່ອນຳສະເໜີກ່ຽວກັບ ບໍລິສັດ LAPNet', '2021-12-20 21:35:08', '2021-12-20 21:35:08'),
(324, 'posts', 'seo_title', 26, 'lao', 'ເທດສະການສະຕາດອັບລາວ', '2021-12-20 21:35:08', '2021-12-20 21:35:08'),
(325, 'posts', 'excerpt', 26, 'lao', 'ເທດສະການສະຕາດອັບລາວ ບໍລິສັດ LAPNet ກໍໄດ້ຮັບກຽດໃຫ້ເຂົ້າຮ່ວມບັນຍາຍເພື່ອນຳສະເໜີກ່ຽວກັບ ບໍລິສັດ LAPNet', '2021-12-20 21:35:08', '2021-12-20 21:35:08'),
(326, 'posts', 'body', 26, 'lao', '<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Lao%20Startup%20Festival/269595710_377442740845000_7055633996643035590_n.jpg\" alt=\"\" />&lt;/</p>\n<p>ໃນວັນທີ 18 ທັນວາ 2021 ທີ່ງານເທດສະການສະຕາດອັບລາວ. ໃນງານຄັ້ງນີ້ ບໍລິສັດ LAPNet ກໍໄດ້ຮັບກຽດໃຫ້ເຂົ້າຮ່ວມບັນຍາຍເພື່ອນຳສະເໜີກ່ຽວກັບ ບໍລິສັດ LAPNet ໃຫ້ກຽດຂື້ນບັນຍາຍໂດຍ ທ່ານ ນາງ ນີວະສອນ ມາລາທິບ ຮອງຜູ້ອຳນວຍການ ບໍລິສັດ LAPNet ຊຶ່ງໄດ້ນຳສະເໜີກ່ຽວກັບພາລະບົດບາດ ແລະ ຜະລິດຕະພັນທີ່ບໍລິສັດ LAPNet ໄດ້ໃຫ້ບໍລິການແກ່ສັງຄົມ.</p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Lao%20Startup%20Festival/IMG_8881.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Lao%20Startup%20Festival/IMG_8948.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Lao%20Startup%20Festival/269603679_377465820842692_4003279498097678606_n.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Lao%20Startup%20Festival/IMG_8912.jpg\" alt=\"\" /></p>\n<p><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"https://lapnet.com.la/storage/posts/Lao%20Startup%20Festival/IMG_8914.jpg\" alt=\"\" /></p>', '2021-12-20 21:35:08', '2021-12-20 21:35:08'),
(327, 'posts', 'slug', 26, 'lao', 'lao-start-up-festival-lapnet-2021', '2021-12-20 21:35:08', '2021-12-20 21:35:08'),
(328, 'posts', 'meta_description', 26, 'lao', 'ເທດສະການສະຕາດອັບລາວ', '2021-12-20 21:35:08', '2021-12-20 21:35:08'),
(329, 'posts', 'meta_keywords', 26, 'lao', 'ເທດສະການສະຕາດອັບລາວ', '2021-12-20 21:35:08', '2021-12-20 21:35:08'),
(330, 'contents', 'title', 3, 'lao', 'ປະກາດຮັບສະໝັກວຽກ', '2022-01-10 21:17:45', '2022-01-10 21:17:45'),
(331, 'contents', 'excerpt', 3, 'lao', 'ໄອທີ, ດຳເນີນງານ, ການເງິນ', '2022-01-10 21:17:45', '2022-01-10 21:17:45'),
(332, 'contents', 'title', 4, 'lao', 'ທະນາຄານ ອິນໂດຈີນ ຈຳກັດ ເປັນສະມາຊິກໃໝ່ຂອງ ລະບົບໂອນເງິນເທິງມືຖື', '2022-01-25 01:37:26', '2022-01-25 01:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$KmEHpN1ySEZXrZWGQCFD8eEVjTZirCjUdqzFrNmu7qpGeuJdE8LBy', 'jZ7JzjCFehGqMoqiipFWfr2uT2Ud2UJk4zExRYCWVo2CXGxHnUobM5ed8mUA', '{\"locale\":\"en\"}', '2020-01-02 23:54:33', '2020-08-27 20:59:28'),
(2, 4, 'Aod', 'aod@lapnet.com', 'users\\January2020\\6vLbZs4f1chtIftO9s3q.png', NULL, '$2y$10$VS7C28fKwjTNlK5TfEKBHuneQd41Cr8RYF/4UCx5D1/OslKaYJosO', NULL, '{\"locale\":\"en\"}', '2020-01-03 01:19:41', '2021-02-01 01:20:16'),
(3, 1, 'ko', 'ko@lapnet.com.la', 'users/default.png', NULL, '$2y$10$3dtRjKa7hCfYsBBzR1xi5elpB5kpigvJZYhzhLS1l98eOS5rik386', NULL, '{\"locale\":\"en\"}', '2021-01-05 01:06:59', '2021-01-05 01:09:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contents_slug_unique` (`slug`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
