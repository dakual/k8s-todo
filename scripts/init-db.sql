DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `tasks` (`id`, `title`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'test', 1, '2023-03-25 18:30:55', '2023-04-01 19:18:37'),
(3, 'ccccc', 1, '2023-03-26 07:39:08', '2023-04-01 19:30:06'),
(5, 'aaaa', 1, '2023-03-26 07:43:00', '2023-04-02 07:07:54'),
(8, 'tes1', 1, '2023-03-26 12:49:27', '2023-03-31 09:41:35'),
(10, 'tes4', 0, '2023-03-26 15:21:09', '2023-04-01 08:57:25'),
(12, 'dene2', 1, '2023-03-26 15:27:56', '2023-04-01 08:57:24'),
(14, 'bu bir deneme taskıdır', 0, '2023-03-26 17:02:48', '2023-03-26 17:02:48');
COMMIT;

-- CREATE USER IF NOT EXISTS 'user'@'localhost' IDENTIFIED BY 'password';
-- CREATE DATABASE IF NOT EXISTS `stg` DEFAULT CHARACTER SET `utf8` COLLATE `utf8_unicode_ci`;
-- GRANT ALL ON `stg`.* TO 'user'@'localhost';
-- USE `stg`;