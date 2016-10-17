-- MySQL dump 10.13  Distrib 5.5.50, for Win32 (x86)
--
-- Host: localhost    Database: votw
-- ------------------------------------------------------
-- Server version	5.5.50

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `documenttypes`
--
CREATE DATABASE  IF NOT EXISTS `votw`;
use 'votw';
DROP TABLE IF EXISTS `documenttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documenttypes` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documenttypes`
--

LOCK TABLES `documenttypes` WRITE;
/*!40000 ALTER TABLE `documenttypes` DISABLE KEYS */;
INSERT INTO `documenttypes` VALUES (1,'Passport'),(2,'Residential Proof'),(3,'Aadhar Card'),(4,'PAN Card'),(5,'Electricity Bill'),(6,'Telephone Bill'),(7,'Driving License'),(8,'Ration Card'),(9,'Birth Certicifcate'),(10,'Domicile Certificate');
/*!40000 ALTER TABLE `documenttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passportmaster`
--

DROP TABLE IF EXISTS `passportmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passportmaster` (
  `userid` varchar(8) NOT NULL DEFAULT '',
  `passportnumber` varchar(45) NOT NULL,
  `givenname` varchar(45) DEFAULT NULL,
  `dateofbirth` datetime DEFAULT NULL,
  `placeofresidential` varchar(45) DEFAULT NULL,
  `placeofissue` varchar(45) DEFAULT NULL,
  `dateofissue` datetime DEFAULT NULL,
  `dateofexpiry` datetime DEFAULT NULL,
  KEY `userid` (`userid`),
  CONSTRAINT `passportmaster_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usermaster` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passportmaster`
--

