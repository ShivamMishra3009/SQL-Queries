-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: IS445_join
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `EmployeeID` int(11) DEFAULT NULL,
  `LastName` text,
  `FirstName` text,
  `Location` text,
  `Title` text,
  `Gender` text,
  `Performance` text,
  `ManagerID` text,
  `hired_date` date DEFAULT NULL,
  `salaries` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (10000,'Milgrom','Pamela','Boston','Manager','F','Average','88888','1999-11-22',57000),(100001,'Schwartz','John','London','Manager','M','Good','22222','2006-01-03',60000),(11100,'Young','Alwyn','London','Manager','M','Good','','2003-08-23',45000),(11110,'Harris','Thomas','','Manager','M','Good','','2004-03-31',35000),(11111,'Adams','Jennifer','Atlanta','Trainee','F','Average','10000','1997-06-12',19000),(20000,'Johnson','James','Chicago','Account Rep','M','Good','22222','1999-07-15',47000),(22222,'Coulter','Tracey','Atlanta','Manager','F','Good','22222','1999-05-10',100000),(30000,'Marlin','Billy','Miami','Manager','M','Good','10000','1992-03-12',125000),(33333,'Smith','Mark','Chicago','Account Rep','M','Average','10000','1995-10-16',42000),(40000,'Manin','Ann','Boston','Account Rep','F','Average','22222','2001-01-26',49000),(44444,'Smith','Francine','Atlanta','Account Rep','F','Good','10000','2002-05-21',65000),(50000,'Brown','Martin','Atlanta','Trainee','M','Poor','','2007-11-08',18000),(55555,'Frank','Vernon','Miami','Account Rep','M','Good','','2006-01-31',75000),(60000,'Rubin','Patricia','Boston','Account Rep','F','Average','','2006-06-12',45000),(66666,'Charles','Kenneth','Boston','Account Rep','M','Poor','','2006-03-23',40000),(70000,'Adamson','David','Chicago','Manager','M','Poor','','2006-04-10',52000),(77777,'Marder','Kelly','Chicago','Account Rep','F','Average','','2008-02-29',38000),(88888,'Young','Alwyn','','Manager','M','Good','','2008-03-31',20000),(99999,'Chen','Sharon','','Trainee','F','Good','','2008-03-31',20000);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `Location` text,
  `RegionalOffice` text,
  `AuditCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES ('Atlanta','No',101),('Boston','Yes',100),('Chicago','No',110),('New York','No',101),('Seattle','Yes',100),('Miami','Yes',100);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `EmployeeID` int(11) DEFAULT NULL,
  `LastName` text,
  `FirstName` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (10000,'Milgrom','Pamela'),(22222,'Coulter','Tracey'),(30000,'Marlin','Billy'),(70000,'Adamson','David'),(88888,'Young','Alwyn');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-21 22:59:45
