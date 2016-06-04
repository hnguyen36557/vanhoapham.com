-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2016 at 10:48 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projecr_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cates`
--

CREATE TABLE `cates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cates`
--

INSERT INTO `cates` (`id`, `name`, `alias`, `order`, `parent_id`, `keywords`, `description`, `created_at`, `updated_at`) VALUES
(24, 'Giấy', 'giay', 1000, 0, 'Giấy', 'Giấy', '2016-03-15 22:05:43', '2016-03-15 22:05:43'),
(25, 'Bút', 'but', 1000, 0, 'Bút', 'Bút', '2016-03-15 22:06:00', '2016-03-15 22:06:00'),
(29, 'Giấy Bìa', 'giay-bia', 1000, 0, 'Giấy Bìa', 'Giấy Bìa', '2016-03-28 20:11:16', '2016-03-28 20:11:16'),
(30, 'Bìa', 'bia', 1000, 0, 'Bìa', 'Bìa', '2016-03-28 20:12:44', '2016-03-28 20:12:44'),
(31, 'Bấm Kim', 'bam-kim', 1000, 0, 'Bấm Kim', 'Bấm Kim', '2016-03-28 20:13:03', '2016-03-28 20:13:03'),
(32, 'Tập-Sổ', 'tap-so', 1000, 0, 'Tập-Sổ', 'Tập-Sổ', '2016-03-28 20:14:34', '2016-03-28 20:14:34'),
(33, 'Hóa Mỹ Phẩm', 'hoa-my-pham', 1000, 0, 'Hóa Mỹ Phẩm', 'Hóa Mỹ Phẩm', '2016-03-28 20:19:18', '2016-03-28 20:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_03_05_044436_create_cates_table', 1),
('2016_03_05_045021_create_products_table', 2),
('2016_03_05_045615_create_product_images_table', 3),
('2016_03_31_115728_create_orders_table', 4),
('2016_03_31_115942_create_order__details_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `odername` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `odername`, `location`, `created_at`, `updated_at`) VALUES
(1, '111', 'VN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '123', 'USA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '123', 'USA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '123', 'USA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '123', 'USA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '123', 'USA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '1', 'CA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'abc', 'SA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'a', 'AS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'b', 'QD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order__details`
--

CREATE TABLE `order__details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order__details`
--

