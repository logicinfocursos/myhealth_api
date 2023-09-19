-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.34 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.5.0.6677
-- --------------------------------------------------------

-- Copiando estrutura do banco de dados para myhealth
CREATE DATABASE IF NOT EXISTS `myhealth` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `myhealth`;

-- Copiando estrutura para tabela myhealth.foods
CREATE TABLE IF NOT EXISTS `foods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perceivedSensation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `labestimatedCaloriesoratory` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foodDetails` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caloriesCalculation` decimal(65,30) DEFAULT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usercode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT '1',
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `measurements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `heartbeat` int DEFAULT NULL,
  `maximum` int DEFAULT NULL,
  `minimum` int DEFAULT NULL,
  `imc` decimal(10,2) DEFAULT NULL,
  `height` decimal(10,2) DEFAULT NULL,
  `alert` tinyint(1) NOT NULL DEFAULT '0',
  `status` int DEFAULT '1',
  `weight` decimal(10,2) DEFAULT NULL,
  `usercode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `measurement_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela myhealth.measurements: ~5 rows (aproximadamente)
INSERT INTO `measurements` (`id`, `code`, `comments`, `heartbeat`, `maximum`, `minimum`, `imc`, `height`, `alert`, `status`, `weight`, `usercode`, `measurement_at`, `created_at`, `updated_at`) VALUES
	(1, 'yy44', 'primeira medição', 77, 130, 91, NULL, NULL, 0, 1, 82.30, '1', '2023-09-18 15:25:28', '2023-09-18 20:02:32', '2023-09-18 20:02:32'),
	(13, 'RXSKT', '15', 13, 11, 12, NULL, NULL, 0, 1, 14.00, '1', NULL, '2023-09-18 21:50:24', '2023-09-18 21:50:24'),
	(14, 'Hke9w', '', 0, 0, 0, NULL, NULL, 0, 1, 0.00, '1', NULL, '2023-09-18 22:11:58', '2023-09-18 22:11:58');


CREATE TABLE IF NOT EXISTS `medicines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namerefer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `laboratory` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dosage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(65,30) DEFAULT NULL,
  `usercode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT '1',
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `physicalactivities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calories` int DEFAULT NULL,
  `activity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intensity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perceivedSensation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distance` decimal(65,30) DEFAULT NULL,
  `start` datetime(3) DEFAULT NULL,
  `end` datetime(3) DEFAULT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usercode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT '1',
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `sleepnights` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` datetime(3) DEFAULT NULL,
  `wakeUp` datetime(3) DEFAULT NULL,
  `sleepHours` decimal(65,30) DEFAULT NULL,
  `sleepQualitySensation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT '1',
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthdate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` decimal(10,2) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `bloodtype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imc` decimal(10,2) DEFAULT NULL,
  `imcclassification` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passwordcrypt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT '1',
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Copiando estrutura para tabela myhealth.weighings
CREATE TABLE IF NOT EXISTS `weighings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` decimal(65,30) DEFAULT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weighing_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `status` int DEFAULT '1',
  `created_at` datetime(3) DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
