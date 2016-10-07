CREATE DATABASE  IF NOT EXISTS `votw` ;
USE `votw`;


DROP TABLE IF EXISTS `UserLeads`;

CREATE TABLE `UserLeads` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `userid` varchar(8) Not NULL,
  `leadcreationdate` datetime NOT NULL,
  PRIMARY KEY (`id`),
    FOREIGN KEY (`userid`) REFERENCES `UserMaster` (`id`)    ON DELETE CASCADE ON UPDATE NO ACTION

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `UserLeads` WRITE;

UNLOCK TABLES;

