create database `maxwell` default character set utf8 collate utf8_general_ci;

use maxwell;

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
 `id` bigint(20) NOT NULL,
 `created_at` bigint(40) DEFAULT NULL,
 `last_modified` bigint(40) DEFAULT NULL,
 `email` varchar(255) DEFAULT NULL,
 `first_name` varchar(255) DEFAULT NULL,
 `last_name` varchar(255) DEFAULT NULL,
 `username` varchar(255) DEFAULT NULL,
 PRIMARY KEY (`id`)
);

INSERT INTO `user` (`id`, `created_at`, `last_modified`, `email`, `first_name`, `last_name`, `username`)
VALUES
  (0,1,1,'chan@example.com','Lee','Chan','user');