CREATE DATABASE  IF NOT EXISTS `votw` ;
USE `votw`;


DROP TABLE IF EXISTS `UserLogin`;

CREATE TABLE `UserLogin` (
    `userid` varchar(8) Not NULL,
    `IP` varchar(45) Not NULL,
`isactive` tinyint(1) Not NULL,
    `status` tinyint(1) Not NULL,
    `browser` varchar(45) Not NULL,
  `logintime` datetime NOT NULL,
 `logouttime` datetime NOT NULL,
    FOREIGN KEY (`userid`) REFERENCES `UserMaster` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `UserLogin` WRITE;

UNLOCK TABLES;