LOCK TABLES `passportmaster` WRITE;
/*!40000 ALTER TABLE `passportmaster` DISABLE KEYS */;
INSERT INTO `passportmaster` VALUES ('HyYZaSAR','asdf2323','asfdasdf','2016-10-13 18:30:00',NULL,NULL,'2016-10-20 18:30:00','2016-10-28 18:30:00');
/*!40000 ALTER TABLE `passportmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdocuments`
--

DROP TABLE IF EXISTS `userdocuments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdocuments` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `userid` varchar(8) NOT NULL,
  `documenttypeid` int(6) NOT NULL,
  `documenttitle` varchar(45) NOT NULL,
  `uploaddate` varchar(45) NOT NULL,
  `documentpath` varchar(200) NOT NULL DEFAULT '',
  `originalfilename` varchar(45) NOT NULL,
  `mimetype` varchar(45) NOT NULL,
  `uploadedby` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `documenttypeid` (`documenttypeid`),
  CONSTRAINT `userdocuments_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usermaster` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `userdocuments_ibfk_2` FOREIGN KEY (`documenttypeid`) REFERENCES `documenttypes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdocuments`
--

LOCK TABLES `userdocuments` WRITE;
/*!40000 ALTER TABLE `userdocuments` DISABLE KEYS */;
INSERT INTO `userdocuments` VALUES (1,'HyYZaSAR',3,'Neha Adhar Card','2016-10-14 12:22:12','https://testvotwdoc.s3.amazonaws.com/votw/2016/9/SyolCrAA.png','angular.png','image/png','HyYZaSAR'),(2,'r1o0rIAR',1,'RAM Passport Page1','2016-10-14 13:00:37','https://testvotwdoc.s3.amazonaws.com/votw/2016/9/SJjgvIAC.jpg','Koala.jpg','image/jpeg','r1o0rIAR'),(3,'r1o0rIAR',2,'Ram Kharghar Address','2016-10-14 13:03:46','https://testvotwdoc.s3.ap-south-1.amazonaws.com/votw/2016/9/r1t2D8RR.jpg','Jellyfish.jpg','image/jpeg','SyE_iHAC');
/*!40000 ALTER TABLE `userdocuments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userleads`
--

DROP TABLE IF EXISTS `userleads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userleads` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `userid` varchar(8) NOT NULL,
  `leadcreationdate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `userleads_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usermaster` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userleads`
--

LOCK TABLES `userleads` WRITE;
/*!40000 ALTER TABLE `userleads` DISABLE KEYS */;
INSERT INTO `userleads` VALUES (1,'SyE_iHAC','2016-10-14 12:11:23'),(2,'HyYZaSAR','2016-10-14 12:18:09'),(3,'r1o0rIAR','2016-10-14 12:55:47');
/*!40000 ALTER TABLE `userleads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlogins`
--

DROP TABLE IF EXISTS `userlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlogins` (
  `userid` varchar(8) NOT NULL DEFAULT '',
  `ipaddress` varchar(45) DEFAULT NULL,
  `loginStatus` tinyint(1) DEFAULT NULL,
  `browser` varchar(45) DEFAULT NULL,
  `activity` varchar(10) NOT NULL,
  `activitytime` datetime NOT NULL,
  KEY `userid` (`userid`),
  CONSTRAINT `userlogins_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usermaster` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlogins`
--

LOCK TABLES `userlogins` WRITE;
/*!40000 ALTER TABLE `userlogins` DISABLE KEYS */;
INSERT INTO `userlogins` VALUES ('SyE_iHAC','undefined',1,'Google Chrome','login','2016-10-14 12:12:25'),('SyE_iHAC',NULL,0,NULL,'logout','2016-10-14 12:12:47'),('SyE_iHAC','49.248.41.74',1,'Google Chrome','login','2016-10-14 12:13:13'),('SyE_iHAC',NULL,0,NULL,'logout','2016-10-14 12:13:16'),('SyE_iHAC','undefined',1,'Google Chrome','login','2016-10-14 12:16:16'),('SyE_iHAC',NULL,0,NULL,'logout','2016-10-14 12:16:19'),('SyE_iHAC','49.248.41.74',1,'Google Chrome','login','2016-10-14 12:16:57'),('SyE_iHAC',NULL,0,NULL,'logout','2016-10-14 12:17:46'),('HyYZaSAR','49.248.41.74',1,'Google Chrome','login','2016-10-14 12:18:51'),('HyYZaSAR',NULL,0,NULL,'logout','2016-10-14 12:22:21'),('SyE_iHAC','undefined',1,'Google Chrome','login','2016-10-14 12:23:31'),('SyE_iHAC',NULL,0,NULL,'logout','2016-10-14 12:28:39'),('HyYZaSAR','49.248.41.74',1,'Google Chrome','login','2016-10-14 12:29:14'),('HyYZaSAR',NULL,0,NULL,'logout','2016-10-14 12:30:08'),('HyYZaSAR','49.248.41.74',1,'Google Chrome','login','2016-10-14 12:30:24'),('HyYZaSAR',NULL,0,NULL,'logout','2016-10-14 12:30:39'),('SyE_iHAC','49.248.41.74',1,'Google Chrome','login','2016-10-14 12:30:52'),('r1o0rIAR','49.248.41.74',1,'Google Chrome','login','2016-10-14 12:58:12'),('r1o0rIAR',NULL,0,NULL,'logout','2016-10-14 13:01:15'),('SyE_iHAC',NULL,0,NULL,'logout','2016-10-14 13:01:16'),('SyE_iHAC','49.248.41.74',1,'Google Chrome','login','2016-10-14 13:01:35'),('SyE_iHAC',NULL,0,NULL,'logout','2016-10-14 13:08:26'),('SyE_iHAC','undefined',1,'Google Chrome','login','2016-10-14 13:20:06');
/*!40000 ALTER TABLE `userlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermaster`
--

DROP TABLE IF EXISTS `usermaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermaster` (
  `id` varchar(8) NOT NULL DEFAULT '',
  `email` varchar(45) NOT NULL DEFAULT '',
  `contactnumber` varchar(11) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  `userstatus` varchar(1) NOT NULL DEFAULT '',
  `createdon` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastupdated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isadmin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermaster`
--

LOCK TABLES `usermaster` WRITE;
/*!40000 ALTER TABLE `usermaster` DISABLE KEYS */;
INSERT INTO `usermaster` VALUES ('HyYZaSAR','neha@visasoftheworld.com','1234567890','259dd09670232b34','I','2016-10-14 12:18:09','2016-10-14 12:18:09',0,'Neha'),('r1o0rIAR','ram@thewhiteboard.company','9930446641','259dd09670232b2474','I','2016-10-14 12:55:47','2016-10-14 12:55:47',0,'Ram'),('SyE_iHAC','pramod@visasoftheworld.com','9930902968','349cd59d2e7558216019bc','I','2016-10-14 12:11:23','2016-10-14 12:11:23',1,'Pramod');
/*!40000 ALTER TABLE `usermaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertransactions`
--

DROP TABLE IF EXISTS `usertransactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertransactions` (
  `userid` varchar(8) NOT NULL DEFAULT '',
  `leadid` int(6) DEFAULT NULL,
  `orderid` varchar(45) DEFAULT NULL,
  `transactionid` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `transactiondate` datetime DEFAULT NULL,
  KEY `userid` (`userid`),
  KEY `leadid` (`leadid`),
  CONSTRAINT `usertransactions_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `usermaster` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `usertransactions_ibfk_2` FOREIGN KEY (`leadid`) REFERENCES `userleads` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertransactions`
--

LOCK TABLES `usertransactions` WRITE;
/*!40000 ALTER TABLE `usertransactions` DISABLE KEYS */;
INSERT INTO `usertransactions` VALUES ('HyYZaSAR',2,'1008','T123456','250','2016-10-13 18:30:00'),('r1o0rIAR',3,'OD1234','TXM123','40500','2016-10-12 18:30:00');
/*!40000 ALTER TABLE `usertransactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-17 10:37:39
