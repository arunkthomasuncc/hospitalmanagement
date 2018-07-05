CREATE DATABASE  IF NOT EXISTS `hospitalmanagement` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hospitalmanagement`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitalmanagement
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment` (
  `appointmentid` int(11) NOT NULL AUTO_INCREMENT,
  `patientid` int(11) DEFAULT NULL,
  `practiceid` int(11) DEFAULT NULL,
  `appointmentdate` date DEFAULT NULL,
  `time` time(6) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`appointmentid`),
  KEY `patient_fk_idx` (`patientid`),
  KEY `practice_fk_idx` (`practiceid`),
  CONSTRAINT `patient_fk` FOREIGN KEY (`patientid`) REFERENCES `patient` (`patientid`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `practice_fk` FOREIGN KEY (`practiceid`) REFERENCES `practice` (`practiceid`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,1,1,'2018-05-24','08:00:00.000000','fever and cold'),(2,2,2,'2018-05-23','10:00:00.000000','Headache');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `patientid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `medicalnotes` varchar(45) DEFAULT NULL,
  `nextvisitdate` date DEFAULT NULL,
  `zip` int(10) DEFAULT NULL,
  `cell` varchar(40) DEFAULT NULL,
  `practiceid` int(11) DEFAULT NULL,
  PRIMARY KEY (`patientid`),
  UNIQUE KEY `patientid_UNIQUE` (`patientid`),
  KEY `practiceid_fk_idx` (`practiceid`),
  CONSTRAINT `practiceid_fk` FOREIGN KEY (`practiceid`) REFERENCES `practice` (`practiceid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Arun','Thomas','1992-07-27','9519 University Terrace Drive Apt C','Charlotte','NC','Fever and Cold','2018-05-28',28262,'7047635306',1),(2,'Nayana','Thomas','1992-08-21','Ashford Green, University Park','Dallas','TX','Headache','2018-06-21',26626,'7879991233',2);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practice`
--

DROP TABLE IF EXISTS `practice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `practice` (
  `practiceid` int(11) NOT NULL AUTO_INCREMENT,
  `practicename` varchar(45) DEFAULT NULL,
  `speciality` varchar(45) DEFAULT NULL,
  `Licensenumber` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `zip` int(10) DEFAULT NULL,
  `cell` varchar(40) DEFAULT NULL,
  `practicecol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`practiceid`),
  UNIQUE KEY `practiceid_UNIQUE` (`practiceid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practice`
--

LOCK TABLES `practice` WRITE;
/*!40000 ALTER TABLE `practice` DISABLE KEYS */;
INSERT INTO `practice` VALUES (1,'Aswin','Neurology','123','California','CA','SanJose',28282,'7047635307',NULL),(2,'Febin','Oncology','200','California','CA','SanJose',28282,'9895862005',NULL);
/*!40000 ALTER TABLE `practice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-25  9:38:52
