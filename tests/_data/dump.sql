-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: symfony_db_1
-- Generation Time: Apr 30, 2018 at 08:54 AM
-- Server version: 10.2.14-MariaDB-10.2.14+maria~jessie
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mava_test`
--

DROP DATABASE IF EXISTS `mava_test`;
CREATE DATABASE IF NOT EXISTS `mava_test` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `mava_test`;

-- --------------------------------------------------------

--
-- Table structure for table `acl_classes`
--

DROP TABLE IF EXISTS `acl_classes`;
CREATE TABLE `acl_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acl_entries`
--

DROP TABLE IF EXISTS `acl_entries`;
CREATE TABLE `acl_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `object_identity_id` int(10) UNSIGNED DEFAULT NULL,
  `security_identity_id` int(10) UNSIGNED NOT NULL,
  `field_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ace_order` smallint(5) UNSIGNED NOT NULL,
  `mask` int(11) NOT NULL,
  `granting` tinyint(1) NOT NULL,
  `granting_strategy` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `audit_success` tinyint(1) NOT NULL,
  `audit_failure` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acl_object_identities`
--

DROP TABLE IF EXISTS `acl_object_identities`;
CREATE TABLE `acl_object_identities` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_object_identity_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `object_identifier` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entries_inheriting` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acl_object_identity_ancestors`
--

DROP TABLE IF EXISTS `acl_object_identity_ancestors`;
CREATE TABLE `acl_object_identity_ancestors` (
  `object_identity_id` int(10) UNSIGNED NOT NULL,
  `ancestor_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acl_security_identities`
--

DROP TABLE IF EXISTS `acl_security_identities`;
CREATE TABLE `acl_security_identities` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `username` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fos_user_group`
--

DROP TABLE IF EXISTS `fos_user_group`;
CREATE TABLE `fos_user_group` (
  `id` int(11) NOT NULL,
  `name` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fos_user_user`
--

DROP TABLE IF EXISTS `fos_user_user`;
CREATE TABLE `fos_user_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_data` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `twitter_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_data` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `gplus_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_data` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `two_step_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fos_user_user`
--

INSERT INTO `fos_user_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `created_at`, `updated_at`, `date_of_birth`, `firstname`, `lastname`, `website`, `biography`, `gender`, `locale`, `timezone`, `phone`, `facebook_uid`, `facebook_name`, `facebook_data`, `twitter_uid`, `twitter_name`, `twitter_data`, `gplus_uid`, `gplus_name`, `gplus_data`, `token`, `two_step_code`) VALUES
(1, 'Mava', 'mava', 'alex@alex.om', 'alex@alex.om', 1, NULL, '$2y$13$y2ovJqlvRmmgbCOSwM1LLOc95F5jyic78HXrzl.0GX5ljM8EIDcDS', '2018-04-30 08:20:50', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}', '2018-04-23 14:10:25', '2018-04-30 08:20:50', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fos_user_user_group`
--

DROP TABLE IF EXISTS `fos_user_user_group`;
CREATE TABLE `fos_user_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mava_group`
--

