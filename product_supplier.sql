-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: IS445_extra
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `ProductNumber` int(11) DEFAULT NULL,
  `ProductCategory` text,
  `ProductName` text,
  `PurchaseCost` double DEFAULT NULL,
  `SellingPrice` double DEFAULT NULL,
  `SupplierNumber` int(11) DEFAULT NULL,
  `QuantityonHand` int(11) DEFAULT NULL,
  `ReorderLevel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Road','Classic 109',207.49,290.49,1,7,2),(2,'Road','Elegant 210',281.52,394.13,1,7,2),(3,'Road','Runroad 1000',250.95,350.99,3,8,5),(4,'Mtn.','Eagle 3',350.52,490.73,2,5,2),(5,'Mtn.','Eagle 2',401.11,561.54,2,2,2),(6,'Mtn.','Eagle 1',410.01,574.01,2,1,2),(7,'Hybrid','Runblend 2000',180.95,255.99,3,0,5),(8,'Hybrid','Eagle 7',150.89,211.46,2,9,2),(9,'Hybrid','Tea for Two',429.02,609,4,3,2),(10,'Leisure','Runcool 3000',85.95,135.99,3,5,5),(11,'Leisure','Starlight',100.47,140.66,4,1,2),(12,'Leisure','Supreme 350',50,70,1,3,5),(13,'Leisure','Blue Moon',75.29,105.41,4,4,2),(14,'Children','Runkidder 100',50.95,75.99,3,10,5),(15,'Children','Red Rider',15,25.5,4,8,5),(16,'Children','Coolest 100',69.99,97.98,1,6,5),(17,'Children','Green Rider',95.47,133.66,4,4,5),(18,'Road','Runroad 4000',390.95,495.99,3,5,5),(19,'Road','Runroad 5000',450.95,599.99,3,5,5),(20,'Road','Twist & Shout',490.5,635.7,4,0,2),(21,'Leisure','Breeze',89.95,130.95,5,4,2),(22,'Leisure','Breeze LE',109.95,149.95,5,5,4),(23,'Mtn.','Bluff Breaker',375,495,5,3,3),(24,'Mtn.','Jetty Breaker',455.95,649.95,5,1,2);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `SupplierNumber` int(11) DEFAULT NULL,
  `CompanyName` text,
  `StreetAddress` text,
  `City` text,
  `State` text,
  `ZIP` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Bicyclist\'s Choice','1459 Washington Avenue','Sioux Falls','SD','57106'),(2,'Bike-One','2000 Oceanside Lane','San Diego','CA','92110'),(3,'Run-Up Bikes','1155 Fifth Avenue','Long Branch','NJ','07521'),(4,'Simpson\'s Bike Supply','107 Piedmont','Tulsa','ok','74114'),(5,'The Bike Path','1999 Stephen Hands Path','East Hampton','NY','11937');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-15 16:23:22
