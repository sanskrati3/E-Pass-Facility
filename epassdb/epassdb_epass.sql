-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: epassdb
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `epass`
--

DROP TABLE IF EXISTS `epass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `epass` (
  `gatepsno` varchar(40) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `id` varchar(40) DEFAULT NULL,
  `department` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `contact` varchar(40) DEFAULT NULL,
  `reason_for_pass` varchar(150) DEFAULT NULL,
  `date_pass_apply` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_pass_approve` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_pass_valid` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(20) DEFAULT 'pending',
  PRIMARY KEY (`gatepsno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epass`
--

LOCK TABLES `epass` WRITE;
/*!40000 ALTER TABLE `epass` DISABLE KEYS */;
INSERT INTO `epass` VALUES ('GPN-0000001','SANSKRATI GAWANDE','0103IT181097','IT','sanskrati@co.in','8269257483','Important personal work','2020-11-25 11:15:29','0000-00-00 00:00:00','2020-11-20 18:30:00','rejected'),('GPN-0000002','SANSKRATI GAWANDE','0103IT181097','IT','sanskrati@co.in','8269257483','Relatives at home','2020-11-25 11:13:32','0000-00-00 00:00:00','2020-10-28 18:30:00','rejected'),('GPN-0000022','SANSKRATI GAWANDE','0103IT181097','IT','sanskrati@co.in','8269257483','Not feeling well..Fever symptoms.','2020-11-26 11:06:00','0000-00-00 00:00:00','2020-10-18 18:30:00','approved'),('GPN-0000023','PIYUSH VANI','0103IT181077','IT','piyush@co.in','9179147599','Have a train leaving for home.','2020-11-25 17:42:23','0000-00-00 00:00:00','2020-11-24 18:30:00','rejected'),('GPN-0000024','SANSKRATI GAWANDE','0103IT181097','IT','sanskrati@co.in','8269257483','coaching scheduled early today.','2020-11-25 17:42:06','0000-00-00 00:00:00','2020-10-20 18:30:00','rejected'),('GPN-0000025','SANSKRATI GAWANDE','0103IT181097','IT','sanskrati@co.in','8269257483','fever ','2020-11-26 11:06:03','0000-00-00 00:00:00','2020-11-26 18:30:00','rejected');
/*!40000 ALTER TABLE `epass` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-06 20:17:14
