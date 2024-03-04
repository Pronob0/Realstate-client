-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2024 at 05:09 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realestate`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) NOT NULL,
  `header_title` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `header_title`, `title`, `description`) VALUES
(1, 'About Our Companyyyy', 'We’re Committed to Roofing Excellence', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"outline: none; color: rgb(105, 105, 105); font-family: Jost;\"><h2 style=\"outline: none; font-weight: 400; line-height: 36px; font-size: 30px; color: rgb(32, 40, 56);\"><font size=\"6\" style=\"outline: none;\">Title number 1</font><br style=\"outline: none;\"></h2><p style=\"outline: none; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; line-height: 1.8;\"><span style=\"outline: none; font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"outline: none; color: rgb(105, 105, 105); font-family: Jost;\"><h2 style=\"outline: none; font-weight: 400; line-height: 36px; font-size: 30px; color: rgb(32, 40, 56);\"><font size=\"6\" style=\"outline: none;\">Title number 2</font><br style=\"outline: none;\"></h2><p style=\"outline: none; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; line-height: 1.8;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"outline: none; color: rgb(105, 105, 105); font-family: Jost;\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"outline: none; color: rgb(105, 105, 105); font-family: Jost;\"><h2 style=\"outline: none; font-weight: 400; line-height: 36px; font-size: 30px; color: rgb(32, 40, 56);\"><font size=\"6\" style=\"outline: none;\">Title number 3</font><br style=\"outline: none;\"></h2><p style=\"outline: none; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; line-height: 1.8;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"outline: none; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; line-height: 1.8;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"outline: none; font-weight: 400; line-height: 36px; font-size: 30px; color: rgb(32, 40, 56); font-family: Jost;\"><font size=\"6\" style=\"outline: none;\">Title number 9</font><br style=\"outline: none;\"></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"outline: none; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; line-height: 1.8; color: rgb(105, 105, 105); font-family: Jost;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verify_token` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verify_token`, `phone`, `photo`, `role_id`, `role`, `status`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '', '09000000', '5021030811679304831.png', '0', 'Administrator', 1, '$2y$10$XRwVDuEISDfSl5ATNW59yOlGAb2h/9PJDX5WKErChklrQeDi0wb.i', 'iej9icmkyjyhwznHIyQHtxwn0CzOh7ZXmiumynIGQqBpCC2My8Lh3Yn44F9v', NULL, '2023-03-20 16:34:21'),
(3, 'showrav Hasan', 'showrabhasan715@gmail.com', NULL, NULL, NULL, NULL, 'Farhad', 1, '$2y$10$WpCFoErUffgj0T59dorrKuJH5Nef6z7PCpgY52XPNbpWUVBrTw/6C', NULL, '2023-03-20 16:32:09', '2023-03-20 16:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `rtl`) VALUES
(1, 0, 'test', '1638353833MI23H252.json', 0),
(5, 0, 'tet4', '1638353982qIEUykRT.json', 0);

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(55) NOT NULL,
  `subcategory_id` int(55) NOT NULL,
  `location` varchar(191) DEFAULT NULL,
  `postcode` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `buyer_type` varchar(191) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `is_image` tinyint(5) NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `amenities` varchar(191) DEFAULT NULL,
  `property_type` varchar(191) DEFAULT NULL,
  `plot_usage` varchar(191) DEFAULT NULL,
  `plot_size` varchar(191) DEFAULT NULL,
  `bedroom` varchar(255) DEFAULT NULL,
  `bathroom` varchar(255) DEFAULT NULL,
  `reception` varchar(255) DEFAULT NULL,
  `require` varchar(191) DEFAULT NULL,
  `strategy` varchar(155) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `furnished` varchar(255) DEFAULT NULL,
  `train_station` varchar(255) DEFAULT NULL,
  `hmo` varchar(255) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `buying_for` varchar(155) DEFAULT NULL,
  `floor_pic` varchar(255) DEFAULT NULL,
  `occupancy` varchar(255) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `market_valuation` varchar(255) DEFAULT NULL,
  `gross` varchar(255) DEFAULT NULL,
  `sale` varchar(255) DEFAULT NULL,
  `type` varchar(155) DEFAULT NULL,
  `is_buddy_up` tinyint(4) DEFAULT NULL,
  `is_tenancy` int(2) NOT NULL DEFAULT 0,
  `tenant_details` varchar(255) DEFAULT NULL,
  `features` varchar(255) DEFAULT NULL,
  `tenance` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `room_sizes` int(11) DEFAULT NULL,
  `period_accomodation` varchar(5) DEFAULT NULL,
  `accomodation_for` varchar(255) DEFAULT NULL,
  `move_from` varchar(255) DEFAULT NULL,
  `about_you` varchar(555) DEFAULT NULL,
  `about_flatmte` varchar(555) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `user_id`, `category_id`, `subcategory_id`, `location`, `postcode`, `title`, `buyer_type`, `budget`, `is_image`, `description`, `amenities`, `property_type`, `plot_usage`, `plot_size`, `bedroom`, `bathroom`, `reception`, `require`, `strategy`, `region`, `street`, `furnished`, `train_station`, `hmo`, `cost`, `photo`, `buying_for`, `floor_pic`, `occupancy`, `condition`, `market_valuation`, `gross`, `sale`, `type`, `is_buddy_up`, `is_tenancy`, `tenant_details`, `features`, `tenance`, `created_at`, `updated_at`, `room_sizes`, `period_accomodation`, `accomodation_for`, `move_from`, `about_you`, `about_flatmte`) VALUES
(7, 1, 11, 3, 'asdf', NULL, 'sdfasdf', 'mortgage', 50, 0, 'sdfgsdfgsdfg', NULL, NULL, 'Commercial', '65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'living', NULL, NULL, NULL, NULL, NULL, NULL, 'buy', NULL, 0, NULL, NULL, NULL, '2024-01-15 09:20:30', '2024-01-15 09:20:30', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 11, 4, 'Uttara, Sector 10, Dhaka', NULL, 'test property', 'mortgage', 20, 0, 'asdfasdfassdf', 'Garden,Balcony', 'Houses,Flats', NULL, NULL, '1,2', '1,2', '1,2', 'Both', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'investment', NULL, NULL, NULL, NULL, NULL, NULL, 'buy', NULL, 0, NULL, NULL, NULL, '2024-01-15 09:37:39', '2024-01-15 09:37:39', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, 11, 4, 'Dhaka, Sylhet, Noakhali', NULL, 'I am looking for a Appartment', 'mix', 100, 0, 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Perspiciatis optio ut rerum placeat aperiam explicabo omnis minima vitae ratione possimus?', 'Garden,Balcony,Garage,Swimming Pool,Gym', 'Houses,Flats,Bungalows', NULL, NULL, '1,2,3', '1,2,3', '1,2,3', 'Both', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'living', NULL, NULL, NULL, NULL, NULL, NULL, 'buy', NULL, 0, NULL, NULL, NULL, '2024-01-16 08:53:15', '2024-01-16 08:53:15', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, 11, 3, 'Dhaka, Sylhet, Noakhali', NULL, 'This is test', 'mortgage', 50, 0, 'This is test description', NULL, NULL, 'Residential', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'investment', NULL, NULL, NULL, NULL, NULL, NULL, 'buy', NULL, 0, NULL, NULL, NULL, '2024-01-18 08:33:14', '2024-01-18 08:33:14', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1, 12, 5, NULL, '3500', 'This is Test', NULL, NULL, 0, NULL, 'Garden,Swimming Pool', 'Detached House', NULL, NULL, '5', '', '', NULL, 'Service Accommodation', 'East of England', 'Songraish, Adarsha Sadar', 'Fully', 'Comilla', 'Yes', '{\"rent_pm\":\"30\",\"rent_deposit\":\"50\",\"damage_deposit\":\"80\",\"agency_fee\":\"50\",\"potential_rent\":\"20\"}', '1706450377.jpg,1706450377.jpg,1706450377.jpg,1706450377.jpg,1706450377.jpg,1706450377.jpg', NULL, '1706450377.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-28 07:59:38', '2024-01-28 07:59:38', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1, 12, 5, NULL, 'E59AB', '5 bedroom hmo 5 bedroom hmo', NULL, NULL, 0, 'Nice House Available in London  Nice House Available in London  Nice House Available in London  Nice House Available in London', 'Garden,Swimming Pool', 'Apartment', NULL, NULL, '5', '', '', NULL, 'Service Accommodation', 'Yorkshire & Humberside', 'London road', 'Partially', 'Barking', 'Yes', '{\"rent_pm\":\"1500\",\"rent_deposit\":\"2000\",\"damage_deposit\":\"500\",\"agency_fee\":\"3000\",\"potential_rent\":\"1000\"}', '1706456472.jpg,1706456472.jpg,1706456472.jpg', NULL, '1706456472.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-01-28 09:41:12', '2024-01-28 09:41:12', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 1, 12, 6, NULL, 'GHIJKL', 'This is test Property', NULL, NULL, 0, 'sdfgsdfgsdff sdfgsdfgsd sddfgsdfgsdf', 'Garden,Terrace,Swimming Pool', 'Semi Detached House', NULL, NULL, '1', '1', '1', NULL, 'FLIP', 'North East & Cumbria', 'London road', NULL, 'Barking', 'Yes', '{\"rent_pm\":\"500\",\"potential_rent\":\"600\",\"rent_deposit\":\"400\",\"agency_fee\":\"600\"}', 'IGEiPu1706629992.jpg,9FlPbB1706629992.jpg,yOTD7c1706629992.jpg', NULL, '1706629992.jpg', 'Tenanted', 'Rentable Condition', '200', '30', '500', NULL, NULL, 0, NULL, NULL, NULL, '2024-01-30 09:53:12', '2024-01-30 09:53:12', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 1, 11, 3, 'Uttara, Sector 10, Dhaka, Bangladeshh', NULL, 'This is Test Buying', 'mortgage', 50, 0, 'asdfsadfasd', NULL, NULL, 'Commercial', '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'living', NULL, NULL, NULL, NULL, NULL, NULL, 'buy', NULL, 0, NULL, NULL, NULL, '2024-02-08 07:15:28', '2024-02-08 07:15:28', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 1, 13, 7, 'Comilla', '3500', 'dfaddfasd', NULL, NULL, 0, 'sadfsadfgsfdgsdfg', NULL, 'Studio flat', NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, 'Songraish, Adarsha Sadar, Comilla', 'Partially', NULL, NULL, NULL, 'xbGYsD1707580174.jpg,tOEern1707580174.jpg,A7bCZW1707580174.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '{\"monthly_rent\":\"500\",\"month\":\"12\",\"weekly_rent\":200,\"tenance_number\":\"5\",\"deposit\":\"100\",\"date\":\"2024-02-29\"}', 'bill_included,parking,garden_access,fire_access', 'students_allowed,pets_allowed,families_allowed,smokers_allowed,dss_income_accepted', '2024-02-10 09:49:34', '2024-02-10 09:49:34', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 1, 11, 0, 'Comilla', '3500', 'This is room wanted', NULL, 50, 0, 'This is test room wanted', 'Furnish,Shared living room,Garden or roof terrace,Balcony or patio,Garage,Disabled access,En-suite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Songraish, Adarsha Sadar, Comilla', NULL, NULL, NULL, NULL, 'dXCeYg1708510372.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rent', 0, 0, NULL, NULL, NULL, '2024-02-21 04:12:53', '2024-02-21 04:12:53', 1, '5', 'Mon to Fri Only', '2024-03-01', '{\"age\":\"32\",\"occupation\":\"Business\",\"nationality\":\"Bnagladeshi\",\"language\":\"English\",\"gender\":\"male\",\"name\":\"pranab Sarker\",\"smoke\":\"1\",\"pets\":\"1\"}', '{\"mate_age\":\"25\",\"mate_occupation\":\"Business\",\"mate_gender\":\"male\",\"mate_smoke\":\"1\",\"mate_pets\":\"0\"}');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `source` varchar(191) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_tag` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `seo_check` tinyint(4) NOT NULL DEFAULT 0,
  `tags` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `photo`, `description`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `seo_check`, `tags`, `created_at`, `updated_at`) VALUES
