CREATE DATABASE  IF NOT EXISTS `votw`;
USE `votw`;

DROP TABLE IF EXISTS `UserTransaction`;

CREATE TABLE `UserTransaction` (
   `userid` varchar(8) NOT NULL,
  `email` varchar(45) NOT NULL,
  `orderid` varchar(45) NOT NULL,
  `transactionid` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,

 FOREIGN KEY (`userid`) REFERENCES `UserMaster` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



LOCK TABLES `UserTransaction` WRITE;

UNLOCK TABLES;

