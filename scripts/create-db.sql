CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
CREATE DATABASE IF NOT EXISTS `stg` DEFAULT CHARACTER SET `utf8` COLLATE `utf8_unicode_ci`;
GRANT PRIVILEGE ON `stg` TO 'user'@'localhost';