-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 07, 2025 at 04:19 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duan_sach`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_id`, `address`) VALUES
(17, 15, 'Vĩnh Long 123'),
(18, 6, 'Hà Nội'),
(21, 16, 'Cầu giấy Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cart_id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_price` int NOT NULL,
  `product_quantity` int NOT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`cart_id`, `product_id`, `user_id`, `product_name`, `product_price`, `product_quantity`, `product_image`) VALUES
(80, 25, 9, 'Cây cam ngọt', 160000, 1, 'cay-cam-ngot.jpg'),
(81, 23, 9, 'Sách đất rừng', 120000, 1, 'dat-rung.jpg'),
(82, 27, 9, 'Người bà tài giỏi(tái bản 2022)', 180000, 1, 'nguoi-ba.jpg'),
(83, 2, 9, 'Sách mới', 110000, 3, 'book-2.png'),
(138, 32, 11, 'Kiếm Tiền Từ Tiktok', 100000, 1, 'kiem-tien-titok.jpg'),
(203, 32, 8, 'Iphone', 100000, 1, 'iphone2.jpg'),
(212, 30, 6, 'Áo Thu Đông Nữ Giữ Nhiệt Cổ 3cm', 102000, 1, 'quanao6.png'),
(213, 32, 6, 'Áo trẻ em', 100000, 1, 'quanao4.png'),
(214, 25, 6, 'Áo polo Nam', 160000, 1, 'quanao8.png');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `image`, `status`) VALUES
(1, 'Chưa có danh mục', 'tieng-anh-nguoi-moi.jpg', 1),
(2, 'Sách thiếu ni', 'sach-1.png', 1),
(4, 'Sách văn học', 'sach-van-hoc.png', 1),
(6, 'Sách ngoại văn', 'sach-ngoaivan.png', 1),
(16, 'Sách kinh tế', 'sach-kinhte.png', 1),
(17, 'Sách tâm lý', 'sach-tamly.png', 1),
(19, 'Sách ngoại ngữ', 'sach-ngoaingu.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 ẩn 1 hiện',
  `user_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `content`, `date`, `status`, `user_id`, `product_id`) VALUES
(1, 'Helllo', '2024-11-25 19:46:51', 1, 6, 26),
(2, 'Tôi là khoa nè', '2024-11-25 20:06:15', 1, 6, 21),
(3, 'Admin nè xin chào mn', '2024-11-25 20:48:50', 1, 8, 26),
(4, 'Hello', '2024-11-26 12:00:44', 1, 6, 27),
(5, 'Sản phẩm tốt đọc hay nên mua nha mn', '2024-11-29 21:11:44', 1, 6, 27),
(8, 'Ngày 12/10/2025 Hello every one', '2024-12-05 09:46:35', 1, 6, 28),
(11, 'Xin chào mọi người t', '2025-09-05 21:01:47', 1, 6, 31),
(12, 'Mua code ủng hộ nha hihi', '2025-09-05 21:06:58', 1, 6, 32),
(13, 'Sản phẩm ăn ngon ngọt, nên mua', '2025-11-06 23:04:48', 1, 16, 31),
(14, 'Sách hay nên mua. Hihi', '2025-11-07 22:55:31', 1, 16, 31),
(15, 'Xin chào, tôi đã ở đây', '2025-11-07 23:08:20', 1, 16, 31);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderdetails_id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderdetails_id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(21, 10, 24, 1, 120000),
(22, 10, 27, 1, 180000),
(23, 11, 1, 2, 110000),
(24, 11, 24, 1, 120000),
(25, 12, 23, 1, 120000),
(26, 12, 20, 1, 160000),
(27, 13, 25, 2, 160000),
(28, 13, 26, 2, 200000),
(29, 14, 25, 4, 160000),
(30, 14, 27, 1, 180000),
(31, 14, 26, 2, 200000),
(32, 15, 23, 1, 120000),
(33, 15, 26, 1, 200000),
(34, 16, 27, 1, 180000),
(35, 16, 26, 1, 200000),
(36, 16, 20, 1, 160000),
(37, 17, 29, 1, 50000),
(38, 17, 31, 1, 126000),
(39, 17, 32, 2, 100000),
(40, 18, 31, 1, 126000),
(41, 18, 24, 1, 120000),
(42, 19, 30, 1, 102000),
(48, 22, 29, 1, 50000),
(49, 22, 28, 1, 180000),
(50, 23, 1, 2, 159000),
(51, 23, 24, 1, 120000),
(52, 24, 15, 1, 95000),
(53, 24, 14, 1, 102000),
(54, 25, 21, 1, 88000),
(55, 26, 21, 4, 88000),
(56, 27, 29, 1, 50000),
(57, 27, 1, 1, 159000),
(58, 28, 28, 1, 180000),
(59, 29, 2, 1, 97000),
(60, 29, 29, 1, 50000),
(61, 29, 1, 1, 159000),
(62, 30, 31, 3, 126000),
(63, 31, 2, 2, 97000),
(64, 31, 1, 1, 159000),
(65, 32, 32, 1, 100000),
(66, 33, 21, 1, 88000),
(67, 33, 25, 1, 160000),
(68, 33, 28, 3, 180000),
(69, 34, 29, 1, 50000),
(70, 34, 31, 3, 126000),
(71, 35, 1, 1, 159000),
(72, 35, 28, 2, 180000),
(73, 36, 25, 1, 160000),
(74, 36, 27, 1, 180000),
(75, 36, 31, 2, 126000),
(76, 37, 32, 1, 100000),
(77, 38, 31, 1, 126000),
(78, 38, 30, 1, 102000),
(79, 39, 25, 1, 160000),
(80, 39, 29, 2, 50000),
(81, 39, 30, 1, 102000),
(82, 40, 17, 1, 187000),
(83, 40, 16, 1, 90000),
(84, 40, 18, 2, 120000),
(85, 41, 25, 5, 160000),
(86, 42, 29, 2, 50000),
(87, 42, 17, 1, 187000),
(88, 43, 27, 1, 180000),
(89, 43, 31, 1, 126000),
(90, 44, 1, 1, 159000),
(91, 44, 28, 1, 180000),
(92, 45, 28, 1, 180000),
(93, 45, 31, 2, 126000),
(94, 46, 6, 1, 100000),
(95, 47, 6, 5, 100000),
(96, 48, 2, 4, 97000),
(97, 48, 1, 1, 159000),
(98, 49, 31, 1, 126000),
(99, 50, 27, 3, 180000),
(100, 50, 32, 1, 100000),
(101, 51, 32, 1, 100000),
(102, 51, 26, 1, 200000),
(103, 52, 31, 1, 126000),
(104, 52, 32, 2, 100000),
(105, 53, 28, 1, 180000),
(106, 53, 30, 2, 102000),
(107, 54, 27, 1, 180000),
(108, 54, 30, 1, 102000),
(109, 54, 31, 1, 126000),
(110, 55, 24, 2, 120000),
(111, 55, 31, 1, 126000),
(112, 56, 31, 1, 126000),
(113, 56, 26, 1, 200000),
(114, 57, 31, 1, 126000),
(115, 58, 28, 1, 105000),
(116, 58, 18, 1, 120000),
(117, 58, 31, 1, 126000),
(118, 59, 28, 2, 105000),
(119, 59, 32, 1, 100000),
(120, 59, 27, 2, 95000),
(121, 60, 6, 1, 100000),
(122, 60, 21, 1, 88000),
(123, 61, 24, 1, 115000),
(124, 61, 6, 1, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `user_id` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` int NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `date`, `total`, `address`, `phone`, `note`, `status`) VALUES
(10, 6, '2024-11-27 22:13:51', 300000, 'Can tho', '0909135986', '', 2),
(11, 6, '2024-11-28 09:00:28', 340000, 'Can tho', '0909135986', 'Gói sách kĩ giúp em lần trước mua bị rách', 3),
(12, 7, '2024-11-28 09:24:42', 280000, 'Kiên Giang', '0336216654', 'Hello my friend', 3),
(13, 9, '2024-11-28 12:01:11', 720000, 'Cái Răng, Cần Thơ', '0909135969', 'Đóng gói hàng kĩ', 2),
(14, 6, '2024-11-28 14:00:19', 1220000, 'Can tho', '0909135986', 'hi', 4),
(15, 6, '2024-11-28 18:22:55', 320000, 'Can tho', '0909135986', 'Chúc 1 ngày vui', 4),
(16, 6, '2024-11-29 22:07:55', 540000, 'Can tho', '0909135986', 'Mua hang 29/11/2023', 3),
(17, 10, '2024-12-03 10:12:41', 376000, 'Ninh Kiều, Cần Thơ', '0909135985', 'Gói hàng cẩn thận giao nhanh giúp tôi ', 1),
(18, 6, '2024-12-04 18:23:31', 246000, 'Cái Răng, Cần Thơ', '0909135329', 'Giao hàng nhanh nha, đang cần gấp', 1),
(19, 6, '2024-12-04 19:43:58', 102000, 'Quận Đống Đa, Hà Nội', '0909246546', 'Mong là sách đọc hay', 4),
(22, 11, '2024-12-04 20:28:09', 230000, 'Sóc Trăng', '0336246546', 'Đóng hàng kĩ', 3),
(23, 11, '2024-12-04 20:29:51', 279000, 'Cần Thơ', '0909006764', 'Hello', 1),
(24, 11, '2024-12-04 21:49:06', 197000, 'Cần Thơ', '0909006764', '', 1),
(25, 11, '2024-12-04 21:56:40', 88000, 'Cần Thơ', '0909006764', '', 1),
(26, 11, '2024-12-04 22:00:39', 352000, 'Cần Thơ', '0909006764', '', 1),
(27, 10, '2024-12-06 22:10:19', 209000, 'Ninh Kiều, Cần Thơ', '0909135985', '', 2),
(28, 10, '2024-12-06 22:12:15', 180000, 'Long Hồ, Vĩnh Long', '0909135399', 'Mua hàng cho bạn ở quê', 1),
(29, 6, '2024-12-07 08:48:32', 306000, 'Ninh Kiều, Cần Thơ', '0909135329', '', 3),
(30, 6, '2024-12-07 08:50:28', 378000, 'Quận Mỹ Đình, Hà Nội', '0336216546', 'Hello 2023', 2),
(31, 6, '2024-12-11 17:33:40', 353000, 'Long Biên, Hà Nội', '0336216546', 'Giao hàng nhanh giúp tôi', 1),
(32, 6, '2024-12-11 19:07:50', 100000, 'Cần Thơ', '0336216546', 'Giao nhanh', 1),
(33, 11, '2024-12-11 19:13:10', 788000, 'Quận Cầu Giấy Hà Nội', '0336216546', 'Sách hay quóaa', 1),
(34, 10, '2024-12-11 19:55:09', 428000, 'Quận Cầu Giấy Hà Nội', '0909135329', 'Giao hàng nhanh giúp tôi', 4),
(35, 10, '2024-12-11 20:01:28', 519000, 'Quận Cầu Giấy Hà Nội', '0336216546', 'Giao hàng nhanh giúp tôi', 2),
(36, 6, '2024-12-12 10:11:51', 592000, 'Anh Khánh, Ninh Kiều, Cần Thơ', '0336246546', 'Đóng hàng kĩ', 1),
(37, 6, '2024-12-12 10:25:55', 100000, 'Anh Khánh, Ninh Kiều, Cần Thơ', '0909135985', 'Hello', 4),
(38, 6, '2024-12-12 10:31:24', 228000, 'Anh Khánh, Ninh Kiều, Cần Thơ', '0909135985', 'Đóng hàng kĩ', 1),
(39, 7, '2024-12-12 17:38:21', 362000, 'Số 14 Nguyễn Công Trứ, phường Vĩnh Thanh, thành phố Rạch Giá, tỉnh Kiên Giang', '0336216123', 'Sách hay', 2),
(40, 6, '2024-12-12 17:47:50', 517000, 'Số 14 Nguyễn Công Trứ, phường Vĩnh Thanh, thành phố Rạch Giá, tỉnh Kiên Giang', '0909135329', 'Đóng gói hàng kĩ', 1),
(41, 8, '2024-12-12 17:53:39', 800000, 'Anh Khánh, Ninh Kiều, Cần Thơ', '0336246546', 'Gói hàng kĩ', 1),
(42, 6, '2024-12-12 18:19:03', 287000, 'Quận Cầu Giấy Hà Nội', '0909135329', 'Mua hàng nè hihi', 2),
(43, 10, '2024-12-12 18:22:50', 306000, 'Cái Răng, Cần Thơ', '0336246546', 'Gói hàng kĩ', 1),
(44, 10, '2024-12-12 18:32:55', 339000, 'Số 14 Nguyễn Công Trứ, phường Vĩnh Thanh, thành phố Rạch Giá, tỉnh Kiên Giang', '0909135329', 'Giao hàng nhanh nha', 1),
(45, 6, '2024-12-13 15:12:18', 432000, 'Số 14 thành phố Rạch Giá, tỉnh Kiên Giang', '0336216546', 'Test mua hàng 13/12/2023', 1),
(46, 10, '2024-12-13 16:54:29', 100000, 'Ninh Kiều, Cần Thơ', '0909135985', 'Hảo mua hàng nè', 1),
(47, 10, '2024-12-13 17:01:33', 500000, 'Ninh Kiều, Cần Thơ', '0909135985', '', 1),
(48, 7, '2024-12-13 17:07:00', 547000, 'Kiên Giang', '0336216654', '', 1),
(49, 6, '2025-03-26 20:18:15', 126000, 'Ninh Kiều, Cần Thơ', '0909135329', '', 1),
(50, 6, '2025-03-26 20:20:18', 640000, 'Cần Thơ', '0336216546', '', 1),
(51, 6, '2025-04-19 20:51:54', 300000, 'Anh Khánh, Ninh Kiều, Cần Thơ', '0336216546', 'Đóng hàng kĩ', 1),
(52, 6, '2025-04-21 18:28:19', 326000, 'Ninh Kiều, Cần Thơ', '0909135329', 'Giao nhanh', 1),
(53, 6, '2025-04-21 18:45:37', 384000, 'Anh Khánh, Ninh Kiều, Cần Thơ', '0909135985', 'Đóng hàng kĩ', 1),
(54, 6, '2025-09-05 20:56:24', 408000, 'Ninh Kiều, Cần Thơ', '0909135329', 'oki', 1),
(55, 6, '2025-09-05 21:02:30', 366000, 'Ninh Kiều, Cần Thơ', '0909135329', 'Đóng hàng kĩ', 4),
(56, 6, '2025-09-05 21:09:21', 326000, 'Hà Nội', '0909135555', 'GIAO NHANH NHA', 1),
(57, 6, '2025-10-10 20:33:44', 126000, 'xin chào  0909199999', '0909199999', 'Gói hàng kĩ', 1),
(58, 16, '2025-11-07 07:07:01', 351000, 'Quận 1 HCM', '0909789456', 'giao hàng nhanh', 4),
(59, 16, '2025-11-07 08:14:19', 500000, 'Quận 1, HCM', '0909123000', 'giao hàng nhanh', 3),
(60, 16, '2025-11-07 22:59:40', 188000, 'Cầu giấy Hà Nội', '0909999999', 'Giao hàng nhanh', 4),
(61, 16, '2025-11-07 23:03:38', 215000, 'Hẻm 30 Ninh Châu Nam Định', '0909123456', 'Giao hàng gấp giúp  tôi, cảm ơn.', 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int NOT NULL,
  `category_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `views` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `category_id`, `title`, `image`, `author`, `content`, `views`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Tác giả - Tác phẩm Top 6 nhà văn nổi tiếng, có sức ảnh hưởng lớn nhất trên thế giới', 'sach-blog-1.png', 'Admin', '<p>Bạn yêu thích các tác phẩm văn học và luôn mong muốn tìm hiểu sâu về nó; đặc biệt hơn bên cạnh nội dung tác phẩm thì các tác giả sáng tác ra những tác phẩm đó cũng khiến bạn tò mò hơn cả. Bạn tự thắc mắc liệu rằng họ cho ra đời những tác phẩm kinh điển dựa vào những cảm xúc và hoàn cảnh ra sao? Bài viết dưới đây <a href=\"https://www.reader.com.vn/\"><strong>Reader</strong></a> sẽ nêu bật <strong>top 6 nhà văn nổi tiếng có sức ảnh hưởng lớn nhất thế giới</strong> để xem bạn có thú vị với một trong số những người này không nhé!</p><h2>1. Nhà văn nổi tiếng với sức ảnh hưởng toàn cầu - William Shakespeare</h2><p>William Shakespeare - một đại văn hào lỗi lạc với vô số các tác phẩm nổi tiếng trên khắp thế giới. Không một ai mà không từng nghe qua các tác phẩm như Romeo và Juliet, Hoàng tử Hamlet hay Vua Macbeth,...</p><p><i><img src=\"https://www.reader.com.vn/uploads/images/nha-van-noi-tieng-the-gioi-william-shakespeare.jpeg\" alt=\"William Shakespeare - một đại văn hào lỗi lạc với tác phẩm kinh điển “Romeo và Juliet”\" width=\"640\" height=\"466\"></i></p><p><i>William Shakespeare - một đại văn hào lỗi lạc với tác phẩm kinh điển “Romeo và Juliet”</i></p><p>Nhà văn William Shakespeare sinh năm 1564 tại nước Anh và mất vào năm 1616. Ông là con trai trong một gia đình có bố làm thợ làm găng tay và mẹ là con gái của một chủ đất giàu có. Các tác phẩm văn học cũng như các vở kịch của ông đã trở nên bất hủ và lại niềm cảm hứng bất tận tại các sân khấu lớn trên thế giới. Ông sở hữu một gia tài đồ sộ với hơn 39 vở kịch và 154 bản sonnet,...Người ta mệnh danh ông là người đã phát triển kịch và văn chương của toàn nhân loại lên một tầm cao mới và những điều ấy trở nên bất hủ trong mọi thời đại.&nbsp;</p><h2>2. Nhà văn nổi tiếng với nguyên lý tảng băng trôi - Ernest Hemingway</h2><p>Ernest Hemingway là một tiểu thuyết gia người Mỹ, nhà văn và đồng thời cũng là một nhà báo tài ba. Ông sinh năm 1899 tại Hoa Kỳ mà mất vào năm 1961.&nbsp;</p><p>Ông đã khiến thế giới phải bàn tán một thời gian khá dài về nguyên lý trong văn phong của ông đó chính là “Nguyên lý tảng băng trôi”. Nguyên lý được mô tả như một sự kiệm lời, súc tích và có tầm quan trọng trong sự phát triển của nền văn học thế giới ở thế kỉ 19. Cách ông xây dựng nhân vật trung tâm thường là những người mang đặc trưng của chủ nghĩa khắc kỷ.&nbsp;</p><p><i><img src=\"https://www.reader.com.vn/uploads/images/nha-van-noi-tieng-the-gioi-ernest-hemingway.jpeg\" alt=\"Hemingway - nhà văn lớn cùng nguyên lý sâu sắc “Tảng băng trôi”\" width=\"640\" height=\"400\"></i></p><p><i>Hemingway - nhà văn lớn cùng nguyên lý sâu sắc “Tảng băng trôi”</i></p><p>Những tác phẩm của Hemingway đều mang phong thái giản dị, trong sáng nhưng ẩn chứa nhiều triết lý sâu sắc về tự nhiên và con người. Tác phẩm ấy đặc sắc bởi chất liệu sống độc thoại nội tâm, tình huống biến hóa, căng thẳng cũng như cực kỳ đa nghĩa và đa thành.&nbsp;</p><p>Một số tác phẩm nổi tiếng toàn thế giới của nhà văn có thể kể đến như: “<a href=\"https://www.reader.com.vn/review-sach-ong-gia-va-bien-ca-a64.html\"><strong>Ông già và biển cả</strong></a>”, “Chuông nguyện hồn ai”, “Giã từ vũ khí hay Hội hè miên man”,...</p><p>Xem thêm:&nbsp;<a href=\"https://www.reader.com.vn/nhung-cuon-sach-doat-giai-nobel-van-hoc-nen-doc-mot-lan-trong-doi-a594.html\">Những cuốn sách đoạt giải Nobel văn học nên đọc một lần trong đời</a></p><h2>3. Đại thi hào bậc nhất và là niềm tự hào của người dân Nga - Pushkin</h2><p>Pushkin hay còn được biết với tên gọi “Mặt trời thi ca Nga” và ông được xem là biểu tượng của trào lưu văn học lãng mạn thế kỷ 19. Ông sinh năm 1799 và mất năm 1837, có xuất thân từ tầng lớp quý tộc cao cấp của Nga thời xưa.&nbsp;</p><p>Ông có một tuổi thơ không mấy êm đẹp khi cha ông thường xuyên không quan tâm đến gia đình còn mẹ ông lại là người diễm kiều, độc đáo. Thế nhưng ông lại tìm được cảm xúc nơi vùng quê ngoại ở ngoại ô Moskva, nơi đây là giúp tâm hồn ông trở nên thanh bình và yên ả hơn bao giờ hết - chất liệu để làm nên chất thơ trong tác phẩm của ông.&nbsp;</p><p>Tình yêu có lẽ là chủ đề chính trong các tác phẩm của <a href=\"https://www.reader.com.vn/tieu-su-cuoc-doi-va-su-nghiep-sang-tac-cua-tac-gia-puskin-a813.html\"><strong>Pushkin</strong></a>; với ông tình yêu luôn nồng cháy và nhiệt tình. Đóng góp của Puskin cho nền văn học thế giới tồn tại ở nhiều mặt, nhiều thể loại nhưng cống hiến vĩ đại nhất vẫn nằm ở các tập thơ trữ tình với hơn 800 bài thơ cùng 13 bản trường ca bất hủ.&nbsp;</p><p><i><img src=\"https://www.reader.com.vn/uploads/images/nha-van-noi-tieng-the-gioi-pushkin.jpeg\" alt=\"Pushkin - Mặt trời thi ca Nga xuất sắc toàn thế giới\" width=\"640\" height=\"400\"></i></p><p><i>Pushkin - Mặt trời thi ca Nga xuất sắc toàn thế giới</i></p><p>Mặc dù ông ra đi còn khá trẻ nhưng những tác phẩm của ông đã trở nên trường tồn cho đến tận ngày nay, là nguồn cảm hứng cho biết bao nhà văn, nhà thơ, nhà soạn kịch. Một số tác phẩm nổi bật có thể kể đến như “Tôi yêu em”, kịch “Kỵ sĩ đồng” hay vở kịch kinh điển “Vị khách bằng đá”,...</p><h2>4. Anh em nhà Grimm - Cặp đôi anh - em nhà văn nổi tiếng với tập truyện dân gian và cổ tích</h2><p>Người anh là Jacob Grimm - ông sinh năm 1785 và mất năm 1863, em trai là Wilhelm sinh năm 1786 và mất năm 1859. Cả hai nhà văn đều là người ngôn ngữ học và nghiên cứu văn học dân gian.&nbsp;</p><p><i><img src=\"https://www.reader.com.vn/uploads/images/nha-van-noi-tieng-the-gioi-anh-em-nha-grimm.jpeg\" alt=\"Anh em nhà Grimm với những tác phẩm truyện cổ tích siêu nổi tiếng\" width=\"640\" height=\"400\"></i></p><p><i>Anh em nhà Grimm với những tác phẩm truyện cổ tích siêu nổi tiếng</i></p><p>Cả hai có cuộc sống mưu sinh có phần cơ cực và đầy thiếu thốn. Chính vì điều này đã được thể hiện rất nhiều trong tác phẩm của cả hai anh em. Anh em nhà Grimm đã để lại rất nhiều tập truyện dân gian và truyện cổ tích nổi tiếng cho đến tận ngày nay như: Nàng bạch tuyết, Công chúa lọ kem, Cô bé quàng khăn đỏ,... Đây đều là những câu chuyện nổi tiếng trên toàn thế giới và được chuyển thể thành phim thiếu nhi được rất nhiều các bạn nhỏ thiếu nhi yêu thích.&nbsp;</p><h2>5. Nhà văn, thi sĩ, nhà viết kịch nổi tiếng người Pháp - Victor Hugo</h2><p><a href=\"https://www.reader.com.vn/tieu-su-cuoc-doi-va-su-nghiep-sang-tac-nha-van-victor-hugo-a819.html\"><strong>Victor Hugo</strong></a> sinh năm 1802 và mất năm 1885 tại Paris - Pháp. Sau khi ông qua đời, nước Pháp đã tiến hành lễ quốc tang và mộ của ông được đặt trong điện Panthenon.&nbsp;</p><p><i><img src=\"https://www.reader.com.vn/uploads/images/nha-van-noi-tieng-the-gioi-victor-hugo.jpeg\" alt=\"Victor Hugo nhà văn với chủ nghĩa lãng mạn nổi tiếng toàn thế giới\" width=\"640\" height=\"364\"></i></p><p><i>Victor Hugo nhà văn với chủ nghĩa lãng mạn nổi tiếng toàn thế giới</i></p><p>Là một nhà văn theo chủ nghĩa lãng mạn, ông đã để lại rất nhiều tác phẩm vô cùng đặc sắc, phải kể đến là “Nhà thờ Đức Bà Paris” và “<a href=\"https://www.reader.com.vn/review-sach-nhung-nguoi-khon-kho-victor-hugo-a52.html\"><strong>Những người khốn khổ</strong></a>”. Ông đã dùng hết mình cống hiến cho những sự đổi mới thơ ca và sân khấu, bởi vậy những tác phẩm cùng nhân cách của ông luôn được người đương thời ngưỡng mộ.</p><h2>6. Nhà văn nổi tiếng trên toàn thế giới - J.K.Rowling</h2><p>J.K.Rowling với bộ tiểu thuyết “<a href=\"https://www.reader.com.vn/review-harry-potter-va-phong-chua-bi-mat-j-k-rowling-a367.html\"><strong>Harry Potter</strong></a>” đã khiến cả thế giới phải “chao đảo” khi bộ sách đã trở thành một hiện tượng văn học và đã bán được hàng triệu bản trên toàn thế giới.&nbsp;</p><p>Rowling được sinh ra ở Anh vào năm 1965, và đã có thời gian khó khăn về tài chính và thất nghiệp trước khi thành công với bộ sách “Harry Potter”. Tuy nhiên đó là thời gian mà cô tìm thấy niềm đam mê với việc viết văn và đưa người đọc vào một thế giới ma thuật với cực kỳ nhiều màu sắc, ở đó các nhân vật sử dụng phép luật để tạo nên những điều kỳ diệu.&nbsp;</p><p><i><img src=\"https://www.reader.com.vn/uploads/images/nha-van-noi-tieng-the-gioi-JKRowling.jpeg\" alt=\"J.K.Rowling - Nữ nhà văn tài ba với bộ truyện “Harry Potter” nổi tiếng toàn thế giới\" width=\"640\" height=\"367\"></i></p><p><i>J.K.Rowling - Nữ nhà văn tài ba với bộ truyện “Harry Potter” nổi tiếng toàn thế giới</i></p><p>Bộ truyện “Harry Potter” có tác động cực kỳ to lớn đến nền văn học và văn hóa trên toàn cầu. Bộ truyện đã trở thành một hiện tượng văn hóa, với các bộ phim cùng các trò chơi điện tử và sản phẩm khác. Ngoài “Harry Potter” thì bà cũng viết nhiều tác phẩm khác bao gồm cả tiểu thuyết cho người lớn.&nbsp;</p><p><strong>KẾT LUẬN</strong></p><p>Bên trên là top 6 nhà văn nổi tiếng có sức ảnh hưởng lớn nhất trên thế giới mà chúng tôi đã tổng hợp được. Mặc dù vậy thì trên thế giới còn rất nhiều người nổi tiếng khác, các nhà văn ấy là đại diện cho những gì xuất sắc nhất của nền văn học và đại diện cho những nền tư tưởng khác nhau. Họ cùng với những tác phẩm cùng phong cách sáng tác của mình mãi mãi trở nên bất tử cùng thời gian.&nbsp;</p>', 0, 1, '2023-11-29 17:13:09', '2025-11-07 22:45:14'),
(5, 9, 'Sách theo chủ đề Những cuốn sách hay nhất dành cho người trầm cảm', 'sach-blog-2.png', 'Admin', '<h3><a href=\"https://www.reader.com.vn/sach-theo-chu-de.html\">Sách theo chủ đề</a></h3><h2><a href=\"https://www.reader.com.vn/nhung-cuon-sach-hay-nhat-danh-cho-nguoi-tram-cam-a984.html\">Những cuốn sách hay nhất dành cho người trầm cảm</a></h2><p><strong>Những cuốn sách dưới đây sẽ giúp bạn hiểu rõ hơn về căn bệnh, tổn thương tâm lý để chúng ta có thể trân quý bản thân, yêu thương chính mình và sống một cuộc đời tích cực, lạc quan nhất.</strong></p><ul><li><a href=\"https://www.reader.com.vn/nhung-cuon-sach-giup-ban-chua-lanh-vet-thuong-a167.html\">Những cuốn sách giúp bạn chữa lành vết thương</a></li><li><a href=\"https://www.reader.com.vn/buoc-vao-cua-hieu-nhiem-mau-di-tim-y-nghia-cua-hanh-phuc-a966.html\">Bước vào cửa hiệu nhiệm màu - Đi tìm ý nghĩa của hạnh phúc</a></li></ul><p><strong><img src=\"https://www.reader.com.vn/uploads/images/nhung-cuon-sach-hay-nhat-danh-cho-nguoi-tram-cam-1.jpg\" alt=\"nhung-cuon-sach-hay-nhat-danh-cho-nguoi-tram-cam-1\" width=\"650\" height=\"450\"></strong></p><p>Hiện nay, cuộc sống của con người trở nên áp lực, mệt mỏi hơn rất nhiều điều này ảnh hưởng đến tâm lý của giới trẻ. Trầm cảm là căn bệnh không phân biệt độ tuổi và giới tính. Nếu bạn hoặc những người xung quanh đang có triệu chứng của những căn bệnh này hãy đến thăm khám đúng cách và đừng quên là hãy đọc sách để bồi dưỡng thêm kiến thức.</p><h3>1. Đại dương đen</h3><p><strong>Đại dương đen</strong> là cuốn sách được viết dành tặng cho người trầm cảm, sách được chia làm 2 phần rõ ràng. Phần 1 kể lại những câu chuyện về nhân vật – người mà Đặng Hoàng Giang tiếp xúc và tìm hiểu về cuộc sống của họ. Phần 2 sẽ là phần lý giải nguyên nhân vì sao các nhân vật lại mắc phải căn bệnh trầm cảm, kiến thức cho chúng ta hiểu rõ hơn về những loại bệnh tâm lý.</p><p>Qua lời kể chân thật của nhân vật chúng ta phần nào hiểu thêm về trầm cảm, trầm cảm không phải căn bệnh của riêng người trẻ mà nó xuất hiện ở rất nhiều độ tuổi khác nhau. Nếu sống trong áp lực lâu ngày, bị bố mẹ, người thân bạo hành hoặc gặp một cú sốc lớn trong cuộc đời chúng ta sẽ dễ mắc phải căn bệnh này.</p><p><img src=\"https://www.reader.com.vn/uploads/images/nhung-cuon-sach-hay-nhat-danh-cho-nguoi-tram-cam-2.jpg\" alt=\"nhung-cuon-sach-hay-nhat-danh-cho-nguoi-tram-cam-2\" width=\"650\" height=\"450\"></p><p><strong>Đại dương đen</strong> như muốn nói với chúng ta rằng đừng xem nhẹ trầm cảm, căn bệnh này cần nhận được sự quan tâm của xã hội nhiều hơn nữa. Nếu không thể nói ra những câu từ nhẹ nhàng và dễ chịu cũng đừng nói những lời gây tổn thương người khác, bởi bạn không biết đằng sau khuôn mặt luôn vui vẻ ấy đã từng phải trả qua chuyện kinh khủng như thế nào đâu.</p><h3>2. Đám trẻ ở đại dương đen</h3><p><a href=\"https://www.reader.com.vn/dam-tre-o-dai-duong-den-nhung-cuoc-doi-thoai-day-dau-don-a932.html\"><strong>Đám trẻ ở đại dương đen</strong></a> là cuốn sách chứa đựng những cuộc hội thoại và đối thoại đầy tăm tối của đứa trẻ ở đại dương đen, ở đó chúng lạnh lẽo và tuyệt vọng vô cùng. Sự dồn nén cảm xúc, tổn thương từ quá khứ khiến chúng chẳng thể sống một cuộc đời bình thương.</p><p>Mặc dù chịu nhiều thiệt thòi nhưng những đứa trẻ ở đại dương luôn khao khát có thể thoát khỏi đại dương đen chìm nghỉm ấy, chúng muốn tìm cho mình một ánh sáng cuộc đời. Câu từ trong sách sẽ phần nào xoa dịu những ai đã và đang gặp tổn thương tâm lý trầm trọng.</p><p>Hy vọng ai trong chúng ta đều sẽ trân trọng bản thân, yêu thương chính mình và mạnh dạn đối diện với nỗi đau của mình và chữa lành nó thay vì chạy trốn!</p><p><img src=\"https://www.reader.com.vn/uploads/images/nhung-cuon-sach-hay-nhat-danh-cho-nguoi-tram-cam-3.jpg\" alt=\"nhung-cuon-sach-hay-nhat-danh-cho-nguoi-tram-cam-3\" width=\"650\" height=\"450\"></p><p>“Cả đám bạn, chẳng ai dám kể về hành trình của mình, vì trông ai cũng trầy xước đủ đường hết. Ai cũng cần một điểm tựa, cần được an ủi, nhưng lại chẳng ai được lớn lên trong yêu thương mà học được cách yêu thương người khác cả.”</p><h3>3. Chữa lành đứa trẻ bên trong bạn</h3><p><strong>Chữa lành đứa trẻ bên trong bạn</strong> – quá trình khám phá và phục hồi dành cho những người trưởng thành gặp tổn thương từ gia đình. Đây là cuốn sách tâm lý bán chạy trên thế giới trong mọi thời đại.</p><p>Những tổn thương tâm lý nếu lặp đi lặp lại sẽ ảnh hưởng đến quá trình hình thành và phát triển nhân cách của một đứa trẻ. Với hơn 10 năm nghiên cứu, làm rất nhiều cuộc khảo sát, báo cáo khoa học khác nhau tác giả khẳng định rằng tổn thương tâm lý có thể gây rất nhiều hậu quả nghiêm trọng về cả sau này.</p><p><img src=\"https://www.reader.com.vn/uploads/images/nhung-cuon-sach-hay-nhat-danh-cho-nguoi-tram-cam-4.jpg\" alt=\"nhung-cuon-sach-hay-nhat-danh-cho-nguoi-tram-cam-4\" width=\"650\" height=\"450\"></p><p>Quá trình chữa lành của mỗi người không giống nhau, có người mất rất nhiều thời gian cũng có người lại chỉ mất một khoảng thời gian rất ngắn. Thế nhưng hãy yêu thương bản thân mình, hãy để cho chúng ta có cơ hội được trải nghiệm cuộc sống tốt đẹp nhất và sống hết mình cho từng khoảnh khắc.</p><p>Cảm xúc của bản thân mình, bạn phải thừa nhận dù nó tích cực hay tiêu cực. Hãy để bản thân được trải nghiệm nhiều cung bậc cảm xúc từ vui đến buồn và sống một cuộc đời do chính bản thân mong muốn điều đó sẽ khiến bạn hạnh phúc hơn!</p><h3>4. Vượt qua âu lo chữa lành tâm trí</h3><p><strong>Vượt qua âu lo, chữa lành tâm trí</strong> – Kiểm soát trầm cảm trong 7 tuần bằng liệu pháp nhận thức hành vi. Cuốn sách đưa ra những phương pháp thực tế giúp bạn vượt qua sự sợ hãi hay tình trạng căng thẳng quá mức trong cuộc sống. Bài tập sẽ được thiết kế trong 7 tuần như sau:</p><p>Tuần 1: Đặt ra mực tiêu và bắt đầu hành động</p><p>Tuần 2: Trở lại với cuộc sống</p><p>Tuần 3: Xác định những lối suy nghĩ của bạn</p><p>Tuần 4: Thoát khỏi những lối suy nghĩ tiêu cực</p><p><img src=\"https://www.reader.com.vn/uploads/images/nhung-cuon-sach-hay-nhat-danh-cho-nguoi-tram-cam-5.jpg\" alt=\"nhung-cuon-sach-hay-nhat-danh-cho-nguoi-tram-cam-5\" width=\"650\" height=\"450\"></p><p>Tuần 5: Quản lý thời gian và công việc</p><p>Tuần 6: Đối diện với những nỗi sợ hãi của bạn</p><p>Tuần 7: Liên kết tất cả mọi thứ lại với nhau.</p><p>Với những bài tập bổ ích, đơn giản sẽ giúp bạn tìm ra phương pháp điều trị tâm lý cho chính mình. Vượt qua âu lo, chữa lành tâm trí sẽ là người bạn cùng chúng ta vượt qua những áp lực, khó khăn và giúp bạn hiểu rõ bản thân hơn nữa. Hy vọng những người đang gặp phải những vấn đề tâm lý sẽ không bỏ cuộc, tìm lý do để thay đổi tốt hơn rất nhiều!</p><h3>5. Những đêm không ngủ những ngày chậm trôi</h3><p><strong>Những đêm không ngủ những ngày chậm trôi</strong> là cuốn sách chữa lành vết thương dành cho người bị trầm cảm. Cuốn sách tâpoj hợp những câu chuyện của nhiều người khác nhau, họ gặp phải nhiều triệu chứng của bệnh tâm lý như trầm cảm, rối loạn lo âu,...</p><p><img src=\"https://www.reader.com.vn/uploads/images/nhung-cuon-sach-hay-nhat-danh-cho-nguoi-tram-cam-6.jpg\" alt=\"nhung-cuon-sach-hay-nhat-danh-cho-nguoi-tram-cam-6\" width=\"650\" height=\"450\"></p><p>Sống giữa xã hội vội vã đôi khi chúng ta lao lực vì công việc, vì cuộc sống mà quên mất rằng bản thân cũng cần được lắng nghe và chữa lành. Tổn thương lâu ngày nếu không được chữa lành sẽ gây ảnh hưởng đến tâm lý và cuộc sống của chúng ta. Ngày hôm nay hãy ngồi lại, suy ngẫm những câu chuyện trong cuốn sách Những đêm không ngủ những ngày chậm trôi để cùng nhau chữa lành nhé!</p><h3><strong>6. Từng bước nở hoa sen</strong></h3><p>Thiền sư Thích Nhất Hạnh nổi tiếng với những cuốn sách về Phật Pháp hướng con người đến lối sống bình yên trong tâm hồn.<strong> </strong><a href=\"https://www.reader.com.vn/tung-buoc-no-hoa-sen-an-tru-trong-hien-tai-a980.html\"><strong>Từng bước nở hoa sen</strong></a> bao gồm 47 bài kệ là bài học giúp con người tu tập và sống chánh niệm.</p><p>Những hoạt động cơ bản trong một ngày được Thiền sư Thích Nhất Hạnh ghi chép lại, để giúp người đọc hình dung rằng chúng ta cần sống chánh niệm, sống cho giây phút hiện tại. Thường xuyên chữa lành cho bản thân thay vì chờ đợi chính mình tổn thương mới bắt đầu chữa lành. Để hoạt động này được diễn ra nhiều hơn thì chúng ta cần phải sống hết mình vì hiện tại, lắng nghe bản thân nhiều hơn nữa.</p><p><img src=\"https://www.reader.com.vn/uploads/images/nhung-cuon-sach-hay-nhat-danh-cho-nguoi-tram-cam-7.jpg\" alt=\"nhung-cuon-sach-hay-nhat-danh-cho-nguoi-tram-cam-7\" width=\"650\" height=\"450\"></p><p><strong>Từng bước nở hoa sen</strong> – nơi thiền định khiến con người ta thay đổi, cuộc sống sẽ không thể tốt đẹp lên nếu bạn quyết định đi vào đám bùn mà không dám đứng lên. Mạnh mẽ hơn nữa cuộc sống nhất định sẽ yêu thương bạn.</p><p>Để trầm cảm không còn là nỗi sợ hãi của chúng ta hãy chăm sóc bản thân, yêu thương bản thân và thực hành chữa lành thường xuyên! Hy vọng những cuốn sách Reader giới thiệu sẽ giúp bạn có thêm nhiều kiến thức về tâm lý.</p>', 0, 1, '2023-11-29 17:25:47', '2025-11-07 22:46:25'),
(8, 9, 'Sách hay nên đọc Top 10 cuốn sách hay nhất nên đọc vào năm 2025', 'sach-blog-3.png', 'Admin', '<h3><strong>1. Không diệt không sinh đừng sợ hãi</strong></h3><p><strong>Không diệt không sinh đừng sợ hãi </strong>là cuốn sách nổi tiếng của Thiền sư Thích Nhất Hạnh. Bằng tất cả những vốn sống, kinh nghiệm của bản thân tác giả mang đến cho độc giả thông điệp về sự sống, giúp mỗi người đều ý thức được việc sống chánh niệm, sống cho giây phút hiện tại, để từ đó ai cũng có thể tìm thấy mục đích sống của mình, thiền ở mọi nơi và có những giây phút an yên nhất!</p><p><img src=\"https://www.reader.com.vn/uploads/images/top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-2.jpg\" alt=\"top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-2\" width=\"650\" height=\"450\"></p><p>Trong cuốn sách này thiền sư Thích Nhất Hạnh hướng chúng ta đến sống tỉnh thức, mọi nỗi đau trên cuộc đời này không ngẫu nhiên mà đến với chúng ta. Chỉ khi con người nhìn sâu vào bản chất của vấn đề mới có thể tìm thấy hạnh phúc của cuộc đời mình.</p><h3><strong>2. Mẹ làm gì có ước mơ</strong></h3><p>Có bao giờ bạn hỏi mẹ rằng ước mơ của mẹ là gì chưa? Nếu có mẹ cũng chỉ trả lời đại khái cho qua chuyện, thật ra mẹ cũng có ước mơ thế nhưng gánh nặng cơm áo gạo tiền khiến ước mơ ấy của mẹ bị cất giấu. Khi con chào đời, mẹ chỉ biết rằng được nhìn thấy con cười, thấy con sống vui khỏe là mẹ thấy vui rồi, cần gì ước mơ.</p><p>Hình ảnh người mẹ tần tảo sớm hôm lo cho con từng đồng đi học xuất hiện trong cuốn sách <strong>Mẹ làm gì có ước mơ</strong> khiến người đọc không khỏi xúc động. Chúng ta có tuổi trẻ, chúng ta mải mê chạy theo những thứ xa hoa ngoài kia mà quên mất mẹ luôn ở nhà chờ đợi các con trở về. Hy vọng cuốn sách này sẽ giúp bạn yêu quý, trân trọng tình cảm gia đình hơn nữa!</p><p><img src=\"https://www.reader.com.vn/uploads/images/top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-3.jpg\" alt=\"top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-3\" width=\"650\" height=\"450\"></p><h3><strong>3. Trốn lên mái nhà để khóc</strong></h3><p><strong>Trốn lên mái nhà để khóc</strong> của Lam giúp chúng ta hồi tưởng lại tuổi thơ tươi đẹp, ở đó có ông bà ngoại người luôn yêu thương, nâng niu chúng ta. Mỗi chiều đi học về được bà đèo trên con xe đạp cũ kĩ, được bà yêu thương mua cho cái bánh, cái quà cũng đủ khiến cho một đứa con nít vui hết ngày.</p><p>Tuổi thơ qua đi, chúng ta bắt đầu học cách làm người lớn, lúc này chẳng thể ngây ngô như ngày bé. Thế giới của người trưởng thành có những điều vô lý lắm, chúng ta muốn trở về ngày thơ bé nhưng lại chẳng có cách nào khác.<strong> Trốn lên mái nhà để khóc</strong>T&nbsp;phù hợp với những ai đang muốn có một vé quay lại tuổi thơ, được chữa lành và can đảm đối mặt với những thương tổn của mình.</p><p><img src=\"https://www.reader.com.vn/uploads/images/top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-4.jpg\" alt=\"top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-4\" width=\"650\" height=\"450\"></p><h3><strong>4. Một đời được mất</strong></h3><p><strong>Một đời được mất</strong> – sự trở lại của Vãn Tình nữ hoàng của những cuốn sách truyền cảm hứng sống đến phái đẹp. Mọi sự được, mất trong cuộc sống này đều mang một ý nghĩa riêng, khi bạn mất đi một thứ gì đó ông trời sẽ bù đắp lại cho bạn một thứ khác. Và tất cả những bất ngờ ấy chúng ta chẳng thể đoán trước được.</p><p>Vãn Tình một người có nhiều kinh nghiệm sống và trải nghiệm của cô vô cùng phong phú, khi đi đến nhiều đỉnh cảo sự nghiệp khác nhau, có một cuộc sống nhiều người ngưỡng mộ Vãn Tình rút ra cho mình rất nhiều bài học đắt giá. Tất cả được đúc kết trong cuốn sách <a href=\"https://www.reader.com.vn/mot-doi-duoc-mat-cai-gi-cung-thich-thi-dao-dau-ra-a946.html\"><strong>Một đời được mất </strong></a>giúp các cô gái thức tỉnh khỏi sự mộng mơ để sống thực tế hơn!</p><p><img src=\"https://www.reader.com.vn/uploads/images/top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-5.jpg\" alt=\"top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-5\" width=\"650\" height=\"450\"></p><h3>5. Vẫn ổn thôi kể cả khi bạn một mình</h3><p>Ở thời đại này chắc hẳn chúng ta chẳng còn ngại với việc ở một mình. Cô đơn sẽ là khoảng thời gian để chúng ta nhìn lại những gì đã qua, một mình nhưng vẫn hạnh phúc còn hơn việc chúng ta cố nắm đại bàn tay của một ai đó.</p><p><a href=\"https://www.reader.com.vn/van-on-thoi-ke-ca-khi-ban-mot-minh-khi-doc-than-la-su-lua-chon-a962.html\"><strong>Vẫn ổn thôi kể cả khi bạn một mình</strong></a>&nbsp;- cuốn sách mang đến năng lượng tích cực giúp người đọc có những góc nhìn khác về chuyện cô đơn một mình. Hy vọng dù cô đơn hay có người ở bên cạnh bạn vẫn có thể mỉm cười, sống cuộc đời hạnh phúc nhất.</p><p><img src=\"https://www.reader.com.vn/uploads/images/top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-6.jpg\" alt=\"top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-6\" width=\"650\" height=\"450\"></p><h3>6. Không tức giận bạn đã thắng</h3><p>Hỷ, nộ, ái, ố những cảm xúc bình thường của con người. Khi chúng ta đối diện với rất nhiều hoàn cảnh khiến con người không thể kiềm chế được cảm xúc của mình. Thực tế đã cho thấy nhiều người “giận quá mất khôn” để lại nhiều hối tiếc.</p><p>Cuốn sách<strong> Không tức giận bạn đã thắng</strong> giúp chúng ta hiểu rõ bản chất của sự giận dữ và làm thế nào để cân bằng cảm xúc, kiềm chế những bực tức trong người tránh gây ảnh hưởng đến những người xung quanh. Khi tức giận hãy im lặng, đừng để sự tức giận khiến bạn đánh mất bản thân mình.</p><p><img src=\"https://www.reader.com.vn/uploads/images/top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-7.jpg\" alt=\"top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-7\" width=\"650\" height=\"450\"></p><h3>7. Đứa trẻ hiểu chuyện thường không có kẹo ăn</h3><p>Cuốn sách này dành tặng cho những ai có trải nghiệm tồi tệ ở thời thơ ấu.</p><p>Có không ít phụ huynh hy vọng con mình sẽ trở thành hình mẫu lý tưởng “con nhà người ta”. Vì thế ép những đứa trẻ phải sống bằng ước mơ của bố mẹ, bắt chúng học hành áp lực, bắt chúng phải trở thành phiên bản mà chúng không hề mong muốn.</p><p><img src=\"https://www.reader.com.vn/uploads/images/top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-8.jpg\" alt=\"top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-8\" width=\"650\" height=\"450\"></p><p>Đằng sau khuôn mặt luôn dạ, vâng làm theo ý muốn của bố mẹ ấy là nỗi đau chẳng ai có thể thấu. Đôi khi hiểu chuyện cũng là một loại đau lòng, nếu bạn đã từng trải qua cảm giác đau khổ ấy cuốn sách <strong>Đứa trẻ hiểu chuyện thường không có kẹo để ăn </strong>dành cho bạn!</p><h3>8. Vượt lười – Liệu trình cho người thiếu động lực</h3><p>Nếu bạn chưa thể kỷ luật bản thân, bạn trì hoãn, lười biếng trước công việc vậy thì cuốn sách <strong>Vượt lười – Liệu trình cho người thiếu động lực </strong>sẽ vực dậy tinh thần ham học hỏi và làm việc của bạn.</p><p>Không nói những câu đao to búa lớn, không khoa trương hay dạy đời người đọc. Những phương pháp chống lại cơn lười biếng trong sách được tác giả viết một cách rất dễ hiểu, dễ áp dụng vào cuộc sống. Bên cạnh đó sách còn có rất nhiều hình minh họa giúp cho người đọc dễ tiếp cận và hấp thu nội dung hơn.</p><p><img src=\"https://www.reader.com.vn/uploads/images/top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-9.jpg\" alt=\"top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-9\" width=\"650\" height=\"450\"></p><p>Vượt lười như một lời cổ vũ người trẻ, hãy thoát ra khỏi những cuộc chơi, những giờ nằm ở nhà chỉ biết bấm điện thoại và hướng đến cuộc sống kỷ luật để thành công!</p><h3>9. Dear, Darling</h3><p><strong>Dear, Darling</strong> những lời nói dịu dàng dành cho những ai đã và đang đem lòng yêu một người, như một lời nhắn nhủ đến tất cả chúng ta hãy yêu hết mình cho ngày hôm nay, chuyện ngày mai chưa cần vội vàng.</p><p>Có lẽ khoảnh khắc được nắm bàn tay một người, được họ yêu thương, nâng niu là khoảnh khắc hạnh phúc nhất đối với mỗi chúng ta. Tình yêu khiến con người ta say đắm, trở thành một phiên bản hoàn toàn mới lạ. Cuốn sách <strong>Dear, Darling</strong> gửi tới những người đang yêu nhau một lời nói ngọt ngào nhất!</p><p><img src=\"https://www.reader.com.vn/uploads/images/top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-10.jpg\" alt=\"top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-10\" width=\"650\" height=\"450\"></p><p>Hy vọng tất cả những người yêu nhau sẽ sớm tìm thấy nhau. Nếu vẫn chưa gặp được người ấy, bạn đừng sốt ruột, những người gặp nhau rồi sẽ phải gặp nhau, những người không duyên không phận có cầu cũng chẳng thể tìm thấy nhau.</p><h3>10. Cuối con đường sẽ gặp một người thương</h3><p>Ngày ấy, chúng ta từng yêu một người điên cuồng đến đánh mất lý trí, chúng ta nghĩ rằng chia tay bản thân sẽ không thể sống nổi. Sau chia tay một thời gian chúng ta nhận ra đó chỉ toàn suy nghĩ ấu trĩ, chỉ có bản thân mới là quan trọng nhất.</p><p>Đi qua mỗi đoạn tình cảm chúng ta lại ngộ ra những chân lý tình yêu mới, để chúng ta hoàn thiện bản thân và trưởng thành hơn nữa. <strong>“</strong><a href=\"https://www.reader.com.vn/cuoi-con-duong-se-gap-mot-nguoi-thuong-du-dau-chung-ta-se-buong-tay-a931.html\"><strong>Cuối con đường sẽ gặp một người thương</strong></a><strong>” </strong>của tác giả Trí mang tới cho người đọc những cảm xúc ngọt ngào đan xen đau xót về những mối tình đi ngang qua cuộc đời chúng ta.</p><p><img src=\"https://www.reader.com.vn/uploads/images/top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-11.jpg\" alt=\"top-10-cuon-sach-hay-nhat-nen-doc-vao-nam-2024-11\" width=\"650\" height=\"450\"></p><p><strong>Hy vọng những gợi ý của Reader sẽ giúp bạn tìm được những cuốn sách hay nhất và chúc bạn có một năm 2024 đầy bùng nổ!</strong></p>', 0, 1, '2023-12-03 13:45:32', '2025-11-07 22:47:13'),
(9, 9, 'Review sách Review sách Hoa gặp hoa nở người gặp người thương', 'sach-blog-4.png', 'Admin', '<p><strong>“Hoa gặp hoa nở, người gặp người thương” – một cuốn sách của tác giả Soul giúp độc giả thấu hiểu bản thân, làm bạn với chính mình. Khi “tâm” chúng ta vững, chúng ta sẽ sống hạnh phúc, không dễ bị những thứ bên ngoài tác động đến!</strong></p><p><strong><img src=\"https://www.reader.com.vn/uploads/images/review-sach-hoa-gap-hoa-no-nguoi-gap-nguoi-thuong-1.jpg\" alt=\"review-sach-hoa-gap-hoa-no-nguoi-gap-nguoi-thuong-1\" width=\"650\" height=\"450\"></strong></p><h2><strong>Cảm nhận về sách</strong></h2><h3><strong>Ở lâu thì thành duyên</strong></h3><p>Trong cuộc sống này khi gieo tạo bất cứ điều gì nó sẽ để lại một quả sau này. Giống như luật nhân quả vậy, bạn gieo cái gì bạn sẽ gặt cái ấy. Điều này lý giải cho việc những điều dần trở nên quen thuộc với bạn, đó là những mong muốn của bạn ở khoảng thời gian nhất định nào đó.</p><p>Ở lâu cũng thành duyên – đừng sống một cuộc đời lãng phí thời gian, bám víu vào một chấp niệm nào đó mà quên mất rằng thật ra cuộc sống này ngắn ngủi vô cùng, có những điều cuối cùng chỉ là trải nghiệm, có những người gặp chúng ta giống như lữ khách qua đường. Thương mãi làm gì một người chỉ xem ta như một người bạn, đau khổ cuối cùng cũng chẳng giải quyết được vấn đề.</p><p>Kiếp này được gặp nhau xem như một mối nhân duyên, người nào đi cùng ta đến cuối cùng hãy trân quý, còn người đi cùng ta được một đoạn đường hãy học cách quên họ đi. Mỗi một cuộc gặp gỡ đều có ý nghĩa riêng của nó, đôi khi chúng ta gặp nhau để dạy nhau cách trưởng thành, dạy nhau cách để sống tốt hơn. Còn đi được với nhau đến cuối cuộc đời hay không lại là câu chuyện khác, thay vì lúc nào cũng cố chấp với những chuyện không thể thay đổi mình thay đổi góc nhìn thành tích cực hơn.</p><p><img src=\"https://www.reader.com.vn/uploads/images/review-sach-hoa-gap-hoa-no-nguoi-gap-nguoi-thuong-2.jpg\" alt=\"review-sach-hoa-gap-hoa-no-nguoi-gap-nguoi-thuong-2\" width=\"650\" height=\"450\"></p><p>Chúng ta nhìn thẳng vào bản chất của nhân duyên là đều có điểm tốt, điểm xấu. Vì gặp được người ấy chúng ta mới nhận ra nhiều điều và bắt đầu thay đổi bản thân. Gặp gỡ được nhau đã không phải chuyện gì dễ dàng. Trân trọng người ở bên, ai không còn muốn ở bên thì để họ rời đi.</p><p>“Thuận và nghịch đều có cái khó riêng. Thuận không khéo sẽ thành ỷ lại, say mê với chiến thắng. Nghịch nếu không kiên trì dũng mãnh vượt qua sẽ bị tác động tạo nên sự đau khổ, bức bối và suy kiệt về tinh thần.”</p><h3><strong>Đừng sợ hãi, trốn tránh những tổn thương bên trong mình</strong></h3><p>Chữa lành vết thương cần thời gian, đừng vội vàng cũng đừng lãng tránh nó vì càng lãng tránh bạn sẽ càng đau lòng. Học cách chấp nhận, đối diện để thay đổi mọi thứ sẽ tốt hơn. Việc bạn cảm thấy mệt mỏi, muốn bật khóc là chuyện hết sức bình thường, không khóc được mới là một việc đáng sợ.</p><p><img src=\"https://www.reader.com.vn/uploads/images/review-sach-hoa-gap-hoa-no-nguoi-gap-nguoi-thuong-3.jpg\" alt=\"review-sach-hoa-gap-hoa-no-nguoi-gap-nguoi-thuong-3\" width=\"650\" height=\"450\"></p><p>“Chữa lành tổn thương trong tâm cũng cần thời gian và cũng cần “sát trùng”, “thay băng” mỗi ngày như chữa lành vết thương ngoài da. Nên vì vậy, không có gì là sợ hãi, không có gì mà mắc cỡ hay thấy bản thân yếu đuối khi bây giờ vẫn chưa đặt hết xuống những khúc mắc với một ai đó. Chỉ cần mỗi ngày chúng ta sẵn sàng đối diện với huân tập (thấm dần dần) trong suy nghĩ thì chắc chắn đến một ngày sẽ thả trôi được muộn phiền.”</p><h3>An lành không phụ thuộc vào điều kiện sống</h3><p>Mỗi người có một hoàn cảnh sống khác nhau, có những cách nghĩ khác nhau về cuộc sống. Nhưng nó không đồng nghĩa với việc người giàu có về vật chất sẽ hạnh phúc còn người có gia cảnh bình thường sẽ không hạnh phúc. An lành không hề phụ thuộc vào hoàn cảnh sống. Mà an lành phụ thuộc vào tâm hồn phía bên trong ta, nếu bạn không chăm sóc kĩ đứa trẻ bên trong mình thì bạn sẽ cảm thấy bất an, cảm thấy việc có điều kiện sống tốt mới là điều khiến bạn hết bất an, thực tế an lành xuất phát từ tâm.</p><p><img src=\"https://www.reader.com.vn/uploads/images/review-sach-hoa-gap-hoa-no-nguoi-gap-nguoi-thuong-4.jpg\" alt=\"review-sach-hoa-gap-hoa-no-nguoi-gap-nguoi-thuong-4\" width=\"650\" height=\"450\"></p><p>Bởi mỗi người chúng ta đến với thế giới này đều mang một ý nghĩa riêng, không ai giống ai. Cuộc sống của bạn thì bạn phải sống, không ai sống hộ bạn. Bình an hay không cũng chẳng ai mang tới cho mình chỉ có mình mới khiến mình hạnh phúc mà thôi.</p><h3><strong>Muốn người khác thương, thì mình phải dễ thương</strong></h3><p>Không phải tự nhiên một người lại nhận được sự yêu quý từ mọi người xung quanh. Nếu người ấy tốt bụng, nói được làm được, luôn giúp đỡ mọi người xung quanh thì chắc chắn rồi, họ sẽ nhận lại tình cảm ấy từ mọi người. Khi bạn sống tốt, người khác luôn yêu quý bạn. Ngược lại khi bạn sống ích kỷ, bạn sẽ cảm thấy cuộc sống này thật bất hạnh vì chẳng ai yêu quý bạn.</p><p>Vậy nên muốn người khác yêu thương mình thì mình phải là người dễ thương, đáng quý. Hãy nhớ rằng, sống thật với chính mình, sống lương thiện bởi sự giả tạo, dối trá lâu ngày sẽ bị người khác phát hiện và họ sẽ xa lánh bạn.</p><p>Tin rằng chỉ cần chúng ta sống vui vẻ mỗi ngày, luôn tích cực đón nhận mọi thứ rồi cuộc sống của chúng ta sẽ trở nên tốt đẹp hơn. Cô đơn cũng được, có người yêu bên cạnh thì càng tốt, dù một mình hay “nhiều mình” chúng ta cũng phải sống thật tốt cuộc đời của mình.</p><h2><strong>Trích dẫn hay trong sách</strong></h2><p>Đừng chạy theo những quy chuẩn thành công của một ai đó mà mang về áp đặt thành quy chuẩn cho bản thân. Mỗi người đến đời này, sống thì tùy thuận theo tập khí (các thói quen lâu đời) chết thì tương tục theo nghiệp lực. Do đó, chúng ta có những thế mạnh yếu, sở trường, sở đoản khác nhau, có vai trò, nhiệm vụ, bài học chẳng ai giống ai. Tùy theo kinh nghiệm sống tích lũy qua từng đời kiếp mà sẽ quyết định nên những trải nghiệm để trưởng thành.</p><p><img src=\"https://www.reader.com.vn/uploads/images/review-sach-hoa-gap-hoa-no-nguoi-gap-nguoi-thuong-5.jpg\" alt=\"review-sach-hoa-gap-hoa-no-nguoi-gap-nguoi-thuong-5\" width=\"650\" height=\"450\"></p><p>Cuộc đời thường không mang đến những người chúng ta muốn, mà sẽ là người chúng ta cần để giúp trưởng thành. Nên một ngày được gặp gỡ là một ngày sống tự tại với lòng thương. Để hoa được nở, người gặp người thương.</p><p>Mọi sự việc hiện hữu quanh ta luôn có ý nghĩa riêng của nó và có thời hạn nhất định. Chúng ta nhọc lòng do bởi không nhìn sự việc như chính nó phải thế, thời hạn nó phải thế, mà cứ nhìn nó như cách mình muốn. Vì vậy, cứ mãi ôm trong lòng bao nỗi ngổn ngang khi vụt mất điều gì đó hay nấn ná, vương vấn lại quá lâu những điều không còn tồn tại bên cạnh.</p><p>Cuộc đời mỗi ngày như đi trên những con đường khác nhau. Nhưng giống nhau ở chỗ, nó không bao giờ là một đoạn đường, mà là một chuyến đi đủ dài để qua nhiều nơi, gặp nhiều người, biết nhiều điều và thưởng thức được từng món quà của cuộc sống (dù mặn đắng hay ngọt ngào).</p><h2><strong>Lời kết</strong></h2><p>Gửi bạn – một người không ngừng nỗ lực tiến về phía trước</p><p>Tôi tin rằng khó khăn ở hiện tại chỉ là một bài thử thách với bạn, bạn luôn dũng cảm, mạnh mẽ để vượt qua mọi thứ. Sau tất cả bạn xứng đáng có được hạnh phúc của riêng mình.</p><p>Nếu chăm sóc tốt đứa trẻ bên trong bạn thì dù bên ngoài có mưa gió bão bùng như thế nào chúng ta vẫn có thể sống tốt. Khi đủ trưởng thành, đủ tổn thương và đủ mọi trải nghiệm chúng ta nhất định sẽ tìm được thứ mình mong muốn. “Hoa gặp hoa nở, người gặp người thương” Chúc bạn sớm tìm được bến đỗ của riêng mình.</p>', 0, 1, '2023-12-03 17:41:06', '2025-11-07 22:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`) VALUES
(1, 'Chưa có chuyên mục'),
(2, 'Tác giả nổi tiếng'),
(9, 'Giới thiệu sách');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `sell_quantity` int NOT NULL DEFAULT '0',
  `price` int NOT NULL,
  `sale_price` int NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `name`, `image`, `quantity`, `sell_quantity`, `price`, `sale_price`, `create_date`, `views`, `details`, `short_description`, `status`) VALUES
