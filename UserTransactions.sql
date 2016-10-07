CREATE DATABASE  IF NOT EXISTS `votw`;
USE `votw`;

DROP TABLE IF EXISTS `UserTransactions`;

CREATE TABLE `UserTransactions` (
   `userid` varchar(8) NOT NULL,
    `orderid` varchar(45) NOT NULL,
  `transactionid` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
`transactiondate` datetime NOT NULL,

 FOREIGN KEY (`userid`) REFERENCES `UserMaster` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



LOCK TABLES `UserTransactions` WRITE;

UNLOCK TABLES;

