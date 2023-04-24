-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (arm64)
--
-- Host: localhost    Database: assignment
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `authorID` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `authorID` (`authorID`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`authorID`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'The Catcher in the Rye','Holden Caulfield struggles with the hypocrisy and phoniness of the adult world.',1,'2023-04-21 14:47:52'),(2,'The Great Gatsby','ay Gatsby pursues his obsession with Daisy Buchanan in the glittering world of the Roaring Twenties.',5,'2023-04-21 14:47:52'),(3,'The Lord of the Rings','Frodo Baggins embarks on a perilous journey to destroy the One Ring and save Middle-earth.',4,'2023-04-21 14:47:52'),(4,'1984','Winston Smith rebels against a totalitarian government that controls every aspect of citizens lives.',2,'2023-04-21 14:47:52'),(5,'Animal Farm','The animals on Manor Farm overthrow their human owner and try to create a utopian society, but corruption and greed set in.',1,'2023-04-21 14:47:52'),(6,'Fahrenheit 451','Fireman Guy Montag questions his society\'s ban on books and becomes a fugitive from the law.',1,'2023-04-21 14:47:52'),(7,'The Picture of Dorian Gray',' A young man remains young and beautiful while his portrait ages and reflects the ugliness of his soul.',3,'2023-04-21 14:47:52'),(8,'The Adventures of Huckleberry Finn','Huck Finn and his friend Jim, a runaway slave, journey down the Mississippi River and confront the racial prejudices of their society.',1,'2023-04-21 14:47:52'),(9,'To Kill a Mockingbird','A group of boys stranded on a deserted island descend into savagery and violence.',1,'2023-04-21 14:47:52'),(10,'The Chronicles of Narnia','Four siblings discover a magical world full of talking animals and mythical creatures.',5,'2023-04-21 14:47:52'),(11,'The Hobbit','Bilbo Baggins goes on an adventure with dwarves and a wizard to reclaim a treasure stolen by a dragon.',5,'2023-04-21 14:47:52'),(12,'The Hitchhiker\'s Guide to the Galaxy','Arthur Dent is taken on a wild ride through space by his alien friend Ford Prefect.',6,'2023-04-21 14:47:52'),(13,'Harry Potter and the Sorcerer\'s Stone','Harry Potter learns he is a wizard and attends Hogwarts School of Witchcraft and Wizardry, where he must confront the evil Lord Voldemort.',3,'2023-04-21 14:47:52'),(14,'The Diary of a Young Girl','Anne Frank writes about her experiences hiding from the Nazis during World War II.',4,'2023-04-21 14:47:52'),(15,'The Bell Jar','Esther Greenwood struggles with depression and the pressures of being a young woman in the 1950s.',4,'2023-04-21 14:47:52'),(16,'The Time Machine','The Time Traveller journeys to the future and discovers a world divided into two species: the peaceful Eloi and the savage Morlocks.',2,'2023-04-21 14:48:27'),(17,'Wuthering Heights','The passionate love affair between Catherine Earnshaw and Heathcliff leads to tragedy for everyone around them.',4,'2023-04-21 14:48:27'),(18,'The Scarlet Letter','Hester Prynne wears the letter \"A\" on her chest as punishment for adultery in Puritan Boston.',2,'2023-04-21 14:48:27'),(19,'One Hundred Years of Solitude','The Buendía family\'s history and the town of Macondo are intertwined in this epic novel by Gabriel García Márquez.',5,'2023-04-21 14:48:27'),(20,'Crime and Punishment','Raskolnikov commits a murder to prove his own superiority, but his conscience torments him.',2,'2023-04-21 14:48:27'),(21,'The Old Man and the Sea','Santiago, an old Cuban fisherman, struggles to catch a giant marlin in the Gulf Stream.',3,'2023-04-21 14:48:27'),(22,'Dracula','The vampire Count Dracula terrorizes Victorian England and seeks to spread his curse to new victims.',1,'2023-04-21 14:48:27'),(23,'The Odyssey','The Greek hero Odysseus faces many trials and battles on his journey home from the Trojan War.',3,'2023-04-21 14:48:27'),(24,'Frankenstein','Victor Frankenstein creates a monster from human parts and is horrified by his own creation.',4,'2023-04-21 14:48:27'),(25,'The Sun Also Rises','American expatriates drink and party in Paris and Pamplona, but struggle to find meaning in their lives after the devastation of World War I.',6,'2023-04-21 14:48:27'),(26,'The Power of Positive Thinking','Believing in yourself and your abilities can help you overcome obstacles and achieve your goals.',1,'2023-04-21 14:48:27'),(27,'The Future of Renewable Energy','As we continue to shift away from fossil fuels, renewable energy sources like wind and solar power are becoming increasingly important.',5,'2023-04-21 14:48:27'),(28,'The Benefits of Mindfulness Meditation','Practicing mindfulness meditation can help reduce stress and anxiety, improve focus and concentration, and promote overall well-being.',2,'2023-04-21 14:48:27'),(29,'The Art of Effective Communication','Mastering the art of effective communication involves not just speaking clearly and concisely, but also listening actively and empathetically.',2,'2023-04-21 14:48:27'),(30,'The Power of Positive Thinking','Believing in yourself and your abilities can help you overcome obstacles and achieve your goals.',6,'2023-04-21 14:48:27'),(31,'The Future of Renewable Energy','As we continue to shift away from fossil fuels, renewable energy sources like wind and solar power are becoming increasingly important.',3,'2023-04-21 14:48:27'),(32,'The Benefits of Mindfulness Meditation','Practicing mindfulness meditation can help reduce stress and anxiety, improve focus and concentration, and promote overall well-being.',3,'2023-04-21 14:48:27'),(33,'The Art of Effective Communication','Mastering the art of effective communication involves not just speaking clearly and concisely, but also listening actively and empathetically.',2,'2023-04-21 14:48:27');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'test@gmail.com','abc123','2023-04-20 05:04:43'),(2,'123@gmail','123','2023-04-20 11:18:50'),(3,'223@gmail.com','223','2023-04-21 13:44:49'),(4,'323@gmail.com','323','2023-04-21 13:47:19'),(5,'423@gmail.com','423','2023-04-21 13:47:37'),(6,'523@gmail.com','523','2023-04-21 13:47:51');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-21 23:24:07