(1, 19, 'Giáo Trình Chuẩn HSK 1 - Sách Bài Tập', 'sp-sach11.png', 100, 0, 280000, 255000, '2023-11-18 08:22:03', 2, '<p>Là một phần không thể thiếu của bộ <strong>Giáo trình chuẩn HSK</strong>, cuốn <strong>Sách Bài Tập Giáo Trình Chuẩn HSK 1 (Tái Bản 2023)</strong> được biên soạn nhằm hỗ trợ tối đa người học trong quá trình ôn luyện và củng cố kiến thức tiếng Trung Quốc. Cuốn sách này là công cụ hoàn hảo để bạn thực hành những gì đã học từ sách giáo trình chính, đảm bảo sự tiến bộ vững chắc ngay từ những bước đầu tiên.</p><p><strong>Đặc điểm nổi bật:</strong></p><p><strong>- Bổ trợ toàn diện cho Giáo trình chuẩn HSK 1:</strong> Sách bài tập được thiết kế song song với nội dung của Giáo trình chuẩn HSK 1, giúp người học củng cố ngữ pháp, từ vựng và các cấu trúc câu đã học một cách hiệu quả.</p><p><strong>- Hệ thống bài tập đa dạng:</strong> Cuốn sách cung cấp nhiều dạng bài tập phong phú, từ luyện ngữ âm, viết chữ Hán, đến các bài tập điền từ, sắp xếp câu, đọc hiểu và nghe hiểu, giúp người học rèn luyện toàn diện các kỹ năng ngôn ngữ.</p><p><strong>- Thực hành sát với định dạng HSK:</strong> Các bài tập được xây dựng theo phong cách và cấu trúc đề thi HSK thật, giúp người học làm quen với áp lực thời gian và định dạng bài thi, từ đó nâng cao khả năng làm bài và đạt kết quả cao trong kỳ thi HSK 1.</p><p><strong>- Phù hợp cho cả tự học và giảng dạy:</strong> Với bố cục rõ ràng và các bài tập được sắp xếp khoa học, sách bài tập này là tài liệu lý tưởng để người học tự ôn luyện hoặc được sử dụng như một phần của chương trình giảng dạy tại các trung tâm tiếng Trung.</p>', '<figure class=\"table\"><table><tbody><tr><th>Mã hàng</th><td>9786045893104</td></tr><tr><th>Nhà Cung Cấp</th><td><a href=\"https://www.fahasa.com/all-category.html?supplier_list=1228360&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Cty Nhân Trí Việt</a></td></tr><tr><th>Tác giả</th><td>Khương Lệ Bình, Vương Phương, Vương Phong, Lưu Lệ Bình</td></tr></tbody></table></figure>', 1),
(2, 19, 'Giáo Trình Chuẩn HSK 2 - Bài Học', 'sp-sach12.png', 100, 0, 140000, 97000, '2023-11-18 10:15:54', 1, '<p>Nếu bạn đã hoàn thành Giáo trình chuẩn HSK 1 và sẵn sàng tiến xa hơn trên hành trình chinh phục tiếng Trung, <strong>Giáo Trình Chuẩn HSK 2 - Bài Học</strong> chính là cuốn sách lý tưởng dành cho bạn. Được biên soạn bởi đội ngũ tác giả uy tín, đứng đầu là <strong>Khương Lệ Bình</strong>, cuốn sách này không chỉ là một tài liệu học tiếng Trung thông thường mà còn là cầu nối vững chắc giúp bạn đạt được chứng chỉ HSK 2 một cách tự tin.</p><h3>Thiết Kế Toàn Diện: Kết Hợp Giảng Dạy và Luyện Thi</h3><p>Giáo Trình Chuẩn HSK 2 được xây dựng dựa trên nguyên tắc <strong>kết hợp chặt chẽ giữa giảng dạy và luyện thi</strong>. Mọi nội dung, từ từ vựng, ngữ pháp đến các bài tập, đều bám sát <strong>cấu trúc và yêu cầu của đề thi HSK 2 thật</strong>. Điều này mang lại lợi ích kép: bạn không chỉ học tiếng Trung một cách bài bản mà còn được làm quen với định dạng bài thi, giúp tối ưu hóa quá trình ôn luyện và chuẩn bị tâm lý vững vàng cho kỳ thi quan trọng. Cho dù bạn là giáo viên đang tìm kiếm tài liệu chất lượng cho lớp học hay là người tự học tại nhà, cuốn sách này đều đáp ứng xuất sắc nhu cầu của bạn.</p><h3>Bố Cục Khoa Học và Lộ Trình Học Tập Logic</h3><p>Điểm mạnh vượt trội của Giáo Trình Chuẩn HSK 2 nằm ở <strong>bố cục chặt chẽ và khoa học</strong>. Cuốn sách được tổ chức một cách logic, đưa người học đi từ những kiến thức nền tảng của cấp độ 2 đến những cấu trúc phức tạp hơn một cách tự nhiên.</p><p><strong>- Ngữ pháp:</strong> Các điểm ngữ pháp trọng tâm của HSK 2 được <strong>giải thích cặn kẽ, rõ ràng</strong> với nhiều ví dụ minh họa cụ thể. Điều này giúp người học không chỉ hiểu mà còn biết cách vận dụng ngữ pháp vào giao tiếp thực tế.</p><p><strong>- Ngữ âm và Chữ Hán:</strong> Phần ngữ âm được tiếp nối và nâng cao, giúp người học phát âm chuẩn hơn. Việc học chữ Hán tiếp tục được trình bày một cách có hệ thống, từ đơn giản đến phức tạp, giúp người học dễ dàng ghi nhớ và nhận diện mặt chữ.</p>', '<figure class=\"table\"><table><tbody><tr><th>Mã hàng</th><td>9786043775679</td></tr><tr><th>Tên Nhà Cung Cấp</th><td>Cty Nhân Trí Việt</td></tr><tr><th>Tác giả</th><td>Khương Lệ Bình</td></tr></tbody></table></figure>', 1),
(6, 19, 'Giáo Trình Chuẩn HSK 3', 'sp-sach13.png', 498, 2, 145000, 100000, '2023-11-20 22:23:49', 3, '<p><strong>Giáo Trình Chuẩn HSK 3</strong></p><p>Được chia thành 6 cấp độ với tổng cộng 18 cuốn, <strong>Giáo trình chuẩn HSK</strong> có những đặc điểm nổi bật sau:</p><p><strong>Kết hợp thi cử và giảng dạy:</strong> Được biên soạn phù hợp với nội dung, hình thức cũng như các cấp độ của đề thi HSK thật, bộ sách này có thể được sử dụng đồng thời cho cả hai mục đích là giảng dạy tiếng Trung Quốc và luyện thi HSK.</p><p><strong>Bố cục chặt chẽ và khoa học:</strong> Các điểm ngữ pháp được giải thích cặn kẽ, phần ngữ âm và chữ Hán được trình bày từ đơn giản đến phức tạp theo từng cấp độ.</p><p>Đề tài quen thuộc, nhiều tình huống thực tế: Bài học được thiết kế không quá dài và đề cập đến nhiều tình huống (có đĩa MP3 kèm theo), giúp bạn rèn luyện các kỹ năng ngôn ngữ và tránh cảm giác căng thẳng trong lúc học.</p><p><strong>Cách viết thú vị:</strong> Bằng cách viết sinh động kèm nhiều hình ảnh minh họa, tác giả bộ sách chỉ cho bạn thấy học tiếng Trung Quốc không hề khô khan, nhàm chán.</p><p>Với nhiều ưu điểm nổi bật như vừa nêu, <strong>Giáo trình chuẩn HSK</strong> không chỉ là tài liệu giảng dạy hữu ích ở các trung tâm dạy tiếng Trung Quốc mà còn rất thích hợp với những người muốn tự học ngôn ngữ này.</p><p><strong>Vài nét về tác giả:</strong></p><p><strong>Khương Lệ Bình</strong> là giáo sư ở Đại học Ngôn ngữ Bắc Kinh và cũng là người hướng dẫn cho các học viên cao học. Lĩnh vực nghiên cứu chủ yếu của bà là lý luận dạy học, phương pháp dạy học và tài liệu giảng dạy tiếng Trung Quốc. Nhiều sách chuyên ngành và tài liệu giảng dạy của bà đã được xuất bản. Bà cũng từng đến dạy học ở các quốc gia như Mỹ, Nhật Bản, Hongkong, Thái Lan.</p>', '<figure class=\"table\"><table><tbody><tr><th>Tác giả</th><td>Khương Lệ Bình</td></tr><tr><th>Người Dịch</th><td>TS Nguyễn Thị Minh Hồng</td></tr><tr><th>NXB</th><td>Tổng Hợp Thành Phố Hồ Chí Minh</td></tr></tbody></table></figure>', 1),
(14, 2, 'Dragon Ball SD - 7 Viên Ngọc Rồng Nhí', 'sp-sach20.png', 500, 0, 120000, 102000, '2023-11-20 22:54:49', 1, '<p><strong>Dragon Ball SD - 7 Viên Ngọc Rồng Nhí - Tập 9 - Siêu Saiya - Chiến Binh Của Truyền Thuyết</strong></p><p>Sau khi đánh bại tay sai thân tín của Frieza, Goku bị thương rất nặng. Trong lúc đó, Piccolo đã được đưa tới hành tinh Namek để chi viện cho nhóm Krillin nhưng vẫn không thể đấu với Frieza trong dạng biến hình. Mọi hi vọng lúc này dồn sang Vegeta. Với sức mạnh vừa được nâng cấp, liệu anh ta có thể trở thành Siêu Saiya hay không?</p>', '<figure class=\"table\"><table><tbody><tr><th>Người Dịch</th><td>Barbie Ayumi</td></tr><tr><th>NXB</th><td>Kim Đồng</td></tr><tr><th>Năm XB</th><td>2024</td></tr></tbody></table></figure>', 1),
(15, 2, 'Dragon Ball SD - 7 Viên Ngọc Rồng Nhí - Tập 1', 'sp-sach19.png', 50, 0, 75000, 71000, '2023-11-20 23:05:47', 1, '<p><strong>Dragon Ball SD - 7 Viên Ngọc Rồng Nhí - Tập 1 - Buma, Goku Và 7 Viên Ngọc Rồng</strong></p><p>Ngày xửa ngày xưa, tương truyền trên thế giới có 7 viên ngọc rồng nằm rải rác khắp nơi. Ai tìm thấy và gom đủ 7 viên sẽ được rồng thần ban cho 1 điều ước thành sự thật. Một ngày nọ, Son Goku, cậu bé sống một mình nơi rừng sâu núi thẳm đã tình cờ gặp Bulma, cô gái dũng cảm đang phiêu lưu tìm 7 viên ngọc rồng. Goku quyết định đi theo giúp đỡ cô ấy và hành trình của họ đã bắt đầu trong tác phẩm SD này!! Đây là một series ngoại truyện được biến tấu phỏng theo cốt truyện chính của Dragon Ball, do hoạ sĩ Naho Ohishi đảm nhiệm, trong Dragon Ball SD, các nhân vật được minh hoạ rất đáng yêu theo style chibi, phong cách này còn được gọi chung là Super Deformation. Thế nên mới có cái tên SD - 7 viên ngọc rồng NHÍ!</p>', '<figure class=\"table\"><table><tbody><tr><th>Tác giả</th><td>Akira Toriyama, Naho Ohishi</td></tr><tr><th>Người Dịch</th><td>Barbie Ayumi</td></tr><tr><th>NXB</th><td>Kim Đồng</td></tr></tbody></table></figure>', 1),
(16, 2, 'Doraemon - Tranh Truyện Màu - Dorami', 'sp-sach18.png', 200, 0, 110000, 90000, '2023-11-20 23:09:13', 0, '<p><strong>Doraemon - Tranh Truyện Màu - Dorami Và Đội Quân Doraemon - 7 Bí Ẩn Của Trường Đào Tạo Robot</strong></p><p>Thế kỉ 22 Doraemon trở lại trường đào tạo robot để dự lễ tốt nghiệp của em gái Dorami. Đúng lúc đó mây đen bao phủ, rất nhiều sự việc kì lạ xảy ra, ngay cả Doramon cũng bị hút vào một sinh vật bí ẩn…</p><p>Đây là phiên bản tranh truyện tranh màu được vẽ lại từ tập phim hoạt hình cùng tên của tác giả Fujiko.F.Fujio.</p>', '<figure class=\"table\"><table><tbody><tr><th>Tác giả</th><td>Fujiko F Fujio</td></tr><tr><th>Người Dịch</th><td>Nhiều Người Dịch</td></tr><tr><th>NXB</th><td>Kim Đồng</td></tr></tbody></table></figure>', 1),
(17, 2, 'Thám Tử Lừng Danh Conan - Tập 43', 'sp-sach17.png', 100, 0, 25000, 23500, '2023-11-20 23:12:48', 0, '<p><strong>Hattori Heiji - chàng thám tử miền Tây tới để mời Conan và các bạn nghỉ hè năm nay đến Osaka chơi. Nhưng lại cãi nhau to với Kazuka vì chuyện đi Koshien hay Takaraduka. Rốt cuộc, phải phân thắng bại bằng việc tìm lời giải cho Dying message của vụ giết người thám tử Kogoro được thuê điều tra.</strong></p>', '<figure class=\"table\"><table><tbody><tr><th>Mã hàng</th><td>8935244885330</td></tr><tr><th>Tên Nhà Cung Cấp</th><td><a href=\"https://www.fahasa.com/kim-dong?fhs_campaign=ATTRIBUTE_PRODUCT\">Nhà Xuất Bản Kim Đồng</a></td></tr><tr><th>Tác giả</th><td>Gosho Aoyama</td></tr></tbody></table></figure>', 1),
(18, 6, 'Educated: A Memoir (New York Times Bestseller)', 'sp-sach16.png', 65, 1, 150000, 120000, '2023-11-20 23:20:33', 1, '', '<figure class=\"table\"><table><tbody><tr><th>Tác giả</th><td>Tara Westover</td></tr><tr><th>NXB</th><td>Random House Trade</td></tr><tr><th>Năm XB</th><td>2022</td></tr></tbody></table></figure>', 1),
(20, 6, 'Think and Grow Rich', 'sp-sach15.png', 55, 0, 200000, 160000, '2023-11-20 23:31:04', 0, '', '<figure class=\"table\"><table><tbody><tr><th>Tác giả</th><td>Napoleon Hill</td></tr><tr><th>NXB</th><td>Jeremy P. Tarcher, Inc.</td></tr></tbody></table></figure>', 1),
(21, 6, 'Mâm Ngũ Quả', 'sp-sach14.png', 19, 1, 110000, 88000, '2023-11-23 09:54:06', 2, '', '', 1),
(23, 17, 'Khéo Ăn Nói Sẽ Có Được Thiên Hạ', 'sp-sach10.png', 100, 0, 130000, 91000, '2023-11-23 12:19:16', 0, '<p><strong>Khéo Ăn Nói Sẽ Có Được Thiên Hạ (Tái Bản 2022)</strong></p><p>Trong xã hội thông tin hiện đại, sự im lặng không còn là vàng nữa, nếu không biết cách giao tiếp thì dù là vàng cũng sẽ bị chôn vùi. Trong cuộc đời một con người, từ xin việc đến thăng tiến, từ tình yêu đến hôn nhân, từ tiếp thị cho đến đàm phán, từ xã giao đến làm việc… không thể không cần đến kĩ năng và khả năng giao tiếp. Khéo ăn khéo nói thì đi đâu, làm gì cũng gặp thuận lợi. Không khéo ăn nói, bốn bề đều là trở ngại khó khăn.</p><p>Đã bao giờ đánh mất một công việc, bạn bỏ lỡ một mối quan hệ tuyệt vời, hay đơn giản là bạn cảm thấy khó nói chuyện với mọi người. Bạn có bao giờ nghĩ là do kĩ năng nói chuyện của mình chưa tốt, chưa thuyết phục được mọi người. Bạn đổ lỗi cho số phận và vận may của mình chưa đến. Hãy dừng việc than thân trách phận và hành động để thay đòi chính mình.</p><p>Vậy làm thế nào để cải thiện và tránh gặp phải những tình huống như trên? Làm thế nào để ăn nói khéo léo? Có phương pháp và quy luật nào được áp dụng khi giao tiếp không? Có nguyên tắc và bí quyết nào cho các cuộc nói chuyện không? Trong những tình huống khác nhau, với những người khác nhau thì phải nói chuyện như thế nào, và làm sao để trình bày những điều khó nói?</p>', '<figure class=\"table\"><table><tbody><tr><th>Tên Nhà Cung Cấp</th><td><a href=\"https://www.fahasa.com/minh-long?fhs_campaign=ATTRIBUTE_PRODUCT\">Minh Long</a></td></tr><tr><th>Tác giả</th><td>Trác Nhã</td></tr><tr><th>Người Dịch</th><td>Nguyễn Phương Thảo</td></tr></tbody></table></figure>', 1),
(24, 17, 'Con Đường Chẳng Mấy Ai Đi', 'sp-sach9.png', 149, 3, 165000, 115000, '2023-11-23 12:20:16', 4, '<p><strong>Con Đường Chẳng Mấy Ai Đi</strong></p><p>Có lẽ không quyển sách nào trong thế kỷ này có tác động sâu sắc đến đời sống trí tuệ và tinh thần của chúng ta hơn Con Đường Chẳng Mấy Ai Đi. Với doanh số trên 10 triệu bản in trên toàn thế giới và được dịch sang hơn 25 ngôn ngữ, đây là một hiện tượng trong ngành xuất bản, với hơn mười năm nằm trong danh sách Best-sellers của New York Times.</p><p>Với cách hành văn kinh điển và thông điệp đầy thấu hiểu, quyển sách Con Đường Chẳng Mấy Ai Đi giúp chúng ta khám phá bản chất của các mối quan hệ và của một tinh thần trưởng thành. Quyển sách giúp chúng ta học cách phân biệt sự lệ thuộc với tình yêu; làm thế nào để trở thành những bậc phụ huynh tinh tế và nhạy cảm; và cuối cùng là làm thế nào để sống chân thật với chính mình.</p><p>Với dòng mở đầu bất hủ của quyển sách, \"Cuộc đời này rất khó sống\", thể hiện quan điểm hành trình phát triển tinh thần là một chặng đường dài và gian nan, Tiến sĩ Peck thể hiện sự đồng cảm, nhẹ nhàng dẫn dắt độc giả vượt qua quá trình khó khăn đó, để thay đổi hướng tới tầm mức thấu hiểu bản thân sâu sắc hơn.</p>', '<figure class=\"table\"><table><tbody><tr><th>Tác giả</th><td>M. Scott Peck</td></tr><tr><th>Người Dịch</th><td>Lâm Đặng Cam Thảo</td></tr><tr><th>NXB</th><td>Dân Trí</td></tr></tbody></table></figure>', 1),
(25, 4, 'Hà Thanh Hải Yến - Ngang Qua Ngõ Nhỏ Bình An', 'sp-sach8.png', 100, 0, 200000, 150000, '2023-11-23 16:21:03', 4, '<p><strong>Hà Thanh Hải Yến - Ngang Qua Ngõ Nhỏ Bình An</strong></p><p>Bị bố đánh đập dã man, bị bạn học bắt nạt, trong lúc tuyệt vọng cùng quẫn, tôi tìm đến tiệm xăm trong góc ngõ.</p><p>Nghe nói ông chủ là một tên côn đồ, rất hung hãn và dữ dằn, người xung quanh đều e sợ anh.</p><p>Đẩy cửa, tôi moi từ trong túi ra một tờ mười tệ nhàu nhĩ, lấy hết dũng khí hỏi:</p><p>“Nghe nói anh thu phí bảo kê, vậy anh... có thể bảo vệ tôi không?”</p><p>Giữa làn khói thuốc lượn lờ, người đàn ông nhếch môi phì cười.</p><p>“Nhóc con nhà ai đây? To gan thật đấy.”</p><p>Sau này, anh chỉ vì tờ mười tệ ấy mà bảo vệ tôi suốt mười năm.</p>', '<figure class=\"table\"><table><tbody><tr><th>Mã hàng</th><td>8936213491613</td></tr><tr><th>Tên Nhà Cung Cấp</th><td>CÔNG TY CỔ PHẦN VĂN HÓA VÀ TRUYỀN THÔNG LINH LAN</td></tr><tr><th>Tác giả</th><td>Quất Tử Bất Toan</td></tr></tbody></table></figure>', 1),
(26, 4, 'Người Đàn Ông Mang Tên OVE (Tái Bản)', 'sp-sach7.png', 100, 1, 160000, 136000, '2023-11-23 16:23:55', 20, '<p>Bạn có tin rằng một ông lão cộc cằn, khó tính lại có thể khiến bạn rơi nước mắt vì xúc động? Bạn đã bao giờ nghĩ rằng lòng nhân ái có thể đến từ những con người tưởng chừng khô khan nhất? Một ông lão cộc cằn, một con mèo hoang, vài người hàng xóm phiền phức - tất cả có thể tạo nên một câu chuyện khiến bạn bật khóc?</p><h2><strong>VỀ TÁC GIẢ:&nbsp;Fredrik Backman - Hành trình trở thành nhà Văn được yêu thích</strong></h2><p>Fredrik Backman (sinh năm 1981) là nhà văn, blogger và nhà báo người Thụy Điển.</p><p>Trước khi trở thành tiểu thuyết gia, ông từng viết blog và làm phóng viên cho một tờ báo địa phương.</p><p>Năm 2012, ông xuất bản Người Đàn Ông Mang Tên Ove, tác phẩm nhanh chóng trở thành hiện tượng toàn cầu, lọt top bán chạy tại nhiều quốc gia.</p><p>Ông nổi tiếng với lối viết hài hước, cảm động và đầy tính nhân văn, đưa những câu chuyện đời thường trở nên sâu sắc và đáng nhớ.</p><h2><strong>VỀ DỊCH GIẢ: Hoàng Anh - Người thổi hồn vào tác phẩm</strong></h2><p>Hoàng Anh là dịch giả tận tâm, mang văn học thế giới đến gần hơn với độc giả Việt. Với lối dịch trôi chảy, giàu cảm xúc, anh đã giúp những câu chuyện nước ngoài trở nên gần gũi và chân thực hơn.</p><p><strong>Một số tác phẩm dịch tiêu biểu:</strong></p><p>Người Đàn Ông Mang Tên Ove - Fredrik Backman</p><p>Britt-Marie Đã Ở Đây - Fredrik Backman</p><p>Lời Hứa Lúc Bình Minh - Romain Gary</p><h3>TÓM TẮT NỘI DUNG SÁCH</h3><p>Ove là một người đàn ông 59 tuổi, sống một cuộc đời nghiêm túc, theo nguyên tắc và không thích thay đổi. Ông cộc cằn, khó gần, thậm chí có vẻ đáng ghét. Nhưng sâu bên trong, Ove là một người đàn ông mang nhiều nỗi đau, đặc biệt là sau khi mất đi người vợ yêu dấu.</p><p>Cuộc sống của Ove đảo lộn khi một gia đình trẻ chuyển đến bên cạnh nhà ông và sự xuất hiện của con mèo hoang. Họ vô tình “xâm nhập” vào cuộc sống đơn độc của ông, kéo theo những tình huống dở khóc dở cười. Dần dần, tấm lòng nhân hậu của Ove được hé lộ, chứng minh rằng ngay cả những người khép kín nhất cũng có thể mở lòng khi gặp đúng người.</p><p>Cuốn sách này cũng đã được chuyển thể thành bộ phim đình đám với sự tham gia của Tom Hanks, đã được đề cử ở hạng mục phim nói tiếng nước ngoài hay nhất tại Oscar 2017.</p>', '<figure class=\"table\"><table><tbody><tr><th>Mã hàng</th><td>8934974182375</td></tr><tr><th>Tên Nhà Cung Cấp</th><td><a href=\"https://www.fahasa.com/nxb-tre?fhs_campaign=ATTRIBUTE_PRODUCT\">NXB Trẻ</a></td></tr><tr><th>Tác giả</th><td>Fredrik Backman</td></tr><tr><th>Người Dịch</th><td>Hoàng Anh</td></tr></tbody></table></figure>', 1),
(27, 16, 'Người Giàu Có Nhất Thành Babylon', 'sp-sach6.png', 27, 3, 98000, 83000, '2023-11-23 20:31:17', 4, '<p><strong>Người giàu có nhất thành Babylon</strong></p><p>Trước mắt bạn, tương lai đang trải rộng con đường dẫn tới những miền đất xa xôi đầy hứa hẹn. Trên con đường đó, bạn háo hức, mong muốn thực hiện nhiều ước mơ, dự định, khát khao… của riêng mình.</p><p>Để những nguyện vọng của mình được thực hiện, ít nhất bạn phải thành công về mặt tiền bạc. Quyển sách này sẽ giúp bạn biết cách vận dụng những nguyên lý quan trọng để phát triển tài chính. Hãy để cuốn sách dẫn dắt bạn đi từ một hoàn cảnh khó khăn, tiêu biểu là một cái túi lép xẹp, đến một cuộc sống đầy đủ và hạnh phúc, tiêu biểu là một túi tiền căng phồng, sung túc.</p><p>Khi nói đến tiền bạc, chúng ta thường đề cập đến quy luật trọng trường và nó luôn phổ quát và bất biến trong mọi trường hợp. Trải qua thời gian dài và phát triển, quy luật này đã được trải nghiệm và đúc rút thành những bí quyết không chỉ đảm bảo cho bạn một túi tiền đầy, mà còn giúp cho bạn có một cuộc sống cân bằng để có thể phát triển mỹ mãn hơn những tiềm năng của bản thân trong các lĩnh vực khác của cuộc sống. Bởi trên thực tế, không ai có thể phủ nhận rằng sự dồi dào về vật chất có thể làm cho đời sống con người trở nên tốt đẹp hơn. Riêng trong lĩnh vực kinh doanh, sức mạnh tài chính là phương tiện chủ yếu để đo lường mức độ thành đạt của các doanh nhân.</p><p>Ngày nay, tiền bạc vẫn có những ảnh hưởng lớn đối với cuộc sống con người, cũng giống như cách đây năm ngàn năm nó đã chi phối mạnh mẽ cuộc sống của cư dân vương quốc Babylon, thúc đẩy họ tìm hiểu và nắm bắt các quy luật tạo ra tiền, nhằm có được một cuộc sống sung túc và sang trọng bậc nhất.</p><p>Những trang sách này sẽ đưa chúng ta trở lại vương quốc Babylon cổ đại, cái nôi nuôi dưỡng những nguyên lý cơ bản về tài chính mà giờ đây con người hiện đại đã kế thừa và vận dụng trên toàn thế giới.</p>', '<figure class=\"table\"><table><tbody><tr><th>Mã hàng</th><td>8935086851944</td></tr><tr><th>Tên Nhà Cung Cấp</th><td><a href=\"https://www.fahasa.com/first-news?fhs_campaign=ATTRIBUTE_PRODUCT\">FIRST NEWS</a></td></tr><tr><th>Tác giả</th><td>George S Clason</td></tr><tr><th>Người Dịch</th><td>Võ Hưng Thanh</td></tr></tbody></table></figure>', 1),
(28, 16, 'Bí Mật Tư Duy Triệu Phú (Tái Bản 2025)', 'sp-sach5.png', 1000, 4, 140000, 105000, '2023-11-29 20:36:43', 16, '<p>Trong cuốn sách này&nbsp;<strong>T. Harv Eker&nbsp;</strong>sẽ tiết lộ những bí mật tại sao một số người lại đạt được những thành công vượt bậc, được số phận ban cho cuộc sống sung túc, giàu có, trong khi một số người khác phải chật vật, vất vả mới có một cuộc sống qua ngày. Bạn sẽ hiểu được nguồn gốc sự thật và những yếu tố quyết định thành công, thất bại để rồi áp dụng, thay đổi cách suy nghĩ, lên kế hoạch rồi tìm ra cách làm việc, đầu tư, sử dụng nguồn tài chính của bạn theo hướng hiệu quả nhất.</p><p>Cuốn sách dành cho những ai còn loay hoay muốn tìm đường đến sự giàu có và thành công. “Bí mật tự duy triệu phú” mang đến nhiều tư duy mới cho người đọc về cách suy nghĩ của người giàu hay cách suy nghĩ để trở nên giàu có.</p><p>Trong cuốn sách, Eker liệt kê 17 cách thức mà các kế hoạch chi tiết tài chính của những người giàu khác với người nghèo và tầng lớp trung lưu. Một chủ đề được xác định trong sách này là loại bỏ các suy nghĩ đổ lỗi cho sự thất bại. Eker lập luận rằng: Người giàu tin \"Tôi tạo ra cuộc sống của tôi\", còn những người nghèo cho rằng \"Cuộc sống sẽ tự nhiên đến với tôi\"; người giàu tập trung vào các cơ hội trong khi người nghèo tập trung vào những trở ngại; và những người giàu ngưỡng mộ những người giàu có và thành công khác trong khi người dân nghèo ghen tị, bực tức trước những người thành công và giàu có.</p><p><strong>Bí mật tư duy triệu phú là tác phẩm nổi tiếng thế giới được thời báo New York Times, Wall Street Journal và USB Today bình chọn là cuốn sách hay nhất, bán chạy nhất trong nhiều năm.</strong></p><p><strong>Người nổi tiếng nói về “Bí mật tư duy triệu phú”:</strong></p><p><strong>·&nbsp;</strong><i>\"Ai cũng có một cuộc sống, ai cũng làm việc cần cù, ai cũng ước mơ được thành công, nhưng không mấy ai may mắn học được cách tư duy độc đáo và tầm nhìn của những tỷ phú lừng danh đã tiết lộ trong cuốn sách giá trị này...\" <strong>- </strong></i><strong>Wall Street Journal</strong></p><p><strong>·&nbsp;</strong><i>“Đây chính là một trong những cuốn sách giàu ảnh hưởng, rất thuyết phục và thực tế nhất về cách trở nên giàu có mà các bạn từng đọc được” – <strong>Brian Tracy (Tác giả cuốn sách Làm giàu theo cách của bạn)</strong></i></p><p><strong>·&nbsp;</strong>“Hãy nghiền ngẫm cuốn sách này như thể cuộc đời rồi sẽ phụ thuộc vào nó… về phương diện tài chính thì khả dĩ lắm đấy”<i><strong> – </strong></i><strong>Anthony Robbins</strong><i><strong> (Nhà diễn thuyết, tác giả cuốn sách nổi tiếng Đánh thức con người phi thường trong bạn)</strong></i></p>', '<figure class=\"table\"><table><tbody><tr><th>Mã hàng</th><td>8935086854624</td></tr><tr><th>Tên Nhà Cung Cấp</th><td><a href=\"https://www.fahasa.com/first-news?fhs_campaign=ATTRIBUTE_PRODUCT\">FIRST NEWS</a></td></tr><tr><th>Tác giả</th><td>T Harv Eker</td></tr></tbody></table></figure>', 1),
(29, 2, 'Dế Mèn Phiêu Lưu Ký (Tái Bản 2020)', 'sp-sach4.png', 200, 0, 150000, 135000, '2023-12-02 20:54:53', 11, '<p>Trong hơn nửa thế kỉ kể từ ngày ra mắt bạn đọc lần đầu tiên năm 1941, \"Dế Mèn phiêu lưu kí\" là một trong những sáng tác tâm đắc nhất của nhà văn Tô Hoài.</p><p>Tác phẩm đã được tái bản nhiều lần và được dịch ra hơn 20 thứ tiếng trên thế giới và luôn được các thế hệ độc giả nhỏ tuổi đón nhận.</p><p>Tác phẩm đã được xuất bản với nhiều hình thức khác nhau.</p><p>Trong đó cuốn \"Dế Mèn phiêu lưu kí\" gồm 148 trang, trên khổ giấy 18x25 cm với nhiều minh hoạ sinh động của hoạ sĩ Tạ Huy Long - một hoạ sĩ chuyên vẽ cho sách thiếu nhi.</p><p>Bằng cách sử dụng màu nước điêu luyện, hoạ sĩ Tạ Huy Long đã làm sống động thêm tác phẩm bất hủ của nhà văn Tô Hoài.</p><p>Cuốn sách là món quà đẹp cả về hình thức lẫn nội dung, là món quà ý nghĩa và bổ ích mà các bậc phụ huynh tặng cho con em của mình.</p>', '<figure class=\"table\"><table><tbody><tr><th>Mã hàng</th><td>8935244820812</td></tr><tr><th>Tên Nhà Cung Cấp</th><td><a href=\"https://www.fahasa.com/kim-dong?fhs_campaign=ATTRIBUTE_PRODUCT\">Nhà Xuất Bản Kim Đồng</a></td></tr><tr><th>Tác giả</th><td>Tô Hoài, Tạ Huy Long</td></tr></tbody></table></figure>', 1),
(30, 2, 'Cái Tết Của Mèo Con (Tái Bản 2019)', 'sp-sach3.png', 100, 3, 45000, 40500, '2023-12-02 20:56:21', 16, '<p>Mèo con mới về nhà, đêm đầu tiên đã giáp mặt lão Chuột cống dữ dằn cùng lũ chuột nhắt hung hăng. Mèo con khiếp sợ, nhưng vốn là một chú mèo dũng cảm, Mèo con bắt đầu học hỏi, can đảm đánh nhau với rắn hổ mang.</p><p>Không những thế, Mèo con còn truyền lòng quả cảm của mình cho cả bác Nồi đồng và chị Chổi. Họ đã cùng nhau đánh bại lão Chuột cống hung ác và đám chuột nhắt.</p><p>“Cái Tết của Mèo con” là bài học về lòng quả cảm và tinh thần đoàn kết. Câu chuyện mang đến thông điệp cho các bạn nhỏ của chúng ta: Lòng dũng cảm là một phẩm chất, được hình thành khi ta rèn luyện mỗi ngày.</p><p>Ra đời cách nay hơn nửa thế kỉ, tác phẩm của nhà văn Nguyễn Đình Thi đã chinh phục bao thế hệ độc giả nhỏ tuổi.</p><p>Ấn bản lần này có những tranh minh họa màu vô cùng sống động của họa sĩ trẻ Thùy Dung.</p>', '<figure class=\"table\"><table><tbody><tr><th>Mã hàng</th><td>8935244827217</td></tr><tr><th>Tên Nhà Cung Cấp</th><td><a href=\"https://www.fahasa.com/kim-dong?fhs_campaign=ATTRIBUTE_PRODUCT\">Nhà Xuất Bản Kim Đồng</a></td></tr><tr><th>Tác giả</th><td>Nguyễn Đình Thi, Thùy Dung</td></tr></tbody></table></figure>', 1),
(31, 2, 'Dế Mèn Phiêu Lưu Ký - Tái Bản 2020', 'sp-sach2.png', 100, 6, 50000, 45000, '2023-12-02 20:59:06', 38, '<p><strong>Dế Mèn Phiêu Lưu Ký - Tái Bản 2020</strong></p><p>Ấn bản minh họa màu đặc biệt của Dế Mèn phiêu lưu ký, với phần tranh ruột được in hai màu xanh - đen ấn tượng, gợi không khí đồng thoại.</p><p>“Một con dế đã từ tay ông thả ra chu du thế giới tìm những điều tốt đẹp cho loài người. Và con dế ấy đã mang tên tuổi ông đi cùng trên những chặng đường phiêu lưu đến với cộng đồng những con vật trong văn học thế giới, đến với những xứ sở thiên nhiên và văn hóa của các quốc gia khác. Dế Mèn Tô Hoài đã lại sinh ra Tô Hoài Dế Mèn, một nhà văn trẻ mãi không già trong văn chương...” - Nhà phê bình Phạm Xuân Nguyên</p><p>“Ông rất hiểu tư duy trẻ thơ, kể với chúng theo cách nghĩ của chúng, lí giải sự vật theo lô gích của trẻ. Hơn thế, với biệt tài miêu tả loài vật, Tô Hoài dựng lên một thế giới gần gũi với trẻ thơ. Khi cần, ông biết đem vào chất du ký khiến cho độc giả nhỏ tuổi vừa hồi hộp theo dõi, vừa thích thú khám phá.” - TS Nguyễn Đăng Điệp</p>', '<figure class=\"table\"><table><tbody><tr><th>Mã hàng</th><td>8935244817744</td></tr><tr><th>Tên Nhà Cung Cấp</th><td><a href=\"https://www.fahasa.com/kim-dong?fhs_campaign=ATTRIBUTE_PRODUCT\">Nhà Xuất Bản Kim Đồng</a></td></tr><tr><th>Tác giả</th><td>Tô Hoài</td></tr><tr><th>NXB</th><td>NXB Kim Đồng</td></tr></tbody></table></figure>', 1),
(32, 2, 'Tuổi Thơ Dữ Dội - Tập 2 (Tái Bản 2019)', 'sp-sach1.png', 150, 3, 80000, 64000, '2023-12-02 21:00:48', 40, '<h2><strong>Mô tả sản phẩm</strong></h2><p>“Tuổi Thơ Dữ Dội” là một câu chuyện hay, cảm động viết về tuổi thơ. Sách dày 404 trang mà người đọc không bao giờ muốn ngừng lại, bị lôi cuốn vì những nhân vật ngây thơ có, khôn ranh có, anh hùng có, vì những sự việc khi thì ly kỳ, khi thì hài hước, khi thì gây xúc động đến ứa nước mắt...</p><p>\"Tuổi Thơ Dữ Dội” không phải chỉ là một câu chuyện cổ tích, mà là một câu chuyện có thật ở trần gian, ở đó, những con người tuổi nhỏ đã tham gia vào cuộc kháng chiến chống xâm lược bảo vệ Tổ quốc với một chuỗi những chiến công đầy ắp li kì và hấp dẫn. Đọc Tuổi Thơ Dữ Dội chính là đọc lại một phần lịch sử tuổi thơ Việt, thấm đẫm xúc động, cảm phục và tự hào...\"</p><p>Nhà thơ - nhạc sĩ Nguyễn Trọng Tạo</p><p>\"Có một viên ngọc quý thời gian dành riêng để ban tặng con người, đó là Tuổi thơ. Viên ngọc màu nhiệm, trong sáng nhưng quá mong manh, không thể tìm thấy lần thứ hai trong đời. Và có một thế hệ người Việt chưa bao giờ được cầm viên ngọc trên tay, “Tuổi thơ dữ dội” của Phùng Quán được viết cho thế hệ đó. Hãy đọc để nhớ lại, để tự hào, và để cầu nguyện cho những Tuổi thơ sắp ra đời…”</p><p>Nhà văn Hoàng Phủ Ngọc Tường</p>', '<figure class=\"table\"><table><tbody><tr><th>Mã hàng</th><td>8935244827989</td></tr><tr><th>Tên Nhà Cung Cấp</th><td><a href=\"https://www.fahasa.com/kim-dong?fhs_campaign=ATTRIBUTE_PRODUCT\">Nhà Xuất Bản Kim Đồng</a></td></tr><tr><th>Tác giả</th><td>Phùng Quán</td></tr><tr><th>NXB</th><td>NXB Kim Đồng</td></tr></tbody></table></figure>', 1),
(34, 4, 'Nguyễn Lê Anh Khoa', 'ExampleFile.pdf', 5, 0, 123555, 55, '2024-03-31 22:24:56', 2, '', '', 0),
(35, 2, 'test nè', 'meomeo.png', 10, 0, 1000, 500, '2025-09-19 22:15:50', 0, '<p>Hello</p>', '<p>Hello</p>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Tên đăng nhập',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Họ tên',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 là khách hàng 1 là nhân viên',
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `full_name`, `image`, `email`, `phone`, `address`, `role`, `active`) VALUES
(6, 'khoanguyen', '$2y$10$Cm.2KiZ85WRGUTBk8vhMaOIQt46A53HKuzPfZh2jS.fdZzAr33dTi', 'Nguyễn Tuấn', 'avatar_it.png', 'abc@gmail.com', '0909155555', 'Ninh Kiều, Cần Thơ', 0, 1),
(7, 'khahi', '$2y$10$sF.yA6lAhvCE1vhwffwijuzA3JMoVhgnxkk.FdqXR4HVHlHdnXHzK', 'Lê Châu Khả Hi', 'user-default.png', 'hilckpc524@fpt.edu.vn', '0336216654', 'Kiên Giang', 0, 1),
(8, 'admin', '$2y$10$Cm.2KiZ85WRGUTBk8vhMaOIQt46A53HKuzPfZh2jS.fdZzAr33dTi', 'Admin', 'avatar_it.png', 'khoacn03@gmail.com', '0336216111', 'Cần Thơ nè', 1, 1),
(9, 'tranvana', '$2y$10$ts748iCUjwA5HpQBMLuROuAXa70addsKmfkMh9rYIw/PjhxLLwH8i', 'Trần Văn A', 'user-default.png', 'tranvana@gmail.com', '0909135969', 'Cái Răng, Cần Thơ', 0, 1),
(10, 'haohao', '$2y$10$gcBHpzElBGDkOv5EEzJFhuoireNk2HsaloJQLy2KHvzGqx6MIyYku', 'Mai Hảo Hảo', 'user-default.png', 'haomhpc07316@fpt.edu.vn', '0909135985', 'Ninh Kiều, Cần Thơ', 0, 1),
(11, 'tuankiet', '$2y$10$ENy4z0Infjac7VjlKYp2A.gqCBwc8N01tKGLT9A3buGdVoyd7sXnK', 'Đặng tuấn Kiệt', 'user-default.png', 'kietdtpc06764@fpt.edu.vn', '0909006764', 'Cần Thơ', 0, 1),
(12, 'khoanguyen111', '$2y$10$ZPAY2O7ntfQ5/Huv3dUAIuY4qHuPD/DpRxiw11TurgYr3hCrWfnv2', 'Nguyễn Lê Anh Khoa', 'user-default.png', 'khoanlapc1234@gmail.com', '0336216546', 'Cần Thơ', 0, 1),
(13, 'khoanguyen001', '$2y$10$ptSvfsaT78h4LdZQNCrKdemlC.AqyZ/q5cudTk9/FKcbe6TtJDJAC', 'Nguyễn Lê Anh Khoa', 'user-default.png', 'khoanla113@gmail.com', '0336216555', 'Can tho', 0, 1),
(15, 'toan', '$2y$10$rwdD7UlOPC2XUc4d3nJ/nO0THzotlhmrKekcbBynHxTqpOmFlN79a', 'Toàn', 'user-default.png', 'toan@gmail.com', '0336256555', 'Đại Học Cửu Long', 0, 1),
(16, 'tranvanb', '$2y$10$S26hSJJdaqcKVdVI0L2.3.HYQQWkDSfSmJ.z5WW25szlb.os/djIm', 'Tran Van B', 'avatar_fanpage.jpg', 'tranvanb@gmail.com', '0909999999', 'Quận 1, HCM', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `sell` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`id`, `name`, `price`, `quantity`, `sell`, `created_at`) VALUES
(17, 'Cam vàng Úc', 100000, 100, 0, '2025-11-06 22:57:58'),
(18, 'Dưa hấu không hạt', 180000, 120, 0, '2025-11-06 22:58:26'),
(19, 'Nho đen Mỹ', 300000, 120, 0, '2025-11-06 22:58:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderdetails_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_category` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `orderdetails_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
