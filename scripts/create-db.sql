CREATE USER IF NOT EXISTS 'user'@'localhost' IDENTIFIED BY 'password';
CREATE DATABASE IF NOT EXISTS `stg` DEFAULT CHARACTER SET `utf8` COLLATE `utf8_unicode_ci`;
GRANT ALL ON `stg`.* TO 'user'@'localhost';
USE `stg`;