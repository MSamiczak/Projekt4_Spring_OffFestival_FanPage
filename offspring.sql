-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: offspring
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
-- Table structure for table `bands_queue`
--

DROP TABLE IF EXISTS `bands_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bands_queue` (
  `id_recordq` int(11) NOT NULL AUTO_INCREMENT,
  `best_songq` varchar(255) DEFAULT NULL,
  `cityq` varchar(255) DEFAULT NULL,
  `countryq` varchar(255) DEFAULT NULL,
  `id_offq` varchar(255) DEFAULT NULL,
  `listenersq` float NOT NULL,
  `name_albumq` varchar(255) DEFAULT NULL,
  `name_bandq` varchar(255) DEFAULT NULL,
  `sinceq` int(11) NOT NULL,
  `tagq` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_recordq`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bands_queue`
--

LOCK TABLES `bands_queue` WRITE;
/*!40000 ALTER TABLE `bands_queue` DISABLE KEYS */;
INSERT INTO `bands_queue` VALUES (12,'test','MACIEK','POL','3',0.8,'demo','MACIEK',1989,'test');
/*!40000 ALTER TABLE `bands_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `festival`
--

DROP TABLE IF EXISTS `festival`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `festival` (
  `id_off` int(11) NOT NULL AUTO_INCREMENT,
  `name_f` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_fest` text COLLATE utf8_unicode_ci,
  `edition` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `people` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_off`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `festival`
--

LOCK TABLES `festival` WRITE;
/*!40000 ALTER TABLE `festival` DISABLE KEYS */;
INSERT INTO `festival` VALUES (1,'Off Festival','Mysłowice','1',2006,0),(2,'Off Festival','Mysłowice','2',2007,0),(3,'Off Festival','Mysłowice','3',2008,0),(4,'Off Festival','Mysłowice','4',2009,0),(5,'Off Festival','Katowice','5',2010,0),(6,'Off Festival','Katowice','6',2011,0),(7,'Off Festival','Katowice','7',2012,0),(8,'Off Festival','Katowice','8',2013,0),(9,'Off Festival','Katowice','9',2014,0),(10,'Off Festival','Katowice','1',2015,0),(11,'Off Festival','Katowice','1',2016,0),(12,'Off Festival','Katowice','1',2017,0);
/*!40000 ALTER TABLE `festival` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `off_selected_bands`
--

DROP TABLE IF EXISTS `off_selected_bands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `off_selected_bands` (
  `id_table` int(11) NOT NULL AUTO_INCREMENT,
  `best_songs` varchar(255) DEFAULT NULL,
  `citys` varchar(255) DEFAULT NULL,
  `countrys` varchar(255) DEFAULT NULL,
  `id_bands` int(11) NOT NULL,
  `listeners_kilos` float NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `name_albums` varchar(255) DEFAULT NULL,
  `name_bands` varchar(255) DEFAULT NULL,
  `sinces` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `years` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_table`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `off_selected_bands`
--

LOCK TABLES `off_selected_bands` WRITE;
/*!40000 ALTER TABLE `off_selected_bands` DISABLE KEYS */;
INSERT INTO `off_selected_bands` VALUES (1,'Beksa\r\n','Myslowice','PL',14,48,'nowy','Skladam sie z ciaglych powtorzen','Artur Rojek','2014','alternative','2017'),(2,'Speed\r\n','Berlin','GER',73,181.9,'nowy','Delete Yourself!','Atari Teenage Riot','1992','electronic','2012'),(3,'Lesson No. 2\r\n','Harrisburg','USA',52,67.4,'nowy','The Ascension','Glenn Branca','1969','experimental','2014'),(4,'Going Hard\r\n','NY','USA',5,784.1,'admin','The Beautiful Struggle','Talib Kweli','2000','hip-hop','2017'),(5,'I Luv the Valley OH!\r\n','San Jose','USA',47,425.7,'admin','Fabulous Muscles','Xiu Xiu','2000','experimental','2011'),(6,'Reincarnation\r\n','Haugesund','NOR',45,185.1,'admin','Ten Love Songs','Susanne Sundfor','2006','jazz','2015');
/*!40000 ALTER TABLE `off_selected_bands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `offview`
--

DROP TABLE IF EXISTS `offview`;
/*!50001 DROP VIEW IF EXISTS `offview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `offview` AS SELECT 
 1 AS `id_band`,
 1 AS `name_band`,
 1 AS `city`,
 1 AS `country`,
 1 AS `tag`,
 1 AS `since`,
 1 AS `listeners_kilo`,
 1 AS `name_album`,
 1 AS `best_song`,
 1 AS `year`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'User'),(2,'Admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage_band`
--

DROP TABLE IF EXISTS `storage_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storage_band` (
  `id_band` int(11) NOT NULL AUTO_INCREMENT,
  `name_band` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `since` int(4) DEFAULT NULL,
  `listeners_kilo` float DEFAULT NULL,
  PRIMARY KEY (`id_band`)
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage_band`
--

LOCK TABLES `storage_band` WRITE;
/*!40000 ALTER TABLE `storage_band` DISABLE KEYS */;
INSERT INTO `storage_band` VALUES (1,'Feist','Nowa Szkocja','CAN','female vocalists',1999,1900),(2,'PJ Harvey','Yeowil','GBR','rock',1990,1400),(3,'Swans','NY','USA','post-rock',1982,363.6),(4,'Shellac','Evaston','USA','math rock',1992,144.6),(5,'Talib Kweli','NY','USA','hip-hop',2000,784.1),(6,'Arab Strap','null','SCT','indie',1995,204.8),(7,'Preoccupations','Calgary','CAN','post-punk',2012,45.3),(8,'This Heat','null','GBR','post-punk',1997,100.6),(9,'Boris','Tokio','JAP','doom metal',1992,252.8),(10,'Loskot','null','PL','polish jazz',1993,2.8),(11,'Mitch & Mitch','Warszawa','PL','alternative',2002,9.7),(12,'PRO8L3M','Warszawa','PL','hip-hop',2013,11.8),(13,'Made in Poland','Krakow','PL','null',1984,7.1),(14,'Artur Rojek','Myslowice','PL','alternative',2014,48),(15,'Jambinai','null','KOR','post-rock',2010,15.9),(16,'Devendra Banhart','Harris County','USA','folk',2002,1000),(17,'Mudhoney','Seattle','USA','grunge',1988,506.6),(18,'Napalm Death','Meriden','GBR','death metal',1981,274.6),(19,'Lush','Londyn ','GBR','britpop',1988,258.5),(20,'Thundercat','Los Angeles','USA','funk',1984,221.9),(21,'Lightning Bolt','Providence','USA','math rock',1994,192.7),(22,'Brodka','null','PL','alternative',2010,201.8),(23,'Kaliber 44 ','Katowice','PL','hip-hop',1994,86.3),(24,'SBB','Siemianowice Slaskie','PL','jazz rock',1971,21.5),(25,'William Basinski','Houston','USA','ambient',1970,166.3),(26,'Derrick May','Detroit','USA','detroit techno',1998,58.9),(27,'Andrew Weatherall','Windsor','GBR','electronic',1980,31.6),(28,'Roman Flugel','Frankfurt','GER','electornic',1994,100.2),(29,'GusGus','Reykjavík','ISL','electronic',1995,467.2),(30,'Dj Koze','Flensburg','GER','minimal',1995,224.5),(31,'Jaga Jazzist','null','NOR','nu jazz',1944,317),(32,'Kiasmos','null','ISL','minimal',2009,138.1),(33,'Pantha du Prince','Hessen','GER','minimal',2002,258.2),(34,'Pablopavo i Ludziki','Warszawa','PL','reggae',2009,10),(35,'Jacek Sienkiewicz','null','PL','minimal',1999,30.6),(36,'Ten Typ Mes','Warszawa','PL','hip-hop',2002,56.2),(37,'Decapitated','Krosno','PL','death metal',1996,173),(38,'Kortez','Krosno','PL','melancholic',2015,16.7),(39,'Kinsky','Warszawa','PL','experimental',1992,1.2),(40,'Patti Smith','Chicago','USA','rock',1978,841.2),(41,'Run The Jewels','NY','USA','hip-hop',2013,281.6),(42,'Ride','Oxford','GBR','indie',1988,371.3),(43,'The Dillinger Escape Plan','New Jersey','USA','math rock',1997,418.4),(44,'Sunn O)))','Seattle','USA','doom metal',1998,193.1),(45,'Susanne Sundfor','Haugesund','NOR','jazz',2006,185.1),(46,'Mick Harvey','Rochester','AU','gatunek',1995,116.5),(47,'Xiu Xiu','San Jose','USA','experimental',2000,425.7),(48,'Slowdive','Reading','GBR','shoegaze',1989,533.3),(49,'Belle & Sebastian','Glasgow','SCT','indie',1996,1600),(50,'The Jesus And Mary Chain','East Kilbride','GBR','shoegaze',1984,785.1),(51,'Neutral Milk Hotel','Rouston','USA','indie',1989,1200),(52,'Glenn Branca','Harrisburg','USA','experimental',1969,67.4),(53,'Oranssi Pazuzu','null','FIN','black metal',2007,40.6),(54,'Perfume Genius','Seattle','USA','ambient',2012,368.6),(55,'The Notwist','Bayern','GER','indie',1989,485.5),(56,'Andrew W.K.','Palo Alto','USA','rock',2001,351.2),(57,'Nisennenmondai','Tokio','JAP','noise rock',1999,19.9),(58,'Noon','null','PL','trip-hop',1998,36.5),(59,'The Smashing Pumpkins','Chicago','USA','alternative',1988,2700),(60,'My Bloody Valentine','Dublin','IRL','shoegaze',1983,860.8),(61,'Godspeed You! Black Emperor','Montreal','CAN','post-rock',1994,629.7),(62,'John Talabot','Barcelona','ESP','electronic',2009,185.8),(63,'Brutal Truth','Rochester','USA','death metal',1990,75.1),(64,'The Pop Group','Bristol','GBR','post-punk',1977,114),(65,'Julia Holter','Los Angeles','USA','experimental',1984,213.4),(66,'Goat','Korpolombolo','SWE','psychedelic',2012,146.6),(67,'Deerhunter','Atlanta','USA','shoegaze',2001,768.2),(68,'Molesta','Warszawa','PL','hip-hop',1994,46.3),(69,'Skalpel','Wroclaw','PL','jazz',2000,320.9),(70,'Furia','Katowice','PL','black metal',2003,26.7),(71,'Rebeka','Poznan','PL','electronic',2008,25.5),(72,'Metronomy','Totnes','GBR','electronic',1999,795.2),(73,'Atari Teenage Riot','Berlin','GER','electronic',1992,181.9),(74,'Charles Bradley','Gainesville','USA','soul',1980,226.7),(75,'Battles','NY','USA','math rock',2002,519.6),(76,'Thurston Moore','Coral Gables','USA','experimental',1981,230.2),(77,'Kim Gordon','Rochester','USA','experimental',1980,7.2),(78,'Stephen Malkmus','Santa Monica','USA','indie',1980,282.1),(79,'Iggy And The Stooges','Ann Arbor','USA','punk',1967,953.8),(80,'Mazzy Star','Santa Monica','USA','dream pop',1989,772.2),(81,'Baroness','Savannah','USA','metal',2003,284.2),(82,'Converge','Salem','USA','hardcore',1990,367.2),(83,'Nosowska','Szczecin','PL','alternative',1996,135.7),(84,'Profesjonalizm','Warszawa ','PL','jazz',2010,0.9),(85,'Apteka','Gdynia','PL','alternative',1983,27.9),(86,'Cool Kids Of Death','Lodz','PL','alternative',2001,81.5),(87,'Karbido','Wroclaw','PL','experimental',2002,0.5),(88,'Kode9','null','null','rave',1990,134.2),(89,'Kury','null','PL','alternative',1992,26.4),(90,'Kyst','null','PL','experimental',2011,8.2),(91,'Kamp!','Lodz','PL','electronic',2007,69.9),(92,'Male Bonding','Londyn','GBR','indie',2007,324.7),(93,'Matthew Dear','Kingsville','USA','electronic',2003,418.8),(94,'Merkabah','Warszawa','PL','experimental',2007,5.2),(95,'Meshuggah','Umea','SWE','math metal',1987,418.8),(96,'Miss Polski','null','PL','indie',2009,0.8),(97,'Mogwai','Glasgow','GBR','post-rock',1996,1300),(98,'Moja Adrenalina','Warszawa','PL','mathcore',1999,2.3),(99,'Muariolanza','Katowice','PL','jazz',2006,1.7),(100,'Neon Indian','Denton','USA','electronic',2008,638),(101,'Liars','NY','USA','post-punk',2000,444),(102,'Liturgy','NY','USA','black metal',2004,58.2),(103,'The Lollipops','null','PL','alternative rock',2009,7),(104,'Low','Duluth','USA','indie',1993,591.5),(105,'L.Stadt','Lodz','PL','alternative rock',2003,61.4),(106,'Olivia Anna Livki','null','PL','alternative',2009,6.2),(107,'Omar Souleyman','Al Hasakah','SYR','psychedelic',1999,47.9),(108,'Oneida','NY','USA','experimental',1997,72.7),(109,'Oneohtrix Point Never','Wayland','','ambient',1982,227.5),(110,'Paris Tetris','Warszawa','PL','alternative',2008,3.2),(111,'Polvo','Chapel Hill','USA','math rock',1990,106.4),(112,'Primal Scream','Glasgow','GBR','indie',1982,959.5),(113,'Public Image Ltd','London','GBR','post-punk',1978,382),(114,'Ringo Deathstarr','Beaumont','USA','shoegaze',2005,98.6),(115,'Sebadoh','Westfield','USA','indie',1986,304.4),(116,'Suuns','Montreal','CAN','experimental',2006,147.6),(117,'Tres.b','null','NLD','indie',2006,16),(118,'Tryp','null','PL','industrial',2008,1.1),(119,'Twilite','null','PL','acoustic',2006,12.5),(120,'Twin Shadow','NY ','USA','dream pop',2010,479.7),(121,'Warpaint','Los Angeles','USA','shoegaze',2004,599.5),(122,'Wojtek Mazolewski Quintet','Gdansk','PL','jazz',2011,7.7),(123,'YACHT','Portland','USA','electronic',2002,373),(124,'Hotel Kosmos','Torun','PL','post-punk',2003,1.9),(125,'Potty Umbrella','Bydgoszcz','PL','post-rock',2003,1.5),(126,'Kim Nowak','Warszawa ','PL','rock',2008,23.3),(127,'Voo Voo','Warszawa','PL','rock',1985,75.3),(128,'The Horrors','null','GBR','garage rock',2007,666.3),(129,'Lenny Valentino','Myslowice','PL','polish',1998,19.4),(130,'Tindersticks','Nottingham','GBR','indie',1991,347.9),(131,'We Call It A Sound','Wolsztyn','PL','experimental',2007,3.3),(132,'19 Wiosen','Lodz','PL','punk',1989,2.5),(133,'Something Like Elvis','Szubin','PL','noise rock',1994,15),(134,'Art Brut','Deptford','GBR','indie',2003,493.7),(135,'The Fall','Manchester','GBR','post punk',1976,392.8),(136,'Newest Zealand','null','PL','alternative',2010,1.1),(137,'Toro Y Moi','Columbia','USA','electronic',2010,597.2),(138,'Black Heart Procession','San Diego','USA','indie',1997,179.9),(139,'Efterklang','Kopenhaga','DEN','post rock',2001,368.6),(140,'A Place To Bury Strangers','NY','USA','shoegaze',2003,273.5),(141,'Tin Pan Alley','null','JAP','pop',2007,6.9),(142,'The Psychic Paramount','NY','USA','noise rock',2002,14.9),(143,'Baaba','Warszawa','PL','jazz',2000,11.2),(144,'Fennesz','Wieden','AUS','ambient',1988,238.6),(145,'Zu','Rzym','ITL','experimental',1997,54.8),(146,'Trans AM','null ','null','electronic',2010,106.1),(147,'Szelest Spadajacych Papierkow','null','PL','experimental',2008,1.7),(148,'Dam Mantle','null','null','electronic',2000,19),(149,'Paula i Karol','Warszawa','PL','folk',2009,17.5),(150,'3moonboys','Bydgoszcz','PL','post-rock',2000,5.5),(151,'Pustki','Ostrowek','PL','alternative',1999,65.6),(152,'Muchy','Poznan','PL','alternative rock',2004,113.5),(153,'Archie Bronson Outfit','Bath','GBR','garage rock',2003,122.9),(154,'Hey','Szczecin','PL','rock',1992,244.7),(155,'Dinosaur Jr.','Amherst','USA','grunge',1984,774.1),(156,'manescape','Glogow','PL','stoner rock',2006,0.7),(157,'Tunng','Londyn','GBR','folk',2003,278.9),(158,'Medwyn Goodall','Yorkshire','GBR','new age',1990,172.8),(159,'Mew','Kopenhaga','DEN','indie',1995,674),(160,'Lali Puna','Monachium','GER','electronic',1998,364.8),(161,'FM Belfast','null','ISL','electronic',2005,154.3),(162,'Pink Freud','null','PL','jazz',2001,64.7),(163,'Mouse On Mars','Dusseldorf','GER','electronic',1993,205.1),(164,'A Hawk And A Hacksaw','Albuquerque','USA','folk',2002,129.3),(165,'Radio Dept.','Lund','SWE','shoegaze',1995,553.8),(166,'Digital Mystikz','Londyn','GBR','dubstep',2005,122.7),(167,'All Sounds Allowed','Wroclaw','PL','industrial',2004,1.3),(168,'Tides From Nebula','null','PL','post rock',2008,76.4),(169,'These Are Powers','NY','USA','noise rock',2006,21.3),(170,'Ed Wood','null','CAN','noise rock',2010,1.4),(171,'O.S.T.R.','Lodz','PL','hip-hop',1993,205.7),(172,'Shearwater','Austin','USA','folk',2001,300.9),(173,'The Raveonettes','Kopenhaga','DEN','indie',2000,642.9),(174,'The Flaming Lips','Oklahoma','USA','indie rock',1983,1700),(175,'Pulled Apart By Horses','Leeds','GBR','indie',2007,86.3),(176,'Lao Che','null','PL','alternative',1999,76.7),(177,'No Age','Los Angeles','USA','noise rock',2005,296.3),(178,'Happy Pills','Poznan','USA','indie',1993,3.6),(179,'Bear In Heaven','NY','USA','experimental',2003,279.1),(180,'Dum Dum Girls','Los Angeles','USA','noise pop',2008,304.3),(181,'Darkstar','null','null','dubstep',2007,195.8),(182,'The Tallest Man On Earth','null','SWE','folk',2010,906.2),(183,'Niwea','null','PL','experimental',2009,4.9),(184,'Damon And Naomi','Boston','USA','dream pop',1991,42.1),(185,'Tune-Yards','Oakland','USA','experimental',2009,378.1),(186,'Shining','null','SWE','black metal',1996,146.3),(187,'Philip Jeck','null','null','ambient',2000,33.4),(188,'Ecstatic Sunshine','Baltimore','USA','noise pop',2004,12.4),(189,'Matmos','San Francisco','USA','electronic',1995,148.2),(190,'The National','Cincinnati','USA','indie',1999,1600),(191,'Final Fantasy','Toronto','CAN','indie',2000,356),(192,'Spiritualized','Rugby','GBR','space rock',2000,544.7),(193,'El Perro del Mar','Goeteborg','SWE','indie',2003,316.5),(194,'The Thermals','Portland','USA','indie',2002,292),(195,'Casiotone for the Painfully Alone','Chicago ','USA','electronic',1977,234.5),(196,'Frightened Rabbit','Selkirk','SCT','indie',2003,576.1),(197,'These New Puritans','Southend-on-Sea','GBR','indie',2005,299.2),(198,'Maria Peszek','Wroclaw','PL','alternative',2005,168.4),(199,'Marissa Nadler','Washington, D.C.','USA','folk',2004,303.3),(200,'The Field','Stockholm','SWE','minimal',2005,272.6),(201,'Olafur Arnalds','Mosfellsbær','ISL','ambient',2000,695.1),(202,'The Pains of Being Pure at Heart','NY','USA','indie',2007,507),(203,'High Places','NY','USA','experimental',2006,181.9),(204,'Handsome Furs','Montreal','CAN','indie',2006,190.7),(205,'HEALTH','LA','USA','noise',2006,360.9),(206,'Fucked Up','Toronto','CAN','hardcore',2001,200.2),(207,'Mark Kozelek','Massillion','USA','folk',2000,163.2),(208,'Komety','null','PL','rockabilly',2003,59.9),(209,'Crystal Stilts','NY','USA','shoegaze',2003,189.9),(210,'Wavves','San Diego','USA','psychedelic',2008,464.7),(211,'Wire','London','GBR','punk',1976,436.8),(212,'Wooden Shjips','SF','USA','experimental',2003,125.6),(213,'Lech Janerka','Wroclaw','PL','alternative',1979,32.5),(214,'Iron & Wine','Chapin','USA','folk',2002,2000),(215,'of Montreal','Athens','USA','indie pop',1996,1100),(216,'British Sea Power','Brighton','GBR','indie rock',2000,338.9),(217,'Caribou','Ontario','CAN','electronic',2004,887.4),(218,'Clinic','Liverpool','GBR','indie',1997,299.3),(219,'Kammerflimmer Kollektief','Karlsruh','GER','experimental',1999,75),(220,'DAT Politics','null','FRA','electronic',1998,45.6),(221,'Waglewski Fisz Emade','null','PL','alternative',2002,47.6),(222,'Dick4Dick','Gdansk','PL','electronic',2004,49.5),(223,'Singapore Sling','null','null','shoegaze',2000,50),(224,'Homo Twist','Krakow','PL','alternative rock',1993,27.5),(225,'Afro Kolektyw','null','PL','alternative',1993,24.4),(226,'Plazmatikon','null','PL','nu jazz',2000,1.4),(227,'New York Crasnals','Krakow','PL','post-rock',2004,6.2),(228,'Czeslaw Spiewa','Krakow','PL','alternative',2008,119.7),(229,'Blue Raincoat','null','PL','rock',1997,1.2),(230,'Dezerter','Warszawa','PL','punk',1983,58.6),(231,'Old Time Radio','Trojmiasto','PL','alternative',2001,7.3),(232,'Starzy Singers','Warszawa','PL','punk',1990,4.4),(233,'Scianka','Sopot','PL','experimental',1994,39),(234,'Low Frequency in Stereo','Haugesund','NOR','post-rock',2000,22.5),(235,'Architecture in Helsinki','Melbourne','AU','indie pop',2000,889.5),(236,'Piano Magic','Londyn','GBR','post-rock',1996,157),(237,'PumaJaw','Perthshire','SCT','electronic',2004,19.9),(238,'Tymon & The Transistors','null','PL','alternative',2002,8.5),(239,'Bassisters Orchestra','null','PL','nu-jazz',1997,6.5),(240,'Pogodno','Szczecin','PL','rock',1996,48.3),(241,'The Complainer','null','PL','post-punk',2007,2),(242,'Kobiety','Trojmiasto','PL','alternative',1999,14.8),(243,'Electrelane','Brighton','GBR','indie',1998,210.1),(244,'Radian','Wieden','AUS','post-rock',1996,19.9),(245,'iLiKETRAiNS','Leeds','GBR','post-rock',2003,78.9),(246,'The Syntetic','Swietochlowice','PL','alternative',2001,5.7),(247,'T.Love','Czestochowa','PL','rock',1982,181.5),(248,'Strachy na Lachy','null','PL','alternative rock',2003,100.9),(249,'Delons','Myslowice','PL','alternative',1998,8.5),(250,'Iowa Super Soccer','null','PL','polish indie',2004,10.5),(251,'The Car Is on Fire','Warszawa','PL','alternative',2002,50.1),(252,'Renton','null','PL','indie rock',2001,20.7),(253,'Psychocukier','Lodz','PL','alternative',1996,17),(254,'Sofa Surfers','Wieden','AUS','trip-hop',1996,419),(255,'IAMX','Middlesbrough','GBR','synthpop',1996,540.7),(256,'Bang Gang','Reykjavik','ISL','trip-hop',1996,233.4),(257,'Banco de Gaia','Londyn','GBR','ambient',1994,237.6),(293,'TEST','t','t','t',2001,2),(295,'TEST','t','t','t',2001,2),(296,'t','t','t','t',2010,1020),(297,'t','t','t','t',2010,1020),(298,'t','t','t','t',2010,1020);
/*!40000 ALTER TABLE `storage_band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage_lineup`
--

DROP TABLE IF EXISTS `storage_lineup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storage_lineup` (
  `id_lineup` int(11) NOT NULL AUTO_INCREMENT,
  `id_band` int(11) DEFAULT NULL,
  `name_band` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `id_off` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_lineup`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage_lineup`
--

LOCK TABLES `storage_lineup` WRITE;
/*!40000 ALTER TABLE `storage_lineup` DISABLE KEYS */;
INSERT INTO `storage_lineup` VALUES (1,1,'Feist',12),(2,2,'PJ Harvey',12),(3,3,'Swans',12),(4,3,'Swans',7),(5,4,'Shellac',12),(6,5,'Talib Kweli',12),(7,6,'Arab Strap',12),(8,7,'Preoccupations',12),(9,8,'This Heat',12),(10,9,'Boris',12),(11,10,'Loskot',12),(12,11,'Mitch & Mitch',12),(13,11,'Mitch & Mitch',8),(14,11,'Mitch & Mitch',5),(15,12,'PRO8L3M',12),(16,12,'PRO8L3M',10),(17,13,'Made in Poland',12),(18,14,'Artur Rojek',12),(19,14,'Artur Rojek',9),(20,15,'Jambinai',11),(21,16,'Devendra Banhart',11),(22,17,'Mudhoney',11),(23,18,'Napalm Death',11),(24,19,'Lush',11),(25,20,'Thundercat',11),(26,21,'Lightning Bolt',11),(27,22,'Brodka',11),(28,23,'Kaliber 44',11),(29,24,'SBB',11),(30,25,'William Basinski',11),(31,26,'Derrick May',11),(32,27,'Andrew Weatherall',11),(33,28,'Roman Flugel',11),(34,29,'GusGus',11),(35,30,'Dj Koze',11),(36,31,'Jaga Jazzist',11),(37,32,'Kiasmos',11),(38,33,'Pantha du Prince',11),(39,34,'Pablopavo i Ludziki',10),(40,35,'Jacek Sienkiewicz',10),(41,36,'Ten Typ Mes',10),(42,37,'Decapitated',10),(43,38,'Kortez',10),(44,39,'Kinsky',10),(45,40,'Patti Smith',10),(46,41,'Run The Jewels',10),(47,42,'Ride',10),(48,43,'The Dillinger Escape Plan',10),(49,44,'Sunn O)))',10),(50,45,'Susanne Sundfor',10),(51,46,'Mick Harvey',10),(52,47,'Xiu Xiu',10),(53,47,'Xiu Xiu',6),(54,48,'Slowdive',9),(55,49,'Belle & Sebastian',9),(56,50,'The Jesus And Mary Chain',9),(57,51,'Neutral Milk Hotel',9),(58,52,'Glenn Branca',9),(59,53,'Oranssi Pazuzu',9),(60,54,'Perfume Genius',9),(61,55,'The Notwist',9),(62,56,'Andrew W.K.',9),(63,57,'Nisennenmondai',9),(64,58,'Noon',9),(65,59,'The Smashing Pumpkins',8),(66,60,'My Bloody Valentine',8),(67,61,'Godspeed You! Black Emperor',8),(68,62,'John Talabot',8),(69,63,'Brutal Truth',8),(70,64,'The Pop Group',8),(71,65,'Julia Holter',8),(72,66,'Goat',8),(73,67,'Deerhunter',8),(74,68,'Molesta',8),(75,69,'Skalpel',8),(76,70,'Furia',8),(77,71,'Rebeka',8),(78,72,'Metronomy',7),(79,73,'Atari Teenage Riot',7),(80,74,'Charles Bradley',7),(81,75,'Battles',7),(82,76,'Thurston Moore',7),(83,77,'Kim Gordon',7),(84,78,'Stephen Malkmus',7),(85,79,'Iggy And The Stooges',7),(86,80,'Mazzy Star',7),(87,81,'Baroness',7),(88,82,'Converge',7),(89,83,'Nosowska',7),(90,83,'Nosowska',2),(91,84,'Profesjonalizm',7),(92,85,'Apteka',7),(93,85,'Apteka',5),(94,86,'Cool Kids Of Death',7),(95,86,'Cool Kids Of Death',2),(96,87,'Karbido',6),(97,88,'Kode9',6),(98,89,'Kury',6),(99,90,'Kyst',6),(100,90,'Kyst',5),(101,91,'Kamp!',6),(102,92,'Male Bonding',6),(103,93,'Matthew Dear',6),(104,94,'Merkabah',6),(105,95,'Meshuggah',6),(106,96,'Miss Polski',6),(107,97,'Mogwai',6),(108,98,'Moja Adrenalina',6),(109,99,'Muariolanza',6),(110,100,'Neon Indian',6),(111,100,'Neon Indian',4),(112,101,'Liars',6),(113,102,'Liturgy',6),(114,103,'The Lollipops',6),(115,104,'Low',6),(116,105,'L.Stadt',6),(117,105,'L.Stadt',12),(118,106,'Olivia Anna Livki',6),(119,107,'Omar Souleyman',6),(120,108,'Oneida',6),(121,109,'Oneohtrix Point Never',6),(122,110,'Paris Tetris',6),(123,111,'Polvo',6),(124,112,'Primal Scream',6),(125,113,'Public Image Ltd',6),(126,114,'Ringo Deathstarr',6),(127,115,'Sebadoh',6),(128,116,'Suuns',6),(129,117,'Tres.b',6),(130,118,'Tryp',6),(131,119,'Twilite',6),(132,120,'Twin Shadow',6),(133,121,'Warpaint',6),(134,122,'Wojtek Mazolewski Quintet',6),(135,123,'YACHT',6),(136,124,'Hotel Kosmos',5),(137,125,'Potty Umbrella',5),(138,126,'Kim Nowak',5),(139,127,'Voo Voo',5),(140,128,'The Horrors',5),(141,129,'Lenny Valentino',5),(142,130,'Tindersticks',5),(143,131,'We Call It A Sound',5),(144,132,'19 Wiosen',5),(145,132,'19 Wiosen',2),(146,133,'Something Like Elvis',5),(147,134,'Art Brut',5),(148,135,'The Fall',5),(149,136,'Newest Zealand',5),(150,137,'Toro Y Moi',5),(151,138,'Black Heart Procession',5),(152,139,'Efterklang',5),(153,140,'A Place To Bury Strangers',5),(154,141,'Tin Pan Alley',5),(155,142,'The Psychic Paramount',5),(156,143,'Baaba',5),(157,144,'Fennesz',5),(158,145,'Zu',5),(159,146,'Trans AM',5),(160,147,'Szelest Spadajacych Papierkow',5),(161,148,'Dam Mantle',5),(162,149,'Paula i Karol',5),(163,150,'3moonboys',5),(164,151,'Pustki',5),(165,152,'Muchy',5),(166,152,'Muchy',3),(167,153,'Archie Bronson Outfit',5),(168,154,'Hey',5),(169,154,'Hey',3),(170,155,'Dinosaur Jr.',5),(171,156,'manescape',5),(172,157,'Tunng',5),(173,158,'Medwyn Goodall',5),(174,159,'Mew',5),(175,160,'Lali Puna',5),(176,161,'FM Belfast',5),(177,162,'Pink Freud',5),(178,162,'Pink Freud',2),(179,163,'Mouse On Mars',5),(180,164,'A Hawk And A Hacksaw',5),(181,165,'Radio Dept.',5),(182,166,'Digital Mystikz',5),(183,167,'All Sounds Allowed',5),(184,168,'Tides From Nebula',5),(185,169,'These Are Powers',5),(186,170,'Ed Wood',5),(187,171,'O.S.T.R.',5),(188,171,'O.S.T.R.',2),(189,172,'Shearwater',5),(190,173,'The Raveonettes',5),(191,174,'The Flaming Lips',5),(192,175,'Pulled Apart By Horses',5),(193,176,'Lao Che',5),(194,177,'Lao Che',3),(195,178,'Lao Che',2),(196,177,'No Age',5),(197,178,'Happy Pills',5),(198,179,'Bear In Heaven',5),(199,180,'Dum Dum Girls',5),(200,181,'Darkstar',5),(201,182,'The Tallest Man On Earth',5),(202,183,'Niwea',5),(203,184,'Damon And Naomi',5),(204,185,'Tune-Yards',5),(205,186,'Shining',5),(206,187,'Philip Jeck',5),(207,188,'Ecstatic Sunshine',5),(208,189,'Matmos',5),(209,190,'The National',4),(210,191,'Final Fantasy',4),(211,192,'Spiritualized',4),(212,193,'El Perro del Mar',4),(213,194,'The Thermals',4),(214,195,'Casiotone for the Painfully Alone',4),(215,196,'Frightened Rabbit',4),(216,197,'These New Puritans',4),(217,198,'Maria Peszek',4),(218,198,'Maria Peszek',1),(219,199,'Marissa Nadler',4),(220,200,'The Field',4),(221,201,'Olafur Arnalds',4),(222,202,'The Pains of Being Pure at Heart',4),(223,203,'High Places',4),(224,204,'Handsome Furs',4),(225,205,'HEALTH',4),(226,206,'Fucked Up',4),(227,207,'Mark Kozelek',4),(228,208,'Komety',4),(229,209,'Crystal Stilts',4),(230,210,'Wavves',4),(231,211,'Wire',4),(232,212,'Wooden Shjips',4),(233,213,'Lech Janerka',4),(234,213,'Lech Janerka',1),(235,214,'Iron & Wine',3),(236,215,'of Montreal',3),(237,216,'British Sea Power',3),(238,217,'Caribou',3),(239,218,'Clinic',3),(240,219,'Kammerflimmer Kollektief',3),(241,220,'DAT Politics',3),(242,221,'Waglewski Fisz Emade',3),(243,222,'Dick4Dick',3),(244,222,'Dick4Dick',2),(245,223,'Singapore Sling',3),(246,224,'Homo Twist',3),(247,225,'Afro Kolektyw',3),(248,226,'Plazmatikon',3),(249,227,'New York Crasnals',3),(250,228,'Czeslaw Spiewa',3),(251,228,'Czeslaw Spiewa',1),(252,229,'Blue Raincoat',2),(253,230,'Dezerter',2),(254,231,'Old Time Radio',2),(255,232,'Starzy Singers',2),(256,233,'Scianka',2),(257,234,'Low Frequency in Stereo',2),(258,235,'Architecture in Helsinki',2),(259,236,'Piano Magic',2),(260,237,'PumaJaw',2),(261,238,'Tymon & The Transistors',2),(262,239,'Bassisters Orchestra',2),(263,240,'Pogodno',2),(264,241,'The Complainer',2),(265,242,'Kobiety',2),(266,242,'Kobiety',7),(267,243,'Electrelane',2),(268,244,'Radian',2),(269,245,'iLiKETRAiNS',2),(270,246,'The Syntetic',2),(271,247,'T.Love',1),(272,248,'Strachy na Lachy',1),(273,249,'Delons',1),(274,250,'Iowa Super Soccer',1),(275,251,'The Car Is on Fire',1),(276,252,'Renton',1),(277,253,'Psychocukier',1),(278,254,'Sofa Surfers',1),(279,255,'IAMX',1),(280,256,'Bang Gang',1),(281,257,'Banco de Gaia',1);
/*!40000 ALTER TABLE `storage_lineup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage_music`
--

DROP TABLE IF EXISTS `storage_music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storage_music` (
  `id_music` int(11) NOT NULL AUTO_INCREMENT,
  `name_band` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_album` text COLLATE utf8_unicode_ci,
  `best_song` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_music`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage_music`
--

LOCK TABLES `storage_music` WRITE;
/*!40000 ALTER TABLE `storage_music` DISABLE KEYS */;
INSERT INTO `storage_music` VALUES (1,'Feist','The Reminder','1234\r'),(2,'PJ Harvey','Stories from the City, Stories from the Sea','Good Fortune\r'),(3,'Swans','The Seer','Lunacy\r'),(4,'Shellac','1000 Hurts','Prayer to God\r'),(5,'Talib Kweli','The Beautiful Struggle','Going Hard\r'),(6,'Arab Strap','The Last Romance','Stink\r'),(7,'Preoccupations','Preoccupations','Anxiety\r'),(8,'This Heat','Deceit','Sleep\r'),(9,'Boris','Pink','Pink\r'),(10,'Loskot','Sun','Born to Noise\r'),(11,'Mitch & Mitch','Luv Year Country','I\'m 30, I\'m Lonely + I\'m Horny\r'),(12,'PRO8L3M','PRO8L3M','Molly\r'),(13,'Made in Poland','Future Time','Pada snieg\r'),(14,'Artur Rojek','Skladam sie z ciaglych powtorzen','Beksa\r'),(15,'Jambinai','Differance','Time of Extinction\r'),(16,'Devendra Banhart','Cripple Crow','Now That I Know\r'),(17,'Mudhoney','Superfuzz Bigmuff','Touch Me I\'m Sick\r'),(18,'Napalm Death','Scum','Scum\r'),(19,'Lush','Lovelife','Ladykillers\r'),(20,'Thundercat','The Beyond/Where the Giants Roam','Them Changes\r'),(21,'Lightning Bolt','Wonderful Rainbow','Assasins\r'),(22,'Brodka','Granda','Granda\r'),(23,'Kaliber 44 ','03:44','Normalnie o tej porze\r'),(24,'SBB','Memento z Banalnym Tryptykiem','Moja ziemio wysniona\r'),(25,'William Basinski','Melancholia','Melancholia II\r'),(26,'Derrick May','Innovator','Strings of Life\r'),(27,'Andrew Weatherall','The Bullet Catcher\'s Apprentice','Feathers\r'),(28,'Roman Flugel','Happiness Is Happening','Wilkie\r'),(29,'GusGus','Attention','Over\r'),(30,'Dj Koze','Amygdala','XTC\r'),(31,'Jaga Jazzist','A Livingroom Hush','Lithuania\r'),(32,'Kiasmos','Kiasmos','Looped\r'),(33,'Pantha du Prince','Black Noise','Lay in a Shimmer\r'),(34,'Pablopavo i Ludziki','Telehon','Dancingowa Piosenka Milosna\r'),(35,'Jacek Sienkiewicz','Displaced','Drifting\r'),(36,'Ten Typ Mes','Kandydaci na Szalencow','CODZIENNOSC\r'),(37,'Decapitated','Nihility','Spheres of Madness\r'),(38,'Kortez','Bumerang  ','Dobry moment\r'),(39,'Kinsky','Copula Mundi','Night To Day\r'),(40,'Patti Smith','Horses ','Because the Night\r'),(41,'Run The Jewels','Run the Jewels 2','Legend Has It\r'),(42,'Ride','Nowhere','Vapour Trail\r'),(43,'The Dillinger Escape Plan','Ire Works','Symptom Of Terminal Illness\r'),(44,'Sunn O)))','Black One','It Took the Night to Believe\r'),(45,'Susanne Sundfor','Ten Love Songs','Reincarnation\r'),(46,'Mick Harvey','Two of Diamonds','Out of Time Man\r'),(47,'Xiu Xiu','Fabulous Muscles','I Luv the Valley OH!\r'),(48,'Slowdive','Souvlaki','Sugar For The Pill\r'),(49,'Belle & Sebastian','Dear Catastrophe Waitress','Piazza, New York Catcher\r'),(50,'The Jesus And Mary Chain','Psychocandy','Just Like Honey\r'),(51,'Neutral Milk Hotel','In the Aeroplane Over the Sea','In the Aeroplane Over the Sea\r'),(52,'Glenn Branca','The Ascension','Lesson No. 2\r'),(53,'Oranssi Pazuzu','Varahtelija','Saturaatio\r'),(54,'Perfume Genius','Put Your Back N 2 It','Slip Away\r'),(55,'The Notwist','Neon Golden','Consequence\r'),(56,'Andrew W.K.','I Get Wet','Party Hard\r'),(57,'Nisennenmondai','Destination Tokyo','A\r'),(58,'Noon','Bleak Output','Satori\r'),(59,'The Smashing Pumpkins','Siamese Dream','1979\r'),(60,'My Bloody Valentine','Loveless','Only Shallow\r'),(61,'Godspeed You! Black Emperor','Yanqui U.X.O.','Undoing a Luciferian Towers\r'),(62,'John Talabot','Fin','Destiny feat. Pional\r'),(63,'Brutal Truth','Extreme Conditions Demand Extreme Responses','Birth of Ignorance\r'),(64,'The Pop Group','Y','She Is Beyond Good and Evil\r'),(65,'Julia Holter','Loud City Song','Sea Calls Me Home\r'),(66,'Goat','World Music','Run To Your Mama\r'),(67,'Deerhunter','Halcyon Digest','Revival\r'),(68,'Molesta','Ewenement','Wiedzialem, Ze Tak Bedzie\r'),(69,'Skalpel','Skalpel','Salvadanio\r'),(70,'Furia','Martwa Polska Jesien','Za cma, w dym\r'),(71,'Rebeka','Hellada','Stars\r'),(72,'Metronomy','The English Riviera','The Look\r'),(73,'Atari Teenage Riot','Delete Yourself!','Speed\r'),(74,'Charles Bradley','No Time For Dreaming','Changes\r'),(75,'Battles','Mirrored','Atlas\r'),(76,'Thurston Moore','Demolished Thoughts','Smoke Of Dreams\r'),(77,'Kim Gordon','Murdered Out','Murdered Out\r'),(78,'Stephen Malkmus','Face the Truth','Church on White\r'),(79,'Iggy And The Stooges','The Stooges','I Wanna Be Your Dog\r'),(80,'Mazzy Star','So Tonight That I Might See','Fade Into You\r'),(81,'Baroness','Blue Record','Shock Me\r'),(82,'Converge','Jane Doe','A Single Tear\r'),(83,'Nosowska','UniSexBlues','Nomada\r'),(84,'Profesjonalizm','Chopin Chopin Chopin','Dlugi\r'),(85,'Apteka','Menda','Synteza\r'),(86,'Cool Kids Of Death','Cool Kids of Death','Butelki z benzyna i kamienie\r'),(87,'Karbido','Karbido','Czolg\r'),(88,'Kode9','Black Sun/2 Far Gone','9 Samurai\r'),(89,'Kury','P.O.L.O.V.I.R.U.S.','Jesienna deprecha\r'),(90,'Kyst','Cotton Touch','Grass So Bright\r'),(91,'Kamp!','Kamp!','Cairo\r'),(92,'Male Bonding','Nothing Hurts','Her Fantasy\r'),(93,'Matthew Dear','Asa Breed','Bleed\r'),(94,'Merkabah','Moloch','Reed Idol\r'),(95,'Meshuggah','ObZen','Bleed\r'),(96,'Miss Polski','Fitness','Miss Piggy na parkiecie\r'),(97,'Mogwai','Mr. Beast','Auto Rock\r'),(98,'Moja Adrenalina','Nietoleruje-Bije','Reakcyjny knebel\r'),(99,'Muariolanza','Wszystko bedzie inaczej ','Falami\r'),(100,'Neon Indian','Era Extrana','Polish Girl\r'),(101,'Liars','Drum\'s Not Dead','The Other Side of Mt. Heart Atta\r'),(102,'Liturgy','Aesthethica','Generation\r'),(103,'The Lollipops','HOLD!','You Forgot My Name\r'),(104,'Low','Things We Lost In the Fire','Just Like Christmas\r'),(105,'L.Stadt','L.Stadt',' Ciggies \r'),(106,'Olivia Anna Livki','The Name Of This Girl Is','Tel Aviv\r'),(107,'Omar Souleyman','Wenu Wenu','Wenu Wenu\r'),(108,'Oneida','Rated O','Up With People\r'),(109,'Oneohtrix Point Never','Replica',' Replica \r'),(110,'Paris Tetris','Paristetris','Electrodomestics \r'),(111,'Polvo','Today\'s Active Lifestyles','My Kimono\r'),(112,'Primal Scream','Screamadelica','Movin\' On Up\r'),(113,'Public Image Ltd','Metal Box',' Rise \r'),(114,'Ringo Deathstarr','Colour Trip','Kaleidoscope\r'),(115,'Sebadoh','Bakesale','On Fire\r'),(116,'Suuns','Zeroes QC','2020\r'),(117,'Tres.b','40 winks of courage',' The Goose Hangs High \r'),(118,'Tryp','Kochanowka','Wedrowka Ludow\r'),(119,'Twilite','Bits & Pieces',' Fire \r'),(120,'Twin Shadow','Forget',' Five Seconds \r'),(121,'Warpaint','The Fool','Undertow\r'),(122,'Wojtek Mazolewski Quintet','Polka',' Get Free \r'),(123,'YACHT','Shangri-La','Psychic City (Classixx Remix)\r'),(124,'Hotel Kosmos','Wszystkie stare kobiety miasta','Pokoj dla krolowej\r'),(125,'Potty Umbrella','All You Know Is Wrong','Message\r'),(126,'Kim Nowak','Kim Nowak',' King Kong \r'),(127,'Voo Voo','21','Papierosy i gin\r'),(128,'The Horrors','Strange House','Still Life\r'),(129,'Lenny Valentino','Uwaga! Jedzie tramwaj','Chlopiec z plasteliny\r'),(130,'Tindersticks','Curtains ','Another Night In\r'),(131,'We Call It A Sound','Animated','Random Ambient\r'),(132,'19 Wiosen','Pedofil ',' Dystans \r'),(133,'Something Like Elvis','Cigarette Smoke Phantom','Phantom\r'),(134,'Art Brut','Bang Bang Rock And Roll',' Emily Kane \r'),(135,'The Fall','Shift-Work','Totally Wired\r'),(136,'Newest Zealand','Newest Zealand',' As Sure As Sunrise \r'),(137,'Toro Y Moi','Causers of This',' Blessa \r'),(138,'Black Heart Procession','2',' It\'s a Crime I Never Told You About the Diamonds in Your Eyes\r'),(139,'Efterklang','Tripper','Modern Drift\r'),(140,'A Place To Bury Strangers','A Place To Bury Strangers',' To Fix the Gash In Your Head \r'),(141,'Tin Pan Alley','All Hail the Omnipotent Universe!',' Tafetta \r'),(142,'The Psychic Paramount','II',' DDB \r'),(143,'Baaba','Poope Musiqe ','Biegnij Kuba, biegnij\r'),(144,'Fennesz','Endless Summer',' Rivers of Sand \r'),(145,'Zu','Carboniferous',' Carbon \r'),(146,'Trans AM','Futureworld','Television Eyes\r'),(147,'Szelest Spadajacych Papierkow','plyta redlowska','\"ORP \"\"Titanic\"\"\"\r'),(148,'Dam Mantle','First Wave',' Theatre \r'),(149,'Paula i Karol','Whole Again',' July \r'),(150,'3moonboys','only music can save us',' Spit it out \r'),(151,'Pustki','Koniec Kryzysu','Oranzada\r'),(152,'Muchy','Galanteria','Galanteria\r'),(153,'Archie Bronson Outfit','Derdnag','Dart For My Sweetheart\r'),(154,'Hey','Fire','Zazdrosc\r'),(155,'Dinosaur Jr.','You\'re Living All Over Me','Little Fury Things\r'),(156,'manescape','Ex-Internal ','Absence of Silence\r'),(157,'Tunng','Good Arrows','Bullets\r'),(158,'Medwyn Goodall','Ancient Nazca - Inca Mysteries','Machu Picchu\r'),(159,'Mew','And the Glass Handed Kites','Special\r'),(160,'Lali Puna','Faking The Books','Faking The Books\r'),(161,'FM Belfast','How To Make Friends','Underwear\r'),(162,'Pink Freud','Sorry Music Polska','Come as You Are\r'),(163,'Mouse On Mars','Radical Connector','Yippie (Bitshifter version)\r'),(164,'A Hawk And A Hacksaw','Darkness At Noon','In The River\r'),(165,'Radio Dept.','Pet Grief','Heaven\'s On Fire\r'),(166,'Digital Mystikz','Return II Space','Neverland\r'),(167,'All Sounds Allowed','Festung Wroclaw','rust\r'),(168,'Tides From Nebula','Aura','Shall We?\r'),(169,'These Are Powers',' All Aboard Future','Life of Birds\r'),(170,'Ed Wood','anal animal','kochaj mnie a.k.a. heart me\r'),(171,'O.S.T.R.','Jazzurekcja','Dla tych kilku rzeczy\r'),(172,'Shearwater','Winged Life','Rooks\r'),(173,'The Raveonettes','Pretty in Black','The Christmas Song\r'),(174,'The Flaming Lips','Yoshimi Battles The Pink Robots','Do You Realize??\r'),(175,'Pulled Apart By Horses','Pulled Apart By Horses','High Five, Swan Dive, Nose Dive\r'),(176,'Lao Che','Gospel','Drogi Panie\r'),(177,'No Age','Nouns','Eraser\r'),(178,'Happy Pills','Smile','I Know\r'),(179,'Bear In Heaven','Beast Rest Forth Mouth','Lovesick Teenagers\r'),(180,'Dum Dum Girls','Only in Dreams','Coming Down\r'),(181,'Darkstar','North','Need You\r'),(182,'The Tallest Man On Earth','Shallow Grave','The Gardener\r'),(183,'Niwea','1','Klata piersiowa\r'),(184,'Damon And Naomi','Within These Walls','The Mirror Phase\r'),(185,'Tune-Yards','w h o k i l l','Bizness\r'),(186,'Shining','Blackjazz','Låt oss ta allt från varandra\r'),(187,'Philip Jeck','Sand','June\r'),(188,'Ecstatic Sunshine','Freckle Wars','Ramontana\r'),(189,'Matmos','The Civil War','For the Trees\r'),(190,'The National','Sad Songs for Dirty Lovers','Fake Empire\r'),(191,'Final Fantasy','Has a Good Home','This Lamb Sells Condos\r'),(192,'Spiritualized','Ladies and Gentlemen We Are Floating in Space','Ladies and Gentlemen We Are Floating in Space\r'),(193,'El Perro del Mar','From The Valley To The Stars','Change of Heart\r'),(194,'The Thermals','The Body, The Blood, The Machine','A Pillar of Salt\r'),(195,'Casiotone for the Painfully Alone','Etiquette','Cold White Christmas\r'),(196,'Frightened Rabbit','The Midnight Organ Fight','The Modern Leper\r'),(197,'These New Puritans','Hidden','Elvis\r'),(198,'Maria Peszek','Miasto Mania','Moje miasto\r'),(199,'Marissa Nadler','Songs III: Bird On The Water','Diamond Heart\r'),(200,'The Field','Sun & Ice','Over the Ice\r'),(201,'Olafur Arnalds','Found Songs','Near Light\r'),(202,'The Pains of Being Pure at Heart','The Pains of Being Pure at Heart','Young Adult Friction\r'),(203,'High Places','High Places vs. Mankind','From Stardust to Sentience\r'),(204,'Handsome Furs','Plague Park','What We Had\r'),(205,'HEALTH','HEALTH','Crimewave\r'),(206,'Fucked Up','David Comes To Life','Queen Of Hearts\r'),(207,'Mark Kozelek','What\'s Next To The Moon','Up To My Neck In You\r'),(208,'Komety','Komety','Miasto turystow\r'),(209,'Crystal Stilts','Alight of Night','The Dazzled\r'),(210,'Wavves','King Of The Beach','Up and Down\r'),(211,'Wire','Pink Flag','Ex Lion Tamer\r'),(212,'Wooden Shjips','West','Lazy Bones\r'),(213,'Lech Janerka','Plagiaty','Rower\r'),(214,'Iron & Wine','The Shepherd\'s Dog','Naked As We Came\r'),(215,'of Montreal','Hissing Fauna, Are You the Destroyer?','Gronlandic Edit\r'),(216,'British Sea Power','The Decline of British Sea Power','Waving Flags\r'),(217,'Caribou','Swim','Odessa\r'),(218,'Clinic','Walking With Thee','The Second Line\r'),(219,'Kammerflimmer Kollektief','Cicadidae','Neumond inselhin\r'),(220,'DAT Politics','Plugs Plus','Freak Me Out\r'),(221,'Waglewski Fisz Emade','Meska Muzyka','Dziob Pingwina\r'),(222,'Dick4Dick','Silver Ballads','Technology\r'),(223,'Singapore Sling','Perversity, Desperation And Death','Overdriver\r'),(224,'Homo Twist','Matematyk','Ni Siostry Ni Brata\r'),(225,'Afro Kolektyw','Piosenki Po Polsku','Czytaj z ruchu moich ust\r'),(226,'Plazmatikon','Dzemsesje','Drops\r'),(227,'New York Crasnals','Faces And Noises We Can Make','No Time\r'),(228,'Czeslaw Spiewa','Debiut','Zaba Tonie w Betonie\r'),(229,'Blue Raincoat','Small town addiction','Because the shell is empty\r'),(230,'Dezerter','Kolaboracja','Greetings from Poland\r'),(231,'Old Time Radio','Downtown','just because we were wrong\r'),(232,'Starzy Singers','Takie Jest C\'est La Vie','Was\r'),(233,'Scianka','Dni Wiatru','Oceans Fall Down\r'),(234,'Low Frequency in Stereo','The Low Frequency in Stereo','Die Electro Voice\r'),(235,'Architecture in Helsinki','In Case We Die','Do The Whirlwind\r'),(236,'Piano Magic',' Disaffected','Disaffected\r'),(237,'PumaJaw','Featherdown Quilt','Featherdown Quilt\r'),(238,'Tymon & The Transistors','Bigos Heart','Bigos Heart\r'),(239,'Bassisters Orchestra','Numer Jeden','Test\r'),(240,'Pogodno','Cale Zycie Z Wariatami','Spierdalacz\r'),(241,'The Complainer','The Complainer & the Complainers','I Am So Alive\r'),(242,'Kobiety','Kobiety','Marcello\r'),(243,'Electrelane',' The Power Out','To the East\r'),(244,'Radian','Juxtaposition','Shift\r'),(245,'iLiKETRAiNS','ELEGIES TO LESSEONS LEARNT','Terra Nova\r'),(246,'The Syntetic','Tchnienie Mocy','Czlowiek Widmo\r'),(247,'T.Love','I Hate Rock\'N\'Roll','Warszawa\r'),(248,'Strachy na Lachy','Pila  Tango','Czarny chleb i czarna kawa\r'),(249,'Delons','Wersja z napisami','Zdjecia\r'),(250,'Iowa Super Soccer','Lullabies to keep your eyes closed ','Cold\r'),(251,'The Car Is on Fire','Lake & Flames','Can\'t Cook (Who Cares?)\r'),(252,'Renton','Take Off','This Is Not The End\r'),(253,'Psychocukier','No More Work!','Ametyst 104\r'),(254,'Sofa Surfers','Transit','Sofa Rockers (Richard Dorfmeister Remix)\r'),(255,'IAMX','Kingdom of Welcome Addiction','Spit It Out\r'),(256,'Bang Gang','Something Wrong','Follow\r'),(257,'Banco de Gaia','Last Train To Lhasa','Drippy\r'),(289,'TEST','t','t'),(290,'TEST','t','t'),(291,'t','t','t'),(292,'t','t','t');
/*!40000 ALTER TABLE `storage_music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `active` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`),
  CONSTRAINT `FKn82ha3ccdebhokx3a8fgdqeyy` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (5,'nowy@2.pl','nowy','$2a$10$KCfRDH5yWu.vwokkQMBMkOCtNeq66NI6xr27wgQ3AV.ew5K2PwZ4y',1,''),(6,'admin@admin.admin','admin','$2a$10$68si.EfQaVMSp0vyxEHk/.D3GxxR/C.68LPFie2NUPotSCnuA78Gm',2,''),(7,'mariawisniewska89@gmail.com','zona','$2a$10$95udvKMtwdzfUO8MLnX7Nup/Oq4PyD1aKR7jZ/o29FesfOLlkc6bW',1,'');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `offview`
--

/*!50001 DROP VIEW IF EXISTS `offview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `offview` AS select `b`.`id_band` AS `id_band`,`b`.`name_band` AS `name_band`,`b`.`city` AS `city`,`b`.`country` AS `country`,`b`.`tag` AS `tag`,`b`.`since` AS `since`,`b`.`listeners_kilo` AS `listeners_kilo`,`m`.`name_album` AS `name_album`,`m`.`best_song` AS `best_song`,`f`.`year` AS `year` from (`festival` `f` left join (`storage_lineup` `l` left join (`storage_music` `m` left join `storage_band` `b` on((`b`.`id_band` = `m`.`id_music`))) on((`l`.`name_band` = `b`.`name_band`))) on((`f`.`id_off` = `l`.`id_off`))) order by `b`.`id_band` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-25 19:53:26