INSERT INTO `order__details` (`id`, `order_id`, `product_id`, `price`, `total`, `created_at`, `updated_at`) VALUES
(1, 0, 27, 65000, 65000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 0, 33, 3000, 6000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 0, 33, 3000, 6000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 0, 32, 54500, 54500, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 0, 36, 24500, 24500, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 0, 33, 3000, 6000, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 0, 32, 54500, 109000, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `alias`, `price`, `intro`, `content`, `image`, `keywords`, `description`, `user_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(16, 'Bút dạ', 'but-da', 100000, '<p>B&uacute;t dạ</p>\r\n', '<p>B&uacute;t dạ</p>\r\n', 'But-da-quang-hl-03.jpg', 'Bút dạ', 'Bút dạ', 2, 25, '2016-03-15 00:51:19', '2016-03-16 00:13:07'),
(17, 'Giấy A4', 'giay-a4', 1000, '<p>Giấy A4</p>\r\n', '<p>Giấy A4</p>\r\n', 'small_zdi1319101384.JPG', 'Giấy A4', 'Giấy A4', 2, 24, '2016-03-15 22:07:54', '2016-03-29 01:04:44'),
(19, 'Giấy A3', 'giay-a3', 100000, '<p>Giấy A3</p>\r\n', '<p>Giấy A3</p>\r\n', 'giay-chuyen-nhiet-a3-loai-tot_200x200.jpg', 'Giấy A3', 'Giấy A3', 2, 24, '2016-03-16 00:16:54', '2016-03-28 20:53:16'),
(20, 'Bút bi', 'but-bi', 10000, '<p>B&uacute;t bi</p>\r\n', '<p>B&uacute;t bi</p>\r\n', '2104.jpg', 'Bút bi', 'Bút bi', 2, 25, '2016-03-16 00:17:17', '2016-03-16 00:17:17'),
(24, 'Bút mực', 'but-muc', 1500000, '<p>B&uacute;t mực</p>\r\n', '<p>B&uacute;t mực</p>\r\n', '6003001-20151014003555-32030.jpg', 'Bút mực', 'Bút mực', 2, 25, '2016-03-27 20:54:31', '2016-03-27 20:54:31'),
(25, 'Giấy Bìa Thái A4', 'giay-bia-thai-a4', 34000, '<p>Giấy B&igrave;a Th&aacute;i A4</p>\r\n', '<p>Giấy B&igrave;a Th&aacute;i A4</p>\r\n', 'medium_qcm1366181278.jpg', 'Giấy Bìa Thái A4', 'Giấy Bìa Thái A4', 2, 29, '2016-03-28 20:21:43', '2016-03-28 20:21:43'),
(26, 'Giấy Bìa Thái A3', 'giay-bia-thai-a3', 68000, '<p>Giấy B&igrave;a Th&aacute;i A3</p>\r\n', '<p>Giấy B&igrave;a Th&aacute;i A3</p>\r\n', 'small_pus1456544811.jpg', 'Giấy Bìa Thái A3', 'Giấy Bìa Thái A3', 2, 29, '2016-03-28 20:24:19', '2016-03-28 20:24:19'),
(27, 'Giấy Bìa Thơm A4', 'giay-bia-thơm-a4', 65000, '<p>Giấy B&igrave;a Thơm A4</p>\r\n', '<p>Giấy B&igrave;a Thơm A4</p>\r\n', 'product_s1110.jpg', 'Giấy Bìa Thơm A4', 'Giấy Bìa Thơm A4', 2, 29, '2016-03-28 20:26:29', '2016-03-28 20:26:29'),
(28, 'Giấy Decal A4', 'giay-decal-a4', 65000, '<p>Giấy Decal A4</p>\r\n', '<p>Giấy Decal A4</p>\r\n', 'small_yzd1457661614.jpg', 'Giấy Decal A4', 'Giấy Decal A4', 2, 29, '2016-03-28 20:29:23', '2016-03-28 20:29:23'),
(29, 'Giấy Ảnh Glossy', 'giay-anh-glossy', 70000, '<p>Giấy Ảnh Glossy</p>\r\n', '<p>Giấy Ảnh Glossy</p>\r\n', 'Giay-in-anh-epson-A4.gif', 'Giấy Ảnh Glossy', 'Giấy Ảnh Glossy', 2, 29, '2016-03-28 20:31:18', '2016-03-28 20:31:18'),
(30, 'Giấy Tomy ', 'giay-tomy', 8000, '<p>Giấy Tomy</p>\r\n', '<p>Giấy Tomy</p>\r\n', 'Decal-nhan-H-A4.jpg', 'Giấy Tomy ', 'Giấy Tomy ', 2, 29, '2016-03-28 20:40:17', '2016-03-28 20:40:17'),
(31, 'Giấy Than kokusai', 'giay-than-kokusai', 53500, '<p>Giấy Than kokusai</p>\r\n', '<p>Giấy Than kokusai</p>\r\n', 'giay-than-kokusai_25-08-2013-20-12-47.jpg', 'Giấy Than kokusai', 'Giấy Than kokusai', 2, 29, '2016-03-28 20:42:26', '2016-03-28 20:42:26'),
(32, 'Giấy Than G Star', 'giay-than-g-star', 54500, '<p>Giấy Than G Star</p>\r\n', '<p>Giấy Than G Star</p>\r\n', '6450195073923.jpg', 'Giấy Than G Star', 'Giấy Than G Star', 2, 29, '2016-03-28 20:45:44', '2016-03-28 20:45:44'),
(33, 'Giấy bấm giá trắng', 'giay-bam-gia-trang', 3000, '<p>Giấy bấm gi&aacute; trắng</p>\r\n', '<p>Giấy bấm gi&aacute; trắng</p>\r\n', 'medium_urn1418177149.jpg', 'Giấy bấm giá trắng', 'Giấy bấm giá trắng', 2, 29, '2016-03-28 20:47:29', '2016-03-28 20:47:29'),
(34, 'Bìa Kiếng', 'bia-kieng', 56000, '<p>B&igrave;a Kiếng</p>\r\n', '<p>B&igrave;a Kiếng</p>\r\n', 'bia-kieng-dong-sach-a4.jpg', 'Bìa Kiếng', 'Bìa Kiếng', 2, 29, '2016-03-28 20:51:31', '2016-03-28 20:51:31'),
(35, 'Giấy Excel A4', 'giay-excel-a4', 46000, '<p>Giấy Excel A4</p>\r\n', '<p>Giấy Excel A4</p>\r\n', 'small_dge1421029317.jpg', 'Giấy Excel A4', 'Giấy Excel A4', 2, 24, '2016-03-28 20:55:14', '2016-03-28 20:55:14'),
(36, 'Giấy Excel A5', 'giay-excel-a5', 24500, '<p>Giấy Excel A5</p>\r\n', '<p>Giấy Excel A5</p>\r\n', 'Giay-Excel-82g-m2-A5.jpg', 'Giấy Excel A5', 'Giấy Excel A5', 2, 24, '2016-03-28 20:56:16', '2016-03-28 20:56:16'),
(37, 'Giấy Accura', 'giay-accura', 52000, '<p>Giấy Accura</p>\r\n', '<p>Giấy Accura</p>\r\n', 'medium_mir1442223916.jpg', 'Giấy Accura', 'Giấy Accura', 2, 24, '2016-03-28 20:57:19', '2016-03-28 20:57:19'),
(38, 'Giấy A plus', 'giay-a-plus', 53500, '<p>Giấy A plus</p>\r\n', '<p>Giấy A plus</p>\r\n', 'medium_asb1413249811.jpg', 'Giấy A plus', 'Giấy A plus', 2, 24, '2016-03-28 20:58:22', '2016-03-28 20:58:22'),
(39, 'Giấy Supreme', 'giay-supreme', 57500, '<p>Giấy Supreme</p>\r\n', '<p>Giấy Supreme</p>\r\n', 'giay-supreme-a4-dl-80_1321066371.jpg', 'Giấy Supreme', 'Giấy Supreme', 2, 24, '2016-03-28 20:59:20', '2016-03-28 20:59:20'),
(40, 'Giấy in liên tục', 'giay-in-liên-tuc', 174000, '<p>Giấy in li&ecirc;n tục</p>\r\n', '<p>Giấy in li&ecirc;n tục</p>\r\n', 'Giay-Lien-Tuc-A5-3-Lien-240-305-2-L3.jpg', 'Giấy in liên tục', 'Giấy in liên tục', 2, 24, '2016-03-28 21:00:48', '2016-03-28 21:00:48'),
(41, 'Giấy in liên tục 2-5 liên', 'giay-in-liên-tuc-2-5-liên', 312000, '<p>Giấy in li&ecirc;n tục 2-5 li&ecirc;n</p>\r\n', '<p>Giấy in li&ecirc;n tục 2-5 li&ecirc;n</p>\r\n', '634230936608981610_untitled.bmp.jpg', 'Giấy in liên tục 2-5 liên', 'Giấy in liên tục 2-5 liên', 2, 24, '2016-03-28 21:01:45', '2016-03-28 21:01:45'),
(42, 'Giấy Fort', 'giay-fort', 65000, '<p>Giấy Fort</p>\r\n', '<p>Giấy Fort</p>\r\n', 'small_zih1383853177.jpg', 'Giấy Fort', 'Giấy Fort', 2, 24, '2016-03-28 21:03:45', '2016-03-28 21:03:45'),
(43, 'Bút Cắm Bàn', 'but-cam-ban', 12000, '<p>B&uacute;t Cắm B&agrave;n</p>\r\n', '<p>B&uacute;t Cắm B&agrave;n</p>\r\n', 'But cam ban SP05.jpg', 'Bút Cắm Bàn', 'Bút Cắm Bàn', 2, 25, '2016-03-28 21:06:44', '2016-03-28 21:06:44'),
(44, 'Bút gel', 'but-gel', 3000, '<p>B&uacute;t gel</p>\r\n', '<p>B&uacute;t gel</p>\r\n', '54369731395211738_but-mini.205.200.jpg', 'Bút gel', 'Bút gel', 2, 25, '2016-03-28 21:08:27', '2016-03-28 21:11:30'),
(45, 'bút nước Uniball', 'but-nưoc-uniball', 12000, '<p>b&uacute;t nước Uniball</p>\r\n', '<p>b&uacute;t nước Uniball</p>\r\n', 'small_upp1434599217.jpg', 'bút nước Uniball', 'bút nước Uniball', 2, 25, '2016-03-28 21:12:24', '2016-03-28 21:12:24'),
(46, 'bút zebra', 'but-zebra', 21000, '<p>b&uacute;t zebra</p>\r\n', '<p>b&uacute;t zebra</p>\r\n', 'index.jpg', 'bút zebra', 'bút zebra', 2, 25, '2016-03-28 21:17:53', '2016-03-28 21:17:53'),
(47, 'ruột bút zebra', 'ruot-but-zebra', 10000, '<p>ruột b&uacute;t zebra</p>\r\n', '<p>ruột b&uacute;t zebra</p>\r\n', 'wvl1453279038.jpg', 'ruột bút zebra', 'ruột bút zebra', 2, 25, '2016-03-28 21:18:54', '2016-03-28 21:18:54'),
(48, 'bút ký', 'but-ky', 51000, '<p>b&uacute;t k&yacute;</p>\r\n', '<p>b&uacute;t k&yacute;</p>\r\n', 'images.jpg', 'bút ký', 'bút ký', 2, 25, '2016-03-28 21:21:01', '2016-03-28 21:21:01'),
(49, 'bút lông', 'but-lông', 13500, '<p>b&uacute;t l&ocirc;ng</p>\r\n', '<p>b&uacute;t l&ocirc;ng</p>\r\n', 'but-long-bang-BN.jpg.jpg', 'bút lông', 'bút lông', 2, 25, '2016-03-28 21:22:08', '2016-03-28 21:22:08'),
(50, 'bìa lá', 'bia-la', 1700, '<p>b&igrave;a l&aacute;</p>\r\n', '<p>b&igrave;a l&aacute;</p>\r\n', '1043-b1.jpg', 'bìa lá', 'bìa lá', 2, 30, '2016-03-28 21:29:34', '2016-03-28 21:29:34'),
(51, 'Bìa nút A4', 'bia-nut-a4', 3300, '<p>B&igrave;a n&uacute;t A4</p>\r\n', '<p>B&igrave;a n&uacute;t A4</p>\r\n', 'bia_nut.jpg', 'Bìa nút A4', 'Bìa nút A4', 2, 30, '2016-03-28 21:35:04', '2016-03-28 21:35:04'),
(52, 'bìa nút A5', 'bia-nut-a5', 2000, '<p>b&igrave;a n&uacute;t A5</p>\r\n', '<p>b&igrave;a n&uacute;t A5</p>\r\n', '741144.jpg', 'bìa nút A5', 'bìa nút A5', 2, 30, '2016-03-28 21:35:51', '2016-03-28 21:35:51'),
(53, 'Bìa còng nhựa', 'bia-cong-nhua', 14000, '<p>B&igrave;a c&ograve;ng nhựa</p>\r\n', '<p>B&igrave;a c&ograve;ng nhựa</p>\r\n', 'Bia cong F4 5P ABBA Caro.jpg', 'Bìa còng nhựa', 'Bìa còng nhựa', 2, 30, '2016-03-28 21:41:46', '2016-03-28 21:41:46'),
(54, 'Bìa hộp', 'bia-hop', 19000, '<p>B&igrave;a hộp</p>\r\n', '<p>B&igrave;a hộp</p>\r\n', 'small_fdu1373620951.jpg', 'Bìa hộp', 'Bìa hộp', 2, 30, '2016-03-28 21:46:17', '2016-03-28 21:46:17'),
(55, 'Bìa kẹp kingstar', 'bia-kep-kingstar', 10000, '<p>Bìa 1 kẹp</p>\r\n', '<p>Bìa 1 kẹp</p>\r\n', 'larger_gqc1418283467.jpg', 'Bìa 1 kẹp', 'Bìa 1 kẹp', 2, 30, '2016-03-28 23:34:05', '2016-03-31 03:14:35'),
(56, 'bìa trình ký đôi ', 'bia-trinh-ky-dôi', 13500, '<p>b&igrave;a tr&igrave;nh k&yacute; đ&ocirc;i</p>\r\n', '<p>b&igrave;a tr&igrave;nh k&yacute; đ&ocirc;i</p>\r\n', 'small_jvt1392083387.jpg', 'bìa trình ký đôi ', 'bìa trình ký đôi ', 2, 30, '2016-03-28 23:38:45', '2016-03-28 23:38:45'),
(57, 'bìa trình ký đơn', 'bia-trinh-ky-dơn', 12000, '<p>b&igrave;a tr&igrave;nh k&yacute; đơn</p>\r\n', '<p>b&igrave;a tr&igrave;nh k&yacute; đơn</p>\r\n', 'bia-trinh-ky-don-f4_200x200.jpg', 'bìa trình ký đơn', 'bìa trình ký đơn', 2, 30, '2016-03-28 23:40:22', '2016-03-28 23:40:22'),
(58, 'bìa trình ký mica', 'bia-trinh-ky-mica', 22000, '<p>b&igrave;a tr&igrave;nh k&yacute; mica</p>\r\n', '<p>b&igrave;a tr&igrave;nh k&yacute; mica</p>\r\n', 'bia-trinh-ky-mica-a4_200x200.jpg', 'bìa trình ký mica', 'bìa trình ký mica', 2, 30, '2016-03-28 23:40:59', '2016-03-28 23:40:59'),
(59, 'bìa cây', 'bia-cay', 5800, '<p>b&igrave;a c&acirc;y</p>\r\n', '<p>b&igrave;a c&acirc;y</p>\r\n', 'small_tme1457668199.jpg', 'bìa cây', 'bìa cây', 2, 30, '2016-03-28 23:42:43', '2016-03-28 23:42:43'),
(60, 'Bấm kim EAGLE', 'bam-kim-eagle', 28000, '<p>Bấm kim EAGLE</p>\r\n', '<p>Bấm kim EAGLE</p>\r\n', 'bam-kim-Eagle206A.jpg.jpg', 'Bấm kim EAGLE', 'Bấm kim EAGLE', 2, 31, '2016-03-28 23:50:06', '2016-03-28 23:50:06'),
(61, 'bấm kim 3 xoay', 'bam-kim-3-xoay', 41500, '<p>bấm kim 3 xoay</p>\r\n', '<p>bấm kim 3 xoay</p>\r\n', 'small_ynb1412325421.jpg', 'bấm kim 3 xoay', 'bấm kim 3 xoay', 2, 31, '2016-03-28 23:59:36', '2016-03-28 23:59:36'),
(62, 'Bấm kim lớn KWTrio 50SA', 'bam-kim-lon-kwtrio-50sa', 270000, '<p>Bấm kim lớn KWTrio 50SA</p>\r\n', '<p>Bấm kim lớn KWTrio 50SA</p>\r\n', 'medium_mpz1397527306.jpg', 'Bấm kim lớn KWTrio 50SA', 'Bấm kim lớn KWTrio 50SA', 2, 31, '2016-03-29 00:02:21', '2016-03-29 00:02:21'),
(63, 'Bấm kim lớn KWTrio 50LA ', 'bam-kim-lon-kwtrio-50la', 390000, '<p>Bấm kim lớn KWTrio 50LA</p>\r\n', '<p>Bấm kim lớn KWTrio 50LA</p>\r\n', 'medium_ntd1419306156.jpg', 'Bấm kim lớn KWTrio 50LA ', 'Bấm kim lớn KWTrio 50LA ', 2, 31, '2016-03-29 00:03:35', '2016-03-29 00:03:35'),
(64, 'Bấm lỗ KW Trio 978', 'bam-lo-kw-trio-978', 90000, '<p>Bấm lỗ KW Trio 978</p>\r\n', '<p>Bấm lỗ KW Trio 978</p>\r\n', 'small_tzz1453731327.jpg', 'Bấm lỗ KW Trio 978', 'Bấm lỗ KW Trio 978', 2, 31, '2016-03-29 00:06:00', '2016-03-29 00:06:00'),
(65, 'Bấm lỗ KW Trio 9670', 'bam-lo-kw-trio-9670', 256000, '<p>Bấm lỗ KW Trio 9670</p>\r\n', '<p>Bấm lỗ KW Trio 9670</p>\r\n', 'bam-l-kw-trio-9670_1318413074.jpg', 'Bấm lỗ KW Trio 9670', 'Bấm lỗ KW Trio 9670', 2, 31, '2016-03-29 00:06:53', '2016-03-29 00:06:53'),
(66, 'Kim bấm 10 plus', 'kim-bam-10-plus', 3000, '<p>Kim bấm 10 plus</p>\r\n', '<p>Kim bấm 10 plus</p>\r\n', 'product_s359.jpg', 'Kim bấm 10 plus', 'Kim bấm 10 plus', 2, 31, '2016-03-29 00:15:18', '2016-03-29 00:15:18'),
(67, 'Kim bấm KWTrio 10', 'kim-bam-kwtrio-10', 2500, '<p>Kim bấm KWTrio 10</p>\r\n', '<p>Kim bấm KWTrio 10</p>\r\n', 'download (34).jpeg', 'Kim bấm KWTrio 10', 'Kim bấm KWTrio 10', 2, 31, '2016-03-29 00:16:16', '2016-03-29 00:16:16'),
(68, 'Kim bấm KWTrio 23/15', 'kim-bam-kwtrio-23/15', 20000, '<p>Kim bấm KWTrio 23/15</p>\r\n', '<p>Kim bấm KWTrio 23/15</p>\r\n', 'Kim bam_kw-trio-23-15.jpg', 'Kim bấm KWTrio 23/15', 'Kim bấm KWTrio 23/15', 2, 31, '2016-03-29 00:17:31', '2016-03-29 00:17:42'),
(69, 'Gỡ kim KWTrio 508', 'go-kim-kwtrio-508', 8000, '<p>Gỡ kim KWTrio 508</p>\r\n', '<p>Gỡ kim KWTrio 508</p>\r\n', 'bgf1352967575.jpg', 'Gỡ kim KWTrio 508', 'Gỡ kim KWTrio 508', 2, 31, '2016-03-29 00:19:39', '2016-03-29 00:19:39'),
(70, 'Tập 96 trang conan', 'tap-96-trang-conan', 5000, '<p>Tập 96 trang conan</p>\r\n', '<p>Tập 96 trang conan</p>\r\n', 'small_uui1452760647.jpg', 'Tập 96 trang conan', 'Tập 96 trang conan', 2, 32, '2016-03-29 00:27:38', '2016-03-29 00:27:38'),
(71, 'phiếu nhập xuất kho', 'phieu-nhap-xuat-kho', 19500, '<p>phiếu nhập xuất kho</p>\r\n', '<p>phiếu nhập xuất kho</p>\r\n', 'small_sie1453707964.jpg', 'phiếu nhập xuất kho', 'phiếu nhập xuất kho', 2, 32, '2016-03-29 00:29:07', '2016-03-29 00:35:31'),
(72, 'hóa đơn bán lẻ', 'hoa-dơn-ban-le', 4200, '<p>h&oacute;a đơn b&aacute;n lẻ</p>\r\n', '<p>h&oacute;a đơn b&aacute;n lẻ</p>\r\n', 'medium_bmb1385517131.jpg', 'hóa đơn bán lẻ', 'hóa đơn bán lẻ', 2, 32, '2016-03-29 00:30:17', '2016-03-29 00:30:17'),
(73, 'Biên nhận', 'biên-nhan', 6000, '<p>Bi&ecirc;n nhận</p>\r\n', '<p>Bi&ecirc;n nhận</p>\r\n', 'cce1453701499.jpg', 'Biên nhận', 'Biên nhận', 2, 32, '2016-03-29 00:31:14', '2016-03-29 00:33:42'),
(74, 'phiếu thu, chi', 'phieu-thu,-chi', 3500, '<p>phiếu thu, chi</p>\r\n', '<p>phiếu thu, chi</p>\r\n', 'medium_fqt1386554940.jpg', 'phiếu thu, chi', 'phiếu thu, chi', 2, 32, '2016-03-29 00:33:04', '2016-03-29 00:33:04'),
(75, 'giấy giới thiệu', 'giay-gioi-thieu', 6000, '<p>giấy giới thiệu</p>\r\n', '<p>giấy giới thiệu</p>\r\n', 'dzy1288406650.jpg', 'giấy giới thiệu', 'giấy giới thiệu', 2, 32, '2016-03-29 00:36:49', '2016-03-29 00:36:49'),
(76, 'Tập 96T OH YEAH', 'tap-96t-oh-yeah', 5300, '<p>Tập 96T OH YEAH</p>\r\n', '<p>Tập 96T OH YEAH</p>\r\n', '6070001-20160116003427-597919.jpg', 'Tập 96T OH YEAH', 'Tập 96T OH YEAH', 2, 32, '2016-03-29 00:38:36', '2016-03-29 00:38:36'),
(77, 'Tập 96T SV 58N', 'tap-96t-sv-58n', 7500, '<p>Tập 96T SV 58N</p>\r\n', '<p>Tập 96T SV 58N</p>\r\n', 'tap-thuan-tien-jpg-20140904164116bjzQaucDPi.jpg', 'Tập 96T SV 58N', 'Tập 96T SV 58N', 2, 32, '2016-03-29 00:39:39', '2016-03-29 00:39:39'),
(78, 'Tập làng hương', 'tap-lang-hương', 4000, '<p>Tập l&agrave;ng hương</p>\r\n', '<p>Tập l&agrave;ng hương</p>\r\n', 'medium_ufu1388462570.jpg', 'Tập làng hương', 'Tập làng hương', 2, 32, '2016-03-29 00:42:07', '2016-03-29 00:42:07'),
(79, 'Tập 96T hồn quê', 'tap-96t-hon-quê', 4500, '<p>Tập 96T hồn qu&ecirc;</p>\r\n', '<p>Tập 96T hồn qu&ecirc;</p>\r\n', 'ltb1457341974.jpg', 'Tập 96T hồn quê', 'Tập 96T hồn quê', 2, 32, '2016-03-29 00:42:53', '2016-03-29 00:42:53'),
(80, 'khăn giấy hộp', 'khăn-giay-hop', 19500, '<p>khăn giấy hộp</p>\r\n', '<p>khăn giấy hộp</p>\r\n', 'khan_giay_Pulppy.jpg', 'khăn giấy hộp', 'khăn giấy hộp', 2, 33, '2016-03-29 00:46:03', '2016-03-29 00:46:03'),
(81, 'bao rác cuộn', 'bao-rac-cuon', 39000, '<p>bao r&aacute;c cuộn</p>\r\n', '<p>bao r&aacute;c cuộn</p>\r\n', 'medium_gxq1459146572.jpg', 'bao rác cuộn', 'bao rác cuộn', 2, 33, '2016-03-29 00:47:22', '2016-03-29 00:47:22'),
(82, 'Lau sàn sunlight, gif', 'lau-san-sunlight,-gif', 28000, '<p>Lau s&agrave;n sunlight, gif</p>\r\n', '<p>Lau s&agrave;n sunlight, gif</p>\r\n', 'small_hul1370919245.jpg', 'Lau sàn sunlight, gif', 'Lau sàn sunlight, gif', 2, 33, '2016-03-29 00:48:36', '2016-03-29 00:48:36'),
(83, 'nước lau kính', 'nưoc-lau-kinh', 20000, '<p>nước lau k&iacute;nh</p>\r\n', '<p>nước lau k&iacute;nh</p>\r\n', 'small_bhh1442330697.jpg', 'nước lau kính', 'nước lau kính', 2, 33, '2016-03-29 00:49:15', '2016-03-29 00:49:15'),
(84, 'tảy đa năng sumo', 'tay-da-năng-sumo', 22000, '<p>tảy đa năng sumo</p>\r\n', '<p>tảy đa năng sumo</p>\r\n', 'a21.jpg', 'tảy đa năng sumo', 'tảy đa năng sumo', 2, 33, '2016-03-29 00:50:10', '2016-03-29 00:50:10'),
(85, 'xịt phòng ami', 'xit-phong-ami', 34000, '<p>xịt ph&ograve;ng ami</p>\r\n', '<p>xịt ph&ograve;ng ami</p>\r\n', 'small_hng1252340194.jpg', 'xịt phòng ami', 'xịt phòng ami', 2, 33, '2016-03-29 00:50:51', '2016-03-29 00:50:51'),
(86, 'Tẩy toilet gift', 'tay-toilet-gift', 25000, '<p>Tẩy toilet gift</p>\r\n', '<p>Tẩy toilet gift</p>\r\n', 'index1.jpg', 'Tẩy toilet gift', 'Tẩy toilet gift', 2, 33, '2016-03-29 00:51:52', '2016-03-29 00:51:52'),
(87, 'Dây thun buộc xuất khẩu', 'day-thun-buoc-xuat-khau', 42500, '<p>D&acirc;y thun buộc xuất khẩu</p>\r\n', '<p>D&acirc;y thun buộc xuất khẩu</p>\r\n', 'small_deq1328761139.jpg', 'Dây thun buộc xuất khẩu', 'Dây thun buộc xuất khẩu', 2, 33, '2016-03-29 00:52:38', '2016-03-29 00:52:38'),
(88, 'Xịt muỗi raid', 'xit-muoi-raid', 62000, '<p>Xịt muỗi raid</p>\r\n', '<p>Xịt muỗi raid</p>\r\n', 'index2.jpg', 'Xịt muỗi raid', 'Xịt muỗi raid', 2, 33, '2016-03-29 00:53:37', '2016-03-29 00:53:37'),
(89, 'sáp đếm tiền', 'sap-dem-tien', 5500, '<p>s&aacute;p đếm tiền</p>\r\n', '<p>s&aacute;p đếm tiền</p>\r\n', 'sap-dem-tien.jpg', 'sáp đếm tiền', 'sáp đếm tiền', 2, 33, '2016-03-29 00:54:29', '2016-03-29 00:54:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 'images.jpg', 20, '2016-03-16 03:46:28', '2016-03-16 03:46:28'),
(4, 'dung23-7885-1429067148.jpg', 20, '2016-03-16 03:54:30', '2016-03-16 03:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'hieu', '$2y$10$y5X19q3wAm05D2pq4QuNCelDqz.YhCARPS8SOc6M/gC7TagI5/cVy', '12345', 1, 'C8guOrZOPugzL1ZUUSa0VKg3ET97wLHQHcU50699Ly0xf6roP1JGhwQEXX5H', '2016-03-14 23:26:54', '2016-03-31 01:36:44'),
(3, 'member', '$2y$10$kcM52cjI7jStofoBAhYCZuZkPIGk3tYAghWuzjduWXbjFmg2jsS7G', 'phong123@gmail.com', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-14 23:27:49', '2016-03-17 03:16:38'),
(5, 'admin', '$2y$10$kzKq.7lKyDg9NLr5wCj5a.FSjLsJqFmrPUbyTEyRxRS.7hwvZmfYW', '123', 1, 'GJwICeMifAB4TAabFL0NJtwKSUEcMYnLAEV2f8iyeb5WDaTVKBVaoohYDMoU', '2016-03-15 01:14:17', '2016-03-17 03:16:55'),
(7, 'member1', '$2y$10$meZKNxBsInfANUsU5VyyTuaroTHMIKvnr9.LZmteqZICSBhyl5qEW', '123', 2, 'hSlQiBA9xxQqgRGTPnRRIkgA2QVq51mL3c1Y4rfa', '2016-03-15 01:15:00', '2016-03-15 01:15:00'),
(9, 'phong', '$2y$10$SyN638LfJuLg/yVwoMLdJ.9oEaj2Y1njacLK9Hd2Xg24bXEunbqo2', 'phong123@gmail.com', 0, 'WGQp4QrYAiOcGET3cQ7XD7zVJUpDZ8ZROadl3RXw', '2016-03-15 02:59:04', '2016-03-15 03:01:55'),
(10, '123', '123', '', 2, NULL, '2016-03-17 02:36:47', '2016-03-17 02:36:47'),
(11, 'abc', 'abc', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 02:36:57', '2016-03-17 02:42:59'),
(12, 'hieun', '$2y$10$Xxxxe.xqZx4//Q0bJHGORO7ZpsJdrVtsrcDflnzaYkP0wxEWu4rPy', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 02:46:19', '2016-03-17 02:47:11'),
(13, 'hieung', '$2y$10$mneMTDjDwJGOJSKIXjTHe.4S9HsrhuGhif1QTQfq0nUEAnKRceJ9W', '', 0, NULL, '2016-03-17 02:54:40', '2016-03-17 02:54:40'),
(14, 'hieungu', '$2y$10$AuKh664DAP0nKCKKYnqMZOrEkdS4z.yw9mf0sTEJ4QeR91Q0Tsli6', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 02:56:29', '2016-03-17 02:56:29'),
(16, 'haksdh', '$2y$10$9DeJZ2ft/j4q/X2z9Dz5rulMt6fXnPWS2xyM2.vm0B0TgCKaga0IW', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 02:57:32', '2016-03-17 02:57:32'),
(17, 'oyouou', '$2y$10$4ay83E.nBZ3OC29VGlQmPOwHwSFe2.a.O50lUKWPVtXq5l2bG23dq', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 02:58:02', '2016-03-17 02:58:02'),
(18, '', '$2y$10$XXTNh7dRR9ZbBLepksFp7uKLZiDwQLhcQJXZwoF6bBmVVlajXkWUy', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 02:59:37', '2016-03-17 02:59:37'),
(19, 'bac', '$2y$10$9giq29kvea1tYix.KVrbruQM47tyCQbhdS09FKhnTjK0cPZCzQTF.', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 03:00:46', '2016-03-17 03:00:46'),
(20, 'oyoy', '$2y$10$1BpLwW1OHMe6O3OVNojqaesGyZo1XSefO.ArNbMM05q5dMmf7c6iS', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 03:01:33', '2016-03-17 03:01:33'),
(22, '1234', '$2y$10$E3.n0dVGXxY8uB0rQA.bMuMQ6VPLb7mBAdH8s3M7VQIcLWKaAY70O', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 03:02:19', '2016-03-17 03:02:19'),
(23, '12345', '$2y$10$qjoU34QQA/n32DkqCYWCQ.gyyFCIlB4owe.NXuMUJXjHKw8HJe7hG', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 03:04:09', '2016-03-17 03:04:09'),
(24, 'ttt', '$2y$10$oZJ7QqL6DUYXmU2pM7LieOZSAbenyctx5eECyl6kRr9/3ooCVB7hS', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 03:05:16', '2016-03-17 03:05:16'),
(25, 'tttt', '$2y$10$vyBJZ0X42C96iXphnLgGc.VIFe5bIIGpDUUGrSTt.tbsfvxJ52hQi', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 03:05:52', '2016-03-17 03:05:52'),
(27, 'ttttt', '$2y$10$zv89.r4fNzAwS9WcmPIcteJefNaowgxlCBcFl7EFtKXKCh9z/hR4q', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 03:06:41', '2016-03-17 03:06:41'),
(29, 'ttttt5', '$2y$10$byNlFAQRrxT2zA9PtXp.9.XLS2LEqeikt./457sWQu.P6k491bR0m', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 03:07:07', '2016-03-17 03:07:07'),
(30, '1111', '$2y$10$CvOgvJCIPTb1rxzBp2xsYOz32AWFLOHaucBPtA7tj8w9h8uLyQ9RO', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 03:08:19', '2016-03-17 03:15:33'),
(31, '11112', '$2y$10$0h4zXjrJgcS19aNUs3WuBewl9PxBGgll976ILxgX62yHoFcC3HZeK', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 03:10:25', '2016-03-17 03:10:25'),
(33, '121212', '$2y$10$xmujj1Wo0xXMeA5UUVshR.BdO5dQqmLeZTEWxULr6ka0hCxjMAcqC', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 03:10:44', '2016-03-17 03:10:44'),
(34, '121211', '$2y$10$dtizADWg/TS1AZFzneIrCuJ7YWd6OI4JnP4LBf/DqHTSchnrUw0KW', '', 0, 'VuUA7ghR82HevZknDMhn7V5O3eqwQ8K7eUwYxdLk', '2016-03-17 03:13:40', '2016-03-17 03:13:40'),
(35, 'hieunguyen', '$2y$10$BInGtQ1Xff5ND/HxLgJ6Ce3qOLZsAC7PQBom0lqNIPj993rACopLy', 'hieunguyen@gmail.com', 2, '2fLN5YOMcdMOI2nqTQjZRYRnOIE4tC5xIdQaIeLhLz6w7wJOx7U13MBYJonJ', '2016-03-26 19:35:41', '2016-03-26 19:40:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cates`
--
ALTER TABLE `cates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cates_name_unique` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order__details`
--
ALTER TABLE `order__details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_cate_id_foreign` (`cate_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cates`
--
ALTER TABLE `cates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `order__details`
--
ALTER TABLE `order__details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `cates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
