CREATE DATABASE  IF NOT EXISTS `los_artesanos_` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `los_artesanos_`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: los_artesanos_
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Temporary view structure for view `artesanos_por_region`
--

DROP TABLE IF EXISTS `artesanos_por_region`;
/*!50001 DROP VIEW IF EXISTS `artesanos_por_region`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `artesanos_por_region` AS SELECT 
 1 AS `Region de Artesanos`,
 1 AS `Total_Artesanos`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `auditoria`
--

DROP TABLE IF EXISTS `auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria` (
  `ID_Auditoria` int NOT NULL AUTO_INCREMENT,
  `Accion` varchar(50) DEFAULT NULL,
  `Usuario` varchar(20) DEFAULT NULL,
  `Fecha_Hora` datetime DEFAULT NULL,
  `Observacion` text,
  `Campo_Anterior` varchar(50) DEFAULT NULL,
  `Campo_Nuevo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
INSERT INTO `auditoria` VALUES (1,'INSERT','root@localhost','2024-05-13 01:47:01','Se inserto correctamente en tabla venta',NULL,NULL),(2,'INSERT','root@localhost','2024-05-13 01:50:08','Se inserto correctamente en tabla venta',NULL,NULL),(3,'INSERT','root@localhost','2024-05-13 01:51:26','Se inserto correctamente en tabla venta',NULL,NULL),(4,'DELETE','root@localhost','2024-05-13 00:00:00','Se elimino correctamente en la tabla venta','501',NULL),(5,'DELETE','root@localhost','2024-05-13 00:00:00','Se elimino correctamente en la tabla venta','502',NULL),(6,'DELETE','root@localhost','2024-05-13 00:00:00','Se elimino correctamente en la tabla venta','503',NULL),(7,'INSERT','root@localhost','2024-05-13 02:04:49','Se inserto correctamente en tabla venta',NULL,NULL);
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ciudad_de_artesanos`
--

DROP TABLE IF EXISTS `ciudad_de_artesanos`;
/*!50001 DROP VIEW IF EXISTS `ciudad_de_artesanos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ciudad_de_artesanos` AS SELECT 
 1 AS `Ciudad de Artesanos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `largo_del_nombre_del_producto`
--

DROP TABLE IF EXISTS `largo_del_nombre_del_producto`;
/*!50001 DROP VIEW IF EXISTS `largo_del_nombre_del_producto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `largo_del_nombre_del_producto` AS SELECT 
 1 AS `Largo Nombre Producto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `nombre_en_mayuscula_del_producto`
--

DROP TABLE IF EXISTS `nombre_en_mayuscula_del_producto`;
/*!50001 DROP VIEW IF EXISTS `nombre_en_mayuscula_del_producto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nombre_en_mayuscula_del_producto` AS SELECT 
 1 AS `Nombre Producto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `nombre_en_minuscula_del_producto`
--

DROP TABLE IF EXISTS `nombre_en_minuscula_del_producto`;
/*!50001 DROP VIEW IF EXISTS `nombre_en_minuscula_del_producto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nombre_en_minuscula_del_producto` AS SELECT 
 1 AS `Nombre Producto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `numero_de_artesanos`
--

DROP TABLE IF EXISTS `numero_de_artesanos`;
/*!50001 DROP VIEW IF EXISTS `numero_de_artesanos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `numero_de_artesanos` AS SELECT 
 1 AS `Cantidad de Artesanos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `productos_por_categoria`
--

DROP TABLE IF EXISTS `productos_por_categoria`;
/*!50001 DROP VIEW IF EXISTS `productos_por_categoria`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productos_por_categoria` AS SELECT 
 1 AS `Nombre_Cat`,
 1 AS `TotalProductos`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tabla_artesanos`
--

DROP TABLE IF EXISTS `tabla_artesanos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_artesanos` (
  `ID_Art` int NOT NULL AUTO_INCREMENT,
  `Nombre_Art` varchar(100) DEFAULT NULL,
  `Apellido_Art` varchar(100) DEFAULT NULL,
  `Calle_Art` varchar(50) DEFAULT NULL,
  `Numero_Art` varchar(50) DEFAULT NULL,
  `Codigo_Postal_Art` varchar(50) DEFAULT NULL,
  `Comuna_Art` varchar(100) DEFAULT NULL,
  `Region_Art` varchar(100) DEFAULT NULL,
  `Ciudad_Art` varchar(100) DEFAULT NULL,
  `Telefono_Art` varchar(100) DEFAULT NULL,
  `Email_Art` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_Art`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_artesanos`
--

LOCK TABLES `tabla_artesanos` WRITE;
/*!40000 ALTER TABLE `tabla_artesanos` DISABLE KEYS */;
INSERT INTO `tabla_artesanos` VALUES (1,'Florentia','Island','Sachtjen','7','33705',NULL,'Florida','Saint Petersburg','81325350','fisland0@mozilla.com'),(2,'Avrom','Gornall','Bunting','267','32220',NULL,'Florida','Jacksonville','90420936','agornall1@nature.com'),(3,'Helge','Ferrey','Grasskamp','773','95818',NULL,'California','Sacramento','91616661','hferrey2@hao123.com'),(4,'Coraline','Le Brom','Sage','48186','30340',NULL,'Georgia','Atlanta','77053706','clebrom3@theatlantic.com'),(5,'Hamilton','Foat','Melvin','332','95113',NULL,'California','San Jose','65021599','hfoat4@msn.com'),(6,'Jessica','Guillain','Lerdahl','2','92710',NULL,'California','Irvine','71443026','jguillain5@ted.com'),(7,'Corenda','Wase','4th','5','27264',NULL,'North Carolina','High Point','33624345','cwase6@free.fr'),(8,'Emmi','Waldron','Sutherland','99','33320',NULL,'Florida','Fort Lauderdale','75469811','ewaldron7@about.com'),(9,'Charlean','Fri','Park Meadow','3','63104',NULL,'Missouri','Saint Louis','31418136','cfri8@topsy.com'),(10,'Ber','Blindt','Randy','35','20520',NULL,'District of Columbia','Washington','20229847','bblindt9@wired.com'),(11,'Thayne','Inderwick','Cottonwood','86156','45243',NULL,'Ohio','Cincinnati','51326837','tinderwicka@google.fr'),(12,'Chev','Halligan','Waubesa','4428','93111',NULL,'California','Santa Barbara','70283560','challiganb@sakura.ne.jp'),(13,'Alan','Eason','Emmet','34','77223',NULL,'Texas','Houston','71382972','aeasonc@discuz.net'),(14,'Hussein','Domokos','Dawn','657','10131',NULL,'New York','New York City','21271320','hdomokosd@walmart.com'),(15,'Jakob','Assel','Clemons','706','48335',NULL,'Michigan','Farmington','24880148','jassele@foxnews.com'),(16,'Jocko','Cartman','Prentice','38','64054',NULL,'Missouri','Independence','81617876','jcartmanf@icq.com'),(17,'Lina','Waples','Dixon','43525','25709',NULL,'West Virginia','Huntington','30496641','lwaplesg@artisteer.com'),(18,'Andrea','Ticksall','Schmedeman','175','76162',NULL,'Texas','Fort Worth','68283585','aticksallh@tripod.com'),(19,'Hobey','Eilles','Cordelia','95','78044',NULL,'Texas','Laredo','95668452','heillesi@ehow.com'),(20,'Johanna','Luetkemeyers','Maple Wood','2369','77010',NULL,'Texas','Houston','83261741','jluetkemeyersj@sphinn.com'),(21,'Antony','Desantis','Doe Crossing','815','98185',NULL,'Washington','Seattle','20672715','adesantisk@telegraph.co.uk'),(22,'Lanae','Eplett','Namekagon','76','93709',NULL,'California','Fresno','55922906','leplettl@360.cn'),(23,'Alikee','Shepley','Jackson','89','22156',NULL,'Virginia','Springfield','57152062','ashepleym@google.com.hk'),(24,'Dana','Tunnicliffe','Forster','9411','83206',NULL,'Idaho','Pocatello','20867695','dtunnicliffen@adobe.com'),(25,'Riordan','Shipman','Monument','22248','85732',NULL,'Arizona','Tucson','52048942','rshipmano@constantcontact.com'),(26,'Geno','Bygreaves','Straubel','785','25709',NULL,'West Virginia','Huntington','30428344','gbygreavesp@wordpress.com'),(27,'Kendrick','Gladdis','Hallows','96530','21705',NULL,'Maryland','Frederick','24058926','kgladdisq@yandex.ru'),(28,'Bibbie','Aucoate','Rockefeller','3','6160',NULL,'Connecticut','Hartford','86038295','baucoater@chronoengine.com'),(29,'Flore','Binney','Carey','5753','7305',NULL,'New Jersey','Jersey City','20146852','fbinneys@telegraph.co.uk'),(30,'Hannie','Houlton','Beilfuss','6008','79405',NULL,'Texas','Lubbock','80619567','hhoultont@icio.us'),(31,'Ryann','Eivers','Elka','9357','83722',NULL,'Idaho','Boise','20859533','reiversu@ebay.com'),(32,'Alaine','Gerasch','Sugar','63','87592',NULL,'New Mexico','Santa Fe','50552681','ageraschv@intel.com'),(33,'Christos','Cunnah','Reinke','19','82007',NULL,'Wyoming','Cheyenne','30788393','ccunnahw@wordpress.com'),(34,'Jan','Gisborne','Dennis','2','80310',NULL,'Colorado','Boulder','30326119','jgisbornex@163.com'),(35,'Natalee','Dewick','Shoshone','96','77040',NULL,'Texas','Houston','28136719','ndewicky@infoseek.co.jp'),(36,'Tessie','Manhare','Dixon','12','78789',NULL,'Texas','Austin','51274409','tmanharez@pcworld.com'),(37,'Rozina','Chitham','Roth','9456','61629',NULL,'Illinois','Peoria','30963221','rchitham10@sakura.ne.jp'),(38,'Toinette','Suttaby','Dovetail','4','55188',NULL,'Minnesota','Saint Paul','65162832','tsuttaby11@w3.org'),(39,'Timothy','Creane','Claremont','89286','95813',NULL,'California','Sacramento','91654817','tcreane12@independent.co.uk'),(40,'Milton','Gramer','Buena Vista','12667','32123',NULL,'Florida','Daytona Beach','38668402','mgramer13@bluehost.com'),(41,'Isahella','Gowanlock','Bluejay','748','92145',NULL,'California','San Diego','85836629','igowanlock14@myspace.com'),(42,'Audrey','Potbury','Ohio','8','35487',NULL,'Alabama','Tuscaloosa','20525155','apotbury15@lycos.com'),(43,'Allx','Lovemore','Onsgard','51','75397',NULL,'Texas','Dallas','21411677','alovemore16@bloglines.com'),(44,'Karlene','Pizzey','Fisk','52','27116',NULL,'North Carolina','Winston Salem','33610875','kpizzey17@barnesandnoble.com'),(45,'Rudolfo','Zelland','Michigan','1950','32813',NULL,'Florida','Orlando','32146332','rzelland18@lulu.com');
/*!40000 ALTER TABLE `tabla_artesanos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_boleta`
--

DROP TABLE IF EXISTS `tabla_boleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_boleta` (
  `ID_Boleta` int NOT NULL AUTO_INCREMENT,
  `ID_Vta` mediumint NOT NULL,
  `ID_Prod` int DEFAULT NULL,
  `Precio_Prod` double DEFAULT NULL,
  `Unidad_Prod` tinyint DEFAULT NULL,
  PRIMARY KEY (`ID_Boleta`),
  KEY `FK_BOLETA_PRODUCTO` (`ID_Prod`),
  KEY `FK_BOLETA_VTA` (`ID_Vta`),
  CONSTRAINT `FK_BOLETA_PRODUCTO` FOREIGN KEY (`ID_Prod`) REFERENCES `tabla_productos` (`ID_Prod`),
  CONSTRAINT `FK_BOLETA_VTA` FOREIGN KEY (`ID_Vta`) REFERENCES `tabla_venta` (`ID_Vta`)
) ENGINE=InnoDB AUTO_INCREMENT=1859 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_boleta`
--

LOCK TABLES `tabla_boleta` WRITE;
/*!40000 ALTER TABLE `tabla_boleta` DISABLE KEYS */;
INSERT INTO `tabla_boleta` VALUES (1000,100,53,56,14),(1001,100,11,57,7),(1002,101,91,41,18),(1003,101,91,41,15),(1004,102,75,34,4),(1005,103,87,53,3),(1006,103,5,51,15),(1007,103,64,33,11),(1008,104,90,54,14),(1009,105,15,25,6),(1010,106,51,40,4),(1011,106,100,42,1),(1012,107,33,33,18),(1013,107,29,22,5),(1014,108,4,10,11),(1015,109,37,16,1),(1016,109,104,60,19),(1017,109,22,41,4),(1018,110,16,32,2),(1019,110,43,26,18),(1020,110,18,31,7),(1021,111,106,24,8),(1022,111,70,59,17),(1023,112,113,17,17),(1024,113,106,24,14),(1025,113,70,59,10),(1026,113,49,13,6),(1027,113,56,30,15),(1028,114,109,50,7),(1029,114,67,57,7),(1030,115,30,51,13),(1031,115,64,33,12),(1032,116,102,34,16),(1033,116,73,50,14),(1034,116,15,25,12),(1035,116,38,59,19),(1036,116,56,30,15),(1037,117,43,26,12),(1038,118,24,25,6),(1039,118,3,28,7),(1040,118,69,54,18),(1041,119,83,22,20),(1042,119,66,41,12),(1043,119,35,36,16),(1044,119,97,10,4),(1045,120,9,17,4),(1046,120,53,56,15),(1047,120,71,11,16),(1048,121,31,45,11),(1049,121,67,57,17),(1050,121,48,8,18),(1051,122,66,41,20),(1052,122,22,41,2),(1053,123,34,37,18),(1054,123,29,22,19),(1055,124,91,41,7),(1056,124,101,50,17),(1057,124,104,60,3),(1058,124,11,57,4),(1059,125,60,42,6),(1060,125,39,9,13),(1061,125,58,56,19),(1062,126,6,25,12),(1063,126,14,53,14),(1064,127,25,14,15),(1065,127,23,13,13),(1066,127,100,42,8),(1067,128,28,33,11),(1068,128,65,6,3),(1069,128,51,40,9),(1070,128,19,13,4),(1071,129,89,14,7),(1072,130,66,41,14),(1073,130,78,47,6),(1074,130,45,16,17),(1075,131,92,51,8),(1076,131,73,50,14),(1077,132,102,34,10),(1078,132,95,38,11),(1079,132,55,26,6),(1080,133,7,47,4),(1081,133,100,42,14),(1082,134,68,57,19),(1083,135,102,34,16),(1084,135,11,57,12),(1085,136,26,17,16),(1086,137,12,24,7),(1087,137,109,50,9),(1088,138,102,34,13),(1089,139,36,43,8),(1090,140,59,5,10),(1091,141,70,59,4),(1092,142,43,26,19),(1093,142,63,13,19),(1094,143,112,16,17),(1095,143,27,30,6),(1096,144,53,56,9),(1097,144,104,60,10),(1098,144,17,45,19),(1099,144,108,42,14),(1100,145,41,18,17),(1101,145,33,33,15),(1102,146,46,5,12),(1103,146,94,25,8),(1104,147,46,5,16),(1105,147,72,30,7),(1106,147,96,41,18),(1107,148,47,33,20),(1108,148,54,33,18),(1109,149,75,34,3),(1110,150,104,60,3),(1111,151,19,13,9),(1112,151,64,33,1),(1113,152,105,19,16),(1114,152,54,33,4),(1115,152,93,55,14),(1116,153,13,44,8),(1117,154,95,38,11),(1118,154,35,36,14),(1119,155,71,11,7),(1120,155,44,30,1),(1121,156,61,33,6),(1122,156,80,52,2),(1123,157,100,42,20),(1124,158,99,11,2),(1125,158,83,22,7),(1126,158,10,34,5),(1127,159,53,56,16),(1128,160,45,16,11),(1129,161,97,10,12),(1130,161,99,11,20),(1131,161,33,33,5),(1132,161,21,27,11),(1133,162,34,37,9),(1134,163,35,36,19),(1135,163,62,33,2),(1136,164,28,33,12),(1137,164,17,45,11),(1138,165,66,41,17),(1139,166,73,50,8),(1140,167,71,11,19),(1141,167,42,46,1),(1142,167,76,19,10),(1143,167,1,30,1),(1144,167,43,26,9),(1145,168,43,26,15),(1146,168,33,33,12),(1147,169,59,5,13),(1148,169,44,30,20),(1149,169,17,45,13),(1150,169,45,16,18),(1151,169,112,16,12),(1152,170,77,58,4),(1153,170,97,10,20),(1154,170,14,53,10),(1155,170,72,30,15),(1156,171,24,25,6),(1157,172,31,45,13),(1158,172,35,36,11),(1159,173,107,12,20),(1160,174,19,13,11),(1161,175,25,14,17),(1162,175,110,50,18),(1163,175,25,14,5),(1164,175,51,40,7),(1165,176,62,33,16),(1166,176,98,54,3),(1167,177,70,59,3),(1168,177,18,31,17),(1169,177,16,32,4),(1170,177,26,17,3),(1171,178,2,12,6),(1172,178,73,50,2),(1173,179,41,18,9),(1174,179,100,42,9),(1175,180,25,14,10),(1176,180,43,26,3),(1177,180,34,37,2),(1178,180,60,42,15),(1179,180,3,28,11),(1180,180,90,54,1),(1181,181,12,24,1),(1182,181,2,12,14),(1183,181,94,25,15),(1184,182,75,34,7),(1185,182,106,24,20),(1186,182,48,8,1),(1187,183,20,10,13),(1188,184,88,14,16),(1189,184,2,12,3),(1190,185,17,45,3),(1191,186,20,10,1),(1192,187,32,60,14),(1193,187,2,12,1),(1194,187,87,53,19),(1195,187,23,13,17),(1196,188,13,44,5),(1197,188,33,33,3),(1198,189,55,26,18),(1199,190,61,33,11),(1200,190,70,59,11),(1201,191,30,51,2),(1202,192,68,57,20),(1203,192,57,48,2),(1204,192,19,13,10),(1205,193,76,19,15),(1206,194,55,26,11),(1207,195,99,11,9),(1208,195,41,18,9),(1209,195,18,31,1),(1210,195,83,22,1),(1211,196,12,24,15),(1212,196,8,10,6),(1213,197,33,33,7),(1214,198,107,12,10),(1215,198,103,20,16),(1216,199,86,27,7),(1217,199,33,33,7),(1218,200,111,54,6),(1219,201,84,23,14),(1220,202,10,34,15),(1221,202,11,57,17),(1222,202,31,45,13),(1223,203,51,40,8),(1224,203,95,38,11),(1225,203,23,13,3),(1226,204,56,30,1),(1227,204,7,47,1),(1228,204,28,33,4),(1229,204,67,57,16),(1230,205,18,31,4),(1231,205,60,42,5),(1232,206,12,24,18),(1233,206,65,6,9),(1234,206,50,5,14),(1235,206,17,45,17),(1236,207,73,50,4),(1237,207,90,54,4),(1238,208,66,41,13),(1239,208,47,33,11),(1240,209,91,41,10),(1241,209,109,50,10),(1242,210,91,41,1),(1243,210,31,45,7),(1244,210,63,13,19),(1245,210,46,5,15),(1246,211,103,20,2),(1247,212,60,42,13),(1248,212,68,57,3),(1249,213,31,45,18),(1250,214,110,50,15),(1251,215,26,17,5),(1252,215,83,22,12),(1253,216,20,10,3),(1254,216,28,33,5),(1255,217,47,33,6),(1256,217,80,52,14),(1257,217,51,40,14),(1258,217,81,40,17),(1259,217,44,30,4),(1260,218,83,22,9),(1261,218,82,15,18),(1262,218,47,33,20),(1263,219,5,51,18),(1264,219,5,51,11),(1265,220,68,57,8),(1266,221,9,17,13),(1267,221,56,30,18),(1268,221,88,14,10),(1269,221,53,56,8),(1270,221,66,41,1),(1271,222,7,47,7),(1272,223,95,38,8),(1273,223,1,30,10),(1274,223,81,40,2),(1275,224,73,50,10),(1276,224,95,38,8),(1277,225,14,53,11),(1278,225,20,10,3),(1279,226,22,41,6),(1280,227,68,57,17),(1281,227,39,9,2),(1282,227,39,9,5),(1283,228,17,45,8),(1284,229,85,18,8),(1285,229,26,17,14),(1286,229,109,50,5),(1287,229,76,19,8),(1288,230,111,54,4),(1289,230,49,13,19),(1290,231,11,57,16),(1291,231,50,5,8),(1292,232,30,51,10),(1293,232,55,26,13),(1294,233,101,50,19),(1295,233,42,46,10),(1296,233,106,24,4),(1297,233,84,23,17),(1298,234,9,17,8),(1299,234,31,45,5),(1300,235,46,5,12),(1301,235,59,5,2),(1302,236,70,59,15),(1303,236,25,14,8),(1304,237,55,26,18),(1305,237,62,33,17),(1306,237,61,33,8),(1307,238,44,30,17),(1308,238,35,36,9),(1309,239,20,10,8),(1310,239,72,30,3),(1311,239,8,10,18),(1312,239,22,41,19),(1313,240,45,16,19),(1314,241,61,33,8),(1315,241,96,41,15),(1316,241,1,30,15),(1317,242,74,58,13),(1318,242,52,43,9),(1319,243,19,13,10),(1320,244,56,30,13),(1321,244,16,32,14),(1322,245,89,14,5),(1323,245,54,33,14),(1324,246,60,42,4),(1325,246,27,30,15),(1326,247,63,13,9),(1327,247,29,22,16),(1328,248,65,6,17),(1329,249,9,17,14),(1330,250,81,40,17),(1331,251,92,51,3),(1332,251,68,57,7),(1333,252,13,44,10),(1334,252,18,31,12),(1335,252,7,47,2),(1336,253,39,9,18),(1337,253,64,33,5),(1338,253,81,40,15),(1339,253,69,54,8),(1340,253,15,25,19),(1341,254,92,51,13),(1342,254,6,25,5),(1343,255,92,51,9),(1344,256,92,51,9),(1345,256,32,60,15),(1346,257,13,44,8),(1347,257,60,42,4),(1348,258,61,33,11),(1349,259,75,34,14),(1350,259,113,17,11),(1351,260,16,32,3),(1352,261,27,30,3),(1353,261,31,45,11),(1354,261,8,10,4),(1355,262,56,30,15),(1356,262,63,13,2),(1357,262,90,54,12),(1358,263,12,24,4),(1359,263,113,17,7),(1360,264,55,26,2),(1361,264,74,58,13),(1362,265,3,28,14),(1363,266,5,51,17),(1364,267,24,25,4),(1365,267,5,51,19),(1366,267,51,40,3),(1367,267,10,34,8),(1368,268,69,54,11),(1369,269,18,31,19),(1370,269,2,12,2),(1371,270,2,12,10),(1372,271,78,47,6),(1373,271,75,34,14),(1374,272,42,46,1),(1375,272,36,43,16),(1376,273,73,50,2),(1377,274,40,47,9),(1378,274,48,8,11),(1379,274,109,50,20),(1380,275,34,37,6),(1381,275,87,53,16),(1382,275,18,31,4),(1383,276,104,60,16),(1384,277,19,13,11),(1385,277,108,42,6),(1386,278,15,25,11),(1387,278,16,32,14),(1388,279,86,27,17),(1389,279,54,33,16),(1390,280,89,14,4),(1391,280,32,60,18),(1392,280,85,18,11),(1393,280,13,44,8),(1394,281,17,45,11),(1395,281,67,57,19),(1396,282,111,54,19),(1397,282,85,18,18),(1398,283,102,34,15),(1399,284,38,59,11),(1400,284,74,58,15),(1401,284,96,41,10),(1402,285,88,14,20),(1403,286,62,33,4),(1404,287,56,30,7),(1405,287,90,54,2),(1406,287,61,33,5),(1407,288,57,48,7),(1408,288,106,24,4),(1409,289,11,57,19),(1410,290,23,13,9),(1411,290,18,31,11),(1412,291,44,30,8),(1413,291,82,15,14),(1414,292,35,36,15),(1415,292,18,31,14),(1416,293,65,6,14),(1417,293,102,34,9),(1418,294,113,17,17),(1419,295,46,5,5),(1420,295,65,6,3),(1421,296,1,30,14),(1422,296,21,27,9),(1423,296,96,41,3),(1424,297,81,40,7),(1425,297,59,5,9),(1426,298,55,26,16),(1427,298,52,43,10),(1428,299,15,25,10),(1429,300,10,34,10),(1430,300,93,55,20),(1431,300,73,50,7),(1432,301,27,30,5),(1433,301,112,16,5),(1434,301,34,37,5),(1435,301,88,14,1),(1436,302,57,48,9),(1437,302,35,36,16),(1438,303,5,51,14),(1439,303,39,9,20),(1440,304,4,10,16),(1441,305,111,54,15),(1442,306,21,27,19),(1443,306,63,13,7),(1444,306,30,51,12),(1445,306,11,57,15),(1446,306,66,41,1),(1447,307,104,60,7),(1448,308,15,25,19),(1449,308,28,33,2),(1450,308,49,13,5),(1451,309,23,13,6),(1452,309,104,60,18),(1453,310,54,33,8),(1454,310,60,42,7),(1455,311,88,14,9),(1456,312,18,31,10),(1457,312,66,41,10),(1458,312,39,9,17),(1459,312,74,58,8),(1460,313,106,24,15),(1461,313,108,42,4),(1462,314,110,50,11),(1463,315,33,33,17),(1464,315,1,30,1),(1465,315,19,13,4),(1466,315,101,50,10),(1467,316,80,52,6),(1468,317,99,11,15),(1469,317,78,47,16),(1470,317,21,27,11),(1471,317,16,32,11),(1472,318,29,22,20),(1473,319,21,27,4),(1474,320,38,59,17),(1475,320,62,33,13),(1476,321,62,33,20),(1477,321,84,23,12),(1478,322,81,40,12),(1479,323,99,11,3),(1480,323,86,27,19),(1481,324,33,33,11),(1482,324,55,26,6),(1483,324,61,33,2),(1484,324,103,20,16),(1485,324,105,19,5),(1486,325,98,54,12),(1487,325,88,14,6),(1488,325,68,57,20),(1489,326,74,58,4),(1490,327,22,41,4),(1491,327,102,34,3),(1492,328,73,50,3),(1493,329,25,14,4),(1494,329,112,16,2),(1495,330,47,33,14),(1496,331,24,25,14),(1497,331,105,19,2),(1498,331,83,22,10),(1499,332,93,55,15),(1500,332,111,54,19),(1501,333,25,14,13),(1502,333,85,18,8),(1503,333,62,33,11),(1504,333,51,40,10),(1505,334,48,8,7),(1506,334,60,42,15),(1507,334,72,30,19),(1508,335,62,33,14),(1509,335,26,17,17),(1510,336,87,53,15),(1511,336,52,43,11),(1512,336,73,50,11),(1513,336,1,30,11),(1514,337,68,57,4),(1515,338,11,57,1),(1516,338,25,14,16),(1517,339,24,25,20),(1518,340,17,45,8),(1519,340,22,41,1),(1520,341,33,33,6),(1521,341,81,40,10),(1522,342,44,30,7),(1523,342,68,57,7),(1524,343,55,26,9),(1525,344,39,9,11),(1526,345,6,25,16),(1527,345,25,14,18),(1528,346,80,52,20),(1529,347,24,25,11),(1530,347,72,30,6),(1531,347,61,33,3),(1532,348,99,11,2),(1533,349,100,42,19),(1534,349,76,19,8),(1535,350,10,34,10),(1536,350,63,13,4),(1537,351,64,33,14),(1538,351,6,25,9),(1539,351,5,51,6),(1540,352,1,30,2),(1541,352,88,14,14),(1542,353,103,20,15),(1543,353,46,5,10),(1544,353,95,38,12),(1545,354,5,51,10),(1546,355,12,24,18),(1547,356,48,8,15),(1548,356,75,34,16),(1549,357,56,30,5),(1550,357,30,51,7),(1551,358,81,40,16),(1552,359,95,38,9),(1553,360,69,54,9),(1554,360,79,34,18),(1555,361,82,15,3),(1556,361,72,30,17),(1557,362,108,42,6),(1558,362,68,57,16),(1559,362,8,10,17),(1560,363,23,13,15),(1561,364,56,30,9),(1562,364,87,53,8),(1563,365,43,26,4),(1564,366,75,34,6),(1565,366,5,51,13),(1566,366,82,15,13),(1567,367,46,5,14),(1568,367,75,34,2),(1569,367,51,40,17),(1570,367,110,50,7),(1571,368,73,50,10),(1572,369,54,33,11),(1573,369,78,47,6),(1574,370,104,60,18),(1575,370,85,18,13),(1576,370,92,51,6),(1577,370,62,33,14),(1578,370,1,30,5),(1579,371,34,37,7),(1580,371,42,46,5),(1581,372,54,33,20),(1582,372,78,47,15),(1583,372,84,23,2),(1584,373,52,43,1),(1585,373,6,25,3),(1586,374,90,54,1),(1587,374,92,51,4),(1588,375,15,25,12),(1589,376,35,36,1),(1590,376,71,11,15),(1591,377,39,9,3),(1592,378,96,41,14),(1593,379,82,15,16),(1594,380,63,13,12),(1595,380,98,54,13),(1596,381,77,58,8),(1597,381,91,41,15),(1598,382,88,14,10),(1599,383,59,5,20),(1600,383,87,53,3),(1601,384,20,10,5),(1602,384,39,9,3),(1603,385,11,57,13),(1604,385,27,30,10),(1605,385,27,30,3),(1606,386,35,36,5),(1607,386,32,60,8),(1608,387,9,17,17),(1609,387,80,52,17),(1610,387,23,13,4),(1611,388,108,42,3),(1612,389,43,26,14),(1613,390,4,10,20),(1614,390,38,59,10),(1615,391,71,11,18),(1616,391,90,54,14),(1617,391,103,20,1),(1618,392,14,53,20),(1619,393,63,13,10),(1620,393,110,50,15),(1621,394,44,30,6),(1622,395,25,14,19),(1623,395,49,13,16),(1624,395,82,15,13),(1625,396,75,34,11),(1626,396,89,14,10),(1627,396,7,47,18),(1628,397,28,33,15),(1629,397,31,45,16),(1630,398,112,16,7),(1631,398,53,56,11),(1632,398,103,20,4),(1633,399,109,50,14),(1634,399,108,42,18),(1635,399,83,22,19),(1636,400,25,14,9),(1637,401,102,34,16),(1638,401,95,38,15),(1639,402,104,60,10),(1640,402,18,31,17),(1641,403,96,41,11),(1642,403,92,51,2),(1643,404,24,25,10),(1644,404,19,13,17),(1645,404,69,54,13),(1646,405,72,30,5),(1647,406,67,57,1),(1648,406,43,26,7),(1649,407,80,52,15),(1650,407,77,58,6),(1651,408,39,9,1),(1652,408,5,51,13),(1653,409,73,50,16),(1654,409,45,16,7),(1655,409,21,27,16),(1656,410,30,51,1),(1657,411,57,48,19),(1658,411,106,24,20),(1659,412,70,59,15),(1660,413,57,48,9),(1661,413,106,24,13),(1662,414,7,47,14),(1663,414,25,14,12),(1664,415,109,50,5),(1665,415,47,33,16),(1666,415,108,42,19),(1667,415,33,33,18),(1668,416,3,28,17),(1669,416,57,48,3),(1670,416,77,58,13),(1671,417,20,10,13),(1672,418,11,57,11),(1673,418,43,26,14),(1674,418,73,50,8),(1675,418,31,45,15),(1676,419,47,33,19),(1677,419,91,41,10),(1678,420,78,47,16),(1679,420,61,33,1),(1680,421,91,41,18),(1681,421,34,37,15),(1682,422,92,51,8),(1683,422,40,47,15),(1684,423,106,24,20),(1685,423,106,24,20),(1686,424,108,42,9),(1687,424,71,11,7),(1688,424,29,22,11),(1689,424,13,44,17),(1690,425,13,44,18),(1691,425,15,25,20),(1692,426,86,27,16),(1693,426,90,54,18),(1694,426,13,44,20),(1695,427,69,54,5),(1696,427,86,27,18),(1697,428,70,59,7),(1698,428,36,43,6),(1699,428,21,27,17),(1700,428,100,42,12),(1701,428,40,47,5),(1702,429,96,41,8),(1703,430,112,16,19),(1704,430,103,20,6),(1705,430,35,36,15),(1706,431,84,23,5),(1707,432,57,48,18),(1708,432,85,18,8),(1709,433,46,5,11),(1710,434,21,27,18),(1711,434,12,24,2),(1712,435,102,34,20),(1713,435,88,14,13),(1714,436,39,9,12),(1715,436,20,10,7),(1716,436,88,14,3),(1717,436,105,19,12),(1718,437,90,54,8),(1719,437,45,16,10),(1720,438,72,30,4),(1721,439,43,26,8),(1722,439,77,58,16),(1723,440,47,33,10),(1724,441,16,32,7),(1725,441,112,16,8),(1726,441,22,41,9),(1727,442,98,54,19),(1728,443,41,18,17),(1729,443,106,24,18),(1730,443,11,57,3),(1731,443,93,55,13),(1732,444,59,5,7),(1733,445,105,19,15),(1734,446,111,54,20),(1735,446,104,60,1),(1736,446,53,56,2),(1737,447,7,47,13),(1738,447,55,26,1),(1739,447,2,12,19),(1740,448,78,47,19),(1741,449,40,47,10),(1742,449,5,51,14),(1743,449,94,25,6),(1744,450,79,34,12),(1745,450,113,17,6),(1746,450,92,51,19),(1747,451,72,30,19),(1748,451,103,20,7),(1749,452,56,30,10),(1750,453,23,13,2),(1751,454,4,10,6),(1752,455,68,57,5),(1753,455,100,42,16),(1754,455,45,16,13),(1755,456,75,34,3),(1756,457,42,46,19),(1757,457,53,56,4),(1758,457,95,38,18),(1759,458,37,16,14),(1760,458,28,33,5),(1761,458,90,54,15),(1762,459,65,6,18),(1763,459,110,50,18),(1764,460,3,28,11),(1765,460,54,33,15),(1766,460,20,10,20),(1767,460,109,50,9),(1768,461,47,33,11),(1769,461,50,5,7),(1770,462,38,59,12),(1771,462,69,54,11),(1772,462,46,5,14),(1773,463,31,45,1),(1774,463,86,27,12),(1775,463,110,50,18),(1776,463,65,6,5),(1777,464,106,24,7),(1778,465,11,57,16),(1779,465,84,23,3),(1780,466,82,15,7),(1781,466,53,56,11),(1782,466,9,17,1),(1783,467,63,13,1),(1784,468,32,60,19),(1785,469,28,33,7),(1786,469,47,33,13),(1787,469,62,33,15),(1788,469,29,22,2),(1789,470,3,28,8),(1790,470,34,37,3),(1791,471,59,5,20),(1792,471,88,14,3),(1793,471,34,37,6),(1794,472,71,11,7),(1795,472,41,18,14),(1796,473,26,17,17),(1797,473,12,24,7),(1798,473,76,19,16),(1799,474,105,19,3),(1800,475,94,25,14),(1801,476,81,40,1),(1802,477,40,47,19),(1803,477,56,30,1),(1804,477,23,13,11),(1805,478,33,33,9),(1806,478,26,17,7),(1807,479,44,30,9),(1808,479,62,33,9),(1809,479,63,13,20),(1810,480,68,57,19),(1811,480,38,59,16),(1812,481,61,33,2),(1813,482,20,10,6),(1814,482,103,20,14),(1815,482,75,34,17),(1816,483,87,53,4),(1817,484,56,30,19),(1818,484,44,30,9),(1819,484,72,30,2),(1820,485,75,34,6),(1821,485,82,15,12),(1822,486,41,18,16),(1823,486,14,53,5),(1824,486,47,33,7),(1825,487,51,40,13),(1826,487,18,31,16),(1827,488,59,5,3),(1828,489,84,23,15),(1829,489,33,33,19),(1830,489,62,33,13),(1831,490,7,47,2),(1832,490,16,32,2),(1833,490,101,50,10),(1834,490,41,18,15),(1835,491,52,43,5),(1836,491,83,22,4),(1837,491,95,38,15),(1838,491,26,17,9),(1839,492,99,11,4),(1840,492,111,54,17),(1841,493,21,27,11),(1842,493,111,54,6),(1843,494,39,9,16),(1844,495,22,41,10),(1845,495,52,43,7),(1846,495,37,16,6),(1847,495,98,54,14),(1848,495,3,28,14),(1849,496,86,27,15),(1850,496,46,5,17),(1851,497,19,13,12),(1852,498,24,25,8),(1853,499,105,19,15),(1854,500,109,50,1),(1855,500,46,5,17),(1856,500,4,10,18),(1857,500,68,57,13),(1858,504,1,30,10);
/*!40000 ALTER TABLE `tabla_boleta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_after_update` AFTER INSERT ON `tabla_boleta` FOR EACH ROW BEGIN 
    DECLARE V_ID_Vta MEDIUMINT;
    DECLARE Total_vta DOUBLE;
    
    SET V_ID_Vta = NEW.ID_Vta;

    SET Total_vta = (SELECT SUM(Precio_Prod * NEW.Unidad_Prod) FROM tabla_productos WHERE ID_Prod = NEW.ID_Prod);

    IF EXISTS (SELECT 1 FROM tabla_venta WHERE ID_Vta = V_ID_Vta) THEN
        INSERT INTO tabla_factura (Total_vta, ID_Vta) VALUES (Total_vta, V_ID_Vta);
    END IF;

    UPDATE tabla_productos 
    SET Stock_Prod = Stock_Prod - NEW.Unidad_Prod
    WHERE ID_Prod = NEW.ID_Prod;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tabla_categorias`
--

DROP TABLE IF EXISTS `tabla_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_categorias` (
  `ID_Cat` int NOT NULL AUTO_INCREMENT,
  `Nombre_Cat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_Cat`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_categorias`
--

LOCK TABLES `tabla_categorias` WRITE;
/*!40000 ALTER TABLE `tabla_categorias` DISABLE KEYS */;
INSERT INTO `tabla_categorias` VALUES (1,'Accesorios Personales'),(2,'Artesania Decorativa'),(3,'ArtesanÃ­a Textil'),(4,'Hogar y Cocina'),(5,'Juguetes y Entretenimiento');
/*!40000 ALTER TABLE `tabla_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_estructura`
--

DROP TABLE IF EXISTS `tabla_estructura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_estructura` (
  `ID_Estruct` tinyint NOT NULL,
  `Sector_Estruct` enum('A','B','C','D','E') DEFAULT NULL,
  PRIMARY KEY (`ID_Estruct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_estructura`
--

LOCK TABLES `tabla_estructura` WRITE;
/*!40000 ALTER TABLE `tabla_estructura` DISABLE KEYS */;
INSERT INTO `tabla_estructura` VALUES (1,'A'),(2,'B'),(3,'C'),(4,'D'),(5,'E');
/*!40000 ALTER TABLE `tabla_estructura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_factura`
--

DROP TABLE IF EXISTS `tabla_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_factura` (
  `ID_VtA` mediumint DEFAULT NULL,
  `Total_vta` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_factura`
--

LOCK TABLES `tabla_factura` WRITE;
/*!40000 ALTER TABLE `tabla_factura` DISABLE KEYS */;
INSERT INTO `tabla_factura` VALUES (504,300);
/*!40000 ALTER TABLE `tabla_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_productos`
--

DROP TABLE IF EXISTS `tabla_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_productos` (
  `ID_Prod` int NOT NULL AUTO_INCREMENT,
  `ID_Cat` int DEFAULT NULL,
  `ID_Puesto` tinyint DEFAULT NULL,
  `Nombre_Prod` varchar(100) DEFAULT NULL,
  `Moneda` varchar(100) DEFAULT NULL,
  `Precio_Prod` double DEFAULT NULL,
  `Stock_Prod` int DEFAULT NULL,
  PRIMARY KEY (`ID_Prod`),
  KEY `FK_PRODUCTOS_CATEGORIAS` (`ID_Cat`),
  KEY `FK_PRODUCTOS_PUESTOS` (`ID_Puesto`),
  CONSTRAINT `FK_PRODUCTOS_CATEGORIAS` FOREIGN KEY (`ID_Cat`) REFERENCES `tabla_categorias` (`ID_Cat`),
  CONSTRAINT `FK_PRODUCTOS_PUESTOS` FOREIGN KEY (`ID_Puesto`) REFERENCES `tabla_puestos` (`ID_Puesto`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_productos`
--

LOCK TABLES `tabla_productos` WRITE;
/*!40000 ALTER TABLE `tabla_productos` DISABLE KEYS */;
INSERT INTO `tabla_productos` VALUES (1,1,15,'Accesorios para el cabello artesanales','Dolar',30,45128),(2,1,34,'Bisuteria con materiales reciclados','Dolar',12,47102),(3,1,12,'Bisuteria con piedras naturales','Dolar',28,70651),(4,1,29,'Bolsos de tela estampada','Dolar',10,21393),(5,1,26,'Bolsos y carteras de cuero','Dolar',51,37534),(6,1,25,'Broches de ceramica','Dolar',25,37418),(7,1,8,'Broches y pines decorativos','Dolar',47,30194),(8,1,22,'Cinturones de cuero decorados','Dolar',10,53933),(9,1,25,'Collares de conchas marinas','Dolar',17,65805),(10,1,6,'Collares para mascotas','Dolar',34,77085),(11,1,16,'Diademas y coronas florales','Dolar',57,72722),(12,1,45,'Foulards pintados a mano','Dolar',24,35294),(13,1,43,'Gafas de sol artesanales','Dolar',44,65356),(14,1,23,'Gemelos para camisas','Dolar',53,23435),(15,1,40,'Collares','Dolar',25,26246),(16,1,16,'Pulseras','Dolar',32,54566),(17,1,38,'Pendientes','Dolar',45,45698),(18,1,7,'Joyeria de plata martillada','Dolar',31,38308),(19,1,33,'Llaveros personalizados','Dolar',13,95296),(20,1,6,'Pendientes y colgantes de macrame','Dolar',10,68390),(21,1,2,'Pulseras y anillos de metal','Dolar',27,50460),(22,1,31,'Sombreros y gorras tejidos','Dolar',41,36044),(23,2,33,'Adornos para el arbol de Navidad','Dolar',13,59218),(24,2,16,'Arte en papel mache','Dolar',25,68951),(25,2,39,'Vasos en vidrio','Dolar',14,33480),(26,2,36,'lamparas en vidrio','Dolar',17,66738),(27,2,3,'Vitrales en vidrio','Dolar',30,51803),(28,2,5,'Candelabros','Dolar',33,18352),(29,2,32,'Platos de Ceramica','Dolar',22,35521),(30,2,30,'Jarrones de Ceramica','Dolar',51,70823),(31,2,11,'Tazas de Ceramica','Dolar',45,58881),(32,2,43,'Cuadros pintados a mano','Dolar',60,91005),(33,2,12,'Esculturas de arcilla','Dolar',33,60333),(34,2,24,'Esculturas de madera','Dolar',37,82951),(35,2,40,'Esculturas en metal','Dolar',36,85034),(36,2,9,'Esculturas en piedra','Dolar',43,60083),(37,2,12,'Fotografias enmarcadas','Dolar',16,41383),(38,2,30,'Fuentes de agua decorativas','Dolar',59,12006),(39,2,41,'Jarrones de ceramica','Dolar',9,40961),(40,2,4,'Letras decorativas para pared','Dolar',47,48810),(41,2,28,'Marcos de fotos decorativos','Dolar',18,89653),(42,2,2,'Mosaicos decorativos','Dolar',46,18332),(43,2,24,'Banderas en tela','Dolar',26,61358),(44,2,31,'Tapices en tela','Dolar',30,54145),(45,2,6,'Tapices con motivos etnicos','Dolar',16,73799),(46,2,5,'Tapices decorativos','Dolar',5,95549),(47,2,40,'Titeres y marionetas decorativas','Dolar',33,40323),(48,3,35,' Ropa para mascotas tejida','Dolar',8,71772),(49,3,34,'Alfombras de nudos','Dolar',13,25843),(50,3,24,'Alfombras tejidas a mano','Dolar',5,99581),(51,3,19,'Bolsas de tela pintadas a mano','Dolar',40,43245),(52,3,14,'Bolsos de fieltro','Dolar',43,92309),(53,3,15,'Bolsos de ganchillo','Dolar',56,92157),(54,3,10,'Bolsos de tela estampada','Dolar',33,54767),(55,3,7,'Calcetines de lana','Dolar',26,53194),(56,3,43,'Camisetas estampadas a mano','Dolar',30,34835),(57,3,45,'Chales de lana','Dolar',48,53857),(58,3,28,'Cojines de punto','Dolar',56,79304),(59,3,37,'Colchas y mantas tejidas','Dolar',5,67387),(60,3,36,'Cortinas bordadas','Dolar',42,99620),(61,3,1,'Fundas de almohada bordadas','Dolar',33,30969),(62,3,13,'Guantes tejidos','Dolar',33,36758),(63,3,21,'Munecas de trapo','Dolar',13,41494),(64,3,16,'Ropa tenida a mano','Dolar',33,79080),(65,3,23,'Tapices decorativos','Dolar',6,96546),(66,3,2,'Bufandas a Crochet','Dolar',41,85776),(67,3,45,'Gorros a Crochet','Dolar',57,13930),(68,3,31,'Mantas a Crochet','Dolar',57,80427),(69,3,10,'Vestidos de crochet','Dolar',54,60947),(70,4,21,'Alfombras tejidas a mano','Dolar',59,80169),(71,4,15,'Artesania en corcho','Dolar',11,18347),(72,4,14,'Bolsas de tela reutilizables','Dolar',30,74120),(73,4,36,'Cajas decorativas','Dolar',50,54614),(74,4,2,'Camisetas estampadas a mano','Dolar',58,15165),(75,4,4,'Cestas','Dolar',34,21970),(76,4,6,'Bandejas','Dolar',19,71657),(77,4,36,'lamparas','Dolar',58,50156),(78,4,17,'Cojines decorativos','Dolar',47,98833),(79,4,8,'Cucharas de madera esculpidas','Dolar',34,78208),(80,4,9,'Delantales bordados','Dolar',52,81771),(81,4,45,'Jabones naturales','Dolar',40,41043),(82,4,30,'Jarras de ceramica','Dolar',15,21673),(83,4,29,'Juegos de te pintados a mano','Dolar',22,99979),(84,4,7,'Manteles bordados','Dolar',23,40869),(85,4,11,'Portavelas de ceramica','Dolar',18,77994),(86,4,41,'Servilleteros decorativos','Dolar',27,25067),(87,4,40,'Tablas de cortar de madera','Dolar',53,84985),(88,4,4,'Tapices con motivos etnicos','Dolar',14,92087),(89,4,10,'Tazas y platos pintados a mano','Dolar',14,32381),(90,4,12,'Tazones de madera tallada','Dolar',54,34216),(91,4,4,'Velas aromaticas','Dolar',41,44007),(92,5,38,'Aviones y barcos de juguete','Dolar',51,92032),(93,5,24,'Carruseles de papel','Dolar',55,53148),(94,5,12,'Espadas y escudos de madera para ninos','Dolar',25,32576),(95,5,32,'Flautas','Dolar',38,74160),(96,5,21,'Tambores','Dolar',41,47320),(97,5,28,'Instrumentos musicales de percusion','Dolar',10,40421),(98,5,15,'Juegos de bolos de madera','Dolar',54,64163),(99,5,24,'Juegos de mesa artesanales','Dolar',11,48189),(100,5,27,'Juguetes de construccion hechos con materiales naturales','Dolar',42,31209),(101,5,11,'Juguetes de madera','Dolar',50,52286),(102,5,29,'Juguetes de trapo','Dolar',34,27626),(103,5,23,'Juguetes educativos','Dolar',20,28966),(104,5,3,'Marionetas de dedo','Dolar',60,65663),(105,5,35,'Marionetas de guante','Dolar',19,19542),(106,5,11,'Marionetas de hilos','Dolar',24,92652),(107,5,11,'Marionetas de sombras','Dolar',12,82200),(108,5,32,'Casas en Miniatura','Dolar',42,36546),(109,5,27,'Muebles en Miniatura','Dolar',50,96848),(110,5,12,'Munecos de tela','Dolar',50,56772),(111,5,16,'Puzzles de madera tallada','Dolar',54,93028),(112,5,26,'Titeres y marionetas','Dolar',16,44332),(113,5,30,'Trompos de madera','Dolar',17,18765);
/*!40000 ALTER TABLE `tabla_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_puestos`
--

DROP TABLE IF EXISTS `tabla_puestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_puestos` (
  `ID_Puesto` tinyint NOT NULL AUTO_INCREMENT,
  `ID_Art` int DEFAULT NULL,
  `ID_Estruct` tinyint DEFAULT NULL,
  `Nombre_Puesto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_Puesto`),
  KEY `FK_PUESTOS_ESTRUCTURA` (`ID_Estruct`),
  KEY `FK_PUESTOS_ARTESANOS` (`ID_Art`),
  CONSTRAINT `FK_PUESTOS_ARTESANOS` FOREIGN KEY (`ID_Art`) REFERENCES `tabla_artesanos` (`ID_Art`),
  CONSTRAINT `FK_PUESTOS_ESTRUCTURA` FOREIGN KEY (`ID_Estruct`) REFERENCES `tabla_estructura` (`ID_Estruct`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_puestos`
--

LOCK TABLES `tabla_puestos` WRITE;
/*!40000 ALTER TABLE `tabla_puestos` DISABLE KEYS */;
INSERT INTO `tabla_puestos` VALUES (1,1,1,'Artesanias de la Naturaleza'),(2,2,1,'Tesoros del Pasado'),(3,3,1,'Mundo del Vidrio'),(4,4,1,'Artesanias del Mundo'),(5,5,1,'Encanto Artesanal'),(6,6,1,'Mundo Artesano'),(7,7,1,'Maravillas Artesanales'),(8,8,1,'Arte y Pasion'),(9,9,1,'Maravillas Textiles'),(10,10,2,'Maravillas del Arte'),(11,11,2,'Joyas del Mundo'),(12,12,2,'Hecho a Mano'),(13,13,2,'Tesoros Hechos a Mano'),(14,14,2,'Encanto Hecho a Mano'),(15,15,2,'Belleza Hecha a Mano'),(16,16,2,'Creaciones con Amor'),(17,17,2,'Manos Creativas'),(18,18,2,'Inspiracion Creativa'),(19,19,3,'Encanto y Belleza'),(20,20,3,'Mundo Creativo'),(21,21,3,'Tesoros Textiles'),(22,22,3,'Hilos y Tejidos'),(23,23,3,'Fantasia en Papel'),(24,24,3,'SueÃ±os Artesanales'),(25,25,3,'Creaciones Fantasticas'),(26,26,3,'Mundo de la Creatividad'),(27,27,3,'Creaciones del Corazon'),(28,28,3,'Maravillas del Arte'),(29,29,4,'Creatividad en Expansion'),(30,30,4,'Creaciones del Mundo'),(31,31,4,'Arte en Ceramica'),(32,32,4,'Mundo del Vidrio'),(33,33,4,'Madera y Arte'),(34,34,4,'Mundo de las Maravillas'),(35,35,4,'Taller de Artesanias'),(36,36,4,'Artesanias con Historia'),(37,37,4,'Encanto y Belleza'),(38,38,4,'Arte en Detalles'),(39,39,5,'Rincon de la Inspiracion'),(40,40,5,'Creaciones del Mundo'),(41,41,5,'Creatividad en Accion'),(42,42,5,'Rincones del Arte'),(43,43,5,'Creaciones con Alma'),(44,44,5,'Arte y Tradicion'),(45,45,5,'Tesoros del Arte');
/*!40000 ALTER TABLE `tabla_puestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_venta`
--

DROP TABLE IF EXISTS `tabla_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_venta` (
  `ID_Vta` mediumint NOT NULL AUTO_INCREMENT,
  `Fecha_Hora` datetime DEFAULT NULL,
  `Precio_vta` mediumint DEFAULT NULL,
  `articulos_vendidos_vta` int DEFAULT NULL,
  `ID_Art` int DEFAULT NULL,
  `ID_Estruct` tinyint DEFAULT NULL,
  `ID_Puesto` tinyint DEFAULT NULL,
  `Nombre_Puesto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_Vta`),
  KEY `FK_VENTA_ARTESANO` (`ID_Art`),
  KEY `FK_VENTA_ESTRUCTURA` (`ID_Estruct`),
  KEY `FK_VENTA_PUESTO` (`ID_Puesto`),
  CONSTRAINT `FK_VENTA_ARTESANO` FOREIGN KEY (`ID_Art`) REFERENCES `tabla_artesanos` (`ID_Art`),
  CONSTRAINT `FK_VENTA_ESTRUCTURA` FOREIGN KEY (`ID_Estruct`) REFERENCES `tabla_estructura` (`ID_Estruct`),
  CONSTRAINT `FK_VENTA_PUESTO` FOREIGN KEY (`ID_Puesto`) REFERENCES `tabla_puestos` (`ID_Puesto`)
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_venta`
--

LOCK TABLES `tabla_venta` WRITE;
/*!40000 ALTER TABLE `tabla_venta` DISABLE KEYS */;
INSERT INTO `tabla_venta` VALUES (100,'2024-04-30 11:10:00',134,21,27,3,27,'Creaciones del Corazon'),(101,'2024-04-30 11:19:00',115,33,34,4,34,'Mundo de las Maravillas'),(102,'2024-04-30 10:20:00',38,4,10,2,10,'Maravillas del Arte'),(103,'2024-04-30 11:21:00',166,29,9,1,9,'Maravillas Textiles'),(104,'2024-04-30 11:30:00',68,14,11,2,11,'Joyas del Mundo'),(105,'2024-04-30 10:29:00',31,6,40,5,40,'Creaciones del Mundo'),(106,'2024-04-30 09:20:00',87,5,44,5,44,'Arte y Tradicion'),(107,'2024-04-30 11:27:00',78,23,30,4,30,'Creaciones del Mundo'),(108,'2024-04-30 11:51:00',21,11,4,1,4,'Artesanias del Mundo'),(109,'2024-04-30 09:48:00',141,24,21,3,21,'Tesoros Textiles'),(110,'2024-04-30 09:38:00',116,27,37,4,37,'Encanto y Belleza'),(111,'2024-04-30 10:41:00',108,25,2,1,2,'Tesoros del Pasado'),(112,'2024-04-30 09:09:00',34,17,4,1,4,'Artesanias del Mundo'),(113,'2024-04-30 10:07:00',171,45,15,2,15,'Belleza Hecha a Mano'),(114,'2024-04-30 10:04:00',121,14,38,4,38,'Arte en Detalles'),(115,'2024-04-30 11:36:00',109,25,21,3,21,'Tesoros Textiles'),(116,'2024-04-30 10:19:00',274,76,26,3,26,'Mundo de la Creatividad'),(117,'2024-04-30 10:27:00',38,12,45,5,45,'Tesoros del Arte'),(118,'2024-04-30 11:30:00',138,31,2,1,2,'Tesoros del Pasado'),(119,'2024-04-30 09:10:00',161,52,43,5,43,'Creaciones con Alma'),(120,'2024-04-30 10:04:00',119,35,13,2,13,'Tesoros Hechos a Mano'),(121,'2024-04-30 10:29:00',156,46,33,4,33,'Madera y Arte'),(122,'2024-04-30 10:52:00',104,22,20,3,20,'Mundo Creativo'),(123,'2024-04-30 09:37:00',96,37,14,2,14,'Encanto Hecho a Mano'),(124,'2024-04-30 10:12:00',239,31,4,1,4,'Artesanias del Mundo'),(125,'2024-04-30 09:57:00',145,38,29,4,29,'Creatividad en Expansion'),(126,'2024-04-30 09:32:00',104,26,33,4,33,'Madera y Arte'),(127,'2024-04-30 11:25:00',105,36,30,4,30,'Creaciones del Mundo'),(128,'2024-04-30 10:54:00',119,27,4,1,4,'Artesanias del Mundo'),(129,'2024-04-30 09:46:00',21,7,41,5,41,'Creatividad en Accion'),(130,'2024-04-30 10:36:00',141,37,8,1,8,'Arte y Pasion'),(131,'2024-04-30 11:42:00',123,22,16,2,16,'Creaciones con Amor'),(132,'2024-04-30 09:57:00',125,27,30,4,30,'Creaciones del Mundo'),(133,'2024-04-30 11:46:00',107,18,2,1,2,'Tesoros del Pasado'),(134,'2024-04-30 11:15:00',76,19,2,1,2,'Tesoros del Pasado'),(135,'2024-04-30 09:41:00',119,28,41,5,41,'Creatividad en Accion'),(136,'2024-04-30 09:06:00',33,16,6,1,6,'Mundo Artesano'),(137,'2024-04-30 09:53:00',90,16,1,1,1,'Artesanias de la Naturaleza'),(138,'2024-04-30 09:23:00',47,13,27,3,27,'Creaciones del Corazon'),(139,'2024-04-30 11:30:00',51,8,38,4,38,'Arte en Detalles'),(140,'2024-04-30 10:38:00',15,10,26,3,26,'Mundo de la Creatividad'),(141,'2024-04-30 09:08:00',63,4,16,2,16,'Creaciones con Amor'),(142,'2024-04-30 10:31:00',77,38,27,3,27,'Creaciones del Corazon'),(143,'2024-04-30 09:18:00',69,23,29,4,29,'Creatividad en Expansion'),(144,'2024-04-30 11:35:00',255,52,22,3,22,'Hilos y Tejidos'),(145,'2024-04-30 10:03:00',83,32,38,4,38,'Arte en Detalles'),(146,'2024-04-30 09:49:00',50,20,28,3,28,'Maravillas del Arte'),(147,'2024-04-30 09:01:00',117,41,44,5,44,'Arte y Tradicion'),(148,'2024-04-30 09:28:00',104,38,5,1,5,'Encanto Artesanal'),(149,'2024-04-30 10:18:00',37,3,34,4,34,'Mundo de las Maravillas'),(150,'2024-04-30 11:09:00',63,3,9,1,9,'Maravillas Textiles'),(151,'2024-04-30 11:34:00',56,10,23,3,23,'Fantasia en Papel'),(152,'2024-04-30 11:56:00',141,34,25,3,25,'Creaciones Fantasticas'),(153,'2024-04-30 09:21:00',52,8,28,3,28,'Maravillas del Arte'),(154,'2024-04-30 11:44:00',99,25,10,2,10,'Maravillas del Arte'),(155,'2024-04-30 09:10:00',49,8,21,3,21,'Tesoros Textiles'),(156,'2024-04-30 11:21:00',93,8,18,2,18,'Inspiracion Creativa'),(157,'2024-04-30 09:42:00',62,20,1,1,1,'Artesanias de la Naturaleza'),(158,'2024-04-30 10:47:00',81,14,22,3,22,'Hilos y Tejidos'),(159,'2024-04-30 11:08:00',72,16,37,4,37,'Encanto y Belleza'),(160,'2024-04-30 11:32:00',27,11,10,2,10,'Maravillas del Arte'),(161,'2024-04-30 09:45:00',129,48,14,2,14,'Encanto Hecho a Mano'),(162,'2024-04-30 09:59:00',46,9,36,4,36,'Artesanias con Historia'),(163,'2024-04-30 10:30:00',90,21,3,1,3,'Mundo del Vidrio'),(164,'2024-04-30 10:46:00',101,23,30,4,30,'Creaciones del Mundo'),(165,'2024-04-30 09:09:00',58,17,40,5,40,'Creaciones del Mundo'),(166,'2024-04-30 10:59:00',58,8,3,1,3,'Mundo del Vidrio'),(167,'2024-04-30 10:17:00',172,40,1,1,1,'Artesanias de la Naturaleza'),(168,'2024-04-30 10:28:00',86,27,12,2,12,'Hecho a Mano'),(169,'2024-04-30 10:19:00',188,76,9,1,9,'Maravillas Textiles'),(170,'2024-04-30 11:27:00',200,49,5,1,5,'Encanto Artesanal'),(171,'2024-04-30 11:56:00',31,6,7,1,7,'Maravillas Artesanales'),(172,'2024-04-30 10:25:00',105,24,23,3,23,'Fantasia en Papel'),(173,'2024-04-30 11:54:00',32,20,24,3,24,'Suenos Artesanales'),(174,'2024-04-30 09:53:00',24,11,5,1,5,'Encanto Artesanal'),(175,'2024-04-30 10:53:00',165,47,44,5,44,'Arte y Tradicion'),(176,'2024-04-30 10:06:00',106,19,21,3,21,'Tesoros Textiles'),(177,'2024-04-30 10:29:00',166,27,2,1,2,'Tesoros del Pasado'),(178,'2024-04-30 09:49:00',70,8,10,2,10,'Maravillas del Arte'),(179,'2024-04-30 09:33:00',78,18,35,4,35,'Taller de Artesanias'),(180,'2024-04-30 11:06:00',243,42,18,2,18,'Inspiracion Creativa'),(181,'2024-04-30 10:39:00',91,30,28,3,28,'Maravillas del Arte'),(182,'2024-04-30 10:55:00',94,28,39,5,39,'Rincon de la Inspiracion'),(183,'2024-04-30 09:45:00',23,13,19,3,19,'Encanto y Belleza'),(184,'2024-04-30 11:29:00',45,19,44,5,44,'Arte y Tradicion'),(185,'2024-04-30 10:49:00',48,3,31,4,31,'Arte en Ceramica'),(186,'2024-04-30 11:25:00',11,1,24,3,24,'Suenos Artesanales'),(187,'2024-04-30 09:56:00',189,51,12,2,12,'Hecho a Mano'),(188,'2024-04-30 09:35:00',85,8,44,5,44,'Arte y Tradicion'),(189,'2024-04-30 09:42:00',44,18,31,4,31,'Arte en Ceramica'),(190,'2024-04-30 11:03:00',114,22,30,4,30,'Creaciones del Mundo'),(191,'2024-04-30 09:51:00',53,2,12,2,12,'Hecho a Mano'),(192,'2024-04-30 10:51:00',150,32,31,4,31,'Arte en Ceramica'),(193,'2024-04-30 11:08:00',34,15,18,2,18,'Inspiracion Creativa'),(194,'2024-04-30 11:40:00',37,11,25,3,25,'Creaciones Fantasticas'),(195,'2024-04-30 09:08:00',102,20,15,2,15,'Belleza Hecha a Mano'),(196,'2024-04-30 10:06:00',55,21,41,5,41,'Creatividad en Accion'),(197,'2024-04-30 11:13:00',40,7,7,1,7,'Maravillas Artesanales'),(198,'2024-04-30 10:28:00',58,26,17,2,17,'Manos Creativas'),(199,'2024-04-30 10:04:00',74,14,40,5,40,'Creaciones del Mundo'),(200,'2024-04-30 09:48:00',60,6,18,2,18,'Inspiracion Creativa'),(201,'2024-04-30 11:55:00',37,14,34,4,34,'Mundo de las Maravillas'),(202,'2024-04-30 11:25:00',181,45,15,2,15,'Belleza Hecha a Mano'),(203,'2024-04-30 09:27:00',113,22,31,4,31,'Arte en Ceramica'),(204,'2024-04-30 09:51:00',189,22,23,3,23,'Fantasia en Papel'),(205,'2024-04-30 09:48:00',82,9,1,1,1,'Artesanias de la Naturaleza'),(206,'2024-04-30 10:31:00',138,58,25,3,25,'Creaciones Fantasticas'),(207,'2024-04-30 09:48:00',112,8,35,4,35,'Taller de Artesanias'),(208,'2024-04-30 09:27:00',98,24,10,2,10,'Maravillas del Arte'),(209,'2024-04-30 09:18:00',111,20,29,4,29,'Creatividad en Expansion'),(210,'2024-04-30 10:40:00',146,42,14,2,14,'Encanto Hecho a Mano'),(211,'2024-04-30 09:09:00',22,2,12,2,12,'Hecho a Mano'),(212,'2024-04-30 09:27:00',115,16,16,2,16,'Creaciones con Amor'),(213,'2024-04-30 09:41:00',63,18,29,4,29,'Creatividad en Expansion'),(214,'2024-04-30 10:26:00',65,15,41,5,41,'Creatividad en Accion'),(215,'2024-04-30 09:54:00',56,17,18,2,18,'Inspiracion Creativa'),(216,'2024-04-30 09:46:00',51,8,26,3,26,'Mundo de la Creatividad'),(217,'2024-04-30 10:21:00',250,55,15,2,15,'Belleza Hecha a Mano'),(218,'2024-04-30 09:52:00',117,47,8,1,8,'Arte y Pasion'),(219,'2024-04-30 09:54:00',131,29,27,3,27,'Creaciones del Corazon'),(220,'2024-04-30 09:23:00',65,8,43,5,43,'Creaciones con Alma'),(221,'2024-04-30 10:23:00',208,50,34,4,34,'Mundo de las Maravillas'),(222,'2024-04-30 09:23:00',54,7,20,3,20,'Mundo Creativo'),(223,'2024-04-30 11:33:00',128,20,34,4,34,'Mundo de las Maravillas'),(224,'2024-04-30 10:58:00',106,18,13,2,13,'Tesoros Hechos a Mano'),(225,'2024-04-30 11:32:00',77,14,18,2,18,'Inspiracion Creativa'),(226,'2024-04-30 11:19:00',47,6,31,4,31,'Arte en Ceramica'),(227,'2024-04-30 10:13:00',99,24,22,3,22,'Hilos y Tejidos'),(228,'2024-04-30 10:54:00',53,8,25,3,25,'Creaciones Fantasticas'),(229,'2024-04-30 10:48:00',139,35,38,4,38,'Arte en Detalles'),(230,'2024-04-30 10:05:00',90,23,34,4,34,'Mundo de las Maravillas'),(231,'2024-04-30 09:52:00',86,24,1,1,1,'Artesanias de la Naturaleza'),(232,'2024-04-30 09:03:00',100,23,16,2,16,'Creaciones con Amor'),(233,'2024-04-30 09:04:00',193,50,30,4,30,'Creaciones del Mundo'),(234,'2024-04-30 11:09:00',75,13,12,2,12,'Hecho a Mano'),(235,'2024-04-30 11:05:00',24,14,29,4,29,'Creatividad en Expansion'),(236,'2024-04-30 11:33:00',96,23,42,5,42,'Rincones del Arte'),(237,'2024-04-30 09:24:00',135,43,44,5,44,'Arte y Tradicion'),(238,'2024-04-30 10:47:00',92,26,35,4,35,'Taller de Artesanias'),(239,'2024-04-30 11:47:00',139,48,21,3,21,'Tesoros Textiles'),(240,'2024-04-30 09:03:00',35,19,23,3,23,'Fantasia en Papel'),(241,'2024-04-30 09:32:00',142,38,27,3,27,'Creaciones del Corazon'),(242,'2024-04-30 11:28:00',123,22,6,1,6,'Mundo Artesano'),(243,'2024-04-30 10:20:00',23,10,39,5,39,'Rincon de la Inspiracion'),(244,'2024-04-30 10:01:00',89,27,32,4,32,'Mundo del Vidrio'),(245,'2024-04-30 11:09:00',66,19,2,1,2,'Tesoros del Pasado'),(246,'2024-04-30 11:50:00',91,19,34,4,34,'Mundo de las Maravillas'),(247,'2024-04-30 10:27:00',60,25,9,1,9,'Maravillas Textiles'),(248,'2024-04-30 11:13:00',23,17,7,1,7,'Maravillas Artesanales'),(249,'2024-04-30 10:06:00',31,14,15,2,15,'Belleza Hecha a Mano'),(250,'2024-04-30 10:23:00',57,17,29,4,29,'Creatividad en Expansion'),(251,'2024-04-30 10:29:00',118,10,20,3,20,'Mundo Creativo'),(252,'2024-04-30 10:50:00',146,24,11,2,11,'Joyas del Mundo'),(253,'2024-04-30 10:29:00',226,65,30,4,30,'Creaciones del Mundo'),(254,'2024-04-30 11:35:00',94,18,16,2,16,'Creaciones con Amor'),(255,'2024-04-30 09:30:00',60,9,19,3,19,'Encanto y Belleza'),(256,'2024-04-30 11:46:00',135,24,43,5,43,'Creaciones con Alma'),(257,'2024-04-30 11:31:00',98,12,42,5,42,'Rincones del Arte'),(258,'2024-04-30 10:50:00',44,11,33,4,33,'Madera y Arte'),(259,'2024-04-30 11:53:00',76,25,15,2,15,'Belleza Hecha a Mano'),(260,'2024-04-30 09:58:00',35,3,34,4,34,'Mundo de las Maravillas'),(261,'2024-04-30 09:50:00',103,18,26,3,26,'Mundo de la Creatividad'),(262,'2024-04-30 09:17:00',126,29,9,1,9,'Maravillas Textiles'),(263,'2024-04-30 10:14:00',52,11,7,1,7,'Maravillas Artesanales'),(264,'2024-04-30 09:31:00',99,15,33,4,33,'Madera y Arte'),(265,'2024-04-30 10:29:00',42,14,32,4,32,'Mundo del Vidrio'),(266,'2024-04-30 09:44:00',68,17,12,2,12,'Hecho a Mano'),(267,'2024-04-30 10:19:00',184,34,11,2,11,'Joyas del Mundo'),(268,'2024-04-30 11:46:00',65,11,6,1,6,'Mundo Artesano'),(269,'2024-04-30 10:07:00',64,21,8,1,8,'Arte y Pasion'),(270,'2024-04-30 10:12:00',22,10,44,5,44,'Arte y Tradicion'),(271,'2024-04-30 10:47:00',101,20,17,2,17,'Manos Creativas'),(272,'2024-04-30 10:58:00',106,17,13,2,13,'Tesoros Hechos a Mano'),(273,'2024-04-30 11:04:00',52,2,11,2,11,'Joyas del Mundo'),(274,'2024-04-30 10:06:00',145,40,28,3,28,'Maravillas del Arte'),(275,'2024-04-30 10:37:00',147,26,45,5,45,'Tesoros del Arte'),(276,'2024-04-30 10:47:00',76,16,17,2,17,'Manos Creativas'),(277,'2024-04-30 11:04:00',72,17,9,1,9,'Maravillas Textiles'),(278,'2024-04-30 09:50:00',82,25,12,2,12,'Hecho a Mano'),(279,'2024-04-30 10:42:00',93,33,8,1,8,'Arte y Pasion'),(280,'2024-04-30 10:01:00',177,41,26,3,26,'Mundo de la Creatividad'),(281,'2024-04-30 09:51:00',132,30,45,5,45,'Tesoros del Arte'),(282,'2024-04-30 11:32:00',109,37,24,3,24,'Suenos Artesanales'),(283,'2024-04-30 09:22:00',49,15,12,2,12,'Hecho a Mano'),(284,'2024-04-30 09:27:00',194,36,8,1,8,'Arte y Pasion'),(285,'2024-04-30 10:30:00',34,20,27,3,27,'Creaciones del Corazon'),(286,'2024-04-30 10:57:00',37,4,1,1,1,'Artesanias de la Naturaleza'),(287,'2024-04-30 10:59:00',131,14,8,1,8,'Arte y Pasion'),(288,'2024-04-30 11:00:00',83,11,2,1,2,'Tesoros del Pasado'),(289,'2024-04-30 09:02:00',76,19,43,5,43,'Creaciones con Alma'),(290,'2024-04-30 11:28:00',64,20,45,5,45,'Tesoros del Arte'),(291,'2024-04-30 11:05:00',67,22,10,2,10,'Maravillas del Arte'),(292,'2024-04-30 09:44:00',96,29,1,1,1,'Artesanias de la Naturaleza'),(293,'2024-04-30 10:34:00',63,23,32,4,32,'Mundo del Vidrio'),(294,'2024-04-30 10:51:00',34,17,4,1,4,'Artesanias del Mundo'),(295,'2024-04-30 10:59:00',19,8,4,1,4,'Artesanias del Mundo'),(296,'2024-04-30 10:17:00',124,26,30,4,30,'Creaciones del Mundo'),(297,'2024-04-30 09:24:00',61,16,18,2,18,'Inspiracion Creativa'),(298,'2024-04-30 10:37:00',95,26,7,1,7,'Maravillas Artesanales'),(299,'2024-04-30 09:09:00',35,10,19,3,19,'Encanto y Belleza'),(300,'2024-04-30 10:15:00',176,37,20,3,20,'Mundo Creativo'),(301,'2024-04-30 10:06:00',113,16,8,1,8,'Arte y Pasion'),(302,'2024-04-30 09:57:00',109,25,39,5,39,'Rincon de la Inspiracion'),(303,'2024-04-30 11:04:00',94,34,1,1,1,'Artesanias de la Naturaleza'),(304,'2024-04-30 10:57:00',26,16,43,5,43,'Creaciones con Alma'),(305,'2024-04-30 09:39:00',69,15,29,4,29,'Creatividad en Expansion'),(306,'2024-04-30 09:31:00',243,54,41,5,41,'Creatividad en Accion'),(307,'2024-04-30 09:27:00',67,7,42,5,42,'Rincones del Arte'),(308,'2024-04-30 11:38:00',97,26,15,2,15,'Belleza Hecha a Mano'),(309,'2024-04-30 10:18:00',97,24,12,2,12,'Hecho a Mano'),(310,'2024-04-30 09:59:00',90,15,29,4,29,'Creatividad en Expansion'),(311,'2024-04-30 09:21:00',23,9,10,2,10,'Maravillas del Arte'),(312,'2024-04-30 09:42:00',184,45,43,5,43,'Creaciones con Alma'),(313,'2024-04-30 11:36:00',85,19,29,4,29,'Creatividad en Expansion'),(314,'2024-04-30 11:42:00',61,11,4,1,4,'Artesanias del Mundo'),(315,'2024-04-30 10:53:00',158,32,37,4,37,'Encanto y Belleza'),(316,'2024-04-30 10:44:00',58,6,41,5,41,'Creatividad en Accion'),(317,'2024-04-30 11:32:00',170,53,43,5,43,'Creaciones con Alma'),(318,'2024-04-30 10:13:00',42,20,43,5,43,'Creaciones con Alma'),(319,'2024-04-30 10:05:00',31,4,31,4,31,'Arte en Ceramica'),(320,'2024-04-30 11:12:00',122,30,22,3,22,'Hilos y Tejidos'),(321,'2024-04-30 09:27:00',88,32,35,4,35,'Taller de Artesanias'),(322,'2024-04-30 11:43:00',52,12,11,2,11,'Joyas del Mundo'),(323,'2024-04-30 11:19:00',60,22,12,2,12,'Hecho a Mano'),(324,'2024-04-30 10:47:00',171,40,26,3,26,'Mundo de la Creatividad'),(325,'2024-04-30 11:00:00',163,38,38,4,38,'Arte en Detalles'),(326,'2024-04-30 10:26:00',62,4,16,2,16,'Creaciones con Amor'),(327,'2024-04-30 10:04:00',82,7,16,2,16,'Creaciones con Amor'),(328,'2024-04-30 11:45:00',53,3,4,1,4,'Artesanias del Mundo'),(329,'2024-04-30 11:45:00',36,6,42,5,42,'Rincones del Arte'),(330,'2024-04-30 10:23:00',47,14,29,4,29,'Creatividad en Expansion'),(331,'2024-04-30 10:11:00',92,26,5,1,5,'Encanto Artesanal'),(332,'2024-04-30 11:57:00',143,34,7,1,7,'Maravillas Artesanales'),(333,'2024-04-30 10:04:00',147,42,3,1,3,'Mundo del Vidrio'),(334,'2024-04-30 09:52:00',121,41,8,1,8,'Arte y Pasion'),(335,'2024-04-30 11:47:00',81,31,45,5,45,'Tesoros del Arte'),(336,'2024-04-30 10:58:00',224,48,17,2,17,'Manos Creativas'),(337,'2024-04-30 11:06:00',61,4,27,3,27,'Creaciones del Corazon'),(338,'2024-04-30 10:49:00',88,17,10,2,10,'Maravillas del Arte'),(339,'2024-04-30 09:19:00',45,20,29,4,29,'Creatividad en Expansion'),(340,'2024-04-30 11:08:00',95,9,9,1,9,'Maravillas Textiles'),(341,'2024-04-30 11:07:00',89,16,22,3,22,'Hilos y Tejidos'),(342,'2024-04-30 10:38:00',101,14,28,3,28,'Maravillas del Arte'),(343,'2024-04-30 10:41:00',35,9,32,4,32,'Mundo del Vidrio'),(344,'2024-04-30 10:55:00',20,11,20,3,20,'Mundo Creativo'),(345,'2024-04-30 10:03:00',73,34,26,3,26,'Mundo de la Creatividad'),(346,'2024-04-30 09:02:00',72,20,25,3,25,'Creaciones Fantasticas'),(347,'2024-04-30 10:55:00',108,20,35,4,35,'Taller de Artesanias'),(348,'2024-04-30 10:19:00',13,2,5,1,5,'Encanto Artesanal'),(349,'2024-04-30 11:37:00',88,27,10,2,10,'Maravillas del Arte'),(350,'2024-04-30 10:38:00',61,14,6,1,6,'Mundo Artesano'),(351,'2024-04-30 10:33:00',138,29,3,1,3,'Mundo del Vidrio'),(352,'2024-04-30 10:53:00',60,16,11,2,11,'Joyas del Mundo'),(353,'2024-04-30 10:14:00',100,37,14,2,14,'Encanto Hecho a Mano'),(354,'2024-04-30 11:19:00',61,10,9,1,9,'Maravillas Textiles'),(355,'2024-04-30 10:45:00',42,18,9,1,9,'Maravillas Textiles'),(356,'2024-04-30 09:27:00',73,31,13,2,13,'Tesoros Hechos a Mano'),(357,'2024-04-30 10:37:00',93,12,28,3,28,'Maravillas del Arte'),(358,'2024-04-30 11:24:00',56,16,19,3,19,'Encanto y Belleza'),(359,'2024-04-30 09:42:00',47,9,18,2,18,'Inspiracion Creativa'),(360,'2024-04-30 11:07:00',115,27,33,4,33,'Madera y Arte'),(361,'2024-04-30 10:02:00',65,20,34,4,34,'Mundo de las Maravillas'),(362,'2024-04-30 11:29:00',148,39,24,3,24,'Suenos Artesanales'),(363,'2024-04-30 11:55:00',28,15,21,3,21,'Tesoros Textiles'),(364,'2024-04-30 11:01:00',100,17,21,3,21,'Tesoros Textiles'),(365,'2024-04-30 11:32:00',30,4,42,5,42,'Rincones del Arte'),(366,'2024-04-30 09:47:00',132,32,30,4,30,'Creaciones del Mundo'),(367,'2024-04-30 10:15:00',169,40,36,4,36,'Artesanias con Historia'),(368,'2024-04-30 10:53:00',60,10,23,3,23,'Fantasia en Papel'),(369,'2024-04-30 10:04:00',97,17,24,3,24,'Suenos Artesanales'),(370,'2024-04-30 11:31:00',248,56,45,5,45,'Tesoros del Arte'),(371,'2024-04-30 10:45:00',95,12,6,1,6,'Mundo Artesano'),(372,'2024-04-30 11:51:00',140,37,9,1,9,'Maravillas Textiles'),(373,'2024-04-30 09:03:00',72,4,13,2,13,'Tesoros Hechos a Mano'),(374,'2024-04-30 11:11:00',110,5,24,3,24,'Suenos Artesanales'),(375,'2024-04-30 09:00:00',37,12,11,2,11,'Joyas del Mundo'),(376,'2024-04-30 11:26:00',63,16,15,2,15,'Belleza Hecha a Mano'),(377,'2024-04-30 10:03:00',12,3,40,5,40,'Creaciones del Mundo'),(378,'2024-04-30 09:05:00',55,14,9,1,9,'Maravillas Textiles'),(379,'2024-04-30 09:49:00',31,16,3,1,3,'Mundo del Vidrio'),(380,'2024-04-30 10:10:00',92,25,29,4,29,'Creatividad en Expansion'),(381,'2024-04-30 09:04:00',122,23,41,5,41,'Creatividad en Accion'),(382,'2024-04-30 10:08:00',24,10,12,2,12,'Hecho a Mano'),(383,'2024-04-30 09:06:00',81,23,26,3,26,'Mundo de la Creatividad'),(384,'2024-04-30 10:02:00',27,8,35,4,35,'Taller de Artesanias'),(385,'2024-04-30 09:37:00',143,26,7,1,7,'Maravillas Artesanales'),(386,'2024-04-30 09:34:00',109,13,30,4,30,'Creaciones del Mundo'),(387,'2024-04-30 11:20:00',120,38,31,4,31,'Arte en Ceramica'),(388,'2024-04-30 09:21:00',45,3,14,2,14,'Encanto Hecho a Mano'),(389,'2024-04-30 10:49:00',40,14,36,4,36,'Artesanias con Historia'),(390,'2024-04-30 10:33:00',99,30,10,2,10,'Maravillas del Arte'),(391,'2024-04-30 09:49:00',118,33,28,3,28,'Maravillas del Arte'),(392,'2024-04-30 09:36:00',73,20,35,4,35,'Taller de Artesanias'),(393,'2024-04-30 11:19:00',88,25,21,3,21,'Tesoros Textiles'),(394,'2024-04-30 09:48:00',36,6,27,3,27,'Creaciones del Corazon'),(395,'2024-04-30 10:33:00',90,48,20,3,20,'Mundo Creativo'),(396,'2024-04-30 09:42:00',134,39,31,4,31,'Arte en Ceramica'),(397,'2024-04-30 11:59:00',109,31,6,1,6,'Mundo Artesano'),(398,'2024-04-30 09:28:00',114,22,45,5,45,'Tesoros del Arte'),(399,'2024-04-30 09:44:00',165,51,45,5,45,'Tesoros del Arte'),(400,'2024-04-30 10:09:00',23,9,5,1,5,'Encanto Artesanal'),(401,'2024-04-30 10:26:00',103,31,32,4,32,'Mundo del Vidrio'),(402,'2024-04-30 09:29:00',118,27,45,5,45,'Tesoros del Arte'),(403,'2024-04-30 10:04:00',105,13,39,5,39,'Rincon de la Inspiracion'),(404,'2024-04-30 10:23:00',132,40,43,5,43,'Creaciones con Alma'),(405,'2024-04-30 10:39:00',35,5,9,1,9,'Maravillas Textiles'),(406,'2024-04-30 11:12:00',91,8,25,3,25,'Creaciones Fantasticas'),(407,'2024-04-30 11:02:00',131,21,41,5,41,'Creatividad en Accion'),(408,'2024-04-30 09:52:00',74,14,42,5,42,'Rincones del Arte'),(409,'2024-04-30 11:36:00',132,39,41,5,41,'Creatividad en Accion'),(410,'2024-04-30 09:44:00',52,1,44,5,44,'Arte y Tradicion'),(411,'2024-04-30 10:10:00',111,39,35,4,35,'Taller de Artesanias'),(412,'2024-04-30 11:14:00',74,15,31,4,31,'Arte en Ceramica'),(413,'2024-04-30 10:23:00',94,22,5,1,5,'Encanto Artesanal'),(414,'2024-04-30 11:07:00',87,26,13,2,13,'Tesoros Hechos a Mano'),(415,'2024-04-30 11:33:00',216,58,36,4,36,'Artesanias con Historia'),(416,'2024-04-30 09:22:00',167,33,9,1,9,'Maravillas Textiles'),(417,'2024-04-30 10:48:00',23,13,29,4,29,'Creatividad en Expansion'),(418,'2024-04-30 09:02:00',226,48,6,1,6,'Mundo Artesano'),(419,'2024-04-30 11:14:00',103,29,34,4,34,'Mundo de las Maravillas'),(420,'2024-04-30 09:31:00',97,17,16,2,16,'Creaciones con Amor'),(421,'2024-04-30 09:39:00',111,33,12,2,12,'Hecho a Mano'),(422,'2024-04-30 11:07:00',121,23,16,2,16,'Creaciones con Amor'),(423,'2024-04-30 10:06:00',88,40,34,4,34,'Mundo de las Maravillas'),(424,'2024-04-30 09:44:00',163,44,22,3,22,'Hilos y Tejidos'),(425,'2024-04-30 11:59:00',107,38,14,2,14,'Encanto Hecho a Mano'),(426,'2024-04-30 10:09:00',179,54,36,4,36,'Artesanias con Historia'),(427,'2024-04-30 10:09:00',104,23,27,3,27,'Creaciones del Corazon'),(428,'2024-04-30 10:17:00',265,47,44,5,44,'Arte y Tradicion'),(429,'2024-04-30 10:51:00',49,8,29,4,29,'Creatividad en Expansion'),(430,'2024-04-30 10:27:00',112,40,43,5,43,'Creaciones con Alma'),(431,'2024-04-30 11:58:00',28,5,30,4,30,'Creaciones del Mundo'),(432,'2024-04-30 10:07:00',92,26,8,1,8,'Arte y Pasion'),(433,'2024-04-30 11:32:00',16,11,1,1,1,'Artesanias de la Naturaleza'),(434,'2024-04-30 11:06:00',71,20,44,5,44,'Arte y Tradicion'),(435,'2024-04-30 09:13:00',81,33,30,4,30,'Creaciones del Mundo'),(436,'2024-04-30 10:43:00',86,34,23,3,23,'Fantasia en Papel'),(437,'2024-04-30 11:19:00',88,18,12,2,12,'Hecho a Mano'),(438,'2024-04-30 11:20:00',34,4,11,2,11,'Joyas del Mundo'),(439,'2024-04-30 09:46:00',108,24,40,5,40,'Creaciones del Mundo'),(440,'2024-04-30 11:09:00',43,10,40,5,40,'Creaciones del Mundo'),(441,'2024-04-30 10:14:00',113,24,14,2,14,'Encanto Hecho a Mano'),(442,'2024-04-30 09:07:00',73,19,27,3,27,'Creaciones del Corazon'),(443,'2024-04-30 10:02:00',205,51,12,2,12,'Hecho a Mano'),(444,'2024-04-30 11:27:00',12,7,2,1,2,'Tesoros del Pasado'),(445,'2024-04-30 09:28:00',34,15,39,5,39,'Rincon de la Inspiracion'),(446,'2024-04-30 10:00:00',193,23,9,1,9,'Maravillas Textiles'),(447,'2024-04-30 09:05:00',118,33,30,4,30,'Creaciones del Mundo'),(448,'2024-04-30 10:25:00',66,19,3,1,3,'Mundo del Vidrio'),(449,'2024-04-30 11:19:00',153,30,43,5,43,'Creaciones con Alma'),(450,'2024-04-30 10:42:00',139,37,36,4,36,'Artesanias con Historia'),(451,'2024-04-30 11:23:00',76,26,14,2,14,'Encanto Hecho a Mano'),(452,'2024-04-30 09:36:00',40,10,44,5,44,'Arte y Tradicion'),(453,'2024-04-30 10:19:00',15,2,25,3,25,'Creaciones Fantasticas'),(454,'2024-04-30 11:22:00',16,6,29,4,29,'Creatividad en Expansion'),(455,'2024-04-30 10:16:00',149,34,18,2,18,'Inspiracion Creativa'),(456,'2024-04-30 11:52:00',37,3,23,3,23,'Fantasia en Papel'),(457,'2024-04-30 11:59:00',181,41,4,1,4,'Artesanias del Mundo'),(458,'2024-04-30 09:32:00',137,34,44,5,44,'Arte y Tradicion'),(459,'2024-04-30 09:51:00',92,36,25,3,25,'Creaciones Fantasticas'),(460,'2024-04-30 11:30:00',176,55,6,1,6,'Mundo Artesano'),(461,'2024-04-30 11:17:00',56,18,31,4,31,'Arte en Ceramica'),(462,'2024-04-30 09:46:00',155,37,15,2,15,'Belleza Hecha a Mano'),(463,'2024-04-30 09:31:00',164,36,28,3,28,'Maravillas del Arte'),(464,'2024-04-30 11:29:00',31,7,10,2,10,'Maravillas del Arte'),(465,'2024-04-30 09:19:00',99,19,12,2,12,'Hecho a Mano'),(466,'2024-04-30 11:24:00',107,19,23,3,23,'Fantasia en Papel'),(467,'2024-04-30 09:36:00',14,1,1,1,1,'Artesanias de la Naturaleza'),(468,'2024-04-30 09:20:00',79,19,45,5,45,'Tesoros del Arte'),(469,'2024-04-30 11:05:00',158,37,39,5,39,'Rincon de la Inspiracion'),(470,'2024-04-30 09:38:00',76,11,28,3,28,'Maravillas del Arte'),(471,'2024-04-30 10:57:00',85,29,24,3,24,'Suenos Artesanales'),(472,'2024-04-30 10:30:00',50,21,25,3,25,'Creaciones Fantasticas'),(473,'2024-04-30 11:53:00',100,40,22,3,22,'Hilos y Tejidos'),(474,'2024-04-30 10:29:00',22,3,39,5,39,'Rincon de la Inspiracion'),(475,'2024-04-30 09:07:00',39,14,27,3,27,'Creaciones del Corazon'),(476,'2024-04-30 09:13:00',41,1,3,1,3,'Mundo del Vidrio'),(477,'2024-04-30 09:43:00',121,31,4,1,4,'Artesanias del Mundo'),(478,'2024-04-30 09:11:00',66,16,15,2,15,'Belleza Hecha a Mano'),(479,'2024-04-30 11:19:00',114,38,22,3,22,'Hilos y Tejidos'),(480,'2024-04-30 11:22:00',151,35,38,4,38,'Arte en Detalles'),(481,'2024-04-30 11:31:00',35,2,19,3,19,'Encanto y Belleza'),(482,'2024-04-30 09:27:00',101,37,27,3,27,'Creaciones del Corazon'),(483,'2024-04-30 10:00:00',57,4,25,3,25,'Creaciones Fantasticas'),(484,'2024-04-30 10:56:00',120,30,5,1,5,'Encanto Artesanal'),(485,'2024-04-30 10:26:00',67,18,8,1,8,'Arte y Pasion'),(486,'2024-04-30 11:37:00',132,28,32,4,32,'Mundo del Vidrio'),(487,'2024-04-30 09:58:00',100,29,13,2,13,'Tesoros Hechos a Mano'),(488,'2024-04-30 09:53:00',8,3,32,4,32,'Mundo del Vidrio'),(489,'2024-04-30 09:31:00',136,47,11,2,11,'Joyas del Mundo'),(490,'2024-04-30 10:15:00',176,29,34,4,34,'Mundo de las Maravillas'),(491,'2024-04-30 09:26:00',153,33,38,4,38,'Arte en Detalles'),(492,'2024-04-30 09:36:00',86,21,37,4,37,'Encanto y Belleza'),(493,'2024-04-30 09:45:00',98,17,13,2,13,'Tesoros Hechos a Mano'),(494,'2024-04-30 10:34:00',25,16,10,2,10,'Maravillas del Arte'),(495,'2024-04-30 09:47:00',233,51,19,3,19,'Encanto y Belleza'),(496,'2024-04-30 09:40:00',64,32,12,2,12,'Hecho a Mano'),(497,'2024-04-30 09:13:00',25,12,41,5,41,'Creatividad en Accion'),(498,'2024-04-30 10:14:00',33,8,45,5,45,'Tesoros del Arte'),(499,'2024-04-30 11:51:00',34,15,10,2,10,'Maravillas del Arte'),(500,'2024-04-30 09:36:00',171,49,34,4,34,'Mundo de las Maravillas'),(504,'2024-05-13 02:04:49',30,10,15,2,15,'Accesorios para el cabello artesanales');
/*!40000 ALTER TABLE `tabla_venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_after_insert` AFTER INSERT ON `tabla_venta` FOR EACH ROW INSERT INTO Auditoria(Accion,Usuario,Fecha_Hora,Observacion) 
VALUES ("INSERT",CURRENT_USER(),NOW(),"Se inserto correctamente en tabla venta") */;;
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
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_Before_delete` BEFORE DELETE ON `tabla_venta` FOR EACH ROW INSERT INTO Auditoria(Accion,Usuario,Fecha_Hora,Observacion,Campo_Anterior)
VALUES ("DELETE",CURRENT_USER(),CURDATE(),"Se elimino correctamente en la tabla venta",OLD.ID_Vta) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `top_10_ventas`
--

DROP TABLE IF EXISTS `top_10_ventas`;
/*!50001 DROP VIEW IF EXISTS `top_10_ventas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_10_ventas` AS SELECT 
 1 AS `ID_Art`,
 1 AS `Dia`,
 1 AS `Hora`,
 1 AS `Total_Ventas`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'los_artesanos_'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_buscar_artesano` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_buscar_artesano`(p_id int) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE nombre_artesano varchar(50);
		SELECT Nombre_Art INTO nombre_artesano FROM tabla_artesanos WHERE ID_Art=p_id;
RETURN nombre_artesano;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_buscar_email` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_buscar_email`(p_dato VARCHAR(50)) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE email VARCHAR(50);
    DECLARE consulta VARCHAR(20);
    SET consulta= concat('%', p_dato,'%');
    
		SELECT 
    Email_Art
INTO email FROM
    tabla_artesanos
WHERE
    Email_Art LIKE consulta;
	RETURN email;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_IVA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_IVA`(in n_prod varchar(50), in iva decimal(3,2))
