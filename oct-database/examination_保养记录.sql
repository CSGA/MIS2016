CREATE DATABASE  IF NOT EXISTS `examination` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `examination`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: examination
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `保养记录`
--

DROP TABLE IF EXISTS `保养记录`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `保养记录` (
  `记录ID` int(11) NOT NULL,
  `保养单ID` int(11) NOT NULL,
  `设备号` int(11) NOT NULL,
  `保养内容` varchar(100) NOT NULL,
  `完成情况` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`记录ID`),
  KEY `保养单记录_idx` (`保养单ID`),
  CONSTRAINT `保养单记录` FOREIGN KEY (`保养单ID`) REFERENCES `保养` (`保养单ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `保养记录`
--

LOCK TABLES `保养记录` WRITE;
/*!40000 ALTER TABLE `保养记录` DISABLE KEYS */;
INSERT INTO `保养记录` VALUES (11,1,123,'检查6000V接线盒内瓷瓶、端子；','异常'),(12,1,123,'接线盒内卫生清洁；','正常'),(13,1,123,'检查电缆引线、穿线管、接地线；','正常'),(14,1,123,'检查进线口密封情况；','正常'),(15,1,123,'检查前后轴承温度传感器的接线盒；','正常'),(16,1,123,'检查定子绕组温度传感器的接线盒。','正常'),(17,1,123,'检查防潮加热器的接线盒。','异常');
/*!40000 ALTER TABLE `保养记录` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-14 22:51:00
