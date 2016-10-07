CREATE DATABASE  IF NOT EXISTS `votw`;
USE `votw`;

DROP TABLE IF EXISTS `UserDocuments`;

CREATE TABLE `UserDocuments` (
`id` int(6) NOT NULL AUTO_INCREMENT,
  `userid` varchar(8) NOT NULL,
  `documenttypeid` int(6) NOT NULL,
  `documenttitle` varchar(45) NOT NULL,
  `uploaddate` varchar(45) NOT NULL,
  `documentpath` varchar(45) NOT NULL,
  `originalfilename` varchar(45) NOT NULL,
  `mimetype` varchar(45) NOT NULL,
  `uploadedby` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`userid`) REFERENCES `UserMaster` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
 FOREIGN KEY (`documenttypeid`) REFERENCES `DocumentTypes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



LOCK TABLES `UserDocuments` WRITE;

UNLOCK TABLES;