(66, 8, 'Transforming Your Roof into a Functional Outdoor Space', 'transforming-your-roof-into-a-functional-outdoor-space', '16398124991702829841.jpg', '<p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Your home\'s roof is one of its most vital components, protecting you and your belongings from the elements. Regular roof maintenance is essential to ensure its longevity and keep your home looking beautiful. In this comprehensive blog post, we\'ll walk you through the top 10 roof maintenance tips that will not only extend the life of your roof but also enhance the overall aesthetics of your home.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">From inspecting for signs of damage to addressing common issues like leaks and loose shingles, our expert tips will empower you to take proactive measures in caring for your roof. We\'ll delve into the importance of clearing debris, maintaining gutters, and ensuring proper ventilation to prevent potential problems and keep your roof in top-notch condition.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Furthermore, we\'ll provide guidance on selecting the right roofing materials and how they can impact both the durability and visual appeal of your home. Whether you\'re considering traditional shingles, eco-friendly options like green roofing, or exploring the benefits of solar roofing, we\'ve got you covered with insightful information.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">You don\'t need to be a roofing expert to follow these maintenance tips. We\'ve simplified each step and included practical advice for homeowners of all experience levels. By incorporating these strategies into your routine, you\'ll not only save money on costly repairs but also maintain the curb appeal and value of your property.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Don\'t wait for a major roofing problem to arise; be proactive and take control of your roof\'s health and aesthetics today. Join us on this roof maintenance journey and ensure that your home remains a durable and beautiful haven for years to come.</span></font></p>', NULL, 2, 1, NULL, NULL, 0, NULL, '2023-03-12 05:28:22', '2023-12-17 10:17:21'),
(67, 9, 'How to Protect Your Roof During Extreme Weather', 'how-to-protect-your-roof-during-extreme-weather', '15089110981702829819.jpg', '<p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Extreme weather events, such as hurricanes, heavy storms, snowstorms, and scorching heatwaves, can wreak havoc on your home\'s roof. Safeguarding your roof during these challenging conditions is crucial to prevent costly damages and ensure the safety of your family. In this informative blog post, we provide valuable insights and practical tips on how to protect your roof when facing extreme weather.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Our expert advice covers a wide range of weather scenarios, offering comprehensive guidance on preparing your roof before, during, and after extreme events. Learn about the importance of regular roof inspections, identifying weak spots, and reinforcing vulnerable areas to fortify your roof\'s resilience.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Discover effective strategies for safeguarding against strong winds, heavy rainfall, and hail damage. From installing hurricane straps and securing loose shingles to ensuring proper drainage, our step-by-step instructions will empower you to take proactive measures in protecting your roof.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">During winter storms, snow and ice can create significant challenges for roofs. We\'ll outline best practices for snow removal and ice dam prevention to avoid structural stress and water leaks. Additionally, we\'ll explore how proper insulation and ventilation can enhance your roof\'s ability to withstand extreme cold temperatures.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">For those living in regions prone to wildfires or scorching heatwaves, we\'ll share essential tips on selecting fire-resistant roofing materials and implementing fire safety measures to shield your home from potential disasters.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">No matter where you live, extreme weather can pose a threat to your roof. By following the advice in this blog, you\'ll gain valuable knowledge and actionable steps to protect your investment and maintain the integrity of your roof during the most challenging weather conditions.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Don\'t wait for a storm to strike; be prepared and proactive in safeguarding your roof against extreme weather. Join us in this journey to fortify your roof and ensure that it stands strong and secure through any weather event that comes its way.</span></font></p>', NULL, 2, 1, NULL, NULL, 0, 'Blog', '2023-03-12 05:28:44', '2023-12-17 10:16:59'),
(68, 9, 'Top 10 Roof Maintenance Tips for a Durable and Beautiful Home', 'top-10-roof-maintenance-tips-for-a-durable-and-beautiful-home', '11310907941702829797.jpg', '<p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Your home\'s roof is one of its most vital components, protecting you and your belongings from the elements. Regular roof maintenance is essential to ensure its longevity and keep your home looking beautiful. In this comprehensive blog post, we\'ll walk you through the top 10 roof maintenance tips that will not only extend the life of your roof but also enhance the overall aesthetics of your home.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">From inspecting for signs of damage to addressing common issues like leaks and loose shingles, our expert tips will empower you to take proactive measures in caring for your roof. We\'ll delve into the importance of clearing debris, maintaining gutters, and ensuring proper ventilation to prevent potential problems and keep your roof in top-notch condition.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Furthermore, we\'ll provide guidance on selecting the right roofing materials and how they can impact both the durability and visual appeal of your home. Whether you\'re considering traditional shingles, eco-friendly options like green roofing, or exploring the benefits of solar roofing, we\'ve got you covered with insightful information.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">You don\'t need to be a roofing expert to follow these maintenance tips. We\'ve simplified each step and included practical advice for homeowners of all experience levels. By incorporating these strategies into your routine, you\'ll not only save money on costly repairs but also maintain the curb appeal and value of your property.</span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\"><br></span></font></p><p><font color=\"#7b7d83\" face=\"DM Sans, sans-serif\"><span style=\"font-size: 16px;\">Don\'t wait for a major roofing problem to arise; be proactive and take control of your roof\'s health and aesthetics today. Join us on this roof maintenance journey and ensure that your home remains a durable and beautiful haven for years to come.</span></font></p>', NULL, 30, 1, NULL, NULL, 0, 'Blog,Tag', '2023-03-12 05:28:59', '2023-12-17 10:16:37'),
(72, 14, 'Exploring Unique and Stylish Roofing Design Options', 'exploring-unique-and-stylish-roofing-design-options', '11117333651702829780.jpg', '<p>Extreme weather events, such as hurricanes, heavy storms, snowstorms, and scorching heatwaves, can wreak havoc on your home\'s roof. Safeguarding your roof during these challenging conditions is crucial to prevent costly damages and ensure the safety of your family. In this informative blog post, we provide valuable insights and practical tips on how to protect your roof when facing extreme weather.</p><p><br></p><p>Our expert advice covers a wide range of weather scenarios, offering comprehensive guidance on preparing your roof before, during, and after extreme events. Learn about the importance of regular roof inspections, identifying weak spots, and reinforcing vulnerable areas to fortify your roof\'s resilience.</p><p><br></p><p>Discover effective strategies for safeguarding against strong winds, heavy rainfall, and hail damage. From installing hurricane straps and securing loose shingles to ensuring proper drainage, our step-by-step instructions will empower you to take proactive measures in protecting your roof.</p><p><br></p><p>During winter storms, snow and ice can create significant challenges for roofs. We\'ll outline best practices for snow removal and ice dam prevention to avoid structural stress and water leaks. Additionally, we\'ll explore how proper insulation and ventilation can enhance your roof\'s ability to withstand extreme cold temperatures.</p><p><br></p><p>For those living in regions prone to wildfires or scorching heatwaves, we\'ll share essential tips on selecting fire-resistant roofing materials and implementing fire safety measures to shield your home from potential disasters.</p><p><br></p><p>No matter where you live, extreme weather can pose a threat to your roof. By following the advice in this blog, you\'ll gain valuable knowledge and actionable steps to protect your investment and maintain the integrity of your roof during the most challenging weather conditions.</p><p><br></p><p>Don\'t wait for a storm to strike; be prepared and proactive in safeguarding your roof against extreme weather. Join us in this journey to fortify your roof and ensure that it stands strong and secure through any weather event that comes its way.</p>', NULL, 0, 1, NULL, NULL, 0, 'Blog,Blog Tag', '2023-08-02 02:18:32', '2023-12-17 10:16:20'),
(73, 8, 'dfasdfdsaf', 'dfasdfdsaf', '2124839001702829757.jpg', '<p>sdfasddfasd</p>', NULL, 0, 1, NULL, 'gfhdgh', 1, 'asdfasd,ertyert', '2023-09-10 10:54:41', '2023-12-17 10:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`) VALUES
(8, 'Roof Repairs 101', 'roof-repairs-101', 1),
(9, 'Weathering the Storm', 'weathering-the-storm', 1),
(13, 'Rooftop Renovations', 'rooftop-renovations', 1),
(14, 'Preventing Roof Leaks', 'preventing-roof-leaks', 1),
(15, 'Roofing Safety', 'roofing-safety', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `photo`) VALUES
(1, 'Office', '18870181751687254874.png'),
(2, 'Window', '19801867251687254867.png'),
(3, 'Service', '9109954631687254859.png'),
(4, 'ProfessionalBand', '4075842061687254851.png'),
(5, 'Cleaning', '16399467211687254844.png'),
(6, 'Matador', '4599468961687254837.png'),
(8, 'Today', '2542370731687254888.png'),
(9, 'Askimat', '18769126691687254904.png'),
(10, 'Martino', '7672074811687254916.png');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `photo`) VALUES
(11, 'Property wanted', 'property-wanted', '17829234591699199968.jpg'),
(12, 'Exclusive Deals', 'exclusive-deals', '12593435911699200120.jpg'),
(13, 'Room Rent', 'room-rent', '16900884271701856390.jpg'),
(15, 'job', 'job', '10333237821707147890.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(9, 'Test Name', 'test@gmail.com', '017000000000', NULL, 'Lorem ipsum dolor sit amet consectetur. Ut tellus suspendisse nulla aliquam. Risus rutrum tellus as eget ultrices amet facilisis.', '2023-03-22 16:40:41', '2023-03-22 16:40:41'),
(10, 'Demo Name', 'demouser@gmail.com', '01800000000', NULL, 'Lorem ipsum dolor sit amet consectetur. Ut tellus suspendisse nulla aliquam. Risus rutrum tellus as eget ultrices amet facilisis.', '2023-03-22 16:41:14', '2023-03-22 16:41:14'),
(11, 'Dummy Name', 'dummy@gmail.com', '01900000000', NULL, 'Lorem ipsum dolor sit amet consectetur. Ut tellus suspendisse nulla aliquam. Risus rutrum tellus as eget ultrices amet facilisis.', '2023-03-22 16:41:44', '2023-03-22 16:41:44'),
(12, 'pronob sarker', 'pronobsarker16@gmail.com', '01976814812', 'test new', 'This is test message', '2023-12-06 04:36:26', '2023-12-06 04:36:26');

-- --------------------------------------------------------

--
-- Table structure for table `contact_pages`
--

CREATE TABLE `contact_pages` (
  `id` int(11) NOT NULL,
  `email1` varchar(255) DEFAULT NULL,
  `email2` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `map_link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_pages`
--

INSERT INTO `contact_pages` (`id`, `email1`, `email2`, `phone1`, `phone2`, `address`, `photo`, `title`, `map_link`) VALUES
(1, 'Envatodemo@gmail.com', 'Envatodemo2@gmail.com', '+23 (000) 68 603', '+21 (000) 68 703', '66 broklyn golden street 600 New york. USA!', '13685679351701858077.png', 'Contact with Authority', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d96811.54759587669!2d-74.01263924803828!3d406880494567041!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f131!3m3!1m2!1s0x89c25bae694479a3%3A0xb9949385da52e69e!2sBarclays%20Center!5e0!3m2!1sen!2sbd!4v1636195194646!5m2!1sen!2sbd');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `iso3` varchar(191) DEFAULT NULL,
  `phone_code` varchar(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `iso3`, `phone_code`, `status`) VALUES
(1, 'United Kingdom', 'UK', '46546', 1);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 0),
(12, 'jgsdjyhasdf', 'sdf', 50, 0),
(13, 'GBP', '£', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) DEFAULT NULL,
  `email_subject` mediumtext DEFAULT NULL,
  `email_body` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'Plan', 'Your Plan Placed Successfully', '<p>Hello {customer_name},<br>Your Plan has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To Booking Core', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'user_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`) VALUES
(3, 'How stay calm from the first time', 'People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.'),
(5, 'Our proprietary enables Quality', 'People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.'),
(6, 'Locate Clean USA Office Near You', 'People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.'),
(7, 'Visit our office and see services', 'People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.'),
(8, 'How to get Services', 'People tend to do such a thing is because they find hiring a cleaning service company too expensive. Even if they do end up hiring a cleaning service, they tend to cheap out on this. Doing so can result in spending more money than you initially thought. So, let us find out how choosing the proper cleaning services can benefit you in more ways than you are thinking.');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(11) NOT NULL,
  `curr_code` varchar(10) NOT NULL DEFAULT 'USD',
  `curr_sym` varchar(10) NOT NULL DEFAULT '$',
  `header_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `loader` varchar(191) NOT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `mail_type` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(255) DEFAULT NULL,
  `smtp_user` varchar(255) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `mail_encryption` varchar(255) DEFAULT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `theme_color` varchar(255) DEFAULT NULL,
  `is_tawk` tinyint(4) NOT NULL DEFAULT 0,
  `tawk_id` varchar(222) DEFAULT NULL,
  `is_verify` tinyint(4) DEFAULT 0,
  `is_cookie` tinyint(4) NOT NULL DEFAULT 0,
  `cookie_btn_text` varchar(255) DEFAULT NULL,
  `cookie_text` text DEFAULT NULL,
  `is_maintenance` tinyint(4) DEFAULT 0,
  `maintenance` text DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT 1,
  `kyc` tinyint(1) NOT NULL DEFAULT 1,
  `kyc_offer_limit` int(11) NOT NULL DEFAULT 0,
  `kyc_trade_limit` int(11) NOT NULL DEFAULT 0,
  `sms_notify` tinyint(1) NOT NULL DEFAULT 1,
  `email_notify` tinyint(1) NOT NULL DEFAULT 1,
  `allowed_email` text DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `recaptcha` tinyint(1) NOT NULL DEFAULT 0,
  `recaptcha_key` varchar(255) DEFAULT NULL,
  `recaptcha_secret` varchar(255) DEFAULT NULL,
  `cookie` text DEFAULT NULL,
  `two_fa` int(11) NOT NULL,
  `hero_banner` varchar(255) DEFAULT NULL,
  `hero_title` varchar(255) DEFAULT NULL,
  `hero_text` varchar(255) DEFAULT NULL,
  `copyright_text` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `curr_code`, `curr_sym`, `header_logo`, `favicon`, `title`, `loader`, `smtp_host`, `mail_type`, `smtp_port`, `smtp_user`, `smtp_pass`, `mail_encryption`, `from_email`, `from_name`, `theme_color`, `is_tawk`, `tawk_id`, `is_verify`, `is_cookie`, `cookie_btn_text`, `cookie_text`, `is_maintenance`, `maintenance`, `registration`, `kyc`, `kyc_offer_limit`, `kyc_trade_limit`, `sms_notify`, `email_notify`, `allowed_email`, `contact_no`, `recaptcha`, `recaptcha_key`, `recaptcha_secret`, `cookie`, `two_fa`, `hero_banner`, `hero_title`, `hero_text`, `copyright_text`) VALUES
(1, 'USD', '$', '3794149701702919519.png', '14887296331702919532.png', 'Auctionsdfasd', '1564224328loading3.gif', 'sandbox.smtp.mailtrap.io', 'php_mailer', '465', '6cdb15c5da9bb5', 'e7e5daa8838de2', 'tls', 'admin@gmail.com', 'Admin', 'FFC107', 0, '6124fa49d6e7610a49b1c136/1fds73c17', 1, 0, 'cookie_btn_text', NULL, 0, 'Website Maintenance', 1, 1, 2, 2, 1, 1, NULL, '+88000000000', 0, '6LeMB00fAAAAABm___8W1d2ocsMjC7_8vdRXQ58b', '6LeMB00fAAAAAGB_3ya1UuIpAbikNOXyfPUr8Gey', '{\"status\":\"1\",\"button_text\":\"Allow Cookie\",\"cookie_text\":\"Our site use cookies when you visit our website, including any other media form, mobile website, or mobile application related or connected to help customize the site and improve your experience.\"}', 0, '11407066291701855861.jpg', 'Find Your Property', 'From as low as $10 per day with limited time offer', 'Copyright © 2023 Reserved Passion by GeniusOceannnn');

-- --------------------------------------------------------

--
-- Table structure for table `header_sections`
--

CREATE TABLE `header_sections` (
  `id` int(11) NOT NULL,
  `room_title` varchar(255) DEFAULT NULL,
  `room_subtitle` varchar(255) DEFAULT NULL,
  `distress_title` varchar(255) DEFAULT NULL,
  `distress_subtitle` varchar(255) DEFAULT NULL,
  `buyer_title` varchar(255) DEFAULT NULL,
  `buyer_subtitle` varchar(255) DEFAULT NULL,
  `blog_title` varchar(255) DEFAULT NULL,
  `blog_subtitle` varchar(255) DEFAULT NULL,
  `subscribe_title` varchar(255) DEFAULT NULL,
  `subscribe_subtitle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `header_sections`
--

INSERT INTO `header_sections` (`id`, `room_title`, `room_subtitle`, `distress_title`, `distress_subtitle`, `buyer_title`, `buyer_subtitle`, `blog_title`, `blog_subtitle`, `subscribe_title`, `subscribe_subtitle`) VALUES
(1, 'Properties for Rent', 'Find new & featured property for you.', 'Exclusive Deals', 'Find new & featured Deals for you.', 'Buyer\'s Property Requirements', 'Find new & featured property for youu.', 'Trending Articles', 'We post regulary most powerful articles for help and supportt.', 'Subscribe Now', 'Subscribe subtitle here');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`, `rtl`) VALUES
(1, 1, 'English', '163479343308Fu3jm9.json', 0),
(11, 0, 'test', '1638347401hPc8azyI.json', 0);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `designation`, `message`, `photo`) VALUES
(17, 'Test Productss', 'test', 'test', 'nqD1588136884bv-rm.jpg'),
(18, 'showrav Hasan', 'Designation', 'asdfasd', 'Nv41588136853people.png');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_25_053316_create_admins_table', 2),
(6, '2014_10_12_100000_create_password_reset_tokens_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('manual','automatic') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'manual',
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) DEFAULT NULL,
  `currency_id` varchar(191) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `currency_id`, `status`) VALUES
(1, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', '[\"1\"]', 1),
(15, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi\",\"client_secret\":\"EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE\",\"sandbox_check\":1,\"text\":\"Pay via your PayPal account.\"}', 'paypal', '[\"1\"]', 1),
(27, 'mobile money', 'bKash', 'Please send money using number', NULL, 'manual', NULL, NULL, '0', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `price` int(20) NOT NULL,
  `days` int(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contact_limit` int(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `title`, `slug`, `price`, `days`, `description`, `contact_limit`, `status`, `created_at`, `updated_at`) VALUES
(3, 'BASIC PACKAGE', 'basic-package', 49, 90, '<p>This is Basic Packages</p>', 50, 1, '2023-11-17 03:54:35', '2023-11-17 03:54:35'),
(4, 'PLATINUM PACKAGE', 'platinum-package', 149, 90, '<p>This is Platinum Package</p>', 90, 1, '2023-11-17 03:55:39', '2023-11-17 03:55:39'),
(5, 'STANDARD PACKAGE', 'standard-package', 199, 90, '<p>This is Standard Package</p>', 90, 1, '2023-11-17 03:57:28', '2023-11-17 03:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_tag` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `google_analytics` varchar(255) DEFAULT NULL,
  `facebook_pixel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `title`, `meta_tag`, `meta_description`, `meta_image`, `google_analytics`, `facebook_pixel`) VALUES
(1, 'Dashboard1', 'a,b,c,d,s', 'test description1', 'fgy1588136884bv-rm.jpg', 'test1', 'test1');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `budget` double NOT NULL,
  `photo` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `category_id`, `title`, `slug`, `description`, `location`, `budget`, `photo`, `user_id`) VALUES
(3, 2, 'Innovative Abstract Icon Logo Design', 'innovative-abstract-icon-logo-design', '<span style=\"color: rgb(24, 32, 43); font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; background-color: rgb(245, 247, 250);\">Website Design: Develop a modern, user-friendly, and responsive website that reflects our consultancy\'s professionalism and expertise. Design a clean and intuitive layout with easy navigation to showcase our services, team, and contact information. Integration of essential features, such as a contact form, social media links, and a blog section. Logo Design: Create a unique and memorable logo that represents our consultancy\'s values and vision. Ensure the logo is versatile and scalable for various marketing materials and platforms. Provide multiple</span><br>', 'Uttara, Sector 10, Dhaka, Bangladeshh', 500, '15585275951709480012.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_categories`
--

INSERT INTO `service_categories` (`id`, `name`, `slug`, `status`) VALUES
(2, 'Hello', 'hello', 1);

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `fclient_id` text DEFAULT NULL,
  `fclient_secret` text DEFAULT NULL,
  `fredirect` text DEFAULT NULL,
  `gclient_id` text DEFAULT NULL,
  `gclient_secret` text DEFAULT NULL,
  `gredirect` text DEFAULT NULL,
  `website_url` varchar(191) DEFAULT NULL,
  `social_icons` text DEFAULT NULL,
  `social_urls` text DEFAULT NULL,
  `facebook_check` tinyint(4) NOT NULL DEFAULT 0,
  `google_check` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`, `website_url`, `social_icons`, `social_urls`, `facebook_check`, `google_check`) VALUES
(1, '353155922795407', '55f8379d2e9717b72f862d07e92af8ed', 'http://localhost/booking-laravel-7', '915191002660-okcvhj4qspmbcm4qgn9et4vnu5q3mdei.apps.googleusercontent.com', 'PP-ZuCXvvdIPrpUy2WEDeIck', 'http://localhost/charity/main-charity/auth/google/callback', 'http://localhost/booking-laravel-7', '[\"fab fa-font-awesome\",\"fab fa-fonticons\",\"fas fa-football-ball\"]', '[\"tttt\",\"tttt4\",\"test\"]', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `name`, `icon`, `link`) VALUES
(1, 'Facebook', 'fab fa-facebook-f', 'https://getbootstrap.com'),
(2, 'Twitter', 'fab fa-twitter', 'https://getbootstrap.com'),
(3, 'Instagram', 'fab fa-instagram', 'https://getbootstrap.com'),
(4, 'Linkedin', 'fab fa-linkedin-in', 'https://getbootstrap.com');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `country_id` int(5) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `postcode`, `area`, `region`, `country`) VALUES
(1, 1, 'AB10', 'Aberdeen', 'Aberdeen', 'Scotland'),
(2, 1, 'AB11', 'Aberdeen', 'Aberdeen', 'Scotland'),
(3, 1, 'AB12', 'Aberdeen', 'Aberdeen City', 'Scotland'),
(4, 1, 'AB13', 'Milltimber', 'Aberdeen City', 'Scotland'),
(5, 1, 'AB14', 'Peterculter', 'Aberdeen City', 'Scotland'),
(6, 1, 'AB15', 'Aberdeen', 'Aberdeen City', 'Scotland'),
(7, 1, 'AB16', 'Aberdeen', 'Aberdeen City', 'Scotland'),
(8, 1, 'AB21', 'Aberdeen Airport', 'Aberdeen City', 'Scotland'),
(9, 1, 'AB22', 'Bridge Of Don', 'Aberdeen City', 'Scotland'),
(10, 1, 'AB23', 'Aberdeen', 'Aberdeen City', 'Scotland'),
(11, 1, 'AB24', 'Aberdeen', 'Aberdeen City', 'Scotland'),
(12, 1, 'AB25', 'Aberdeen', 'Aberdeen City', 'Scotland'),
(13, 1, 'AB30', 'Laurencekirk', 'Aberdeenshire', 'Scotland'),
(14, 1, 'AB31', 'Banchory', 'Aberdeenshire', 'Scotland'),
(15, 1, 'AB32', 'Westhill', 'Aberdeenshire', 'Scotland'),
(16, 1, 'AB33', 'Alford', 'Aberdeenshire', 'Scotland'),
(17, 1, 'AB34', 'Aboyne', 'Aberdeenshire', 'Scotland'),
(18, 1, 'AB35', 'Ballatar', 'Aberdeenshire', 'Scotland'),
(19, 1, 'AB36', 'Strathdon', 'Aberdeenshire', 'Scotland'),
(20, 1, 'AB37', 'Ballindalloch', 'Moray', 'Scotland'),
(21, 1, 'AB38', 'Aberlour', 'Moray', 'Scotland'),
(22, 1, 'AB39', 'Stonehaven', 'Aberdeenshire', 'Scotland'),
(23, 1, 'AB41', 'Ellon', 'Aberdeenshire', 'Scotland'),
(24, 1, 'AB42', 'Peterhead', 'Aberdeenshire', 'Scotland'),
(25, 1, 'AB43', 'Fraserburgh', 'Aberdeenshire', 'Scotland'),
(26, 1, 'AB44', 'Macduff', 'Aberdeenshire', 'Scotland'),
(27, 1, 'AB45', 'Banff', 'Aberdeenshire', 'Scotland'),
(28, 1, 'AB51', 'Inverurie', 'Aberdeenshire', 'Scotland'),
(29, 1, 'AB52', 'Insch', 'Aberdeenshire', 'Scotland'),
(30, 1, 'AB53', 'Turriff', 'Aberdeenshire', 'Scotland'),
(31, 1, 'AB54', 'Huntly', 'Aberdeenshire', 'Scotland'),
(32, 1, 'AB55', '', 'Moray', 'Scotland'),
(33, 1, 'AB56', '', 'Moray', 'Scotland'),
(34, 1, 'AL1', 'St Albans', 'Hertfordshire', 'England'),
(35, 1, 'AL10', 'Hatfield', 'Hertfordshire', 'England'),
(36, 1, 'AL2', 'St Albans', 'Hertfordshire', 'England'),
(37, 1, 'AL3', 'Redbourn', 'Hertfordshire', 'England'),
(38, 1, 'AL4', 'Sandridge', 'Hertfordshire', 'England'),
(39, 1, 'AL5', 'Harpenden', 'Hertfordshire', 'England'),
(40, 1, 'AL6', 'Welwyn', 'Hertfordshire', 'England'),
(41, 1, 'AL7', 'Welwyn Garden City', 'Hertfordshire', 'England'),
(42, 1, 'AL8', 'Welwyn Garden City', 'Hertfordshire', 'England'),
(43, 1, 'AL9', 'Hatfield', 'Hertfordshire', 'England'),
(44, 1, 'B1', '', 'Birmingham', 'England'),
(45, 1, 'B10', '', 'Birmingham', 'England'),
(46, 1, 'B11', '', 'Birmingham', 'England'),
(47, 1, 'B12', '', 'Birmingham', 'England'),
(48, 1, 'B13', '', 'Birmingham', 'England'),
(49, 1, 'B14', '', 'Birmingham', 'England'),
(50, 1, 'B15', '', 'Birmingham', 'England'),
(51, 1, 'B16', '', 'Birmingham', 'England'),
(52, 1, 'B17', '', 'Birmingham', 'England'),
(53, 1, 'B18', '', 'Birmingham', 'England'),
(54, 1, 'B19', '', 'Birmingham', 'England'),
(55, 1, 'B2', '', 'Birmingham', 'England'),
(56, 1, 'B20', '', 'Birmingham', 'England'),
(57, 1, 'B21', '', 'Birmingham', 'England'),
(58, 1, 'B23', '', 'Birmingham', 'England'),
(59, 1, 'B24', '', 'Birmingham', 'England'),
(60, 1, 'B25', '', 'Birmingham', 'England'),
(61, 1, 'B26', '', 'Birmingham', 'England'),
(62, 1, 'B27', '', 'Birmingham', 'England'),
(63, 1, 'B28', '', 'Birmingham', 'England'),
(64, 1, 'B29', '', 'Birmingham', 'England'),
(65, 1, 'B3', '', 'Birmingham', 'England'),
(66, 1, 'B30', '', 'Birmingham', 'England'),
(67, 1, 'B31', '', 'Birmingham', 'England'),
(68, 1, 'B32', '', 'Birmingham', 'England'),
(69, 1, 'B33', '', 'Birmingham', 'England'),
(70, 1, 'B34', '', 'Birmingham', 'England'),
(71, 1, 'B35', '', 'Birmingham', 'England'),
(72, 1, 'B36', 'Castle Bromwich', 'Solihull', 'England'),
(73, 1, 'B37', 'Chelmsley Wood', 'Solihull', 'England'),
(74, 1, 'B38', 'Tees Grove', 'Birmingham', 'England'),
(75, 1, 'B4', '', 'Birmingham', 'England'),
(76, 1, 'B40', 'Bickenhill', 'Solihull', 'England'),
(77, 1, 'B42', '', 'Birmingham', 'England'),
(78, 1, 'B43', 'West Bromwich', 'Sandwell', 'England'),
(79, 1, 'B44', '', 'Birmingham', 'England'),
(80, 1, 'B45', '', 'Birmingham', 'England'),
(81, 1, 'B46', 'Coleshill', 'Warwickshire', 'England'),
(82, 1, 'B47', 'Wythall', 'Worcestershire', 'England'),
(83, 1, 'B48', 'Alvechurch', 'Worcestershire', 'England'),
(84, 1, 'B49', 'Alcester', 'Warwickshire', 'England'),
(85, 1, 'B5', '', 'Birmingham', 'England'),
(86, 1, 'B50', 'Bidford-on-Avon', 'Warwickshire', 'England'),
(87, 1, 'B6', '', 'Birmingham', 'England'),
(88, 1, 'B60', 'Bromsgrove', 'Worcestershire', 'England'),
(89, 1, 'B61', 'Bromsgrove', 'Worcestershire', 'England'),
(90, 1, 'B62', 'Hurst Green', 'Dudley', 'England'),
(91, 1, 'B63', 'Hurst Green', 'Dudley', 'England'),
(92, 1, 'B64', 'West Bromwich', 'Sandwell', 'England'),
(93, 1, 'B65', 'West Bromwich', 'Sandwell', 'England'),
(94, 1, 'B66', 'West Bromwich', 'Sandwell', 'England'),
(95, 1, 'B67', 'West Bromwich', 'Sandwell', 'England'),
(96, 1, 'B68', 'West Bromwich', 'Sandwell', 'England'),
(97, 1, 'B69', 'West Bromwich', 'Sandwell', 'England'),
(98, 1, 'B7', '', 'Birmingham', 'England'),
(99, 1, 'B70', 'West Bromwich', 'Sandwell', 'England'),
(100, 1, 'B71', 'West Bromwich', 'Sandwell', 'England'),
(101, 1, 'B72', '', 'Birmingham', 'England'),
(102, 1, 'B73', '', 'Birmingham', 'England'),
(103, 1, 'B74', '', 'Birmingham', 'England'),
(104, 1, 'B75', '', 'Birmingham', 'England'),
(105, 1, 'B76', '', 'Birmingham', 'England'),
(106, 1, 'B77', 'Tamworth', 'Staffordshire', 'England'),
(107, 1, 'B78', 'Tamworth', 'Staffordshire', 'England'),
(108, 1, 'B79', 'Wigginton', 'Staffordshire', 'England'),
(109, 1, 'B8', '', 'Birmingham', 'England'),
(110, 1, 'B80', 'Studley', 'Warwickshire', 'England'),
(111, 1, 'B9', '', 'Birmingham', 'England'),
(112, 1, 'B90', '', 'Solihull', 'England'),
(113, 1, 'B91', '', 'Solihull', 'England'),
(114, 1, 'B92', '', 'Solihull', 'England'),
(115, 1, 'B93', 'Dorridge', 'Solihull', 'England'),
(116, 1, 'B94', 'Tanworth-in-Arden', 'Warwickshire', 'England'),
(117, 1, 'B95', 'Henley-in-Arden', 'Warwickshire', 'England'),
(118, 1, 'B96', 'Redditch', 'Worcestershire', 'England'),
(119, 1, 'B97', 'Redditch', 'Worcestershire', 'England'),
(120, 1, 'B98', 'Redditch', 'Worcestershire', 'England'),
(121, 1, 'BA1', 'Bath', 'Bath and North East Somerset', 'England'),
(122, 1, 'BA10', 'Bruton', 'Somerset', 'England'),
(123, 1, 'BA11', 'Frome', 'Somerset', 'England'),
(124, 1, 'BA12', 'Longbridge Deverill', 'Wiltshire', 'England'),
(125, 1, 'BA13', 'Westbury', 'Wiltshire', 'England'),
(126, 1, 'BA14', 'Trowbridge', 'Wiltshire', 'England'),
(127, 1, 'BA15', 'Bradford-on-Avon', 'Wiltshire', 'England'),
(128, 1, 'BA16', 'Street', 'Somerset', 'England'),
(129, 1, 'BA2', 'Bath', 'Bath and North East Somerset', 'England'),
(130, 1, 'BA20', 'Yeovil', 'Somerset', 'England'),
(131, 1, 'BA21', 'Yeovil', 'Somerset', 'England'),
(132, 1, 'BA22', 'Mudford', 'Somerset', 'England'),
(133, 1, 'BA3', 'Kilmersdon', 'Somerset', 'England'),
(134, 1, 'BA4', 'Shepton Mallet', 'Somerset', 'England'),
(135, 1, 'BA5', 'St Cuthbert Out', 'Somerset', 'England'),
(136, 1, 'BA6', 'Glastonbury', 'Somerset', 'England'),
(137, 1, 'BA7', 'Castle Cary', 'Somerset', 'England'),
(138, 1, 'BA8', 'Templecombe', 'Somerset', 'England'),
(139, 1, 'BA9', 'Wincanton', 'Somerset', 'England'),
(140, 1, 'BB1', 'Darwen', 'Blackburn with Darwen', 'England'),
(141, 1, 'BB10', 'Burnley', 'Lancashire', 'England'),
(142, 1, 'BB11', 'Burnley', 'Lancashire', 'England'),
(143, 1, 'BB12', 'Ightenhill', 'Lancashire', 'England'),
(144, 1, 'BB18', 'Salterforth', 'Lancashire', 'England'),
(145, 1, 'BB2', 'Darwen', 'Blackburn with Darwen', 'England'),
(146, 1, 'BB3', 'Darwen', 'Blackburn with Darwen', 'England'),
(147, 1, 'BB4', 'Rawtenstall', 'Lancashire', 'England'),
(148, 1, 'BB5', 'Accrington', 'Lancashire', 'England'),
(149, 1, 'BB6', 'Accrington', 'Lancashire', 'England'),
(150, 1, 'BB7', 'Clitheroe', 'Lancashire', 'England'),
(151, 1, 'BB8', 'Newchurch', 'Lancashire', 'England'),
(152, 1, 'BB9', 'Newchurch', 'Lancashire', 'England'),
(153, 1, 'BD1', 'Queensbury', 'Bradford', 'England'),
(154, 1, 'BD10', 'Queensbury', 'Bradford', 'England'),
(155, 1, 'BD11', 'Dewsbury', 'Kirklees', 'England'),
(156, 1, 'BD12', 'Queensbury', 'Bradford', 'England'),
(157, 1, 'BD13', 'Queensbury', 'Bradford', 'England'),
(158, 1, 'BD14', 'Queensbury', 'Bradford', 'England'),
(159, 1, 'BD15', 'Queensbury', 'Bradford', 'England'),
(160, 1, 'BD16', 'Bingley', 'Bradford', 'England'),
(161, 1, 'BD17', 'Queensbury', 'Bradford', 'England'),
(162, 1, 'BD18', 'Queensbury', 'Bradford', 'England'),
(163, 1, 'BD19', 'Dewsbury', 'Kirklees', 'England'),
(164, 1, 'BD2', 'Queensbury', 'Bradford', 'England'),
(165, 1, 'BD20', 'Steeton', 'Bradford', 'England'),
(166, 1, 'BD21', 'Keighley', 'Bradford', 'England'),
(167, 1, 'BD22', 'Keighley', 'Bradford', 'England'),
(168, 1, 'BD23', 'Thorlby', 'North Yorkshire', 'England'),
(169, 1, 'BD24', 'Langcliffe', 'North Yorkshire', 'England'),
(170, 1, 'BD3', 'Queensbury', 'Bradford', 'England'),
(171, 1, 'BD4', 'Queensbury', 'Bradford', 'England'),
(172, 1, 'BD5', 'Queensbury', 'Bradford', 'England'),
(173, 1, 'BD6', 'Queensbury', 'Bradford', 'England'),
(174, 1, 'BD7', 'Queensbury', 'Bradford', 'England'),
(175, 1, 'BD8', 'Queensbury', 'Bradford', 'England'),
(176, 1, 'BD9', 'Queensbury', 'Bradford', 'England'),
(177, 1, 'BH1', '', 'Bournemouth', 'England'),
(178, 1, 'BH10', '', 'Bournemouth', 'England'),
(179, 1, 'BH11', '', 'Bournemouth', 'England'),
(180, 1, 'BH12', '', 'Poole', 'England'),
(181, 1, 'BH13', '', 'Poole', 'England'),
(182, 1, 'BH14', '', 'Poole', 'England'),
(183, 1, 'BH15', '', 'Poole', 'England'),
(184, 1, 'BH16', 'Upton', 'Dorset', 'England'),
(185, 1, 'BH17', '', 'Poole', 'England'),
(186, 1, 'BH18', '', 'Poole', 'England'),
(187, 1, 'BH19', 'Swanage', 'Dorset', 'England'),
(188, 1, 'BH2', '', 'Bournemouth', 'England'),
(189, 1, 'BH20', 'Wareham', 'Dorset', 'England'),
(190, 1, 'BH21', 'Colehill', 'Dorset', 'England'),
(191, 1, 'BH22', 'Ferndown', 'Dorset', 'England'),
(192, 1, 'BH23', 'Burton', 'Dorset', 'England'),
(193, 1, 'BH24', 'Ringwood', 'Hampshire', 'England'),
(194, 1, 'BH25', 'New Milton', 'Hampshire', 'England'),
(195, 1, 'BH3', '', 'Bournemouth', 'England'),
(196, 1, 'BH31', 'Verwood', 'Dorset', 'England'),
(197, 1, 'BH4', '', 'Bournemouth', 'England'),
(198, 1, 'BH5', '', 'Bournemouth', 'England'),
(199, 1, 'BH6', '', 'Bournemouth', 'England'),
(200, 1, 'BH7', '', 'Bournemouth', 'England'),
(201, 1, 'BH8', '', 'Bournemouth', 'England'),
(202, 1, 'BH9', '', 'Bournemouth', 'England'),
(203, 1, 'BL0', 'Ramsbottom', 'Bury', 'England'),
(204, 1, 'BL1', '', 'Bolton', 'England'),
(205, 1, 'BL2', '', 'Bolton', 'England'),
(206, 1, 'BL3', '', 'Bolton', 'England'),
(207, 1, 'BL4', '', 'Bolton', 'England'),
(208, 1, 'BL5', 'Westhoughton', 'Bolton', 'England'),
(209, 1, 'BL6', 'Horwich', 'Bolton', 'England'),
(210, 1, 'BL7', '', 'Bolton', 'England'),
(211, 1, 'BL8', '', 'Bury', 'England'),
(212, 1, 'BL9', '', 'Bury', 'England'),
(213, 1, 'BN1', 'Brighton', 'Brighton and Hove', 'England'),
(214, 1, 'BN10', 'Peacehaven', 'East Sussex', 'England'),
(215, 1, 'BN11', 'Worthing', 'West Sussex', 'England'),
(216, 1, 'BN12', 'Worthing', 'West Sussex', 'England'),
(217, 1, 'BN13', 'Worthing', 'West Sussex', 'England'),
(218, 1, 'BN14', 'Worthing', 'West Sussex', 'England'),
(219, 1, 'BN15', 'Lancing', 'West Sussex', 'England'),
(220, 1, 'BN16', 'Rustington', 'West Sussex', 'England'),
(221, 1, 'BN17', 'Littlehampton', 'West Sussex', 'England'),
(222, 1, 'BN18', 'Arundel', 'West Sussex', 'England'),
(223, 1, 'BN2', 'Brighton', 'Brighton and Hove', 'England'),
(224, 1, 'BN20', 'Eastbourne', 'East Sussex', 'England'),
(225, 1, 'BN21', 'Eastbourne', 'East Sussex', 'England'),
(226, 1, 'BN22', '', 'East Sussex', 'England'),
(227, 1, 'BN23', 'Eastbourne', 'East Sussex', 'England'),
(228, 1, 'BN24', 'Westham', 'East Sussex', 'England'),
(229, 1, 'BN25', 'Seaford', 'East Sussex', 'England'),
(230, 1, 'BN26', 'Long Man', 'East Sussex', 'England'),
(231, 1, 'BN27', 'Hailsham', 'East Sussex', 'England'),
(232, 1, 'BN3', 'Brighton', 'Brighton and Hove', 'England'),
(233, 1, 'BN41', 'Brighton', 'Brighton and Hove', 'England'),
(234, 1, 'BN42', 'Shoreham-by-Sea', 'West Sussex', 'England'),
(235, 1, 'BN43', 'Shoreham-by-Sea', 'West Sussex', 'England'),
(236, 1, 'BN44', 'Steyning', 'West Sussex', 'England'),
(237, 1, 'BN45', 'Newtimber', 'West Sussex', 'England'),
(238, 1, 'BN5', 'Henfield', 'West Sussex', 'England'),
(239, 1, 'BN6', 'Clayton', 'West Sussex', 'England'),
(240, 1, 'BN7', 'Lewes', 'East Sussex', 'England'),
(241, 1, 'BN8', 'Ringmer', 'East Sussex', 'England'),
(242, 1, 'BN9', 'Newhaven', 'East Sussex', 'England'),
(243, 1, 'BR1', 'Bromley', 'Greater London', 'England'),
(244, 1, 'BR2', 'Bromley', 'Greater London', 'England'),
(245, 1, 'BR3', 'Bromley', 'Greater London', 'England'),
(246, 1, 'BR4', 'Bromley', 'Greater London', 'England'),
(247, 1, 'BR5', 'Bromley', 'Greater London', 'England'),
(248, 1, 'BR6', 'Bromley', 'Greater London', 'England'),
(249, 1, 'BR7', 'Bromley', 'Greater London', 'England'),
(250, 1, 'BR8', 'Swanley', 'Kent', 'England'),
(251, 1, 'BS1', 'Bristol', 'City of Bristol', 'England'),
(252, 1, 'BS10', 'Bristol', 'City of Bristol', 'England'),
(253, 1, 'BS11', 'Bristol', 'City of Bristol', 'England'),
(254, 1, 'BS13', 'Bristol', 'City of Bristol', 'England'),
(255, 1, 'BS14', 'Bristol', 'City of Bristol', 'England'),
(256, 1, 'BS15', 'Kingswood', 'South Gloucestershire', 'England'),
(257, 1, 'BS16', 'Kingswood', 'South Gloucestershire', 'England'),
(258, 1, 'BS2', 'Bristol', 'City of Bristol', 'England'),
(259, 1, 'BS20', 'Portbury', 'North Somerset', 'England'),
(260, 1, 'BS21', 'Clevedon', 'North Somerset', 'England'),
(261, 1, 'BS22', 'Weston-Super-Mare', 'North Somerset', 'England'),
(262, 1, 'BS23', 'Weston-Super-Mare', 'North Somerset', 'England'),
(263, 1, 'BS24', 'Hutton', 'North Somerset', 'England'),
(264, 1, 'BS25', 'Winscombe', 'North Somerset', 'England'),
(265, 1, 'BS26', 'Weare', 'Somerset', 'England'),
(266, 1, 'BS27', 'Cheddar', 'Somerset', 'England'),
(267, 1, 'BS28', 'Wedmore', 'Somerset', 'England'),
(268, 1, 'BS29', 'Banwell', 'North Somerset', 'England'),
(269, 1, 'BS3', 'Bristol', 'City of Bristol', 'England'),
(270, 1, 'BS30', 'Bitton', 'South Gloucestershire', 'England'),
(271, 1, 'BS31', 'Keynsham', 'Bath and North East Somerset', 'England'),
(272, 1, 'BS32', 'Bradley Stoke', 'South Gloucestershire', 'England'),
(273, 1, 'BS34', 'Stoke Gifford', 'South Gloucestershire', 'England'),
(274, 1, 'BS35', 'Aust', 'South Gloucestershire', 'England'),
(275, 1, 'BS36', 'Frampton Cotterell', 'South Gloucestershire', 'England'),
(276, 1, 'BS37', 'Yate', 'South Gloucestershire', 'England'),
(277, 1, 'BS39', 'Clutton', 'Bath and North East Somerset', 'England'),
(278, 1, 'BS4', 'Bristol', 'City of Bristol', 'England'),
(279, 1, 'BS40', 'Nempnett Thrubwell', 'Bath and North East Somerset', 'England'),
(280, 1, 'BS41', 'Long Ashton', 'North Somerset', 'England'),
(281, 1, 'BS48', 'Nailsea', 'North Somerset', 'England'),
(282, 1, 'BS49', 'Yatton', 'North Somerset', 'England'),
(283, 1, 'BS5', 'Bristol', 'City of Bristol', 'England'),
(284, 1, 'BS6', 'Bristol', 'City of Bristol', 'England'),
(285, 1, 'BS7', 'Bristol', 'City of Bristol', 'England'),
(286, 1, 'BS8', 'Bristol', 'City of Bristol', 'England'),
(287, 1, 'BS9', 'Bristol', 'City of Bristol', 'England'),
(288, 1, 'BS99', 'Bristol', 'City of Bristol', 'England'),
(289, 1, 'BT1', '', 'Belfast', 'Northern Ireland'),
(290, 1, 'BT10', '', 'Belfast', 'Northern Ireland'),
(291, 1, 'BT11', '', 'Belfast', 'Northern Ireland'),
(292, 1, 'BT12', '', 'Belfast', 'Northern Ireland'),
(293, 1, 'BT13', '', 'Belfast', 'Northern Ireland'),
(294, 1, 'BT14', '', 'Belfast', 'Northern Ireland'),
(295, 1, 'BT15', '', 'Belfast', 'Northern Ireland'),
(296, 1, 'BT16', 'Dundonald', 'Castlereagh', 'Northern Ireland'),
(297, 1, 'BT17', 'Dunmurry', 'Lisburn', 'Northern Ireland'),
(298, 1, 'BT18', 'Holywood', 'North Down', 'Northern Ireland'),
(299, 1, 'BT19', 'Bangor', 'North Down', 'Northern Ireland'),
(300, 1, 'BT2', '', 'Belfast', 'Northern Ireland'),
(301, 1, 'BT20', 'Bangor', 'North Down', 'Northern Ireland'),
(302, 1, 'BT21', 'Donaghadee', 'Ards', 'Northern Ireland'),
(303, 1, 'BT22', '', 'Ards', 'Northern Ireland'),
(304, 1, 'BT23', '', 'Ards', 'Northern Ireland'),
(305, 1, 'BT24', '', 'Down', 'Northern Ireland'),
(306, 1, 'BT25', '', 'Banbridge', 'Northern Ireland'),
(307, 1, 'BT26', '', 'Lisburn', 'Northern Ireland'),
(308, 1, 'BT27', '', 'Lisburn', 'Northern Ireland'),
(309, 1, 'BT28', '', 'Lisburn', 'Northern Ireland'),
(310, 1, 'BT29', '', 'Antrim', 'Northern Ireland'),
(311, 1, 'BT3', '', 'Belfast', 'Northern Ireland'),
(312, 1, 'BT30', 'Downpatrick', 'Down', 'Northern Ireland'),
(313, 1, 'BT31', '', 'Banbridge', 'Northern Ireland'),
(314, 1, 'BT32', '', 'Banbridge', 'Northern Ireland'),
(315, 1, 'BT33', 'Newcastle', 'Down', 'Northern Ireland'),
(316, 1, 'BT34', '', 'Newry and Mourne', 'Northern Ireland'),
(317, 1, 'BT35', '', 'Newry and Mourne', 'Northern Ireland'),
(318, 1, 'BT36', '', 'Newtownabbey', 'Northern Ireland'),
(319, 1, 'BT37', 'Whiteabbey', 'Newtownabbey', 'Northern Ireland'),
(320, 1, 'BT38', '', 'Carrickfergus', 'Northern Ireland'),
(321, 1, 'BT39', '', 'Newtownabbey', 'Northern Ireland'),
(322, 1, 'BT4', '', 'Belfast', 'Northern Ireland'),
(323, 1, 'BT40', '', 'Larne', 'Northern Ireland'),
(324, 1, 'BT41', 'Mill Town', 'Antrim', 'Northern Ireland'),
(325, 1, 'BT42', '', 'Ballymena', 'Northern Ireland'),
(326, 1, 'BT43', '', 'Ballymena', 'Northern Ireland'),
(327, 1, 'BT44', '', 'Ballymena', 'Northern Ireland'),
(328, 1, 'BT45', '', 'Magherafelt', 'Northern Ireland'),
(329, 1, 'BT46', '', 'Magherafelt', 'Northern Ireland'),
(330, 1, 'BT47', '', 'Derry', 'Northern Ireland'),
(331, 1, 'BT48', 'Londonderry', 'Derry', 'Northern Ireland'),
(332, 1, 'BT49', '', 'Limavady', 'Northern Ireland'),
(333, 1, 'BT5', '', 'Belfast', 'Northern Ireland'),
(334, 1, 'BT51', '', 'Coleraine', 'Northern Ireland'),
(335, 1, 'BT52', '', 'Coleraine', 'Northern Ireland'),
(336, 1, 'BT53', '', 'Ballymoney', 'Northern Ireland'),
(337, 1, 'BT54', 'Ballycastle', 'Moyle', 'Northern Ireland'),
(338, 1, 'BT55', 'Portstewart', 'Coleraine', 'Northern Ireland'),
(339, 1, 'BT56', 'Portrush', 'Coleraine', 'Northern Ireland'),
(340, 1, 'BT57', 'Bushmills', 'Moyle', 'Northern Ireland'),
(341, 1, 'BT6', '', 'Belfast', 'Northern Ireland'),
(342, 1, 'BT60', '', 'County Armagh', 'Northern Ireland'),
(343, 1, 'BT61', '', 'County Armagh', 'Northern Ireland'),
(344, 1, 'BT62', 'Portadown', 'Craigavon', 'Northern Ireland'),
(345, 1, 'BT63', '', 'Craigavon', 'Northern Ireland'),
(346, 1, 'BT64', '', 'Craigavon', 'Northern Ireland'),
(347, 1, 'BT65', '', 'Craigavon', 'Northern Ireland'),
(348, 1, 'BT66', 'Lurgan', 'Craigavon', 'Northern Ireland'),
(349, 1, 'BT67', '', 'Craigavon', 'Northern Ireland'),
(350, 1, 'BT68', '', 'Dungannon', 'Northern Ireland'),
(351, 1, 'BT69', '', 'Dungannon', 'Northern Ireland'),
(352, 1, 'BT7', '', 'Belfast', 'Northern Ireland'),
(353, 1, 'BT70', '', 'Dungannon', 'Northern Ireland'),
(354, 1, 'BT71', '', 'Dungannon', 'Northern Ireland'),
(355, 1, 'BT74', '', 'County Fermanagh', 'Northern Ireland'),
(356, 1, 'BT75', 'Fivemiletown', 'Dungannon', 'Northern Ireland'),
(357, 1, 'BT76', '', 'Dungannon', 'Northern Ireland'),
(358, 1, 'BT77', '', 'Dungannon', 'Northern Ireland'),
(359, 1, 'BT78', '', 'Omagh', 'Northern Ireland'),
(360, 1, 'BT79', '', 'Omagh', 'Northern Ireland'),
(361, 1, 'BT8', 'Carryduff', 'Castlereagh', 'Northern Ireland'),
(362, 1, 'BT80', '', 'Cookstown', 'Northern Ireland'),
(363, 1, 'BT81', '', 'Strabane', 'Northern Ireland'),
(364, 1, 'BT82', '', 'Strabane', 'Northern Ireland'),
(365, 1, 'BT9', '', 'Belfast', 'Northern Ireland'),
(366, 1, 'BT92', '', 'County Fermanagh', 'Northern Ireland'),
(367, 1, 'BT93', '', 'County Fermanagh', 'Northern Ireland'),
(368, 1, 'BT94', '', 'County Fermanagh', 'Northern Ireland'),
(369, 1, 'CA1', 'Carlisle', 'Cumbria', 'England'),
(370, 1, 'CA10', 'Cliburn', 'Cumbria', 'England'),
(371, 1, 'CA11', 'Catterlen', 'Cumbria', 'England'),
(372, 1, 'CA12', 'Keswick', 'Cumbria', 'England'),
(373, 1, 'CA13', 'Cockermouth', 'Cumbria', 'England'),
(374, 1, 'CA14', 'Workington', 'Cumbria', 'England'),
(375, 1, 'CA15', 'Maryport', 'Cumbria', 'England'),
(376, 1, 'CA16', 'Appleby-in-Westmorland', 'Cumbria', 'England'),
(377, 1, 'CA17', 'Kirkby Stephen', 'Cumbria', 'England'),
(378, 1, 'CA18', 'Muncaster', 'Cumbria', 'England'),
(379, 1, 'CA19', 'Muncaster', 'Cumbria', 'England'),
(380, 1, 'CA2', 'Carlisle', 'Cumbria', 'England'),
(381, 1, 'CA20', 'Gosforth', 'Cumbria', 'England'),
(382, 1, 'CA21', 'Beckermet', 'Cumbria', 'England'),
(383, 1, 'CA22', 'Egremont', 'Cumbria', 'England'),
(384, 1, 'CA23', 'Cleator Moor', 'Cumbria', 'England'),
(385, 1, 'CA24', 'Egremont', 'Cumbria', 'England'),
(386, 1, 'CA25', 'Cleator Moor', 'Cumbria', 'England'),
(387, 1, 'CA26', 'Arlecdon', 'Cumbria', 'England'),
(388, 1, 'CA27', 'St Bees', 'Cumbria', 'England'),
(389, 1, 'CA28', 'Whitehaven', 'Cumbria', 'England'),
(390, 1, 'CA3', 'Carlisle', 'Cumbria', 'England'),
(391, 1, 'CA4', 'Wetheral', 'Cumbria', 'England'),
(392, 1, 'CA5', 'Orton', 'Cumbria', 'England'),
(393, 1, 'CA6', 'Kirklinton', 'Cumbria', 'England'),
(394, 1, 'CA7', 'Waverton', 'Cumbria', 'England'),
(395, 1, 'CA8', 'Brampton', 'Cumbria', 'England'),
(396, 1, 'CA9', 'Alston', 'Cumbria', 'England'),
(397, 1, 'CB1', 'Fulbourn', 'Cambridgeshire', 'England'),
(398, 1, 'CB10', 'Saffron Walden', 'Essex', 'England'),
(399, 1, 'CB11', 'Newport', 'Essex', 'England'),
(400, 1, 'CB2', 'Great Shelford', 'Cambridgeshire', 'England'),
(401, 1, 'CB21', 'Balsham', 'Cambridgeshire', 'England'),
(402, 1, 'CB22', 'Little Shelford', 'Cambridgeshire', 'England'),
(403, 1, 'CB23', 'Highfields', 'Cambridgeshire', 'England'),
(404, 1, 'CB24', 'Over', 'Cambridgeshire', 'England'),
(405, 1, 'CB25', 'Lode', 'Cambridgeshire', 'England'),
(406, 1, 'CB3', 'Hardwick', 'Cambridgeshire', 'England'),
(407, 1, 'CB4', 'Impington', 'Cambridgeshire', 'England'),
(408, 1, 'CB5', 'Stow cum Quy', 'Cambridgeshire', 'England'),
(409, 1, 'CB6', 'Downham', 'Cambridgeshire', 'England'),
(410, 1, 'CB7', 'Soham', 'Cambridgeshire', 'England'),
(411, 1, 'CB8', 'Woodditton', 'Cambridgeshire', 'England'),
(412, 1, 'CB9', 'Haverhill', 'Suffolk', 'England'),
(413, 1, 'CF10', 'Butetown', 'Cardiff', 'Wales'),
(414, 1, 'CF11', 'Grangetown', 'Cardiff', 'Wales'),
(415, 1, 'CF14', 'Rhiwbina', 'Cardiff', 'Wales'),
(416, 1, 'CF15', 'Pentyrch', 'Cardiff', 'Wales'),
(417, 1, 'CF23', 'Pentwyn', 'Cardiff', 'Wales'),
(418, 1, 'CF24', 'Adamsdown', 'Cardiff', 'Wales'),
(419, 1, 'CF3', 'Trowbridge', 'Cardiff', 'Wales'),
(420, 1, 'CF31', '', 'Bridgend', 'Wales'),
(421, 1, 'CF32', 'Garw Valley', 'Bridgend', 'Wales'),
(422, 1, 'CF33', 'Cynffig', 'Bridgend', 'Wales'),
(423, 1, 'CF34', 'Maesteg', 'Bridgend', 'Wales'),
(424, 1, 'CF35', 'Pencoed', 'Bridgend', 'Wales'),
(425, 1, 'CF36', 'Porthcawl', 'Bridgend', 'Wales'),
(426, 1, 'CF37', 'Pontypridd', 'Rhondda Cynon Taff', 'Wales'),
(427, 1, 'CF38', 'Llantwit Fardre', 'Rhondda Cynon Taff', 'Wales'),
(428, 1, 'CF39', 'Cymmer', 'Rhondda Cynon Taff', 'Wales'),
(429, 1, 'CF40', 'Tonypandy', 'Rhondda Cynon Taff', 'Wales'),
(430, 1, 'CF41', 'Ystrad', 'Rhondda Cynon Taff', 'Wales'),
(431, 1, 'CF42', 'Treorchy', 'Rhondda Cynon Taff', 'Wales'),
(432, 1, 'CF43', 'Ferndale', 'Rhondda Cynon Taff', 'Wales'),
(433, 1, 'CF44', 'Aberdare', 'Rhondda Cynon Taff', 'Wales'),
(434, 1, 'CF45', 'Penrhiwceiber', 'Rhondda Cynon Taff', 'Wales'),
(435, 1, 'CF46', 'Treharris', 'Merthyr Tydfil', 'Wales'),
(436, 1, 'CF47', 'Town', 'Merthyr Tydfil', 'Wales'),
(437, 1, 'CF48', 'Town', 'Merthyr Tydfil', 'Wales'),
(438, 1, 'CF5', 'Ely', 'Cardiff', 'Wales'),
(439, 1, 'CF61', 'Llantwit Major', 'The Vale of Glamorgan', 'Wales'),
(440, 1, 'CF62', 'Barry', 'The Vale of Glamorgan', 'Wales'),
(441, 1, 'CF63', 'Barry', 'The Vale of Glamorgan', 'Wales'),
(442, 1, 'CF64', 'Penarth', 'The Vale of Glamorgan', 'Wales'),
(443, 1, 'CF71', 'Cowbridge', 'The Vale of Glamorgan', 'Wales'),
(444, 1, 'CF72', 'Llanharan', 'Rhondda Cynon Taff', 'Wales'),
(445, 1, 'CF81', 'Bargoed', 'Caerphilly', 'Wales'),
(446, 1, 'CF82', 'Gelligaer', 'Caerphilly', 'Wales'),
(447, 1, 'CF83', '', 'Caerphilly', 'Wales'),
(448, 1, 'CH1', 'Chester', 'Cheshire West and Chester', 'England'),
(449, 1, 'CH2', 'Upton', 'Cheshire West and Chester', 'England'),
(450, 1, 'CH3', 'Waverton', 'Cheshire West and Chester', 'England'),
(451, 1, 'CH4', 'Saltney', 'Flintshire', 'England'),
(452, 1, 'CH41', 'Birkenhead', 'Wirral', 'England'),
(453, 1, 'CH42', 'Birkenhead', 'Wirral', 'England'),
(454, 1, 'CH43', 'Birkenhead', 'Wirral', 'England'),
(455, 1, 'CH44', 'Wallasey', 'Wirral', 'England'),
(456, 1, 'CH45', 'Wallasey', 'Wirral', 'England'),
(457, 1, 'CH46', 'Birkenhead', 'Wirral', 'England'),
(458, 1, 'CH47', 'Hoylake', 'Wirral', 'England'),
(459, 1, 'CH48', 'Hoylake', 'Wirral', 'England'),
(460, 1, 'CH49', 'Birkenhead', 'Wirral', 'England'),
(461, 1, 'CH5', 'Shotton', 'Flintshire', 'England'),
(462, 1, 'CH6', 'Flint', 'Flintshire', 'England'),
(463, 1, 'CH60', 'Heswall', 'Wirral', 'England'),
(464, 1, 'CH61', 'Heswall', 'Wirral', 'England'),
(465, 1, 'CH62', 'Birkenhead', 'Wirral', 'England'),
(466, 1, 'CH63', 'Birkenhead', 'Wirral', 'England'),
(467, 1, 'CH64', 'Ellesmere Port', 'Cheshire West and Chester', 'England'),
(468, 1, 'CH65', 'Ellesmere Port', 'Cheshire West and Chester', 'England'),
(469, 1, 'CH66', 'Ellesmere Port', 'Cheshire West and Chester', 'England'),
(470, 1, 'CH7', 'Mold', 'Flintshire', 'England'),
(471, 1, 'CH8', 'Holywell', 'Flintshire', 'England'),
(472, 1, 'CM0', 'Southminster', 'Essex', 'England'),
(473, 1, 'CM1', 'Chelmsford', 'Essex', 'England'),
(474, 1, 'CM11', '', 'Essex', 'England'),
(475, 1, 'CM12', 'Billericay', 'Essex', 'England'),
(476, 1, 'CM13', 'Brentwood', 'Essex', 'England'),
(477, 1, 'CM14', 'Brentwood', 'Essex', 'England'),
(478, 1, 'CM15', 'Brentwood', 'Essex', 'England'),
(479, 1, 'CM16', 'Epping', 'Essex', 'England'),
(480, 1, 'CM17', 'Harlow', 'Essex', 'England'),
(481, 1, 'CM18', 'Harlow', 'Essex', 'England'),
(482, 1, 'CM19', 'Harlow', 'Essex', 'England'),
(483, 1, 'CM2', 'Great Baddow', 'Essex', 'England'),
(484, 1, 'CM20', 'Harlow', 'Essex', 'England'),
(485, 1, 'CM21', 'Sawbridgeworth', 'Hertfordshire', 'England'),
(486, 1, 'CM22', 'Great Hallingbury', 'Essex', 'England'),
(487, 1, 'CM23', 'Bishops Stortford', 'Hertfordshire', 'England'),
(488, 1, 'CM24', 'Stansted Mountfitchet', 'Essex', 'England'),
(489, 1, 'CM3', 'Danbury', 'Essex', 'England'),
(490, 1, 'CM4', 'Ingatestone', 'Essex', 'England'),
(491, 1, 'CM5', 'Ongar', 'Essex', 'England'),
(492, 1, 'CM6', 'Great Dunmow', 'Essex', 'England'),
(493, 1, 'CM7', 'Braintree', 'Essex', 'England'),
(494, 1, 'CM77', 'Braintree', 'Essex', 'England'),
(495, 1, 'CM8', 'Witham', 'Essex', 'England'),
(496, 1, 'CM9', 'Heybridge', 'Essex', 'England'),
(497, 1, 'CO1', 'Colchester', 'Essex', 'England'),
(498, 1, 'CO10', 'Sudbury', 'Suffolk', 'England'),
(499, 1, 'CO11', 'Mistley', 'Essex', 'England'),
(500, 1, 'CO12', 'Harwich', 'Essex', 'England'),
(501, 1, 'CO13', 'Frinton and Walton', 'Essex', 'England'),
(502, 1, 'CO14', 'Frinton and Walton', 'Essex', 'England'),
(503, 1, 'CO15', 'Clacton-on-Sea', 'Essex', 'England'),
(504, 1, 'CO16', 'Little Clacton', 'Essex', 'England'),
(505, 1, 'CO2', 'Colchester', 'Essex', 'England'),
(506, 1, 'CO3', 'Colchester', 'Essex', 'England'),
(507, 1, 'CO4', 'Colchester', 'Essex', 'England'),
(508, 1, 'CO5', 'Layer Breton', 'Essex', 'England'),
(509, 1, 'CO6', 'Fordham', 'Essex', 'England'),
(510, 1, 'CO7', 'Elmstead', 'Essex', 'England'),
(511, 1, 'CO8', 'Bures Hamlet', 'Essex', 'England'),
(512, 1, 'CO9', 'Sible Hedingham', 'Essex', 'England'),
(513, 1, 'CR0', 'Croydon', 'Greater London', 'England'),
(514, 1, 'CR2', 'Croydon', 'Greater London', 'England'),
(515, 1, 'CR3', 'Whyteleafe', 'Surrey', 'England'),
(516, 1, 'CR4', 'Merton', 'Greater London', 'England'),
(517, 1, 'CR5', 'Croydon', 'Greater London', 'England'),
(518, 1, 'CR6', 'Whyteleafe', 'Surrey', 'England'),
(519, 1, 'CR7', 'Croydon', 'Greater London', 'England'),
(520, 1, 'CR8', 'Croydon', 'Greater London', 'England'),
(521, 1, 'CR9', 'Croydon', 'Greater London', 'England'),
(522, 1, 'CT1', 'Canterbury', 'Kent', 'England'),
(523, 1, 'CT10', 'Broadstairs', 'Kent', 'England'),
(524, 1, 'CT11', 'Margate', 'Kent', 'England'),
(525, 1, 'CT12', 'Manston', 'Kent', 'England'),
(526, 1, 'CT13', 'Sandwich', 'Kent', 'England'),
(527, 1, 'CT14', 'Dover', 'Kent', 'England'),
(528, 1, 'CT15', 'Whitfield', 'Kent', 'England'),
(529, 1, 'CT16', 'Dover', 'Kent', 'England'),
(530, 1, 'CT17', 'Dover', 'Kent', 'England'),
(531, 1, 'CT18', 'Hawkinge', 'Kent', 'England'),
(532, 1, 'CT19', 'Folkestone', 'Kent', 'England'),
(533, 1, 'CT2', 'Canterbury', 'Kent', 'England'),
(534, 1, 'CT20', 'Folkestone', 'Kent', 'England'),
(535, 1, 'CT21', 'Hythe', 'Kent', 'England'),
(536, 1, 'CT3', 'Wingham', 'Kent', 'England'),
(537, 1, 'CT4', 'Lower Hardres', 'Kent', 'England'),
(538, 1, 'CT5', 'Canterbury', 'Kent', 'England'),
(539, 1, 'CT6', 'Canterbury', 'Kent', 'England'),
(540, 1, 'CT7', 'Birchington', 'Kent', 'England'),
(541, 1, 'CT8', 'Margate', 'Kent', 'England'),
(542, 1, 'CT9', 'Margate', 'Kent', 'England'),
(543, 1, 'CV1', '', 'Coventry', 'England'),
(544, 1, 'CV10', 'Nuneaton', 'Warwickshire', 'England'),
(545, 1, 'CV11', 'Nuneaton', 'Warwickshire', 'England'),
(546, 1, 'CV12', 'Bedworth', 'Warwickshire', 'England'),
(547, 1, 'CV13', 'Market Bosworth', 'Leicestershire', 'England'),
(548, 1, 'CV2', '', 'Coventry', 'England'),
(549, 1, 'CV21', 'Rugby', 'Warwickshire', 'England'),
(550, 1, 'CV22', 'Rugby', 'Warwickshire', 'England'),
(551, 1, 'CV23', 'Dunchurch', 'Warwickshire', 'England'),
(552, 1, 'CV3', '', 'Coventry', 'England'),
(553, 1, 'CV31', 'Leamington Spa', 'Warwickshire', 'England'),
(554, 1, 'CV32', 'Leamington Spa', 'Warwickshire', 'England'),
(555, 1, 'CV33', 'Radford Semele', 'Warwickshire', 'England'),
(556, 1, 'CV34', 'Warwick', 'Warwickshire', 'England'),
(557, 1, 'CV35', 'Wasperton', 'Warwickshire', 'England'),
(558, 1, 'CV36', 'Shipston-on-Stour', 'Warwickshire', 'England'),
(559, 1, 'CV37', 'Stratford-Upon-Avon', 'Warwickshire', 'England'),
(560, 1, 'CV4', '', 'Coventry', 'England'),
(561, 1, 'CV47', 'Ladbroke', 'Warwickshire', 'England'),
(562, 1, 'CV5', '', 'Coventry', 'England'),
(563, 1, 'CV6', '', 'Coventry', 'England'),
(564, 1, 'CV7', 'Hawkes End', 'Coventry', 'England'),
(565, 1, 'CV8', 'Kenilworth', 'Warwickshire', 'England'),
(566, 1, 'CV9', 'Atherstone', 'Warwickshire', 'England'),
(567, 1, 'CW1', 'Crewe', 'Cheshire East', 'England'),
(568, 1, 'CW10', 'Middlewich', 'Cheshire East', 'England'),
(569, 1, 'CW11', 'Sandbach', 'Cheshire East', 'England'),
(570, 1, 'CW12', 'Congleton', 'Cheshire East', 'England'),
(571, 1, 'CW2', 'Crewe', 'Cheshire East', 'England'),
(572, 1, 'CW3', 'Bridgemere', 'Cheshire East', 'England'),
(573, 1, 'CW4', 'Holmes Chapel', 'Cheshire East', 'England'),
(574, 1, 'CW5', 'Nantwich', 'Cheshire East', 'England'),
(575, 1, 'CW6', 'Tarporley', 'Cheshire West and Chester', 'England'),
(576, 1, 'CW7', 'Winsford', 'Cheshire West and Chester', 'England'),
(577, 1, 'CW8', 'Weaverham', 'Cheshire West and Chester', 'England'),
(578, 1, 'CW9', 'Northwich', 'Cheshire West and Chester', 'England'),
(579, 1, 'DA1', 'Dartford', 'Kent', 'England'),
(580, 1, 'DA10', 'Swanscombe', 'Kent', 'England'),
(581, 1, 'DA11', 'Gravesend', 'Kent', 'England'),
(582, 1, 'DA12', 'Gravesend', 'Kent', 'England'),
(583, 1, 'DA13', 'Meopham Station', 'Kent', 'England'),
(584, 1, 'DA14', 'Bexley', 'Greater London', 'England'),
(585, 1, 'DA15', 'Bexley', 'Greater London', 'England'),
(586, 1, 'DA16', 'Bexley', 'Greater London', 'England'),
(587, 1, 'DA17', 'Crayford', 'Greater London', 'England'),
(588, 1, 'DA18', 'Crayford', 'Greater London', 'England'),
(589, 1, 'DA2', 'Darenth', 'Kent', 'England'),
(590, 1, 'DA3', 'Hartley', 'Kent', 'England'),
(591, 1, 'DA4', 'Horton Kirby', 'Kent', 'England'),
(592, 1, 'DA5', 'Bexley', 'Greater London', 'England'),
(593, 1, 'DA6', 'Bexley', 'Greater London', 'England'),
(594, 1, 'DA7', 'Crayford', 'Greater London', 'England'),
(595, 1, 'DA8', 'Crayford', 'Greater London', 'England'),
(596, 1, 'DA9', 'Stone', 'Kent', 'England'),
(597, 1, 'DD1', 'Dundee', 'Dundee City', 'Scotland'),
(598, 1, 'DD10', '', 'Aberdeenshire', 'Scotland'),
(599, 1, 'DD11', 'Kirkton', 'Angus', 'Scotland'),
(600, 1, 'DD2', 'Dundee', 'Dundee City', 'Scotland'),
(601, 1, 'DD3', 'Dundee', 'Dundee City', 'Scotland'),
(602, 1, 'DD4', 'Dundee', 'Dundee City', 'Scotland'),
(603, 1, 'DD5', 'Dundee', 'Dundee City', 'Scotland'),
(604, 1, 'DD6', '', 'Fife', 'Scotland'),
(605, 1, 'DD7', 'Carnoustie', 'Angus', 'Scotland'),
(606, 1, 'DD8', '', 'Angus', 'Scotland'),
(607, 1, 'DD9', '', 'Angus', 'Scotland'),
(608, 1, 'DE1', '', 'Derby', 'England'),
(609, 1, 'DE11', 'Swadlincote', 'Derbyshire', 'England'),
(610, 1, 'DE12', 'Overseal', 'Derbyshire', 'England'),
(611, 1, 'DE13', 'Branston', 'Staffordshire', 'England'),
(612, 1, 'DE14', 'Burton upon Trent', 'Staffordshire', 'England'),
(613, 1, 'DE15', 'Burton upon Trent', 'Staffordshire', 'England'),
(614, 1, 'DE21', '', 'Derby', 'England'),
(615, 1, 'DE22', '', 'Derby', 'England'),
(616, 1, 'DE23', '', 'Derby', 'England'),
(617, 1, 'DE24', '', 'Derby', 'England'),
(618, 1, 'DE3', 'Mickleover', 'Derby', 'England'),
(619, 1, 'DE4', 'Matlock Bath', 'Derbyshire', 'England'),
(620, 1, 'DE45', 'Bakewell', 'Derbyshire', 'England'),
(621, 1, 'DE5', 'Ripley', 'Derbyshire', 'England'),
(622, 1, 'DE55', 'Alfreton', 'Derbyshire', 'England'),
(623, 1, 'DE56', 'Belper', 'Derbyshire', 'England'),
(624, 1, 'DE6', 'Osmaston', 'Derbyshire', 'England'),
(625, 1, 'DE65', 'Hilton', 'Derbyshire', 'England'),
(626, 1, 'DE7', 'Ilkeston', 'Derbyshire', 'England'),
(627, 1, 'DE72', 'Draycott', 'Derbyshire', 'England'),
(628, 1, 'DE73', 'Swarkestone', 'Derbyshire', 'England'),
(629, 1, 'DE74', 'Lockington', 'Leicestershire', 'England'),
(630, 1, 'DE75', 'Heanor', 'Derbyshire', 'England'),
(631, 1, 'DG1', '', 'Dumfries and Galloway', 'Scotland'),
(632, 1, 'DG10', '', 'Dumfries and Galloway', 'Scotland'),
(633, 1, 'DG11', '', 'Dumfries and Galloway', 'Scotland'),
(634, 1, 'DG12', 'Annan', 'Dumfries and Galloway', 'Scotland'),
(635, 1, 'DG13', '', 'Dumfries and Galloway', 'Scotland'),
(636, 1, 'DG14', '', 'Dumfries and Galloway', 'Scotland'),
(637, 1, 'DG16', 'Gretna', 'Dumfries and Galloway', 'Scotland'),
(638, 1, 'DG2', '', 'Dumfries and Galloway', 'Scotland'),
(639, 1, 'DG3', '', 'Dumfries and Galloway', 'Scotland'),
(640, 1, 'DG4', '', 'Dumfries and Galloway', 'Scotland'),
(641, 1, 'DG5', 'Dalbeattie', 'Dumfries and Galloway', 'Scotland'),
(642, 1, 'DG6', 'Kirkcudbright', 'Dumfries and Galloway', 'Scotland'),
(643, 1, 'DG7', '', 'Dumfries and Galloway', 'Scotland'),
(644, 1, 'DG8', '', 'Dumfries and Galloway', 'Scotland'),
(645, 1, 'DG9', '', 'Dumfries and Galloway', 'Scotland'),
(646, 1, 'DH1', 'Durham', 'County Durham', 'England'),
(647, 1, 'DH2', 'Chester-le-Street', 'County Durham', 'England'),
(648, 1, 'DH3', 'North Lodge', 'County Durham', 'England'),
(649, 1, 'DH4', 'Houghton-le-Spring', 'Sunderland', 'England'),
(650, 1, 'DH5', 'Hetton', 'Sunderland', 'England'),
(651, 1, 'DH6', 'Shadforth', 'County Durham', 'England'),
(652, 1, 'DH7', 'Esh', 'County Durham', 'England'),
(653, 1, 'DH8', 'Burnhope', 'County Durham', 'England'),
(654, 1, 'DH9', 'Stanley', 'County Durham', 'England'),
(655, 1, 'DL1', '', 'Darlington', 'England'),
(656, 1, 'DL10', 'Skeeby', 'North Yorkshire', 'England'),
(657, 1, 'DL11', 'Marske', 'North Yorkshire', 'England'),
(658, 1, 'DL12', 'Cotherstone', 'County Durham', 'England'),
(659, 1, 'DL13', 'Stanhope', 'County Durham', 'England'),
(660, 1, 'DL14', 'Lcp Stanhope and Wolsingham Parishes And', 'County Durham', 'England'),
(661, 1, 'DL15', 'Lcp Stanhope and Wolsingham Parishes And', 'County Durham', 'England'),
(662, 1, 'DL16', 'Spennymoor', 'County Durham', 'England'),
(663, 1, 'DL17', 'Ferryhill', 'County Durham', 'England'),
(664, 1, 'DL2', 'Halnaby Ave', 'Darlington', 'England'),
(665, 1, 'DL3', '', 'Darlington', 'England'),
(666, 1, 'DL4', 'Shildon', 'County Durham', 'England'),
(667, 1, 'DL5', 'Great Aycliffe', 'County Durham', 'England'),
(668, 1, 'DL6', 'Winton', 'North Yorkshire', 'England'),
(669, 1, 'DL7', 'Yafforth', 'North Yorkshire', 'England'),
(670, 1, 'DL8', 'Spennithorne', 'North Yorkshire', 'England'),
(671, 1, 'DL9', 'Colburn', 'North Yorkshire', 'England'),
(672, 1, 'DN1', '', 'Doncaster', 'England'),
(673, 1, 'DN10', 'Everton', 'Nottinghamshire', 'England'),
(674, 1, 'DN11', 'Tickhill', 'Doncaster', 'England'),
(675, 1, 'DN12', 'Conisbrough', 'Doncaster', 'England'),
(676, 1, 'DN14', 'Airmyn', 'East Riding of Yorkshire', 'England'),
(677, 1, 'DN15', '', 'North Lincolnshire', 'England'),
(678, 1, 'DN16', '', 'North Lincolnshire', 'England'),
(679, 1, 'DN17', 'Burringham', 'North Lincolnshire', 'England'),
(680, 1, 'DN18', 'Barton-Upon-Humber', 'North Lincolnshire', 'England'),
(681, 1, 'DN19', 'Barrow-Upon-Humber', 'North Lincolnshire', 'England'),
(682, 1, 'DN2', '', 'Doncaster', 'England'),
(683, 1, 'DN20', 'Broughton', 'North Lincolnshire', 'England'),
(684, 1, 'DN21', 'Corringham', 'Lincolnshire', 'England'),
(685, 1, 'DN22', 'Clumber and Hardwick', 'Nottinghamshire', 'England'),
(686, 1, 'DN3', 'Edenthorpe', 'Doncaster', 'England'),
(687, 1, 'DN31', '', 'North East Lincolnshire', 'England'),
(688, 1, 'DN32', '', 'North East Lincolnshire', 'England'),
(689, 1, 'DN33', '', 'North East Lincolnshire', 'England'),
(690, 1, 'DN34', '', 'North East Lincolnshire', 'England'),
(691, 1, 'DN35', 'Cleethorpes', 'North East Lincolnshire', 'England'),
(692, 1, 'DN36', 'Tetney', 'Lincolnshire', 'England'),
(693, 1, 'DN37', 'Bradley', 'North East Lincolnshire', 'England'),
(694, 1, 'DN38', 'Bigby', 'Lincolnshire', 'England'),
(695, 1, 'DN39', 'Ulceby', 'North Lincolnshire', 'England'),
(696, 1, 'DN4', '', 'Doncaster', 'England'),
(697, 1, 'DN40', 'Immingham', 'North East Lincolnshire', 'England'),
(698, 1, 'DN41', 'Stallingborough', 'North East Lincolnshire', 'England'),
(699, 1, 'DN5', 'Brodsworth', 'Doncaster', 'England'),
(700, 1, 'DN6', 'Owston', 'Doncaster', 'England'),
(701, 1, 'DN7', 'Hatfield', 'Doncaster', 'England'),
(702, 1, 'DN8', 'Thorne', 'Doncaster', 'England'),
(703, 1, 'DN9', 'Haxey', 'North Lincolnshire', 'England'),
(704, 1, 'DT1', 'Dorchester', 'Dorset', 'England'),
(705, 1, 'DT10', 'Sturminster Newton', 'Dorset', 'England'),
(706, 1, 'DT11', 'Bryanston', 'Dorset', 'England'),
(707, 1, 'DT2', 'Charminster', 'Dorset', 'England'),
(708, 1, 'DT3', 'Weymouth', 'Dorset', 'England'),
(709, 1, 'DT4', 'Weymouth', 'Dorset', 'England'),
(710, 1, 'DT5', 'Portland', 'Dorset', 'England'),
(711, 1, 'DT6', 'Allington', 'Dorset', 'England'),
(712, 1, 'DT7', 'Lyme Regis', 'Dorset', 'England'),
(713, 1, 'DT8', 'Beaminster', 'Dorset', 'England'),
(714, 1, 'DT9', 'Castleton', 'Dorset', 'England'),
(715, 1, 'DY1', '', 'Dudley', 'England'),
(716, 1, 'DY10', 'Kidderminster', 'Worcestershire', 'England'),
(717, 1, 'DY11', 'Kidderminster', 'Worcestershire', 'England'),
(718, 1, 'DY12', 'Upper Arley', 'Worcestershire', 'England'),
(719, 1, 'DY13', 'Stourport-on-Severn', 'Worcestershire', 'England'),
(720, 1, 'DY14', 'Cleobury Mortimer', 'Shropshire', 'England'),
(721, 1, 'DY2', '', 'Dudley', 'England'),
(722, 1, 'DY3', '', 'Dudley', 'England'),
(723, 1, 'DY4', 'West Bromwich', 'Sandwell', 'England'),
(724, 1, 'DY5', '', 'Dudley', 'England'),
(725, 1, 'DY6', '', 'Dudley', 'England'),
(726, 1, 'DY7', 'Kinver', 'Staffordshire', 'England'),
(727, 1, 'DY8', '', 'Dudley', 'England'),
(728, 1, 'DY9', '', 'Dudley', 'England'),
(729, 1, 'E1', 'Poplar', 'Greater London', 'England'),
(730, 1, 'E10', 'Walthamstow', 'Greater London', 'England'),
(731, 1, 'E11', 'Walthamstow', 'Greater London', 'England'),
(732, 1, 'E12', 'Stratford', 'Greater London', 'England'),
(733, 1, 'E13', 'East Ham', 'Greater London', 'England'),
(734, 1, 'E14', 'Poplar', 'Greater London', 'England'),
(735, 1, 'E15', 'Stratford', 'Greater London', 'England'),
(736, 1, 'E16', 'East Ham', 'Greater London', 'England'),
(737, 1, 'E17', 'Walthamstow', 'Greater London', 'England'),
(738, 1, 'E18', 'Ilford', 'Greater London', 'England'),
(739, 1, 'E1W', 'Poplar', 'Greater London', 'England'),
(740, 1, 'E2', 'Poplar', 'Greater London', 'England'),
(741, 1, 'E3', 'Poplar', 'Greater London', 'England'),
(742, 1, 'E4', 'Walthamstow', 'Greater London', 'England'),
(743, 1, 'E5', 'Hackney', 'Greater London', 'England'),
(744, 1, 'E6', 'East Ham', 'Greater London', 'England'),
(745, 1, 'E7', 'Stratford', 'Greater London', 'England'),
(746, 1, 'E8', 'Hackney', 'Greater London', 'England'),
(747, 1, 'E9', 'Hackney', 'Greater London', 'England'),
(748, 1, 'EC1', 'Islington', 'Greater London', 'England'),
(749, 1, 'EC1A', 'Islington', 'Greater London', 'England'),
(750, 1, 'EC1M', 'Islington', 'Greater London', 'England'),
(751, 1, 'EC1N', 'Camden Town', 'Greater London', 'England'),
(752, 1, 'EC1R', 'Islington', 'Greater London', 'England'),
(753, 1, 'EC1V', 'Islington', 'Greater London', 'England'),
(754, 1, 'EC1Y', 'Islington', 'Greater London', 'England'),
(755, 1, 'EC2', 'Islington', 'Greater London', 'England'),
(756, 1, 'EC2A', 'Islington', 'Greater London', 'England'),
(757, 1, 'EC2M', '', 'City of London', 'England'),
(758, 1, 'EC2N', '', 'City of London', 'England'),
(759, 1, 'EC2P', '', 'City of London', 'England'),
(760, 1, 'EC2R', '', 'City of London', 'England'),
(761, 1, 'EC2V', '', 'City of London', 'England'),
(762, 1, 'EC2Y', '', 'City of London', 'England'),
(763, 1, 'EC3', '', 'City of London', 'England'),
(764, 1, 'EC3A', '', 'City of London', 'England'),
(765, 1, 'EC3M', '', 'City of London', 'England'),
(766, 1, 'EC3N', '', 'City of London', 'England'),
(767, 1, 'EC3P', 'Islington', 'Greater London', 'England'),
(768, 1, 'EC3R', '', 'City of London', 'England'),
(769, 1, 'EC3V', '', 'City of London', 'England'),
(770, 1, 'EC4', '', 'City of London', 'England'),
(771, 1, 'EC4A', '', 'City of London', 'England'),
(772, 1, 'EC4M', '', 'City of London', 'England'),
(773, 1, 'EC4N', '', 'City of London', 'England'),
(774, 1, 'EC4R', '', 'City of London', 'England'),
(775, 1, 'EC4V', '', 'City of London', 'England'),
(776, 1, 'EC4Y', '', 'City of London', 'England'),
(777, 1, 'EH1', 'Edinburgh', 'City of Edinburgh', 'Scotland'),
(778, 1, 'EH10', 'Edinburgh', 'City of Edinburgh', 'Scotland'),
(779, 1, 'EH11', 'Juniper Green', 'City of Edinburgh', 'Scotland'),
(780, 1, 'EH12', 'Edinburgh', 'City of Edinburgh', 'Scotland'),
(781, 1, 'EH13', 'Juniper Green', 'City of Edinburgh', 'Scotland'),
(782, 1, 'EH14', 'Juniper Green', 'City of Edinburgh', 'Scotland'),
(783, 1, 'EH15', 'Edinburgh', 'City of Edinburgh', 'Scotland'),
(784, 1, 'EH16', 'Edinburgh', 'City of Edinburgh', 'Scotland'),
(785, 1, 'EH17', 'Edinburgh', 'City of Edinburgh', 'Scotland'),
(786, 1, 'EH18', 'Bonnyrigg and Lasswade', 'Midlothian', 'Scotland'),
(787, 1, 'EH19', 'Bonnyrigg and Lasswade', 'Midlothian', 'Scotland'),
(788, 1, 'EH2', 'Edinburgh', 'City of Edinburgh', 'Scotland'),
(789, 1, 'EH20', 'Loanhead', 'Midlothian', 'Scotland'),
(790, 1, 'EH21', 'Musselburgh', 'East Lothian', 'Scotland'),
(791, 1, 'EH22', 'Dalkeith', 'Midlothian', 'Scotland'),
(792, 1, 'EH23', 'Arniston', 'Midlothian', 'Scotland'),
(793, 1, 'EH24', '', 'Midlothian', 'Scotland'),
(794, 1, 'EH25', 'Roslin', 'Midlothian', 'Scotland'),
(795, 1, 'EH26', 'Penicuik', 'Midlothian', 'Scotland'),
(796, 1, 'EH27', 'Kirknewton', 'West Lothian', 'Scotland'),
(797, 1, 'EH28', '', 'City of Edinburgh', 'Scotland'),
(798, 1, 'EH29', 'Kirkliston', 'City of Edinburgh', 'Scotland'),
(799, 1, 'EH3', 'Edinburgh', 'City of Edinburgh', 'Scotland'),
(800, 1, 'EH30', 'Queensferry', 'City of Edinburgh', 'Scotland'),
(801, 1, 'EH31', 'Gullane', 'East Lothian', 'Scotland'),
(802, 1, 'EH32', 'Cockenzie and Port Seton', 'East Lothian', 'Scotland'),
(803, 1, 'EH33', 'Tranent', 'East Lothian', 'Scotland'),
(804, 1, 'EH34', 'Pencaitland', 'East Lothian', 'Scotland'),
(805, 1, 'EH35', 'Ormiston', 'East Lothian', 'Scotland'),
(806, 1, 'EH36', '', 'East Lothian', 'Scotland'),
(807, 1, 'EH37', '', 'Midlothian', 'Scotland'),
(808, 1, 'EH38', '', 'The Scottish Borders', 'Scotland'),
(809, 1, 'EH39', 'North Berwick', 'East Lothian', 'Scotland'),
(810, 1, 'EH4', 'Edinburgh', 'City of Edinburgh', 'Scotland'),
(811, 1, 'EH40', '', 'East Lothian', 'Scotland'),
(812, 1, 'EH41', '', 'East Lothian', 'Scotland'),
(813, 1, 'EH42', '', 'East Lothian', 'Scotland'),
(814, 1, 'EH43', 'Walkerburn', 'The Scottish Borders', 'Scotland'),
(815, 1, 'EH44', '', 'The Scottish Borders', 'Scotland'),
(816, 1, 'EH45', 'Peebles', 'The Scottish Borders', 'Scotland'),
(817, 1, 'EH46', '', 'The Scottish Borders', 'Scotland'),
(818, 1, 'EH47', '', 'West Lothian', 'Scotland'),
(819, 1, 'EH48', 'Bathgate', 'West Lothian', 'Scotland'),
(820, 1, 'EH49', 'Linlithgow', 'West Lothian', 'Scotland'),
(821, 1, 'EH5', 'Edinburgh', 'City of Edinburgh', 'Scotland'),
(822, 1, 'EH51', 'Grangepans', 'Falkirk', 'Scotland'),
(823, 1, 'EH52', 'Broxburn', 'West Lothian', 'Scotland'),
(824, 1, 'EH53', 'Livingston', 'West Lothian', 'Scotland'),
(825, 1, 'EH54', 'Livingston', 'West Lothian', 'Scotland'),
(826, 1, 'EH55', 'West Calder', 'West Lothian', 'Scotland'),
(827, 1, 'EH6', 'Edinburgh', 'City of Edinburgh', 'Scotland'),
(828, 1, 'EH7', 'Edinburgh', 'City of Edinburgh', 'Scotland'),
(829, 1, 'EH8', '', 'City of Edinburgh', 'Scotland'),
(830, 1, 'EH9', 'Edinburgh', 'City of Edinburgh', 'Scotland'),
(831, 1, 'EN1', 'Enfield', 'Greater London', 'England'),
(832, 1, 'EN10', 'Broxbourne', 'Hertfordshire', 'England'),
(833, 1, 'EN11', 'Hoddesdon', 'Hertfordshire', 'England'),
(834, 1, 'EN2', 'Enfield', 'Greater London', 'England'),
(835, 1, 'EN3', 'Enfield', 'Greater London', 'England'),
(836, 1, 'EN4', 'Barnet', 'Greater London', 'England'),
(837, 1, 'EN5', 'Barnet', 'Greater London', 'England'),
(838, 1, 'EN6', 'Potters Bar', 'Hertfordshire', 'England'),
(839, 1, 'EN7', 'Broxbourne', 'Hertfordshire', 'England'),
(840, 1, 'EN8', 'Broxbourne', 'Hertfordshire', 'England'),
(841, 1, 'EN9', 'Waltham Abbey', 'Essex', 'England'),
(842, 1, 'EX1', 'Exeter', 'Devon', 'England'),
(843, 1, 'EX10', 'Sidmouth', 'Devon', 'England'),
(844, 1, 'EX11', 'Ottery St Mary', 'Devon', 'England'),
(845, 1, 'EX12', 'Seaton', 'Devon', 'England'),
(846, 1, 'EX13', 'Axminster', 'Devon', 'England'),
(847, 1, 'EX14', 'Honiton', 'Devon', 'England'),
(848, 1, 'EX15', 'Kentisbeare', 'Devon', 'England'),
(849, 1, 'EX16', 'Tiverton', 'Devon', 'England'),
(850, 1, 'EX17', 'Sandford', 'Devon', 'England'),
(851, 1, 'EX18', 'Chawleigh', 'Devon', 'England'),
(852, 1, 'EX19', 'Dowland', 'Devon', 'England'),
(853, 1, 'EX2', 'Exeter', 'Devon', 'England'),
(854, 1, 'EX20', 'Okehampton Hamlets', 'Devon', 'England'),
(855, 1, 'EX21', 'Black Torrington', 'Devon', 'England'),
(856, 1, 'EX22', 'Holsworthy Hamlets', 'Devon', 'England'),
(857, 1, 'EX23', 'Bude', 'Cornwall', 'England'),
(858, 1, 'EX24', 'Colyton', 'Devon', 'England'),
(859, 1, 'EX3', 'Exeter', 'Devon', 'England'),
(860, 1, 'EX31', 'Barnstaple', 'Devon', 'England'),
(861, 1, 'EX32', 'Barnstaple', 'Devon', 'England'),
(862, 1, 'EX33', 'Braunton', 'Devon', 'England'),
(863, 1, 'EX34', 'Ilfracombe', 'Devon', 'England'),
(864, 1, 'EX35', 'Lynton', 'Devon', 'England'),
(865, 1, 'EX36', 'Bishops Nympton', 'Devon', 'England'),
(866, 1, 'EX37', 'High Bickington', 'Devon', 'England'),
(867, 1, 'EX38', 'Little Torrington', 'Devon', 'England'),
(868, 1, 'EX39', 'Abbotsham', 'Devon', 'England'),
(869, 1, 'EX4', 'Exeter', 'Devon', 'England'),
(870, 1, 'EX5', 'Broad Clyst', 'Devon', 'England'),
(871, 1, 'EX6', 'Doddiscombsleigh', 'Devon', 'England'),
(872, 1, 'EX7', 'Dawlish', 'Devon', 'England'),
(873, 1, 'EX8', 'Exmouth', 'Devon', 'England'),
(874, 1, 'EX9', 'Budleigh Salterton', 'Devon', 'England'),
(875, 1, 'FK1', '', 'Falkirk', 'Scotland'),
(876, 1, 'FK10', 'Alloa', 'Clackmannanshire', 'Scotland'),
(877, 1, 'FK11', 'Menstrie', 'Clackmannanshire', 'Scotland'),
(878, 1, 'FK12', 'Alva', 'Clackmannanshire', 'Scotland'),
(879, 1, 'FK13', 'Tillicoultry', 'Clackmannanshire', 'Scotland'),
(880, 1, 'FK14', '', 'Clackmannanshire', 'Scotland'),
(881, 1, 'FK15', '', 'Stirling', 'Scotland'),
(882, 1, 'FK16', 'Doune', 'Stirling', 'Scotland'),
(883, 1, 'FK17', 'Callander', 'Stirling', 'Scotland'),
(884, 1, 'FK18', 'Strathyre', 'Stirling', 'Scotland'),
(885, 1, 'FK19', '', 'Stirling', 'Scotland'),
(886, 1, 'FK2', 'Hope St', 'Falkirk', 'Scotland'),
(887, 1, 'FK20', '', 'Stirling', 'Scotland'),
(888, 1, 'FK21', 'Killin', 'Stirling', 'Scotland'),
(889, 1, 'FK3', 'Grangemouth', 'Falkirk', 'Scotland'),
(890, 1, 'FK4', 'Dennyloanhead', 'Falkirk', 'Scotland'),
(891, 1, 'FK5', '', 'Falkirk', 'Scotland'),
(892, 1, 'FK6', 'Stoneywood', 'Falkirk', 'Scotland'),
(893, 1, 'FK7', '', 'Stirling', 'Scotland'),
(894, 1, 'FK8', '', 'Stirling', 'Scotland'),
(895, 1, 'FK9', 'Bridge Of Allan', 'Stirling', 'Scotland'),
(896, 1, 'FY1', '', 'Blackpool', 'England'),
(897, 1, 'FY2', '', 'Blackpool', 'England'),
(898, 1, 'FY3', '', 'Blackpool', 'England'),
(899, 1, 'FY4', '', 'Blackpool', 'England'),
(900, 1, 'FY5', 'Hardhorn and Thornton', 'Lancashire', 'England'),
(901, 1, 'FY6', 'Hardhorn and Thornton', 'Lancashire', 'England'),
(902, 1, 'FY7', 'Hardhorn and Thornton', 'Lancashire', 'England'),
(903, 1, 'FY8', 'Lytham Saint Annes', 'Lancashire', 'England'),
(904, 1, 'G1', 'Glasgow', 'Glasgow City', 'Scotland'),
(905, 1, 'G11', 'Glasgow', 'Glasgow City', 'Scotland'),
(906, 1, 'G12', 'Glasgow', 'Glasgow City', 'Scotland'),
(907, 1, 'G13', 'Glasgow', 'Glasgow City', 'Scotland'),
(908, 1, 'G14', 'Glasgow', 'Glasgow City', 'Scotland'),
(909, 1, 'G15', 'Glasgow', 'Glasgow City', 'Scotland'),
(910, 1, 'G2', 'Glasgow', 'Glasgow City', 'Scotland'),
(911, 1, 'G20', 'Glasgow', 'Glasgow City', 'Scotland'),
(912, 1, 'G21', 'Glasgow', 'Glasgow City', 'Scotland'),
(913, 1, 'G22', 'Glasgow', 'Glasgow City', 'Scotland'),
(914, 1, 'G23', 'Glasgow', 'Glasgow City', 'Scotland'),
(915, 1, 'G3', 'Glasgow', 'Glasgow City', 'Scotland'),
(916, 1, 'G31', 'Glasgow', 'Glasgow City', 'Scotland'),
(917, 1, 'G32', 'Glasgow', 'Glasgow City', 'Scotland'),
(918, 1, 'G33', 'Glasgow', 'Glasgow City', 'Scotland'),
(919, 1, 'G34', 'Glasgow', 'Glasgow City', 'Scotland'),
(920, 1, 'G4', 'Glasgow', 'Glasgow City', 'Scotland'),
(921, 1, 'G40', 'Glasgow', 'Glasgow City', 'Scotland'),
(922, 1, 'G41', 'Glasgow', 'Glasgow City', 'Scotland'),
(923, 1, 'G42', 'Glasgow', 'Glasgow City', 'Scotland'),
(924, 1, 'G43', 'Glasgow', 'Glasgow City', 'Scotland'),
(925, 1, 'G44', 'Glasgow', 'Glasgow City', 'Scotland'),
(926, 1, 'G45', 'Glasgow', 'Glasgow City', 'Scotland'),
(927, 1, 'G46', 'Thornliebank', 'East Renfrewshire', 'Scotland'),
(928, 1, 'G5', 'Glasgow', 'Glasgow City', 'Scotland'),
(929, 1, 'G51', 'Glasgow', 'Glasgow City', 'Scotland'),
(930, 1, 'G52', 'Glasgow', 'Glasgow City', 'Scotland'),
(931, 1, 'G53', 'Glasgow', 'Glasgow City', 'Scotland'),
(932, 1, 'G60', 'Clydebank', 'West Dunbartonshire', 'Scotland'),
(933, 1, 'G61', 'Milngavie', 'East Dunbartonshire', 'Scotland'),
(934, 1, 'G62', 'Milngavie', 'East Dunbartonshire', 'Scotland'),
(935, 1, 'G63', 'Killearn', 'Stirling', 'Scotland'),
(936, 1, 'G64', 'Bishopbriggs', 'East Dunbartonshire', 'Scotland'),
(937, 1, 'G65', 'Kilsyth', 'North Lanarkshire', 'Scotland');
INSERT INTO `states` (`id`, `country_id`, `postcode`, `area`, `region`, `country`) VALUES
(938, 1, 'G66', 'Kirkintilloch', 'East Dunbartonshire', 'Scotland'),
(939, 1, 'G67', 'Cumbernauld', 'North Lanarkshire', 'Scotland'),
(940, 1, 'G68', 'Balloch', 'North Lanarkshire', 'Scotland'),
(941, 1, 'G69', 'Glasgow', 'Glasgow City', 'Scotland'),
(942, 1, 'G71', '', 'South Lanarkshire', 'Scotland'),
(943, 1, 'G72', '', 'South Lanarkshire', 'Scotland'),
(944, 1, 'G73', 'Cambuslang', 'South Lanarkshire', 'Scotland'),
(945, 1, 'G74', 'East Kilbride', 'South Lanarkshire', 'Scotland'),
(946, 1, 'G76', 'Thornliebank', 'East Renfrewshire', 'Scotland'),
(947, 1, 'G77', 'Newton Mearns', 'East Renfrewshire', 'Scotland'),
(948, 1, 'G78', '', 'East Renfrewshire', 'Scotland'),
(949, 1, 'G81', 'Clydebank', 'West Dunbartonshire', 'Scotland'),
(950, 1, 'G82', 'Dumbarton', 'West Dunbartonshire', 'Scotland'),
(951, 1, 'G83', 'Alexandria', 'West Dunbartonshire', 'Scotland'),
(952, 1, 'G84', 'Helensburgh', 'Argyll and Bute', 'Scotland'),
(953, 1, 'GL1', 'Gloucester', 'Gloucestershire', 'England'),
(954, 1, 'GL10', 'Stonehouse', 'Gloucestershire', 'England'),
(955, 1, 'GL11', 'Dursley', 'Gloucestershire', 'England'),
(956, 1, 'GL12', 'Kingswood', 'Gloucestershire', 'England'),
(957, 1, 'GL13', 'Berkeley', 'Gloucestershire', 'England'),
(958, 1, 'GL14', 'Littledean', 'Gloucestershire', 'England'),
(959, 1, 'GL15', 'Lydney', 'Gloucestershire', 'England'),
(960, 1, 'GL16', 'Coleford', 'Gloucestershire', 'England'),
(961, 1, 'GL17', 'Drybrook', 'Gloucestershire', 'England'),
(962, 1, 'GL18', 'Oxenhall', 'Gloucestershire', 'England'),
(963, 1, 'GL19', 'Ashleworth', 'Gloucestershire', 'England'),
(964, 1, 'GL2', 'Gloucester', 'Gloucestershire', 'England'),
(965, 1, 'GL20', 'Ashchurch', 'Gloucestershire', 'England'),
(966, 1, 'GL3', 'Hucclecote', 'Gloucestershire', 'England'),
(967, 1, 'GL4', 'Gloucester', 'Gloucestershire', 'England'),
(968, 1, 'GL5', 'Rodborough', 'Gloucestershire', 'England'),
(969, 1, 'GL50', 'Cheltenham', 'Gloucestershire', 'England'),
(970, 1, 'GL51', 'Cheltenham', 'Gloucestershire', 'England'),
(971, 1, 'GL52', 'Prestbury', 'Gloucestershire', 'England'),
(972, 1, 'GL53', 'Cheltenham', 'Gloucestershire', 'England'),
(973, 1, 'GL54', 'Naunton', 'Gloucestershire', 'England'),
(974, 1, 'GL55', 'Chipping Campden', 'Gloucestershire', 'England'),
(975, 1, 'GL56', 'Moreton-in-Marsh', 'Gloucestershire', 'England'),
(976, 1, 'GL6', 'Thrupp', 'Gloucestershire', 'England'),
(977, 1, 'GL7', 'Ampney St Mary', 'Gloucestershire', 'England'),
(978, 1, 'GL8', 'Tetbury', 'Gloucestershire', 'England'),
(979, 1, 'GL9', 'Hawkesbury', 'South Gloucestershire', 'England'),
(980, 1, 'GU1', 'Guildford', 'Surrey', 'England'),
(981, 1, 'GU10', 'Farnham', 'Surrey', 'England'),
(982, 1, 'GU11', 'Aldershot', 'Hampshire', 'England'),
(983, 1, 'GU12', 'Ash', 'Surrey', 'England'),
(984, 1, 'GU13', 'Fleet', 'Hampshire', 'England'),
(985, 1, 'GU14', 'Farnborough', 'Hampshire', 'England'),
(986, 1, 'GU15', 'Camberley', 'Surrey', 'England'),
(987, 1, 'GU16', 'Camberley', 'Surrey', 'England'),
(988, 1, 'GU17', 'Blackwater and Hawley', 'Hampshire', 'England'),
(989, 1, 'GU18', 'Windlesham', 'Surrey', 'England'),
(990, 1, 'GU19', 'Windlesham', 'Surrey', 'England'),
(991, 1, 'GU2', 'Guildford', 'Surrey', 'England'),
(992, 1, 'GU20', 'Windlesham', 'Surrey', 'England'),
(993, 1, 'GU21', 'Woking', 'Surrey', 'England'),
(994, 1, 'GU22', 'Woking', 'Surrey', 'England'),
(995, 1, 'GU23', 'Ripley', 'Surrey', 'England'),
(996, 1, 'GU24', 'Bisley', 'Surrey', 'England'),
(997, 1, 'GU25', 'Virginia Water', 'Surrey', 'England'),
(998, 1, 'GU26', 'Haslemere', 'Surrey', 'England'),
(999, 1, 'GU27', 'Haslemere', 'Surrey', 'England'),
(1000, 1, 'GU28', 'Tillington', 'West Sussex', 'England'),
(1001, 1, 'GU29', 'Midhurst', 'West Sussex', 'England'),
(1002, 1, 'GU3', 'Worplesdon', 'Surrey', 'England'),
(1003, 1, 'GU30', 'Liphook', 'Hampshire', 'England'),
(1004, 1, 'GU31', 'Petersfield', 'Hampshire', 'England'),
(1005, 1, 'GU32', 'Stroud', 'Hampshire', 'England'),
(1006, 1, 'GU33', 'Liss', 'Hampshire', 'England'),
(1007, 1, 'GU34', 'Alton', 'Hampshire', 'England'),
(1008, 1, 'GU35', 'Lindford', 'Hampshire', 'England'),
(1009, 1, 'GU4', 'Guildford', 'Surrey', 'England'),
(1010, 1, 'GU46', 'Yateley', 'Hampshire', 'England'),
(1011, 1, 'GU47', 'Sandhurst', 'Bracknell Forest', 'England'),
(1012, 1, 'GU5', 'Wonersh', 'Surrey', 'England'),
(1013, 1, 'GU51', 'Fleet', 'Hampshire', 'England'),
(1014, 1, 'GU52', 'Fleet', 'Hampshire', 'England'),
(1015, 1, 'GU6', 'Cranleigh', 'Surrey', 'England'),
(1016, 1, 'GU7', 'Godalming', 'Surrey', 'England'),
(1017, 1, 'GU8', 'Witley', 'Surrey', 'England'),
(1018, 1, 'GU9', 'Farnham', 'Surrey', 'England'),
(1019, 1, 'GY1', 'St Peter Port', 'Guernsey', 'Guernsey'),
(1020, 1, 'GY2', 'St Sampson', 'Guernsey', 'Guernsey'),
(1021, 1, 'GY3', 'St Sampson', 'Guernsey', 'Guernsey'),
(1022, 1, 'GY4', 'Carmel', 'Guernsey', 'Guernsey'),
(1023, 1, 'GY5', 'ALBecq', 'Guernsey', 'Guernsey'),
(1024, 1, 'GY6', 'L\'Islet', 'Guernsey', 'Guernsey'),
(1025, 1, 'GY7', 'Richmond', 'Guernsey', 'Guernsey'),
(1026, 1, 'GY8', 'Mouilpied', 'Guernsey', 'Guernsey'),
(1027, 1, 'GY9', 'nr Mouilpied', 'Guernsey', 'Guernsey'),
(1028, 1, 'HA0', 'Brent', 'Greater London', 'England'),
(1029, 1, 'HA1', 'Harrow', 'Greater London', 'England'),
(1030, 1, 'HA2', 'Harrow', 'Greater London', 'England'),
(1031, 1, 'HA3', 'Harrow', 'Greater London', 'England'),
(1032, 1, 'HA4', 'Hillingdon', 'Greater London', 'England'),
(1033, 1, 'HA5', 'Harrow', 'Greater London', 'England'),
(1034, 1, 'HA6', 'Hillingdon', 'Greater London', 'England'),
(1035, 1, 'HA7', 'Harrow', 'Greater London', 'England'),
(1036, 1, 'HA8', 'Barnet', 'Greater London', 'England'),
(1037, 1, 'HA9', 'Brent', 'Greater London', 'England'),
(1038, 1, 'HD1', 'Huddersfield', 'Kirklees', 'England'),
(1039, 1, 'HD2', 'Huddersfield', 'Kirklees', 'England'),
(1040, 1, 'HD3', 'Huddersfield', 'Kirklees', 'England'),
(1041, 1, 'HD4', 'Huddersfield', 'Kirklees', 'England'),
(1042, 1, 'HD5', 'Huddersfield', 'Kirklees', 'England'),
(1043, 1, 'HD6', 'Halifax', 'Calderdale', 'England'),
(1044, 1, 'HD7', 'Huddersfield', 'Kirklees', 'England'),
(1045, 1, 'HD8', 'Kirkburton', 'Kirklees', 'England'),
(1046, 1, 'HD9', 'Holme', 'Kirklees', 'England'),
(1047, 1, 'HG1', 'Harrogate', 'North Yorkshire', 'England'),
(1048, 1, 'HG2', 'Harrogate', 'North Yorkshire', 'England'),
(1049, 1, 'HG3', 'Clint', 'North Yorkshire', 'England'),
(1050, 1, 'HG4', 'North Stainley', 'North Yorkshire', 'England'),
(1051, 1, 'HG5', 'Knaresborough', 'North Yorkshire', 'England'),
(1052, 1, 'HP1', 'Hemel Hempstead', 'Hertfordshire', 'England'),
(1053, 1, 'HP10', 'Chepping Wycombe', 'Buckinghamshire', 'England'),
(1054, 1, 'HP11', 'High Wycombe', 'Buckinghamshire', 'England'),
(1055, 1, 'HP12', 'High Wycombe', 'Buckinghamshire', 'England'),
(1056, 1, 'HP13', 'High Wycombe', 'Buckinghamshire', 'England'),
(1057, 1, 'HP14', 'Bledlow-cum-Saunderton', 'Buckinghamshire', 'England'),
(1058, 1, 'HP15', 'Hazlemere', 'Buckinghamshire', 'England'),
(1059, 1, 'HP16', 'Great Missenden', 'Buckinghamshire', 'England'),
(1060, 1, 'HP17', 'Dinton', 'Buckinghamshire', 'England'),
(1061, 1, 'HP18', 'Ashendon', 'Buckinghamshire', 'England'),
(1062, 1, 'HP19', 'Aylesbury', 'Buckinghamshire', 'England'),
(1063, 1, 'HP2', 'Hemel Hempstead', 'Hertfordshire', 'England'),
(1064, 1, 'HP20', 'Aylesbury', 'Buckinghamshire', 'England'),
(1065, 1, 'HP21', 'Aylesbury', 'Buckinghamshire', 'England'),
(1066, 1, 'HP22', 'Weston Turville', 'Buckinghamshire', 'England'),
(1067, 1, 'HP23', 'Tring', 'Hertfordshire', 'England'),
(1068, 1, 'HP27', 'Princes Risborough', 'Buckinghamshire', 'England'),
(1069, 1, 'HP3', 'Hemel Hempstead', 'Hertfordshire', 'England'),
(1070, 1, 'HP4', 'Berkhamsted', 'Hertfordshire', 'England'),
(1071, 1, 'HP5', 'Chesham', 'Buckinghamshire', 'England'),
(1072, 1, 'HP6', 'Amersham', 'Buckinghamshire', 'England'),
(1073, 1, 'HP7', 'Amersham', 'Buckinghamshire', 'England'),
(1074, 1, 'HP8', 'Chalfont St Giles', 'Buckinghamshire', 'England'),
(1075, 1, 'HP9', 'Beaconsfield', 'Buckinghamshire', 'England'),
(1076, 1, 'HR1', 'Hampton Bishop', 'Herefordshire', 'England'),
(1077, 1, 'HR2', 'Allensmore', 'Herefordshire', 'England'),
(1078, 1, 'HR3', 'Clifford', 'Herefordshire', 'England'),
(1079, 1, 'HR4', 'Burghill', 'Herefordshire', 'England'),
(1080, 1, 'HR5', 'Kington Rural', 'Herefordshire', 'England'),
(1081, 1, 'HR6', 'Leominster', 'Herefordshire', 'England'),
(1082, 1, 'HR7', 'Bromyard', 'Herefordshire', 'England'),
(1083, 1, 'HR8', 'Ledbury', 'Herefordshire', 'England'),
(1084, 1, 'HR9', 'Ross-on-Wye', 'Herefordshire', 'England'),
(1085, 1, 'HS1', 'Stornoway', 'Eilean Siar', 'Scotland'),
(1086, 1, 'HS2', '', 'Eilean Siar', 'Scotland'),
(1087, 1, 'HS3', '', 'Eilean Siar', 'Scotland'),
(1088, 1, 'HS4', '', 'Eilean Siar', 'Scotland'),
(1089, 1, 'HS5', 'Leverburgh', 'Eilean Siar', 'Scotland'),
(1090, 1, 'HS6', '', 'Eilean Siar', 'Scotland'),
(1091, 1, 'HS7', '', 'Eilean Siar', 'Scotland'),
(1092, 1, 'HS8', '', 'Eilean Siar', 'Scotland'),
(1093, 1, 'HS9', '', 'Eilean Siar', 'Scotland'),
(1094, 1, 'HU1', 'Hull', 'City of Kingston-upon-Hull', 'England'),
(1095, 1, 'HU10', 'Cottingham', 'East Riding of Yorkshire', 'England'),
(1096, 1, 'HU11', 'Ellerby', 'East Riding of Yorkshire', 'England'),
(1097, 1, 'HU12', 'Burstwick', 'East Riding of Yorkshire', 'England'),
(1098, 1, 'HU13', 'Hessle', 'East Riding of Yorkshire', 'England'),
(1099, 1, 'HU14', 'North Ferriby', 'East Riding of Yorkshire', 'England'),
(1100, 1, 'HU15', 'Ellerker', 'East Riding of Yorkshire', 'England'),
(1101, 1, 'HU16', 'Cottingham', 'East Riding of Yorkshire', 'England'),
(1102, 1, 'HU17', 'Cottingham', 'East Riding of Yorkshire', 'England'),
(1103, 1, 'HU18', 'Hornsea', 'East Riding of Yorkshire', 'England'),
(1104, 1, 'HU19', 'Withernsea', 'East Riding of Yorkshire', 'England'),
(1105, 1, 'HU2', 'Hull', 'City of Kingston-upon-Hull', 'England'),
(1106, 1, 'HU20', 'Rowley', 'East Riding of Yorkshire', 'England'),
(1107, 1, 'HU3', 'Hull', 'City of Kingston-upon-Hull', 'England'),
(1108, 1, 'HU4', 'Hull', 'City of Kingston-upon-Hull', 'England'),
(1109, 1, 'HU5', 'Hull', 'City of Kingston-upon-Hull', 'England'),
(1110, 1, 'HU6', 'Hull', 'City of Kingston-upon-Hull', 'England'),
(1111, 1, 'HU7', 'Hull', 'City of Kingston-upon-Hull', 'England'),
(1112, 1, 'HU8', 'Hull', 'City of Kingston-upon-Hull', 'England'),
(1113, 1, 'HU9', 'Hull', 'City of Kingston-upon-Hull', 'England'),
(1114, 1, 'HX1', 'Halifax', 'Calderdale', 'England'),
(1115, 1, 'HX2', 'Halifax', 'Calderdale', 'England'),
(1116, 1, 'HX3', 'Halifax', 'Calderdale', 'England'),
(1117, 1, 'HX4', 'Halifax', 'Calderdale', 'England'),
(1118, 1, 'HX5', 'Halifax', 'Calderdale', 'England'),
(1119, 1, 'HX6', 'Halifax', 'Calderdale', 'England'),
(1120, 1, 'HX7', 'Hebden Royd', 'Calderdale', 'England'),
(1121, 1, 'IG1', 'Ilford', 'Greater London', 'England'),
(1122, 1, 'IG10', 'Loughton', 'Essex', 'England'),
(1123, 1, 'IG11', 'Barking', 'Greater London', 'England'),
(1124, 1, 'IG2', 'Ilford', 'Greater London', 'England'),
(1125, 1, 'IG3', 'Ilford', 'Greater London', 'England'),
(1126, 1, 'IG4', 'Ilford', 'Greater London', 'England'),
(1127, 1, 'IG5', 'Ilford', 'Greater London', 'England'),
(1128, 1, 'IG6', 'Ilford', 'Greater London', 'England'),
(1129, 1, 'IG7', 'Loughton', 'Essex', 'England'),
(1130, 1, 'IG8', 'Ilford', 'Greater London', 'England'),
(1131, 1, 'IG9', 'Loughton', 'Essex', 'England'),
(1132, 1, 'IM1', 'Douglas, Braddan', 'IOM', 'Isle of Man'),
(1133, 1, 'IM2', 'Douglas, Braddan', 'IOM', 'Isle of Man'),
(1134, 1, 'IM3', 'Onchan', 'IOM', 'Isle of Man'),
(1135, 1, 'IM4', 'Peel, German', 'IOM', 'Isle of Man'),
(1136, 1, 'IM5', 'Baldrine, Loman', 'IOM', 'Isle of Man'),
(1137, 1, 'IM6', 'Kirk Michael', 'IOM', 'Isle of Man'),
(1138, 1, 'IM7', 'St Judes, Andreas', 'IOM', 'Isle of Man'),
(1139, 1, 'IM8', 'Ramsay', 'IOM', 'Isle of Man'),
(1140, 1, 'IM9', 'Arbory', 'IOM', 'Isle of Man'),
(1141, 1, 'IP1', 'Ipswich', 'Suffolk', 'England'),
(1142, 1, 'IP10', 'Levington', 'Suffolk', 'England'),
(1143, 1, 'IP11', 'Felixstowe', 'Suffolk', 'England'),
(1144, 1, 'IP12', 'Bromeswell', 'Suffolk', 'England'),
(1145, 1, 'IP13', 'Kettleburgh', 'Suffolk', 'England'),
(1146, 1, 'IP14', 'Stowupland', 'Suffolk', 'England'),
(1147, 1, 'IP15', 'Aldeburgh', 'Suffolk', 'England'),
(1148, 1, 'IP16', 'Leiston', 'Suffolk', 'England'),
(1149, 1, 'IP17', 'Kelsale', 'Suffolk', 'England'),
(1150, 1, 'IP18', 'Southwold', 'Suffolk', 'England'),
(1151, 1, 'IP19', 'Halesworth', 'Suffolk', 'England'),
(1152, 1, 'IP2', 'Ipswich', 'Suffolk', 'England'),
(1153, 1, 'IP20', 'Harleston', 'Norfolk', 'England'),
(1154, 1, 'IP21', 'Syleham', 'Suffolk', 'England'),
(1155, 1, 'IP22', 'Wortham', 'Suffolk', 'England'),
(1156, 1, 'IP23', 'Eye', 'Suffolk', 'England'),
(1157, 1, 'IP24', 'Thetford', 'Norfolk', 'England'),
(1158, 1, 'IP25', 'Ovington', 'Norfolk', 'England'),
(1159, 1, 'IP26', 'Methwold', 'Norfolk', 'England'),
(1160, 1, 'IP27', 'Brandon', 'Suffolk', 'England'),
(1161, 1, 'IP28', 'Tuddenham', 'Suffolk', 'England'),
(1162, 1, 'IP29', 'Whepstead', 'Suffolk', 'England'),
(1163, 1, 'IP3', 'Ipswich', 'Suffolk', 'England'),
(1164, 1, 'IP30', 'Hessett', 'Suffolk', 'England'),
(1165, 1, 'IP31', 'Pakenham', 'Suffolk', 'England'),
(1166, 1, 'IP32', 'Bury St Edmunds', 'Suffolk', 'England'),
(1167, 1, 'IP33', 'Bury St Edmunds', 'Suffolk', 'England'),
(1168, 1, 'IP4', 'Ipswich', 'Suffolk', 'England'),
(1169, 1, 'IP5', 'Kesgrave', 'Suffolk', 'England'),
(1170, 1, 'IP6', 'Hemingstone', 'Suffolk', 'England'),
(1171, 1, 'IP7', 'Aldham', 'Suffolk', 'England'),
(1172, 1, 'IP8', 'Sproughton', 'Suffolk', 'England'),
(1173, 1, 'IP9', 'Holbrook', 'Suffolk', 'England'),
(1174, 1, 'IV1', 'Inverness', 'Highland', 'Scotland'),
(1175, 1, 'IV10', '', 'Highland', 'Scotland'),
(1176, 1, 'IV11', 'Cromarty', 'Highland', 'Scotland'),
(1177, 1, 'IV12', 'Nairn', 'Highland', 'Scotland'),
(1178, 1, 'IV13', '', 'Highland', 'Scotland'),
(1179, 1, 'IV14', 'Strathpeffer', 'Highland', 'Scotland'),
(1180, 1, 'IV15', 'Dingwall', 'Highland', 'Scotland'),
(1181, 1, 'IV16', 'Evanton', 'Highland', 'Scotland'),
(1182, 1, 'IV17', 'Alness', 'Highland', 'Scotland'),
(1183, 1, 'IV18', 'Invergordon', 'Highland', 'Scotland'),
(1184, 1, 'IV19', 'Tain', 'Highland', 'Scotland'),
(1185, 1, 'IV2', '', 'Highland', 'Scotland'),
(1186, 1, 'IV20', '', 'Highland', 'Scotland'),
(1187, 1, 'IV21', 'Gairloch', 'Highland', 'Scotland'),
(1188, 1, 'IV22', '', 'Highland', 'Scotland'),
(1189, 1, 'IV23', '', 'Highland', 'Scotland'),
(1190, 1, 'IV24', '', 'Highland', 'Scotland'),
(1191, 1, 'IV25', '', 'Highland', 'Scotland'),
(1192, 1, 'IV26', '', 'Highland', 'Scotland'),
(1193, 1, 'IV27', '', 'Highland', 'Scotland'),
(1194, 1, 'IV28', 'Rogart', 'Highland', 'Scotland'),
(1195, 1, 'IV3', 'Inverness', 'Highland', 'Scotland'),
(1196, 1, 'IV30', 'Elgin', 'Moray', 'Scotland'),
(1197, 1, 'IV31', 'Lossiemouth', 'Moray', 'Scotland'),
(1198, 1, 'IV32', 'Mosstodloch', 'Moray', 'Scotland'),
(1199, 1, 'IV36', 'Forres', 'Moray', 'Scotland'),
(1200, 1, 'IV4', '', 'Highland', 'Scotland'),
(1201, 1, 'IV40', '', 'Highland', 'Scotland'),
(1202, 1, 'IV41', 'Kyleakin', 'Highland', 'Scotland'),
(1203, 1, 'IV42', '', 'Highland', 'Scotland'),
(1204, 1, 'IV43', '', 'Highland', 'Scotland'),
(1205, 1, 'IV44', 'Saasaig', 'Highland', 'Scotland'),
(1206, 1, 'IV45', '', 'Highland', 'Scotland'),
(1207, 1, 'IV46', 'Ferrindonald', 'Highland', 'Scotland'),
(1208, 1, 'IV47', '', 'Highland', 'Scotland'),
(1209, 1, 'IV48', '', 'Highland', 'Scotland'),
(1210, 1, 'IV49', '', 'Highland', 'Scotland'),
(1211, 1, 'IV5', '', 'Highland', 'Scotland'),
(1212, 1, 'IV51', '', 'Highland', 'Scotland'),
(1213, 1, 'IV52', 'Plockton', 'Highland', 'Scotland'),
(1214, 1, 'IV53', '', 'Highland', 'Scotland'),
(1215, 1, 'IV54', '', 'Highland', 'Scotland'),
(1216, 1, 'IV55', '', 'Highland', 'Scotland'),
(1217, 1, 'IV56', 'Isle of Skye', 'Highland', 'Scotland'),
(1218, 1, 'IV6', 'Muir Of Ord', 'Highland', 'Scotland'),
(1219, 1, 'IV63', 'Lewiston', 'Highland', 'Scotland'),
(1220, 1, 'IV7', '', 'Highland', 'Scotland'),
(1221, 1, 'IV8', '', 'Highland', 'Scotland'),
(1222, 1, 'IV9', 'Avoch', 'Highland', 'Scotland'),
(1223, 1, 'JE1', 'St Helier', 'Jersey', 'Jersey'),
(1224, 1, 'JE2', 'St Helier', 'Jersey', 'Jersey'),
(1225, 1, 'JE3', 'St+F2813 Ouen', 'Jersey', 'Jersey'),
(1226, 1, 'JE4', 'St Helier', 'Jersey', 'Jersey'),
(1227, 1, 'KA1', 'Kilmarnock', 'East Ayrshire', 'Scotland'),
(1228, 1, 'KA10', 'Troon', 'South Ayrshire', 'Scotland'),
(1229, 1, 'KA11', 'Irvine', 'North Ayrshire', 'Scotland'),
(1230, 1, 'KA12', 'Irvine', 'North Ayrshire', 'Scotland'),
(1231, 1, 'KA13', 'Kilwinning', 'North Ayrshire', 'Scotland'),
(1232, 1, 'KA14', 'Glengarnock', 'North Ayrshire', 'Scotland'),
(1233, 1, 'KA15', 'Beith', 'North Ayrshire', 'Scotland'),
(1234, 1, 'KA16', 'Newmilns', 'East Ayrshire', 'Scotland'),
(1235, 1, 'KA17', 'Darvel', 'East Ayrshire', 'Scotland'),
(1236, 1, 'KA18', 'Cumnock', 'East Ayrshire', 'Scotland'),
(1237, 1, 'KA19', '', 'South Ayrshire', 'Scotland'),
(1238, 1, 'KA2', 'Gatehead', 'East Ayrshire', 'Scotland'),
(1239, 1, 'KA20', 'Stevenston', 'North Ayrshire', 'Scotland'),
(1240, 1, 'KA21', 'Ardrossan', 'North Ayrshire', 'Scotland'),
(1241, 1, 'KA22', 'Ardrossan', 'North Ayrshire', 'Scotland'),
(1242, 1, 'KA23', 'West Kilbride', 'North Ayrshire', 'Scotland'),
(1243, 1, 'KA24', 'Dalry', 'North Ayrshire', 'Scotland'),
(1244, 1, 'KA25', 'Kilbirnie', 'North Ayrshire', 'Scotland'),
(1245, 1, 'KA26', '', 'South Ayrshire', 'Scotland'),
(1246, 1, 'KA27', '', 'North Ayrshire', 'Scotland'),
(1247, 1, 'KA28', 'Millport', 'North Ayrshire', 'Scotland'),
(1248, 1, 'KA29', 'Fairlie', 'North Ayrshire', 'Scotland'),
(1249, 1, 'KA3', '', 'East Ayrshire', 'Scotland'),
(1250, 1, 'KA30', 'Largs', 'North Ayrshire', 'Scotland'),
(1251, 1, 'KA4', 'Galston', 'East Ayrshire', 'Scotland'),
(1252, 1, 'KA5', 'Mauchline', 'East Ayrshire', 'Scotland'),
(1253, 1, 'KA6', '', 'South Ayrshire', 'Scotland'),
(1254, 1, 'KA7', 'Ayr', 'South Ayrshire', 'Scotland'),
(1255, 1, 'KA8', 'Ayr', 'South Ayrshire', 'Scotland'),
(1256, 1, 'KA9', 'Ayr', 'South Ayrshire', 'Scotland'),
(1257, 1, 'KT1', 'Kingston Upon Thames', 'Greater London', 'England'),
(1258, 1, 'KT10', 'Esher', 'Surrey', 'England'),
(1259, 1, 'KT11', 'Cobham', 'Surrey', 'England'),
(1260, 1, 'KT12', 'West Molesey', 'Surrey', 'England'),
(1261, 1, 'KT13', 'West Molesey', 'Surrey', 'England'),
(1262, 1, 'KT14', '', 'Surrey', 'England'),
(1263, 1, 'KT15', 'Addlestone', 'Surrey', 'England'),
(1264, 1, 'KT16', '', 'Surrey', 'England'),
(1265, 1, 'KT17', 'Epsom', 'Surrey', 'England'),
(1266, 1, 'KT18', '', 'Surrey', 'England'),
(1267, 1, 'KT19', 'Epsom', 'Surrey', 'England'),
(1268, 1, 'KT2', 'Kingston Upon Thames', 'Greater London', 'England'),
(1269, 1, 'KT20', 'Reigate and Banstead', 'Surrey', 'England'),
(1270, 1, 'KT21', 'Leatherhead', 'Surrey', 'England'),
(1271, 1, 'KT22', 'Leatherhead', 'Surrey', 'England'),
(1272, 1, 'KT23', 'Dorking', 'Surrey', 'England'),
(1273, 1, 'KT24', 'East Horsley', 'Surrey', 'England'),
(1274, 1, 'KT3', 'Kingston Upon Thames', 'Greater London', 'England'),
(1275, 1, 'KT4', 'Sutton', 'Greater London', 'England'),
(1276, 1, 'KT5', 'Kingston Upon Thames', 'Greater London', 'England'),
(1277, 1, 'KT6', 'Kingston Upon Thames', 'Greater London', 'England'),
(1278, 1, 'KT7', 'Esher', 'Surrey', 'England'),
(1279, 1, 'KT8', 'West Molesey', 'Surrey', 'England'),
(1280, 1, 'KT9', 'Kingston Upon Thames', 'Greater London', 'England'),
(1281, 1, 'KW1', '', 'Highland', 'Scotland'),
(1282, 1, 'KW10', 'Golspie', 'Highland', 'Scotland'),
(1283, 1, 'KW11', '', 'Highland', 'Scotland'),
(1284, 1, 'KW12', 'Halkirk', 'Highland', 'Scotland'),
(1285, 1, 'KW13', '', 'Highland', 'Scotland'),
(1286, 1, 'KW14', 'Thurso', 'Highland', 'Scotland'),
(1287, 1, 'KW15', 'Kirkwall', 'Orkney Islands', 'Scotland'),
(1288, 1, 'KW16', 'Stromness', 'Orkney Islands', 'Scotland'),
(1289, 1, 'KW17', 'Gorseness', 'Orkney Islands', 'Scotland'),
(1290, 1, 'KW2', 'Whaligoe', 'Highland', 'Scotland'),
(1291, 1, 'KW3', 'Lybster', 'Highland', 'Scotland'),
(1292, 1, 'KW5', '', 'Highland', 'Scotland'),
(1293, 1, 'KW6', '', 'Highland', 'Scotland'),
(1294, 1, 'KW7', '', 'Highland', 'Scotland'),
(1295, 1, 'KW8', '', 'Highland', 'Scotland'),
(1296, 1, 'KW9', 'Brora', 'Highland', 'Scotland'),
(1297, 1, 'KY1', 'Kirkcaldy', 'Fife', 'Scotland'),
(1298, 1, 'KY10', '', 'Fife', 'Scotland'),
(1299, 1, 'KY11', '', 'Fife', 'Scotland'),
(1300, 1, 'KY12', 'Dunfermline', 'Fife', 'Scotland'),
(1301, 1, 'KY13', 'Kinross', 'Perth and Kinross', 'Scotland'),
(1302, 1, 'KY14', '', 'Fife', 'Scotland'),
(1303, 1, 'KY15', '', 'Fife', 'Scotland'),
(1304, 1, 'KY16', '', 'Fife', 'Scotland'),
(1305, 1, 'KY2', 'Kirkcaldy', 'Fife', 'Scotland'),
(1306, 1, 'KY3', 'Burntisland', 'Fife', 'Scotland'),
(1307, 1, 'KY4', '', 'Fife', 'Scotland'),
(1308, 1, 'KY5', '', 'Fife', 'Scotland'),
(1309, 1, 'KY6', 'Glenrothes', 'Fife', 'Scotland'),
(1310, 1, 'KY7', 'Glenrothes', 'Fife', 'Scotland'),
(1311, 1, 'KY8', 'Leven', 'Fife', 'Scotland'),
(1312, 1, 'KY9', 'Kilconquhar', 'Fife', 'Scotland'),
(1313, 1, 'L1', '', 'Liverpool', 'England'),
(1314, 1, 'L10', 'Aintree', 'Sefton', 'England'),
(1315, 1, 'L11', '', 'Liverpool', 'England'),
(1316, 1, 'L12', '', 'Liverpool', 'England'),
(1317, 1, 'L13', '', 'Liverpool', 'England'),
(1318, 1, 'L14', '', 'Liverpool', 'England'),
(1319, 1, 'L15', '', 'Liverpool', 'England'),
(1320, 1, 'L16', '', 'Liverpool', 'England'),
(1321, 1, 'L17', '', 'Liverpool', 'England'),
(1322, 1, 'L18', 'Garston', 'Liverpool', 'England'),
(1323, 1, 'L19', 'Garston', 'Liverpool', 'England'),
(1324, 1, 'L2', '', 'Liverpool', 'England'),
(1325, 1, 'L20', 'Southport', 'Sefton', 'England'),
(1326, 1, 'L21', 'Southport', 'Sefton', 'England'),
(1327, 1, 'L22', 'Southport', 'Sefton', 'England'),
(1328, 1, 'L23', 'Crosby', 'Liverpool', 'England'),
(1329, 1, 'L24', 'Garston', 'Liverpool', 'England'),
(1330, 1, 'L25', 'Garston', 'Liverpool', 'England'),
(1331, 1, 'L26', 'Halewood', 'Knowsley', 'England'),
(1332, 1, 'L27', '', 'Liverpool', 'England'),
(1333, 1, 'L28', '', 'Knowsley', 'England'),
(1334, 1, 'L29', '', 'Sefton', 'England'),
(1335, 1, 'L3', '', 'Liverpool', 'England'),
(1336, 1, 'L30', 'Southport', 'Sefton', 'England'),
(1337, 1, 'L31', 'Maghull', 'Sefton', 'England'),
(1338, 1, 'L32', 'Kirkby', 'Knowsley', 'England'),
(1339, 1, 'L33', 'Kirkby', 'Knowsley', 'England'),
(1340, 1, 'L34', '', 'Knowsley', 'England'),
(1341, 1, 'L35', 'Rainhill', 'St Helens', 'England'),
(1342, 1, 'L36', 'Hyton', 'Knowsley', 'England'),
(1343, 1, 'L37', 'Southport', 'Sefton', 'England'),
(1344, 1, 'L38', 'Southport', 'Sefton', 'England'),
(1345, 1, 'L39', 'Ormskirk', 'Lancashire', 'England'),
(1346, 1, 'L4', '', 'Liverpool', 'England'),
(1347, 1, 'L40', 'Burscough', 'Lancashire', 'England'),
(1348, 1, 'L5', '', 'Liverpool', 'England'),
(1349, 1, 'L6', '', 'Liverpool', 'England'),
(1350, 1, 'L69', '', 'Liverpool', 'England'),
(1351, 1, 'L7', '', 'Liverpool', 'England'),
(1352, 1, 'L70', '', 'Liverpool', 'England'),
(1353, 1, 'L8', '', 'Liverpool', 'England'),
(1354, 1, 'L9', '', 'Liverpool', 'England'),
(1355, 1, 'LA1', 'Lancaster', 'Lancashire', 'England'),
(1356, 1, 'LA10', 'Sedbergh', 'Cumbria', 'England'),
(1357, 1, 'LA11', 'Grange-over-Sands', 'Cumbria', 'England'),
(1358, 1, 'LA12', 'Ulverston', 'Cumbria', 'England'),
(1359, 1, 'LA13', 'Dalton-in-Furness', 'Cumbria', 'England'),
(1360, 1, 'LA14', 'Dalton-in-Furness', 'Cumbria', 'England'),
(1361, 1, 'LA15', 'Dalton Town with Newton', 'Cumbria', 'England'),
(1362, 1, 'LA16', 'Ireleth', 'Cumbria', 'England'),
(1363, 1, 'LA17', 'Kirkby Ireleth', 'Cumbria', 'England'),
(1364, 1, 'LA18', 'Millom', 'Cumbria', 'England'),
(1365, 1, 'LA19', 'Bootle', 'Cumbria', 'England'),
(1366, 1, 'LA2', 'Caton', 'Lancashire', 'England'),
(1367, 1, 'LA20', 'Broughton West', 'Cumbria', 'England'),
(1368, 1, 'LA21', 'Coniston', 'Cumbria', 'England'),
(1369, 1, 'LA22', 'Lakes', 'Cumbria', 'England'),
(1370, 1, 'LA23', 'Windermere', 'Cumbria', 'England'),
(1371, 1, 'LA3', 'Lancaster', 'Lancashire', 'England'),
(1372, 1, 'LA4', 'Lancaster', 'Lancashire', 'England'),
(1373, 1, 'LA5', 'Warton', 'Lancashire', 'England'),
(1374, 1, 'LA6', 'Whittingham', 'Lancashire', 'England'),
(1375, 1, 'LA7', 'Milnthorpe', 'Cumbria', 'England'),
(1376, 1, 'LA8', 'Kendal', 'Cumbria', 'England'),
(1377, 1, 'LA9', 'Kendal', 'Cumbria', 'England'),
(1378, 1, 'LD1', 'Llandrindod Wells', 'Powys', 'Wales'),
(1379, 1, 'LD2', 'Duhonw', 'Powys', 'Wales'),
(1380, 1, 'LD3', 'Llanddew', 'Powys', 'Wales'),
(1381, 1, 'LD4', 'Llangamarch', 'Powys', 'Wales'),
(1382, 1, 'LD5', 'Treflys', 'Powys', 'Wales'),
(1383, 1, 'LD6', 'Rhayader', 'Powys', 'Wales'),
(1384, 1, 'LD7', 'Knighton', 'Powys', 'Wales'),
(1385, 1, 'LD8', 'Presteigne', 'Powys', 'Wales'),
(1386, 1, 'LE1', 'Leicester', 'Leicester', 'England'),
(1387, 1, 'LE10', 'Hinckley', 'Leicestershire', 'England'),
(1388, 1, 'LE11', 'Loughborough', 'Leicestershire', 'England'),
(1389, 1, 'LE12', 'Loughborough', 'Leicestershire', 'England'),
(1390, 1, 'LE13', 'Melton Mowbray', 'Leicestershire', 'England'),
(1391, 1, 'LE14', 'Melton Mowbray', 'Leicestershire', 'England'),
(1392, 1, 'LE15', 'Hambleton', 'Rutland', 'England'),
(1393, 1, 'LE16', 'Dingley', 'Northamptonshire', 'England'),
(1394, 1, 'LE17', 'Gilmorton', 'Leicestershire', 'England'),
(1395, 1, 'LE18', 'Wigston', 'Leicestershire', 'England'),
(1396, 1, 'LE19', 'Narborough', 'Leicestershire', 'England'),
(1397, 1, 'LE2', 'Oadby', 'Leicester', 'England'),
(1398, 1, 'LE3', 'Leicester', 'Leicester', 'England'),
(1399, 1, 'LE4', 'Leicester', 'Leicester', 'England'),
(1400, 1, 'LE5', 'Leicester', 'Leicester', 'England'),
(1401, 1, 'LE6', 'Groby', 'Leicestershire', 'England'),
(1402, 1, 'LE65', 'Ashby-de-la-Zouch', 'Leicestershire', 'England'),
(1403, 1, 'LE67', 'Coalville', 'Leicestershire', 'England'),
(1404, 1, 'LE7', 'Barkby', 'Leicestershire', 'England'),
(1405, 1, 'LE8', 'Kilby', 'Leicestershire', 'England'),
(1406, 1, 'LE9', 'Hinckley', 'Leicestershire', 'England'),
(1407, 1, 'LL11', 'Broughton', 'Wrexham', 'Wales'),
(1408, 1, 'LL12', 'Gresford', 'Wrexham', 'Wales'),
(1409, 1, 'LL13', 'Abenbury', 'Wrexham', 'Wales'),
(1410, 1, 'LL14', 'Ruabon', 'Wrexham', 'Wales'),
(1411, 1, 'LL15', 'Ruthin', 'Denbighshire', 'Wales'),
(1412, 1, 'LL16', 'Denbigh', 'Denbighshire', 'Wales'),
(1413, 1, 'LL17', 'St Asaph', 'Denbighshire', 'Wales'),
(1414, 1, 'LL18', 'Rhyl', 'Denbighshire', 'Wales'),
(1415, 1, 'LL19', 'Prestatyn', 'Denbighshire', 'Wales'),
(1416, 1, 'LL20', 'Llangollen', 'Denbighshire', 'Wales'),
(1417, 1, 'LL21', 'Corwen', 'Denbighshire', 'Wales'),
(1418, 1, 'LL22', 'Betws-yn-Rhos', 'Conwy', 'Wales'),
(1419, 1, 'LL23', 'Bala', 'Gwynedd', 'Wales'),
(1420, 1, 'LL24', 'Bro Machno', 'Conwy', 'Wales'),
(1421, 1, 'LL25', 'Dolwyddelan', 'Conwy', 'Wales'),
(1422, 1, 'LL26', 'Llanrwst', 'Conwy', 'Wales'),
(1423, 1, 'LL27', 'Trefriw', 'Conwy', 'Wales'),
(1424, 1, 'LL28', 'Mochdre', 'Conwy', 'Wales'),
(1425, 1, 'LL29', 'Old Colwyn', 'Conwy', 'Wales'),
(1426, 1, 'LL30', 'Llandudno', 'Conwy', 'Wales'),
(1427, 1, 'LL31', 'Deganwy', 'Conwy', 'Wales'),
(1428, 1, 'LL32', 'Henryd', 'Conwy', 'Wales'),
(1429, 1, 'LL33', 'Llanfairfechan', 'Conwy', 'Wales'),
(1430, 1, 'LL34', 'Penmaenmawr', 'Conwy', 'Wales'),
(1431, 1, 'LL35', 'Aberdovey', 'Gwynedd', 'Wales'),
(1432, 1, 'LL36', 'Bryncrug', 'Gwynedd', 'Wales'),
(1433, 1, 'LL37', 'Llangelynin', 'Gwynedd', 'Wales'),
(1434, 1, 'LL38', 'Arthog', 'Gwynedd', 'Wales'),
(1435, 1, 'LL39', 'Arthog', 'Gwynedd', 'Wales'),
(1436, 1, 'LL40', 'Brithdir', 'Gwynedd', 'Wales'),
(1437, 1, 'LL41', 'Ffestiniog', 'Gwynedd', 'Wales'),
(1438, 1, 'LL42', 'Barmouth', 'Gwynedd', 'Wales'),
(1439, 1, 'LL43', 'Dyffryn Ardudwy', 'Gwynedd', 'Wales'),
(1440, 1, 'LL44', 'Dyffryn Ardudwy', 'Gwynedd', 'Wales'),
(1441, 1, 'LL45', 'Llanbedr', 'Gwynedd', 'Wales'),
(1442, 1, 'LL46', 'Harlech', 'Gwynedd', 'Wales'),
(1443, 1, 'LL47', 'Talsarnau', 'Gwynedd', 'Wales'),
(1444, 1, 'LL48', 'Penrhyndeudraeth', 'Gwynedd', 'Wales'),
(1445, 1, 'LL49', 'Porthmadog', 'Gwynedd', 'Wales'),
(1446, 1, 'LL51', 'Dolbenmaen', 'Gwynedd', 'Wales'),
(1447, 1, 'LL52', 'Criccieth', 'Gwynedd', 'Wales'),
(1448, 1, 'LL53', 'Buan', 'Gwynedd', 'Wales'),
(1449, 1, 'LL54', 'Llanllyfni', 'Gwynedd', 'Wales'),
(1450, 1, 'LL55', 'Llanrug', 'Gwynedd', 'Wales'),
(1451, 1, 'LL56', 'Y Felinheli', 'Gwynedd', 'Wales'),
(1452, 1, 'LL57', 'Llandygai', 'Gwynedd', 'Wales'),
(1453, 1, 'LL58', 'Beaumaris', 'Isle of Anglesey', 'Wales'),
(1454, 1, 'LL59', 'Cwm Cadnant', 'Isle of Anglesey', 'Wales'),
(1455, 1, 'LL60', 'Llanfihangel Ysgeifiog', 'Isle of Anglesey', 'Wales'),
(1456, 1, 'LL61', 'Llanidan', 'Isle of Anglesey', 'Wales'),
(1457, 1, 'LL62', 'Bodorgan', 'Isle of Anglesey', 'Wales'),
(1458, 1, 'LL63', 'Aberffraw', 'Isle of Anglesey', 'Wales'),
(1459, 1, 'LL64', 'Rhosneigr', 'Isle of Anglesey', 'Wales'),
(1460, 1, 'LL65', 'Valley', 'Isle of Anglesey', 'Wales'),
(1461, 1, 'LL66', 'Rhosybol', 'Isle of Anglesey', 'Wales'),
(1462, 1, 'LL67', 'Llanbadrig', 'Isle of Anglesey', 'Wales'),
(1463, 1, 'LL68', 'Amlwch', 'Isle of Anglesey', 'Wales'),
(1464, 1, 'LL69', 'Penysarn', 'Isle of Anglesey', 'Wales'),
(1465, 1, 'LL70', 'Moelfre', 'Isle of Anglesey', 'Wales'),
(1466, 1, 'LL71', 'Llannerch-Y-Medd', 'Isle of Anglesey', 'Wales'),
(1467, 1, 'LL72', 'Moelfre', 'Isle of Anglesey', 'Wales'),
(1468, 1, 'LL73', 'Llaneugrad', 'Isle of Anglesey', 'Wales'),
(1469, 1, 'LL74', 'Llanfair-Mathafarn-Eithaf', 'Isle of Anglesey', 'Wales'),
(1470, 1, 'LL75', 'Pentraeth', 'Isle of Anglesey', 'Wales'),
(1471, 1, 'LL76', 'Llanfair-Mathafarn-Eithaf', 'Isle of Anglesey', 'Wales'),
(1472, 1, 'LL77', 'Llangefni', 'Isle of Anglesey', 'Wales'),
(1473, 1, 'LL78', 'Llanfair-Mathafarn-Eithaf', 'Isle of Anglesey', 'Wales'),
(1474, 1, 'LN1', 'Burton', 'Lincolnshire', 'England'),
(1475, 1, 'LN10', 'Woodhall Spa', 'Lincolnshire', 'England'),
(1476, 1, 'LN11', 'Louth', 'Lincolnshire', 'England'),
(1477, 1, 'LN12', 'Mablethorpe', 'Lincolnshire', 'England'),
(1478, 1, 'LN13', 'Alford', 'Lincolnshire', 'England'),
(1479, 1, 'LN2', 'Nettleham', 'Lincolnshire', 'England'),
(1480, 1, 'LN3', 'Fiskerton', 'Lincolnshire', 'England'),
(1481, 1, 'LN4', 'Dunston', 'Lincolnshire', 'England'),
(1482, 1, 'LN5', 'Waddington', 'Lincolnshire', 'England'),
(1483, 1, 'LN6', 'Lincoln', 'Lincolnshire', 'England'),
(1484, 1, 'LN7', 'Caistor', 'Lincolnshire', 'England'),
(1485, 1, 'LN8', 'Linwood', 'Lincolnshire', 'England'),
(1486, 1, 'LN9', 'Horncastle', 'Lincolnshire', 'England'),
(1487, 1, 'LS1', '', 'Leeds', 'England'),
(1488, 1, 'LS10', '', 'Leeds', 'England'),
(1489, 1, 'LS11', '', 'Leeds', 'England'),
(1490, 1, 'LS12', '', 'Leeds', 'England'),
(1491, 1, 'LS13', '', 'Leeds', 'England'),
(1492, 1, 'LS14', '', 'Leeds', 'England'),
(1493, 1, 'LS15', '', 'Leeds', 'England'),
(1494, 1, 'LS16', '', 'Leeds', 'England'),
(1495, 1, 'LS17', 'Harewood', 'Leeds', 'England'),
(1496, 1, 'LS18', '', 'Leeds', 'England'),
(1497, 1, 'LS19', 'Guiseley', 'Leeds', 'England'),
(1498, 1, 'LS2', '', 'Leeds', 'England'),
(1499, 1, 'LS20', 'Guiseley', 'Leeds', 'England'),
(1500, 1, 'LS21', 'Otley', 'Leeds', 'England'),
(1501, 1, 'LS22', 'Wetherby', 'Leeds', 'England'),
(1502, 1, 'LS23', 'Boston Spa', 'Leeds', 'England'),
(1503, 1, 'LS24', 'Grimston', 'North Yorkshire', 'England'),
(1504, 1, 'LS25', 'Micklefield', 'Leeds', 'England'),
(1505, 1, 'LS26', 'Rothwell', 'Leeds', 'England'),
(1506, 1, 'LS27', 'Gildersome', 'Leeds', 'England'),
(1507, 1, 'LS28', '', 'Leeds', 'England'),
(1508, 1, 'LS29', 'Ilkley', 'Bradford', 'England'),
(1509, 1, 'LS3', '', 'Leeds', 'England'),
(1510, 1, 'LS4', '', 'Leeds', 'England'),
(1511, 1, 'LS5', '', 'Leeds', 'England'),
(1512, 1, 'LS6', '', 'Leeds', 'England'),
(1513, 1, 'LS7', '', 'Leeds', 'England'),
(1514, 1, 'LS8', '', 'Leeds', 'England'),
(1515, 1, 'LS9', '', 'Leeds', 'England'),
(1516, 1, 'LU1', '', 'Luton', 'England'),
(1517, 1, 'LU2', '', 'Luton', 'England'),
(1518, 1, 'LU3', '', 'Luton', 'England'),
(1519, 1, 'LU4', '', 'Luton', 'England'),
(1520, 1, 'LU5', 'Thorn', 'Central Bedfordshire', 'England'),
(1521, 1, 'LU6', 'Dunstable', 'Central Bedfordshire', 'England'),
(1522, 1, 'LU7', 'Leighton-Linslade', 'Central Bedfordshire', 'England'),
(1523, 1, 'M1', 'Manchester', 'Greater Manchester', 'England'),
(1524, 1, 'M11', 'Manchester', 'Greater Manchester', 'England'),
(1525, 1, 'M12', 'Manchester', 'Greater Manchester', 'England'),
(1526, 1, 'M13', 'Manchester', 'Greater Manchester', 'England'),
(1527, 1, 'M14', 'Manchester', 'Greater Manchester', 'England'),
(1528, 1, 'M15', 'Manchester', 'Greater Manchester', 'England'),
(1529, 1, 'M16', 'Manchester', 'Greater Manchester', 'England'),
(1530, 1, 'M17', 'Urmston', 'Trafford', 'England'),
(1531, 1, 'M18', 'Manchester', 'Greater Manchester', 'England'),
(1532, 1, 'M19', 'Manchester', 'Greater Manchester', 'England'),
(1533, 1, 'M2', 'Manchester', 'Greater Manchester', 'England'),
(1534, 1, 'M20', 'Manchester', 'Greater Manchester', 'England'),
(1535, 1, 'M21', 'Manchester', 'Greater Manchester', 'England'),
(1536, 1, 'M22', 'Manchester', 'Greater Manchester', 'England'),
(1537, 1, 'M23', 'Manchester', 'Greater Manchester', 'England'),
(1538, 1, 'M24', 'Middleton', 'Rochdale', 'England'),
(1539, 1, 'M25', '', 'Bury', 'England'),
(1540, 1, 'M26', '', 'Bury', 'England'),
(1541, 1, 'M27', '', 'Salford', 'England'),
(1542, 1, 'M28', 'Walkden', 'Salford', 'England'),
(1543, 1, 'M29', 'Pemberton', 'Wigan', 'England'),
(1544, 1, 'M3', '', 'Salford', 'England'),
(1545, 1, 'M30', '', 'Salford', 'England'),
(1546, 1, 'M31', 'Partington', 'Trafford', 'England'),
(1547, 1, 'M32', 'Urmston', 'Trafford', 'England'),
(1548, 1, 'M33', '', 'Trafford', 'England'),
(1549, 1, 'M34', 'Ashton-under-Lyne', 'Tameside', 'England'),
(1550, 1, 'M35', '', 'Oldham', 'England'),
(1551, 1, 'M38', 'Walkden', 'Salford', 'England'),
(1552, 1, 'M4', 'Manchester', 'Greater Manchester', 'England'),
(1553, 1, 'M40', 'Manchester', 'Greater Manchester', 'England'),
(1554, 1, 'M41', 'Urmston', 'Trafford', 'England'),
(1555, 1, 'M43', 'Ashton-under-Lyne', 'Tameside', 'England'),
(1556, 1, 'M44', '', 'Salford', 'England'),
(1557, 1, 'M45', '', 'Bury', 'England'),
(1558, 1, 'M46', 'Pemberton', 'Wigan', 'England'),
(1559, 1, 'M5', '', 'Salford', 'England'),
(1560, 1, 'M6', '', 'Salford', 'England'),
(1561, 1, 'M60', 'Manchester', 'Greater Manchester', 'England'),
(1562, 1, 'M7', '', 'Salford', 'England'),
(1563, 1, 'M8', 'Manchester', 'Greater Manchester', 'England'),
(1564, 1, 'M9', 'Manchester', 'Greater Manchester', 'England'),
(1565, 1, 'M90', 'Ringway', 'Greater Manchester', 'England'),
(1566, 1, 'ME1', 'Rochester', 'Medway', 'England'),
(1567, 1, 'ME10', 'Sittingbourne', 'Kent', 'England'),
(1568, 1, 'ME11', 'Queenborough', 'Kent', 'England'),
(1569, 1, 'ME12', 'Sittingbourne', 'Kent', 'England'),
(1570, 1, 'ME13', 'Faversham', 'Kent', 'England'),
(1571, 1, 'ME14', 'Maidstone', 'Kent', 'England'),
(1572, 1, 'ME15', 'Maidstone', 'Kent', 'England'),
(1573, 1, 'ME16', 'Maidstone', 'Kent', 'England'),
(1574, 1, 'ME17', 'Leeds', 'Kent', 'England'),
(1575, 1, 'ME18', 'West Farleigh', 'Kent', 'England'),
(1576, 1, 'ME19', 'West Malling', 'Kent', 'England'),
(1577, 1, 'ME2', 'Strood', 'Medway', 'England'),
(1578, 1, 'ME20', 'Ditton', 'Kent', 'England'),
(1579, 1, 'ME3', 'Hoo St Werburgh', 'Medway', 'England'),
(1580, 1, 'ME4', 'Rochester', 'Medway', 'England'),
(1581, 1, 'ME5', 'Rochester', 'Medway', 'England'),
(1582, 1, 'ME6', 'Snodland', 'Kent', 'England'),
(1583, 1, 'ME7', 'Gillingham', 'Medway', 'England'),
(1584, 1, 'ME8', 'Gillingham', 'Medway', 'England'),
(1585, 1, 'ME9', 'Sittingbourne', 'Kent', 'England'),
(1586, 1, 'MK1', 'Bletchley', 'Milton Keynes', 'England'),
(1587, 1, 'MK10', '', 'Milton Keynes', 'England'),
(1588, 1, 'MK11', 'Stony Stratford', 'Milton Keynes', 'England'),
(1589, 1, 'MK12', 'Stony Stratford', 'Milton Keynes', 'England'),
(1590, 1, 'MK13', 'Bradwell', 'Milton Keynes', 'England'),
(1591, 1, 'MK14', 'Stantonbury', 'Milton Keynes', 'England'),
(1592, 1, 'MK15', 'Willen', 'Milton Keynes', 'England'),
(1593, 1, 'MK16', 'Newport Pagnell', 'Milton Keynes', 'England'),
(1594, 1, 'MK17', 'Bow Brickhill', 'Milton Keynes', 'England'),
(1595, 1, 'MK18', 'Buckingham', 'Buckinghamshire', 'England'),
(1596, 1, 'MK19', 'Cosgrove', 'Northamptonshire', 'England'),
(1597, 1, 'MK2', 'Bletchley', 'Milton Keynes', 'England'),
(1598, 1, 'MK3', 'Bletchley', 'Milton Keynes', 'England'),
(1599, 1, 'MK4', 'Shenley Brook End', 'Milton Keynes', 'England'),
(1600, 1, 'MK40', 'Bedford', 'Bedford Borough', 'England'),
(1601, 1, 'MK41', 'Bedford', 'Bedford Borough', 'England'),
(1602, 1, 'MK42', 'Kempston', 'Bedford Borough', 'England'),
(1603, 1, 'MK43', 'Kempston Rural', 'Bedford Borough', 'England'),
(1604, 1, 'MK44', 'Wilden', 'Bedford Borough', 'England'),
(1605, 1, 'MK45', 'Maulden', 'Central Bedfordshire', 'England'),
(1606, 1, 'MK46', 'Clifton Reynes', 'Milton Keynes', 'England'),
(1607, 1, 'MK5', 'Shenley Church End', 'Milton Keynes', 'England'),
(1608, 1, 'MK6', 'Woughton On The Green', 'Milton Keynes', 'England'),
(1609, 1, 'MK7', 'Walton', 'Milton Keynes', 'England'),
(1610, 1, 'MK8', 'Bradwell Abbey', 'Milton Keynes', 'England'),
(1611, 1, 'MK9', '', 'Milton Keynes', 'England'),
(1612, 1, 'ML1', 'Motherwell', 'North Lanarkshire', 'Scotland'),
(1613, 1, 'ML10', 'Strathaven', 'South Lanarkshire', 'Scotland'),
(1614, 1, 'ML11', 'New Lanark', 'South Lanarkshire', 'Scotland'),
(1615, 1, 'ML12', '', 'South Lanarkshire', 'Scotland'),
(1616, 1, 'ML2', 'Wishaw', 'North Lanarkshire', 'Scotland'),
(1617, 1, 'ML3', 'Hamilton', 'South Lanarkshire', 'Scotland'),
(1618, 1, 'ML4', 'Motherwell', 'North Lanarkshire', 'Scotland'),
(1619, 1, 'ML5', 'Coatbridge', 'North Lanarkshire', 'Scotland'),
(1620, 1, 'ML6', 'Airdrie', 'North Lanarkshire', 'Scotland'),
(1621, 1, 'ML7', '', 'North Lanarkshire', 'Scotland'),
(1622, 1, 'ML8', 'Carluke', 'South Lanarkshire', 'Scotland'),
(1623, 1, 'ML9', 'Larkhall', 'South Lanarkshire', 'Scotland'),
(1624, 1, 'N1', 'Islington', 'Greater London', 'England'),
(1625, 1, 'N10', 'Tottenham', 'Greater London', 'England'),
(1626, 1, 'N11', 'Enfield', 'Greater London', 'England'),
(1627, 1, 'N12', 'Barnet', 'Greater London', 'England'),
(1628, 1, 'N13', 'Enfield', 'Greater London', 'England'),
(1629, 1, 'N14', 'Enfield', 'Greater London', 'England'),
(1630, 1, 'N15', 'Tottenham', 'Greater London', 'England'),
(1631, 1, 'N16', 'Hackney', 'Greater London', 'England'),
(1632, 1, 'N17', 'Tottenham', 'Greater London', 'England'),
(1633, 1, 'N18', 'Enfield', 'Greater London', 'England'),
(1634, 1, 'N19', 'Islington', 'Greater London', 'England'),
(1635, 1, 'N2', 'Barnet', 'Greater London', 'England'),
(1636, 1, 'N20', 'Barnet', 'Greater London', 'England'),
(1637, 1, 'N21', 'Enfield', 'Greater London', 'England'),
(1638, 1, 'N22', 'Tottenham', 'Greater London', 'England'),
(1639, 1, 'N3', 'Barnet', 'Greater London', 'England'),
(1640, 1, 'N4', 'Hackney', 'Greater London', 'England'),
(1641, 1, 'N5', 'Islington', 'Greater London', 'England'),
(1642, 1, 'N6', 'Tottenham', 'Greater London', 'England'),
(1643, 1, 'N7', 'Islington', 'Greater London', 'England'),
(1644, 1, 'N8', 'Tottenham', 'Greater London', 'England'),
(1645, 1, 'N9', 'Enfield', 'Greater London', 'England'),
(1646, 1, 'NE1', '', 'Newcastle Upon Tyne', 'England'),
(1647, 1, 'NE10', '', 'Gateshead', 'England'),
(1648, 1, 'NE11', 'Wickham and Dunston', 'Gateshead', 'England'),
(1649, 1, 'NE12', 'Longbenton', 'North Tyneside', 'England'),
(1650, 1, 'NE13', 'Brunswick', 'Newcastle Upon Tyne', 'England'),
(1651, 1, 'NE15', 'Newburn', 'Newcastle Upon Tyne', 'England'),
(1652, 1, 'NE16', 'Wickham and Dunston', 'Gateshead', 'England'),
(1653, 1, 'NE17', 'Blaydon', 'Gateshead', 'England'),
(1654, 1, 'NE18', 'Stamfordham', 'Northumberland', 'England'),
(1655, 1, 'NE19', 'Elsdon', 'Northumberland', 'England'),
(1656, 1, 'NE2', 'Byker', 'Newcastle Upon Tyne', 'England'),
(1657, 1, 'NE20', 'Ponteland', 'Northumberland', 'England'),
(1658, 1, 'NE21', 'Blaydon', 'Gateshead', 'England'),
(1659, 1, 'NE22', 'Wansbeck', 'Northumberland', 'England'),
(1660, 1, 'NE23', 'Blyth', 'Northumberland', 'England'),
(1661, 1, 'NE24', 'Blyth', 'Northumberland', 'England'),
(1662, 1, 'NE25', '', 'North Tyneside', 'England'),
(1663, 1, 'NE26', '', 'North Tyneside', 'England'),
(1664, 1, 'NE27', '', 'North Tyneside', 'England'),
(1665, 1, 'NE28', '', 'North Tyneside', 'England'),
(1666, 1, 'NE29', '', 'North Tyneside', 'England'),
(1667, 1, 'NE3', '', 'Newcastle Upon Tyne', 'England'),
(1668, 1, 'NE30', '', 'North Tyneside', 'England'),
(1669, 1, 'NE31', '', 'South Tyneside', 'England'),
(1670, 1, 'NE32', '', 'South Tyneside', 'England'),
(1671, 1, 'NE33', '', 'South Tyneside', 'England'),
(1672, 1, 'NE34', '', 'South Tyneside', 'England'),
(1673, 1, 'NE35', '', 'South Tyneside', 'England'),
(1674, 1, 'NE36', '', 'South Tyneside', 'England'),
(1675, 1, 'NE37', 'Washington', 'Sunderland', 'England'),
(1676, 1, 'NE38', 'Washington', 'Sunderland', 'England'),
(1677, 1, 'NE39', 'Blaydon', 'Gateshead', 'England'),
(1678, 1, 'NE4', '', 'Newcastle Upon Tyne', 'England'),
(1679, 1, 'NE40', 'Blaydon', 'Gateshead', 'England'),
(1680, 1, 'NE41', 'Wylam', 'Northumberland', 'England'),
(1681, 1, 'NE42', 'Prudhoe', 'Northumberland', 'England'),
(1682, 1, 'NE43', 'Stocksfield', 'Northumberland', 'England'),
(1683, 1, 'NE44', 'Broomhaugh and Riding', 'Northumberland', 'England'),
(1684, 1, 'NE45', 'Corbridge', 'Northumberland', 'England'),
(1685, 1, 'NE46', 'Hexham', 'Northumberland', 'England'),
(1686, 1, 'NE47', 'Allendale', 'Northumberland', 'England'),
(1687, 1, 'NE48', 'Bellingham', 'Northumberland', 'England'),
(1688, 1, 'NE49', 'Haltwhistle', 'Northumberland', 'England'),
(1689, 1, 'NE5', 'Newburn', 'Newcastle Upon Tyne', 'England'),
(1690, 1, 'NE6', 'Byker', 'Newcastle Upon Tyne', 'England'),
(1691, 1, 'NE61', 'Morpeth', 'Northumberland', 'England'),
(1692, 1, 'NE62', 'Wansbeck', 'Northumberland', 'England'),
(1693, 1, 'NE63', 'Wansbeck', 'Northumberland', 'England'),
(1694, 1, 'NE64', 'Wansbeck', 'Northumberland', 'England'),
(1695, 1, 'NE65', 'Newton on the Moor', 'Northumberland', 'England'),
(1696, 1, 'NE66', 'Denwick', 'Northumberland', 'England'),
(1697, 1, 'NE67', 'Ellingham', 'Northumberland', 'England'),
(1698, 1, 'NE68', 'North Sunderland', 'Northumberland', 'England'),
(1699, 1, 'NE69', 'Bamburgh', 'Northumberland', 'England'),
(1700, 1, 'NE7', 'Byker', 'Newcastle Upon Tyne', 'England'),
(1701, 1, 'NE70', 'Belford', 'Northumberland', 'England'),
(1702, 1, 'NE71', 'Akeld', 'Northumberland', 'England'),
(1703, 1, 'NE8', '', 'Gateshead', 'England'),
(1704, 1, 'NE9', '', 'Gateshead', 'England'),
(1705, 1, 'NE99', '', 'Newcastle Upon Tyne', 'England'),
(1706, 1, 'NG1', '', 'Nottingham', 'England'),
(1707, 1, 'NG10', 'Ilkeston', 'Derbyshire', 'England'),
(1708, 1, 'NG11', 'Clifton', 'Nottingham', 'England'),
(1709, 1, 'NG12', 'Cotgrave', 'Nottinghamshire', 'England'),
(1710, 1, 'NG13', 'Bingham', 'Nottinghamshire', 'England'),
(1711, 1, 'NG14', 'Lowdham', 'Nottinghamshire', 'England'),
(1712, 1, 'NG15', 'Sutton in Ashfield', 'Nottinghamshire', 'England'),
(1713, 1, 'NG16', 'Greasley', 'Nottinghamshire', 'England'),
(1714, 1, 'NG17', 'Sutton in Ashfield', 'Nottinghamshire', 'England'),
(1715, 1, 'NG18', 'Mansfield', 'Nottinghamshire', 'England'),
(1716, 1, 'NG19', 'Mansfield', 'Nottinghamshire', 'England'),
(1717, 1, 'NG2', 'West Bridgford', 'Nottinghamshire', 'England'),
(1718, 1, 'NG20', 'Warsop', 'Nottinghamshire', 'England'),
(1719, 1, 'NG21', 'Rainworth', 'Nottinghamshire', 'England'),
(1720, 1, 'NG22', 'Ompton', 'Nottinghamshire', 'England'),
(1721, 1, 'NG23', 'North Muskham', 'Nottinghamshire', 'England'),
(1722, 1, 'NG24', 'Newark-on-Trent', 'Nottinghamshire', 'England'),
(1723, 1, 'NG25', 'Southwell', 'Nottinghamshire', 'England'),
(1724, 1, 'NG3', '', 'Nottingham', 'England'),
(1725, 1, 'NG31', 'Grantham', 'Lincolnshire', 'England'),
(1726, 1, 'NG32', 'Great Gonerby', 'Lincolnshire', 'England'),
(1727, 1, 'NG33', 'Burton Coggles', 'Lincolnshire', 'England'),
(1728, 1, 'NG34', 'Sleaford', 'Lincolnshire', 'England'),
(1729, 1, 'NG4', 'Carlton', 'Nottinghamshire', 'England'),
(1730, 1, 'NG5', '', 'Nottingham', 'England'),
(1731, 1, 'NG6', '', 'Nottingham', 'England'),
(1732, 1, 'NG7', '', 'Nottingham', 'England'),
(1733, 1, 'NG8', '', 'Nottingham', 'England'),
(1734, 1, 'NG9', 'Beeston', 'Nottinghamshire', 'England'),
(1735, 1, 'NN1', 'Northampton', 'Northamptonshire', 'England'),
(1736, 1, 'NN10', 'Rushden', 'Northamptonshire', 'England'),
(1737, 1, 'NN11', 'Badby', 'Northamptonshire', 'England'),
(1738, 1, 'NN12', 'Towcester', 'Northamptonshire', 'England'),
(1739, 1, 'NN13', 'Brackley', 'Northamptonshire', 'England'),
(1740, 1, 'NN14', 'Warkton', 'Northamptonshire', 'England'),
(1741, 1, 'NN15', 'Kettering', 'Northamptonshire', 'England'),
(1742, 1, 'NN16', 'Kettering', 'Northamptonshire', 'England'),
(1743, 1, 'NN17', 'Corby', 'Northamptonshire', 'England'),
(1744, 1, 'NN18', 'Corby', 'Northamptonshire', 'England'),
(1745, 1, 'NN2', 'Northampton', 'Northamptonshire', 'England'),
(1746, 1, 'NN29', 'Wollaston', 'Northamptonshire', 'England'),
(1747, 1, 'NN3', 'Northampton', 'Northamptonshire', 'England'),
(1748, 1, 'NN4', 'Northampton', 'Northamptonshire', 'England'),
(1749, 1, 'NN5', 'Duston', 'Northamptonshire', 'England'),
(1750, 1, 'NN6', 'Spratton', 'Northamptonshire', 'England'),
(1751, 1, 'NN7', 'Northampton', 'Northamptonshire', 'England'),
(1752, 1, 'NN8', 'Wellingborough', 'Northamptonshire', 'England'),
(1753, 1, 'NN9', 'Irthlingborough', 'Northamptonshire', 'England'),
(1754, 1, 'NP10', 'Graig', 'Newport', 'Wales'),
(1755, 1, 'NP11', 'Abercarn', 'Caerphilly', 'Wales'),
(1756, 1, 'NP12', 'Blackwood', 'Caerphilly', 'Wales'),
(1757, 1, 'NP13', 'Abertillery', 'Blaenau Gwent', 'Wales'),
(1758, 1, 'NP15', 'Gwehelog Fawr', 'Monmouthshire', 'Wales'),
(1759, 1, 'NP16', 'St Arvans', 'Monmouthshire', 'Wales'),
(1760, 1, 'NP18', 'Caerleon', 'Newport', 'Wales'),
(1761, 1, 'NP19', 'Alway', 'Newport', 'Wales'),
(1762, 1, 'NP20', 'Allt-yr-yn', 'Newport', 'Wales'),
(1763, 1, 'NP22', 'Tredegar', 'Blaenau Gwent', 'Wales'),
(1764, 1, 'NP23', 'Ebbw Vale', 'Blaenau Gwent', 'Wales'),
(1765, 1, 'NP24', 'New Tredegar', 'Caerphilly', 'Wales'),
(1766, 1, 'NP25', 'Monmouth', 'Monmouthshire', 'Wales'),
(1767, 1, 'NP26', 'Rogiet', 'Monmouthshire', 'Wales'),
(1768, 1, 'NP4', 'Trevethin', 'Torfaen', 'Wales'),
(1769, 1, 'NP44', 'Cwmbran', 'Torfaen', 'Wales'),
(1770, 1, 'NP7', 'Abergavenny', 'Monmouthshire', 'Wales'),
(1771, 1, 'NP8', 'Llangattock', 'Powys', 'Wales'),
(1772, 1, 'NR1', 'Norwich', 'Norfolk', 'England'),
(1773, 1, 'NR10', 'Hevingham', 'Norfolk', 'England'),
(1774, 1, 'NR11', 'Erpingham', 'Norfolk', 'England'),
(1775, 1, 'NR12', 'Smallburgh', 'Norfolk', 'England'),
(1776, 1, 'NR13', 'Blofield', 'Norfolk', 'England'),
(1777, 1, 'NR14', 'Alpington', 'Norfolk', 'England'),
(1778, 1, 'NR15', 'Hempnall', 'Norfolk', 'England'),
(1779, 1, 'NR16', 'Old Buckenham', 'Norfolk', 'England'),
(1780, 1, 'NR17', 'Attleborough', 'Norfolk', 'England'),
(1781, 1, 'NR18', 'Wymondham', 'Norfolk', 'England'),
(1782, 1, 'NR19', 'Scarning', 'Norfolk', 'England'),
(1783, 1, 'NR2', 'Norwich', 'Norfolk', 'England'),
(1784, 1, 'NR20', 'Swanton Morley', 'Norfolk', 'England'),
(1785, 1, 'NR21', 'Fakenham', 'Norfolk', 'England'),
(1786, 1, 'NR22', 'Walsingham', 'Norfolk', 'England'),
(1787, 1, 'NR23', 'Wells-next-the-Sea', 'Norfolk', 'England'),
(1788, 1, 'NR24', 'Briston', 'Norfolk', 'England'),
(1789, 1, 'NR25', 'Holt', 'Norfolk', 'England'),
(1790, 1, 'NR26', 'Sheringham', 'Norfolk', 'England'),
(1791, 1, 'NR27', 'Cromer', 'Norfolk', 'England'),
(1792, 1, 'NR28', 'North Walsham', 'Norfolk', 'England'),
(1793, 1, 'NR29', 'Great Yarmouth', 'Norfolk', 'England'),
(1794, 1, 'NR3', 'Norwich', 'Norfolk', 'England'),
(1795, 1, 'NR30', 'Great Yarmouth', 'Norfolk', 'England'),
(1796, 1, 'NR31', 'Great Yarmouth', 'Norfolk', 'England'),
(1797, 1, 'NR32', 'Oulton Broad', 'Suffolk', 'England'),
(1798, 1, 'NR33', 'Oulton Broad', 'Suffolk', 'England'),
(1799, 1, 'NR34', 'Weston', 'Suffolk', 'England'),
(1800, 1, 'NR35', 'Bungay', 'Suffolk', 'England'),
(1801, 1, 'NR4', 'Norwich', 'Norfolk', 'England'),
(1802, 1, 'NR5', 'Norwich', 'Norfolk', 'England'),
(1803, 1, 'NR6', 'Norwich', 'Norfolk', 'England'),
(1804, 1, 'NR7', 'Norwich', 'Norfolk', 'England'),
(1805, 1, 'NR8', 'Taverham', 'Norfolk', 'England'),
(1806, 1, 'NR9', 'Marlingford', 'Norfolk', 'England'),
(1807, 1, 'NW1', 'Camden Town', 'Greater London', 'England'),
(1808, 1, 'NW10', 'Brent', 'Greater London', 'England'),
(1809, 1, 'NW11', 'Barnet', 'Greater London', 'England'),
(1810, 1, 'NW2', 'Brent', 'Greater London', 'England'),
(1811, 1, 'NW3', 'Camden Town', 'Greater London', 'England'),
(1812, 1, 'NW4', 'Barnet', 'Greater London', 'England'),
(1813, 1, 'NW5', 'Camden Town', 'Greater London', 'England'),
(1814, 1, 'NW6', 'Camden Town', 'Greater London', 'England'),
(1815, 1, 'NW7', 'Barnet', 'Greater London', 'England'),
(1816, 1, 'NW8', 'Paddington', 'Greater London', 'England'),
(1817, 1, 'NW9', 'Brent', 'Greater London', 'England'),
(1818, 1, 'OL1', '', 'Oldham', 'England'),
(1819, 1, 'OL10', 'Heywood', 'Rochdale', 'England'),
(1820, 1, 'OL11', '', 'Rochdale', 'England'),
(1821, 1, 'OL12', '', 'Rochdale', 'England'),
(1822, 1, 'OL13', 'Rawtenstall', 'Lancashire', 'England'),
(1823, 1, 'OL14', 'Todmorden', 'Calderdale', 'England'),
(1824, 1, 'OL15', '', 'Rochdale', 'England'),
(1825, 1, 'OL16', '', 'Rochdale', 'England'),
(1826, 1, 'OL2', 'Shaw', 'Oldham', 'England'),
(1827, 1, 'OL3', 'Saddleworth', 'Oldham', 'England'),
(1828, 1, 'OL4', '', 'Oldham', 'England'),
(1829, 1, 'OL5', 'Mossley', 'Tameside', 'England'),
(1830, 1, 'OL6', 'Ashton-under-Lyne', 'Tameside', 'England'),
(1831, 1, 'OL7', 'Ashton-under-Lyne', 'Tameside', 'England'),
(1832, 1, 'OL8', '', 'Oldham', 'England'),
(1833, 1, 'OL9', '', 'Oldham', 'England'),
(1834, 1, 'OX1', 'Oxford', 'Oxfordshire', 'England'),
(1835, 1, 'OX10', 'Wallingford', 'Oxfordshire', 'England'),
(1836, 1, 'OX11', 'Didcot', 'Oxfordshire', 'England'),
(1837, 1, 'OX12', 'Wantage', 'Oxfordshire', 'England'),
(1838, 1, 'OX13', 'Marcham', 'Oxfordshire', 'England'),
(1839, 1, 'OX14', 'Culham', 'Oxfordshire', 'England'),
(1840, 1, 'OX15', 'Tadmarton', 'Oxfordshire', 'England'),
(1841, 1, 'OX16', 'Banbury', 'Oxfordshire', 'England'),
(1842, 1, 'OX17', 'Middleton Cheney', 'Northamptonshire', 'England'),
(1843, 1, 'OX18', 'Carterton', 'Oxfordshire', 'England'),
(1844, 1, 'OX2', 'Oxford', 'Oxfordshire', 'England'),
(1845, 1, 'OX20', 'Woodstock', 'Oxfordshire', 'England'),
(1846, 1, 'OX25', 'Chesterton', 'Oxfordshire', 'England'),
(1847, 1, 'OX26', 'Bicester', 'Oxfordshire', 'England'),
(1848, 1, 'OX27', 'Fringford', 'Oxfordshire', 'England'),
(1849, 1, 'OX28', 'Witney', 'Oxfordshire', 'England'),
(1850, 1, 'OX29', 'Eynsham', 'Oxfordshire', 'England'),
(1851, 1, 'OX3', 'Oxford', 'Oxfordshire', 'England'),
(1852, 1, 'OX33', 'Holton', 'Oxfordshire', 'England'),
(1853, 1, 'OX39', 'Chinnor', 'Oxfordshire', 'England'),
(1854, 1, 'OX4', 'Oxford', 'Oxfordshire', 'England'),
(1855, 1, 'OX44', 'Cuddesdon', 'Oxfordshire', 'England'),
(1856, 1, 'OX49', 'Watlington', 'Oxfordshire', 'England'),
(1857, 1, 'OX5', 'Kidlington', 'Oxfordshire', 'England'),
(1858, 1, 'OX6', 'Bicester', 'Oxfordshire', 'England'),
(1859, 1, 'OX7', 'Chadlington', 'Oxfordshire', 'England'),
(1860, 1, 'OX8', 'South Leigh', 'Oxfordshire', 'England'),
(1861, 1, 'OX9', 'Thame', 'Oxfordshire', 'England'),
(1862, 1, 'PA1', 'Paisley', 'Renfrewshire', 'Scotland');
INSERT INTO `states` (`id`, `country_id`, `postcode`, `area`, `region`, `country`) VALUES
(1863, 1, 'PA10', 'Kilbarchan', 'Renfrewshire', 'Scotland'),
(1864, 1, 'PA11', 'Ranfurly', 'Renfrewshire', 'Scotland'),
(1865, 1, 'PA12', 'Lochwinnoch', 'Renfrewshire', 'Scotland'),
(1866, 1, 'PA13', 'Kilmacolm', 'Inverclyde', 'Scotland'),
(1867, 1, 'PA14', 'Greenock', 'Inverclyde', 'Scotland'),
(1868, 1, 'PA15', 'Greenock', 'Inverclyde', 'Scotland'),
(1869, 1, 'PA16', 'Greenock', 'Inverclyde', 'Scotland'),
(1870, 1, 'PA17', 'Skelmorlie', 'North Ayrshire', 'Scotland'),
(1871, 1, 'PA18', 'Wemyss Bay', 'Inverclyde', 'Scotland'),
(1872, 1, 'PA19', 'Greenock', 'Inverclyde', 'Scotland'),
(1873, 1, 'PA2', 'Paisley', 'Renfrewshire', 'Scotland'),
(1874, 1, 'PA20', 'Rothesay', 'Argyll and Bute', 'Scotland'),
(1875, 1, 'PA21', 'Tighnabruaich', 'Argyll and Bute', 'Scotland'),
(1876, 1, 'PA22', '', 'Argyll and Bute', 'Scotland'),
(1877, 1, 'PA23', 'Port Riddell', 'Argyll and Bute', 'Scotland'),
(1878, 1, 'PA24', 'Lochgoilhead', 'Argyll and Bute', 'Scotland'),
(1879, 1, 'PA25', '', 'Argyll and Bute', 'Scotland'),
(1880, 1, 'PA26', 'Cairndow', 'Argyll and Bute', 'Scotland'),
(1881, 1, 'PA27', 'Strachur', 'Argyll and Bute', 'Scotland'),
(1882, 1, 'PA28', '', 'Argyll and Bute', 'Scotland'),
(1883, 1, 'PA29', '', 'Argyll and Bute', 'Scotland'),
(1884, 1, 'PA3', 'Paisley', 'Renfrewshire', 'Scotland'),
(1885, 1, 'PA30', 'Ardrishaig', 'Argyll and Bute', 'Scotland'),
(1886, 1, 'PA31', '', 'Argyll and Bute', 'Scotland'),
(1887, 1, 'PA32', '', 'Argyll and Bute', 'Scotland'),
(1888, 1, 'PA33', '', 'Argyll and Bute', 'Scotland'),
(1889, 1, 'PA34', '', 'Argyll and Bute', 'Scotland'),
(1890, 1, 'PA35', '', 'Argyll and Bute', 'Scotland'),
(1891, 1, 'PA36', 'Bridge of Orchy', 'Argyll and Bute', 'Scotland'),
(1892, 1, 'PA37', '', 'Argyll and Bute', 'Scotland'),
(1893, 1, 'PA38', '', 'Argyll and Bute', 'Scotland'),
(1894, 1, 'PA4', 'Renfrew', 'Renfrewshire', 'Scotland'),
(1895, 1, 'PA41', '', 'Argyll and Bute', 'Scotland'),
(1896, 1, 'PA42', 'Port Ellen', 'Argyll and Bute', 'Scotland'),
(1897, 1, 'PA43', 'Bowmore', 'Argyll and Bute', 'Scotland'),
(1898, 1, 'PA44', 'Blackrock', 'Argyll and Bute', 'Scotland'),
(1899, 1, 'PA45', 'Ballygrant', 'Argyll and Bute', 'Scotland'),
(1900, 1, 'PA46', 'Port Askaig', 'Argyll and Bute', 'Scotland'),
(1901, 1, 'PA47', 'Portnahaven', 'Argyll and Bute', 'Scotland'),
(1902, 1, 'PA48', 'Port Charlotte', 'Argyll and Bute', 'Scotland'),
(1903, 1, 'PA49', '', 'Argyll and Bute', 'Scotland'),
(1904, 1, 'PA5', 'Johnstone', 'Renfrewshire', 'Scotland'),
(1905, 1, 'PA6', '', 'Renfrewshire', 'Scotland'),
(1906, 1, 'PA60', '', 'Argyll and Bute', 'Scotland'),
(1907, 1, 'PA61', 'Scalasaig', 'Argyll and Bute', 'Scotland'),
(1908, 1, 'PA62', '', 'Argyll and Bute', 'Scotland'),
(1909, 1, 'PA63', '', 'Argyll and Bute', 'Scotland'),
(1910, 1, 'PA64', 'Lochdon', 'Argyll and Bute', 'Scotland'),
(1911, 1, 'PA65', '', 'Argyll and Bute', 'Scotland'),
(1912, 1, 'PA66', '', 'Argyll and Bute', 'Scotland'),
(1913, 1, 'PA67', 'Bunessan', 'Argyll and Bute', 'Scotland'),
(1914, 1, 'PA68', '', 'Argyll and Bute', 'Scotland'),
(1915, 1, 'PA69', '', 'Argyll and Bute', 'Scotland'),
(1916, 1, 'PA7', 'Bishopton', 'Renfrewshire', 'Scotland'),
(1917, 1, 'PA70', '', 'Argyll and Bute', 'Scotland'),
(1918, 1, 'PA71', '', 'Argyll and Bute', 'Scotland'),
(1919, 1, 'PA72', '', 'Argyll and Bute', 'Scotland'),
(1920, 1, 'PA73', '', 'Argyll and Bute', 'Scotland'),
(1921, 1, 'PA74', '', 'Argyll and Bute', 'Scotland'),
(1922, 1, 'PA75', '', 'Argyll and Bute', 'Scotland'),
(1923, 1, 'PA76', '', 'Argyll and Bute', 'Scotland'),
(1924, 1, 'PA77', 'Crossapol', 'Argyll and Bute', 'Scotland'),
(1925, 1, 'PA78', '', 'Argyll and Bute', 'Scotland'),
(1926, 1, 'PA8', '', 'Renfrewshire', 'Scotland'),
(1927, 1, 'PA9', 'Howwood', 'Renfrewshire', 'Scotland'),
(1928, 1, 'PE1', '', 'Peterborough', 'England'),
(1929, 1, 'PE10', 'Bourne', 'Lincolnshire', 'England'),
(1930, 1, 'PE11', 'Pinchbeck', 'Lincolnshire', 'England'),
(1931, 1, 'PE12', 'Fleet', 'Lincolnshire', 'England'),
(1932, 1, 'PE13', 'Wisbech', 'Cambridgeshire', 'England'),
(1933, 1, 'PE14', 'Emneth', 'Norfolk', 'England'),
(1934, 1, 'PE15', 'March', 'Cambridgeshire', 'England'),
(1935, 1, 'PE16', 'Chatteris', 'Cambridgeshire', 'England'),
(1936, 1, 'PE19', 'St Neots', 'Cambridgeshire', 'England'),
(1937, 1, 'PE2', '', 'Peterborough', 'England'),
(1938, 1, 'PE20', 'Swineshead', 'Lincolnshire', 'England'),
(1939, 1, 'PE21', 'Boston', 'Lincolnshire', 'England'),
(1940, 1, 'PE22', 'Old Leake', 'Lincolnshire', 'England'),
(1941, 1, 'PE23', 'Spilsby', 'Lincolnshire', 'England'),
(1942, 1, 'PE24', 'Burgh Le Marsh', 'Lincolnshire', 'England'),
(1943, 1, 'PE25', 'Skegness', 'Lincolnshire', 'England'),
(1944, 1, 'PE26', 'Ramsey', 'Cambridgeshire', 'England'),
(1945, 1, 'PE27', 'St Ives', 'Cambridgeshire', 'England'),
(1946, 1, 'PE28', 'The Stukeleys', 'Cambridgeshire', 'England'),
(1947, 1, 'PE29', 'Huntingdon', 'Cambridgeshire', 'England'),
(1948, 1, 'PE3', '', 'Peterborough', 'England'),
(1949, 1, 'PE30', 'King\'s Lynn', 'Norfolk', 'England'),
(1950, 1, 'PE31', 'Snettisham', 'Norfolk', 'England'),
(1951, 1, 'PE32', 'West Acre', 'Norfolk', 'England'),
(1952, 1, 'PE33', 'Shouldham', 'Norfolk', 'England'),
(1953, 1, 'PE34', 'Wiggenhall St Germans', 'Norfolk', 'England'),
(1954, 1, 'PE35', 'Sandringham', 'Norfolk', 'England'),
(1955, 1, 'PE36', 'Old Hunstanton', 'Norfolk', 'England'),
(1956, 1, 'PE37', 'Swaffham', 'Norfolk', 'England'),
(1957, 1, 'PE38', 'Denver', 'Norfolk', 'England'),
(1958, 1, 'PE4', '', 'Peterborough', 'England'),
(1959, 1, 'PE5', 'Ailsworth', 'Peterborough', 'England'),
(1960, 1, 'PE6', 'Deeping St James', 'Lincolnshire', 'England'),
(1961, 1, 'PE7', 'Farcet', 'Cambridgeshire', 'England'),
(1962, 1, 'PE8', 'Tansor', 'Northamptonshire', 'England'),
(1963, 1, 'PE9', 'Stamford', 'Lincolnshire', 'England'),
(1964, 1, 'PH1', '', 'Perth and Kinross', 'Scotland'),
(1965, 1, 'PH10', '', 'Perth and Kinross', 'Scotland'),
(1966, 1, 'PH11', '', 'Perth and Kinross', 'Scotland'),
(1967, 1, 'PH12', '', 'Perth and Kinross', 'Scotland'),
(1968, 1, 'PH13', '', 'Perth and Kinross', 'Scotland'),
(1969, 1, 'PH14', '', 'Perth and Kinross', 'Scotland'),
(1970, 1, 'PH15', '', 'Perth and Kinross', 'Scotland'),
(1971, 1, 'PH16', '', 'Perth and Kinross', 'Scotland'),
(1972, 1, 'PH17', 'Killichonan', 'Perth and Kinross', 'Scotland'),
(1973, 1, 'PH18', '', 'Perth and Kinross', 'Scotland'),
(1974, 1, 'PH19', 'Dalwhinnie', 'Highland', 'Scotland'),
(1975, 1, 'PH2', '', 'Perth and Kinross', 'Scotland'),
(1976, 1, 'PH20', '', 'Highland', 'Scotland'),
(1977, 1, 'PH21', '', 'Highland', 'Scotland'),
(1978, 1, 'PH22', 'Aviemore', 'Highland', 'Scotland'),
(1979, 1, 'PH23', '', 'Highland', 'Scotland'),
(1980, 1, 'PH24', 'Boat Of Garten', 'Highland', 'Scotland'),
(1981, 1, 'PH25', 'Nethy Bridge', 'Highland', 'Scotland'),
(1982, 1, 'PH26', 'Grantown-on-Spey', 'Highland', 'Scotland'),
(1983, 1, 'PH3', 'Auchterarder', 'Perth and Kinross', 'Scotland'),
(1984, 1, 'PH30', '', 'Highland', 'Scotland'),
(1985, 1, 'PH31', '', 'Highland', 'Scotland'),
(1986, 1, 'PH32', 'Fort Augustus', 'Highland', 'Scotland'),
(1987, 1, 'PH33', 'Fort William', 'Highland', 'Scotland'),
(1988, 1, 'PH34', '', 'Highland', 'Scotland'),
(1989, 1, 'PH35', '', 'Highland', 'Scotland'),
(1990, 1, 'PH36', 'Kentra', 'Highland', 'Scotland'),
(1991, 1, 'PH38', '', 'Highland', 'Scotland'),
(1992, 1, 'PH39', 'Arisaig', 'Highland', 'Scotland'),
(1993, 1, 'PH4', 'Blackford', 'Perth and Kinross', 'Scotland'),
(1994, 1, 'PH40', '', 'Highland', 'Scotland'),
(1995, 1, 'PH41', 'Mallaig', 'Highland', 'Scotland'),
(1996, 1, 'PH42', 'Isle Of Eigg', 'Highland', 'Scotland'),
(1997, 1, 'PH43', 'Isle Of Rum', 'Highland', 'Scotland'),
(1998, 1, 'PH44', 'Isle Of Canna', 'Highland', 'Scotland'),
(1999, 1, 'PH49', 'Glencoe', 'Highland', 'Scotland'),
(2000, 1, 'PH5', 'Muthill', 'Perth and Kinross', 'Scotland'),
(2001, 1, 'PH50', 'Kinlochleven', 'Highland', 'Scotland'),
(2002, 1, 'PH6', 'Comrie', 'Perth and Kinross', 'Scotland'),
(2003, 1, 'PH7', 'Crieff', 'Perth and Kinross', 'Scotland'),
(2004, 1, 'PH8', '', 'Perth and Kinross', 'Scotland'),
(2005, 1, 'PH9', '', 'Perth and Kinross', 'Scotland'),
(2006, 1, 'PL1', '', 'Plymouth', 'England'),
(2007, 1, 'PL10', 'Rame', 'Cornwall', 'England'),
(2008, 1, 'PL11', 'Antony', 'Cornwall', 'England'),
(2009, 1, 'PL12', 'Saltash', 'Cornwall', 'England'),
(2010, 1, 'PL13', 'Looe', 'Cornwall', 'England'),
(2011, 1, 'PL14', 'Liskeard', 'Cornwall', 'England'),
(2012, 1, 'PL15', 'South Petherwin', 'Cornwall', 'England'),
(2013, 1, 'PL16', 'Lifton', 'Devon', 'England'),
(2014, 1, 'PL17', 'Callington', 'Cornwall', 'England'),
(2015, 1, 'PL18', 'Calstock', 'Cornwall', 'England'),
(2016, 1, 'PL19', 'Tavistock', 'Devon', 'England'),
(2017, 1, 'PL2', '', 'Plymouth', 'England'),
(2018, 1, 'PL20', 'Horrabridge', 'Devon', 'England'),
(2019, 1, 'PL21', 'Ivybridge', 'Devon', 'England'),
(2020, 1, 'PL22', 'Lostwithiel', 'Cornwall', 'England'),
(2021, 1, 'PL23', 'Fowey', 'Cornwall', 'England'),
(2022, 1, 'PL24', 'St Blaise', 'Cornwall', 'England'),
(2023, 1, 'PL25', 'St Austell', 'Cornwall', 'England'),
(2024, 1, 'PL26', 'St Mewan', 'Cornwall', 'England'),
(2025, 1, 'PL27', 'St Breock', 'Cornwall', 'England'),
(2026, 1, 'PL28', 'Padstow', 'Cornwall', 'England'),
(2027, 1, 'PL29', 'St Endellion', 'Cornwall', 'England'),
(2028, 1, 'PL3', '', 'Plymouth', 'England'),
(2029, 1, 'PL30', 'Helland', 'Cornwall', 'England'),
(2030, 1, 'PL31', 'Bodmin', 'Cornwall', 'England'),
(2031, 1, 'PL32', 'Camelford', 'Cornwall', 'England'),
(2032, 1, 'PL33', 'St Teath', 'Cornwall', 'England'),
(2033, 1, 'PL34', 'Tintagel', 'Cornwall', 'England'),
(2034, 1, 'PL35', 'Forrabury and Minster', 'Cornwall', 'England'),
(2035, 1, 'PL4', '', 'Plymouth', 'England'),
(2036, 1, 'PL5', '', 'Plymouth', 'England'),
(2037, 1, 'PL6', '', 'Plymouth', 'England'),
(2038, 1, 'PL7', 'Plympton', 'Plymouth', 'England'),
(2039, 1, 'PL8', 'Yealmpton', 'Devon', 'England'),
(2040, 1, 'PL9', 'Plymstock', 'Plymouth', 'England'),
(2041, 1, 'PO1', '', 'Portsmouth', 'England'),
(2042, 1, 'PO10', 'Hermitage', 'West Sussex', 'England'),
(2043, 1, 'PO11', 'South Hayling', 'Hampshire', 'England'),
(2044, 1, 'PO12', 'Gosport', 'Hampshire', 'England'),
(2045, 1, 'PO13', 'Gosport', 'Hampshire', 'England'),
(2046, 1, 'PO14', '', 'Hampshire', 'England'),
(2047, 1, 'PO15', '', 'Hampshire', 'England'),
(2048, 1, 'PO16', '', 'Hampshire', 'England'),
(2049, 1, 'PO17', 'Wickham', 'Hampshire', 'England'),
(2050, 1, 'PO18', 'Funtington', 'West Sussex', 'England'),
(2051, 1, 'PO19', 'Chichester', 'West Sussex', 'England'),
(2052, 1, 'PO2', '', 'Portsmouth', 'England'),
(2053, 1, 'PO20', 'Sidlesham', 'West Sussex', 'England'),
(2054, 1, 'PO21', 'Aldwick', 'West Sussex', 'England'),
(2055, 1, 'PO22', 'Felpham', 'West Sussex', 'England'),
(2056, 1, 'PO3', '', 'Portsmouth', 'England'),
(2057, 1, 'PO30', 'Newport', 'Isle Of Wight', 'England'),
(2058, 1, 'PO31', 'Cowes', 'Isle Of Wight', 'England'),
(2059, 1, 'PO32', 'Newport', 'Isle Of Wight', 'England'),
(2060, 1, 'PO33', 'Newport', 'Isle Of Wight', 'England'),
(2061, 1, 'PO34', 'Nettlestone', 'Isle Of Wight', 'England'),
(2062, 1, 'PO35', 'Bembridge', 'Isle Of Wight', 'England'),
(2063, 1, 'PO36', 'Sandown', 'Isle Of Wight', 'England'),
(2064, 1, 'PO37', 'Shanklin', 'Isle Of Wight', 'England'),
(2065, 1, 'PO38', 'Ventnor', 'Isle Of Wight', 'England'),
(2066, 1, 'PO39', 'Totland', 'Isle Of Wight', 'England'),
(2067, 1, 'PO4', '', 'Portsmouth', 'England'),
(2068, 1, 'PO40', 'Freshwater', 'Isle Of Wight', 'England'),
(2069, 1, 'PO41', 'Yarmouth', 'Isle Of Wight', 'England'),
(2070, 1, 'PO5', '', 'Portsmouth', 'England'),
(2071, 1, 'PO6', '', 'Portsmouth', 'England'),
(2072, 1, 'PO7', 'Southwick', 'Hampshire', 'England'),
(2073, 1, 'PO8', 'Horndean', 'Hampshire', 'England'),
(2074, 1, 'PO9', 'Havant', 'Hampshire', 'England'),
(2075, 1, 'PR1', 'Preston', 'Lancashire', 'England'),
(2076, 1, 'PR2', 'Preston', 'Lancashire', 'England'),
(2077, 1, 'PR25', 'Leyland', 'Lancashire', 'England'),
(2078, 1, 'PR26', 'Leyland', 'Lancashire', 'England'),
(2079, 1, 'PR3', 'Claughton', 'Lancashire', 'England'),
(2080, 1, 'PR4', 'Freckleton', 'Lancashire', 'England'),
(2081, 1, 'PR5', 'Bamber Bridge', 'Lancashire', 'England'),
(2082, 1, 'PR6', 'Chorley', 'Lancashire', 'England'),
(2083, 1, 'PR7', 'Chorley', 'Lancashire', 'England'),
(2084, 1, 'PR8', 'Southport', 'Sefton', 'England'),
(2085, 1, 'PR9', 'Southport', 'Sefton', 'England'),
(2086, 1, 'RG1', '', 'Reading', 'England'),
(2087, 1, 'RG10', 'Twyford', 'Wokingham', 'England'),
(2088, 1, 'RG12', 'Bracknell', 'Bracknell Forest', 'England'),
(2089, 1, 'RG14', 'Newbury', 'West Berkshire', 'England'),
(2090, 1, 'RG17', 'Hungerford', 'West Berkshire', 'England'),
(2091, 1, 'RG18', 'Bucklebury', 'West Berkshire', 'England'),
(2092, 1, 'RG19', 'Thatcham', 'West Berkshire', 'England'),
(2093, 1, 'RG2', '', 'Reading', 'England'),
(2094, 1, 'RG20', 'Newbury', 'West Berkshire', 'England'),
(2095, 1, 'RG21', 'Basingstoke', 'Hampshire', 'England'),
(2096, 1, 'RG22', 'Basingstoke', 'Hampshire', 'England'),
(2097, 1, 'RG23', 'Basingstoke', 'Hampshire', 'England'),
(2098, 1, 'RG24', 'Basingstoke', 'Hampshire', 'England'),
(2099, 1, 'RG25', 'Dummer', 'Hampshire', 'England'),
(2100, 1, 'RG26', 'Pamber', 'Hampshire', 'England'),
(2101, 1, 'RG27', 'Hook', 'Hampshire', 'England'),
(2102, 1, 'RG28', 'Whitchurch', 'Hampshire', 'England'),
(2103, 1, 'RG29', 'Odiham', 'Hampshire', 'England'),
(2104, 1, 'RG30', '', 'Reading', 'England'),
(2105, 1, 'RG31', '', 'Reading', 'England'),
(2106, 1, 'RG4', '', 'Reading', 'England'),
(2107, 1, 'RG40', '', 'Wokingham', 'England'),
(2108, 1, 'RG41', '', 'Wokingham', 'England'),
(2109, 1, 'RG42', 'Warfield', 'Bracknell Forest', 'England'),
(2110, 1, 'RG45', 'Wokingham Without', 'Wokingham', 'England'),
(2111, 1, 'RG5', 'Woodley', 'Wokingham', 'England'),
(2112, 1, 'RG6', 'Earley', 'Wokingham', 'England'),
(2113, 1, 'RG7', 'Sulhamstead', 'West Berkshire', 'England'),
(2114, 1, 'RG8', 'Whitchurch-on-Thames', 'Oxfordshire', 'England'),
(2115, 1, 'RG9', 'Rotherfield Greys', 'Oxfordshire', 'England'),
(2116, 1, 'RH1', 'Reigate and Banstead', 'Surrey', 'England'),
(2117, 1, 'RH10', 'Crawley', 'West Sussex', 'England'),
(2118, 1, 'RH11', 'Crawley', 'West Sussex', 'England'),
(2119, 1, 'RH12', 'Horsham', 'West Sussex', 'England'),
(2120, 1, 'RH13', 'Southwater', 'West Sussex', 'England'),
(2121, 1, 'RH14', 'Wisborough Green', 'West Sussex', 'England'),
(2122, 1, 'RH15', 'Burgess Hill', 'West Sussex', 'England'),
(2123, 1, 'RH16', 'Haywards Heath', 'West Sussex', 'England'),
(2124, 1, 'RH17', 'Cuckfield Rural', 'West Sussex', 'England'),
(2125, 1, 'RH18', 'Forest Row', 'East Sussex', 'England'),
(2126, 1, 'RH19', 'East Grinstead', 'West Sussex', 'England'),
(2127, 1, 'RH2', 'Reigate and Banstead', 'Surrey', 'England'),
(2128, 1, 'RH20', 'Storrington', 'West Sussex', 'England'),
(2129, 1, 'RH3', 'Brockham', 'Surrey', 'England'),
(2130, 1, 'RH4', 'Dorking', 'Surrey', 'England'),
(2131, 1, 'RH5', 'Capel', 'Surrey', 'England'),
(2132, 1, 'RH6', 'Horley', 'Surrey', 'England'),
(2133, 1, 'RH7', 'Lingfield', 'Surrey', 'England'),
(2134, 1, 'RH8', 'Limpsfield', 'Surrey', 'England'),
(2135, 1, 'RH9', 'Godstone', 'Surrey', 'England'),
(2136, 1, 'RM1', 'Romford', 'Greater London', 'England'),
(2137, 1, 'RM10', 'Barking', 'Greater London', 'England'),
(2138, 1, 'RM11', 'Romford', 'Greater London', 'England'),
(2139, 1, 'RM12', 'Romford', 'Greater London', 'England'),
(2140, 1, 'RM13', 'Romford', 'Greater London', 'England'),
(2141, 1, 'RM14', 'Romford', 'Greater London', 'England'),
(2142, 1, 'RM15', '', 'Thurrock', 'England'),
(2143, 1, 'RM16', '', 'Thurrock', 'England'),
(2144, 1, 'RM17', '', 'Thurrock', 'England'),
(2145, 1, 'RM18', '', 'Thurrock', 'England'),
(2146, 1, 'RM19', '', 'Thurrock', 'England'),
(2147, 1, 'RM2', 'Romford', 'Greater London', 'England'),
(2148, 1, 'RM20', '', 'Thurrock', 'England'),
(2149, 1, 'RM3', 'Romford', 'Greater London', 'England'),
(2150, 1, 'RM4', 'Stapleford Abbotts', 'Essex', 'England'),
(2151, 1, 'RM5', 'Romford', 'Greater London', 'England'),
(2152, 1, 'RM6', 'Barking', 'Greater London', 'England'),
(2153, 1, 'RM7', 'Romford', 'Greater London', 'England'),
(2154, 1, 'RM8', 'Barking', 'Greater London', 'England'),
(2155, 1, 'RM9', 'Barking', 'Greater London', 'England'),
(2156, 1, 'S1', 'Norton', 'Sheffield', 'England'),
(2157, 1, 'S10', 'Norton', 'Sheffield', 'England'),
(2158, 1, 'S11', 'Norton', 'Sheffield', 'England'),
(2159, 1, 'S12', 'Norton', 'Sheffield', 'England'),
(2160, 1, 'S13', 'Norton', 'Sheffield', 'England'),
(2161, 1, 'S14', 'Norton', 'Sheffield', 'England'),
(2162, 1, 'S17', 'Norton', 'Sheffield', 'England'),
(2163, 1, 'S18', 'Dronfield', 'Derbyshire', 'England'),
(2164, 1, 'S2', 'Norton', 'Sheffield', 'England'),
(2165, 1, 'S20', 'Norton', 'Sheffield', 'England'),
(2166, 1, 'S21', 'Eckington', 'Derbyshire', 'England'),
(2167, 1, 'S25', 'Dinnington', 'Rotherham', 'England'),
(2168, 1, 'S26', 'Todwick', 'Rotherham', 'England'),
(2169, 1, 'S3', 'Norton', 'Sheffield', 'England'),
(2170, 1, 'S32', 'Grindleford', 'Derbyshire', 'England'),
(2171, 1, 'S33', 'Aston', 'Derbyshire', 'England'),
(2172, 1, 'S35', 'Ecclesfield', 'Sheffield', 'England'),
(2173, 1, 'S36', 'Hunshelf', 'Barnsley', 'England'),
(2174, 1, 'S4', 'Norton', 'Sheffield', 'England'),
(2175, 1, 'S40', 'Chesterfield', 'Derbyshire', 'England'),
(2176, 1, 'S41', 'Chesterfield', 'Derbyshire', 'England'),
(2177, 1, 'S42', 'Wingerworth', 'Derbyshire', 'England'),
(2178, 1, 'S43', 'Staveley', 'Derbyshire', 'England'),
(2179, 1, 'S44', 'Bolsover', 'Derbyshire', 'England'),
(2180, 1, 'S45', 'Clay Cross', 'Derbyshire', 'England'),
(2181, 1, 'S5', 'Norton', 'Sheffield', 'England'),
(2182, 1, 'S6', 'Norton', 'Sheffield', 'England'),
(2183, 1, 'S60', '', 'Rotherham', 'England'),
(2184, 1, 'S61', '', 'Rotherham', 'England'),
(2185, 1, 'S62', 'Rawmarsh', 'Rotherham', 'England'),
(2186, 1, 'S63', '', 'Barnsley', 'England'),
(2187, 1, 'S64', '', 'Rotherham', 'England'),
(2188, 1, 'S65', '', 'Rotherham', 'England'),
(2189, 1, 'S66', 'Bramley', 'Rotherham', 'England'),
(2190, 1, 'S7', 'Norton', 'Sheffield', 'England'),
(2191, 1, 'S70', '', 'Barnsley', 'England'),
(2192, 1, 'S71', '', 'Barnsley', 'England'),
(2193, 1, 'S72', 'Brierley', 'Barnsley', 'England'),
(2194, 1, 'S73', 'Darfield', 'Barnsley', 'England'),
(2195, 1, 'S74', 'Hoyland', 'Barnsley', 'England'),
(2196, 1, 'S75', '', 'Barnsley', 'England'),
(2197, 1, 'S8', 'Norton', 'Sheffield', 'England'),
(2198, 1, 'S80', 'Clumber and Hardwick', 'Nottinghamshire', 'England'),
(2199, 1, 'S81', 'Carlton in Lindrick', 'Nottinghamshire', 'England'),
(2200, 1, 'S9', 'Norton', 'Sheffield', 'England'),
(2201, 1, 'SA1', 'Landore', 'Swansea', 'Wales'),
(2202, 1, 'SA10', 'Blaenhonddan', 'Neath Port Talbot', 'Wales'),
(2203, 1, 'SA11', 'Tonna', 'Neath Port Talbot', 'Wales'),
(2204, 1, 'SA12', 'Baglan', 'Neath Port Talbot', 'Wales'),
(2205, 1, 'SA13', 'Bryn', 'Neath Port Talbot', 'Wales'),
(2206, 1, 'SA14', 'Llannon', 'Carmarthenshire', 'Wales'),
(2207, 1, 'SA15', 'Llanelli Rural', 'Carmarthenshire', 'Wales'),
(2208, 1, 'SA16', 'Cefn Sidan', 'Carmarthenshire', 'Wales'),
(2209, 1, 'SA17', 'Kidwelly', 'Carmarthenshire', 'Wales'),
(2210, 1, 'SA18', 'Betws', 'Carmarthenshire', 'Wales'),
(2211, 1, 'SA19', 'Talley', 'Carmarthenshire', 'Wales'),
(2212, 1, 'SA2', 'Sketty', 'Swansea', 'Wales'),
(2213, 1, 'SA20', 'Llandovery', 'Carmarthenshire', 'Wales'),
(2214, 1, 'SA3', 'Bishopston', 'Swansea', 'Wales'),
(2215, 1, 'SA31', 'Carmarthen', 'Carmarthenshire', 'Wales'),
(2216, 1, 'SA32', 'Llanegwad', 'Carmarthenshire', 'Wales'),
(2217, 1, 'SA33', 'Meidrim', 'Carmarthenshire', 'Wales'),
(2218, 1, 'SA34', 'Llanfallteg', 'Carmarthenshire', 'Wales'),
(2219, 1, 'SA35', 'Clydau', 'Pembrokeshire', 'Wales'),
(2220, 1, 'SA36', 'Crymych', 'Pembrokeshire', 'Wales'),
(2221, 1, 'SA37', 'Boncath', 'Pembrokeshire', 'Wales'),
(2222, 1, 'SA38', 'Newcastle Emlyn', 'Carmarthenshire', 'Wales'),
(2223, 1, 'SA39', 'Llanfihangel-Ar-Arth', 'Carmarthenshire', 'Wales'),
(2224, 1, 'SA4', 'Gorseinon', 'Swansea', 'Wales'),
(2225, 1, 'SA40', 'Llanwenog', 'Ceredigion', 'Wales'),
(2226, 1, 'SA41', 'Eglwyswrw', 'Pembrokeshire', 'Wales'),
(2227, 1, 'SA42', 'Newport', 'Pembrokeshire', 'Wales'),
(2228, 1, 'SA43', 'Llangoedmor', 'Ceredigion', 'Wales'),
(2229, 1, 'SA44', 'Troedyraur', 'Ceredigion', 'Wales'),
(2230, 1, 'SA45', 'New Quay', 'Ceredigion', 'Wales'),
(2231, 1, 'SA46', 'Aberaeron', 'Ceredigion', 'Wales'),
(2232, 1, 'SA47', 'Llanarth', 'Ceredigion', 'Wales'),
(2233, 1, 'SA48', 'Llangybi', 'Ceredigion', 'Wales'),
(2234, 1, 'SA5', 'Penderry', 'Swansea', 'Wales'),
(2235, 1, 'SA6', 'Morriston', 'Swansea', 'Wales'),
(2236, 1, 'SA61', 'Haverfordwest', 'Pembrokeshire', 'Wales'),
(2237, 1, 'SA62', 'Nolton', 'Pembrokeshire', 'Wales'),
(2238, 1, 'SA63', 'Wiston', 'Pembrokeshire', 'Wales'),
(2239, 1, 'SA64', 'Pencaer', 'Pembrokeshire', 'Wales'),
(2240, 1, 'SA65', 'Fishguard', 'Pembrokeshire', 'Wales'),
(2241, 1, 'SA66', 'Maenclochog', 'Pembrokeshire', 'Wales'),
(2242, 1, 'SA67', 'Narberth', 'Pembrokeshire', 'Wales'),
(2243, 1, 'SA68', 'Jeffreyston', 'Pembrokeshire', 'Wales'),
(2244, 1, 'SA69', 'Saundersfoot', 'Pembrokeshire', 'Wales'),
(2245, 1, 'SA7', 'Llansamlet', 'Swansea', 'Wales'),
(2246, 1, 'SA70', 'Penally', 'Pembrokeshire', 'Wales'),
(2247, 1, 'SA71', 'Pembroke', 'Pembrokeshire', 'Wales'),
(2248, 1, 'SA72', 'Pembroke Dock', 'Pembrokeshire', 'Wales'),
(2249, 1, 'SA73', 'Milford Haven', 'Pembrokeshire', 'Wales'),
(2250, 1, 'SA8', 'Pontardawe', 'Neath Port Talbot', 'Wales'),
(2251, 1, 'SA9', 'Ystradgynlais', 'Powys', 'Wales'),
(2252, 1, 'SE1', 'Camberwell', 'Greater London', 'England'),
(2253, 1, 'SE10', 'Greenwich', 'Greater London', 'England'),
(2254, 1, 'SE11', 'Lambeth', 'Greater London', 'England'),
(2255, 1, 'SE12', 'Greenwich', 'Greater London', 'England'),
(2256, 1, 'SE13', 'Lewisham', 'Greater London', 'England'),
(2257, 1, 'SE14', 'Lewisham', 'Greater London', 'England'),
(2258, 1, 'SE15', 'Camberwell', 'Greater London', 'England'),
(2259, 1, 'SE16', 'Camberwell', 'Greater London', 'England'),
(2260, 1, 'SE17', 'Camberwell', 'Greater London', 'England'),
(2261, 1, 'SE18', 'Eltham', 'Greater London', 'England'),
(2262, 1, 'SE19', 'Croydon', 'Greater London', 'England'),
(2263, 1, 'SE2', 'Eltham', 'Greater London', 'England'),
(2264, 1, 'SE20', 'Bromley', 'Greater London', 'England'),
(2265, 1, 'SE21', 'Camberwell', 'Greater London', 'England'),
(2266, 1, 'SE22', 'Camberwell', 'Greater London', 'England'),
(2267, 1, 'SE23', 'Lewisham', 'Greater London', 'England'),
(2268, 1, 'SE24', 'Camberwell', 'Greater London', 'England'),
(2269, 1, 'SE25', 'Croydon', 'Greater London', 'England'),
(2270, 1, 'SE26', 'Lewisham', 'Greater London', 'England'),
(2271, 1, 'SE27', 'Lambeth', 'Greater London', 'England'),
(2272, 1, 'SE28', 'Eltham', 'Greater London', 'England'),
(2273, 1, 'SE3', 'Greenwich', 'Greater London', 'England'),
(2274, 1, 'SE4', 'Lewisham', 'Greater London', 'England'),
(2275, 1, 'SE5', 'Camberwell', 'Greater London', 'England'),
(2276, 1, 'SE6', 'Lewisham', 'Greater London', 'England'),
(2277, 1, 'SE7', 'Greenwich', 'Greater London', 'England'),
(2278, 1, 'SE8', 'Lewisham', 'Greater London', 'England'),
(2279, 1, 'SE9', 'Eltham', 'Greater London', 'England'),
(2280, 1, 'SG1', 'Stevenage', 'Hertfordshire', 'England'),
(2281, 1, 'SG10', 'Much Hadham', 'Hertfordshire', 'England'),
(2282, 1, 'SG11', 'Standon', 'Hertfordshire', 'England'),
(2283, 1, 'SG12', 'Ware', 'Hertfordshire', 'England'),
(2284, 1, 'SG13', 'Hertford', 'Hertfordshire', 'England'),
(2285, 1, 'SG14', 'Hertford', 'Hertfordshire', 'England'),
(2286, 1, 'SG15', 'Arlesey', 'Central Bedfordshire', 'England'),
(2287, 1, 'SG16', 'Henlow', 'Central Bedfordshire', 'England'),
(2288, 1, 'SG17', 'Shefford', 'Central Bedfordshire', 'England'),
(2289, 1, 'SG18', 'Biggleswade', 'Central Bedfordshire', 'England'),
(2290, 1, 'SG19', 'Everton', 'Central Bedfordshire', 'England'),
(2291, 1, 'SG2', 'Stevenage', 'Hertfordshire', 'England'),
(2292, 1, 'SG3', 'Knebworth', 'Hertfordshire', 'England'),
(2293, 1, 'SG4', 'Ippollitts', 'Hertfordshire', 'England'),
(2294, 1, 'SG5', 'Ickleford', 'Hertfordshire', 'England'),
(2295, 1, 'SG6', 'Hitchin', 'Hertfordshire', 'England'),
(2296, 1, 'SG7', 'Bygrave', 'Hertfordshire', 'England'),
(2297, 1, 'SG8', 'Melbourn', 'Cambridgeshire', 'England'),
(2298, 1, 'SG9', 'Buntingford', 'Hertfordshire', 'England'),
(2299, 1, 'SK1', '', 'Stockport', 'England'),
(2300, 1, 'SK10', 'Macclesfield', 'Cheshire East', 'England'),
(2301, 1, 'SK11', 'Macclesfield', 'Cheshire East', 'England'),
(2302, 1, 'SK12', 'Poynton', 'Cheshire East', 'England'),
(2303, 1, 'SK13', 'Glossop', 'Derbyshire', 'England'),
(2304, 1, 'SK14', 'Ashton-under-Lyne', 'Tameside', 'England'),
(2305, 1, 'SK15', '', 'Tameside', 'England'),
(2306, 1, 'SK16', 'Ashton-under-Lyne', 'Tameside', 'England'),
(2307, 1, 'SK17', 'King Sterndale', 'Derbyshire', 'England'),
(2308, 1, 'SK2', '', 'Stockport', 'England'),
(2309, 1, 'SK22', 'New Mills', 'Derbyshire', 'England'),
(2310, 1, 'SK23', 'Chapel-en-le-Frith', 'Derbyshire', 'England'),
(2311, 1, 'SK3', '', 'Stockport', 'England'),
(2312, 1, 'SK4', '', 'Stockport', 'England'),
(2313, 1, 'SK5', '', 'Stockport', 'England'),
(2314, 1, 'SK6', '', 'Stockport', 'England'),
(2315, 1, 'SK7', 'Cheadle', 'Stockport', 'England'),
(2316, 1, 'SK8', '', 'Stockport', 'England'),
(2317, 1, 'SK9', 'Macclesfield', 'Cheshire East', 'England'),
(2318, 1, 'SL0', 'Iver', 'Buckinghamshire', 'England'),
(2319, 1, 'SL1', 'Colnbrook with Poyle', 'Slough', 'England'),
(2320, 1, 'SL2', 'Colnbrook with Poyle', 'Slough', 'England'),
(2321, 1, 'SL3', 'Colnbrook with Poyle', 'Slough', 'England'),
(2322, 1, 'SL4', 'Windsor', 'Windsor and Maidenhead', 'England'),
(2323, 1, 'SL5', 'Sunninghill', 'Windsor and Maidenhead', 'England'),
(2324, 1, 'SL6', 'Maidenhead', 'Windsor and Maidenhead', 'England'),
(2325, 1, 'SL7', 'Marlow', 'Buckinghamshire', 'England'),
(2326, 1, 'SL8', 'Wooburn', 'Buckinghamshire', 'England'),
(2327, 1, 'SL9', 'Chalfont St Peter', 'Buckinghamshire', 'England'),
(2328, 1, 'SM1', 'Sutton', 'Greater London', 'England'),
(2329, 1, 'SM2', 'Sutton', 'Greater London', 'England'),
(2330, 1, 'SM3', 'Sutton', 'Greater London', 'England'),
(2331, 1, 'SM4', 'Merton', 'Greater London', 'England'),
(2332, 1, 'SM5', 'Sutton', 'Greater London', 'England'),
(2333, 1, 'SM6', 'Sutton', 'Greater London', 'England'),
(2334, 1, 'SM7', 'Reigate and Banstead', 'Surrey', 'England'),
(2335, 1, 'SN1', '', 'Swindon', 'England'),
(2336, 1, 'SN10', 'Roundway', 'Wiltshire', 'England'),
(2337, 1, 'SN11', 'Calne', 'Wiltshire', 'England'),
(2338, 1, 'SN12', 'Melksham', 'Wiltshire', 'England'),
(2339, 1, 'SN13', 'Corsham', 'Wiltshire', 'England'),
(2340, 1, 'SN14', 'Yatton Keynell', 'Wiltshire', 'England'),
(2341, 1, 'SN15', 'Bremhill', 'Wiltshire', 'England'),
(2342, 1, 'SN16', 'Malmesbury', 'Wiltshire', 'England'),
(2343, 1, 'SN2', '', 'Swindon', 'England'),
(2344, 1, 'SN25', 'Haydon Wick', 'Swindon', 'England'),
(2345, 1, 'SN26', 'Blunsdon St Andrew', 'Swindon', 'England'),
(2346, 1, 'SN3', '', 'Swindon', 'England'),
(2347, 1, 'SN4', 'Wroughton', 'Swindon', 'England'),
(2348, 1, 'SN5', '', 'Swindon', 'England'),
(2349, 1, 'SN6', 'Stanton Fitzwarren', 'Swindon', 'England'),
(2350, 1, 'SN7', 'Shellingford', 'Oxfordshire', 'England'),
(2351, 1, 'SN8', 'Savernake', 'Wiltshire', 'England'),
(2352, 1, 'SN9', 'Manningford', 'Wiltshire', 'England'),
(2353, 1, 'SO14', '', 'Southampton', 'England'),
(2354, 1, 'SO15', '', 'Southampton', 'England'),
(2355, 1, 'SO16', '', 'Southampton', 'England'),
(2356, 1, 'SO17', '', 'Southampton', 'England'),
(2357, 1, 'SO18', '', 'Southampton', 'England'),
(2358, 1, 'SO19', '', 'Southampton', 'England'),
(2359, 1, 'SO20', 'Longstock', 'Hampshire', 'England'),
(2360, 1, 'SO21', 'Winchester', 'Hampshire', 'England'),
(2361, 1, 'SO22', 'Winchester', 'Hampshire', 'England'),
(2362, 1, 'SO23', 'Winchester', 'Hampshire', 'England'),
(2363, 1, 'SO24', 'Bishops Sutton', 'Hampshire', 'England'),
(2364, 1, 'SO30', 'Hedge End', 'Hampshire', 'England'),
(2365, 1, 'SO31', 'Locks Heath', 'Hampshire', 'England'),
(2366, 1, 'SO32', 'Bishops Waltham', 'Hampshire', 'England'),
(2367, 1, 'SO40', 'Totton', 'Hampshire', 'England'),
(2368, 1, 'SO41', 'Lymington', 'Hampshire', 'England'),
(2369, 1, 'SO42', 'Denny Lodge', 'Hampshire', 'England'),
(2370, 1, 'SO43', 'Lyndhurst', 'Hampshire', 'England'),
(2371, 1, 'SO45', 'Hythe', 'Hampshire', 'England'),
(2372, 1, 'SO50', 'Eastleigh', 'Hampshire', 'England'),
(2373, 1, 'SO51', 'Romsey', 'Hampshire', 'England'),
(2374, 1, 'SO52', 'North Baddesley', 'Hampshire', 'England'),
(2375, 1, 'SO53', 'Eastleigh', 'Hampshire', 'England'),
(2376, 1, 'SP1', 'Salisbury', 'Wiltshire', 'England'),
(2377, 1, 'SP10', 'Andover', 'Hampshire', 'England'),
(2378, 1, 'SP11', 'Charlton', 'Hampshire', 'England'),
(2379, 1, 'SP2', 'Salisbury', 'Wiltshire', 'England'),
(2380, 1, 'SP3', 'Dinton', 'Wiltshire', 'England'),
(2381, 1, 'SP4', 'Amesbury', 'Wiltshire', 'England'),
(2382, 1, 'SP5', 'Downton', 'Wiltshire', 'England'),
(2383, 1, 'SP6', 'Fordingbridge', 'Hampshire', 'England'),
(2384, 1, 'SP7', 'Shaftesbury', 'Dorset', 'England'),
(2385, 1, 'SP8', 'Gillingham', 'Dorset', 'England'),
(2386, 1, 'SP9', 'South Tidworth', 'Hampshire', 'England'),
(2387, 1, 'SR1', '', 'Sunderland', 'England'),
(2388, 1, 'SR2', '', 'Sunderland', 'England'),
(2389, 1, 'SR3', 'Houghton-le-Spring', 'Sunderland', 'England'),
(2390, 1, 'SR4', 'Houghton-le-Spring', 'Sunderland', 'England'),
(2391, 1, 'SR5', 'Castletown', 'Sunderland', 'England'),
(2392, 1, 'SR6', '', 'Sunderland', 'England'),
(2393, 1, 'SR7', 'Dalton-le-Dale', 'County Durham', 'England'),
(2394, 1, 'SR8', 'Peterlee', 'County Durham', 'England'),
(2395, 1, 'SR9', '', 'Sunderland', 'England'),
(2396, 1, 'SS0', '', 'Southend-on-Sea', 'England'),
(2397, 1, 'SS1', '', 'Southend-on-Sea', 'England'),
(2398, 1, 'SS11', 'Wickford', 'Essex', 'England'),
(2399, 1, 'SS12', 'Wickford', 'Essex', 'England'),
(2400, 1, 'SS13', 'Basildon', 'Essex', 'England'),
(2401, 1, 'SS14', 'Basildon', 'Essex', 'England'),
(2402, 1, 'SS15', 'Basildon', 'Essex', 'England'),
(2403, 1, 'SS16', 'Basildon', 'Essex', 'England'),
(2404, 1, 'SS17', 'Corringham', 'Thurrock', 'England'),
(2405, 1, 'SS2', '', 'Southend-on-Sea', 'England'),
(2406, 1, 'SS3', '', 'Southend-on-Sea', 'England'),
(2407, 1, 'SS4', 'Rochford', 'Essex', 'England'),
(2408, 1, 'SS5', 'Hockley', 'Essex', 'England'),
(2409, 1, 'SS6', 'Rayleigh', 'Essex', 'England'),
(2410, 1, 'SS7', 'Canvey Island', 'Essex', 'England'),
(2411, 1, 'SS8', 'Canvey Island', 'Essex', 'England'),
(2412, 1, 'SS9', '', 'Southend-on-Sea', 'England'),
(2413, 1, 'ST1', '', 'Stoke-on-Trent', 'England'),
(2414, 1, 'ST10', 'Cheadle', 'Staffordshire', 'England'),
(2415, 1, 'ST11', 'Forsbrook', 'Staffordshire', 'England'),
(2416, 1, 'ST12', 'Barlaston', 'Staffordshire', 'England'),
(2417, 1, 'ST13', 'Leek', 'Staffordshire', 'England'),
(2418, 1, 'ST14', 'Uttoxeter', 'Staffordshire', 'England'),
(2419, 1, 'ST15', 'Stone', 'Staffordshire', 'England'),
(2420, 1, 'ST16', 'Stafford', 'Staffordshire', 'England'),
(2421, 1, 'ST17', 'Stafford', 'Staffordshire', 'England'),
(2422, 1, 'ST18', 'Hopton', 'Staffordshire', 'England'),
(2423, 1, 'ST19', 'Penkridge', 'Staffordshire', 'England'),
(2424, 1, 'ST2', '', 'Stoke-on-Trent', 'England'),
(2425, 1, 'ST20', 'Gnosall', 'Staffordshire', 'England'),
(2426, 1, 'ST21', 'Eccleshall', 'Staffordshire', 'England'),
(2427, 1, 'ST3', '', 'Stoke-on-Trent', 'England'),
(2428, 1, 'ST4', '', 'Stoke-on-Trent', 'England'),
(2429, 1, 'ST5', 'Newcastle-under-Lyme', 'Staffordshire', 'England'),
(2430, 1, 'ST6', '', 'Stoke-on-Trent', 'England'),
(2431, 1, 'ST7', 'Kidsgrove', 'Staffordshire', 'England'),
(2432, 1, 'ST8', 'Biddulph', 'Staffordshire', 'England'),
(2433, 1, 'ST9', 'Bagnall', 'Staffordshire', 'England'),
(2434, 1, 'SW1', '', 'Westminster', 'England'),
(2435, 1, 'SW10', 'Kensington', 'Greater London', 'England'),
(2436, 1, 'SW11', 'Wandsworth', 'Greater London', 'England'),
(2437, 1, 'SW12', 'Wandsworth', 'Greater London', 'England'),
(2438, 1, 'SW13', 'Richmond', 'Greater London', 'England'),
(2439, 1, 'SW14', 'Richmond', 'Greater London', 'England'),
(2440, 1, 'SW15', 'Wandsworth', 'Greater London', 'England'),
(2441, 1, 'SW16', 'Lambeth', 'Greater London', 'England'),
(2442, 1, 'SW17', 'Wandsworth', 'Greater London', 'England'),
(2443, 1, 'SW18', 'Wandsworth', 'Greater London', 'England'),
(2444, 1, 'SW19', 'Merton', 'Greater London', 'England'),
(2445, 1, 'SW1A', '', 'Westminster', 'England'),
(2446, 1, 'SW1E', '', 'Westminster', 'England'),
(2447, 1, 'SW1H', '', 'Westminster', 'England'),
(2448, 1, 'SW1P', '', 'Westminster', 'England'),
(2449, 1, 'SW1V', '', 'Westminster', 'England'),
(2450, 1, 'SW1W', '', 'Westminster', 'England'),
(2451, 1, 'SW1X', '', 'Westminster', 'England'),
(2452, 1, 'SW1Y', '', 'Westminster', 'England'),
(2453, 1, 'SW2', 'Lambeth', 'Greater London', 'England'),
(2454, 1, 'SW20', 'Merton', 'Greater London', 'England'),
(2455, 1, 'SW3', 'Kensington', 'Greater London', 'England'),
(2456, 1, 'SW4', 'Lambeth', 'Greater London', 'England'),
(2457, 1, 'SW5', 'Kensington', 'Greater London', 'England'),
(2458, 1, 'SW6', 'Hammersmith', 'Greater London', 'England'),
(2459, 1, 'SW7', 'Kensington', 'Greater London', 'England'),
(2460, 1, 'SW8', 'Lambeth', 'Greater London', 'England'),
(2461, 1, 'SW9', 'Lambeth', 'Greater London', 'England'),
(2462, 1, 'SY1', 'Shrewsbury', 'Shropshire', 'England'),
(2463, 1, 'SY10', 'Oswestry Rural', 'Shropshire', 'England'),
(2464, 1, 'SY11', 'Oswestry', 'Shropshire', 'England'),
(2465, 1, 'SY12', 'Ellesmere', 'Shropshire', 'England'),
(2466, 1, 'SY13', 'Whitchurch Rural', 'Shropshire', 'England'),
(2467, 1, 'SY14', 'Malpas', 'Cheshire West and Chester', 'England'),
(2468, 1, 'SY15', 'Montgomery', 'Powys', 'Wales'),
(2469, 1, 'SY16', 'Llanllwchaiarn', 'Powys', 'Wales'),
(2470, 1, 'SY17', 'Caersws', 'Powys', 'Wales'),
(2471, 1, 'SY18', 'Llanidloes', 'Powys', 'Wales'),
(2472, 1, 'SY19', 'Llanbrynmair', 'Powys', 'Wales'),
(2473, 1, 'SY2', 'Shrewsbury', 'Shropshire', 'England'),
(2474, 1, 'SY20', 'Glantwymyn', 'Powys', 'Wales'),
(2475, 1, 'SY21', 'Castle Caereinion', 'Powys', 'Wales'),
(2476, 1, 'SY22', 'Llansantffraid', 'Powys', 'Wales'),
(2477, 1, 'SY23', 'Llanfarian', 'Ceredigion', 'Wales'),
(2478, 1, 'SY24', 'Geneur Glyn', 'Ceredigion', 'Wales'),
(2479, 1, 'SY25', 'Tregaron', 'Ceredigion', 'Wales'),
(2480, 1, 'SY3', 'Shrewsbury', 'Shropshire', 'England'),
(2481, 1, 'SY4', 'Myddle', 'Shropshire', 'England'),
(2482, 1, 'SY5', 'Longden', 'Shropshire', 'England'),
(2483, 1, 'SY6', 'Church Stretton', 'Shropshire', 'England'),
(2484, 1, 'SY7', 'Hopesay', 'Shropshire', 'England'),
(2485, 1, 'SY8', 'Ludlow', 'Shropshire', 'England'),
(2486, 1, 'SY9', 'Lydham', 'Shropshire', 'England'),
(2487, 1, 'TA1', 'Taunton', 'Somerset', 'England'),
(2488, 1, 'TA10', 'Langport', 'Somerset', 'England'),
(2489, 1, 'TA11', 'Somerton', 'Somerset', 'England'),
(2490, 1, 'TA12', 'Martock', 'Somerset', 'England'),
(2491, 1, 'TA13', 'South Petherton', 'Somerset', 'England'),
(2492, 1, 'TA14', 'Norton Sub Hamdon', 'Somerset', 'England'),
(2493, 1, 'TA15', 'Montacute', 'Somerset', 'England'),
(2494, 1, 'TA16', 'Merriott', 'Somerset', 'England'),
(2495, 1, 'TA17', 'Hinton St George', 'Somerset', 'England'),
(2496, 1, 'TA18', 'Crewkerne', 'Somerset', 'England'),
(2497, 1, 'TA19', 'Ilminster', 'Somerset', 'England'),
(2498, 1, 'TA2', 'Staplegrove', 'Somerset', 'England'),
(2499, 1, 'TA20', 'Chard', 'Somerset', 'England'),
(2500, 1, 'TA21', 'Wellington', 'Somerset', 'England'),
(2501, 1, 'TA22', 'Dulverton', 'Somerset', 'England'),
(2502, 1, 'TA23', 'Williton', 'Somerset', 'England'),
(2503, 1, 'TA24', 'Wootton Courtenay', 'Somerset', 'England'),
(2504, 1, 'TA3', 'Stoke St Mary', 'Somerset', 'England'),
(2505, 1, 'TA4', 'Lydeard St Lawrence', 'Somerset', 'England'),
(2506, 1, 'TA5', 'Spaxton', 'Somerset', 'England'),
(2507, 1, 'TA6', 'Bridgwater', 'Somerset', 'England'),
(2508, 1, 'TA7', 'Stawell', 'Somerset', 'England'),
(2509, 1, 'TA8', 'Burnham-on-Sea', 'Somerset', 'England'),
(2510, 1, 'TA9', 'Burnham Without', 'Somerset', 'England'),
(2511, 1, 'TD1', 'Galashiels', 'The Scottish Borders', 'Scotland'),
(2512, 1, 'TD10', 'Greenlaw', 'The Scottish Borders', 'Scotland'),
(2513, 1, 'TD11', '', 'The Scottish Borders', 'Scotland'),
(2514, 1, 'TD12', 'Cornhill-on-Tweed', 'Northumberland', 'Scotland'),
(2515, 1, 'TD13', 'Cockburnspath', 'The Scottish Borders', 'Scotland'),
(2516, 1, 'TD14', '', 'The Scottish Borders', 'Scotland'),
(2517, 1, 'TD15', 'Berwick-upon-Tweed', 'Northumberland', 'Scotland'),
(2518, 1, 'TD2', '', 'The Scottish Borders', 'Scotland'),
(2519, 1, 'TD3', '', 'The Scottish Borders', 'Scotland'),
(2520, 1, 'TD4', 'Earlston', 'The Scottish Borders', 'Scotland'),
(2521, 1, 'TD5', '', 'The Scottish Borders', 'Scotland'),
(2522, 1, 'TD6', 'Newtown St Boswells', 'The Scottish Borders', 'Scotland'),
(2523, 1, 'TD7', '', 'The Scottish Borders', 'Scotland'),
(2524, 1, 'TD8', 'Jedburgh', 'The Scottish Borders', 'Scotland'),
(2525, 1, 'TD9', '', 'The Scottish Borders', 'Scotland'),
(2526, 1, 'TF1', 'Wellington', 'Telford and Wrekin', 'England'),
(2527, 1, 'TF10', 'Newport', 'Telford and Wrekin', 'England'),
(2528, 1, 'TF11', 'Shifnal', 'Shropshire', 'England'),
(2529, 1, 'TF12', 'Broseley', 'Shropshire', 'England'),
(2530, 1, 'TF13', 'Much Wenlock', 'Shropshire', 'England'),
(2531, 1, 'TF2', 'St Georges and Priorslee', 'Telford and Wrekin', 'England'),
(2532, 1, 'TF3', 'Hollinswood', 'Telford and Wrekin', 'England'),
(2533, 1, 'TF4', 'Telford', 'Telford and Wrekin', 'England'),
(2534, 1, 'TF5', 'Wellington', 'Telford and Wrekin', 'England'),
(2535, 1, 'TF6', 'Rodington', 'Telford and Wrekin', 'England'),
(2536, 1, 'TF7', 'Madeley', 'Telford and Wrekin', 'England'),
(2537, 1, 'TF8', 'The Gorge', 'Telford and Wrekin', 'England'),
(2538, 1, 'TF9', 'Sutton upon Tern', 'Shropshire', 'England'),
(2539, 1, 'TN1', 'Royal Tunbridge Wells', 'Kent', 'England'),
(2540, 1, 'TN10', 'Tonbridge', 'Kent', 'England'),
(2541, 1, 'TN11', 'Tonbridge', 'Kent', 'England'),
(2542, 1, 'TN12', 'Yalding', 'Kent', 'England'),
(2543, 1, 'TN13', 'Sevenoaks', 'Kent', 'England'),
(2544, 1, 'TN14', 'Dunton Green', 'Kent', 'England'),
(2545, 1, 'TN15', 'Wrotham', 'Kent', 'England'),
(2546, 1, 'TN16', '', 'Greater London', 'England'),
(2547, 1, 'TN17', 'Cranbrook', 'Kent', 'England'),
(2548, 1, 'TN18', 'Four Throws', 'Kent', 'England'),
(2549, 1, 'TN19', 'Burwash', 'East Sussex', 'England'),
(2550, 1, 'TN2', 'Royal Tunbridge Wells', 'Kent', 'England'),
(2551, 1, 'TN20', 'Mayfield', 'East Sussex', 'England'),
(2552, 1, 'TN21', 'Heathfield', 'East Sussex', 'England'),
(2553, 1, 'TN22', 'Uckfield', 'East Sussex', 'England'),
(2554, 1, 'TN23', 'Ashford', 'Kent', 'England'),
(2555, 1, 'TN24', 'Ashford', 'Kent', 'England'),
(2556, 1, 'TN25', 'Wye', 'Kent', 'England'),
(2557, 1, 'TN26', 'Shadoxhurst', 'Kent', 'England'),
(2558, 1, 'TN27', 'Smarden', 'Kent', 'England'),
(2559, 1, 'TN28', 'New Romney', 'Kent', 'England'),
(2560, 1, 'TN29', 'St Mary In The Marsh', 'Kent', 'England'),
(2561, 1, 'TN3', 'Royal Tunbridge Wells', 'Kent', 'England'),
(2562, 1, 'TN30', 'Tenterden', 'Kent', 'England'),
(2563, 1, 'TN31', 'Peasmarsh', 'East Sussex', 'England'),
(2564, 1, 'TN32', 'Salehurst', 'East Sussex', 'England'),
(2565, 1, 'TN33', 'Battle', 'East Sussex', 'England'),
(2566, 1, 'TN34', 'Hastings', 'East Sussex', 'England'),
(2567, 1, 'TN35', 'Hastings', 'East Sussex', 'England'),
(2568, 1, 'TN36', 'Icklesham', 'East Sussex', 'England'),
(2569, 1, 'TN37', 'Hastings', 'East Sussex', 'England'),
(2570, 1, 'TN38', 'Hastings', 'East Sussex', 'England'),
(2571, 1, 'TN39', 'Bexhill', 'East Sussex', 'England'),
(2572, 1, 'TN4', 'Royal Tunbridge Wells', 'Kent', 'England'),
(2573, 1, 'TN40', 'Bexhill', 'East Sussex', 'England'),
(2574, 1, 'TN5', 'Wadhurst', 'East Sussex', 'England'),
(2575, 1, 'TN6', 'Crowborough', 'East Sussex', 'England'),
(2576, 1, 'TN7', 'Hartfield', 'East Sussex', 'England'),
(2577, 1, 'TN8', 'Edenbridge', 'Kent', 'England'),
(2578, 1, 'TN9', 'Tonbridge', 'Kent', 'England'),
(2579, 1, 'TQ1', 'Torquay', 'Torbay', 'England'),
(2580, 1, 'TQ10', 'South Brent', 'Devon', 'England'),
(2581, 1, 'TQ11', 'Buckfast', 'Devon', 'England'),
(2582, 1, 'TQ12', 'Newton Abbot', 'Devon', 'England'),
(2583, 1, 'TQ13', 'Bovey Tracey', 'Devon', 'England'),
(2584, 1, 'TQ14', 'Teignmouth', 'Devon', 'England'),
(2585, 1, 'TQ2', 'Torquay', 'Torbay', 'England'),
(2586, 1, 'TQ3', 'Torquay', 'Torbay', 'England'),
(2587, 1, 'TQ4', 'Torquay', 'Torbay', 'England'),
(2588, 1, 'TQ5', '', 'Torbay', 'England'),
(2589, 1, 'TQ6', 'Dartmouth', 'Devon', 'England'),
(2590, 1, 'TQ7', 'Kingsbridge', 'Devon', 'England'),
(2591, 1, 'TQ8', 'Salcombe', 'Devon', 'England'),
(2592, 1, 'TQ9', 'Totnes', 'Devon', 'England'),
(2593, 1, 'TR1', 'Truro', 'Cornwall', 'England'),
(2594, 1, 'TR10', 'Penryn', 'Cornwall', 'England'),
(2595, 1, 'TR11', 'Falmouth', 'Cornwall', 'England'),
(2596, 1, 'TR12', 'St Keverne', 'Cornwall', 'England'),
(2597, 1, 'TR13', 'Helston', 'Cornwall', 'England'),
(2598, 1, 'TR14', 'Camborne', 'Cornwall', 'England'),
(2599, 1, 'TR15', 'Redruth', 'Cornwall', 'England'),
(2600, 1, 'TR16', 'Redruth', 'Cornwall', 'England'),
(2601, 1, 'TR17', 'Marazion', 'Cornwall', 'England'),
(2602, 1, 'TR18', 'Penzance', 'Cornwall', 'England'),
(2603, 1, 'TR19', 'Sancreed', 'Cornwall', 'England'),
(2604, 1, 'TR2', 'Tregoney', 'Cornwall', 'England'),
(2605, 1, 'TR20', 'Ludgvan', 'Cornwall', 'England'),
(2606, 1, 'TR21', 'Isles of Scilly', 'Isles Of Scilly', 'England'),
(2607, 1, 'TR22', 'Isles of Scilly', 'Isles Of Scilly', 'England'),
(2608, 1, 'TR23', 'Isles of Scilly', 'Isles Of Scilly', 'England'),
(2609, 1, 'TR24', 'Isles of Scilly', 'Isles Of Scilly', 'England'),
(2610, 1, 'TR25', 'Isles of Scilly', 'Isles Of Scilly', 'England'),
(2611, 1, 'TR26', 'St Ives', 'Cornwall', 'England'),
(2612, 1, 'TR27', 'Hayle', 'Cornwall', 'England'),
(2613, 1, 'TR3', 'Perranarworthal', 'Cornwall', 'England'),
(2614, 1, 'TR4', 'Kenwyn', 'Cornwall', 'England'),
(2615, 1, 'TR5', 'St Agnes', 'Cornwall', 'England'),
(2616, 1, 'TR6', 'Perranporth', 'Cornwall', 'England'),
(2617, 1, 'TR7', 'Newquay', 'Cornwall', 'England'),
(2618, 1, 'TR8', 'Colan', 'Cornwall', 'England'),
(2619, 1, 'TR9', 'St Columb Major', 'Cornwall', 'England'),
(2620, 1, 'TS1', '', 'Middlesbrough', 'England'),
(2621, 1, 'TS10', 'Redcar', 'Redcar and Cleveland', 'England'),
(2622, 1, 'TS11', 'Saltburn Marske and New Marske', 'Redcar and Cleveland', 'England'),
(2623, 1, 'TS12', 'Skelton', 'Redcar and Cleveland', 'England'),
(2624, 1, 'TS13', 'Loftus', 'Redcar and Cleveland', 'England'),
(2625, 1, 'TS14', 'Guisborough', 'Redcar and Cleveland', 'England'),
(2626, 1, 'TS15', 'Kirklevington', 'Stockton-on-Tees', 'England'),
(2627, 1, 'TS16', 'Egglescliffe', 'Stockton-on-Tees', 'England'),
(2628, 1, 'TS17', 'Thornaby', 'Stockton-on-Tees', 'England'),
(2629, 1, 'TS18', '', 'Stockton-on-Tees', 'England'),
(2630, 1, 'TS19', '', 'Stockton-on-Tees', 'England'),
(2631, 1, 'TS2', '', 'Middlesbrough', 'England'),
(2632, 1, 'TS20', 'Norton', 'Stockton-on-Tees', 'England'),
(2633, 1, 'TS21', 'Sedgefield', 'County Durham', 'England'),
(2634, 1, 'TS22', 'Trindon', 'Stockton-on-Tees', 'England'),
(2635, 1, 'TS23', 'Billingham', 'Stockton-on-Tees', 'England'),
(2636, 1, 'TS24', '', 'Hartlepool', 'England'),
(2637, 1, 'TS25', '', 'Hartlepool', 'England'),
(2638, 1, 'TS26', '', 'Hartlepool', 'England'),
(2639, 1, 'TS27', 'Monk Hesleden', 'County Durham', 'England'),
(2640, 1, 'TS28', 'Hutton Henry', 'County Durham', 'England'),
(2641, 1, 'TS29', 'Trimdon', 'County Durham', 'England'),
(2642, 1, 'TS3', '', 'Middlesbrough', 'England'),
(2643, 1, 'TS4', '', 'Middlesbrough', 'England'),
(2644, 1, 'TS5', '', 'Middlesbrough', 'England'),
(2645, 1, 'TS6', 'Redcar', 'Redcar and Cleveland', 'England'),
(2646, 1, 'TS7', '', 'Middlesbrough', 'England'),
(2647, 1, 'TS8', 'Stainton', 'Middlesbrough', 'England'),
(2648, 1, 'TS9', 'Great and Little Broughton', 'North Yorkshire', 'England'),
(2649, 1, 'TW1', 'Richmond', 'Greater London', 'England'),
(2650, 1, 'TW10', 'Richmond', 'Greater London', 'England'),
(2651, 1, 'TW11', 'Richmond', 'Greater London', 'England'),
(2652, 1, 'TW12', 'Richmond', 'Greater London', 'England'),
(2653, 1, 'TW13', 'Hounslow', 'Greater London', 'England'),
(2654, 1, 'TW14', 'Hounslow', 'Greater London', 'England'),
(2655, 1, 'TW15', 'Staines', 'Surrey', 'England'),
(2656, 1, 'TW16', 'Staines', 'Surrey', 'England'),
(2657, 1, 'TW17', 'Staines', 'Surrey', 'England'),
(2658, 1, 'TW18', 'Staines', 'Surrey', 'England'),
(2659, 1, 'TW19', '', 'Surrey', 'England'),
(2660, 1, 'TW2', 'Richmond', 'Greater London', 'England'),
(2661, 1, 'TW20', 'Egham', 'Surrey', 'England'),
(2662, 1, 'TW3', 'Hounslow', 'Greater London', 'England'),
(2663, 1, 'TW4', 'Hounslow', 'Greater London', 'England'),
(2664, 1, 'TW5', 'Hounslow', 'Greater London', 'England'),
(2665, 1, 'TW6', 'Hillingdon', 'Greater London', 'England'),
(2666, 1, 'TW7', 'Hounslow', 'Greater London', 'England'),
(2667, 1, 'TW8', 'Hounslow', 'Greater London', 'England'),
(2668, 1, 'TW9', 'Richmond', 'Greater London', 'England'),
(2669, 1, 'UB1', 'Southall', 'Greater London', 'England'),
(2670, 1, 'UB10', 'Hillingdon', 'Greater London', 'England'),
(2671, 1, 'UB11', 'Hillingdon', 'Greater London', 'England'),
(2672, 1, 'UB2', 'Southall', 'Greater London', 'England'),
(2673, 1, 'UB3', 'Hillingdon', 'Greater London', 'England'),
(2674, 1, 'UB4', 'Hillingdon', 'Greater London', 'England'),
(2675, 1, 'UB5', 'Southall', 'Greater London', 'England'),
(2676, 1, 'UB6', 'Southall', 'Greater London', 'England'),
(2677, 1, 'UB7', 'Hillingdon', 'Greater London', 'England'),
(2678, 1, 'UB8', 'Hillingdon', 'Greater London', 'England'),
(2679, 1, 'UB9', 'Denham Green', 'Buckinghamshire', 'England'),
(2680, 1, 'W1', '', 'Westminster', 'England'),
(2681, 1, 'W10', 'Kensington', 'Greater London', 'England'),
(2682, 1, 'W11', 'Kensington', 'Greater London', 'England'),
(2683, 1, 'W12', 'Hammersmith', 'Greater London', 'England'),
(2684, 1, 'W13', 'Ealing', 'Greater London', 'England'),
(2685, 1, 'W14', 'Hammersmith', 'Greater London', 'England'),
(2686, 1, 'W1B', '', 'Westminster', 'England'),
(2687, 1, 'W1C', '', 'Westminster', 'England'),
(2688, 1, 'W1D', '', 'Westminster', 'England'),
(2689, 1, 'W1F', '', 'Westminster', 'England'),
(2690, 1, 'W1G', 'Paddington', 'Greater London', 'England'),
(2691, 1, 'W1H', 'Paddington', 'Greater London', 'England'),
(2692, 1, 'W1J', '', 'Westminster', 'England'),
(2693, 1, 'W1K', '', 'Westminster', 'England'),
(2694, 1, 'W1M', 'Paddington', 'Greater London', 'England'),
(2695, 1, 'W1S', '', 'Westminster', 'England'),
(2696, 1, 'W1T', 'Camden Town', 'Greater London', 'England'),
(2697, 1, 'W1U', 'Paddington', 'Greater London', 'England'),
(2698, 1, 'W1W', 'Paddington', 'Greater London', 'England'),
(2699, 1, 'W2', 'Paddington', 'Greater London', 'England'),
(2700, 1, 'W3', 'Ealing', 'Greater London', 'England'),
(2701, 1, 'W4', 'Hounslow', 'Greater London', 'England'),
(2702, 1, 'W5', 'Ealing', 'Greater London', 'England'),
(2703, 1, 'W6', 'Hammersmith', 'Greater London', 'England'),
(2704, 1, 'W7', 'Ealing', 'Greater London', 'England'),
(2705, 1, 'W8', 'Kensington', 'Greater London', 'England'),
(2706, 1, 'W9', 'Paddington', 'Greater London', 'England'),
(2707, 1, 'WA1', 'Birchwood', 'Warrington', 'England'),
(2708, 1, 'WA10', '', 'St Helens', 'England'),
(2709, 1, 'WA11', '', 'St Helens', 'England'),
(2710, 1, 'WA12', '', 'St Helens', 'England'),
(2711, 1, 'WA13', 'Lymm', 'Warrington', 'England'),
(2712, 1, 'WA14', '', 'Trafford', 'England'),
(2713, 1, 'WA15', '', 'Trafford', 'England'),
(2714, 1, 'WA16', 'Knutsford', 'Cheshire East', 'England'),
(2715, 1, 'WA2', 'Birchwood', 'Warrington', 'England'),
(2716, 1, 'WA3', 'Croft', 'Warrington', 'England'),
(2717, 1, 'WA4', 'Appleton', 'Warrington', 'England'),
(2718, 1, 'WA5', 'Great Sankey', 'Warrington', 'England'),
(2719, 1, 'WA6', 'Frodsham', 'Cheshire West and Chester', 'England'),
(2720, 1, 'WA7', 'Runcorn', 'Halton', 'England'),
(2721, 1, 'WA8', 'Runcorn', 'Halton', 'England'),
(2722, 1, 'WA9', '', 'St Helens', 'England'),
(2723, 1, 'WC1', 'Camden Town', 'Greater London', 'England'),
(2724, 1, 'WC1A', 'Camden Town', 'Greater London', 'England'),
(2725, 1, 'WC1B', 'Camden Town', 'Greater London', 'England'),
(2726, 1, 'WC1E', 'Camden Town', 'Greater London', 'England'),
(2727, 1, 'WC1H', 'Camden Town', 'Greater London', 'England'),
(2728, 1, 'WC1N', 'Camden Town', 'Greater London', 'England'),
(2729, 1, 'WC1R', 'Camden Town', 'Greater London', 'England'),
(2730, 1, 'WC1V', 'Camden Town', 'Greater London', 'England'),
(2731, 1, 'WC1X', 'Camden Town', 'Greater London', 'England'),
(2732, 1, 'WC2', '', 'Westminster', 'England'),
(2733, 1, 'WC2A', 'Camden Town', 'Greater London', 'England'),
(2734, 1, 'WC2B', '', 'Westminster', 'England'),
(2735, 1, 'WC2E', '', 'Westminster', 'England'),
(2736, 1, 'WC2H', 'Camden Town', 'Greater London', 'England'),
(2737, 1, 'WC2N', '', 'Westminster', 'England'),
(2738, 1, 'WC2R', '', 'Westminster', 'England'),
(2739, 1, 'WD1', 'Watford', 'Hertfordshire', 'England'),
(2740, 1, 'WD17', 'Watford', 'Hertfordshire', 'England'),
(2741, 1, 'WD18', 'Watford', 'Hertfordshire', 'England'),
(2742, 1, 'WD19', 'Watford Rural', 'Hertfordshire', 'England'),
(2743, 1, 'WD2', 'Potters Bar', 'Hertfordshire', 'England'),
(2744, 1, 'WD23', 'Potters Bar', 'Hertfordshire', 'England'),
(2745, 1, 'WD24', 'Watford', 'Hertfordshire', 'England'),
(2746, 1, 'WD25', 'Watford', 'Hertfordshire', 'England'),
(2747, 1, 'WD3', 'Chorleywood', 'Hertfordshire', 'England'),
(2748, 1, 'WD4', 'Kings Langley', 'Hertfordshire', 'England'),
(2749, 1, 'WD5', 'Abbots Langley', 'Hertfordshire', 'England'),
(2750, 1, 'WD6', 'Borehamwood', 'Hertfordshire', 'England'),
(2751, 1, 'WD7', 'Radlett', 'Hertfordshire', 'England'),
(2752, 1, 'WF1', '', 'Wakefield', 'England'),
(2753, 1, 'WF10', '', 'Wakefield', 'England'),
(2754, 1, 'WF11', '', 'Wakefield', 'England'),
(2755, 1, 'WF12', 'Dewsbury', 'Kirklees', 'England'),
(2756, 1, 'WF13', 'Dewsbury', 'Kirklees', 'England'),
(2757, 1, 'WF14', 'Mirfield', 'Kirklees', 'England'),
(2758, 1, 'WF15', 'Dewsbury', 'Kirklees', 'England'),
(2759, 1, 'WF16', 'Dewsbury', 'Kirklees', 'England'),
(2760, 1, 'WF17', 'Dewsbury', 'Kirklees', 'England'),
(2761, 1, 'WF2', '', 'Wakefield', 'England'),
(2762, 1, 'WF3', '', 'Leeds', 'England'),
(2763, 1, 'WF4', 'Crigglestone', 'Wakefield', 'England'),
(2764, 1, 'WF5', '', 'Wakefield', 'England'),
(2765, 1, 'WF6', 'Normanton', 'Wakefield', 'England'),
(2766, 1, 'WF7', 'Featherstone', 'Wakefield', 'England'),
(2767, 1, 'WF8', '', 'Wakefield', 'England'),
(2768, 1, 'WF9', 'North Elmsall', 'Wakefield', 'England'),
(2769, 1, 'WN1', 'Pemberton', 'Wigan', 'England'),
(2770, 1, 'WN2', 'Pemberton', 'Wigan', 'England'),
(2771, 1, 'WN3', 'Pemberton', 'Wigan', 'England'),
(2772, 1, 'WN4', 'Pemberton', 'Wigan', 'England'),
(2773, 1, 'WN5', 'Pemberton', 'Wigan', 'England'),
(2774, 1, 'WN6', 'Pemberton', 'Wigan', 'England'),
(2775, 1, 'WN7', 'Leigh', 'Wigan', 'England'),
(2776, 1, 'WN8', 'Ormskirk', 'Lancashire', 'England'),
(2777, 1, 'WR1', 'Worcester', 'Worcestershire', 'England'),
(2778, 1, 'WR10', 'Wick', 'Worcestershire', 'England'),
(2779, 1, 'WR11', 'Evesham', 'Worcestershire', 'England'),
(2780, 1, 'WR12', 'Broadway', 'Worcestershire', 'England'),
(2781, 1, 'WR13', 'Colwall', 'Herefordshire', 'England');
INSERT INTO `states` (`id`, `country_id`, `postcode`, `area`, `region`, `country`) VALUES
(2782, 1, 'WR14', 'Great Malvern', 'Worcestershire', 'England'),
(2783, 1, 'WR15', 'Tenbury', 'Worcestershire', 'England'),
(2784, 1, 'WR2', 'Worcester', 'Worcestershire', 'England'),
(2785, 1, 'WR3', 'Worcester', 'Worcestershire', 'England'),
(2786, 1, 'WR4', 'Worcester', 'Worcestershire', 'England'),
(2787, 1, 'WR5', 'Worcester', 'Worcestershire', 'England'),
(2788, 1, 'WR6', 'Martley', 'Worcestershire', 'England'),
(2789, 1, 'WR7', 'North Piddle', 'Worcestershire', 'England'),
(2790, 1, 'WR8', 'Worcester', 'Worcestershire', 'England'),
(2791, 1, 'WR9', 'Droitwich', 'Worcestershire', 'England'),
(2792, 1, 'WS1', '', 'Walsall', 'England'),
(2793, 1, 'WS10', 'West Bromwich', 'Sandwell', 'England'),
(2794, 1, 'WS11', 'Cannock', 'Staffordshire', 'England'),
(2795, 1, 'WS12', 'Cannock', 'Staffordshire', 'England'),
(2796, 1, 'WS13', 'Lichfield', 'Staffordshire', 'England'),
(2797, 1, 'WS14', 'Swinfen and Packington', 'Staffordshire', 'England'),
(2798, 1, 'WS15', 'Brereton', 'Staffordshire', 'England'),
(2799, 1, 'WS2', '', 'Walsall', 'England'),
(2800, 1, 'WS3', 'Willenhall', 'Walsall', 'England'),
(2801, 1, 'WS4', '', 'Walsall', 'England'),
(2802, 1, 'WS5', '', 'Walsall', 'England'),
(2803, 1, 'WS6', 'Great Wyrley', 'Staffordshire', 'England'),
(2804, 1, 'WS7', 'Burntwood', 'Staffordshire', 'England'),
(2805, 1, 'WS8', 'Brownhills', 'Walsall', 'England'),
(2806, 1, 'WS9', 'Aldridge', 'Walsall', 'England'),
(2807, 1, 'WV1', '', 'Wolverhampton', 'England'),
(2808, 1, 'WV10', 'Wednesfield', 'Wolverhampton', 'England'),
(2809, 1, 'WV11', 'Wednesfield', 'Wolverhampton', 'England'),
(2810, 1, 'WV12', 'Willenhall', 'Walsall', 'England'),
(2811, 1, 'WV13', 'Willenhall', 'Walsall', 'England'),
(2812, 1, 'WV14', 'Wednesfield', 'Wolverhampton', 'England'),
(2813, 1, 'WV15', 'Bridgnorth', 'Shropshire', 'England'),
(2814, 1, 'WV16', 'Chetton', 'Shropshire', 'England'),
(2815, 1, 'WV2', '', 'Wolverhampton', 'England'),
(2816, 1, 'WV3', '', 'Wolverhampton', 'England'),
(2817, 1, 'WV4', '', 'Wolverhampton', 'England'),
(2818, 1, 'WV5', 'Wombourne', 'Staffordshire', 'England'),
(2819, 1, 'WV6', '', 'Wolverhampton', 'England'),
(2820, 1, 'WV7', 'Albrighton', 'Shropshire', 'England'),
(2821, 1, 'WV8', 'Bilbrook', 'Staffordshire', 'England'),
(2822, 1, 'WV9', '', 'Wolverhampton', 'England'),
(2823, 1, 'YO1', '', 'York', 'England'),
(2824, 1, 'YO10', 'Heslington', 'York', 'England'),
(2825, 1, 'YO11', 'Scarborough', 'North Yorkshire', 'England'),
(2826, 1, 'YO12', 'Scarborough', 'North Yorkshire', 'England'),
(2827, 1, 'YO13', 'Stainton Dale', 'North Yorkshire', 'England'),
(2828, 1, 'YO14', 'Muston', 'North Yorkshire', 'England'),
(2829, 1, 'YO15', 'Bridlington', 'East Riding of Yorkshire', 'England'),
(2830, 1, 'YO16', 'Bridlington', 'East Riding of Yorkshire', 'England'),
(2831, 1, 'YO17', 'Settrington', 'North Yorkshire', 'England'),
(2832, 1, 'YO18', 'Pickering', 'North Yorkshire', 'England'),
(2833, 1, 'YO19', 'Wheldrake', 'York', 'England'),
(2834, 1, 'YO21', 'Hutton Mulgrave', 'North Yorkshire', 'England'),
(2835, 1, 'YO22', 'Snainton', 'North Yorkshire', 'England'),
(2836, 1, 'YO23', 'Copmanthorpe', 'York', 'England'),
(2837, 1, 'YO24', '', 'York', 'England'),
(2838, 1, 'YO25', 'Driffield', 'East Riding of Yorkshire', 'England'),
(2839, 1, 'YO26', 'Upper Poppleton', 'York', 'England'),
(2840, 1, 'YO30', 'Rawcliffe', 'York', 'England'),
(2841, 1, 'YO31', '', 'York', 'England'),
(2842, 1, 'YO32', 'Earswick', 'York', 'England'),
(2843, 1, 'YO41', 'Catton', 'East Riding of Yorkshire', 'England'),
(2844, 1, 'YO42', 'Barmby Moor', 'East Riding of Yorkshire', 'England'),
(2845, 1, 'YO43', 'Market Weighton', 'East Riding of Yorkshire', 'England'),
(2846, 1, 'YO51', 'Boroughbridge', 'North Yorkshire', 'England'),
(2847, 1, 'YO60', 'Thornton-le-Clay', 'North Yorkshire', 'England'),
(2848, 1, 'YO61', 'Easingwold', 'North Yorkshire', 'England'),
(2849, 1, 'YO62', 'Nawton', 'North Yorkshire', 'England'),
(2850, 1, 'YO7', 'Sowerby', 'North Yorkshire', 'England'),
(2851, 1, 'YO8', 'Selby', 'North Yorkshire', 'England'),
(2852, 1, 'ZE1', 'Sound', 'Shetland Islands', 'Scotland'),
(2853, 1, 'ZE2', '', 'Shetland Islands', 'Scotland'),
(2854, 1, 'ZE3', 'Toab', 'Shetland Islands', 'Scotland');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(37, 'owner@gmail.com'),
(38, 'shaon@gmail.com'),
(39, 'showrav@gmail.com'),
(40, 'showrabhasan@gmail.com'),
(41, 'user@gmail.com'),
(43, 'pronob@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `transaction_no` varchar(255) DEFAULT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `price` double NOT NULL,
  `method` varchar(191) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `notify_id` int(11) DEFAULT NULL,
  `payment_status` varchar(191) NOT NULL DEFAULT 'pending',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `transaction_no`, `charge_id`, `txnid`, `user_id`, `plan_id`, `price`, `method`, `currency_id`, `amount`, `notify_id`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'fjng1701437295', 'cs_test_a1lNQATTMuxMklK4WjKQH6oyUrNHkICyjJlmJuOhU0uOzACk7FJvPd4hN3', 'pi_3OIWiwJlIV5dN9n70Pr9EDQn', 1, 5, 199, 'Stripe', 13, NULL, NULL, 'Completed', 1, '2023-12-01 07:28:15', '2023-12-01 07:28:15'),
(2, 'aphk1701438848', 'cs_test_a1lNQATTMuxMklK4WjKQH6oyUrNHkICyjJlmJuOhU0uOzACk7FJvPd4hN3', 'pi_3OIWiwJlIV5dN9n70Pr9EDQn', 1, 5, 199, 'Stripe', 13, NULL, NULL, 'Completed', 1, '2023-12-01 07:54:08', '2023-12-01 07:54:08'),
(3, 'CklC1701439003', 'cs_test_a1GKlIq7i3WcXo6v9NU2ghaDxjpkd7L75FxJHaHd9VBw1r05U0cC6E4DQj', 'pi_3OIXCsJlIV5dN9n70o3GlLHH', 1, 5, 199, 'Stripe', 13, NULL, NULL, 'Completed', 1, '2023-12-01 07:56:43', '2023-12-01 07:56:43'),
(4, 'Rcml1701439199', 'cs_test_a1BzAHJ9Dj9veGFFg6IcRQpTPxWUqhCvUPaGajKayDPxbWTcPMVOb7MJbB', 'pi_3OIXFzJlIV5dN9n705drfQog', 1, 4, 149, 'Stripe', 13, NULL, NULL, 'Completed', 1, '2023-12-01 07:59:59', '2023-12-01 07:59:59'),
(5, 'lG8R1701439393', 'cs_test_a1mFsPegGZV0LFbDc6LMTQhqeGsFJMn8rp6SZWKrgIoi0UzGKdgsRHxV6s', 'pi_3OIXJCJlIV5dN9n71fJkGk7D', 1, 3, 49, 'Stripe', 13, NULL, NULL, 'Completed', 1, '2023-12-01 08:03:13', '2023-12-01 08:03:13'),
(6, 'Oye51701439619', 'cs_test_a1oKhQlPrfEl0rNkav8Vx0byjHv5zJcR3lY85BxTvxw5IDJJa1k0b4E9td', 'pi_3OIXMWJlIV5dN9n71DQ4Bvcv', 1, 3, 49, 'Stripe', 13, NULL, NULL, 'Completed', 1, '2023-12-01 08:06:59', '2023-12-01 08:06:59'),
(7, 'hoQ51701440661', 'cs_test_a1P7Umux6z5NlDjz92nOIT6mXmA2ffVx3bVrZEByDPyDweaOVLSqbOmjiI', 'pi_3OIXdbJlIV5dN9n70MnUhjO3', 1, 5, 199, 'Stripe', 13, NULL, NULL, 'Completed', 1, '2023-12-01 08:24:22', '2023-12-01 08:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(22) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `attributes` varchar(555) DEFAULT NULL,
  `bedroom` varchar(255) DEFAULT NULL,
  `bathrooms` varchar(255) DEFAULT NULL,
  `receptions` varchar(255) DEFAULT NULL,
  `required` varchar(255) DEFAULT NULL,
  `is_bedrooms` int(5) NOT NULL DEFAULT 0,
  `is_bathrooms` int(5) NOT NULL DEFAULT 0,
  `is_receptions` int(5) NOT NULL DEFAULT 0,
  `is_required` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `attributes`, `bedroom`, `bathrooms`, `receptions`, `required`, `is_bedrooms`, `is_bathrooms`, `is_receptions`, `is_required`) VALUES
(3, 11, 'Land', 'land', '{\"amenities\":[null],\"property_type\":[null],\"plot_usage\":[\"Residential\",\"Commercial\"],\"strategy\":[null]}', NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(4, 11, 'Property', 'property', '{\"amenities\":[\"Garden\",\"Balcony\",\"Garage\",\"Swimming Pool\",\"Gym\"],\"property_type\":[\"Houses\",\"Flats\",\"Penthouses\",\"Bungalows\",\"Villas\",\"Hotel Apartments\"],\"plot_usage\":[null],\"strategy\":[null]}', '1,2,3,4,5,6,7,8,9', '1,2,3,4,5,6,7,8,9', '1,2,3,4,5,6,7,8,9', 'Ready,Off Plan,Both', 1, 1, 1, 1),
(5, 12, 'Rent', 'rent', '{\"amenities\":[\"Garden\",\"Terrace\",\"Parking\",\"Swimming Pool\",\"Gym\"],\"property_type\":[\"Terrance House\",\"Semi Detached House\",\"Detached House\",\"Apartment\",\"Block Apartment\",\"Bungalow\"],\"plot_usage\":[null],\"strategy\":[\"HMO\",\"Service Accommodation\",\"Housing Association\",\"SLT\"]}', '1,2,3,4,5,6,7,8', '1,2,3,4,5,6,7,8', '1,2,3,4,5,6,7,8', NULL, 1, 1, 1, 0),
(6, 12, 'Sales', 'sales', '{\"amenities\":[\"Garden\",\"Terrace\",\"Garage\",\"Swimming Pool\",\"Gym\"],\"property_type\":[\"Terrance House\",\"Semi Detached House\",\"Detached House\",\"Apartment\",\"Block Apartment\",\"Bungalow\"],\"plot_usage\":[null],\"strategy\":[\"BTL\",\"FLIP\",\"HMO\",\"Service Accommodation\",\"Housing Association\",\"SLT\"]}', '1,2,3,4,5,6', '1,2,3,4,5,6', '1,2,3,4,5,6', NULL, 1, 1, 1, 0),
(7, 13, 'Whole Property', 'whole-property', '{\"amenities\":[null],\"property_type\":[\"Studio flat\",\"Bedsit\",\"Detached House\",\"Semi-Detached\",\"House\",\"Terraced House\",\"Bungalow\",\"End Terrace\",\"Flat\",\"Penthouse\",\"Maisonette\",\"Mobile Phone\",\"House Boat\"],\"plot_usage\":[null],\"strategy\":[null]}', '1,2,3,4,5,6,7,8,9', '1,2,3,4,5,6,7,8,9', NULL, NULL, 1, 1, 0, 0),
(8, 13, 'Room Only', 'room-only', '{\"amenities\":[null],\"property_type\":[\"Room Shared at House\",\"Room Shared in Flat\"],\"plot_usage\":[null],\"strategy\":[null]}', '1,2,3,4,5,6,7,8,9', '1,2,3,4,5,6,7,8,9', NULL, NULL, 1, 1, 0, 0),
(9, 11, 'Room', 'room', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(10, 11, 'Property rent', 'property-rent', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `slug`, `designation`, `photo`, `bio`, `phone`, `email`, `address`, `website`, `facebook`, `twitter`, `linkedin`, `instagram`) VALUES
(8, 'pronob sarker', 'pronob-sarker', 'Creative Director', '9471010251701850857.png', '<p>sdfgsdfgdsfgsdfgg</p>', '01976814812', 'pronobsarker16@gmail.com', 'Main Campus', 'https://geniusocean.net/support/staff/opened-tickets', 'https://facebook.com', 'https://twitter.com', 'https://linkedin.com', 'https://instagram.com');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `photo`, `message`) VALUES
(2, 'Mr. Aashik', 'UI Designer', '9618403561678617327.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'),
(3, 'Jhon Due', 'Creative Director', '2966177251678617322.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam'),
(4, 'Mr. Marlie', 'CEO GeniusTeam', '6019306521678617316.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(191) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified` enum('Yes','No') DEFAULT 'No',
  `verification_link` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `balance` double NOT NULL DEFAULT 0,
  `is_plan` int(11) DEFAULT NULL,
  `is_verify` int(2) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `photo`, `phone`, `country`, `city`, `address`, `zip`, `status`, `email_verified`, `verification_link`, `password`, `balance`, `is_plan`, `is_verify`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User Hasan', NULL, 'user@gmail.com', '1706536283.png', '+8801976814812', 'Belarus', 'United Kingdom', 'Tangail,Dhaka,Bangladesh', '1234', 1, NULL, NULL, '$2y$10$bpzr5I3WnA1FKp7SR0meoeJgmXT5Ux7DovdWCUquPvWdNgjXZHS5i', 900.5495728445, 5, 0, 'lUQnoM1HC7lcnHgG1FDnl68XKecm7uYshCQdaOuxfmCKVrfCOrIVT62Qxn4D', NULL, '2024-01-29 08:07:31'),
(4, 'User Hasan', NULL, 'showrabhasan7515@gmail.com', 'JIC1588136853people.png', '17283320', 'Belarus', 'UserRequest', 'Tangail,Dhaka,Bangladesh', '1234', 1, NULL, NULL, '$2y$10$Muu9xoTvxsx6mHh3yjqLTecTKADrG7YMYmGIqWIuz.YbDoR97Cqw.', 0, NULL, 0, NULL, NULL, '2021-12-14 00:04:01'),
(5, 'Test Product1', NULL, 'shaon@gmail.com', NULL, '172833200', NULL, NULL, NULL, NULL, 1, 'Yes', '521dabcadf15fabf6eb8d08bd960942a', '$2a$12$6eVkxqi9PbsGAg.uRBoyOOND8oZaCH8IHtss5FFVPb0k.64u1aSW.', 0, NULL, 0, 'rLpl6P782AXzb2zKX8qqc62W0TblP8v0nMK4yC7JU8UF76rHAQYnx7ZTeULP', '2021-12-18 23:30:31', '2021-12-18 23:30:31'),
(8, 'pranab Sarker', 'pronob', 'pronobsarker16@gmail.com', NULL, '+8801976814812', NULL, NULL, NULL, NULL, 1, 'No', NULL, '$2y$10$cGZdaxAzxk0lpyXWbGfukuLxnvyr1HJw7Y39wAx092ReKNu1S.BFC', 0, NULL, 0, '9sN9yNscPQYxnr7Anf00DfcGctShnZSfS7Sow0vhc96TOIkIo5ZemykpyCBg', '2023-11-11 01:01:54', '2023-11-11 01:01:54'),
(9, 'software', 'softbakery', 'softwarebakery71@gmail.com', NULL, '+8801976814812', NULL, NULL, NULL, NULL, 1, 'No', '1444e0ba77c86e8b08b8d301e56e1ac4', '$2y$10$bKwgbvt8lUaCd3EglY5xMe8y4aFAKCv9vZWV8AxDh0NY5Z.KpJ0I2', 0, NULL, 0, NULL, '2024-01-30 08:39:31', '2024-01-30 08:39:31'),
(10, 'pranab Sarker', 'newuser', 'pronobsarker1600@gmail.com', NULL, '+8801976814812', NULL, NULL, NULL, NULL, 1, 'No', '415ced504fab6c810410df3e11ed4098', '$2y$10$KCMBf.zsRLIuHfM0ghGaj.MRrSkY605TMzAlNDS4XSm9ezaJWvnYa', 0, NULL, 0, NULL, '2024-01-30 08:42:38', '2024-01-30 08:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL,
  `ticket_number` varchar(255) DEFAULT NULL,
  `property_id` int(25) DEFAULT NULL,
  `user_id` int(25) DEFAULT NULL,
  `owner_id` int(25) DEFAULT NULL,
  `messages` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `is_service` int(2) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_contacts`
--

INSERT INTO `user_contacts` (`id`, `ticket_number`, `property_id`, `user_id`, `owner_id`, `messages`, `phone`, `is_service`, `created_at`, `updated_at`) VALUES
(2, 'TKTEBPZGC', 5, 8, 1, 'I\'m interested in this property.', '01976814812', 0, '2023-12-18 10:08:53', '2023-12-18 10:08:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_owner_conversations`
--

CREATE TABLE `user_owner_conversations` (
  `id` int(11) NOT NULL,
  `contact_id` int(25) NOT NULL,
  `user_id` int(25) NOT NULL,
  `owner_id` int(25) NOT NULL,
  `messages` text DEFAULT NULL,
  `is_service` int(2) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_owner_conversations`
--

INSERT INTO `user_owner_conversations` (`id`, `contact_id`, `user_id`, `owner_id`, `messages`, `is_service`, `created_at`, `updated_at`) VALUES
(2, 2, 8, 1, 'I\'m interested in this property.', 0, '2023-12-18 10:08:53', '2023-12-18 10:08:53'),
(3, 2, 8, 1, 'sdfasd', 0, '2023-12-18 10:44:20', '2023-12-18 10:44:20'),
(4, 2, 1, 8, 'dfgsdf', 0, '2023-12-18 10:45:21', '2023-12-18 10:45:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_sections`
--
ALTER TABLE `header_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_owner_conversations`
--
ALTER TABLE `user_owner_conversations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `header_sections`
--
ALTER TABLE `header_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2856;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_owner_conversations`
--
ALTER TABLE `user_owner_conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
