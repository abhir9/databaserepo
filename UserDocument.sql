CREATE DATABASE  IF NOT EXISTS `votw`;
USE `votw`;

DROP TABLE IF EXISTS `UserDocument`;

CREATE TABLE `UserDocument` (
`id` int(6) NOT NULL AUTO_INCREMENT,
 `userid` varchar(8) Not NULL,
  `documenttypeid` int(6)  NOT NULL,
  `documenturl` varchar(45) NOT NULL,  
  PRIMARY KEY (`id`),
  FOREIGN KEY (`userid`) REFERENCES `UserMaster` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
 FOREIGN KEY (`documenttypeid`) REFERENCES `DocumentType` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



LOCK TABLES `UserDocument` WRITE;

UNLOCK TABLES;

