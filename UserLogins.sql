CREATE DATABASE  IF NOT EXISTS `votw` ;
USE `votw`;


DROP TABLE IF EXISTS `UserLogins`;

CREATE TABLE `UserLogins` (
    `userid` varchar(8) Not NULL,
    `ipaddress` varchar(45) Not NULL,
`loginStatus` tinyint(1) Not NULL,    
    `browser` varchar(45) Not NULL,
  `activity` varchar(10) NOT NULL,
 `activitytime` datetime NOT NULL,
    FOREIGN KEY (`userid`) REFERENCES `UserMaster` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `UserLogins` WRITE;

UNLOCK TABLES;

