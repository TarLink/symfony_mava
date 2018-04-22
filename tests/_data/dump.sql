-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: symfony_db_1
-- Generation Time: Apr 21, 2018 at 01:48 PM
-- Server version: 10.2.14-MariaDB-10.2.14+maria~jessie
-- PHP Version: 7.2.4

SET FOREIGN_KEY_CHECKS=0;
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
CREATE DATABASE IF NOT EXISTS `mava_test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mava_test`;

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
(1, 1, 'aut', 'Minus quo et voluptas quasi expedita quia veritatis. Ut at magnam est quidem aliquid aut. Velit dolorum ad fugiat non. Aliquid eveniet harum temporibus voluptatem.', '2018-04-27 12:15:23'),
(2, 1, 'voluptatem', 'Voluptate natus sint qui consequuntur excepturi. Ex repellat quasi dolor aut et. Praesentium ullam minus iure dignissimos.', '2018-04-27 07:24:37'),
(3, 3, 'numquam', 'Perferendis alias sit minus at et aperiam veritatis. Voluptatum eum et et nihil exercitationem doloremque. Vel quasi aut qui ipsa minus nostrum. Dolor ab consequuntur harum. Rerum vel sit illum et.', '2018-04-26 08:34:56'),
(4, 3, 'fugiat', 'In est laborum sapiente. Libero placeat rem ut voluptas. Fugiat esse quasi in aspernatur.', '2018-04-28 18:57:15'),
(5, 2, 'id', 'Laborum cumque molestiae nostrum corporis. Sit sit soluta veniam illum qui voluptatibus. Labore assumenda eveniet ad officia. Eos blanditiis laborum molestiae consequatur error.', '2018-04-26 16:44:08'),
(6, 2, 'delectus', 'Voluptas et non assumenda id. Quis quis velit optio. Deserunt qui veniam eligendi enim asperiores. Saepe et natus voluptas quo qui earum.', '2018-04-23 14:24:53'),
(7, 2, 'et', 'Magnam dolorem saepe officia quis. Tenetur est iure nihil et voluptatem. Aut autem accusantium voluptatem reiciendis molestias quam. Maxime velit molestiae sunt eos iure dolor error.', '2018-04-26 20:29:54');

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
(1, 1, 17, 'quo', 'Est sit iste magnam quidem. Dignissimos libero facere aliquid doloremque corrupti quia non. Ut quia id cupiditate corrupti. Debitis voluptatum consequatur blanditiis officia doloribus id et expedita.', '2018-06-28 01:40:48', 0),
(2, 4, 15, 'dolorem', 'Error consequuntur dicta velit reiciendis voluptas. Magni sunt consequatur sit dolorem ad aliquam.', '2018-05-08 15:50:17', 1),
(3, 6, 16, 'ullam', 'Nihil cupiditate est debitis soluta consequatur nihil vel. Consequatur mollitia sint et esse aliquam. Esse omnis aperiam sit velit accusantium.', '2018-06-03 08:43:41', 1),
(4, 3, 12, 'sunt', 'Et temporibus iste atque sit necessitatibus voluptates. Aspernatur saepe veritatis non id eos facere. Dolor fuga sunt exercitationem optio. Qui nulla quis autem ipsa earum earum quia inventore.', '2018-05-10 15:51:59', 1),
(5, 3, 14, 'nisi', 'Dolores laborum quo exercitationem repudiandae nihil quia ut. Recusandae amet laborum sunt tempore. Accusantium sapiente voluptatum sint tempora quae sapiente.', '2018-05-06 07:09:10', 0),
(6, 2, 15, 'tempore', 'Velit et inventore quos vero sint. Est ut sit minima qui. Quos dolorum consequatur fuga voluptatem.', '2018-07-16 10:29:14', 0),
(7, 7, 18, 'facere', 'Aperiam ut consequatur error. Neque sunt ipsam sunt ut omnis. Consectetur rerum nesciunt optio veniam ratione corporis. Facilis est qui nihil ipsum quia esse.', '2018-07-05 04:31:14', 1),
(8, 5, 21, 'hic', 'Officiis perspiciatis placeat aut sint. Dignissimos non unde nam sit sit ipsa dolorem. Voluptates alias soluta odit sint tenetur voluptas sunt. Est aliquam itaque dolor.', '2018-05-17 03:27:13', 0),
(9, 1, 15, 'esse', 'Ad aut mollitia nihil sit dolore enim. Ut error quas facilis nostrum odit. Rem sint est maxime placeat. Corporis enim amet laborum.', '2018-05-17 00:31:54', 0),
(10, 1, 20, 'dicta', 'Autem at odio nemo delectus. Itaque rem ut aut culpa et mollitia. Voluptatem exercitationem voluptate nesciunt incidunt.', '2018-06-09 22:05:05', 0),
(11, 2, 14, 'reiciendis', 'Libero dicta ad ut aut rerum. In quidem dignissimos ut nesciunt ut vel. Nulla aliquid sunt provident accusantium eius quo impedit deserunt. Voluptate officiis modi omnis odio natus quis modi.', '2018-06-22 06:00:58', 0),
(12, 2, 19, 'quisquam', 'Voluptatum enim veritatis fuga numquam nostrum deserunt. Autem voluptas maiores est sint. Similique minus animi quos. Animi asperiores qui hic fuga quasi exercitationem atque.', '2018-05-31 11:24:58', 0),
(13, 3, 19, 'eum', 'Et similique tempore quidem dignissimos expedita. Omnis facilis quis velit deserunt id. Deleniti at asperiores illo nam cupiditate. Sed nulla perspiciatis dolores maiores.', '2018-06-09 01:58:57', 0),
(14, 4, 18, 'maiores', 'Nostrum minus voluptatem consequatur dolore ipsam ipsa. Eum sint voluptatum pariatur aliquam et aut quasi. Qui magnam omnis aliquid dolores soluta molestiae veritatis.', '2018-05-28 06:48:00', 0),
(15, 2, 18, 'et', 'Molestiae ipsa in amet ut aut qui. Fugiat placeat aspernatur alias voluptatum. Numquam similique non omnis voluptatibus in.', '2018-07-10 08:23:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
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
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(12, 'moore.mafalda', 'moore.mafalda', 'okiehn@gmail.com', 'okiehn@gmail.com', 0, NULL, 'P|\'S*Qs', NULL, NULL, NULL, 'a:0:{}'),
(13, 'alaina04', 'alaina04', 'ohara.gerson@yahoo.com', 'ohara.gerson@yahoo.com', 0, NULL, '%pZx<Fwu_8tJ\\h', NULL, NULL, NULL, 'a:0:{}'),
(14, 'werner.gutmann', 'werner.gutmann', 'botsford.joaquin@wilderman.com', 'botsford.joaquin@wilderman.com', 0, NULL, '=DW5Hr+*6^n##L*qC', NULL, NULL, NULL, 'a:0:{}'),
(15, 'ritchie.millie', 'ritchie.millie', 'ardith12@gmail.com', 'ardith12@gmail.com', 0, NULL, 'WZ0?rEmd<B;v.gpJ', NULL, NULL, NULL, 'a:0:{}'),
(16, 'renee.doyle', 'renee.doyle', 'geovany75@gislason.com', 'geovany75@gislason.com', 0, NULL, 'Tz)_U;=yT\\\\', NULL, NULL, NULL, 'a:0:{}'),
(17, 'daphne.breitenberg', 'daphne.breitenberg', 'shania.bednar@bauch.net', 'shania.bednar@bauch.net', 0, NULL, 'e08pXh)v+0_eMt', NULL, NULL, NULL, 'a:0:{}'),
(18, 'whettinger', 'whettinger', 'johns.maxine@yahoo.com', 'johns.maxine@yahoo.com', 0, NULL, 'VS~:,+AWW+k~-', NULL, NULL, NULL, 'a:0:{}'),
(19, 'hackett.frederick', 'hackett.frederick', 'walker.damore@gmail.com', 'walker.damore@gmail.com', 0, NULL, 'w\'C4Kq)c:(]9HP`', NULL, NULL, NULL, 'a:0:{}'),
(20, 'pierre28', 'pierre28', 'anissa.damore@murray.com', 'anissa.damore@murray.com', 0, NULL, '=U\".grh', NULL, NULL, NULL, 'a:0:{}'),
(21, 'xskiles', 'xskiles', 'elnora.sipes@gmail.com', 'elnora.sipes@gmail.com', 0, NULL, ':M0-j(q:>A,', NULL, NULL, NULL, 'a:0:{}');

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
(3, 'impedit', 'Sunt harum id voluptates dolor et sapiente. Sunt numquam qui maiores adipisci magni aut animi. Voluptatem molestiae odio saepe et ut quis.');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649C05FB297` (`confirmation_token`);

--
-- Indexes for table `workspace`
--
ALTER TABLE `workspace`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `workspace`
--
ALTER TABLE `workspace`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

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
  ADD CONSTRAINT `FK_527EDB25A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
