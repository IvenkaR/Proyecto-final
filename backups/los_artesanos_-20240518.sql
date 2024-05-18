mysqldump: [Warning] Using a password on the command line interface can be insecure.
-- MySQL dump 10.13  Distrib 8.4.0, for Linux (x86_64)
--
-- Host: localhost    Database: los_artesanos_
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Temporary view structure for view `artesanos_por_region`
--

DROP TABLE IF EXISTS `artesanos_por_region`;
/*!50001 DROP VIEW IF EXISTS `artesanos_por_region`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `artesanos_por_region` AS SELECT 
 1 AS `Region_de_Artesanos`,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
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
 1 AS `Ciudad_de_Artesanos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `largo_del_nombre_del_producto`
--

DROP TABLE IF EXISTS `largo_del_nombre_del_producto`;
/*!50001 DROP VIEW IF EXISTS `largo_del_nombre_del_producto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `largo_del_nombre_del_producto` AS SELECT 
 1 AS `Largo_Nombre_Producto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `nombre_en_mayuscula_del_producto`
--

DROP TABLE IF EXISTS `nombre_en_mayuscula_del_producto`;
/*!50001 DROP VIEW IF EXISTS `nombre_en_mayuscula_del_producto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nombre_en_mayuscula_del_producto` AS SELECT 
 1 AS `Nombre_Producto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `nombre_en_minuscula_del_producto`
--

DROP TABLE IF EXISTS `nombre_en_minuscula_del_producto`;
/*!50001 DROP VIEW IF EXISTS `nombre_en_minuscula_del_producto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nombre_en_minuscula_del_producto` AS SELECT 
 1 AS `Nombre_Producto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `numero_de_artesanos`
--

DROP TABLE IF EXISTS `numero_de_artesanos`;
/*!50001 DROP VIEW IF EXISTS `numero_de_artesanos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `numero_de_artesanos` AS SELECT 
 1 AS `Cantidad_de_Artesanos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `productos_por_categoria`
--

DROP TABLE IF EXISTS `productos_por_categoria`;
/*!50001 DROP VIEW IF EXISTS `productos_por_categoria`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productos_por_categoria` AS SELECT 
 1 AS `Nombre_Categoria`,
 1 AS `Total_Productos`*/;
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
INSERT INTO `tabla_artesanos` VALUES (1,'florentia','island','sachtjen','7','33705','florida','saint_petersburg','81325350','fisland0@mozilla.com\r'),(2,'avrom','gornall','bunting','267','32220','florida','jacksonville','90420936','agornall1@nature.com\r'),(3,'helge','ferrey','grasskamp','773','95818','california','sacramento','91616661','hferrey2@hao123.com\r'),(4,'coraline','le_brom','sage','48186','30340','georgia','atlanta','77053706','clebrom3@theatlantic.com\r'),(5,'hamilton','foat','melvin','332','95113','california','san_jose','65021599','hfoat4@msn.com\r'),(6,'jessica','guillain','lerdahl','2','92710','california','irvine','71443026','jguillain5@ted.com\r'),(7,'corenda','wase','4th','5','27264','north_carolina','high_point','33624345','cwase6@free.fr\r'),(8,'emmi','waldron','sutherland','99','33320','florida','fort_lauderdale','75469811','ewaldron7@about.com\r'),(9,'charlean','fri','park_meadow','3','63104','missouri','saint_louis','31418136','cfri8@topsy.com\r'),(10,'ber','blindt','randy','35','20520','district_of_columbia','washington','20229847','bblindt9@wired.com\r'),(11,'thayne','inderwick','cottonwood','86156','45243','ohio','cincinnati','51326837','tinderwicka@google.fr\r'),(12,'chev','halligan','waubesa','4428','93111','california','santa_barbara','70283560','challiganb@sakura.ne.jp\r'),(13,'alan','eason','emmet','34','77223','texas','houston','71382972','aeasonc@discuz.net\r'),(14,'hussein','domokos','dawn','657','10131','new_york','new_york_city','21271320','hdomokosd@walmart.com\r'),(15,'jakob','assel','clemons','706','48335','michigan','farmington','24880148','jassele@foxnews.com\r'),(16,'jocko','cartman','prentice','38','64054','missouri','independence','81617876','jcartmanf@icq.com\r'),(17,'lina','waples','dixon','43525','25709','west_virginia','huntington','30496641','lwaplesg@artisteer.com\r'),(18,'andrea','ticksall','schmedeman','175','76162','texas','fort_worth','68283585','aticksallh@tripod.com\r'),(19,'hobey','eilles','cordelia','95','78044','texas','laredo','95668452','heillesi@ehow.com\r'),(20,'johanna','luetkemeyers','maple_wood','2369','77010','texas','houston','83261741','jluetkemeyersj@sphinn.com\r'),(21,'antony','desantis','doe_crossing','815','98185','washington','seattle','20672715','adesantisk@telegraph.co.uk\r'),(22,'lanae','eplett','namekagon','76','93709','california','fresno','55922906','leplettl@360.cn\r'),(23,'alikee','shepley','jackson','89','22156','virginia','springfield','57152062','ashepleym@google.com.hk\r'),(24,'dana','tunnicliffe','forster','9411','83206','idaho','pocatello','20867695','dtunnicliffen@adobe.com\r'),(25,'riordan','shipman','monument','22248','85732','arizona','tucson','52048942','rshipmano@constantcontact.com\r'),(26,'geno','bygreaves','straubel','785','25709','west_virginia','huntington','30428344','gbygreavesp@wordpress.com\r'),(27,'kendrick','gladdis','hallows','96530','21705','maryland','frederick','24058926','kgladdisq@yandex.ru\r'),(28,'bibbie','aucoate','rockefeller','3','6160','connecticut','hartford','86038295','baucoater@chronoengine.com\r'),(29,'flore','binney','carey','5753','7305','new_jersey','jersey_city','20146852','fbinneys@telegraph.co.uk\r'),(30,'hannie','houlton','beilfuss','6008','79405','texas','lubbock','80619567','hhoultont@icio.us\r'),(31,'ryann','eivers','elka','9357','83722','idaho','boise','20859533','reiversu@ebay.com\r'),(32,'alaine','gerasch','sugar','63','87592','new_mexico','santa_fe','50552681','ageraschv@intel.com\r'),(33,'christos','cunnah','reinke','19','82007','wyoming','cheyenne','30788393','ccunnahw@wordpress.com\r'),(34,'jan','gisborne','dennis','2','80310','colorado','boulder','30326119','jgisbornex@163.com\r'),(35,'natalee','dewick','shoshone','96','77040','texas','houston','28136719','ndewicky@infoseek.co.jp\r'),(36,'tessie','manhare','dixon','12','78789','texas','austin','51274409','tmanharez@pcworld.com\r'),(37,'rozina','chitham','roth','9456','61629','illinois','peoria','30963221','rchitham10@sakura.ne.jp\r'),(38,'toinette','suttaby','dovetail','4','55188','minnesota','saint_paul','65162832','tsuttaby11@w3.org\r'),(39,'timothy','creane','claremont','89286','95813','california','sacramento','91654817','tcreane12@independent.co.uk\r'),(40,'milton','gramer','buena_vista','12667','32123','florida','daytona_beach','38668402','mgramer13@bluehost.com\r'),(41,'isahella','gowanlock','bluejay','748','92145','california','san_diego','85836629','igowanlock14@myspace.com\r'),(42,'audrey','potbury','ohio','8','35487','alabama','tuscaloosa','20525155','apotbury15@lycos.com\r'),(43,'allx','lovemore','onsgard','51','75397','texas','dallas','21411677','alovemore16@bloglines.com\r'),(44,'karlene','pizzey','fisk','52','27116','north_carolina','winston_salem','33610875','kpizzey17@barnesandnoble.com\r'),(45,'rudolfo','zelland','michigan','1950','32813','florida','orlando','32146332','rzelland18@lulu.com\r');
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
  `Precio_Prod` decimal(12,4) DEFAULT NULL,
  `Unidad_Prod` tinyint DEFAULT NULL,
  PRIMARY KEY (`ID_Boleta`),
  KEY `FK_BOLETA_PRODUCTO` (`ID_Prod`),
  KEY `FK_BOLETA_VTA` (`ID_Vta`),
  CONSTRAINT `FK_BOLETA_PRODUCTO` FOREIGN KEY (`ID_Prod`) REFERENCES `tabla_productos` (`ID_Prod`),
  CONSTRAINT `FK_BOLETA_VTA` FOREIGN KEY (`ID_Vta`) REFERENCES `tabla_venta` (`ID_Vta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_boleta`
--

LOCK TABLES `tabla_boleta` WRITE;
/*!40000 ALTER TABLE `tabla_boleta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabla_boleta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_after_update` AFTER INSERT ON `tabla_boleta` FOR EACH ROW BEGIN 
    DECLARE V_ID_Vta MEDIUMINT;
    DECLARE Total_vta DOUBLE;
    
    SET V_ID_Vta = NEW.ID_Vta;

    SET Total_vta = (SELECT SUM(Precio_Prod * NEW.Unidad_Prod) FROM tabla_productos WHERE ID_Prod = NEW.ID_Prod);

    IF Total_vta IS NOT NULL THEN
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
INSERT INTO `tabla_categorias` VALUES (1,'accesorios_personales'),(2,'artesania_decorativa'),(3,'artesania_textil'),(4,'hogar_y_cocina'),(5,'juguetes_y_entretenimiento');
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
  `Total_vta` decimal(12,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_factura`
--

LOCK TABLES `tabla_factura` WRITE;
/*!40000 ALTER TABLE `tabla_factura` DISABLE KEYS */;
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
  `Precio_Prod` decimal(12,4) DEFAULT NULL,
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
INSERT INTO `tabla_productos` VALUES (1,1,15,'accesorios_para_el_cabello_artesanales','dolar',30.0000,45138),(2,1,34,'bisuteria_con_materiales_reciclados','dolar',12.0000,47102),(3,1,12,'bisuteria_con_piedras_naturales','dolar',28.0000,70651),(4,1,29,'bolsos_de_tela_estampada','dolar',10.0000,21393),(5,1,26,'bolsos_y_carteras_de_cuero','dolar',51.0000,37534),(6,1,25,'broches_de_cermica','dolar',25.0000,37418),(7,1,8,'broches_y_pines_decorativos','dolar',47.0000,30194),(8,1,22,'cinturones_de_cuero_decorados','dolar',10.0000,53933),(9,1,25,'collares_de_conchas_marinas','dolar',17.0000,65805),(10,1,6,'collares_para_mascotas','dolar',34.0000,77085),(11,1,16,'diademas_y_coronas_florales','dolar',57.0000,72722),(12,1,45,'foulards_pintados_a_mano','dolar',24.0000,35294),(13,1,43,'gafas_de_sol_artesanales','dolar',44.0000,65356),(14,1,23,'gemelos_para_camisas','dolar',53.0000,23435),(15,1,40,'collares','dolar',25.0000,26246),(16,1,16,'pulseras','dolar',32.0000,54566),(17,1,38,'pendientes','dolar',45.0000,45698),(18,1,7,'joyeria_de_plata_martillada','dolar',31.0000,38308),(19,1,33,'llaveros_personalizados','dolar',13.0000,95296),(20,1,6,'pendientes_y_colgantes_de_macrame','dolar',10.0000,68390),(21,1,2,'pulseras_y_anillos_de_metal','dolar',27.0000,50460),(22,1,31,'sombreros_y_gorras_tejidos','dolar',41.0000,36044),(23,2,33,'adornos_para_el_rbol_de_navidad','dolar',13.0000,59218),(24,2,16,'arte_en_papel_mache','dolar',25.0000,68951),(25,2,39,'vasos_en_vidrio','dolar',14.0000,33480),(26,2,36,'lmparas_en_vidrio','dolar',17.0000,66738),(27,2,3,'vitrales_en_vidrio','dolar',30.0000,51803),(28,2,5,'candelabros','dolar',33.0000,18352),(29,2,32,'platos_de_ceramica','dolar',22.0000,35521),(30,2,30,'jarrones_de_ceramica','dolar',51.0000,70823),(31,2,11,'tazas_de_ceramica','dolar',45.0000,58881),(32,2,43,'cuadros_pintados_a_mano','dolar',60.0000,91005),(33,2,12,'esculturas_de_arcilla','dolar',33.0000,60333),(34,2,24,'esculturas_de_madera','dolar',37.0000,82951),(35,2,40,'esculturas_en_metal','dolar',36.0000,85034),(36,2,9,'esculturas_en_piedra','dolar',43.0000,60083),(37,2,12,'fotografias_enmarcadas','dolar',16.0000,41383),(38,2,30,'fuentes_de_agua_decorativas','dolar',59.0000,12006),(39,2,41,'jarrones_de_cermica','dolar',9.0000,40961),(40,2,4,'letras_decorativas_para_pared','dolar',47.0000,48810),(41,2,28,'marcos_de_fotos_decorativos','dolar',18.0000,89653),(42,2,2,'mosaicos_decorativos','dolar',46.0000,18332),(43,2,24,'banderas_en_tela','dolar',26.0000,61358),(44,2,31,'tapices_en_tela','dolar',30.0000,54145),(45,2,6,'tapices_con_motivos_etnicos','dolar',16.0000,73799),(46,2,5,'tapices_decorativos','dolar',5.0000,95549),(47,2,40,'titeres_y_marionetas_decorativas','dolar',33.0000,40323),(48,3,35,'ropa_para_mascotas_tejida','dolar',8.0000,71772),(49,3,34,'alfombras_de_nudos','dolar',13.0000,25843),(50,3,24,'alfombras_tejidas_a_mano','dolar',5.0000,99581),(51,3,19,'bolsas_de_tela_pintadas_a_mano','dolar',40.0000,43245),(52,3,14,'bolsos_de_fieltro','dolar',43.0000,92309),(53,3,15,'bolsos_de_ganchillo','dolar',56.0000,92157),(54,3,10,'bolsos_de_tela_estampada','dolar',33.0000,54767),(55,3,7,'calcetines_de_lana','dolar',26.0000,53194),(56,3,43,'camisetas_estampadas_a_mano','dolar',30.0000,34835),(57,3,45,'chales_de_lana','dolar',48.0000,53857),(58,3,28,'cojines_de_punto','dolar',56.0000,79304),(59,3,37,'colchas_y_mantas_tejidas','dolar',5.0000,67387),(60,3,36,'cortinas_bordadas','dolar',42.0000,99620),(61,3,1,'fundas_de_almohada_bordadas','dolar',33.0000,30969),(62,3,13,'guantes_tejidos','dolar',33.0000,36758),(63,3,21,'munecas_de_trapo','dolar',13.0000,41494),(64,3,16,'ropa_tenida_a_mano','dolar',33.0000,79080),(65,3,23,'tapices_decorativos','dolar',6.0000,96546),(66,3,2,'bufandas_a_crochet','dolar',41.0000,85776),(67,3,45,'gorros_a_crochet','dolar',57.0000,13930),(68,3,31,'mantas_a_crochet','dolar',57.0000,80427),(69,3,10,'vestidos_de_crochet','dolar',54.0000,60947),(70,4,21,'alfombras_tejidas_a_mano','dolar',59.0000,80169),(71,4,15,'artesania_en_corcho','dolar',11.0000,18347),(72,4,14,'bolsas_de_tela_reutilizables','dolar',30.0000,74120),(73,4,36,'cajas_decorativas','dolar',50.0000,54614),(74,4,2,'camisetas_estampadas_a_mano','dolar',58.0000,15165),(75,4,4,'cestas','dolar',34.0000,21970),(76,4,6,'bandejas','dolar',19.0000,71657),(77,4,36,'lmparas','dolar',58.0000,50156),(78,4,17,'cojines_decorativos','dolar',47.0000,98833),(79,4,8,'cucharas_de_madera_esculpidas','dolar',34.0000,78208),(80,4,9,'delantales_bordados','dolar',52.0000,81771),(81,4,45,'jabones_naturales','dolar',40.0000,41043),(82,4,30,'jarras_de_cermica','dolar',15.0000,21673),(83,4,29,'juegos_de_te_pintados_a_mano','dolar',22.0000,99979),(84,4,7,'manteles_bordados','dolar',23.0000,40869),(85,4,11,'portavelas_de_cermica','dolar',18.0000,77994),(86,4,41,'servilleteros_decorativos','dolar',27.0000,25067),(87,4,40,'tablas_de_cortar_de_madera','dolar',53.0000,84985),(88,4,4,'tapices_con_motivos_etnicos','dolar',14.0000,92087),(89,4,10,'tazas_y_platos_pintados_a_mano','dolar',14.0000,32381),(90,4,12,'tazones_de_madera_tallada','dolar',54.0000,34216),(91,4,4,'velas_aromticas','dolar',41.0000,44007),(92,5,38,'aviones_y_barcos_de_juguete','dolar',51.0000,92032),(93,5,24,'carruseles_de_papel','dolar',55.0000,53148),(94,5,12,'espadas_y_escudos_de_madera_para_ninos','dolar',25.0000,32576),(95,5,32,'flautas','dolar',38.0000,74160),(96,5,21,'tambores','dolar',41.0000,47320),(97,5,28,'instrumentos_musicales_de_percusion','dolar',10.0000,40421),(98,5,15,'juegos_de_bolos_de_madera','dolar',54.0000,64163),(99,5,24,'juegos_de_mesa_artesanales','dolar',11.0000,48189),(100,5,27,'juguetes_de_construccion_hechos_con_materiales_naturales','dolar',42.0000,31209),(101,5,11,'juguetes_de_madera','dolar',50.0000,52286),(102,5,29,'juguetes_de_trapo','dolar',34.0000,27626),(103,5,23,'juguetes_educativos','dolar',20.0000,28966),(104,5,3,'marionetas_de_dedo','dolar',60.0000,65663),(105,5,35,'marionetas_de_guante','dolar',19.0000,19542),(106,5,11,'marionetas_de_hilos','dolar',24.0000,92652),(107,5,11,'marionetas_de_sombras','dolar',12.0000,82200),(108,5,32,'casas_en_miniatura','dolar',42.0000,36546),(109,5,27,'muebles_en_miniatura','dolar',50.0000,96848),(110,5,12,'munecos_de_tela','dolar',50.0000,56772),(111,5,16,'puzzles_de_madera_tallada','dolar',54.0000,93028),(112,5,26,'titeres_y_marionetas','dolar',16.0000,44332),(113,5,30,'trompos_de_madera','dolar',17.0000,18765);
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
INSERT INTO `tabla_puestos` VALUES (1,1,1,'artesanias_de_la_naturaleza'),(2,2,1,'tesoros_del_pasado'),(3,3,1,'mundo_del_vidrio'),(4,4,1,'artesanias_del_mundo'),(5,5,1,'encanto_artesanal'),(6,6,1,'mundo_artesano'),(7,7,1,'maravillas_artesanales'),(8,8,1,'arte_y_pasion'),(9,9,1,'maravillas_textiles'),(10,10,2,'maravillas_del_arte'),(11,11,2,'joyas_del_mundo'),(12,12,2,'hecho_a_mano'),(13,13,2,'tesoros_hechos_a_mano'),(14,14,2,'encanto_hecho_a_mano'),(15,15,2,'belleza_hecha_a_mano'),(16,16,2,'creaciones_con_amor'),(17,17,2,'manos_creativas'),(18,18,2,'inspiracion_creativa'),(19,19,3,'encanto_y_belleza'),(20,20,3,'mundo_creativo'),(21,21,3,'tesoros_textiles'),(22,22,3,'hilos_y_tejidos'),(23,23,3,'fantasia_en_papel'),(24,24,3,'sueÃƒÂ±os_artesanales'),(25,25,3,'creaciones_fantasticas'),(26,26,3,'mundo_de_la_creatividad'),(27,27,3,'creaciones_del_corazon'),(28,28,3,'maravillas_del_arte'),(29,29,4,'creatividad_en_expansion'),(30,30,4,'creaciones_del_mundo'),(31,31,4,'arte_en_ceramica'),(32,32,4,'mundo_del_vidrio'),(33,33,4,'madera_y_arte'),(34,34,4,'mundo_de_las_maravillas'),(35,35,4,'taller_de_artesanias'),(36,36,4,'artesanias_con_historia'),(37,37,4,'encanto_y_belleza'),(38,38,4,'arte_en_detalles'),(39,39,5,'rincon_de_la_inspiracion'),(40,40,5,'creaciones_del_mundo'),(41,41,5,'creatividad_en_accion'),(42,42,5,'rincones_del_arte'),(43,43,5,'creaciones_con_alma'),(44,44,5,'arte_y_tradicion'),(45,45,5,'tesoros_del_arte');
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
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_venta`
--

LOCK TABLES `tabla_venta` WRITE;
/*!40000 ALTER TABLE `tabla_venta` DISABLE KEYS */;
INSERT INTO `tabla_venta` VALUES (100,'2024-04-30 11:10:00',134,21,27,3,27,'creaciones_del_corazon'),(101,'2024-04-30 11:19:00',115,33,34,4,34,'mundo_de_las_maravillas'),(102,'2024-04-30 10:20:00',38,4,10,2,10,'maravillas_del_arte'),(103,'2024-04-30 11:21:00',166,29,9,1,9,'maravillas_textiles'),(104,'2024-04-30 11:30:00',68,14,11,2,11,'joyas_del_mundo'),(105,'2024-04-30 10:29:00',31,6,40,5,40,'creaciones_del_mundo'),(106,'2024-04-30 09:20:00',87,5,44,5,44,'arte_y_tradicion'),(107,'2024-04-30 11:27:00',78,23,30,4,30,'creaciones_del_mundo'),(108,'2024-04-30 11:51:00',21,11,4,1,4,'artesanias_del_mundo'),(109,'2024-04-30 09:48:00',141,24,21,3,21,'tesoros_textiles'),(110,'2024-04-30 09:38:00',116,27,37,4,37,'encanto_y_belleza'),(111,'2024-04-30 10:41:00',108,25,2,1,2,'tesoros_del_pasado'),(112,'2024-04-30 09:09:00',34,17,4,1,4,'artesanias_del_mundo'),(113,'2024-04-30 10:07:00',171,45,15,2,15,'belleza_hecha_a_mano'),(114,'2024-04-30 10:04:00',121,14,38,4,38,'arte_en_detalles'),(115,'2024-04-30 11:36:00',109,25,21,3,21,'tesoros_textiles'),(116,'2024-04-30 10:19:00',274,76,26,3,26,'mundo_de_la_creatividad'),(117,'2024-04-30 10:27:00',38,12,45,5,45,'tesoros_del_arte'),(118,'2024-04-30 11:30:00',138,31,2,1,2,'tesoros_del_pasado'),(119,'2024-04-30 09:10:00',161,52,43,5,43,'creaciones_con_alma'),(120,'2024-04-30 10:04:00',119,35,13,2,13,'tesoros_hechos_a_mano'),(121,'2024-04-30 10:29:00',156,46,33,4,33,'madera_y_arte'),(122,'2024-04-30 10:52:00',104,22,20,3,20,'mundo_creativo'),(123,'2024-04-30 09:37:00',96,37,14,2,14,'encanto_hecho_a_mano'),(124,'2024-04-30 10:12:00',239,31,4,1,4,'artesanias_del_mundo'),(125,'2024-04-30 09:57:00',145,38,29,4,29,'creatividad_en_expansion'),(126,'2024-04-30 09:32:00',104,26,33,4,33,'madera_y_arte'),(127,'2024-04-30 11:25:00',105,36,30,4,30,'creaciones_del_mundo'),(128,'2024-04-30 10:54:00',119,27,4,1,4,'artesanias_del_mundo'),(129,'2024-04-30 09:46:00',21,7,41,5,41,'creatividad_en_accion'),(130,'2024-04-30 10:36:00',141,37,8,1,8,'arte_y_pasion'),(131,'2024-04-30 11:42:00',123,22,16,2,16,'creaciones_con_amor'),(132,'2024-04-30 09:57:00',125,27,30,4,30,'creaciones_del_mundo'),(133,'2024-04-30 11:46:00',107,18,2,1,2,'tesoros_del_pasado'),(134,'2024-04-30 11:15:00',76,19,2,1,2,'tesoros_del_pasado'),(135,'2024-04-30 09:41:00',119,28,41,5,41,'creatividad_en_accion'),(136,'2024-04-30 09:06:00',33,16,6,1,6,'mundo_artesano'),(137,'2024-04-30 09:53:00',90,16,1,1,1,'artesanias_de_la_naturaleza'),(138,'2024-04-30 09:23:00',47,13,27,3,27,'creaciones_del_corazon'),(139,'2024-04-30 11:30:00',51,8,38,4,38,'arte_en_detalles'),(140,'2024-04-30 10:38:00',15,10,26,3,26,'mundo_de_la_creatividad'),(141,'2024-04-30 09:08:00',63,4,16,2,16,'creaciones_con_amor'),(142,'2024-04-30 10:31:00',77,38,27,3,27,'creaciones_del_corazon'),(143,'2024-04-30 09:18:00',69,23,29,4,29,'creatividad_en_expansion'),(144,'2024-04-30 11:35:00',255,52,22,3,22,'hilos_y_tejidos'),(145,'2024-04-30 10:03:00',83,32,38,4,38,'arte_en_detalles'),(146,'2024-04-30 09:49:00',50,20,28,3,28,'maravillas_del_arte'),(147,'2024-04-30 09:01:00',117,41,44,5,44,'arte_y_tradicion'),(148,'2024-04-30 09:28:00',104,38,5,1,5,'encanto_artesanal'),(149,'2024-04-30 10:18:00',37,3,34,4,34,'mundo_de_las_maravillas'),(150,'2024-04-30 11:09:00',63,3,9,1,9,'maravillas_textiles'),(151,'2024-04-30 11:34:00',56,10,23,3,23,'fantasia_en_papel'),(152,'2024-04-30 11:56:00',141,34,25,3,25,'creaciones_fantasticas'),(153,'2024-04-30 09:21:00',52,8,28,3,28,'maravillas_del_arte'),(154,'2024-04-30 11:44:00',99,25,10,2,10,'maravillas_del_arte'),(155,'2024-04-30 09:10:00',49,8,21,3,21,'tesoros_textiles'),(156,'2024-04-30 11:21:00',93,8,18,2,18,'inspiracion_creativa'),(157,'2024-04-30 09:42:00',62,20,1,1,1,'artesanias_de_la_naturaleza'),(158,'2024-04-30 10:47:00',81,14,22,3,22,'hilos_y_tejidos'),(159,'2024-04-30 11:08:00',72,16,37,4,37,'encanto_y_belleza'),(160,'2024-04-30 11:32:00',27,11,10,2,10,'maravillas_del_arte'),(161,'2024-04-30 09:45:00',129,48,14,2,14,'encanto_hecho_a_mano'),(162,'2024-04-30 09:59:00',46,9,36,4,36,'artesanias_con_historia'),(163,'2024-04-30 10:30:00',90,21,3,1,3,'mundo_del_vidrio'),(164,'2024-04-30 10:46:00',101,23,30,4,30,'creaciones_del_mundo'),(165,'2024-04-30 09:09:00',58,17,40,5,40,'creaciones_del_mundo'),(166,'2024-04-30 10:59:00',58,8,3,1,3,'mundo_del_vidrio'),(167,'2024-04-30 10:17:00',172,40,1,1,1,'artesanias_de_la_naturaleza'),(168,'2024-04-30 10:28:00',86,27,12,2,12,'hecho_a_mano'),(169,'2024-04-30 10:19:00',188,76,9,1,9,'maravillas_textiles'),(170,'2024-04-30 11:27:00',200,49,5,1,5,'encanto_artesanal'),(171,'2024-04-30 11:56:00',31,6,7,1,7,'maravillas_artesanales'),(172,'2024-04-30 10:25:00',105,24,23,3,23,'fantasia_en_papel'),(173,'2024-04-30 11:54:00',32,20,24,3,24,'suenos_artesanales'),(174,'2024-04-30 09:53:00',24,11,5,1,5,'encanto_artesanal'),(175,'2024-04-30 10:53:00',165,47,44,5,44,'arte_y_tradicion'),(176,'2024-04-30 10:06:00',106,19,21,3,21,'tesoros_textiles'),(177,'2024-04-30 10:29:00',166,27,2,1,2,'tesoros_del_pasado'),(178,'2024-04-30 09:49:00',70,8,10,2,10,'maravillas_del_arte'),(179,'2024-04-30 09:33:00',78,18,35,4,35,'taller_de_artesanias'),(180,'2024-04-30 11:06:00',243,42,18,2,18,'inspiracion_creativa'),(181,'2024-04-30 10:39:00',91,30,28,3,28,'maravillas_del_arte'),(182,'2024-04-30 10:55:00',94,28,39,5,39,'rincon_de_la_inspiracion'),(183,'2024-04-30 09:45:00',23,13,19,3,19,'encanto_y_belleza'),(184,'2024-04-30 11:29:00',45,19,44,5,44,'arte_y_tradicion'),(185,'2024-04-30 10:49:00',48,3,31,4,31,'arte_en_ceramica'),(186,'2024-04-30 11:25:00',11,1,24,3,24,'suenos_artesanales'),(187,'2024-04-30 09:56:00',189,51,12,2,12,'hecho_a_mano'),(188,'2024-04-30 09:35:00',85,8,44,5,44,'arte_y_tradicion'),(189,'2024-04-30 09:42:00',44,18,31,4,31,'arte_en_ceramica'),(190,'2024-04-30 11:03:00',114,22,30,4,30,'creaciones_del_mundo'),(191,'2024-04-30 09:51:00',53,2,12,2,12,'hecho_a_mano'),(192,'2024-04-30 10:51:00',150,32,31,4,31,'arte_en_ceramica'),(193,'2024-04-30 11:08:00',34,15,18,2,18,'inspiracion_creativa'),(194,'2024-04-30 11:40:00',37,11,25,3,25,'creaciones_fantasticas'),(195,'2024-04-30 09:08:00',102,20,15,2,15,'belleza_hecha_a_mano'),(196,'2024-04-30 10:06:00',55,21,41,5,41,'creatividad_en_accion'),(197,'2024-04-30 11:13:00',40,7,7,1,7,'maravillas_artesanales'),(198,'2024-04-30 10:28:00',58,26,17,2,17,'manos_creativas'),(199,'2024-04-30 10:04:00',74,14,40,5,40,'creaciones_del_mundo'),(200,'2024-04-30 09:48:00',60,6,18,2,18,'inspiracion_creativa'),(201,'2024-04-30 11:55:00',37,14,34,4,34,'mundo_de_las_maravillas'),(202,'2024-04-30 11:25:00',181,45,15,2,15,'belleza_hecha_a_mano'),(203,'2024-04-30 09:27:00',113,22,31,4,31,'arte_en_ceramica'),(204,'2024-04-30 09:51:00',189,22,23,3,23,'fantasia_en_papel'),(205,'2024-04-30 09:48:00',82,9,1,1,1,'artesanias_de_la_naturaleza'),(206,'2024-04-30 10:31:00',138,58,25,3,25,'creaciones_fantasticas'),(207,'2024-04-30 09:48:00',112,8,35,4,35,'taller_de_artesanias'),(208,'2024-04-30 09:27:00',98,24,10,2,10,'maravillas_del_arte'),(209,'2024-04-30 09:18:00',111,20,29,4,29,'creatividad_en_expansion'),(210,'2024-04-30 10:40:00',146,42,14,2,14,'encanto_hecho_a_mano'),(211,'2024-04-30 09:09:00',22,2,12,2,12,'hecho_a_mano'),(212,'2024-04-30 09:27:00',115,16,16,2,16,'creaciones_con_amor'),(213,'2024-04-30 09:41:00',63,18,29,4,29,'creatividad_en_expansion'),(214,'2024-04-30 10:26:00',65,15,41,5,41,'creatividad_en_accion'),(215,'2024-04-30 09:54:00',56,17,18,2,18,'inspiracion_creativa'),(216,'2024-04-30 09:46:00',51,8,26,3,26,'mundo_de_la_creatividad'),(217,'2024-04-30 10:21:00',250,55,15,2,15,'belleza_hecha_a_mano'),(218,'2024-04-30 09:52:00',117,47,8,1,8,'arte_y_pasion'),(219,'2024-04-30 09:54:00',131,29,27,3,27,'creaciones_del_corazon'),(220,'2024-04-30 09:23:00',65,8,43,5,43,'creaciones_con_alma'),(221,'2024-04-30 10:23:00',208,50,34,4,34,'mundo_de_las_maravillas'),(222,'2024-04-30 09:23:00',54,7,20,3,20,'mundo_creativo'),(223,'2024-04-30 11:33:00',128,20,34,4,34,'mundo_de_las_maravillas'),(224,'2024-04-30 10:58:00',106,18,13,2,13,'tesoros_hechos_a_mano'),(225,'2024-04-30 11:32:00',77,14,18,2,18,'inspiracion_creativa'),(226,'2024-04-30 11:19:00',47,6,31,4,31,'arte_en_ceramica'),(227,'2024-04-30 10:13:00',99,24,22,3,22,'hilos_y_tejidos'),(228,'2024-04-30 10:54:00',53,8,25,3,25,'creaciones_fantasticas'),(229,'2024-04-30 10:48:00',139,35,38,4,38,'arte_en_detalles'),(230,'2024-04-30 10:05:00',90,23,34,4,34,'mundo_de_las_maravillas'),(231,'2024-04-30 09:52:00',86,24,1,1,1,'artesanias_de_la_naturaleza'),(232,'2024-04-30 09:03:00',100,23,16,2,16,'creaciones_con_amor'),(233,'2024-04-30 09:04:00',193,50,30,4,30,'creaciones_del_mundo'),(234,'2024-04-30 11:09:00',75,13,12,2,12,'hecho_a_mano'),(235,'2024-04-30 11:05:00',24,14,29,4,29,'creatividad_en_expansion'),(236,'2024-04-30 11:33:00',96,23,42,5,42,'rincones_del_arte'),(237,'2024-04-30 09:24:00',135,43,44,5,44,'arte_y_tradicion'),(238,'2024-04-30 10:47:00',92,26,35,4,35,'taller_de_artesanias'),(239,'2024-04-30 11:47:00',139,48,21,3,21,'tesoros_textiles'),(240,'2024-04-30 09:03:00',35,19,23,3,23,'fantasia_en_papel'),(241,'2024-04-30 09:32:00',142,38,27,3,27,'creaciones_del_corazon'),(242,'2024-04-30 11:28:00',123,22,6,1,6,'mundo_artesano'),(243,'2024-04-30 10:20:00',23,10,39,5,39,'rincon_de_la_inspiracion'),(244,'2024-04-30 10:01:00',89,27,32,4,32,'mundo_del_vidrio'),(245,'2024-04-30 11:09:00',66,19,2,1,2,'tesoros_del_pasado'),(246,'2024-04-30 11:50:00',91,19,34,4,34,'mundo_de_las_maravillas'),(247,'2024-04-30 10:27:00',60,25,9,1,9,'maravillas_textiles'),(248,'2024-04-30 11:13:00',23,17,7,1,7,'maravillas_artesanales'),(249,'2024-04-30 10:06:00',31,14,15,2,15,'belleza_hecha_a_mano'),(250,'2024-04-30 10:23:00',57,17,29,4,29,'creatividad_en_expansion'),(251,'2024-04-30 10:29:00',118,10,20,3,20,'mundo_creativo'),(252,'2024-04-30 10:50:00',146,24,11,2,11,'joyas_del_mundo'),(253,'2024-04-30 10:29:00',226,65,30,4,30,'creaciones_del_mundo'),(254,'2024-04-30 11:35:00',94,18,16,2,16,'creaciones_con_amor'),(255,'2024-04-30 09:30:00',60,9,19,3,19,'encanto_y_belleza'),(256,'2024-04-30 11:46:00',135,24,43,5,43,'creaciones_con_alma'),(257,'2024-04-30 11:31:00',98,12,42,5,42,'rincones_del_arte'),(258,'2024-04-30 10:50:00',44,11,33,4,33,'madera_y_arte'),(259,'2024-04-30 11:53:00',76,25,15,2,15,'belleza_hecha_a_mano'),(260,'2024-04-30 09:58:00',35,3,34,4,34,'mundo_de_las_maravillas'),(261,'2024-04-30 09:50:00',103,18,26,3,26,'mundo_de_la_creatividad'),(262,'2024-04-30 09:17:00',126,29,9,1,9,'maravillas_textiles'),(263,'2024-04-30 10:14:00',52,11,7,1,7,'maravillas_artesanales'),(264,'2024-04-30 09:31:00',99,15,33,4,33,'madera_y_arte'),(265,'2024-04-30 10:29:00',42,14,32,4,32,'mundo_del_vidrio'),(266,'2024-04-30 09:44:00',68,17,12,2,12,'hecho_a_mano'),(267,'2024-04-30 10:19:00',184,34,11,2,11,'joyas_del_mundo'),(268,'2024-04-30 11:46:00',65,11,6,1,6,'mundo_artesano'),(269,'2024-04-30 10:07:00',64,21,8,1,8,'arte_y_pasion'),(270,'2024-04-30 10:12:00',22,10,44,5,44,'arte_y_tradicion'),(271,'2024-04-30 10:47:00',101,20,17,2,17,'manos_creativas'),(272,'2024-04-30 10:58:00',106,17,13,2,13,'tesoros_hechos_a_mano'),(273,'2024-04-30 11:04:00',52,2,11,2,11,'joyas_del_mundo'),(274,'2024-04-30 10:06:00',145,40,28,3,28,'maravillas_del_arte'),(275,'2024-04-30 10:37:00',147,26,45,5,45,'tesoros_del_arte'),(276,'2024-04-30 10:47:00',76,16,17,2,17,'manos_creativas'),(277,'2024-04-30 11:04:00',72,17,9,1,9,'maravillas_textiles'),(278,'2024-04-30 09:50:00',82,25,12,2,12,'hecho_a_mano'),(279,'2024-04-30 10:42:00',93,33,8,1,8,'arte_y_pasion'),(280,'2024-04-30 10:01:00',177,41,26,3,26,'mundo_de_la_creatividad'),(281,'2024-04-30 09:51:00',132,30,45,5,45,'tesoros_del_arte'),(282,'2024-04-30 11:32:00',109,37,24,3,24,'suenos_artesanales'),(283,'2024-04-30 09:22:00',49,15,12,2,12,'hecho_a_mano'),(284,'2024-04-30 09:27:00',194,36,8,1,8,'arte_y_pasion'),(285,'2024-04-30 10:30:00',34,20,27,3,27,'creaciones_del_corazon'),(286,'2024-04-30 10:57:00',37,4,1,1,1,'artesanias_de_la_naturaleza'),(287,'2024-04-30 10:59:00',131,14,8,1,8,'arte_y_pasion'),(288,'2024-04-30 11:00:00',83,11,2,1,2,'tesoros_del_pasado'),(289,'2024-04-30 09:02:00',76,19,43,5,43,'creaciones_con_alma'),(290,'2024-04-30 11:28:00',64,20,45,5,45,'tesoros_del_arte'),(291,'2024-04-30 11:05:00',67,22,10,2,10,'maravillas_del_arte'),(292,'2024-04-30 09:44:00',96,29,1,1,1,'artesanias_de_la_naturaleza'),(293,'2024-04-30 10:34:00',63,23,32,4,32,'mundo_del_vidrio'),(294,'2024-04-30 10:51:00',34,17,4,1,4,'artesanias_del_mundo'),(295,'2024-04-30 10:59:00',19,8,4,1,4,'artesanias_del_mundo'),(296,'2024-04-30 10:17:00',124,26,30,4,30,'creaciones_del_mundo'),(297,'2024-04-30 09:24:00',61,16,18,2,18,'inspiracion_creativa'),(298,'2024-04-30 10:37:00',95,26,7,1,7,'maravillas_artesanales'),(299,'2024-04-30 09:09:00',35,10,19,3,19,'encanto_y_belleza'),(300,'2024-04-30 10:15:00',176,37,20,3,20,'mundo_creativo'),(301,'2024-04-30 10:06:00',113,16,8,1,8,'arte_y_pasion'),(302,'2024-04-30 09:57:00',109,25,39,5,39,'rincon_de_la_inspiracion'),(303,'2024-04-30 11:04:00',94,34,1,1,1,'artesanias_de_la_naturaleza'),(304,'2024-04-30 10:57:00',26,16,43,5,43,'creaciones_con_alma'),(305,'2024-04-30 09:39:00',69,15,29,4,29,'creatividad_en_expansion'),(306,'2024-04-30 09:31:00',243,54,41,5,41,'creatividad_en_accion'),(307,'2024-04-30 09:27:00',67,7,42,5,42,'rincones_del_arte'),(308,'2024-04-30 11:38:00',97,26,15,2,15,'belleza_hecha_a_mano'),(309,'2024-04-30 10:18:00',97,24,12,2,12,'hecho_a_mano'),(310,'2024-04-30 09:59:00',90,15,29,4,29,'creatividad_en_expansion'),(311,'2024-04-30 09:21:00',23,9,10,2,10,'maravillas_del_arte'),(312,'2024-04-30 09:42:00',184,45,43,5,43,'creaciones_con_alma'),(313,'2024-04-30 11:36:00',85,19,29,4,29,'creatividad_en_expansion'),(314,'2024-04-30 11:42:00',61,11,4,1,4,'artesanias_del_mundo'),(315,'2024-04-30 10:53:00',158,32,37,4,37,'encanto_y_belleza'),(316,'2024-04-30 10:44:00',58,6,41,5,41,'creatividad_en_accion'),(317,'2024-04-30 11:32:00',170,53,43,5,43,'creaciones_con_alma'),(318,'2024-04-30 10:13:00',42,20,43,5,43,'creaciones_con_alma'),(319,'2024-04-30 10:05:00',31,4,31,4,31,'arte_en_ceramica'),(320,'2024-04-30 11:12:00',122,30,22,3,22,'hilos_y_tejidos'),(321,'2024-04-30 09:27:00',88,32,35,4,35,'taller_de_artesanias'),(322,'2024-04-30 11:43:00',52,12,11,2,11,'joyas_del_mundo'),(323,'2024-04-30 11:19:00',60,22,12,2,12,'hecho_a_mano'),(324,'2024-04-30 10:47:00',171,40,26,3,26,'mundo_de_la_creatividad'),(325,'2024-04-30 11:00:00',163,38,38,4,38,'arte_en_detalles'),(326,'2024-04-30 10:26:00',62,4,16,2,16,'creaciones_con_amor'),(327,'2024-04-30 10:04:00',82,7,16,2,16,'creaciones_con_amor'),(328,'2024-04-30 11:45:00',53,3,4,1,4,'artesanias_del_mundo'),(329,'2024-04-30 11:45:00',36,6,42,5,42,'rincones_del_arte'),(330,'2024-04-30 10:23:00',47,14,29,4,29,'creatividad_en_expansion'),(331,'2024-04-30 10:11:00',92,26,5,1,5,'encanto_artesanal'),(332,'2024-04-30 11:57:00',143,34,7,1,7,'maravillas_artesanales'),(333,'2024-04-30 10:04:00',147,42,3,1,3,'mundo_del_vidrio'),(334,'2024-04-30 09:52:00',121,41,8,1,8,'arte_y_pasion'),(335,'2024-04-30 11:47:00',81,31,45,5,45,'tesoros_del_arte'),(336,'2024-04-30 10:58:00',224,48,17,2,17,'manos_creativas'),(337,'2024-04-30 11:06:00',61,4,27,3,27,'creaciones_del_corazon'),(338,'2024-04-30 10:49:00',88,17,10,2,10,'maravillas_del_arte'),(339,'2024-04-30 09:19:00',45,20,29,4,29,'creatividad_en_expansion'),(340,'2024-04-30 11:08:00',95,9,9,1,9,'maravillas_textiles'),(341,'2024-04-30 11:07:00',89,16,22,3,22,'hilos_y_tejidos'),(342,'2024-04-30 10:38:00',101,14,28,3,28,'maravillas_del_arte'),(343,'2024-04-30 10:41:00',35,9,32,4,32,'mundo_del_vidrio'),(344,'2024-04-30 10:55:00',20,11,20,3,20,'mundo_creativo'),(345,'2024-04-30 10:03:00',73,34,26,3,26,'mundo_de_la_creatividad'),(346,'2024-04-30 09:02:00',72,20,25,3,25,'creaciones_fantasticas'),(347,'2024-04-30 10:55:00',108,20,35,4,35,'taller_de_artesanias'),(348,'2024-04-30 10:19:00',13,2,5,1,5,'encanto_artesanal'),(349,'2024-04-30 11:37:00',88,27,10,2,10,'maravillas_del_arte'),(350,'2024-04-30 10:38:00',61,14,6,1,6,'mundo_artesano'),(351,'2024-04-30 10:33:00',138,29,3,1,3,'mundo_del_vidrio'),(352,'2024-04-30 10:53:00',60,16,11,2,11,'joyas_del_mundo'),(353,'2024-04-30 10:14:00',100,37,14,2,14,'encanto_hecho_a_mano'),(354,'2024-04-30 11:19:00',61,10,9,1,9,'maravillas_textiles'),(355,'2024-04-30 10:45:00',42,18,9,1,9,'maravillas_textiles'),(356,'2024-04-30 09:27:00',73,31,13,2,13,'tesoros_hechos_a_mano'),(357,'2024-04-30 10:37:00',93,12,28,3,28,'maravillas_del_arte'),(358,'2024-04-30 11:24:00',56,16,19,3,19,'encanto_y_belleza'),(359,'2024-04-30 09:42:00',47,9,18,2,18,'inspiracion_creativa'),(360,'2024-04-30 11:07:00',115,27,33,4,33,'madera_y_arte'),(361,'2024-04-30 10:02:00',65,20,34,4,34,'mundo_de_las_maravillas'),(362,'2024-04-30 11:29:00',148,39,24,3,24,'suenos_artesanales'),(363,'2024-04-30 11:55:00',28,15,21,3,21,'tesoros_textiles'),(364,'2024-04-30 11:01:00',100,17,21,3,21,'tesoros_textiles'),(365,'2024-04-30 11:32:00',30,4,42,5,42,'rincones_del_arte'),(366,'2024-04-30 09:47:00',132,32,30,4,30,'creaciones_del_mundo'),(367,'2024-04-30 10:15:00',169,40,36,4,36,'artesanias_con_historia'),(368,'2024-04-30 10:53:00',60,10,23,3,23,'fantasia_en_papel'),(369,'2024-04-30 10:04:00',97,17,24,3,24,'suenos_artesanales'),(370,'2024-04-30 11:31:00',248,56,45,5,45,'tesoros_del_arte'),(371,'2024-04-30 10:45:00',95,12,6,1,6,'mundo_artesano'),(372,'2024-04-30 11:51:00',140,37,9,1,9,'maravillas_textiles'),(373,'2024-04-30 09:03:00',72,4,13,2,13,'tesoros_hechos_a_mano'),(374,'2024-04-30 11:11:00',110,5,24,3,24,'suenos_artesanales'),(375,'2024-04-30 09:00:00',37,12,11,2,11,'joyas_del_mundo'),(376,'2024-04-30 11:26:00',63,16,15,2,15,'belleza_hecha_a_mano'),(377,'2024-04-30 10:03:00',12,3,40,5,40,'creaciones_del_mundo'),(378,'2024-04-30 09:05:00',55,14,9,1,9,'maravillas_textiles'),(379,'2024-04-30 09:49:00',31,16,3,1,3,'mundo_del_vidrio'),(380,'2024-04-30 10:10:00',92,25,29,4,29,'creatividad_en_expansion'),(381,'2024-04-30 09:04:00',122,23,41,5,41,'creatividad_en_accion'),(382,'2024-04-30 10:08:00',24,10,12,2,12,'hecho_a_mano'),(383,'2024-04-30 09:06:00',81,23,26,3,26,'mundo_de_la_creatividad'),(384,'2024-04-30 10:02:00',27,8,35,4,35,'taller_de_artesanias'),(385,'2024-04-30 09:37:00',143,26,7,1,7,'maravillas_artesanales'),(386,'2024-04-30 09:34:00',109,13,30,4,30,'creaciones_del_mundo'),(387,'2024-04-30 11:20:00',120,38,31,4,31,'arte_en_ceramica'),(388,'2024-04-30 09:21:00',45,3,14,2,14,'encanto_hecho_a_mano'),(389,'2024-04-30 10:49:00',40,14,36,4,36,'artesanias_con_historia'),(390,'2024-04-30 10:33:00',99,30,10,2,10,'maravillas_del_arte'),(391,'2024-04-30 09:49:00',118,33,28,3,28,'maravillas_del_arte'),(392,'2024-04-30 09:36:00',73,20,35,4,35,'taller_de_artesanias'),(393,'2024-04-30 11:19:00',88,25,21,3,21,'tesoros_textiles'),(394,'2024-04-30 09:48:00',36,6,27,3,27,'creaciones_del_corazon'),(395,'2024-04-30 10:33:00',90,48,20,3,20,'mundo_creativo'),(396,'2024-04-30 09:42:00',134,39,31,4,31,'arte_en_ceramica'),(397,'2024-04-30 11:59:00',109,31,6,1,6,'mundo_artesano'),(398,'2024-04-30 09:28:00',114,22,45,5,45,'tesoros_del_arte'),(399,'2024-04-30 09:44:00',165,51,45,5,45,'tesoros_del_arte'),(400,'2024-04-30 10:09:00',23,9,5,1,5,'encanto_artesanal'),(401,'2024-04-30 10:26:00',103,31,32,4,32,'mundo_del_vidrio'),(402,'2024-04-30 09:29:00',118,27,45,5,45,'tesoros_del_arte'),(403,'2024-04-30 10:04:00',105,13,39,5,39,'rincon_de_la_inspiracion'),(404,'2024-04-30 10:23:00',132,40,43,5,43,'creaciones_con_alma'),(405,'2024-04-30 10:39:00',35,5,9,1,9,'maravillas_textiles'),(406,'2024-04-30 11:12:00',91,8,25,3,25,'creaciones_fantasticas'),(407,'2024-04-30 11:02:00',131,21,41,5,41,'creatividad_en_accion'),(408,'2024-04-30 09:52:00',74,14,42,5,42,'rincones_del_arte'),(409,'2024-04-30 11:36:00',132,39,41,5,41,'creatividad_en_accion'),(410,'2024-04-30 09:44:00',52,1,44,5,44,'arte_y_tradicion'),(411,'2024-04-30 10:10:00',111,39,35,4,35,'taller_de_artesanias'),(412,'2024-04-30 11:14:00',74,15,31,4,31,'arte_en_ceramica'),(413,'2024-04-30 10:23:00',94,22,5,1,5,'encanto_artesanal'),(414,'2024-04-30 11:07:00',87,26,13,2,13,'tesoros_hechos_a_mano'),(415,'2024-04-30 11:33:00',216,58,36,4,36,'artesanias_con_historia'),(416,'2024-04-30 09:22:00',167,33,9,1,9,'maravillas_textiles'),(417,'2024-04-30 10:48:00',23,13,29,4,29,'creatividad_en_expansion'),(418,'2024-04-30 09:02:00',226,48,6,1,6,'mundo_artesano'),(419,'2024-04-30 11:14:00',103,29,34,4,34,'mundo_de_las_maravillas'),(420,'2024-04-30 09:31:00',97,17,16,2,16,'creaciones_con_amor'),(421,'2024-04-30 09:39:00',111,33,12,2,12,'hecho_a_mano'),(422,'2024-04-30 11:07:00',121,23,16,2,16,'creaciones_con_amor'),(423,'2024-04-30 10:06:00',88,40,34,4,34,'mundo_de_las_maravillas'),(424,'2024-04-30 09:44:00',163,44,22,3,22,'hilos_y_tejidos'),(425,'2024-04-30 11:59:00',107,38,14,2,14,'encanto_hecho_a_mano'),(426,'2024-04-30 10:09:00',179,54,36,4,36,'artesanias_con_historia'),(427,'2024-04-30 10:09:00',104,23,27,3,27,'creaciones_del_corazon'),(428,'2024-04-30 10:17:00',265,47,44,5,44,'arte_y_tradicion'),(429,'2024-04-30 10:51:00',49,8,29,4,29,'creatividad_en_expansion'),(430,'2024-04-30 10:27:00',112,40,43,5,43,'creaciones_con_alma'),(431,'2024-04-30 11:58:00',28,5,30,4,30,'creaciones_del_mundo'),(432,'2024-04-30 10:07:00',92,26,8,1,8,'arte_y_pasion'),(433,'2024-04-30 11:32:00',16,11,1,1,1,'artesanias_de_la_naturaleza'),(434,'2024-04-30 11:06:00',71,20,44,5,44,'arte_y_tradicion'),(435,'2024-04-30 09:13:00',81,33,30,4,30,'creaciones_del_mundo'),(436,'2024-04-30 10:43:00',86,34,23,3,23,'fantasia_en_papel'),(437,'2024-04-30 11:19:00',88,18,12,2,12,'hecho_a_mano'),(438,'2024-04-30 11:20:00',34,4,11,2,11,'joyas_del_mundo'),(439,'2024-04-30 09:46:00',108,24,40,5,40,'creaciones_del_mundo'),(440,'2024-04-30 11:09:00',43,10,40,5,40,'creaciones_del_mundo'),(441,'2024-04-30 10:14:00',113,24,14,2,14,'encanto_hecho_a_mano'),(442,'2024-04-30 09:07:00',73,19,27,3,27,'creaciones_del_corazon'),(443,'2024-04-30 10:02:00',205,51,12,2,12,'hecho_a_mano'),(444,'2024-04-30 11:27:00',12,7,2,1,2,'tesoros_del_pasado'),(445,'2024-04-30 09:28:00',34,15,39,5,39,'rincon_de_la_inspiracion'),(446,'2024-04-30 10:00:00',193,23,9,1,9,'maravillas_textiles'),(447,'2024-04-30 09:05:00',118,33,30,4,30,'creaciones_del_mundo'),(448,'2024-04-30 10:25:00',66,19,3,1,3,'mundo_del_vidrio'),(449,'2024-04-30 11:19:00',153,30,43,5,43,'creaciones_con_alma'),(450,'2024-04-30 10:42:00',139,37,36,4,36,'artesanias_con_historia'),(451,'2024-04-30 11:23:00',76,26,14,2,14,'encanto_hecho_a_mano'),(452,'2024-04-30 09:36:00',40,10,44,5,44,'arte_y_tradicion'),(453,'2024-04-30 10:19:00',15,2,25,3,25,'creaciones_fantasticas'),(454,'2024-04-30 11:22:00',16,6,29,4,29,'creatividad_en_expansion'),(455,'2024-04-30 10:16:00',149,34,18,2,18,'inspiracion_creativa'),(456,'2024-04-30 11:52:00',37,3,23,3,23,'fantasia_en_papel'),(457,'2024-04-30 11:59:00',181,41,4,1,4,'artesanias_del_mundo'),(458,'2024-04-30 09:32:00',137,34,44,5,44,'arte_y_tradicion'),(459,'2024-04-30 09:51:00',92,36,25,3,25,'creaciones_fantasticas'),(460,'2024-04-30 11:30:00',176,55,6,1,6,'mundo_artesano'),(461,'2024-04-30 11:17:00',56,18,31,4,31,'arte_en_ceramica'),(462,'2024-04-30 09:46:00',155,37,15,2,15,'belleza_hecha_a_mano'),(463,'2024-04-30 09:31:00',164,36,28,3,28,'maravillas_del_arte'),(464,'2024-04-30 11:29:00',31,7,10,2,10,'maravillas_del_arte'),(465,'2024-04-30 09:19:00',99,19,12,2,12,'hecho_a_mano'),(466,'2024-04-30 11:24:00',107,19,23,3,23,'fantasia_en_papel'),(467,'2024-04-30 09:36:00',14,1,1,1,1,'artesanias_de_la_naturaleza'),(468,'2024-04-30 09:20:00',79,19,45,5,45,'tesoros_del_arte'),(469,'2024-04-30 11:05:00',158,37,39,5,39,'rincon_de_la_inspiracion'),(470,'2024-04-30 09:38:00',76,11,28,3,28,'maravillas_del_arte'),(471,'2024-04-30 10:57:00',85,29,24,3,24,'suenos_artesanales'),(472,'2024-04-30 10:30:00',50,21,25,3,25,'creaciones_fantasticas'),(473,'2024-04-30 11:53:00',100,40,22,3,22,'hilos_y_tejidos'),(474,'2024-04-30 10:29:00',22,3,39,5,39,'rincon_de_la_inspiracion'),(475,'2024-04-30 09:07:00',39,14,27,3,27,'creaciones_del_corazon'),(476,'2024-04-30 09:13:00',41,1,3,1,3,'mundo_del_vidrio'),(477,'2024-04-30 09:43:00',121,31,4,1,4,'artesanias_del_mundo'),(478,'2024-04-30 09:11:00',66,16,15,2,15,'belleza_hecha_a_mano'),(479,'2024-04-30 11:19:00',114,38,22,3,22,'hilos_y_tejidos'),(480,'2024-04-30 11:22:00',151,35,38,4,38,'arte_en_detalles'),(481,'2024-04-30 11:31:00',35,2,19,3,19,'encanto_y_belleza'),(482,'2024-04-30 09:27:00',101,37,27,3,27,'creaciones_del_corazon'),(483,'2024-04-30 10:00:00',57,4,25,3,25,'creaciones_fantasticas'),(484,'2024-04-30 10:56:00',120,30,5,1,5,'encanto_artesanal'),(485,'2024-04-30 10:26:00',67,18,8,1,8,'arte_y_pasion'),(486,'2024-04-30 11:37:00',132,28,32,4,32,'mundo_del_vidrio'),(487,'2024-04-30 09:58:00',100,29,13,2,13,'tesoros_hechos_a_mano'),(488,'2024-04-30 09:53:00',8,3,32,4,32,'mundo_del_vidrio'),(489,'2024-04-30 09:31:00',136,47,11,2,11,'joyas_del_mundo'),(490,'2024-04-30 10:15:00',176,29,34,4,34,'mundo_de_las_maravillas'),(491,'2024-04-30 09:26:00',153,33,38,4,38,'arte_en_detalles'),(492,'2024-04-30 09:36:00',86,21,37,4,37,'encanto_y_belleza'),(493,'2024-04-30 09:45:00',98,17,13,2,13,'tesoros_hechos_a_mano'),(494,'2024-04-30 10:34:00',25,16,10,2,10,'maravillas_del_arte'),(495,'2024-04-30 09:47:00',233,51,19,3,19,'encanto_y_belleza'),(496,'2024-04-30 09:40:00',64,32,12,2,12,'hecho_a_mano'),(497,'2024-04-30 09:13:00',25,12,41,5,41,'creatividad_en_accion'),(498,'2024-04-30 10:14:00',33,8,45,5,45,'tesoros_del_arte'),(499,'2024-04-30 11:51:00',34,15,10,2,10,'maravillas_del_arte'),(500,'2024-04-30 09:36:00',171,49,34,4,34,'mundo_de_las_maravillas');
/*!40000 ALTER TABLE `tabla_venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_after_insert` AFTER INSERT ON `tabla_venta` FOR EACH ROW INSERT INTO auditoria(Accion, Usuario, Fecha_Hora, Observacion) 
VALUES ('INSERT', CURRENT_USER(), NOW(), 'Se insertó correctamente en tabla venta') */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_before_delete` BEFORE DELETE ON `tabla_venta` FOR EACH ROW INSERT INTO auditoria(Accion, Usuario, Fecha_Hora, Observacion, Campo_Anterior)
VALUES ('DELETE', CURRENT_USER(), NOW(), 'Se eliminó correctamente en la tabla venta', OLD.ID_Vta) */;;
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
-- Final view structure for view `artesanos_por_region`
--

/*!50001 DROP VIEW IF EXISTS `artesanos_por_region`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `artesanos_por_region` AS select `tabla_artesanos`.`Region_Art` AS `Region_de_Artesanos`,count(0) AS `Total_Artesanos` from `tabla_artesanos` group by `tabla_artesanos`.`Region_Art` */;
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
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ciudad_de_artesanos` AS select distinct `tabla_artesanos`.`Ciudad_Art` AS `Ciudad_de_Artesanos` from `tabla_artesanos` */;
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
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `largo_del_nombre_del_producto` AS select length(`tabla_productos`.`Nombre_Prod`) AS `Largo_Nombre_Producto` from `tabla_productos` */;
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
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nombre_en_mayuscula_del_producto` AS select upper(`tabla_productos`.`Nombre_Prod`) AS `Nombre_Producto` from `tabla_productos` */;
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
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nombre_en_minuscula_del_producto` AS select lower(`tabla_productos`.`Nombre_Prod`) AS `Nombre_Producto` from `tabla_productos` */;
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
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `numero_de_artesanos` AS select count(0) AS `Cantidad_de_Artesanos` from `tabla_artesanos` */;
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
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productos_por_categoria` AS select `c`.`Nombre_Cat` AS `Nombre_Categoria`,count(`p`.`ID_Prod`) AS `Total_Productos` from (`tabla_categorias` `c` join `tabla_productos` `p` on((`c`.`ID_Cat` = `p`.`ID_Cat`))) group by `c`.`Nombre_Cat` */;
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
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
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

-- Dump completed on 2024-05-18 23:16:37
