CREATE DATABASE  IF NOT EXISTS `votw` ;
USE `votw`;


DROP TABLE IF EXISTS `PassportMaster`;

CREATE TABLE `PassportMaster` (
    `userid` varchar(8) Not NULL,
    `passportnumner` varchar(45) Not NULL,
`givenname` varchar(45) Not NULL,
    `DOB` datetime NOT NULL,
    `placeofresidential` varchar(45) Not NULL,
  `placeofissue` varchar(45) NOT NULL,
 `dateofissue` datetime NOT NULL,
`expirydate` datetime NOT NULL,

    FOREIGN KEY (`userid`) REFERENCES `UserMaster` (`id`)    ON DELETE CASCADE ON UPDATE NO ACTION

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `PassportMaster` WRITE;

UNLOCK TABLES;

