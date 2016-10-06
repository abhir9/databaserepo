CREATE DATABASE  IF NOT EXISTS `votw` ;
USE `votw`;


DROP TABLE IF EXISTS `UserMaster`;

CREATE TABLE `UserMaster` (
  `id` varchar(8) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contactnumber` varchar(11) NOT NULL,
  `password` varchar(45) NOT NULL,
  `userstatus` varchar(1) NOT NULL,
  `createdon` datetime NOT NULL,
  `lastupdated` datetime NOT NULL,
  `isadmin` tinyint(1) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



LOCK TABLES `UserMaster` WRITE;

UNLOCK TABLES;

