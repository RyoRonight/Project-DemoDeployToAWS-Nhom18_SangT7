-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: new_schema
-- ------------------------------------------------------
-- Server version	5.0.82-community-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `email` varchar(50) default NULL,
  `sdt` varchar(20) default NULL,
  `ngaysinh` date default NULL,
  `diachi` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ADMIN_username_uindex` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (2,'ryo','123','Ryo','ryo@gmail.com','01632458816','1997-03-26','Quận  BT');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `titleimg` tinytext,
  `des` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES (1,'about','<p>Human beings have gone through millions of years of long road, building updated from burrowing, nesting, and palace to high-rises today, leaving a classic and long history of architectural culture. With the rapid development of science and technology, energy depletion, environmental degradation, opportunities and challenges both arise, the grim reality for us go deeply into what we need to build? What is the future of architecture and civil engineering?</p>\r\n\r\n<p><strong>2018 2nd International Conference on Structural and Civil Engineering (ICSCE 2018) will be held in University of Lisbon (Universidade de Lisboa), Portugal during September 26-28, 2018</strong>. ICSCE 2018 will focus on green architecture, intelligent architecture, design of practicality and artistic. We sincerely welcome researchers, engineers, academicians as well as industrial professionals from all over the world to present research results and development activities in structural and civil engineering. ICSCE 2018 is held after ICSCE 2017 which was successfully held in Lyon, France during September 21-23, 2017!!!??? đồ ngốc hihi</p>\r\n',NULL,'about'),(3,'dddd','<p>This is my textarea to be replaced with CKEditor.</p>',NULL,'ccccccc'),(10,'1 phút','<p>Andiez</p>\r\n',NULL,':)'),(21,'pppppppppp','<p>This is my textarea to be replaced with CKEditor.ooooo</p>\r\n',NULL,'oooooooooo'),(26,'tttttttttt','<p>This is my textarea to be replaced with CKEditor.</p>\r\n',NULL,'ggggggggg'),(27,'fffffff','<p>This is my textarea to be replaced with CKEditor.</p>\r\n',NULL,'ddddddddd'),(28,'ygggggggg','<p>This is my textarea to be replaced with CKEditor.</p>\r\n',NULL,'gggggggggg'),(31,'oooooooooooooooo','<p>This is my textarea to be replaced with CKEditor.</p>\r\n',NULL,'ooo'),(32,'zzzzzzzzzz','<p>This is my textarea to be replaced with CKEditor.</p>\r\n',NULL,'zzz'),(33,'iiiiiiiiiiiiii','<p>This is my textarea to be replaced with CKEditor.</p>\r\n',NULL,'ii'),(34,'hhhhhhhhhhhhh','<p>This is my textarea to be replaced with CKEditor.</p>\r\n',NULL,'hh'),(35,'ttttttttttttt','<p>This is my textarea to be replaced with CKEditor.</p>\r\n',NULL,'tt'),(36,'yyyyyyyyyyyy','<p>This is my textarea to be replaced with CKEditor.</p>\r\n',NULL,'yy');
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tep`
--

DROP TABLE IF EXISTS `tep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tep` (
  `id` int(11) NOT NULL auto_increment,
  `link` text NOT NULL,
  `pageid` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `tep_page_id_fk` (`pageid`),
  CONSTRAINT `tep_page_id_fk` FOREIGN KEY (`pageid`) REFERENCES `page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tep`
--

LOCK TABLES `tep` WRITE;
/*!40000 ALTER TABLE `tep` DISABLE KEYS */;
INSERT INTO `tep` VALUES (7,'https://s3-ap-southeast-1.amazonaws.com/group18uploadfile/',10),(15,'https://s3-ap-southeast-1.amazonaws.com/group18uploadfile/',21),(20,'https://s3-ap-southeast-1.amazonaws.com/bucketdemouploadfile/',26),(21,'https://s3-ap-southeast-1.amazonaws.com/bucketdemouploadfile/',27),(22,'https://s3-ap-southeast-1.amazonaws.com/bucketdemouploadfile/',28),(25,'https://s3-ap-southeast-1.amazonaws.com/group18uploadfile/',31),(26,'https://s3-ap-southeast-1.amazonaws.com/group18uploadfile/',32),(27,'https://s3-ap-southeast-1.amazonaws.com/group18uploadfile/',33),(28,'https://s3-ap-southeast-1.amazonaws.com/group18uploadfile/server.xml',34),(29,'https://s3-ap-southeast-1.amazonaws.com/group18uploadfile/',35),(30,'https://s3-ap-southeast-1.amazonaws.com/group18uploadfile/cggggggg.txt',36);
/*!40000 ALTER TABLE `tep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'new_schema'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-03 23:52:58
