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
-- Table structure for table `student_registered`
--

DROP TABLE IF EXISTS `student_registered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_registered` (
  `s_no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `id` varchar(40) NOT NULL,
  `password` varchar(40) DEFAULT NULL,
  `department` varchar(40) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `emailaddress` varchar(40) DEFAULT NULL,
  `localaddress` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `s_no_UNIQUE` (`s_no`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_registered`
--

LOCK TABLES `student_registered` WRITE;
/*!40000 ALTER TABLE `student_registered` DISABLE KEYS */;
INSERT INTO `student_registered` VALUES (1,'MEENAL GARG','0103EC171092','0103EC171092','EC ','female','9171162921','meenal@co.in',NULL),(8,'A.V. ROSHAN DEV','0103EC181001','8EQXFat1','EC ','male','9589733916','a.v.@co.in',NULL),(10,'SAKSHAM KHARE','0103EX181077','MpSduKTS','EX','male','9407058050','saksham@co.in',NULL),(9,'YASH MISHRA','0103EX181113','ZA1ZSLcB','EX','male','6264583916','yash@co.in',NULL),(2,'SAHIL SHARMA','0103IT171094','pkmkb2','IT','male','9171162921','sahil@co.in',NULL),(7,'KRITIKA DESHMUKH','0103IT181053','pkmkb7','IT','female','9752699874','kritika@co.in',NULL),(4,'PIYUSH VANI','0103IT181077','pkmkb4','IT','male','9179147599','piyush@co.in',NULL),(5,'SANSKRATI GAWANDE','0103IT181097','tN1KG8zW','IT','female','8269257483','sanskrati@co.in',NULL),(6,'SAURABH CHAUDHARY','0103IT181100','pkmkb6','IT','male','7389095718','saurabh@co.in',NULL),(11,'SARVANI SAH','0157CS181141','pkmkb11','CSE','female','6266953400','sarvani@co.in',NULL),(3,'VARTIKA PRASAD','0157CS181178','pkmkb3','CSE','female','9340532908','vartika@co.in',NULL),(12,'DEEPANSHU BARASKAR','0176CS171054','pkmkb19','CSE','male','7024718757','deepashu@gmail.co.in',NULL);
/*!40000 ALTER TABLE `student_registered` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-06 20:17:15
