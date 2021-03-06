-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: liga
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `acta`
--

DROP TABLE IF EXISTS `acta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acta` (
  `Cod_Acta` int NOT NULL,
  `Fecha_del_acta` date NOT NULL,
  `PARTIDO_Cod_Partido` int unsigned NOT NULL,
  PRIMARY KEY (`Cod_Acta`),
  KEY `fk_ACTA_PARTIDO1_idx` (`PARTIDO_Cod_Partido`),
  CONSTRAINT `fk_ACTA_PARTIDO1` FOREIGN KEY (`PARTIDO_Cod_Partido`) REFERENCES `partido` (`Cod_Partido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acta`
--

LOCK TABLES `acta` WRITE;
/*!40000 ALTER TABLE `acta` DISABLE KEYS */;
INSERT INTO `acta` VALUES (0,'2020-01-01',0),(1,'2020-11-10',1),(2,'2020-05-11',2),(3,'2020-07-08',3),(4,'2020-06-09',4);
/*!40000 ALTER TABLE `acta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `consulta_4`
--

DROP TABLE IF EXISTS `consulta_4`;
/*!50001 DROP VIEW IF EXISTS `consulta_4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta_4` AS SELECT 
 1 AS `Jugadores`,
 1 AS `Fecha_de_nacimiento`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipo` (
  `Nombre_Equipo` varchar(45) NOT NULL,
  `Fundaci??n` date NOT NULL,
  `Localidad` varchar(45) NOT NULL,
  `PISTA_Zona_Pista` varchar(45) NOT NULL,
  `PISTA_N??mero_de_pista` int NOT NULL,
  PRIMARY KEY (`Nombre_Equipo`),
  KEY `fk_EQUIPO_PISTA1_idx` (`PISTA_Zona_Pista`,`PISTA_N??mero_de_pista`),
  CONSTRAINT `fk_EQUIPO_PISTA1` FOREIGN KEY (`PISTA_Zona_Pista`, `PISTA_N??mero_de_pista`) REFERENCES `pista` (`Zona_Pista`, `N??mero_de_pista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
INSERT INTO `equipo` VALUES ('Ajax','2022-03-30','grande','CD. ANTONIO ALVAREZ',1),('Arsenal','2010-08-04','montenegro','CD. ANTONIO ALVAREZ',2),('AS Monaco','2013-09-02','Cova de Iria','CD. ANTONIO ALVAREZ',3),('AS Saint-??tienne','2007-01-01','Al Ma\'udah','CD. ANTONIO ALVAREZ',4),('Atalanta','2011-07-28','Dukuhsia','CD. VEGA DE TRIANA FS',1),('Atl??tico Madrid','2014-07-11','Luoxiong','CD. VEGA DE TRIANA FS',2),('Atl??tico Mineiro','2012-07-01','Ust\'-Dzheguta','CD. VEGA DE TRIANA FS',3),('Bayer 04 Leverkusen','2013-07-03','Jamaica','CD. VEGA DE TRIANA FS',4),('Be?ikta? JK','2005-07-01','??ydzen','CD. ANTONIO ALVAREZ',1),('Borussia Dortmund','2010-07-01','Pogag','CD. ANTONIO ALVAREZ',2),('Chelsea','2012-07-01','Marsella','CD. ANTONIO ALVAREZ',3),('Dalian YiFang FC','2013-07-09','San Antonio','CD. ANTONIO ALVAREZ',4),('Everton','2014-07-01','Drakino','CD. VEGA DE TRIANA FS',1),('FC Barcelona','2004-07-01','??arki','CD. VEGA DE TRIANA FS',2),('FC Bayern M??nchen','2005-08-01','Al Jamaliyah','CD. VEGA DE TRIANA FS',3),('FC Porto','2011-07-01','ni??ka banja','CD. VEGA DE TRIANA FS',4),('FC Schalke 04','2011-07-28','Macach??n','CD. ANTONIO ALVAREZ',1),('Gr??mio','2012-07-01','Ban?? Khall??d','CD. ANTONIO ALVAREZ',2),('Guangzhou Evergrande Taobao FC','2013-07-16','Baj??ao','CD. ANTONIO ALVAREZ',3),('Inter','2016-07-16','Launceston','CD. ANTONIO ALVAREZ',4),('Juventus','2018-07-10','lincoln','CD. VEGA DE TRIANA FS',1),('LA Galaxy','2018-07-01','kangping','CD. VEGA DE TRIANA FS',2),('Lazio','2015-07-01','San Pedro','CD. VEGA DE TRIANA FS',3),('Leicester City','2012-08-01','Dongtundu','CD. VEGA DE TRIANA FS',4),('Liverpool','2014-07-01','Khon Buri','CD. ANTONIO ALVAREZ',1),('Manchester City','2015-08-30','Canutama','CD. ANTONIO ALVAREZ',2),('Manchester United','2011-07-01','Th??? Tr???n T?? L??ng','CD. ANTONIO ALVAREZ',3),('Milan','2010-07-14','Tilburgo','CD. ANTONIO ALVAREZ',4),('Napoli','2014-07-17','Ferraz de Vasconcelos','CD. VEGA DE TRIANA FS',1),('Olympique de Marseille','2011-07-28','Ubiaja','CD. VEGA DE TRIANA FS',2),('Olympique Lyonnais','2014-07-01','Sanfins','CD. VEGA DE TRIANA FS',3),('Paris Saint-Germain','2017-08-03','kristiansand s','CD. VEGA DE TRIANA FS',4),('RB Leipzig','2018-07-06','Khadzhalmakhi','CD. ANTONIO ALVAREZ',1),('RC Celta','2010-07-01','Kademangan','CD. ANTONIO ALVAREZ',2),('Real Betis','2013-07-11','Yotala','CD. ANTONIO ALVAREZ',3),('Real Madrid','2012-08-01','Wonosari','CD. ANTONIO ALVAREZ',4),('Real Sociedad','2013-08-30','Panglanjan','CD. VEGA DE TRIANA FS',1),('Roma','2018-08-09','Lanhas','CD. VEGA DE TRIANA FS',2),('Sevilla FC','2018-01-31','Tangkou','CD. VEGA DE TRIANA FS',3),('SL Benfica','2016-07-01','Lysekil','CD. VEGA DE TRIANA FS',4),('Sporting CP','2017-07-01','prohibici??n muang','CD. ANTONIO ALVAREZ',1),('Tottenham Hotspur','2014-07-16','Providencia','CD. ANTONIO ALVAREZ',2),('Valencia CF','2008-09-01','Yekaterinovka','CD. ANTONIO ALVAREZ',3),('Villarreal CF','2018-01-06','Cha Grande','CD. ANTONIO ALVAREZ',4),('Vissel Kobe','2014-07-28','Itarar??','CD. VEGA DE TRIANA FS',1),('West Ham United','2016-08-09','Gavle','CD. VEGA DE TRIANA FS',2);
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipo_arbitral`
--

DROP TABLE IF EXISTS `equipo_arbitral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipo_arbitral` (
  `Cod_Equipo_Arbitral` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido1` varchar(45) NOT NULL,
  `Apellido2` varchar(45) NOT NULL,
  `Fecha_de_nacimiento` date NOT NULL,
  `Tipo` enum('arbitro','juezDeMesa') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Cod_Equipo_Arbitral`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo_arbitral`
--

LOCK TABLES `equipo_arbitral` WRITE;
/*!40000 ALTER TABLE `equipo_arbitral` DISABLE KEYS */;
INSERT INTO `equipo_arbitral` VALUES (0,'Torta','Perez','Pin','2001-12-02','arbitro'),(1,'Ernesto','Lol','Renin','2001-02-23','juezDeMesa'),(2,'Caracol','Leo','Pasta','2001-06-09','juezDeMesa'),(3,'Stafi','Roni','Lai','2002-04-22','arbitro'),(4,'Francisquito','Cal','Ela','2002-04-23','arbitro'),(5,'ElJoni','Perez','Callon','2002-04-24','juezDeMesa');
/*!40000 ALTER TABLE `equipo_arbitral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadistica`
--

DROP TABLE IF EXISTS `estadistica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadistica` (
  `Cod_Jugador` int NOT NULL,
  `Cod_Partido` int unsigned NOT NULL,
  `Minuto` int NOT NULL,
  `tipo` enum('gol','amarilla','roja') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Cod_Estadistica` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Cod_Estadistica`),
  KEY `fk_JUGADOR_has_PARTIDO_PARTIDO1_idx` (`Cod_Partido`),
  KEY `fk_JUGADOR_has_PARTIDO_JUGADOR1_idx` (`Cod_Jugador`),
  CONSTRAINT `fk_JUGADOR_has_PARTIDO_JUGADOR1` FOREIGN KEY (`Cod_Jugador`) REFERENCES `jugador` (`Cod_Jugador`),
  CONSTRAINT `fk_JUGADOR_has_PARTIDO_PARTIDO1` FOREIGN KEY (`Cod_Partido`) REFERENCES `partido` (`Cod_Partido`)
) ENGINE=InnoDB AUTO_INCREMENT=1502 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadistica`
--

LOCK TABLES `estadistica` WRITE;
/*!40000 ALTER TABLE `estadistica` DISABLE KEYS */;
INSERT INTO `estadistica` VALUES (1,1,30,'gol',2),(4,2,34,'amarilla',3),(3,3,55,'gol',4),(5,4,60,'gol',5),(6,5,32,'gol',6),(120,6,12,'gol',7),(26,7,52,'gol',8),(3,8,22,'roja',9),(5,9,57,'amarilla',10),(120,11,20,'gol',12),(26,12,13,'amarilla',13),(91,13,1,'gol',14),(171,14,2,'gol',15),(33,15,24,'amarilla',16),(148,16,26,'gol',17),(147,17,57,'roja',18),(9,19,11,'amarilla',20),(133,21,34,'roja',22),(108,22,55,'amarilla',23),(68,23,60,'gol',24),(173,25,12,'amarilla',26),(180,26,52,'gol',27),(0,27,22,'gol',28),(10,28,57,'amarilla',29),(120,29,29,'gol',30),(102,30,20,'roja',31),(157,31,13,'gol',32),(91,32,1,'amarilla',33),(120,33,2,'gol',34),(141,34,24,'roja',35),(120,36,57,'gol',37),(141,37,35,'gol',38),(76,38,11,'amarilla',39),(90,40,34,'gol',41),(94,42,60,'gol',43),(1,44,12,'gol',45),(4,45,52,'amarilla',46),(1,47,57,'roja',48),(48,49,20,'gol',50),(91,1,57,'roja',200),(94,2,29,'gol',201),(102,3,20,'amarilla',202),(108,4,13,'gol',203),(109,5,1,'roja',204),(2,6,2,'amarilla',205),(88,7,24,'gol',206),(90,8,26,'gol',207),(91,9,57,'amarilla',208),(0,11,11,'gol',210),(1,12,30,'amarilla',211),(4,13,34,'gol',212),(40,14,55,'roja',213),(1,15,60,'gol',214),(109,16,32,'amarilla',215),(48,17,12,'gol',216),(26,19,22,'amarilla',218),(3,21,29,'gol',220),(38,22,20,'amarilla',221),(29,23,13,'gol',222),(80,25,2,'amarilla',224),(2,26,24,'gol',225),(167,27,26,'roja',226),(130,28,57,'gol',227),(120,29,35,'amarilla',228),(6,30,11,'gol',229),(134,31,30,'roja',230),(88,32,34,'amarilla',231),(120,33,55,'gol',232),(1,1,57,'gol',398),(4,2,35,'roja',399),(3,3,11,'amarilla',400),(5,4,30,'gol',401),(6,5,34,'gol',402),(102,6,55,'amarilla',403),(26,7,60,'gol',404),(3,8,32,'gol',405),(5,9,12,'amarilla',406),(102,11,22,'roja',408),(26,12,57,'gol',409),(91,13,29,'amarilla',410),(171,14,20,'gol',411),(33,15,13,'roja',412),(148,16,1,'amarilla',413),(147,17,2,'gol',414),(91,1,12,'gol',596),(120,36,52,'gol',730),(90,37,22,'amarilla',731),(91,38,57,'gol',732),(0,40,20,'gol',734),(4,42,1,'gol',736),(1,44,24,'amarilla',738),(109,45,26,'gol',739),(157,47,35,'amarilla',741),(120,49,30,'gol',743),(26,19,57,'gol',911),(3,21,11,'amarilla',913),(38,22,30,'gol',914),(29,23,34,'roja',915),(80,25,60,'amarilla',917),(2,26,32,'gol',918),(167,27,12,'roja',919),(130,28,52,'amarilla',920),(120,29,22,'gol',921),(6,30,57,'gol',922),(134,31,29,'amarilla',923),(88,32,20,'gol',924),(142,33,13,'gol',925),(145,34,1,'amarilla',926),(16,36,24,'roja',928),(108,37,26,'gol',929),(151,38,57,'amarilla',930),(159,40,11,'roja',932),(108,42,34,'gol',934),(5,44,60,'amarilla',936),(173,45,32,'gol',937),(0,47,52,'amarilla',939),(94,49,57,'roja',941),(3,3,57,'gol',1093),(5,4,29,'gol',1094),(6,5,20,'amarilla',1095),(102,6,13,'gol',1096),(26,7,1,'roja',1097),(3,8,2,'gol',1098),(5,9,24,'amarilla',1099),(102,11,57,'roja',1101),(26,12,35,'amarilla',1102),(91,13,11,'gol',1103),(171,14,30,'gol',1104),(33,15,34,'amarilla',1105),(148,16,55,'gol',1106),(147,17,60,'gol',1107),(9,19,12,'gol',1109),(133,21,22,'gol',1111),(108,22,57,'amarilla',1112),(68,23,29,'gol',1113),(173,25,13,'amarilla',1115),(180,26,1,'gol',1116),(0,27,2,'gol',1117),(10,28,24,'amarilla',1118),(94,29,26,'gol',1119),(102,30,57,'gol',1120),(157,31,35,'amarilla',1121),(29,32,11,'gol',1122),(120,33,30,'gol',1123),(141,34,34,'gol',1124),(120,36,60,'gol',1126),(90,37,32,'roja',1127),(91,38,12,'amarilla',1128),(0,40,22,'gol',1130),(4,42,29,'gol',1132),(1,44,13,'amarilla',1134),(109,45,1,'gol',1135),(157,47,24,'gol',1137),(120,49,57,'gol',1139),(16,3,57,'gol',1291),(17,4,35,'roja',1292),(18,5,11,'gol',1293),(19,6,30,'amarilla',1294),(20,7,34,'gol',1295),(21,8,55,'roja',1296),(22,9,60,'amarilla',1297),(24,11,12,'gol',1299),(25,12,52,'amarilla',1300),(26,13,22,'gol',1301),(27,14,57,'gol',1302),(28,15,29,'amarilla',1303),(29,16,20,'gol',1304),(30,17,13,'roja',1305),(32,19,2,'amarilla',1307),(34,21,26,'roja',1309),(35,22,57,'amarilla',1310),(36,23,35,'gol',1311),(38,25,30,'amarilla',1313),(39,26,34,'gol',1314),(40,27,55,'gol',1315),(41,28,60,'amarilla',1316),(42,29,32,'gol',1317),(43,30,12,'roja',1318),(44,31,52,'gol',1319),(45,32,22,'amarilla',1320),(46,33,57,'gol',1321),(47,34,29,'roja',1322),(49,36,13,'gol',1324),(1,1,38,'gol',1500),(1,1,40,'gol',1501);
/*!40000 ALTER TABLE `estadistica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugador`
--

DROP TABLE IF EXISTS `jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugador` (
  `Cod_Jugador` int NOT NULL,
  `DNI` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido1` varchar(45) NOT NULL,
  `Apellido2` varchar(45) NOT NULL,
  `Fecha_de_nacimiento` date NOT NULL,
  `Posici??n` varchar(45) NOT NULL,
  `Nacionalidad` varchar(45) NOT NULL,
  `EQUIPO_Nombre_Equipo` varchar(45) NOT NULL,
  PRIMARY KEY (`Cod_Jugador`),
  KEY `fk_JUGADOR_EQUIPO_idx` (`EQUIPO_Nombre_Equipo`),
  CONSTRAINT `fk_JUGADOR_EQUIPO` FOREIGN KEY (`EQUIPO_Nombre_Equipo`) REFERENCES `equipo` (`Nombre_Equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador`
--

LOCK TABLES `jugador` WRITE;
/*!40000 ALTER TABLE `jugador` DISABLE KEYS */;
INSERT INTO `jugador` VALUES (0,'158023','L. Messi','cuerpos','Mochar','2004-07-01','RF','Argentina','FC Barcelona'),(1,'20801','Cristiano Ronaldo','Jedrachowicz','Cocinaham','2018-07-10','ST','Portugal','Juventus'),(2,'190871','Neymar Jr','Aish','So??ador','2017-08-03','LW','Brazil','Paris Saint-Germain'),(3,'193080','De Gea','melliard','Urien','2011-07-01','GK','Spain','Manchester United'),(4,'192985','K. De Bruyne','Ajsik','Wiley','2015-08-30','RCM','Belgium','Manchester City'),(5,'183277','E. Hazard','Tillerton','Gastick??','2012-07-01','LF','Belgium','Chelsea'),(6,'177003','L. Modri?','Siggins','Treharne','2012-08-01','RCM','Croatia','Real Madrid'),(7,'176580','L. Su??rez','Filkov','Tebaldo','2014-07-11','RS','Uruguay','FC Barcelona'),(8,'155862','Sergio Ramos','gran lote','Toint??n','2005-08-01','RCB','Spain','Real Madrid'),(9,'200389','J. Oblak','teresa','hiscoca','2014-07-16','GK','Slovenia','Atl??tico Madrid'),(10,'188545','R. Lewandowski','Burren','gregori','2014-07-01','ST','Poland','FC Bayern M??nchen'),(11,'182521','T. Kroos','Erey','Stapleford','2014-07-17','LCM','Germany','Real Madrid'),(12,'182493','D. God??n','Praundlin','Izod','2010-08-04','CB','Uruguay','Atl??tico Madrid'),(13,'168542','David Silva','mucho','wight','2010-07-14','LCM','Spain','Manchester City'),(14,'215914','N. Kant??','Scipsey','raf??n','2016-07-16','LDM','France','Chelsea'),(15,'211110','P. Dybala','Hungerford','marchitarse','2015-07-01','LF','Argentina','Juventus'),(16,'202126','H. Kane','Bartoszinski','trucha','2010-07-01','ST','England','Tottenham Hotspur'),(17,'194765','A. Griezmann','ranklin','Oakland','2014-07-28','CAM','France','Atl??tico Madrid'),(18,'192448','M. ter Stegen','Pu??al','Wimpeney','2014-07-01','GK','Germany','FC Barcelona'),(19,'192119','T. Courtois','Derrington','aleta','2018-08-09','GK','Belgium','Real Madrid'),(20,'189511','Sergio Busquets','coda','T??volier','2008-09-01','CDM','Spain','FC Barcelona'),(21,'179813','E. Cavani','O\'Bradden','Muerte','2013-07-16','LS','Uruguay','Paris Saint-Germain'),(22,'167495','M. Neuer','Chorlito','Andr??ssy','2011-07-01','GK','Germany','FC Bayern M??nchen'),(23,'153079','S. Ag??ero','Jelkes','Orbina','2011-07-28','ST','Argentina','Manchester City'),(24,'138956','G. Chiellini','Quillinane','Turp??n','2005-07-01','LCB','Italy','Juventus'),(25,'231747','K. Mbapp??','Meineck','cranage','2018-07-01','RM','France','Paris Saint-Germain'),(26,'209331','M. Salah','peler??n','Jenking','2017-07-01','RM','Egypt','Liverpool'),(27,'200145','Casemiro','ver??n','tupido','2013-07-11','CDM','Brazil','Real Madrid'),(28,'198710','J. Rodr??guez','Muscott','Tolcher','2011-07-28','LAM','Colombia','FC Bayern M??nchen'),(29,'198219','L. Insigne','Hallsworth','Leisk','2010-07-01','LW','Italy','Napoli'),(30,'197781','Isco','boyes','Rotherham','2013-07-03','LW','Spain','Real Madrid'),(31,'190460','C. Eriksen','salvaje','florblanca','2013-08-30','CAM','Denmark','Tottenham Hotspur'),(32,'189242','Coutinho','Boyero','Zagal','2018-01-06','LW','Brazil','FC Barcelona'),(33,'188567','P. Aubameyang','gallihawk','Andreolli','2018-01-31','LM','Gabon','Arsenal'),(34,'178603','M. Hummels','Kelsell','mayor','2016-07-01','LCB','Germany','FC Bayern M??nchen'),(35,'176676','Marcelo','armfirld','Willcox','2007-01-01','LB','Brazil','Real Madrid'),(36,'173731','G. Bale','Jahndel','Minihan','2013-09-02','ST','Wales','Real Madrid'),(37,'167948','H. Lloris','Hija','Pauletto','2012-08-01','GK','France','Tottenham Hotspur'),(38,'167664','G. Higua??n','Clayton','D??len','2011-07-28','LS','Argentina','Milan'),(39,'164240','Thiago Silva','Cappineer','Ruane','2012-07-01','RCB','Brazil','Paris Saint-Germain'),(40,'162835','S. Handanovi?','Beeck','bolletti','2012-07-01','GK','Slovenia','Inter'),(41,'1179','G. Buffon','Pieracci','Demanche','2018-07-06','GK','Italy','Paris Saint-Germain'),(42,'205600','S. Umtiti','Lamshead','huygens','2016-07-12','CB','France','FC Barcelona'),(43,'201399','M. Icardi','Guillet','Fidelidad','2013-07-09','ST','Argentina','Inter'),(44,'201024','K. Koulibaly','Rudsdale','Kolis','2014-07-01','LCB','Senegal','Napoli'),(45,'195864','P. Pogba','autob??s','Pobjay','2016-08-09','RDM','France','Manchester United'),(46,'193041','K. Navas','Falcas','Rigardeau','2014-08-03','GK','Costa Rica','Real Madrid'),(47,'192505','R. Lukaku','Pescador','Bygrave','2017-07-10','ST','Belgium','Manchester United'),(48,'192387','C. Immobile','coche','Seid','2016-07-27','ST','Italy','Lazio'),(49,'189332','Jordi Alba','Parm??n','Harpin','2012-07-01','LB','Spain','FC Barcelona'),(50,'175943','D. Mertens','Sikorski','Bartosiak','2013-07-01','RF','Belgium','Napoli'),(51,'172871','J. Vertonghen','Lohden','Nowell','2012-07-01','LCB','Belgium','Tottenham Hotspur'),(52,'171877','M. Ham????k','Baty','alden','2007-07-01','LCM','Slovakia','Napoli'),(53,'168651','I. Rakiti?','Krzyzowski','Eseler','2014-07-01','RCM','Croatia','FC Barcelona'),(54,'152729','Piqu??','Wyvill','Desecho','2008-07-01','RCB','Spain','FC Barcelona'),(55,'222492','L. San??','Gritar','Motherwell','2016-08-02','LW','Germany','Manchester City'),(56,'218667','Bernardo Silva','lia','Ellicock','2017-07-01','RW','Portugal','Manchester City'),(57,'210257','Ederson','rodgers','matem??ticas','2017-07-01','GK','Brazil','Manchester City'),(58,'208722','S. Man??','Dowsey','Firmar','2016-07-01','LM','Senegal','Liverpool'),(59,'203376','V. van Dijk','brasero','Ivanets','2018-01-01','LCB','Netherlands','Liverpool'),(60,'202652','R. Sterling','mam??','Pentycross','2015-07-14','RW','England','Manchester City'),(61,'201942','Roberto Firmino','Fermer','Hach??','2015-07-06','CAM','Brazil','Liverpool'),(62,'201535','R. Varane','Sterman','Vreiberg','2011-07-01','RCB','France','Real Madrid'),(63,'199556','M. Verratti','barwis','Boothebie','2012-07-18','LCM','Italy','Paris Saint-Germain'),(64,'191043','Alex Sandro','noviopuente','Espinay','2015-08-21','LB','Brazil','Juventus'),(65,'190483','Douglas Costa','Duffrie','Heaviside','2018-07-01','LM','Brazil','Juventus'),(66,'189596','T. M??ller','Mardle','Zappel','2008-08-10','CAM','Germany','FC Bayern M??nchen'),(67,'189509','Thiago','explicar','Farnsworth','2013-07-14','CM','Spain','FC Bayern M??nchen'),(68,'188350','M. Reus','labro','Skala','2012-07-01','LM','Germany','Borussia Dortmund'),(69,'184432','Azpilicueta','aldines','McMeeking','2012-08-24','RB','Spain','Chelsea'),(70,'184344','L. Bonucci','Palleske','m??s cerrado','2018-08-02','RCB','Italy','Juventus'),(71,'184087','T. Alderweireld','Pliegue','Shattock','2015-07-08','RCB','Belgium','Tottenham Hotspur'),(72,'180206','M. Pjani?','Spiteri','Jaze','2016-07-01','CDM','Bosnia Herzegovina','Juventus'),(73,'177509','M. Benatia','cubos','Kirsop','2014-08-26','CB','Morocco','Juventus'),(74,'176635','M. ??zil','buenoble','o\'shirine','2013-09-02','CAM','Germany','Arsenal'),(75,'135507','Fernandinho','Bonnyson','Jannex','2013-07-01','CDM','Brazil','Manchester City'),(76,'41','Iniesta','apuntador','Cansdall','2018-07-16','LF','Spain','Vissel Kobe'),(77,'232363','M. ??kriniar','Simanek','Kleinmann','2017-07-07','LCB','Slovakia','Inter'),(78,'223848','S. Milinkovi?-Savi?','Stother','Langstone','2015-08-06','CM','Serbia','Lazio'),(79,'220834','Marco Asensio','Pasterfield','Sempre','2015-07-01','RW','Spain','Real Madrid'),(80,'216594','N. Fekir','Bust??n','Torrisi','2013-07-01','CAM','France','Olympique Lyonnais'),(81,'212831','Alisson','Puve','macsorley','2018-07-19','GK','Brazil','Liverpool'),(82,'212622','J. Kimmich','giocomuzzo','Roma','2015-07-01','RCM','Germany','FC Bayern M??nchen'),(83,'208421','Sa??l','Chieco','Franciskiewicz','2013-07-01','RCM','Spain','Atl??tico Madrid'),(84,'204485','R. Mahrez','Follos','collado','2018-07-10','RW','Algeria','Manchester City'),(85,'197445','D. Alaba','connors','Coddington','2010-02-10','LB','Austria','FC Bayern M??nchen'),(86,'193747','Koke','Murison','aprendermont','2011-01-01','LM','Spain','Atl??tico Madrid'),(87,'193301','A. Lacazette','Caminante','Corday','2017-07-05','ST','France','Arsenal'),(88,'192774','K. Manolas','Baldocci','guidera','2014-08-26','LCB','Greece','Roma'),(89,'192366','N. Otamendi','samwyse','peskett','2015-08-20','CB','Argentina','Manchester City'),(90,'189513','Parejo','guillermo','Cuajar','2011-07-01','RCM','Spain','Valencia CF'),(91,'187961','Paulinho','McElroy','Hartropp','2011-07-28','LDM','Brazil','Guangzhou Evergrande Taobao FC'),(92,'186153','W. Szcz?sny','Jenicke','Wallentin','2017-07-19','GK','Poland','Juventus'),(93,'184941','A. S??nchez','rosal','halcones','2018-01-22','RW','Chile','Manchester United'),(94,'184267','Y. Brahimi','Rampton','Marcombe','2014-07-22','LM','Algeria','FC Porto'),(95,'183907','J. Boateng','Hanshawe','betel','2011-07-14','RCB','Germany','FC Bayern M??nchen'),(96,'181872','A. Vidal','Kiddell','Pueblos','2018-08-06','CAM','Chile','FC Barcelona'),(97,'181458','I. Peri??i?','Engranaje','Ladloe','2015-09-01','LM','Croatia','Inter'),(98,'180930','E. D??eko','Jorck','bernaldo','2015-07-01','ST','Bosnia Herzegovina','Roma'),(99,'179846','S. Khedira','Iacovucci','beverstock','2015-07-01','RCM','Germany','Juventus'),(100,'179844','Diego Costa','whitloe','Adamovicz','2018-01-01','LS','Spain','Atl??tico Madrid'),(101,'178518','R. Nainggolan','Salida','Ixor','2018-07-01','CAM','Belgium','Inter'),(102,'171919','Naldo','Whittet','petirrojo','2016-07-01','CB','Brazil','FC Schalke 04'),(103,'170890','B. Matuidi','Lowten','joannidi','2017-08-18','LM','France','Juventus'),(104,'168609','Miranda','Hirche','Kennan','2017-07-01','CB','Brazil','Inter'),(105,'165153','K. Benzema','Mougenel','Haine','2009-07-09','ST','France','Real Madrid'),(106,'164169','Filipe Lu??s','Felipe','Sin miedo','2015-07-28','LB','Brazil','Atl??tico Madrid'),(107,'139720','V. Kompany','Zahor','Fattori','2008-08-22','CB','Belgium','Manchester City'),(108,'120533','Pepe','Callaway','Dahl','2017-07-04','RCB','Portugal','Be?ikta? JK'),(109,'41236','Z. Ibrahimovi?','Smuth','capl??n','2018-03-23','RS','Sweden','LA Galaxy'),(110,'220793','D. S??nchez','MacCague','Franklen','2017-08-26','RCB','Colombia','Tottenham Hotspur'),(111,'216460','J. Gim??nez','oeste','Kilgannon','2013-07-01','RCB','Uruguay','Atl??tico Madrid'),(112,'212462','Alex Telles','braywood','bawme','2016-07-13','LB','Brazil','FC Porto'),(113,'212218','A. Laporte','Montel','Cannell','2018-01-30','LCB','France','Manchester City'),(114,'212198','Bruno Fernandes','frita','Sparkwell','2017-07-01','LCM','Portugal','Sporting CP'),(115,'212190','N. S??le','Weymont','Rentar','2017-07-01','CB','Germany','FC Bayern M??nchen'),(116,'211300','A. Martial','Kemmons','Grangier','2015-09-01','LW','France','Manchester United'),(117,'211117','D. Alli','Matchett','mcgennis','2015-02-02','LCM','England','Tottenham Hotspur'),(118,'209499','Fabinho','Cromley','Yesin??n','2018-07-01','CDM','Brazil','Liverpool'),(119,'207865','Marquinhos','escofina','lanzas','2013-07-19','LDM','Brazil','Paris Saint-Germain'),(120,'207566','William Carvalho','McKoy','abundante','2018-07-13','CDM','Portugal','Real Betis'),(121,'205498','Jorginho','Tissell','C??thrae','2018-07-16','CM','Italy','Chelsea'),(122,'204970','F. Thauvin','Sucre','Ilyinykh','2017-07-01','RM','France','Olympique de Marseille'),(123,'204963','Carvajal','Aten??a','macgragh','2013-07-05','RB','Spain','Real Madrid'),(124,'202556','M. Depay','Racimo','McKew','2017-01-20','ST','Netherlands','Olympique Lyonnais'),(125,'200104','H. Son','Wenman','salnnow','2015-08-28','LM','Korea Republic','Tottenham Hotspur'),(126,'199482','A. Lopes','West-Frimley','caminante','2011-07-01','GK','Portugal','Olympique Lyonnais'),(127,'198176','S. de Vrij','Klimke','Quilligan','2018-07-01','CB','Netherlands','Inter'),(128,'198009','M. Perin','Siberry','c??clicos','2018-07-01','GK','Italy','Juventus'),(129,'193082','J. Cuadrado','tumasiano','Infierno','2015-02-02','RAM','Colombia','Juventus'),(130,'192629','Iago Aspas','Clynter','fusedale','2015-07-01','ST','Spain','RC Celta'),(131,'192563','B. Leno','haseldina','Dundin','2018-07-01','GK','Germany','Arsenal'),(132,'191202','N. Mati?','Kornes','Chiles','2017-07-31','CDM','Serbia','Manchester United'),(133,'190941','L. Hr??deck??','Ely','estennine','2018-07-01','GK','Finland','Bayer 04 Leverkusen'),(134,'190584','Illarramendi','Wagstaff','Leche','2015-08-26','RDM','Spain','Real Sociedad'),(135,'188377','K. Walker','cossey','tejones','2017-07-14','RB','England','Manchester City'),(136,'186942','I. G??ndo?an','campo','cerdo','2016-07-01','CM','Germany','Manchester City'),(137,'185020','Jos?? Callej??n','puntuable','gillilandia','2013-07-11','RM','Spain','Napoli'),(138,'183898','A. Di Mar??a','Rowbrey','Dunkley','2015-08-06','RM','Argentina','Paris Saint-Germain'),(139,'181783','M. Mand??uki?','Borr??s','kobu','2015-07-01','ST','Croatia','Juventus'),(140,'180403','Willian','Winwood','Thirlwall','2013-08-28','RW','Brazil','Chelsea'),(141,'178750','Sergio Asenjo','Hugo','Paraguas','2014-06-30','GK','Spain','Villarreal CF'),(142,'178562','E. Banega','Pellissier','Newvell','2017-07-03','CDM','Argentina','Sevilla FC'),(143,'177413','A. Witsel','kibbey','niveles','2018-08-17','LCM','Belgium','Borussia Dortmund'),(144,'177388','D. Payet','O\'Donegan','crombo','2017-01-30','CAM','France','Olympique de Marseille'),(145,'176769','Jonas','Bodle','Klemt','2014-09-12','ST','Brazil','SL Benfica'),(146,'172879','Sokratis','Galia','Valentino','2018-07-02','RCB','Greece','Arsenal'),(147,'167628','S. Ruffier','Pepineaux','Scocroft','2011-07-11','GK','France','AS Saint-??tienne'),(148,'167397','Falcao','Sem??chik','Frio','2013-07-01','RS','Colombia','AS Monaco'),(149,'163587','K. Schmeichel','lindup','Danzig','2011-06-01','GK','Denmark','Leicester City'),(150,'157481','Ra??l Albiol','Cay?? sobre','chappelow','2013-07-21','RCB','Spain','Napoli'),(151,'143076','A. G??mez','Reihm','Soloway','2014-09-02','LS','Argentina','Atalanta'),(152,'137186','A. Barzagli','Napt??n','McCarly','2011-01-01','CB','Italy','Juventus'),(153,'20775','Quaresma','Bruckental','Mitchley','2015-07-22','RM','Portugal','Be?ikta? JK'),(154,'9014','A. Robben','Hect??reas','Niesegen','2009-08-28','RM','Netherlands','FC Bayern M??nchen'),(155,'231443','O. Demb??l??','Merricks','Kellett','2017-08-28','RW','France','FC Barcelona'),(156,'230666','Gabriel Jesus','Ellerbeck','Deshon','2016-08-03','ST','Brazil','Manchester City'),(157,'230481','Ronaldo Cabrais','Fuimos','menitorp','2018-01-01','RW','Brazil','Gr??mio'),(158,'230375','Josu?? Chiamulera','Sedgefield','Ca??edo','2018-01-01','LCB','Brazil','Gr??mio'),(159,'230294','Louri Beretta','P??gina','Olliff','2018-01-01','ST','Brazil','Atl??tico Mineiro'),(160,'225850','P. Kimpembe','girodin','Sibthorp','2015-07-01','LCB','France','Paris Saint-Germain'),(161,'220971','N. Ke??ta','Mordaunt','haselgrove','2018-07-01','CM','Guinea','Liverpool'),(162,'219683','C. Tolisso','Gregoletti','Fara??n','2017-07-01','CM','France','FC Bayern M??nchen'),(163,'213565','T. Lemar','MacFarlane','Hanington','2018-07-01','LM','France','Atl??tico Madrid'),(164,'213345','K. Coman','Toca en','Colclough','2015-08-30','LM','France','FC Bayern M??nchen'),(165,'213331','J. Tah','aston','maullido','2015-07-16','CB','Germany','Bayer 04 Leverkusen'),(166,'212523','Anderson Talisca','Goulbourn','Harkin','2011-07-28','CAM','Brazil','Guangzhou Evergrande Taobao FC'),(167,'212188','T. Werner','espinilla','Habbes','2016-07-01','RW','Germany','RB Leipzig'),(168,'210008','A. Rabiot','Crookes','Barbosa','2012-07-01','CM','France','Paris Saint-Germain'),(169,'209658','L. Goretzka','chino','Ferrarese','2018-07-01','CM','Germany','FC Bayern M??nchen'),(170,'208808','Q. Promes','Cranefield','cruceta','2018-08-31','RM','Netherlands','Sevilla FC'),(171,'208670','H. Ziyech','Wyndham','Yeldham','2016-08-30','RAM','Morocco','Ajax'),(172,'208618','Lucas V??zquez','Dulce','O\'Doogan','2015-07-02','RW','Spain','Real Madrid'),(173,'208418','Y. Carrasco','Nortunen','Beefon','2018-02-26','LM','Belgium','Dalian YiFang FC'),(174,'208093','Gerard Moreno','Villa','Challiner','2018-07-02','LS','Spain','Villarreal CF'),(175,'207863','Felipe','lanzas','Goodrich','2016-07-01','RCB','Brazil','FC Porto'),(176,'207410','M. Kova?i?','Gitsham','Pigford','2011-07-28','LCM','Croatia','Chelsea'),(177,'206585','Kepa','hassell','Edmundo','2018-08-08','GK','Spain','Chelsea'),(178,'206545','Manu Trigueros','Chillido','Sigfrido','2011-07-01','RCM','Spain','Villarreal CF'),(179,'206113','S. Gnabry','Scollick','Rizzello','2017-07-01','ST','Germany','FC Bayern M??nchen'),(180,'204935','J. Pickford','Tacey','gusanos','2017-06-15','GK','England','Everton'),(181,'204639','S. Savi?','Furnell','Brimner','2015-07-20','CB','Montenegro','Atl??tico Madrid'),(182,'203574','J. Stones','Nat??n','simonita','2016-08-09','RCB','England','Manchester City'),(183,'202651','Suso','Scryne','sedcole','2015-01-17','RW','Spain','Milan');
/*!40000 ALTER TABLE `jugador` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t1` BEFORE INSERT ON `jugador` FOR EACH ROW begin 
	declare salida varchar(100);
	declare numJugadores int;
	
	select count(j.Cod_Jugador) into numJugadores 
	from jugador j inner join equipo e 
	on j.EQUIPO_Nombre_Equipo =e.Nombre_Equipo 
	where j.EQUIPO_Nombre_Equipo=new.EQUIPO_Nombre_Equipo 
	group by e.Nombre_Equipo ;

	if (numJugadores>=15) then 
		set salida =concat(new.EQUIPO_Nombre_Equipo,
		' tiene ya 15 jugadores en su plantilla');
		signal sqlstate '45000' set MESSAGE_TEXT=salida ;
	end if;
	
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `t2` BEFORE DELETE ON `jugador` FOR EACH ROW begin 
	
	insert into jugadores_retirados values(old.Cod_Jugador ,old.DNI,old.Nombre,
		old.Apellido1,old.Apellido2,old.Fecha_de_nacimiento ,old.Posici??n,
		old.Nacionalidad ,old.EQUIPO_Nombre_Equipo);
	
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `paga`
--

DROP TABLE IF EXISTS `paga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paga` (
  `Fecha` date NOT NULL,
  `Cantidad` int NOT NULL,
  `REPRESENTANTE_Cod_Representante` int NOT NULL,
  `EQUIPO_ARBITRAL_Cod_Juez_de_mesa` int NOT NULL,
  PRIMARY KEY (`REPRESENTANTE_Cod_Representante`,`EQUIPO_ARBITRAL_Cod_Juez_de_mesa`),
  KEY `fk_ARBITRO_has_REPRESENTANTE_REPRESENTANTE1_idx` (`REPRESENTANTE_Cod_Representante`),
  KEY `fk_PAGA_EQUIPO_ARBITRAL1_idx` (`EQUIPO_ARBITRAL_Cod_Juez_de_mesa`),
  CONSTRAINT `fk_ARBITRO_has_REPRESENTANTE_REPRESENTANTE1` FOREIGN KEY (`REPRESENTANTE_Cod_Representante`) REFERENCES `representante` (`Cod_Representante`),
  CONSTRAINT `fk_PAGA_EQUIPO_ARBITRAL1` FOREIGN KEY (`EQUIPO_ARBITRAL_Cod_Juez_de_mesa`) REFERENCES `equipo_arbitral` (`Cod_Equipo_Arbitral`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paga`
--

LOCK TABLES `paga` WRITE;
/*!40000 ALTER TABLE `paga` DISABLE KEYS */;
INSERT INTO `paga` VALUES ('2020-11-30',200,0,0),('2021-01-07',111,1,1),('2021-02-02',130,2,2),('2021-02-28',100,3,3),('2020-11-21',700,5,2),('2020-11-30',375,27,4);
/*!40000 ALTER TABLE `paga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partido`
--

DROP TABLE IF EXISTS `partido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partido` (
  `Cod_Partido` int unsigned NOT NULL,
  `Fecha_del_partido` date NOT NULL,
  `PISTA_Zona_Pista` varchar(45) NOT NULL,
  `PISTA_N??mero_de_pista` int NOT NULL,
  `EQUIPO_Nombre_Equipo` varchar(45) NOT NULL,
  `EQUIPO_Nombre_Equipo1` varchar(45) NOT NULL,
  `Arbitro` int NOT NULL,
  `Juez_de_Mesa` int NOT NULL,
  `N??Faltas_1??Parte_equipo_A` int DEFAULT NULL,
  `N??Faltas_1??Parte_equipo_B` int DEFAULT NULL,
  `N??Faltas_2??Parte_equipo_A` int DEFAULT NULL,
  `N??Faltas_2??Parte_equipo_B` int DEFAULT NULL,
  `Resultado` varchar(45) DEFAULT NULL,
  `Equipo_Ganador` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Cod_Partido`),
  KEY `fk_PARTIDO_PISTA1_idx` (`PISTA_Zona_Pista`,`PISTA_N??mero_de_pista`),
  KEY `fk_PARTIDO_EQUIPO1_idx` (`EQUIPO_Nombre_Equipo`),
  KEY `fk_PARTIDO_EQUIPO2_idx` (`EQUIPO_Nombre_Equipo1`),
  KEY `fk_PARTIDO_JUEZ_DE_MESA1_idx` (`Arbitro`),
  KEY `fk_PARTIDO_EQUIPO_ARBITRAL1_idx` (`Juez_de_Mesa`),
  CONSTRAINT `fk_PARTIDO_EQUIPO1` FOREIGN KEY (`EQUIPO_Nombre_Equipo`) REFERENCES `equipo` (`Nombre_Equipo`),
  CONSTRAINT `fk_PARTIDO_EQUIPO2` FOREIGN KEY (`EQUIPO_Nombre_Equipo1`) REFERENCES `equipo` (`Nombre_Equipo`),
  CONSTRAINT `fk_PARTIDO_EQUIPO_ARBITRAL1` FOREIGN KEY (`Juez_de_Mesa`) REFERENCES `equipo_arbitral` (`Cod_Equipo_Arbitral`),
  CONSTRAINT `fk_PARTIDO_JUEZ_DE_MESA1` FOREIGN KEY (`Arbitro`) REFERENCES `equipo_arbitral` (`Cod_Equipo_Arbitral`),
  CONSTRAINT `fk_PARTIDO_PISTA1` FOREIGN KEY (`PISTA_Zona_Pista`, `PISTA_N??mero_de_pista`) REFERENCES `pista` (`Zona_Pista`, `N??mero_de_pista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partido`
--

LOCK TABLES `partido` WRITE;
/*!40000 ALTER TABLE `partido` DISABLE KEYS */;
INSERT INTO `partido` VALUES (0,'2020-11-30','CD. ANTONIO ALVAREZ',1,'FC Barcelona','Valencia CF',0,1,5,3,4,1,'3-1','1'),(1,'2020-11-30','CD. ANTONIO ALVAREZ',1,'Juventus','Guangzhou Evergrande Taobao FC',3,3,5,3,4,1,'1-2','2'),(2,'2021-01-07','CD. ANTONIO ALVAREZ',2,'Manchester City','FC Porto',4,5,5,3,4,1,'3-0','1'),(3,'2021-01-07','CD. ANTONIO ALVAREZ',2,'Manchester United','FC Schalke 04',0,2,5,3,4,1,'4-0','1'),(4,'2021-02-02','CD. VEGA DE TRIANA FS',1,'Chelsea','Be?ikta? JK',4,1,5,3,4,1,'3-2','1'),(5,'2021-02-02','CD. VEGA DE TRIANA FS',1,'Real Madrid','LA Galaxy',0,3,5,3,4,1,'1-1','x'),(6,'2021-02-28','CD. VEGA DE TRIANA FS',2,'Real Betis','Paris Saint-Germain',3,5,5,3,4,1,'2-3','2'),(7,'2021-02-28','CD. VEGA DE TRIANA FS',2,'Liverpool','Roma',4,1,5,3,4,1,'4-1','1'),(8,'2021-11-22','CD. ANTONIO ALVAREZ',1,'Manchester United','Valencia CF',0,1,2,3,2,3,'3-0','1'),(9,'2021-04-04','CD. ANTONIO ALVAREZ',2,'Chelsea','Guangzhou Evergrande Taobao FC',3,3,3,2,3,2,'1-1','x'),(10,'2021-06-13','CD. ANTONIO ALVAREZ',3,'Real Madrid','FC Porto',4,5,4,1,4,1,'2-1','1'),(11,'2022-02-11','CD. ANTONIO ALVAREZ',4,'Real Betis','FC Barcelona',0,2,1,2,1,2,'3-0','1'),(12,'2021-12-13','CD. VEGA DE TRIANA FS',1,'Liverpool','Juventus',4,1,5,5,5,5,'0-0','x'),(13,'2022-01-11','CD. VEGA DE TRIANA FS',2,'Guangzhou Evergrande Taobao FC','Manchester City',0,3,4,4,4,4,'1-0','1'),(14,'2021-12-07','CD. VEGA DE TRIANA FS',3,'Ajax','Inter',3,5,2,1,2,1,'2-5','2'),(15,'2021-04-22','CD. VEGA DE TRIANA FS',4,'Arsenal','Juventus',4,1,1,2,1,2,'5-0','1'),(16,'2021-04-16','CD. ANTONIO ALVAREZ',1,'AS Monaco','LA Galaxy',0,1,1,1,1,1,'1-1','x'),(17,'2021-09-02','CD. ANTONIO ALVAREZ',2,'AS Saint-??tienne','Lazio',3,3,2,5,2,5,'2-1','1'),(18,'2021-08-12','CD. ANTONIO ALVAREZ',3,'Atalanta','Leicester City',4,5,5,3,4,1,'4-1','1'),(19,'2022-01-28','CD. ANTONIO ALVAREZ',4,'Atl??tico Madrid','Liverpool',0,2,5,3,4,1,'5-5','x'),(20,'2021-11-16','CD. VEGA DE TRIANA FS',1,'Atl??tico Mineiro','Manchester City',4,1,5,3,4,1,'6-2','1'),(21,'2021-08-31','CD. VEGA DE TRIANA FS',2,'Bayer 04 Leverkusen','Manchester United',0,3,5,3,4,1,'1-0','1'),(22,'2021-06-16','CD. VEGA DE TRIANA FS',3,'Be?ikta? JK','Milan',3,5,5,3,4,1,'2-8','2'),(23,'2021-09-07','CD. VEGA DE TRIANA FS',4,'Borussia Dortmund','Napoli',4,1,5,3,4,1,'1-4','2'),(24,'2021-09-24','CD. ANTONIO ALVAREZ',1,'Chelsea','Olympique de Marseille',0,1,5,3,4,1,'2-5','2'),(25,'2021-05-02','CD. ANTONIO ALVAREZ',2,'Dalian YiFang FC','Olympique Lyonnais',3,3,5,3,4,1,'1-1','x'),(26,'2021-08-15','CD. ANTONIO ALVAREZ',3,'Everton','Paris Saint-Germain',4,5,2,3,2,3,'0-0','x'),(27,'2021-04-25','CD. ANTONIO ALVAREZ',4,'FC Barcelona','RB Leipzig',0,2,3,2,3,2,'1-2','2'),(28,'2022-02-24','CD. VEGA DE TRIANA FS',1,'FC Bayern M??nchen','RC Celta',4,1,4,1,4,1,'1-4','2'),(29,'2021-05-10','CD. VEGA DE TRIANA FS',2,'FC Porto','Real Betis',0,3,1,2,1,2,'4-4','x'),(30,'2021-08-12','CD. VEGA DE TRIANA FS',3,'FC Schalke 04','Real Madrid',3,5,5,5,5,5,'2-1','1'),(31,'2021-10-29','CD. VEGA DE TRIANA FS',4,'Gr??mio','Real Sociedad',4,1,4,4,4,4,'1-5','2'),(32,'2021-09-23','CD. ANTONIO ALVAREZ',1,'Guangzhou Evergrande Taobao FC','Roma',0,1,2,1,2,1,'1-1','x'),(33,'2021-12-24','CD. ANTONIO ALVAREZ',2,'Real Betis','Sevilla FC',3,3,1,2,1,2,'0-5','2'),(34,'2022-01-06','CD. ANTONIO ALVAREZ',3,'Villarreal CF','SL Benfica',4,5,1,1,1,1,'0-2','2'),(35,'2021-12-27','CD. ANTONIO ALVAREZ',4,'Vissel Kobe','Sporting CP',0,2,2,5,2,5,'1-4','2'),(36,'2021-12-27','CD. VEGA DE TRIANA FS',1,'Real Betis','Tottenham Hotspur',4,1,5,3,4,1,'1-1','x'),(37,'2021-05-21','CD. VEGA DE TRIANA FS',2,'Valencia CF','Be?ikta? JK',0,3,5,3,4,1,'2-4','2'),(38,'2021-05-17','CD. VEGA DE TRIANA FS',3,'Guangzhou Evergrande Taobao FC','Atalanta',3,5,5,3,4,1,'1-1','x'),(39,'2022-03-16','CD. VEGA DE TRIANA FS',4,'FC Porto','Atl??tico Madrid',4,1,5,3,4,1,'0-0','x'),(40,'2021-07-04','CD. ANTONIO ALVAREZ',1,'FC Barcelona','Atl??tico Mineiro',0,1,5,3,4,1,'0-4','2'),(41,'2022-03-09','CD. ANTONIO ALVAREZ',2,'Juventus','Bayer 04 Leverkusen',3,3,5,3,4,1,'1-1','x'),(42,'2021-07-27','CD. ANTONIO ALVAREZ',3,'Manchester City','Be?ikta? JK',4,5,5,3,4,1,'2-2','x'),(43,'2021-09-07','CD. ANTONIO ALVAREZ',4,'Inter','Borussia Dortmund',0,2,5,3,4,1,'3-3','x'),(44,'2021-06-01','CD. VEGA DE TRIANA FS',1,'Juventus','Chelsea',4,1,2,3,2,3,'5-3','1'),(45,'2021-09-26','CD. VEGA DE TRIANA FS',2,'LA Galaxy','Dalian YiFang FC',0,3,3,2,3,2,'2-1','1'),(46,'2021-06-11','CD. VEGA DE TRIANA FS',3,'Lazio','Everton',3,5,4,1,4,1,'6-2','1'),(47,'2021-04-16','CD. VEGA DE TRIANA FS',4,'Gr??mio','FC Barcelona',4,1,1,2,1,2,'2-4','2'),(48,'2022-02-24','CD. ANTONIO ALVAREZ',1,'Guangzhou Evergrande Taobao FC','FC Bayern M??nchen',0,1,5,5,5,5,'3-3','x'),(49,'2021-07-30','CD. ANTONIO ALVAREZ',2,'Real Betis','FC Porto',3,3,4,4,4,4,'1-6','2');
/*!40000 ALTER TABLE `partido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pista`
--

DROP TABLE IF EXISTS `pista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pista` (
  `Zona_Pista` varchar(45) NOT NULL,
  `N??mero_de_pista` int NOT NULL,
  PRIMARY KEY (`Zona_Pista`,`N??mero_de_pista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pista`
--

LOCK TABLES `pista` WRITE;
/*!40000 ALTER TABLE `pista` DISABLE KEYS */;
INSERT INTO `pista` VALUES ('CD. ANTONIO ALVAREZ',1),('CD. ANTONIO ALVAREZ',2),('CD. ANTONIO ALVAREZ',3),('CD. ANTONIO ALVAREZ',4),('CD. VEGA DE TRIANA FS',1),('CD. VEGA DE TRIANA FS',2),('CD. VEGA DE TRIANA FS',3),('CD. VEGA DE TRIANA FS',4);
/*!40000 ALTER TABLE `pista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `representante`
--

DROP TABLE IF EXISTS `representante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `representante` (
  `DNI_Representante` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido1` varchar(45) NOT NULL,
  `Apellido2` varchar(45) NOT NULL,
  `Fecha_de_nacimiento` date NOT NULL,
  `EQUIPO_Nombre_Equipo` varchar(45) NOT NULL,
  `Cod_Representante` int NOT NULL,
  PRIMARY KEY (`Cod_Representante`),
  KEY `fk_REPRESENTANTE_EQUIPO1_idx` (`EQUIPO_Nombre_Equipo`),
  CONSTRAINT `fk_REPRESENTANTE_EQUIPO1` FOREIGN KEY (`EQUIPO_Nombre_Equipo`) REFERENCES `equipo` (`Nombre_Equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `representante`
--

LOCK TABLES `representante` WRITE;
/*!40000 ALTER TABLE `representante` DISABLE KEYS */;
INSERT INTO `representante` VALUES ('28812230B','Mamerto','Gal??n','Zabala','2022-03-31','FC Barcelona',0),('59609290A','grata','Mas t','McConigal','2018-07-10','Juventus',1),('40000192B','darda','Lissemore','Eymer','2017-08-03','Paris Saint-Germain',2),('44647681A','Shela','Laylandia','Heinle','2011-07-01','Manchester United',3),('80479609A','kaitlin','Allberry','Pittham','2015-08-30','Manchester City',4),('50450001B','De ingenio','Domenichini','Juden','2012-07-01','Chelsea',5),('62154727B','Tull','Endersby','aluminio','2012-08-01','Real Madrid',6),('02630573B','Westbrook','Disertar','ni??o','2014-07-11','Atl??tico Madrid',7),('57465267A','rosalina','Shapira','Van der Kruys','2005-08-01','FC Bayern M??nchen',8),('50981604A','Orville','Kensley','Bajrushin','2014-07-16','Tottenham Hotspur',9),('71085790B','Corbete','Ethelstone','Skamell','2014-07-01','Liverpool',10),('58905016A','carroll','gatsby','Whittleton','2014-07-17','Napoli',11),('54136005A','Zola','Piecha','klimas','2010-08-04','Arsenal',12),('17902682B','Alex??i','Pariente','Ohrt','2010-07-14','Milan',13),('73697842A','Ra??l','Dake','apesta','2016-07-16','Inter',14),('82114253B','Pete','Sherrett','Chism??n','2015-07-01','Lazio',15),('49800919B','Curtice','manzanilla','Alvarado','2010-07-01','Borussia Dortmund',16),('88241102B','Bryanty','pillador','Andrag','2014-07-28','Vissel Kobe',17),('15683189B','Olivette','Gilkes','Biglin','2014-07-01','Olympique Lyonnais',18),('75804162A','Gifford','Stratt??n','Pettersen','2018-08-09','Roma',19),('18412576A','abril','fulbrook','Abramovi??','2008-09-01','Valencia CF',20),('73320609B','Tammara','Ebbin','Verecker','2013-07-16','Guangzhou Evergrande Taobao FC',21),('94268918B','Tawsha','Widup','Cicetti','2011-07-01','FC Porto',22),('52792576B','Branquia','doutuch','Dewhurst','2011-07-28','FC Schalke 04',23),('18061035A','Vinnie','Guisler','A salvo','2005-07-01','Be?ikta? JK',24),('52388102A','yolanda','Astupe??as','Yurevich','2018-07-01','LA Galaxy',25),('46297175B','Vendaval','Valles','Bussel','2017-07-01','Sporting CP',26),('13472193B','Hice','Yakovich','McClaughlin','2013-07-11','Real Betis',27),('04012689B','Gibb','Purcell','Hasney','2011-07-26','Olympique de Marseille',28),('19597228B','Jojo','Mendenhall','negus','2010-07-01','RC Celta',29),('63551410A','Fernando','esproson','Esparza','2013-07-03','Bayer 04 Leverkusen',30),('43609502B','Helga','Naisbitt','Jirousek','2013-08-30','Real Sociedad',31),('44095258A','Cuenta','Norgate','Safhill','2018-01-06','Villarreal CF',32);
/*!40000 ALTER TABLE `representante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'liga'
--
/*!50003 DROP FUNCTION IF EXISTS `f1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `f1`(Cod_Jugador int) RETURNS varchar(100) CHARSET utf8mb3
    DETERMINISTIC
begin
	
	declare total varchar(100);

	set total=(select count(e.tipo) 
				from jugador j inner join estadistica e
				on j.Cod_Jugador=e.Cod_Jugador
				where e.tipo like 'gol' and j.Cod_Jugador=Cod_Jugador
				group by e.tipo);
			
	return total;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `f2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `f2`(codigo int) RETURNS tinyint(1)
    DETERMINISTIC
begin
	
	declare fecha int;
	
	set fecha= (select count(*)  from representante r  
	where month(r.Fecha_de_nacimiento)=month(curdate()) and 
	day(r.Fecha_de_nacimiento)=day(curdate()) and r.Cod_Representante=codigo);

	if (fecha<>0) then 
		return true;
	else 
		return false;
	end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p1`(Cod_Jugador int)
begin 
	declare goles int ;

	select f1(Cod_Jugador) into goles;
	
	select concat('Dni: ',j.DNI,' ','Nombre: ',j.Nombre,' ',
		'Apellidos: ',j.Apellido1,', ',j.Apellido2), goles  
	from jugador j 
	where j.Cod_Jugador =Cod_Jugador ;
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p2`()
begin 
	update paga p
	inner join representante r 
	on r.Cod_Representante =p.REPRESENTANTE_Cod_Representante 
	inner join equipo e 
	on e.Nombre_Equipo =r.EQUIPO_Nombre_Equipo 
	set p.Cantidad= p.Cantidad *0.75
	where e.Nombre_Equipo like 'Real Betis';

	update paga p
	inner join representante r 
	on r.Cod_Representante =p.REPRESENTANTE_Cod_Representante 
	inner join equipo e 
	on e.Nombre_Equipo =r.EQUIPO_Nombre_Equipo 
	set p.Cantidad= p.Cantidad *0.70
	where e.Nombre_Equipo like 'Chelsea';

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `p3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p3`()
begin 
	declare salida varchar(1000) default '======CLASIFICACI??N IMD SEVILLA 2021-2022======\n';
	declare n integer default 1;
	declare equipo varchar(45);
	declare puntos integer;
	declare done bool default FALSE;

	declare c1 cursor for
		select e.Nombre_Equipo, (count(e2.Equipo_Ganador_o_Empate)*3) as 'Puntos'
			from partido p inner join estadistica e2 
			on p.Cod_Partido =e2.Cod_Partido 
			inner join equipo e
			on e.Nombre_Equipo =e2.Equipo_Ganador_o_Empate
			group by e2.Equipo_Ganador_o_Empate 
			order by count(e2.Equipo_Ganador_o_Empate)*3 desc;
		
	declare continue HANDLER FOR NOT FOUND SET done = TRUE;

	open c1;
	while (NOT done) do
    	fetch c1 into equipo, puntos  ;
    	if (NOT done) then
        	set salida=concat(salida,n,'. ',equipo,'-',puntos,'\n');
        	set n=n+1;
    	end if;
	end while;
	close c1;

	select salida ;
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `consulta_4`
--

/*!50001 DROP VIEW IF EXISTS `consulta_4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta_4` AS select upper(concat(`j`.`Nombre`,' ',`j`.`Apellido1`,' ',`j`.`Apellido2`)) AS `Jugadores`,`j`.`Fecha_de_nacimiento` AS `Fecha_de_nacimiento` from `jugador` `j` where ((`j`.`Fecha_de_nacimiento` >= '2010-01-01') and (`j`.`Fecha_de_nacimiento` <= '2015-01-01')) order by `j`.`Fecha_de_nacimiento` desc */;
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

-- Dump completed on 2022-05-20 12:28:10
