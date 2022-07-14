-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2022 at 02:07 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evote`
--

-- --------------------------------------------------------

--
-- Table structure for table `condidat`
--

CREATE TABLE `condidat` (
  `id` int(11) NOT NULL,
  `code_condidat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_condidat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `elec_com` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `condidat`
--

INSERT INTO `condidat` (`id`, `code_condidat`, `name_condidat`, `img_path`, `elec_com`) VALUES
(1, '123456lk', 'Kais Said', 'img/President_Kais_Saïed_cropped.jpg', 'Kaïs Saïed, né le 22 février 1958 à Tunis, est un homme d\'État tunisien, président de la République depuis le 23 octobre 2019. Universitaire spécialisé en droit constitutionnel et juriste de profession, il est président de l\'Association tunisienne de droi'),
(2, '4684654584', 'Habib Bourguiba', 'img/Habib_Bourguiba_Portrait.jpg', 'Habib Bourguiba, de son nom complet Habib Ben Ali Bourguiba, né probablement le 3 août 1903 à Monastir et mort le 6 avril 2000 dans la même ville, est un homme d\'État tunisien, président de la République entre 1957 et 1987. '),
(3, '5641f5d4sqf', 'Beji Caid Essebsi', 'img/120px-Beji_Caid_el_Sebsi_at_the_37th_G8_Summit_in_Deauville_006.jpg', 'Béji Caïd Essebsi, souvent désigné par ses initiales BCE, né le 29 novembre 1926 à Sidi Bou Saïd et mort le 25 juillet 2019 à Tunis, est un homme d\'État tunisien. Il est président de la République du 31 décembre 2014 '),
(4, 'f5sd4f65qs4f56sq4f', 'Zine El Abidine Ben Ali', 'img/120px-Zine_El_Abidine_Ben_Ali.jpg', 'Zine el-Abidine Ben Ali, né le 3 septembre 1936 à Hammam Sousse et mort le 19 septembre 2019 à Djeddah, est un homme d\'État tunisien. Il est président de la République tunisienne du 7 novembre 1987 au 14 janvier 2011');

-- --------------------------------------------------------

--
-- Table structure for table `condidat_user`
--

CREATE TABLE `condidat_user` (
  `condidat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `condidat_user`
--

INSERT INTO `condidat_user` (`condidat_id`, `user_id`) VALUES
(1, 1),
(2, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220528214401', '2022-05-28 23:44:12', 485),
('DoctrineMigrations\\Version20220528220554', '2022-05-28 23:10:00', 485),
('DoctrineMigrations\\Version20220529101042', '2022-05-29 12:10:52', 480),
('DoctrineMigrations\\Version20220529102613', '2022-05-29 12:26:15', 33);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'Imedattia1032@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$bXpJWjBlNXBDLjlZR1Z2ZQ$siUbFwyDGnWy0jAPEwloh0O8WlqgznPNsBB07f45HsE'),
(2, 'admin@admin.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$bXpJWjBlNXBDLjlZR1Z2ZQ$siUbFwyDGnWy0jAPEwloh0O8WlqgznPNsBB07f45HsE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `condidat`
--
ALTER TABLE `condidat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `condidat_user`
--
ALTER TABLE `condidat_user`
  ADD PRIMARY KEY (`condidat_id`,`user_id`),
  ADD KEY `IDX_33A2DA281619DB31` (`condidat_id`),
  ADD KEY `IDX_33A2DA28A76ED395` (`user_id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `condidat`
--
ALTER TABLE `condidat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `condidat_user`
--
ALTER TABLE `condidat_user`
  ADD CONSTRAINT `FK_33A2DA281619DB31` FOREIGN KEY (`condidat_id`) REFERENCES `condidat` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_33A2DA28A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