BEGIN
   DECLARE like_ VARCHAR(20);
	SET like_ = CONCAT('%',n_prod,'%');
   SELECT nombre_prod,(Precio_Prod * iva) AS precio_IVA FROM TABLA_PRODUCTOS WHERE nombre_prod like like_;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_valores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_valores`(in n_prod int)
BEGIN
	SELECT
	Nombre_Prod FROM tabla_productos WHERE Precio_Prod > n_prod;
    
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `artesanos_por_region`
--

/*!50001 DROP VIEW IF EXISTS `artesanos_por_region`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `artesanos_por_region` AS select `tabla_artesanos`.`Region_Art` AS `Region de Artesanos`,count(0) AS `Total_Artesanos` from `tabla_artesanos` group by `tabla_artesanos`.`Region_Art` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ciudad_de_artesanos`
--

/*!50001 DROP VIEW IF EXISTS `ciudad_de_artesanos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ciudad_de_artesanos` AS select distinct `tabla_artesanos`.`Ciudad_Art` AS `Ciudad de Artesanos` from `tabla_artesanos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `largo_del_nombre_del_producto`
--

/*!50001 DROP VIEW IF EXISTS `largo_del_nombre_del_producto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `largo_del_nombre_del_producto` AS select length(`tabla_productos`.`Nombre_Prod`) AS `Largo Nombre Producto` from `tabla_productos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nombre_en_mayuscula_del_producto`
--

/*!50001 DROP VIEW IF EXISTS `nombre_en_mayuscula_del_producto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nombre_en_mayuscula_del_producto` AS select upper(`tabla_productos`.`Nombre_Prod`) AS `Nombre Producto` from `tabla_productos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nombre_en_minuscula_del_producto`
--

/*!50001 DROP VIEW IF EXISTS `nombre_en_minuscula_del_producto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nombre_en_minuscula_del_producto` AS select lower(`tabla_productos`.`Nombre_Prod`) AS `Nombre Producto` from `tabla_productos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `numero_de_artesanos`
--

/*!50001 DROP VIEW IF EXISTS `numero_de_artesanos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `numero_de_artesanos` AS select count(`tabla_artesanos`.`Nombre_Art`) AS `Cantidad de Artesanos` from `tabla_artesanos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productos_por_categoria`
--

/*!50001 DROP VIEW IF EXISTS `productos_por_categoria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productos_por_categoria` AS select `c`.`Nombre_Cat` AS `Nombre_Cat`,count(`p`.`ID_Prod`) AS `TotalProductos` from (`tabla_categorias` `c` join `tabla_productos` `p` on((`c`.`ID_Cat` = `p`.`ID_Cat`))) group by `c`.`Nombre_Cat` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_10_ventas`
--

/*!50001 DROP VIEW IF EXISTS `top_10_ventas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_10_ventas` AS select `tabla_venta`.`ID_Art` AS `ID_Art`,dayofmonth(`tabla_venta`.`Fecha_Hora`) AS `Dia`,hour(`tabla_venta`.`Fecha_Hora`) AS `Hora`,sum((`tabla_venta`.`articulos_vendidos_vta` * `tabla_venta`.`Precio_vta`)) AS `Total_Ventas` from `tabla_venta` group by `tabla_venta`.`ID_Art`,`Dia`,`Hora` order by `Total_Ventas` desc limit 10 */;
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

-- Dump completed on 2024-05-14 22:02:56