DROP TABLE IF EXISTS `mava_group`;
CREATE TABLE `mava_group` (
  `id` int(11) NOT NULL,
  `name` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mava_user`
--

DROP TABLE IF EXISTS `mava_user`;
CREATE TABLE `mava_user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biography` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_data` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `twitter_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_data` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `gplus_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_data` longtext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `two_step_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mava_user`
--

INSERT INTO `mava_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `created_at`, `updated_at`, `date_of_birth`, `firstname`, `lastname`, `website`, `biography`, `gender`, `locale`, `timezone`, `phone`, `facebook_uid`, `facebook_name`, `facebook_data`, `twitter_uid`, `twitter_name`, `twitter_data`, `gplus_uid`, `gplus_name`, `gplus_data`, `token`, `two_step_code`) VALUES
(1, 'moore.mafalda', 'moore.mafalda', 'okiehn@gmail.com', 'okiehn@gmail.com', 0, NULL, 'P|\'S*Qs', NULL, NULL, NULL, 'a:0:{}', '2018-04-23 07:19:17', '2018-04-23 07:19:17', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL),
(2, 'alaina04', 'alaina04', 'ohara.gerson@yahoo.com', 'ohara.gerson@yahoo.com', 0, NULL, '%pZx<Fwu_8tJ\\h', NULL, NULL, NULL, 'a:0:{}', '2018-04-23 07:19:17', '2018-04-23 07:19:17', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL),
(3, 'werner.gutmann', 'werner.gutmann', 'botsford.joaquin@wilderman.com', 'botsford.joaquin@wilderman.com', 0, NULL, '=DW5Hr+*6^n##L*qC', NULL, NULL, NULL, 'a:0:{}', '2018-04-23 07:19:17', '2018-04-23 07:19:17', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL),
(4, 'ritchie.millie', 'ritchie.millie', 'ardith12@gmail.com', 'ardith12@gmail.com', 0, NULL, 'WZ0?rEmd<B;v.gpJ', NULL, NULL, NULL, 'a:0:{}', '2018-04-23 07:19:17', '2018-04-23 07:19:17', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL),
(5, 'renee.doyle', 'renee.doyle', 'geovany75@gislason.com', 'geovany75@gislason.com', 0, NULL, 'Tz)_U;=yT\\\\', NULL, NULL, NULL, 'a:0:{}', '2018-04-23 07:19:17', '2018-04-23 07:19:17', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL),
(6, 'daphne.breitenberg', 'daphne.breitenberg', 'shania.bednar@bauch.net', 'shania.bednar@bauch.net', 0, NULL, 'e08pXh)v+0_eMt', NULL, NULL, NULL, 'a:0:{}', '2018-04-23 07:19:17', '2018-04-23 07:19:17', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL),
(7, 'whettinger', 'whettinger', 'johns.maxine@yahoo.com', 'johns.maxine@yahoo.com', 0, NULL, 'VS~:,+AWW+k~-', NULL, NULL, NULL, 'a:0:{}', '2018-04-23 07:19:17', '2018-04-23 07:19:17', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL),
(8, 'hackett.frederick', 'hackett.frederick', 'walker.damore@gmail.com', 'walker.damore@gmail.com', 0, NULL, 'w\'C4Kq)c:(]9HP`', NULL, NULL, NULL, 'a:0:{}', '2018-04-23 07:19:17', '2018-04-23 07:19:17', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL),
(9, 'pierre28', 'pierre28', 'anissa.damore@murray.com', 'anissa.damore@murray.com', 0, NULL, '=U\".grh', NULL, NULL, NULL, 'a:0:{}', '2018-04-23 07:19:17', '2018-04-23 07:19:17', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL),
(10, 'xskiles', 'xskiles', 'elnora.sipes@gmail.com', 'elnora.sipes@gmail.com', 0, NULL, ':M0-j(q:>A,', NULL, NULL, NULL, 'a:0:{}', '2018-04-23 07:19:17', '2018-04-23 07:19:17', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL),
(11, 'Mava', 'mava', 'alex@alex.com', 'alex@alex.com', 1, NULL, '$2y$13$hqrXThQazY1oNroCKFbCoOz6ABqCO.tcTMgBDzJZIQSOmi54p2jjS', NULL, NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}', '2018-04-23 07:23:50', '2018-04-23 07:23:50', NULL, NULL, NULL, NULL, NULL, 'u', NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL, 'null', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `workspace_id` int(11) DEFAULT NULL,
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `due_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `workspace_id`, `title`, `description`, `due_date`) VALUES
(1, 1, 'aut', 'Minus quo et voluptas quasi expedita quia veritatis. Ut at magnam est quidem aliquid aut. Velit dolorum ad fugiat non. Aliquid eveniet harum temporibus voluptatem.', '2018-04-29 05:50:09'),
(2, 1, 'voluptatem', 'Voluptate natus sint qui consequuntur excepturi. Ex repellat quasi dolor aut et. Praesentium ullam minus iure dignissimos.', '2018-04-29 00:59:23'),
(3, 3, 'numquam', 'Perferendis alias sit minus at et aperiam veritatis. Voluptatum eum et et nihil exercitationem doloremque. Vel quasi aut qui ipsa minus nostrum. Dolor ab consequuntur harum. Rerum vel sit illum et.', '2018-04-28 02:09:42'),
(4, 3, 'fugiat', 'In est laborum sapiente. Libero placeat rem ut voluptas. Fugiat esse quasi in aspernatur.', '2018-04-30 12:32:01'),
(5, 2, 'id', 'Laborum cumque molestiae nostrum corporis. Sit sit soluta veniam illum qui voluptatibus. Labore assumenda eveniet ad officia. Eos blanditiis laborum molestiae consequatur error.', '2018-04-28 10:18:54'),
(6, 2, 'delectus', 'Voluptas et non assumenda id. Quis quis velit optio. Deserunt qui veniam eligendi enim asperiores. Saepe et natus voluptas quo qui earum.', '2018-04-25 07:59:39'),
(7, 2, 'et', 'Magnam dolorem saepe officia quis. Tenetur est iure nihil et voluptatem. Aut autem accusantium voluptatem reiciendis molestias quam. Maxime velit molestiae sunt eos iure dolor error.', '2018-04-28 14:04:40'),
(8, 1, 'My project', 'description', '2018-04-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `due_date` datetime NOT NULL,
  `attachment` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `project_id`, `user_id`, `title`, `description`, `due_date`, `attachment`) VALUES
(1, 1, 6, 'quo', 'Est sit iste magnam quidem. Dignissimos libero facere aliquid doloremque corrupti quia non. Ut quia id cupiditate corrupti. Debitis voluptatum consequatur blanditiis officia doloribus id et expedita.', '2018-06-29 19:15:34', 0),
(2, 4, 4, 'dolorem', 'Error consequuntur dicta velit reiciendis voluptas. Magni sunt consequatur sit dolorem ad aliquam.', '2018-05-10 09:25:03', 1),
(3, 6, 5, 'ullam', 'Nihil cupiditate est debitis soluta consequatur nihil vel. Consequatur mollitia sint et esse aliquam. Esse omnis aperiam sit velit accusantium.', '2018-06-05 02:18:27', 1),
(4, 3, 1, 'sunt', 'Et temporibus iste atque sit necessitatibus voluptates. Aspernatur saepe veritatis non id eos facere. Dolor fuga sunt exercitationem optio. Qui nulla quis autem ipsa earum earum quia inventore.', '2018-05-12 09:26:45', 1),
(5, 3, 3, 'nisi', 'Dolores laborum quo exercitationem repudiandae nihil quia ut. Recusandae amet laborum sunt tempore. Accusantium sapiente voluptatum sint tempora quae sapiente.', '2018-05-08 00:43:56', 0),
(6, 2, 4, 'tempore', 'Velit et inventore quos vero sint. Est ut sit minima qui. Quos dolorum consequatur fuga voluptatem.', '2018-07-18 04:04:00', 0),
(7, 7, 7, 'facere', 'Aperiam ut consequatur error. Neque sunt ipsam sunt ut omnis. Consectetur rerum nesciunt optio veniam ratione corporis. Facilis est qui nihil ipsum quia esse.', '2018-07-06 22:06:00', 1),
(8, 5, 10, 'hic', 'Officiis perspiciatis placeat aut sint. Dignissimos non unde nam sit sit ipsa dolorem. Voluptates alias soluta odit sint tenetur voluptas sunt. Est aliquam itaque dolor.', '2018-05-18 21:01:59', 0),
(9, 1, 4, 'esse', 'Ad aut mollitia nihil sit dolore enim. Ut error quas facilis nostrum odit. Rem sint est maxime placeat. Corporis enim amet laborum.', '2018-05-18 18:06:40', 0),
(10, 1, 9, 'dicta', 'Autem at odio nemo delectus. Itaque rem ut aut culpa et mollitia. Voluptatem exercitationem voluptate nesciunt incidunt.', '2018-06-11 15:39:51', 0),
(11, 2, 3, 'reiciendis', 'Libero dicta ad ut aut rerum. In quidem dignissimos ut nesciunt ut vel. Nulla aliquid sunt provident accusantium eius quo impedit deserunt. Voluptate officiis modi omnis odio natus quis modi.', '2018-06-23 23:35:44', 0),
(12, 2, 8, 'quisquam', 'Voluptatum enim veritatis fuga numquam nostrum deserunt. Autem voluptas maiores est sint. Similique minus animi quos. Animi asperiores qui hic fuga quasi exercitationem atque.', '2018-06-02 04:59:44', 0),
(13, 3, 8, 'eum', 'Et similique tempore quidem dignissimos expedita. Omnis facilis quis velit deserunt id. Deleniti at asperiores illo nam cupiditate. Sed nulla perspiciatis dolores maiores.', '2018-06-10 19:33:43', 0),
(14, 4, 7, 'maiores', 'Nostrum minus voluptatem consequatur dolore ipsam ipsa. Eum sint voluptatum pariatur aliquam et aut quasi. Qui magnam omnis aliquid dolores soluta molestiae veritatis.', '2018-05-30 00:22:46', 0),
(15, 2, 7, 'et', 'Molestiae ipsa in amet ut aut qui. Fugiat placeat aspernatur alias voluptatum. Numquam similique non omnis voluptatibus in.', '2018-07-12 01:57:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `workspace`
--

DROP TABLE IF EXISTS `workspace`;
CREATE TABLE `workspace` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` tinytext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `workspace`
--

INSERT INTO `workspace` (`id`, `name`, `description`) VALUES
(1, 'veritatis', 'Est tempore et atque quam et impedit illum. Consequatur reprehenderit quasi et quae quod. Occaecati est voluptas dolorum omnis. Quia ut qui modi est ab impedit rerum velit.'),
(2, 'maiores', 'Ut et ut provident qui. Sit corrupti voluptas et ipsum laboriosam fugit est vitae. Fuga neque enim nostrum consequatur. Expedita suscipit et et.'),
(3, 'impedit', 'Sunt harum id voluptates dolor et sapiente. Sunt numquam qui maiores adipisci magni aut animi. Voluptatem molestiae odio saepe et ut quis.'),
(4, 'My workspace', 'description');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acl_classes`
--
ALTER TABLE `acl_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_69DD750638A36066` (`class_type`);

--
-- Indexes for table `acl_entries`
--
ALTER TABLE `acl_entries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_46C8B806EA000B103D9AB4A64DEF17BCE4289BF4` (`class_id`,`object_identity_id`,`field_name`,`ace_order`),
  ADD KEY `IDX_46C8B806EA000B103D9AB4A6DF9183C9` (`class_id`,`object_identity_id`,`security_identity_id`),
  ADD KEY `IDX_46C8B806EA000B10` (`class_id`),
  ADD KEY `IDX_46C8B8063D9AB4A6` (`object_identity_id`),
  ADD KEY `IDX_46C8B806DF9183C9` (`security_identity_id`);

--
-- Indexes for table `acl_object_identities`
--
ALTER TABLE `acl_object_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9407E5494B12AD6EA000B10` (`object_identifier`,`class_id`),
  ADD KEY `IDX_9407E54977FA751A` (`parent_object_identity_id`);

--
-- Indexes for table `acl_object_identity_ancestors`
--
ALTER TABLE `acl_object_identity_ancestors`
  ADD PRIMARY KEY (`object_identity_id`,`ancestor_id`),
  ADD KEY `IDX_825DE2993D9AB4A6` (`object_identity_id`),
  ADD KEY `IDX_825DE299C671CEA1` (`ancestor_id`);

--
-- Indexes for table `acl_security_identities`
--
ALTER TABLE `acl_security_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8835EE78772E836AF85E0677` (`identifier`,`username`);

--
-- Indexes for table `fos_user_group`
--
ALTER TABLE `fos_user_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_583D1F3E5E237E06` (`name`);

--
-- Indexes for table `fos_user_user`
--
ALTER TABLE `fos_user_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C560D76192FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_C560D761A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_C560D761C05FB297` (`confirmation_token`);

--
-- Indexes for table `fos_user_user_group`
--
ALTER TABLE `fos_user_user_group`
  ADD PRIMARY KEY (`user_id`,`group_id`),
  ADD KEY `IDX_B3C77447A76ED395` (`user_id`),
  ADD KEY `IDX_B3C77447FE54D947` (`group_id`);

--
-- Indexes for table `mava_group`
--
ALTER TABLE `mava_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9D4FA4ED5E237E06` (`name`);

--
-- Indexes for table `mava_user`
--
ALTER TABLE `mava_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DE0BAD992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_DE0BAD9A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_DE0BAD9C05FB297` (`confirmation_token`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workspace_id` (`workspace_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `task_ibfk_2` (`user_id`);

--
-- Indexes for table `workspace`
--
ALTER TABLE `workspace`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acl_classes`
--
ALTER TABLE `acl_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acl_entries`
--
ALTER TABLE `acl_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acl_object_identities`
--
ALTER TABLE `acl_object_identities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acl_security_identities`
--
ALTER TABLE `acl_security_identities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fos_user_group`
--
ALTER TABLE `fos_user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fos_user_user`
--
ALTER TABLE `fos_user_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mava_group`
--
ALTER TABLE `mava_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mava_user`
--
ALTER TABLE `mava_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `workspace`
--
ALTER TABLE `workspace`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acl_entries`
--
ALTER TABLE `acl_entries`
  ADD CONSTRAINT `FK_46C8B8063D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_46C8B806DF9183C9` FOREIGN KEY (`security_identity_id`) REFERENCES `acl_security_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_46C8B806EA000B10` FOREIGN KEY (`class_id`) REFERENCES `acl_classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `acl_object_identities`
--
ALTER TABLE `acl_object_identities`
  ADD CONSTRAINT `FK_9407E54977FA751A` FOREIGN KEY (`parent_object_identity_id`) REFERENCES `acl_object_identities` (`id`);

--
-- Constraints for table `acl_object_identity_ancestors`
--
ALTER TABLE `acl_object_identity_ancestors`
  ADD CONSTRAINT `FK_825DE2993D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_825DE299C671CEA1` FOREIGN KEY (`ancestor_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fos_user_user_group`
--
ALTER TABLE `fos_user_user_group`
  ADD CONSTRAINT `FK_B3C77447A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B3C77447FE54D947` FOREIGN KEY (`group_id`) REFERENCES `fos_user_group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `FK_2FB3D0EE82D40A1F` FOREIGN KEY (`workspace_id`) REFERENCES `workspace` (`id`);

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `FK_527EDB25166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `FK_527EDB25A76ED395` FOREIGN KEY (`user_id`) REFERENCES `mava_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
