CREATE DATABASE  IF NOT EXISTS `cll` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cll`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: cll
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `faculty_login_tabl`
--

DROP TABLE IF EXISTS `faculty_login_tabl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty_login_tabl` (
  `fid` varchar(15) DEFAULT NULL,
  `pass` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_login_tabl`
--

LOCK TABLES `faculty_login_tabl` WRITE;
/*!40000 ALTER TABLE `faculty_login_tabl` DISABLE KEYS */;
INSERT INTO `faculty_login_tabl` VALUES ('gurjot','gurjot');
/*!40000 ALTER TABLE `faculty_login_tabl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marks` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `sid` varchar(30) NOT NULL,
  `marks` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sid_UNIQUE` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (1,'gssodhi',0);
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passage_tabl`
--

DROP TABLE IF EXISTS `passage_tabl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passage_tabl` (
  `passage` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passage_tabl`
--

LOCK TABLES `passage_tabl` WRITE;
/*!40000 ALTER TABLE `passage_tabl` DISABLE KEYS */;
INSERT INTO `passage_tabl` VALUES ('I felt the wall of the tunnel shiver. The master alarm squealed through my earphones. Almost simultaneously, Jack yelled down to me that there was a warning light on. Fleeting but spectacular sights snapped into ans out of view, the snow, the shower of debris, the moon, looming close and big, the dazzling sunshine for once unfiltered by layers of air. The last twelve hours before re-entry were particular bone-chilling. During this period, I had to go up in to command module. Even after the fiery re-entry splashing down in 81o water in south pacific, we could still see our frosty breath inside the command module.',1),('But I did not want to shoot the elephant. I watched him beating his bunch of grass against his knees, with the preoccupied grandmotherly air that elephants have. It seemed to me that it would be murder to shoot him. I had never shot an elephant and never wanted to. (Somehow it always seems worse to kill large animal.) Besides, there was the beasts owner to be considered. But I had got to act quickly. I turned to some experienced-looking Burmans who had been there when we arrived, and asked them how the elephants had been behaving. They all said the same thing; he took no notice of you if you left him alone, but he might charge if you went too close to him.',2),('test',3);
/*!40000 ALTER TABLE `passage_tabl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) DEFAULT NULL,
  `question` varchar(300) DEFAULT NULL,
  `ans1` varchar(100) DEFAULT NULL,
  `ans2` varchar(100) DEFAULT NULL,
  `ans3` varchar(100) DEFAULT NULL,
  `ans4` varchar(100) DEFAULT NULL,
  `ans` varchar(100) DEFAULT NULL,
  `q_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'The word Command Module used twice in the given passage indicates perhaps that it deals with','an alarming journey','a commanding situation','a journey into outer space','a frightful battle.','a journey into outer space',11),(1,'Which one of the following reasons would one consider as more as possible for the warning lights to be on?','There was a shower of debris.','Jack was yelling.','A catastrophe was imminent.','The moon was looming close and big.','A catastrophe was imminent.',12),(1,'The statement that the dazzling sunshine was \"for once unfiltered by layers of air\" means','that the sun was very hot','that there was no strong wind','that the air was unpolluted','none of above','none of above',13),(2,'The phrase Preoccupied grandmotherly air signifies','being totally unconcerned','pretending to be very busy','a very superior attitude','calm, dignified and affectionate disposition','calm, dignified and affectionate disposition',21),(2,'From the passage it appears that the author was','an inexperienced hunter','kind and considerate','possessed with fear','a worried man','kind and considerate',22),(2,'The author did not want to shoot the elephant because he','was afraid of it','did not have the experience of shooting big animals','did not wish to kill animal which was not doing anybody any harm','did not find the elephant to be ferocious','did not have the experience of shooting big animals',23),(3,'test','test','test','test','test','test',31),(3,'test','test','test','test','test','test',32),(3,'test','test','test','test','test','test',33);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_login_tabl`
--

DROP TABLE IF EXISTS `student_login_tabl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_login_tabl` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `rno` varchar(45) DEFAULT NULL,
  `sid` varchar(15) NOT NULL,
  `name` varchar(45) NOT NULL,
  `pass` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sid_UNIQUE` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_login_tabl`
--

LOCK TABLES `student_login_tabl` WRITE;
/*!40000 ALTER TABLE `student_login_tabl` DISABLE KEYS */;
INSERT INTO `student_login_tabl` VALUES (1,'13ITU008','gssodhi','Gurjot Singh Sodhi','*151FF5BF22F6D78A3FA223D2D7FCDC16881672A2');
/*!40000 ALTER TABLE `student_login_tabl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cll'
--

--
-- Dumping routines for database 'cll'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-12  1:03:20
