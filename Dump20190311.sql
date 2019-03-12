-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: cts
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `adresse` (
  `id` bigint(20) NOT NULL,
  `code_postal` varchar(255) DEFAULT NULL,
  `id_manager` bigint(20) DEFAULT NULL,
  `id_shipper` bigint(20) DEFAULT NULL,
  `id_transporter` bigint(20) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `pays` varchar(255) DEFAULT NULL,
  `principal` bit(1) NOT NULL,
  `province` varchar(255) DEFAULT NULL,
  `rue` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse`
--

LOCK TABLES `adresse` WRITE;
/*!40000 ALTER TABLE `adresse` DISABLE KEYS */;
INSERT INTO `adresse` VALUES (73,'gfgf',0,72,0,'4545','sh',_binary '\0','gfsh','dfsdfsd','sgh'),(77,'hgdfhgf',0,75,0,'1234','hthtr',_binary '\0','hh','fshdf','gfgf'),(78,'dhfdf',0,75,0,'2825','chghg',_binary '\0','cghgh','gfjg','gfcf'),(79,'454 654',0,52,0,'2540','canada',_binary '\0','terrebonne','ttyf','gddty'),(82,'dhgj',0,0,80,'3243','sfhf',_binary '\0','sh','fg','djg'),(83,'kkdlsdk',0,0,7,'456','hdjhvsd',_binary '\0','kfsl;d','ldfskl','dlgksdl;k'),(85,'vvnvbkn',0,0,1,'2340','ojkjk',_binary '\0','ljlj','jfsdj','jkljklj'),(89,'gfsh',0,75,0,'65','gdh',_binary '\0','hdg','sh','gfhgf'),(90,'J7R 5B4',0,0,8,'520','Canada',_binary '\0','Quebec','Guidon','Saint-Eustache'),(93,'h2e2l10',0,60,0,'123','canada',_binary '\0','quebec','papineau','montreal'),(98,'gghfg',0,95,0,'1234','gfshf',_binary '\0','gfhs','hgfhgfh','hgfhs'),(102,'',0,100,0,'1234','',_binary '\0','','',''),(104,'fddfg',0,0,103,'55','fdgfd',_binary '\0','gfdg','sgr','fdgdf'),(174,'fdhdf',0,0,1,'5678','shgf',_binary '\0','gfhs','dfgdfg','hsf');
/*!40000 ALTER TABLE `adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_role`
--

DROP TABLE IF EXISTS `app_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `app_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_role`
--

LOCK TABLES `app_role` WRITE;
/*!40000 ALTER TABLE `app_role` DISABLE KEYS */;
INSERT INTO `app_role` VALUES (1,'ADMIN'),(3,'MANAGER'),(38,'SHIPPER'),(39,'TRANSPORTER');
/*!40000 ALTER TABLE `app_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `id_user` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user`
--

LOCK TABLES `app_user` WRITE;
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
INSERT INTO `app_user` VALUES (1,'$2a$10$RhfJSGhaBRFyBnt/Rz6GEOgHe.yh43m./ivSH549bmG1vRTjR0koq','admin',NULL),(7,'$2a$10$4cvIUj1BCDAbYmkXqUeQsOYcxarxEG6YLBq2FfbDb/9SuP.gT/YLa','shipper01',52),(3,'$2a$10$wiT54ySqx1GvkLwhs5lcxO2rK1t/uerE2Msa3oJqttnTmv/jPzE3q','manager',NULL),(4,'$2a$10$EhBIN75OIlBSkerP9dU26ON4M1NbSqAJzBAwYS8sI1ECJTcZtJ2lK','shipper',54),(5,'$2a$10$LfIYfLC3CdsamCgCDJoLeeO/LwHMYON0zJWAb027mXiLLLdy7svbe','transporter',8),(6,'$2a$10$LfIYfLC3CdsamCgCDJoLeeO/LwHMYON0zJWAb027mXiLLLdy7svbe','transporter01',1);
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_user_roles`
--

DROP TABLE IF EXISTS `app_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `app_user_roles` (
  `app_user_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL,
  KEY `FK1pfb2loa8so5oi6ak7rh6enva` (`roles_id`),
  KEY `FKkwxexnudtp5gmt82j0qtytnoe` (`app_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_user_roles`
--

LOCK TABLES `app_user_roles` WRITE;
/*!40000 ALTER TABLE `app_user_roles` DISABLE KEYS */;
INSERT INTO `app_user_roles` VALUES (1,2),(1,1),(1,3),(2,2),(3,3),(4,38),(5,39),(7,38),(6,39);
/*!40000 ALTER TABLE `app_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autre_entretien`
--

DROP TABLE IF EXISTS `autre_entretien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `autre_entretien` (
  `id` bigint(20) NOT NULL,
  `date_fait` date DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `km_trage` bigint(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `odo_fait` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autre_entretien`
--

LOCK TABLES `autre_entretien` WRITE;
/*!40000 ALTER TABLE `autre_entretien` DISABLE KEYS */;
INSERT INTO `autre_entretien` VALUES (1,NULL,18,156478,'HFEWH IJKEJI','ent01',NULL),(2,NULL,18,4465464,'hsdhfsdhfjk','ent02',NULL),(196,'2018-12-30',106,750000,'Inspection de tous, ....\nChanger ses  phares, ...','Entretien a 750 mille',879400),(197,'2019-01-17',111,18000,'test for unite 18','u18-01',600000),(198,'2019-01-16',111,28000,'test for unite 18 - check all','u18-02',500000),(348,NULL,235,NULL,'Ajustement de frein et graissage ','Maintenance quotidienne',812000);
/*!40000 ALTER TABLE `autre_entretien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_client`
--

DROP TABLE IF EXISTS `bank_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bank_client` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `depuis` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` bigint(20) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `raison_sociale` varchar(255) DEFAULT NULL,
  `tel` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_client`
--

LOCK TABLES `bank_client` WRITE;
/*!40000 ALTER TABLE `bank_client` DISABLE KEYS */;
INSERT INTO `bank_client` VALUES (538,'71 Conair Parkway Woodbridge, Ontario L4H 0S4','Gary McConnell',NULL,'g.mcconnell@rolark.com',NULL,'Rolark Ontario',NULL,13655272488),(536,'5685 Rue Cypihot, Saint-Laurent, H4S 1R3, Quebec','Sas Dectron',NULL,'parts@DehumidifiedAirServices.com',NULL,'SAS Dectron Inc',NULL,5143363330),(557,' 49, boul. de la Seigneurie Est             Blainville, Québec   J7C 4G6','Benoit Comeau',NULL,'b.comeau@panfab.ca',NULL,'PanFAB Inc.',NULL,4504303029),(535,'5400 J.A Bombardier, St-Hubert, Quebec, J3z1G8','Cicame Energie',NULL,'ventes@cicame-energie.ca',NULL,'Cicame Energie Incr St-Hubert J3z1G8',NULL,4506797778),(558,'1044,Principale,St-Thomas ,Quebec J0K 3L0','None',NULL,'info@harnois.com',NULL,'Les Industries Harnois Inc.',NULL,4507568389),(537,'89, rue Morane Laval, Quebec H7M 1R6','None',NULL,'j.montreal@myjacquet.com',NULL,'Jacquet Montreal',NULL,5146316833),(559,'2000,Route 222,St-Denis-De-Brompton,Quebec J0B 2P0','None',NULL,'info@sequoiaindustries.ca',NULL,'Sequoia Industries Inc.',NULL,8198464480),(560,'160-2 ,Boulevard Industriel,Boucherville,Quebec J4B 2X3','None',NULL,'logistique.boucherville@texel.ca',NULL,'Texel Materiaux Techniques Inc.',NULL,4506500100),(541,'10260, boulevard Bourque Sherbrooke ,Québec  J1N 0G2','None',NULL,'info@pieuvistech.com',NULL,'Pieux Vistech',NULL,8198433003),(544,'1541, de Coulomb, Boucherville, QC, Canada J4B 8C5','None',NULL,'info@groupesimoneau.com',NULL,'GroupeSimoneau',NULL,4506419140),(545,'2330, Jean-Adam Saint-Sauveur, Québec Canada, J0R 1R2','None',NULL,'tech@multinautic.com',NULL,'MultiNautic International',NULL,4502276217),(546,'894 rue Berlier, Laval, Québec Canada H7L 4K5','None',NULL,'info@controlesrl.com',NULL,'CntrolesRL',NULL,4509671703),(547,'3 Place du Commerce, Suite 101 Île-des-Soeurs, Verdun, QC H3E 1H7 Canada',NULL,NULL,'sales@ipexna.com',NULL,'IPEX INC.',NULL,15147692200),(548,'933 avenue Simard Chambly, QC, CANADA J3L 4B7 ','None',NULL,'info@platinumtank.com',NULL,'ALMAC TANK',NULL,4506586671),(551,'1995 , Merivale Road, Ottawa,Ontario K2G1G1','Russ McLellan EXT#21',NULL,'rmclellan@eastwaytank.com',NULL,'EASTWAY TANK',NULL,6132261525),(552,'18 005,Lapointe,Mirabel,J7J 0G2','None',NULL,'marketing@biessecanada.com',NULL,'BIESSE CANADA',NULL,504375534),(553,'171, Avenue Marien Montréal-Est (QC) H1B 5V1 Canada','Marco Bertolucci',NULL,'MBertolucci@pcminnovation.com',NULL,'PCM Innovation',NULL,5147277113),(554,'3611,Route 346,Sainte-Julienne,Quebec J0K2T0','Chantale',NULL,'Chantale@itihydraulik.com',NULL,'ITI Hydraulik',NULL,4508313229),(555,'904,Jacques-Paschini,Bois-Des-Fillion,Quebec J6W 4W4','Ann Krystine Perreault',NULL,'info@emspec.com',NULL,'EMSPEC INC.',NULL,4504305522),(556,'8500 St Patrick LaSalle, Québec H8N 1V1 Canada','None',NULL,'info@cosmeinc.com',NULL,'Cosme Inc.',NULL,5143651616),(561,'75,Rue De Lisbonne,Saint-Augustin-De-Desmaures,Quebec G3A0M9','None',NULL,'soumission@metal-laurentide.com ',NULL,'Metal Laurentide',NULL,4186884515),(562,'6565 Hébert Boulevard, suite 201 Sainte-Catherine (Québec) J5C 1B5','None',NULL,'info@transarctik.desgagnes.com',NULL,'Nunavut Sealink Supply',NULL,4506350833),(563,'2145, rue Michelin Laval (Québec) Canada H7L 5B8','None',NULL,'info@aquarehab.com',NULL,'Aquarehab Canada Inc.',NULL,4506873472),(566,'344, avenue Hamford Lachute, Qc J8H 3P6','None',NULL,'expedition@vizusolution.com',NULL,'Vizu Solutions',NULL,4505665622),(567,'Plastruction inc. 6879, rue jarry est Saint Léonard (Québec) H1P 1W7','None',NULL,'serviceclientele@plastruction.com',NULL,'Plastruction',NULL,5143557420),(568,'545, rue Lanaudière, suite 2 Repentigny (Québec) J6A 7N1','None',NULL,'multiplis@multiplis.qc.ca',NULL,'Multi-Plis Inc.',NULL,4506542771),(569,'123 Wescar Lane Carp, ON K0A 1L0','None',NULL,'info@amblift.com',NULL,'A.M.B Lift (CARP)',NULL,6138319830),(570,'289 Jameson Drive Peterborough, ON K9J 6X6','None',NULL,NULL,NULL,'A.M.B Lift (PeterBorough)',NULL,7059307161),(571,'225 rue Norman Montréal, Québec, Canada H8R 1A3','None',NULL,'info@enseicom.com',NULL,'Enseicom',NULL,5144862626),(600,'135 rue Bélanger Châteauguay, Québec J6J 4Z2 ','None',NULL,'info@emeinc.ca',NULL,'Emballage Montreal Express',NULL,4506914600),(601,'225 rue Norman Montréal, Québec, Canada H8R 1A3','None',NULL,'info@enseicom.com ',NULL,'Enseicom inc.',NULL,5144862626),(602,'12770 Rue Brault, Mirabel,Quebec J7J0W3','None',NULL,'info@boulonsplus.net',NULL,'Boulons Plus Mirabel',NULL,4504201839),(611,'950, rue Bernier St-Jean-sur-Richelieu, J2W 2H1, Quebec Canada','None',NULL,'st-jean@groupeyvesgagnon.com',NULL,'Groupe Yves Gagnon (B.M.R)',NULL,4503591311),(612,'6305,Ch de la Savane,St-Hubert,Quebec J3Y 8Y9','none',NULL,'info@dizzleinc.com',NULL,'Dizzle Inc',NULL,5148209797),(619,'19 Place Triaucourt,Lorraine,Quebec,J6Z-4K2','Robert Baril',NULL,'info@poly-expert.com',NULL,'Poly Expert',NULL,4506213177),(620,'3865 Alfred Laliberté,Boisbriand,Quebec J7H 1P7','Pierre Maisonneuve',NULL,'info@excavationmaisonneuve.com',NULL,'Ent Charles Maisonneuve',NULL,4504306160),(621,'105-201 Omer De Serres,Blainville,Quebec,J7C 0K2','Philippe Lemiex',NULL,'info@acl-construction.com',NULL,'ACL Construction',NULL,4504356695),(622,'10 Emilien Marcous,Blainville,Quebec J7C0B5','Patrick Gharzani',NULL,'info@sbb.ca',NULL,'Acier Profilé SBB',NULL,4509703055),(623,'14519,Joseph Marc Vermette,Mirabel,Quebec J7J 1X2','4504303663',NULL,'info@toiturespme.com',NULL,'Toitures PME',NULL,4504303663),(624,'217,Rene A Robert,Ste-Therese,Quebec,J7E 4L1','Olivier Thinel',NULL,'info@location-ste-therese.ca',NULL,'Location Outils Ste-Therese',NULL,4504356711),(625,'166-277 Curée-Labelle,Rosemere,Quebec J7A 2H3','Mohamed El Hariri',NULL,'info@procaneq.com',NULL,'Procan Equipements',NULL,4509471295),(626,'104-99 Emilien Marcoux,Blainville,Quebec J7C 0B4','Mathieu St-Onge',NULL,'info@promellis.com',NULL,'Promellis',NULL,5147450259),(627,'840 Curé Boivin,Boisbriand,Quebec J7G 2A7','Mathieu Begin',NULL,'info@granitueausommet.com',NULL,'Granite Au Sommet',NULL,4504334888),(628,'360 Industriel,St-eustache,Quebec J7R 5R4','Maryline Vallieres',NULL,'info@signalisationdeville.com',NULL,'Signalisation De Ville',NULL,4509835558),(629,'30-#101 Emilien-Marcoux,Blainville,Quebec J7C 0B5','Marc-Andre Lefebvre',NULL,'info@rmtequip.com',NULL,'RMT Equipements',NULL,4509514138),(630,'860 Industriel,Bois-Des-Fillions,Quebec J6Z 4V7','Marc Gouvreau',NULL,'info@flofab.com',NULL,'Flo Fab',NULL,4506212995),(631,'4090 Lavoisier,Boisbriand,Quebec J7H 1R4','Marc Savard',NULL,'info@aciertag.com',NULL,'Acier Tag',NULL,4509630580),(632,'1993 Lionel Bertrand,Boisbriand,Quebec J7H 1N8','Malou Lacasse',NULL,'info@thinkglass.com',NULL,'Thinkglass inc.',NULL,4504201110),(633,'745 Industriel,Blainville,Quebec J7C 0A3','Jocelyn Hogues',NULL,'info@toitureshogue.com',NULL,'Toitures Hogue',NULL,4504356336),(634,'20855 Cote Nord,Boisbriand,Quebec J7E 4H5','Robert Dion',NULL,'info@pavagedion.com',NULL,'Pavage Dion',NULL,4504350333),(635,'4610 Bastien,Terbonne,Quebec J6Y 1B3','Julien Gamache',NULL,'info@propaysage.com',NULL,'Pro Paysage',NULL,5148314006),(638,'104-100 Gaston Dumoulin,Balinville,Quebec J7C 0A3','Josee Veilleux',NULL,NULL,NULL,'LEs Entreprises Cymtech Inc.',NULL,4504346265),(639,'4550 Grande Allée,Boisbriand,Quebec J7H 1S7','Sebastien Vadeboncoeur',NULL,'nfo@immodevco.ca',NULL,'ImmodevConstruction',NULL,4504300012),(640,'3720 Grandes Tourelles,Boisbriand,Quebec J7h 0A1','Jessika Rochon',NULL,'info@elopak.ca',NULL,'ElopaK',NULL,4509702846),(641,'8015 Marco Polo,Montreal,Quebec H1E 5Y8','Jean Sebastien Viau',NULL,'info@groupejsv.com',NULL,'Groupe JSV',NULL,5148260022),(642,'1655-#700,Henri Fabre,Mirabel,Quebec J7N 1E1','Jean Phiippe Robitaille',NULL,'info@syscomax.com',NULL,'Syscomax Inc.',NULL,4504340008),(643,'3400 Losch,St-Hubert,Quebec J3Y 5T6','JF Manoucrier',NULL,'info@jasfiltration.com',NULL,'JAS Filtration',NULL,4509262229),(644,'165 du moulin,St-eustache,Quebec J7R 2P5','Hugo Philippe',NULL,'info@huissierdejustice.ca',NULL,'Phillippe & Associés',NULL,4504917575),(645,'18 Sicard,Ste-Therese,Quebec J7E 3W7','Hubert Racine',NULL,'info@quadraplast.com',NULL,'Quada Plast Inc.',NULL,4504371243),(646,'3670 De La Verendrye,Boisbriand,Quebec J7H 1R5','Harold Wagenknecht',NULL,'info@kaeser.com',NULL,'Kaeser Compresseurs Canada',NULL,4509711414),(647,'12000 Arthur Sicard,Mirabel,Quebec J7j 0E9','Guy Laurin',NULL,'info@laurinlaurin.ca',NULL,'Laurin,Laurin Inc.',NULL,4504359551),(648,'760 Industriel,Blainville,Quebec J7C 3V4','Guy Thibault',NULL,'info@stablex.com',NULL,'Stablex Canada',NULL,4504309230),(649,'16 Rolland Briere,Blainville,Quebec J7C 5N2','Gerard Harvey',NULL,'info@palettesfgl.org',NULL,'Palettes FGL',NULL,4504371146),(650,'143 Dela Station,Laval,Quebec H7M 3W1','Gabriel Dutil',NULL,'info@guimondconstruction.ca',NULL,'Guimond Custruction EJP Inc.',NULL,4389959490),(651,'81 Gaston Dumoulin,Blainville,Quebec J7C 6B4','Frederik Michaud',NULL,'info@genacol.ca',NULL,'Genacol Canada Inc.',NULL,4504338538),(652,'112-29,Gaston Dumoulin,Blainville,Quebec J7C 6B4','Frank Riccardi',NULL,'info@rodavinc.ca',NULL,'Les Entreprises Rodav Inc.',NULL,4504355553),(653,'10-220,Chemin Grande Cote,Boisbriand,Quebec J7G 1B6','Francois Pier Garceau',NULL,NULL,NULL,'Construction Devcam',NULL,4504372424),(657,'411 John F Kennedy,St-Jerome,Quebec J7Y 4B5','Etienne Legaré',NULL,'info@robertlegare.com',NULL,'Robert Légaré Ltée',NULL,4504383894),(658,'740 #222,Boul Industriel,Blainville,Quebec J7C-3V4','Etienne Laroche',NULL,'info@groupenordscene.ca',NULL,'Groupe Nord-Scène',NULL,4509790835),(659,'3729 La Fayette Est,Boisbriand,Quebec J7H 1S4','Eric Pelletier',NULL,'info@polychem.ca',NULL,'Equipement Polychem Inc.',NULL,4509517867),(660,'13 Talcy,Blainville,Quebec J7B 6B8','Eric Gregoire',NULL,'info@ceginc.co',NULL,'Construction Eric Gregoire Inc.',NULL,4509795044),(661,'102-50 Marius Warnet,Blainville,Quebec J7C 5P9','Dominic Payette',NULL,'info@edpco.ca',NULL,'Entreprise Dominic Payette Inc.',NULL,4509798631),(662,'102-50 Marius Warnet,Blainville,Quebec J7C 5P9','Dario Montoni',NULL,'info@groupemontoni.com',NULL,'Groupe Montoni',NULL,4509787500),(663,'228,Lalande,Rosemere,Quebec J7A 4J1','Danny Leduc',NULL,'info@ludec.ca',NULL,'Groupe Ludec',NULL,4509519911),(664,'555 Blvd Curé-Boivin,Boisbriand,Quebec J7G 2A8','Daniel Fournier',NULL,'info@toiturefournier.ca',NULL,'Toiture Fournier',NULL,4506642122),(665,'4035,LAvoisier,Boisbriand,Quebec J7H 1N1','Clyde Sharp',NULL,'info@elastoproxy.com',NULL,'Elasto Proxy Inc.',NULL,4504342744),(666,'801 Curé-Boivin,Boisbriand,Quebec J7G 2J2','Clement Larouche',NULL,'info@coh.ca',NULL,'REEEL COH Inc.',NULL,4504306500),(667,'757 Boulevard Cué-Labelle,Blainville,Quebec J7C 2K4','Claude Charron',NULL,NULL,NULL,'Fenetres Magistral Windows Inc.',NULL,4504338733),(668,'18195 J A Bombardier,Mirabel,Quebec J7J 0B8','Christine Diorio',NULL,'info@oangetraffic.com',NULL,'Orange Traffic-Ingenierie',NULL,18003635913),(669,'37 Croissant de la Sakami,Terbonne,Quebec,J6W 0B6','Charles Côté',NULL,NULL,NULL,'Groupe MCD Inc.',NULL,5147719722),(670,'10 Rue Sicard,Ste-Therese,Quebec J7E 4K9','Chakib Toulab-Seghir',NULL,'info@paccar.com',NULL,'PACCAR Du Canada Ltée',NULL,4504335200),(671,'202-1670, Lionel Bertrand,Boisbriand,Quebec J7H 1N7','Caroline Laberge',NULL,'info@belroy.ca',NULL,'Belroy Construction',NULL,4509393185),(677,'895,Av Muck,Laval,Quebec H7S 1A9','Antoine Nassif',NULL,'info@diamond-group.com',NULL,'Custom Diamond',NULL,4506680330),(678,'218,Rue Poirier,St-Eustache,Quebec J7R 6B1','Antoine Renaud Martel',NULL,'info@pepin-sim.com',NULL,'SIM',NULL,4504731889),(679,'500,Boulevard Curée-Boivin,Boisbriand,Quebec J7G 2A7','Antoine Sarrazin',NULL,'info@usi-max.ca',NULL,'Usinage Usi-Max',NULL,5143234430),(680,'401,Rue Lavoisier,Boisbriand,Quebec J7H 1N1','Annie Lecavalier',NULL,'info@envirourgence.com',NULL,'Enviro Urgence Inc.',NULL,18774375559),(681,'323 Mtée Gagnon,Ste-Anne-Des-Planes,Quebec J0N 1H0','Anne Marie Harvey',NULL,'www.bmr.co',NULL,'BMR (Boisbriand)',NULL,4504781261),(682,'19,Rue Gaston-Dumulin,Blainville,Quebec J7C 6B4','Alain Cardinal',NULL,'info@mecanolca.ca',NULL,'Mecano Alca-Automobile',NULL,4504371010),(683,'645 Curée-Boivin,Boisbriand,Quebec J7G 2A7','Tarek Farah',NULL,'info@griffon.ca',NULL,'Granite Griffon',NULL,4504195111),(684,'3980 Lavoisier,Boisbriand,Quebec J7H 1N2','Sophie Charron',NULL,'info@aciercharron.com',NULL,'Acier Charron',NULL,4504341418),(685,'20 550,Cote Nord,Mirabel,Quebec J7J2B7','4504307900',NULL,'info@jraymond.ca',NULL,'J.Raymond Couvreur Et Fils Inc.',NULL,4504307900),(686,'1575,Saint-Elzéar Ouest,Laval,Quebec H7L 3N6','Antillo Bastone',NULL,'info@mstainless.com',NULL,'Monssieur Acier Inoxydable Inc.',NULL,4506878085),(687,'1460,Rue Michelin,Laval,Quebec H7L 4R3','Frank Toth',NULL,'ftoth@bachmann.ca',NULL,'Bachmann Dampjoint',NULL,4507868686),(689,'2897,Francis-Hughes,Laval,Quebec H7L 4G8','Jean Marc Champigny EXT#4210',NULL,'info@echafaudsplus.com',NULL,'Echafauds-Plus',NULL,4506631926),(690,'303,Saint-Elzéar Ouest,Laval,Quebec H7L 3N5','Marc Belisle',NULL,'mbelisle@sibelectrique.com',NULL,'SIB Electrique Inc. ',NULL,4509751222),(691,'540,Industriel,St-Eustache,Quebec J7R 5V3','Daniel',NULL,'info@powercast.ca',NULL,'Fabrication Powercast Inc.',NULL,4504761517),(692,'1001,Industriel,St-Eustache,Quebec J7R 6C3','Oma Palazzini',NULL,'opallazzini@tri-tex.com',NULL,'Tri-Tex Co',NULL,4509741001),(693,'601,Indsutriel,St-Eustache,Qeuebec J7R 6C3','4506238449',NULL,'richardtrudel@acierrobel.com',NULL,'Acier Robel Inc.',NULL,4506238449),(694,'516-#18,Poirier,St-eustache,Quebec,J7R 5R6','None',NULL,'ap@echafaudage.ca',NULL,'Ap Services D\'echafaudage',NULL,4504735811),(695,'226,Rue Roy,St-Eustache,Quebec J7R 5R6','David On EXT#230',NULL,'don@trafic-innoation.com',NULL,'Traffic Innovation',NULL,4506232580),(696,'211,Rue Roy,St-Eustache,Quebec J7R 5R5','Daniel Vaillancourt',NULL,'dvaillancourt@nordfab.ca',NULL,'Acier NordFab Inc.',NULL,4504726664),(697,'209,Rue Roy,St-Eustache,Quebec J7R 5R5','Eric Laflamme',NULL,'elaflamme@boisellen.ca',NULL,'Emballage Gregso',NULL,5143830040),(698,'293,Industriel,St-Eustache,Quebec J7R 6B7','Marc Despaois EXT#101',NULL,'marc@nrgqc.com',NULL,'NRG Management',NULL,4506231666),(700,'5535,Ernest-Cormier,Laval,Quebec H7C 2S9','Ian',NULL,'ijames@comairco.com',NULL,'Comairco',NULL,4506658780),(701,'1445,Bergar,Laval,Quebec HL 4Z7','Sabrina Methot EXT#4404',NULL,'sabrina.methot@liftow.com',NULL,'Liftow Laval',NULL,4509013500),(702,'975,Bergar,Laval,Quebec H7L 4Z6','Yves',NULL,'info@signaplus.ca',NULL,'Signa +',NULL,4506224111),(703,'161,Des Laurentides,Laval,Quebec H7G 2T4','Francois',NULL,'fgauthier@locationravary.com',NULL,'Location Ravary',NULL,4506639000),(704,'985,Rue Lippmann,Laval,Quebec H7S 1G3','Maxime Lauzon EXT#218',NULL,'mlauzon@loue-froid.com',NULL,'Loue Froid',NULL,5145279009),(705,'4519,Levesque Est,Laval,Quebec H7C 1M7','Eric Senecal',NULL,'info@locationms.com',NULL,'Location MS',NULL,4506610777),(706,'3175,Industriel,Laval,Quebec H7L 4P8','Eric Lapierre',NULL,'elapierre@decair.ca',NULL,'Descair',NULL,5147446751),(707,'1961,Des Laurentides,Laval,Quebec H7M 2R2','Annie Jalbert',NULL,'annie@adecnet.com',NULL,'Compresseurs ADES Ltée',NULL,4506685050),(708,'3386,Industriel,Laval,Quebec H7L 4R9','Sean',NULL,'siecuyer@groupecae.com',NULL,'Compresseur D\'air Express',NULL,4507868600),(709,'3421,Industriel,Laval,Quebec H7L 4S3','Mike Pietroniro',NULL,'mike_pietroniro@tramac.com',NULL,'Equipement Tramac Ltée',NULL,4506638122),(711,'1070 Montée Masson,Laval,Quebec H7C 1S3','Sylvain',NULL,'sylvain.birard@mtlbp.com',NULL,'Montreal Brique Et Pierre',NULL,4506611515),(712,'4250 , Autoroute Chomedey,Laval,Quebec H7R 6E9','Gien Verge',NULL,'glen.verge@liebherr.com',NULL,'Liebherr Canada Ltée',NULL,4509637174),(713,'4200, Autoroute Chomedey,Laval,Quebec H7R 6E9','Justine Pelletier',NULL,'justine@cropac.com',NULL,'Cropac Equipement Inc',NULL,4503524738),(714,'2755,Rue Etienne-Lenois,Laval,Quebec H7R 0A3','Dimitra Zergiotis',NULL,'dimitra.zergiotis@vermeercanada.com',NULL,'Vermeer Canada inc.',NULL,5143311332),(715,'2855,Rue Etienne-Lenoir,Laval,Quebec H7R 6J4','Guylaine Leferbvre',NULL,'glefebvre@epgpipe.com',NULL,'Fusionex',NULL,4509633010),(716,'1936,32e Avenue,Lachine,Quebec H8T 3J7','John Signoile EXT#4121',NULL,'john.signorile@liftow.com',NULL,'Listow MTL',NULL,5146339360),(717,'2114,32E Avenur,Lachine,Quebec H8T 3H7','Shawn Kelly',NULL,'s.kelly@grimco.com',NULL,'Grimco',NULL,5146362662),(718,'2750,Rue Halpern,Saint-Laurent,Quebec H4S 1R6','Frank Jordano',NULL,'frank@eurols.com',NULL,'Euro L.S Inc.',NULL,5143354071),(719,'550,Montée de Liesse,Montreal,Quebec H4T 1N8','Eric Corellius',NULL,'ecorelius@moteurs.ca',NULL,'Moteurs Electriques Laval Ltée',NULL,5147313737),(720,'3185,Pitfield,Saint-Laurent,Quebec H4S 1H6','Charles-Hugo Lortie',NULL,'clortie@ur.com',NULL,'United Rentals',NULL,5143317550),(721,'3000,Boulevard Pitfield,Saint-Laurent,Quebec H4S 1K6','Jean Sebastien Roy',NULL,'jeansebastien.roy@toromont.com',NULL,'Location D\'equipement Battlefield',NULL,5143347265),(722,'3030,Boulevard Pitfield,Saint-Laurent,Quebec H4s 1K6','Julie Roy',NULL,'jroy@outecindustriel.com',NULL,'Lou-Tec Industriel (Saint-Laurent)',NULL,5143331113),(723,'3000,Rue Louis A Amos,Lachine,Quebec H8T 3P8','Marc James',NULL,'marc.james@anixter.com',NULL,'Anixter',NULL,5146363636),(724,'3187,Rue Louis A Amos,Lachine,Quebec H8T 1C4','Wendy',NULL,'canchi@canchiwarehouse.com',NULL,'Canchi',NULL,5146330333),(725,'14800,Côte des Anges,Mirabel,Quebec J7N 2G9','Gerry',NULL,'gerrydeko@bellnet.ca',NULL,'Deko Soudure Inc.',NULL,4504756440),(726,'3187,Rue Louis A Amos,Lachine,Quebec H8T 1C4','Wendy',NULL,'canchi@canchiwarehouse.com',NULL,'Canchi Bon Demenagement',NULL,5146330333),(727,'100-12075, Rue Arthur Sicard,Mirabel,Quebec J7J 0E9','Dorianne',NULL,'estimation@duroking.com',NULL,'Duroking Construction',NULL,4504303878),(728,'4100,Rue Brodeur,Sherbrooke,Quebec J1L 1V9','Caroline',NULL,'info@tresk.com',NULL,'Tresk Inc',NULL,8195642676),(729,'985,Rue André-Liné,Granby,Quebec J2J 1J6','Chantal EXT#2116',NULL,'ostiguy-c-ezeflow.ca',NULL,'Ezeflow',NULL,4503753575),(730,'351, Avenue Dalcourt,Louiseville,Quebec J5V 1A6','Marlene',NULL,'mdube@omnifab.ca',NULL,'Omnifab',NULL,8192281476),(731,'4200,Autoroute Chomedey,Laval,Quebec H7R 6E9','Olivier Laflamme',NULL,'olivier@cropac.com',NULL,'Cropac Equipement Inc',NULL,4506254738),(732,'14160,Boulevard Curée-Labelle,Mirabel,Quebec J7J 1L6','Stephane',NULL,'mecatech@videotron.ca',NULL,'Location D\'outils Mecatech',NULL,4509792222),(733,'246,Route Sainte Anne Ouest,Yamachiche,Quebec G0X 3L0','Rafi',NULL,'info@recyclageindustriel.com',NULL,'Recyclage Industriel',NULL,5145606688),(734,'2907,Dagenais Ouest,Laval,Quebec H7P 1T2','Christian Gendron',NULL,'christian.gendron@ebarette.com',NULL,'Barrette Structual',NULL,4506224990),(735,'1124,Rue Saint-Calixte,Plessiville,Quebec G6L 1N8','Marc Levasseur',NULL,'Marc.Levasseur@ciemotoparts.com',NULL,'Compressair Canada inc / Auto Parts',NULL,8193627373),(736,'56#10,Chemin du Bois-Franc,Saint-Laurent,Quebec H4S 1A9','Robin Tremblay',NULL,'robintremblay@deval.ca',NULL,'Deval Chariots Elevateur',NULL,514223750),(737,'320,Quebec-108,Courcelles,Quebec,G0M 1C0','Maryse',NULL,'maryse@equipements-sylmar.com',NULL,'Sylmar Inc.',NULL,5144835581),(738,'100,Rue Arboit,L\'assomption,Quebec,J5W 4P5','Steven EXT#609',NULL,'sbeaudry@rocktel.ca',NULL,'Rocktel Inc.',NULL,5148275835),(739,'1280,Rue Graham-Bell,Boucherville,Quebec J4B 6A1','Annie',NULL,'aguillemette@serl.qc.ca',NULL,'Services Energetiques R.L Inc.',NULL,4506550005),(740,'6330,Boulevard Des Grandes-Prairies,Saint-Leonard,Quebec H1P 1A2','Roger',NULL,'info@lebro.com',NULL,'Atelier D\'Usinage Lebro Inc.',NULL,5143275268),(741,'160,Rue Desloriers,Saint-Laurent,Quebec H4N 1V8','Patrick Breault',NULL,'pbreault@constructionnrc.com',NULL,'Construction N R C Inc.',NULL,5143317944),(742,'2114,32e Avenue,Lachine,Quebec H8T 3H7','André',NULL,'grimco.ar@gmail.com',NULL,'Grimco',NULL,5143353256),(743,'550,Mtée de Liesse,Montreal,Quebec H4T 1N8','Eric Corielus',NULL,'eric.corielus@moteurs.ca',NULL,'Moteurs Electriques Laval Ltée',NULL,5147313737),(744,'3225,Rue De L\'industrie,St-Mathieu-De-Beloeil J3G 0J8','Martin',NULL,'services@a1machinery.com',NULL,'A1 Machinery',NULL,4506002295),(745,'155,Boulevard Industriel,Chateauguay,Quebec J6J 4Z2','Yves',NULL,'yvesbalancegtr@gmail.com',NULL,'Balance G.T.R Inc',NULL,5148567736),(746,'875,Rue Alfred Viau,St-Jerome,Quebec J7Y 4N7','Katrine',NULL,'Katrine@pr-protech.ca',NULL,'Pont Roulant Protech Inc.',NULL,4505609193),(747,'1720,Chemin Gascon,Terbonne,Quebec J6X 3A4','Martin Paquette',NULL,NULL,NULL,'Via Route/Bleu Pelican',NULL,4504715963),(748,'5520,Rue Martineau,St-Hyacinthe,Quebec, J2R 1T7','Charlene Gallant',NULL,'charlenegallant@inotrac.ca',NULL,'Inotrac',NULL,4507963707),(749,'429,Cote Sud,Boisbriand,Quebec J7E 4H5','PatriciaEXT#200',NULL,'patricia@dion-ag.com',NULL,'DION',NULL,4504373449),(750,'1912,Rue Everett,Montreal,Quebec H2E 1P2','Michel Ou André',NULL,'info@equipementsdal.com',NULL,'DAL-Chambre Froide',NULL,5147273150),(751,'147,Boulevard Perron Est,Ste-Anne-Des-Monts,Quebec G4V 3A3','Josée Theriault',NULL,NULL,NULL,'Inox Signature',NULL,4187630488),(752,'780,Boulevard De L\'Université,RouynNoranda,Quebec J9X 7A5','Guillaume',NULL,'Ga@acces-s.ca',NULL,'Acces Industriel',NULL,8197646686),(753,'785 ,16e Rang,Villeroy,Quebec G0S 3K0','Diane',NULL,'info@matriform.com',NULL,'Matriform',NULL,4186839749),(754,'4020,Rue Garand,Laval,Quebec H7L 5C9','Ian Ou Marie-France',NULL,'ian.goyer@metalium.com',NULL,'Metalium Inc',NULL,4509630411),(755,'2620,Chemin Plamondon,Sainte-Madelaine,Quebec J0H 1S0',NULL,NULL,NULL,NULL,'Machinerie De Ferme Kuhn Inc.',NULL,18888085380),(756,'3315,Boulevard des entreprises, Terbonne,Quebec J6X 4J9','Phillipe Cadieux',NULL,'philippe@airpc.ca',NULL,'Airpc',NULL,4506692220),(757,'5825,Metropolitain Est,St-Leonard,Quebec H1P 1X3','Sylvain Gagnon',NULL,'sgagnon@chariotsgagnon.com',NULL,'Les Chariots Elevateurs Gagnon Inc.',NULL,5143258825),(758,'1731,Route Harwood,Vaudreuil-Dorion,Quebec J7V 8P2','Pierre Moreau',NULL,'pierremoreau@seguin-machinery.com',NULL,'Seguin Machinerie Ltée',NULL,5149353531),(759,'2868,Boulevard De La Rive Sud,St-Romuald,Quebec G6W 6P1','Gaetan',NULL,'gaetan@machinerieplante.com',NULL,'Machinerie J-P Plante Inc.',NULL,4188398333),(765,'525, Av Edward-VII,Dorval,Quebec H9P 1E6','Sebastien Trudel EXT#256',NULL,'sebastien.trudel@bmp-group.com',NULL,'Bailey Metal Products Limited',NULL,5147353455),(766,'921,Chemin-De-La-Riviere-Nord,St-Jerome,Quebec J7Y 5G2','Sebastien Deslaurier',NULL,'Sebastien.Deslauriers@thelionelectric.com',NULL,'La Compagnie Electrique Lion',NULL,4504325466),(767,'1655,Boul Hymus,Dorval,Quebec H9P 1J5','Charles EXT#3182',NULL,'charlesplourde@gincor.com',NULL,'Del Equipement',NULL,5146841760),(768,'5000,Rue Levy,St-Laurent,Quebec H4R 2P1','Carvalho EXT#52497',NULL,'ainslev.carvalho@johnstonequipement.com',NULL,'Equipements Johnston',NULL,6137450744),(769,'699,Boul Industriel,St-Eustache,Quebec','Paul Parento',NULL,'paul.parento@forterra.com',NULL,'Forterra',NULL,4506232200),(770,'1865,Rue Jean Monnet,Terbonne,Quebec J6X 4L7','Karyna',NULL,'reception@bromerinc.com',NULL,'Bromer Inc',NULL,4504776682),(771,'1160,Route 133,Saint-Jean-Sur-Richelieu,Quebec J2X 4J5','Dan',NULL,NULL,NULL,'Soleno Inc',NULL,4503477855),(772,'929, Rue Montaigne,Deux-Montagnes,Quebec J7R 6S2','Bertrand',NULL,'lesrevetementsbcs@videotron.ca',NULL,'Revetements BCS Inc.',NULL,4504914560),(773,'1044,Rue Viger,Terbonne,Quebec J6W 6B9','4509645134',NULL,'marie-pier.lavoie@faguy.com',NULL,'Le Groupe Roger Faguy Inc',NULL,4509645134),(774,'336,Notre-Dame,Charlemagne,Quebec','Richard',NULL,'richard.007@videotron.ca',NULL,'Equpements Lemieux',NULL,5148201137),(775,'1279,Rue Paul-Émile-Giroux,Quebec City,Quebec G1C 8A3','Mario EXT#236',NULL,'mdupont@equipementse3.com',NULL,'Equipements D\'Entrepot E3',NULL,4186286893),(776,'6650,Avenue Paul-Emile-Lamarche,St-Leonard,Quebec H1p 1J7','Jean-Sebastien',NULL,'jlangelier@moduloc.ca',NULL,'Modu-Loc Fence Rentals',NULL,5148818715),(777,'4955,Chemin St-Francois,Saint-Laurent,Quebec H4S 1P3','Fabien',NULL,'ffabien@dickiemoore.com',NULL,'Location Dickie Moore-Moore JCB',NULL,5143331212),(778,'661,Quebec 111 Ouest,Amos,Quebec J9T 2Y1','Noella',NULL,'noella.boudreault@nortrax.com',NULL,'Nortrax Amos',NULL,897322345),(779,'4500,Autoroute Chomedey,Laval,Quebec H7R 6E9','None',NULL,NULL,NULL,'Nortrax Laval',NULL,4506253221),(780,'780,Chemin Olivier,Saint-Nicolas,Quebec G7A 2N2','Eric Dumas',NULL,'edumas@plannord.ca',NULL,'Equipements Plannord Ltée',NULL,4188311155),(781,'9500,Boulevard Parkway,Anjou,Quebec,H1J 1N9','Kevin',NULL,'kharvey@trjtelecom.com',NULL,'TRJ Telecom',NULL,5143162660),(782,'8570,Du Golf,Anjou,Quebec H1J 3A1','Sylvie',NULL,'sylvie.rousseau@nortek.com',NULL,'Nortek Air Solutions (Ventrol)',NULL,5143547776),(783,'1805,Boulevard Lionel Bertrand,Boisbriand,Quebec J7H 1N8','Luc Gagnon',NULL,'lgagnon@diesel-bec.com',NULL,'Diesel-Bec Inc.',NULL,4504343401),(784,'5840,Rue Donahue,Saint-Laurent,Quebec H4S 1C1','Francis Dextraze',NULL,'fdextraze@concreate.com',NULL,'Construction Concreate Ltée',NULL,5143350412),(785,'1624,Marie-Victorin,Varennes,Quebec J3X 1P7','Kevin',NULL,'kethier@longus.ca',NULL,'Longus Equipement Inc',NULL,4506522552),(786,'2000,Boulevard Fortin,Laval,Quebec H7S 1P3','Yves',NULL,'y.boudron@metra-aluminium.com',NULL,'Metra Aluminium',NULL,4506294260),(787,'2508,Country Rd 20,Maxville K0C 1T0','Alex EXT#200',NULL,'alex@maxvillefarmmachinery.com',NULL,'Maxville Farm Machinery Ltd',NULL,6135272834),(788,'306,Rue Notre-Dame,Saint-Francois-Du-Lac','Daniel Forcier',NULL,'d.forcier@equipforcier.ca',NULL,'Entreprises Piereville Ltée',NULL,4505682120),(789,'144, 5e Blvd D,Terasse-Vaudreuil,Quebec J7V 5M3','Rajean Pinet',NULL,'rpinet@bm-manutention.com',NULL,'BM-Manutention',NULL,5144256772),(790,'6320,Rue Saint-Jacques,Montreal,Quebec H4B 1T6','Jean',NULL,NULL,NULL,'Bourbonnais Chariots Elevateurs Inc',NULL,5144832671),(791,'760, Avenue Thomas,Saint-Jean-Sur-Richelieu,Quebec J2X 5E7','Mathieu Aubry EXT#101',NULL,'mathieu@frontenactechnologies.com',NULL,'Ponts Roulants & Palans Frontenac',NULL,4503585251),(795,'840,Rue de Saint-Romuald,Saint-Romuald,Quebec G6W 5M6','Mario',NULL,'mplante@goroupe-levage-mle.ca',NULL,'MLE Services Inc',NULL,4186031826),(799,'840,Rue De Saint-Romuald,Quebec G6W 5M6','Mario',NULL,'mplante@groupe-levage-mle.ca',NULL,'MLE Services',NULL,4186031826),(800,'1390,Rue Joliot-Curie,Boucherville,Quebec J4B 7L9','Francois',NULL,'francois@duraquip.qc.ca',NULL,'Duraquip inc.',NULL,4504492294),(801,'130,Rue Aubé,Saint-Lazare de bellechasse,Quebec G0R 3J0','Caroline',NULL,'cpruneau@versaprofiles.com',NULL,'Versaprofiles',NULL,4188832036),(802,'954,Route Begin,Saint-Anselme,Quebec G0R 2N0','Nathalie EXT#8354',NULL,'nathalie.goulet@unicoop.qc.ca',NULL,'Unicoop',NULL,4188859637),(803,'4,Rue Du Parc,Warwick,J0A 1M0','Louis Gauthier',NULL,'admin@gauthierlift.com',NULL,'Gauthier Chariots Elevateurs',NULL,8193584050),(804,'5705,Place Kubota,Drummondville,Quebec J2B 6V4','Marco Lecours EXT#222',NULL,'mlecours@techlift.ca',NULL,'Techlift International',NULL,8197515000),(808,'303,St-Elzear Ouest,Laval,Quebec H7L 3N5','Marc',NULL,'mbelisle@sibelectrique.com',NULL,'Surplec Industriel',NULL,4509751222),(809,'3637,Rue Isabelle,Brossard,Quebec J4Y 2R2','Jonathan',NULL,'ventes@multi-industriel.com',NULL,'Multi Industriel',NULL,5148756604),(810,'11475,4e Avenue,Montreal,Quebec H1E 2Y8','Roxane Gagnon',NULL,'rgagnon@renfort.com',NULL,'Renfort ',NULL,5144939993),(811,'6900,Av Marien,Montreal-Est,Quebec H1B 4W3','Marc Thalya',NULL,'mtl@copart.ca',NULL,'Copart',NULL,5146433000),(812,'660,Rue De La Sabliere,Bois-Des-Filion,Quebec J6Z 4T7','Stephane RobitailleEXT#228',NULL,'stephane.robitaille@aireau.com',NULL,'Aireau',NULL,4506216661),(814,'3975,Rue Jean Marchand,Quebec,Quebec G2C 2J2','Jean Pelletier',NULL,'jpelletier@equipementsemu.qc.ca',NULL,'Equipement EMU',NULL,4187672277),(815,'3392,Chemin Sullivan,Val D\'Or,Quebec J9P 0B9','Chantal',NULL,'mstp@mstp.ca',NULL,'Machinerie St-Pierre',NULL,8198246931),(816,'1320,Montée Masson,Laval,Quebec H7E 4P2','Joseph',NULL,'sodec@qc.aibn.com',NULL,'Service Sodec Inc',NULL,4506643331),(817,'2000,Rue John-Molson,Laval,Quebec H7T 0H4','Audreyann Turcotte',NULL,'aaturcotte@wajax.com',NULL,'Wajax (LAVAL)',NULL,4506823737),(818,'1800,Rue Montgolfier,Laval,Quebec H7T 0L9','PO Rolland',NULL,'cgibeault@smsequip.com',NULL,'Equipements SMS',NULL,18005673835),(819,'4333,Boulevard De La Grande-Allée,Boisbriand,Quebec J7H 1M7','Adrian Tudor',NULL,NULL,NULL,'Kiewit',NULL,4504355756),(820,'5770,Industriel,Montreal-Nord,Quebec H1G 3J2','None',NULL,NULL,NULL,'Groupe TEC',NULL,5142849909),(821,'1590-#202,Rue Ampere,Boucherville,Quebec J4B 7L4','JM Chanu EXT#1022',NULL,'jean-michel.chanu@menardcanada.ca',NULL,'Menard Canada',NULL,4504492366),(822,'3000,Rue Des Batisseurs,Terbonne,Quebec J6Y 0A2','Vincent Leclerc',NULL,'v.leclerc@groupeindustrielpremium.com',NULL,'Premium Pont Roulant',NULL,4509680588),(823,'97,Rue De Vaudreuil,Boucherville,Quebec J4B 1K7','Myriam DIon EXT#226',NULL,'mdion@norbec.com',NULL,'Norbec',NULL,4504491499),(824,'3760,De la Verendrye,Boisbriand,Quebec J7H 1R5','Robert Villeneuve',NULL,NULL,NULL,'Keaser',NULL,4509711414),(825,'Ottawa','CPT. Brigitte Flowers',NULL,'flowers@forces.gc.ca',NULL,'Armée Canadienne',NULL,6139717873),(826,'3930,Alfred Laliberté,Boisbriand,Quebec J7H 1P8','Bernard Houle',NULL,'info@equinoxstainless.com',NULL,'Equinox',NULL,4504375933),(827,'20,Rue Patenaude,Saint-Isidore-de-laprairie,Quebec J0L 2A0','Danny Green',NULL,'dannygreen@balancesuniverselles.com',NULL,'Balances Universelles',NULL,4506920000),(828,'29,Rue Beauvais,Delson,Quebec J5B 1W5','Wesley Belanger EXT#214',NULL,'wes.belanger@vddo.ca',NULL,'VDDO',NULL,5143338285),(829,'985,Rue Lippmann,Laval,Quebec H7S 1G3','Maxim Lauzon EXT#218',NULL,'mlauzon@loue-froid.com',NULL,'Loue-Froid',NULL,5145279009),(830,'8250,Av Marco-Polo,Montreal,Quebec H1E 7J9','Stephanie',NULL,'info@groupeproaction.ca',NULL,'Groupe Pro Action',NULL,5146484800),(831,'2535,Rue Halpern,Saint-Laurent,Quebec H4S 1N9','David Zafrani',NULL,'dzafrani@clobracon.com',NULL,'Clobracon Construction',NULL,5147310035),(832,'722,Chemin Industriel,Saint-Nicolas,Quebec G7A 1B5','Dominic Flamand',NULL,'dominic.skylift@gmail.com',NULL,'Skylift Quebec',NULL,4188313664),(833,'5605,Arthur-Sauvé,Mirabel,Quebec J7N 2Z9','Richard Parizeau',NULL,'rparizeau@uniroc.ca',NULL,'Uniroc',NULL,4502584242),(834,'4825,Route 139,Drummondville,Quebec J2A 4E5','Gilles Trepannier',NULL,'g.trepannier@drumcoenergie.ca',NULL,'Drumco Energie',NULL,8198500093),(835,'Av Saint-Jacques,Saint-Raymond,Quebec G3L 3X9','Vincent',NULL,'service@mlsr.ca',NULL,'Machinerie St-Raymond',NULL,4183374001),(836,'3386,Boul Industriel,Laval,Quebec H7L 4R9','Maxime Parent',NULL,'mparent@groupecae.com',NULL,'Compresseur Air Express',NULL,4507868600),(837,'1688,Rue Jean-Berchmans-Michaud,Drummondville,Quebec J2C 8E9','None',NULL,NULL,NULL,'Soprema Canada',NULL,8194788163),(838,'22,Rue Sainte Agathe,Sainte-Agathe-Des-Monts,Quebec J8C 2J4','M Menard',NULL,'etude@pilonhuissiers.ca',NULL,'Pilon Menard Huissier',NULL,8193267707),(839,'110,De Martigny Ouest,St-Jerome,Quebec J7Y 2G1','B Desjardins',NULL,'bdesjardins@desjardinshuissiers.com',NULL,'Desjardins Huissiers',NULL,4504368282),(840,'985,Rue Royale,Trois-Rivieres,Quebec G9A 4H7','Pascal St-Onge',NULL,'administration@trudelhuissiers.com',NULL,'Trudel Huissiers',NULL,8193751074),(841,'12775,Rue Brault,Mirabel,Quebec J7J 0C4','Steve Jean',NULL,'sjean@trevi.ca',NULL,'Trevi',NULL,5142287384),(842,'525,Boul Morgan,Baie-D\'Urfé,Quebec H9X 3T6','Eric',NULL,'eric@chariotgcs.com',NULL,'Chariots Elevateur GCS',NULL,5146319884),(843,'520,Rue J-O Forest,St-Roch-De-L\'achigan,Quebec J0K 3H0','Guy Beaucage',NULL,'guybeaucage@agritex.ca',NULL,'Agritex',NULL,4505887888),(844,'3175,Boul Industriel,Laval,Quebec H7L 4P8','Eric Lapierre',NULL,'elapierre@descair.ca',NULL,'Descair',NULL,5147446751),(845,'14183,Boul Curée-Labelle,Mirabel,Quebec J7J 1M3','Danny Lavigne',NULL,'',NULL,'Kubota Des Laurentides',NULL,4504340000),(846,'30,Boul Hymus,Pointe-Claire,Quebec H9R 1C9','Manon',NULL,'serivce@aerofil.ca',NULL,'Aerofil Inc.',NULL,5146306656),(847,'6600-#750, Autoroute Transcanadienne,Pointe-Claire,H9R 4S2','None',NULL,'ricci.teasdale@gmail.com',NULL,'Ricci Teasdale Huissiers',NULL,5146948993),(848,'249,Boulevard Sainte-Rose,Laval,H7L 1L8','Martin',NULL,'martinb@huissier.qc.ca',NULL,'Charon Boissé Levesque',NULL,4506620955),(849,'803,Notre-Dame,Repentigny,Quebec J5Y 1B4','Marie Eve EXT#6',NULL,'info@gmhuissiers.com',NULL,'Gauthier Montpetit Huissier',NULL,4506570343),(850,'249,Boul Sainte-Rose,Laval,Quebec H7L 1L8','',NULL,'desormeaux.brouillard@csihuissier.com',NULL,'Desormeaux Brouillard Huissier',NULL,4507364444),(851,'4691,Boul Bourque,Sherbrooke,Quebec J1N 2G6','Nancy Turcotte',NULL,'sales@dostie.ca',NULL,'Dostie Spécialités',NULL,8195642142),(852,'1840,Boul Marcotte,Roberval,Quebec,G8H 2P2','Michel Tremblay EXT#2248',NULL,'pieces@gilbert-tech.com',NULL,'Les Produits Gilbert Inc',NULL,4182755041),(853,'3240,Mtée Gagnon,Terbonne,Quebec,J6Y 1K9','Eric',NULL,'rmautobus-eric@videotron.ca',NULL,'Autobus RM Inc',NULL,4504332666),(854,'8101,Boul Parkway,Anjou,Quebec,H1J 1M8','André Henkel',NULL,'ainkel@select-lift.com',NULL,'Equipements Select-Lift Inc',NULL,5143555438),(855,'1140,Boul Saint-Luc,Saint-Jean-Sur-Richelieu,Quebec J2W 2G6','Tony',NULL,'perecca.antonio@gmail.com',NULL,'Excavation Petrecca Inc',NULL,5145864383),(856,'7300,Rue Tellier,Montreal,Quebec H1N 3T7','None',NULL,'yok@proceco.com',NULL,'PROCECO LTD',NULL,5142548494),(857,'1961,Boul Des Laurentides,Laval,Quebec H7M 2R2','Annie',NULL,'annie@adecnet.com',NULL,'Compresseurs ADEC ltée',NULL,4506685050),(858,'4005,rue Lavoisier,Boisbriand,Quebec J7H 1N1','Eric',NULL,'shipping@hydralogie.com',NULL,'Hydralogie Inc',NULL,4504199411),(859,'5001,Autoroute Transcanadienne,Pointe-Claire,Quebec H9R 1B8','Guy Laurent Cell#5142074993',NULL,'Glaurent@Toromont.com',NULL,'Toromont Cat (5001)',NULL,5144267715),(860,'1044,Rue Riger,Terbonne,Quebec J6W 6B9',NULL,NULL,NULL,NULL,'Le Groupe Roger Faguy Inc',NULL,4509645134),(861,'3975, rue Jean-Marchand, Québec  G2C 2J2','None',NULL,'npotvin@equipementsemu.qc.ca',NULL,'Equipements E.M.U',NULL,4187672277),(862,'345,Boul Industriel,St-Eustache,Quebec,J7R 6C9','None',NULL,'contact@poralu.com',NULL,'Poralu Marine Inc.',NULL,4504916505);
/*!40000 ALTER TABLE `bank_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bon_de_travail`
--

DROP TABLE IF EXISTS `bon_de_travail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bon_de_travail` (
  `id` bigint(20) NOT NULL,
  `carrosserie` bit(1) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `entreposage` bit(1) DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `mecanique` bit(1) DEFAULT NULL,
  `piece` bit(1) DEFAULT NULL,
  `remarque` varchar(255) DEFAULT NULL,
  `sablage_au_jet` bit(1) DEFAULT NULL,
  `sous_total` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `tps` float DEFAULT NULL,
  `tvq` float DEFAULT NULL,
  `technicien` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bon_de_travail`
--

LOCK TABLES `bon_de_travail` WRITE;
/*!40000 ALTER TABLE `bon_de_travail` DISABLE KEYS */;
INSERT INTO `bon_de_travail` VALUES (392,_binary '\0','2019-02-28',_binary '\0',111,_binary '',_binary '','Changer pneus d\'ete.',_binary '\0',2225.97,2559.31,111.3,222.04,'per02'),(395,_binary '\0','2019-03-05',_binary '\0',191,_binary '\0',_binary '\0',NULL,_binary '\0',6003,6901.95,300.15,598.8,'per01'),(387,_binary '','2019-02-27',_binary '\0',111,_binary '\0',_binary '\0','Faut changer d\'huile a 25000 km.',_binary '',1152.87,1325.51,57.64,115,'Tech 02'),(539,_binary '\0','2019-03-07',_binary '\0',111,_binary '\0',_binary '\0','checker des freins arrieres.',_binary '\0',1567,1801.66,78.35,156.31,'Pierre Lapoint'),(542,_binary '\0','2019-03-14',_binary '\0',111,_binary '',_binary '\0','Disque gauche est use. \nChecker les freins avant dans un mois.',_binary '\0',516,593.27,25.8,51.47,'Pierre Lapoint'),(564,_binary '\0','2019-03-19',_binary '\0',111,_binary '',_binary '\0','Entretien 2 dans 2 mois',_binary '\0',0,0,0,0,'David'),(572,_binary '','2019-03-26',_binary '\0',111,_binary '',_binary '\0','Attention des pneus',_binary '\0',2466,2835.28,123.3,245.98,'Henry'),(574,_binary '\0','2019-03-05',_binary '',111,_binary '\0',_binary '\0','Il faut le sortir avant 15 mars 2019.',_binary '\0',350,402.41,17.5,34.91,'Florence'),(576,_binary '','2019-03-11',_binary '\0',111,_binary '\0',_binary '\0','Checker aussi d\"huile radiateur',_binary '\0',520,597.87,26,51.87,'Philippe'),(578,_binary '\0',NULL,_binary '\0',NULL,_binary '\0',_binary '\0',NULL,_binary '\0',0,0,0,0,NULL),(579,_binary '\0',NULL,_binary '\0',NULL,_binary '\0',_binary '\0',NULL,_binary '\0',0,0,0,0,NULL),(580,_binary '\0','2019-03-11',_binary '\0',111,_binary '\0',_binary '\0','Bientot test wheels',_binary '\0',1106,1271.62,55.3,110.32,'Kevine01'),(582,_binary '\0','2019-03-12',_binary '\0',111,_binary '',_binary '\0',NULL,_binary '\0',634,728.94,31.7,63.24,'Kevine02'),(585,_binary '\0','2019-03-14',_binary '\0',111,_binary '\0',_binary '\0',NULL,_binary '\0',412,473.7,20.6,41.1,'kevine03'),(587,_binary '\0','2019-03-15',_binary '\0',111,_binary '\0',_binary '\0',NULL,_binary '\0',600,689.85,30,59.85,'kevin04'),(605,_binary '\0',NULL,_binary '\0',106,_binary '\0',_binary '\0',NULL,_binary '\0',674,774.93,33.7,67.23,NULL),(594,_binary '\0','2019-03-20',_binary '\0',111,_binary '',_binary '\0',NULL,_binary '\0',3140,3610.22,157,313.22,'Kevine05'),(603,_binary '\0',NULL,_binary '\0',111,_binary '\0',_binary '\0',NULL,_binary '\0',0,0,0,0,'Ke'),(608,_binary '\0','2019-03-05',_binary '\0',106,_binary '\0',_binary '\0',NULL,_binary '\0',256,294.34,12.8,25.54,'camion17-01'),(613,_binary '\0','2019-03-06',_binary '\0',106,_binary '',_binary '\0',NULL,_binary '\0',2000,2299.5,100,199.5,'Camion17-02'),(636,_binary '\0',NULL,_binary '\0',106,_binary '\0',_binary '\0',NULL,_binary '\0',0,0,0,0,NULL),(654,_binary '\0','2019-03-08',_binary '\0',106,_binary '',_binary '\0',NULL,_binary '\0',500,574.88,25,49.88,'technicien 01'),(672,_binary '\0',NULL,_binary '\0',111,_binary '\0',_binary '\0',NULL,_binary '\0',54354,62493.5,2717.7,5421.81,NULL),(675,_binary '\0','2019-03-21',_binary '\0',111,_binary '',_binary '','ljgkldfj\njdfjkndf\njnbdfjknbjkd',_binary '',15,17.25,0.75,1.5,'Dupral Laporte'),(761,_binary '','2019-03-20',_binary '\0',106,_binary '',_binary '',NULL,_binary '',1448,1664.84,72.4,144.44,'Stephane Tremblay'),(792,_binary '','2019-03-15',_binary '',106,_binary '',_binary '','Huile de transmission',_binary '',600,689.85,30,59.85,'Thierry Dave'),(796,_binary '','2019-03-28',_binary '',106,_binary '',_binary '',NULL,_binary '',1890,2173.03,94.5,188.53,'Thierry Guy'),(805,_binary '','2019-03-26',_binary '',106,_binary '',_binary '','kdfgkldjgl\nijgfdmbz\nzbm,cvmbldf\nlfdbmfdbhdfl;k;ldf\nfmdflgd;fl',_binary '',800,919.8,40,79.8,'Alex'),(863,_binary '','2019-03-06',_binary '\0',111,_binary '',_binary '','ieriojfiowe fokflsdk uewofiweo fjcvlasdfkl\nfhweuiafhowe\njairjofijj rjowerjfwe kfowepo ojfowe ijgfiowen\nkfjiowejfioj jerigjarkl;k',_binary '',3755,4317.31,187.75,374.56,'Thierry & David');
/*!40000 ALTER TABLE `bon_de_travail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camion`
--

DROP TABLE IF EXISTS `camion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `camion` (
  `id` bigint(20) NOT NULL,
  `id_transporter` bigint(20) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longtitude` double DEFAULT NULL,
  `plaque` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `local_depart` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `id_fiche_technique` bigint(20) DEFAULT NULL,
  `niv` varchar(255) DEFAULT NULL,
  `fil_antigel` bigint(20) DEFAULT NULL,
  `fil_hydrolique` bigint(20) DEFAULT NULL,
  `huile_antigel` bigint(20) DEFAULT NULL,
  `huile_differentiel` bigint(20) DEFAULT NULL,
  `huile_transmission` bigint(20) DEFAULT NULL,
  `inspect6m` datetime DEFAULT NULL,
  `annee` varchar(4) DEFAULT NULL,
  `odometre` bigint(20) DEFAULT NULL,
  `marque` varchar(255) DEFAULT NULL,
  `modele` varchar(255) DEFAULT NULL,
  `unite` varchar(255) DEFAULT NULL,
  `ent1fait` datetime DEFAULT NULL,
  `ent2fait` datetime DEFAULT NULL,
  `ent3fait` datetime DEFAULT NULL,
  `ent4fait` datetime DEFAULT NULL,
  `ent5fait` datetime DEFAULT NULL,
  `ent6fait` datetime DEFAULT NULL,
  `ent7fait` datetime DEFAULT NULL,
  `ent8fait` datetime DEFAULT NULL,
  `id_fiche_physique_entretien` bigint(20) DEFAULT NULL,
  `id_fiche_physique_entretien_cont` bigint(20) DEFAULT NULL,
  `inspect01` datetime DEFAULT NULL,
  `odo1fait` bigint(20) DEFAULT NULL,
  `odo2fait` bigint(20) DEFAULT NULL,
  `odo3fait` bigint(20) DEFAULT NULL,
  `odo4fait` bigint(20) DEFAULT NULL,
  `odo5fait` bigint(20) DEFAULT NULL,
  `odo6fait` bigint(20) DEFAULT NULL,
  `odo7fait` bigint(20) DEFAULT NULL,
  `odo8fait` bigint(20) DEFAULT NULL,
  `ent1` bigint(20) DEFAULT NULL,
  `ent2` bigint(20) DEFAULT NULL,
  `ent3` bigint(20) DEFAULT NULL,
  `message01` varchar(255) DEFAULT NULL,
  `message02` varchar(255) DEFAULT NULL,
  `message03` varchar(255) DEFAULT NULL,
  `message04` varchar(255) DEFAULT NULL,
  `message05` varchar(255) DEFAULT NULL,
  `message06` varchar(255) DEFAULT NULL,
  `message07` varchar(255) DEFAULT NULL,
  `message08` varchar(255) DEFAULT NULL,
  `monitor` varchar(255) DEFAULT NULL,
  `unite_monitor` varchar(255) DEFAULT NULL,
  `mass_net` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camion`
--

LOCK TABLES `camion` WRITE;
/*!40000 ALTER TABLE `camion` DISABLE KEYS */;
INSERT INTO `camion` VALUES (106,1,45.569234,-73.91844,'L 700957-2',_binary '\0','','','tracteur',NULL,'4v4nc9ehed96480',120000,100000,160000,180000,200000,'2018-11-18 00:00:00','2013',1135001,'volvo','vn','17','2019-01-12 00:00:00','2019-01-04 00:00:00','2019-01-01 00:00:00','2019-02-25 00:00:00','2019-02-25 00:00:00','2019-02-28 00:00:00','2019-03-01 00:00:00','2019-03-03 00:00:00',NULL,NULL,NULL,1135001,1110001,1065000,1135001,1135001,1135001,1135001,1135001,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene','Changement filtre hydrolique','Changement filtre antigel','Changement antigel','Changement huile transmission','Changement huile differentiel','cts','123456','20000'),(107,8,45.568806,-73.918333,'L-592890-1',_binary '','toronto','montreal','pick-up towing',NULL,'1ft8w4dt9deb6801',NULL,NULL,NULL,NULL,NULL,'2018-12-03 00:00:00','2013',125000,'ford','f-450','1','2018-11-23 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,20000,45000,0,0,0,0,0,0,25000,50000,100000,' Changement huile moteur, filtre moteur, graissage, ajustement des freins.',' Changement filtre a l\'air, filtre a fuel.',' Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.',NULL,NULL,NULL),(108,8,45.568399,-73.91919,'L-858165-8',_binary '','quebec','montreal','plate forme 6 roues',NULL,'jhbfb4jh711s11408',NULL,NULL,NULL,NULL,NULL,NULL,'2001',341175,'hino','fb1817','2 ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.','avltrack','36936',NULL),(109,8,45.568806,-73.918333,'rf-93543-8',_binary '','local2','local1','trailer ',NULL,'1L9sc442eg423780',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'custom heavy','10t442cdlu','4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.',NULL,NULL,NULL),(110,8,45.378071,-73.534109,'l-645250',_binary '\0','','',NULL,NULL,'2NP3L19X5FM282859',NULL,NULL,NULL,NULL,NULL,NULL,'2015',397081,'Peterbilt','PB 348','6-IFTA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.','avltrack','12398',NULL),(111,1,45.568806,-73.918333,'H 698782-6',_binary '\0','','',NULL,NULL,NULL,150000,100000,150000,150000,150000,'2018-12-15 00:00:00',NULL,625000,'volvo',NULL,'18','2019-01-17 00:00:00','2019-01-14 00:00:00','2019-01-14 00:00:00','2019-03-02 00:00:00','2018-12-22 00:00:00','2018-12-23 00:00:00','2018-12-26 00:00:00','2018-12-20 00:00:00',NULL,NULL,NULL,625000,600000,600000,625000,500000,500000,500000,500000,25000,50000,100000,'Entretien 1 - Changement huile moteur, filtre moteur, graissage, ajustement des freins','Entretien 2 - Changement filtre a l\'air, filtre a fuel','Entretien 3 - Changement filtre a polene','Entretien 4 - Changement filtre hydrolique','Entretien 5 - Changement filtre antigel','Entretien 6 - Changement huile antigel','Entretien 7 - Changement huile transmission','Entretien 8 - Changement huile differentiel',NULL,NULL,NULL),(191,1,45.568806,-73.918333,'f-123456-8',_binary '\0','','',NULL,NULL,'125465421786214',NULL,NULL,NULL,NULL,NULL,NULL,NULL,151000,'chevrolet','kv6','19','2019-01-31 00:00:00','2019-01-31 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,151000,151000,100000,146000,146000,146000,146000,146000,25000,50000,100000,'programe 01','programe 02','programe 03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(176,1,45.568806,-73.918333,'G 096321-7',_binary '\0','','',NULL,NULL,'458723169854678',NULL,NULL,NULL,NULL,NULL,NULL,NULL,22158,'Madaz','CX9','20','2019-01-09 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,22158,0,0,0,0,0,0,0,25000,50000,100000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(171,10,45.568806,-73.918333,'dsflsd',_binary '\0','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'dfgdfg',NULL,'f01',NULL,NULL,NULL,'2019-01-15 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(201,8,45.265689,-74.219114,'L-666751-0',_binary '\0','','',NULL,NULL,'2NP3LJ95EM233014',NULL,NULL,NULL,NULL,NULL,NULL,NULL,447865,'Peterbilt','PB348','8-IFTA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.','avltrack','36983',NULL),(214,8,45.892085,-73.348971,'L-666752-1',_binary '\0','','',NULL,NULL,'1XPBDOX1ED230969',NULL,NULL,NULL,NULL,NULL,NULL,NULL,527323,'Peterbilt','579','7-IFTA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.','avltrack','36935',NULL),(221,8,45.568806,-73.918333,'RF5185V7',_binary '\0','','',NULL,NULL,'1LH455WJ5D1020081',NULL,NULL,NULL,NULL,NULL,NULL,'2013',0,'LANDALL ','455','9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.',NULL,NULL,NULL),(224,8,45.568806,-73.918333,'RH 7196 D',_binary '\0','','',NULL,NULL,'4U05336BL011017',NULL,NULL,NULL,NULL,NULL,NULL,'2011',0,'FARDIER XL','70S','10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.',NULL,NULL,NULL),(232,8,45.568806,-73.918333,'FLA2042',_binary '\0','','',NULL,NULL,'1GNLVFED8AS149489',NULL,NULL,NULL,NULL,NULL,NULL,'2010',0,'CHEVROLET','TRAVERSE LS','12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.',NULL,NULL,NULL),(235,8,46.823911,-71.353697,'L677628-3',_binary '\0','','',NULL,NULL,'2HSCESBR87C290973',NULL,NULL,NULL,NULL,NULL,NULL,'2007',818766,'INTERNATIONAL','9200','14 IFTA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,812160,812160,812160,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.','avltrack','36929',NULL),(240,1,45.568806,-73.918333,NULL,_binary '\0','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'','','','','','','','',NULL,NULL,NULL),(245,1,45.568806,-73.918333,NULL,_binary '\0','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'','','','','','','','',NULL,NULL,NULL),(250,1,NULL,NULL,NULL,_binary '\0','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'','','','','','','','',NULL,NULL,NULL),(253,1,NULL,NULL,NULL,_binary '\0','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'','','','','','','','',NULL,NULL,NULL),(256,8,45.568806,-73.918333,'RH 7591D6',_binary '\0','','',NULL,NULL,'12HDZ3023HS203538',NULL,NULL,NULL,NULL,NULL,NULL,'2017',25000,'TRAILER HOLDEN','HCZ 40','15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,24000,24000,24000,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.',NULL,NULL,NULL),(259,8,45.568806,-73.918333,'RH 6136D-1',_binary '\0','','',NULL,NULL,'4U3A048217L006602',NULL,NULL,NULL,NULL,NULL,NULL,'2007',25000,'SPECIALED 53\'','XL','16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,24500,24500,24500,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.',NULL,NULL,NULL),(262,8,43.881124,-78.767369,'L-700957-2',_binary '\0','','',NULL,NULL,'4V4NC9EH3DN133171',NULL,150000,NULL,NULL,NULL,NULL,'2013',836191,'VOLVO','VN','17 IFTA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,836191,836191,836191,836191,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.','avltrack','37393',NULL),(265,8,45.569044,-73.918321,'L-696481',_binary '\0','','',NULL,NULL,'1FDUF5HT3HED96480',NULL,NULL,NULL,NULL,NULL,NULL,'2017',104026,'FORD','F 550','19 IFTA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.','avltrack','38855',NULL),(272,8,43.829299,-79.533317,'L784574-5',_binary '\0','','',NULL,NULL,'5KJJBHD1JLJF7833',NULL,NULL,NULL,NULL,NULL,NULL,'2018',270273,'WESTERN STAR','5700','20 IFTA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.','avltrack','37064',NULL),(279,8,44.11202,-77.658724,'I-784572-3',_binary '\0','','',NULL,NULL,'1XKYDP9X3HJ984223',NULL,NULL,NULL,NULL,NULL,NULL,'2017',240798,'KENWORTH','CONST','21 IFTA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.','avltrack','39453',NULL),(282,8,45.568806,-73.918333,'RH8548Z-8',_binary '\0','','',NULL,NULL,'2LDPF534XKL065880',NULL,NULL,NULL,NULL,NULL,NULL,'2019',0,'TRAILER LODEKING','PFL-53-4','22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.',NULL,NULL,NULL),(285,8,45.568806,-73.918333,'RH8549Z-0',_binary '\0','','',NULL,NULL,'2LDSD533KG066112',NULL,NULL,NULL,NULL,NULL,NULL,'2019',0,'TRAILER LODEKING','SDG-53-3','23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.',NULL,NULL,NULL),(288,8,45.568806,-73.918333,NULL,_binary '\0','','',NULL,NULL,'2LSD533XGG61920',NULL,NULL,NULL,NULL,NULL,NULL,'2016',0,'TRAILER LOADEKING','SDG-53-3','24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.',NULL,NULL,NULL),(314,10,NULL,NULL,'G-1234567-t6',_binary '\0','','',NULL,NULL,'123456789546789',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'kenwood','flatbed','f02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,25000,50000,100000,'Changement huile moteur, filtre moteur, graissage, ajustement des freins.','Changement filtre a l\'air, filtre a fuel.','Changement filtre a polene.','Changement filtre hydrolique.','Changement filtre antigel.','Changement antigel.','Changement huile transmission.','Changement huile differentiel.','','',NULL);
/*!40000 ALTER TABLE `camion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camion_fermee`
--

DROP TABLE IF EXISTS `camion_fermee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `camion_fermee` (
  `id` bigint(20) NOT NULL,
  `camion_complet` bit(1) NOT NULL,
  `chargement_partiel` bit(1) NOT NULL,
  `chauffe` bit(1) NOT NULL,
  `congele` bit(1) NOT NULL,
  `hayon` bit(1) NOT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `p48_ess2` bit(1) NOT NULL,
  `p48_ess3` bit(1) NOT NULL,
  `p48_ess4` bit(1) NOT NULL,
  `p53_ess2` bit(1) NOT NULL,
  `p53_ess3` bit(1) NOT NULL,
  `p53_ess4` bit(1) NOT NULL,
  `porteur16_18` bit(1) NOT NULL,
  `porteur26_ess2` bit(1) NOT NULL,
  `porteur26_ess3` bit(1) NOT NULL,
  `refrigere` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camion_fermee`
--

LOCK TABLES `camion_fermee` WRITE;
/*!40000 ALTER TABLE `camion_fermee` DISABLE KEYS */;
/*!40000 ALTER TABLE `camion_fermee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` bigint(20) NOT NULL,
  `fonction` varchar(255) DEFAULT NULL,
  `id_manager` bigint(20) NOT NULL,
  `id_shipper` bigint(20) NOT NULL,
  `id_transporter` bigint(20) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `tel` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (81,'dhdjh',67867,'dg',0,0,80,'sh','jhfh','gdfhgd',423),(55,'shipper02',123,'manager',0,54,0,'Contact1','shipper02','shipper02',145),(57,'shipper03',4502169875,'manager',0,54,0,'Contact2','shipper03','shipper03',5148795624),(59,'shipper03',1234569872,'admin',0,54,0,'Contact3','shipper03','shipper03',1234567895),(61,'shipper05',2356489715,'Director',0,54,0,'Contact4','shipper05','shipper05',2356897415),(74,'fshfd',424,'shdf',0,72,0,'gfbdf','ygf','sfd',444),(63,'djvklsdjkl',123456789,'djfsdkj',0,52,0,'Alex','jkdhjkhdfsv','dsfsdkj',123456789),(64,'dsfsd',878,'sdfsd',0,52,0,'foo','dsfda','sdkjsdkj',457),(69,'hytrh',5656,'gfgf',0,52,0,'l;gk','jklyu','gf',54685),(76,'ghjt',543254,'rhrh',0,75,0,'fhh','grdgr','hrth',4254),(67,'gnfg',5442,'nfngngfn',0,56,0,'contact 1','ggf','bgbngf',554),(84,'flbkdflk',4541312,'FDLKK',0,0,7,'cont01','fmdlb','KDFLK',543465),(86,'gfhfg',5454,'gdh',0,0,1,'test','hghg','fhgh',454),(87,'dgds',43534,'dgsd',0,0,1,'cont123','xcvb','dssd',4325),(88,'ghjhg',3543,'hjkhjk',0,75,0,'hung','dfsdf','nhat',545),(91,'sos-prestige@gmail.com',4509749111,'Director',0,0,8,'Marc-Andre','','Thiffeault',4509749111),(99,'hsdfh',54654,'dfhbdf',0,95,0,'contact250','fdhgf','fdghdf',8654),(94,'maria@gmail.com',5142302679,'Coordinatrice',0,60,0,'Maria','maria.jpg','Claude',5147542368),(101,'',0,'',0,100,0,'cont26','','',0),(105,'fgkkfld',5454,'manager',0,0,103,'per001','fd','prenom',454),(134,'hf',6565,'fdghsdf',0,0,1,'cont05','gfhgf','dfgdf',535),(175,'fdgdf',5445,'fdgdf',0,0,1,'cont06','fdghdf','gafdg',64654);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demande`
--

DROP TABLE IF EXISTS `demande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `demande` (
  `id` bigint(20) NOT NULL,
  `date_arrive` date DEFAULT NULL,
  `date_demande` date DEFAULT NULL,
  `date_depart` date DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `distance` float DEFAULT NULL,
  `hauteur` float DEFAULT NULL,
  `largeur` float DEFAULT NULL,
  `longueur` float DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `poids` float DEFAULT NULL,
  `prix_sugere` float DEFAULT NULL,
  `totalpoints` bigint(20) DEFAULT NULL,
  `type_camion` varchar(255) DEFAULT NULL,
  `valeur` float DEFAULT NULL,
  `date_cree` date DEFAULT NULL,
  `id_demander` bigint(20) DEFAULT NULL,
  `role_demander` varchar(255) DEFAULT NULL,
  `nom_demander` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demande`
--

LOCK TABLES `demande` WRITE;
/*!40000 ALTER TABLE `demande` DISABLE KEYS */;
INSERT INTO `demande` VALUES (338,NULL,NULL,'2019-02-19','kingston',2465,50,100,200,'montreal',3000,750,6,'flat bed',15420,'2019-02-14',54,'SHIPPER','Logis Montreal'),(339,NULL,NULL,'2019-02-27','montreal',103,69,200,542,'ottawa',2056,750,13,'flat bed',23000,'2019-02-14',8,'TRANSPORTER','SOS Prestige');
/*!40000 ALTER TABLE `demande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entretien_control`
--

DROP TABLE IF EXISTS `entretien_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `entretien_control` (
  `id` bigint(20) NOT NULL,
  `ent1fait` datetime DEFAULT NULL,
  `ent2fait` datetime DEFAULT NULL,
  `ent3fait` datetime DEFAULT NULL,
  `ent4fait` datetime DEFAULT NULL,
  `ent5fait` datetime DEFAULT NULL,
  `ent6fait` datetime DEFAULT NULL,
  `ent7fait` datetime DEFAULT NULL,
  `ent8fait` datetime DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `odo1fait` bigint(20) DEFAULT NULL,
  `odo2fait` bigint(20) DEFAULT NULL,
  `odo3fait` bigint(20) DEFAULT NULL,
  `odo4fait` bigint(20) DEFAULT NULL,
  `odo5fait` bigint(20) DEFAULT NULL,
  `odo6fait` bigint(20) DEFAULT NULL,
  `odo7fait` bigint(20) DEFAULT NULL,
  `odo8fait` bigint(20) DEFAULT NULL,
  `inspect01` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entretien_control`
--

LOCK TABLES `entretien_control` WRITE;
/*!40000 ALTER TABLE `entretien_control` DISABLE KEYS */;
/*!40000 ALTER TABLE `entretien_control` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fiche_physique_entretien`
--

DROP TABLE IF EXISTS `fiche_physique_entretien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fiche_physique_entretien` (
  `id` bigint(20) NOT NULL,
  `annee` varchar(255) DEFAULT NULL,
  `date_achat` datetime DEFAULT NULL,
  `essieux_avant_capacite` varchar(255) DEFAULT NULL,
  `essieux_avant_type` varchar(255) DEFAULT NULL,
  `filtre_air1er_marque` varchar(255) DEFAULT NULL,
  `filtre_air1er_piece` varchar(255) DEFAULT NULL,
  `filtre_air2em_marque` varchar(255) DEFAULT NULL,
  `filtre_air2em_piece` varchar(255) DEFAULT NULL,
  `filtre_air3em_marque` varchar(255) DEFAULT NULL,
  `filtre_air3em_piece` varchar(255) DEFAULT NULL,
  `filtre_fuel1er_marque` varchar(255) DEFAULT NULL,
  `filtre_fuel1er_piece` varchar(255) DEFAULT NULL,
  `filtre_fuel2em_marque` varchar(255) DEFAULT NULL,
  `filtre_fuel2em_piece` varchar(255) DEFAULT NULL,
  `filtre_fuel3em_marque` varchar(255) DEFAULT NULL,
  `filtre_fuel3em_piece` varchar(255) DEFAULT NULL,
  `filtre_huile1er_marque` varchar(255) DEFAULT NULL,
  `filtre_huile1er_piece` varchar(255) DEFAULT NULL,
  `filtre_huile2em_marque` varchar(255) DEFAULT NULL,
  `filtre_huile2em_piece` varchar(255) DEFAULT NULL,
  `filtre_huile3em_marque` varchar(255) DEFAULT NULL,
  `filtre_huile3em_piece` varchar(255) DEFAULT NULL,
  `filtre_huile_hydrolique1er_marque` varchar(255) DEFAULT NULL,
  `filtre_huile_hydrolique1er_modele` varchar(255) DEFAULT NULL,
  `filtre_huile_hydrolique2em_marque` varchar(255) DEFAULT NULL,
  `filtre_huile_hydrolique2em_modele` varchar(255) DEFAULT NULL,
  `filtre_polene1er_marque` varchar(255) DEFAULT NULL,
  `filtre_polene1er_piece` varchar(255) DEFAULT NULL,
  `filtre_polene2em_marque` varchar(255) DEFAULT NULL,
  `filtre_polene2em_piece` varchar(255) DEFAULT NULL,
  `filtre_prestone1er_marque` varchar(255) DEFAULT NULL,
  `filtre_prestone1er_piece` varchar(255) DEFAULT NULL,
  `filtre_prestone2em_marque` varchar(255) DEFAULT NULL,
  `filtre_prestone2em_piece` varchar(255) DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `km` varchar(255) DEFAULT NULL,
  `marque` varchar(255) DEFAULT NULL,
  `modele` varchar(255) DEFAULT NULL,
  `moteur` varchar(255) DEFAULT NULL,
  `numero_unite` varchar(255) DEFAULT NULL,
  `pneus_arriere_modele` varchar(255) DEFAULT NULL,
  `pneus_arrieregrandeur` varchar(255) DEFAULT NULL,
  `pneus_avant_grandeur` varchar(255) DEFAULT NULL,
  `pneus_avant_modele` varchar(255) DEFAULT NULL,
  `pompe_hydrolique_modele` varchar(255) DEFAULT NULL,
  `pompe_hydrolique_serie` varchar(255) DEFAULT NULL,
  `pto_modele` varchar(255) DEFAULT NULL,
  `pto_serie` varchar(255) DEFAULT NULL,
  `transmition` varchar(255) DEFAULT NULL,
  `tyre_capacite` varchar(255) DEFAULT NULL,
  `code_couleur1` varchar(255) DEFAULT NULL,
  `code_couleur2` varchar(255) DEFAULT NULL,
  `code_couleur3` varchar(255) DEFAULT NULL,
  `couleur1` varchar(255) DEFAULT NULL,
  `couleur2` varchar(255) DEFAULT NULL,
  `couleur3` varchar(255) DEFAULT NULL,
  `differentiel1capacite` varchar(255) DEFAULT NULL,
  `differentiel1type` varchar(255) DEFAULT NULL,
  `differentiel2capacite` varchar(255) DEFAULT NULL,
  `differentiel2type` varchar(255) DEFAULT NULL,
  `differentiel3capacite` varchar(255) DEFAULT NULL,
  `differentiel3type` varchar(255) DEFAULT NULL,
  `filtreauree_marque` varchar(255) DEFAULT NULL,
  `filtreauree_piece` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fiche_physique_entretien`
--

LOCK TABLES `fiche_physique_entretien` WRITE;
/*!40000 ALTER TABLE `fiche_physique_entretien` DISABLE KEYS */;
INSERT INTO `fiche_physique_entretien` VALUES (187,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,107,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(184,NULL,'2018-10-13 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,106,NULL,NULL,NULL,'10l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'automatique',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'FiltreAUree','FiltreAUree'),(181,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,176,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(192,NULL,'2019-01-07 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,191,NULL,NULL,NULL,'hgjdfhj',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'manu',NULL,'456','789','123','gris','brun','blanc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(189,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,108,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(186,NULL,'2018-10-30 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,111,NULL,NULL,NULL,'5l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'manuel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(194,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,109,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(200,NULL,NULL,NULL,NULL,NULL,'P527682',NULL,NULL,NULL,NULL,'P551103 (separateur)','FF63009',NULL,NULL,NULL,NULL,NULL,'P553000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(203,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(204,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(207,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(208,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(212,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(216,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,214,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(217,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,214,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(220,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,214,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(223,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,221,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(225,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,224,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(227,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,224,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(231,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,229,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(233,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,232,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(236,NULL,NULL,NULL,NULL,'P527682',NULL,NULL,NULL,NULL,NULL,'P551311',NULL,NULL,NULL,NULL,NULL,'P551808',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,235,NULL,NULL,NULL,'CAT',NULL,'11r22.5',NULL,'11r22.5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'',NULL,''),(239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,224,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(241,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(243,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(246,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,245,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(248,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,245,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(251,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,250,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(254,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,253,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(257,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,256,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(261,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,259,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(263,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,262,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(267,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,265,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(269,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,265,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(271,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,265,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(274,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,272,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(275,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,272,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(277,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,272,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(280,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,279,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(284,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,282,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(287,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,285,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(290,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,288,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(291,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,272,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(293,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,265,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(296,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,214,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(297,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(299,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,272,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(302,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(304,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(307,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,214,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(308,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,224,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(310,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,265,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(313,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,272,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(315,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,314,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(349,NULL,NULL,NULL,NULL,NULL,'FA1927',NULL,NULL,NULL,NULL,NULL,'FD4625',NULL,NULL,NULL,NULL,NULL,'FL2051s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,265,NULL,NULL,NULL,NULL,NULL,NULL,'225/70r19.5','225/70r19.5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `fiche_physique_entretien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fiche_physique_entretien_cont`
--

DROP TABLE IF EXISTS `fiche_physique_entretien_cont`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fiche_physique_entretien_cont` (
  `id` bigint(20) NOT NULL,
  `alternateur_marque` varchar(255) DEFAULT NULL,
  `alternateur_piece` varchar(255) DEFAULT NULL,
  `batterie_amperage` varchar(255) DEFAULT NULL,
  `batterie_dimension` varchar(255) DEFAULT NULL,
  `batterie_nombre` varchar(255) DEFAULT NULL,
  `clignotant_avant_marque` varchar(255) DEFAULT NULL,
  `clignotant_avant_piece` varchar(255) DEFAULT NULL,
  `demarreur_marque` varchar(255) DEFAULT NULL,
  `demarreur_piece` varchar(255) DEFAULT NULL,
  `essieux_arriere_bearing_roues_marque` varchar(255) DEFAULT NULL,
  `essieux_arriere_bearing_roues_piece` varchar(255) DEFAULT NULL,
  `essieux_arriere_booster_marque` varchar(255) DEFAULT NULL,
  `essieux_arriere_booster_piece` varchar(255) DEFAULT NULL,
  `essieux_arrierecamdroite_marque` varchar(255) DEFAULT NULL,
  `essieux_arrierecamdroite_piece` varchar(255) DEFAULT NULL,
  `essieux_arrierecamgauche_marque` varchar(255) DEFAULT NULL,
  `essieux_arrierecamgauche_piece` varchar(255) DEFAULT NULL,
  `essieux_arriere_drum_marque` varchar(255) DEFAULT NULL,
  `essieux_arriere_drum_piece` varchar(255) DEFAULT NULL,
  `essieux_arriere_frein_marque` varchar(255) DEFAULT NULL,
  `essieux_arriere_frein_piece` varchar(255) DEFAULT NULL,
  `essieux_arriere_roues_marque` varchar(255) DEFAULT NULL,
  `essieux_arriere_roues_piece` varchar(255) DEFAULT NULL,
  `essieux_arriere_roues_type` varchar(255) DEFAULT NULL,
  `essieux_avant_bearing_roues_marque` varchar(255) DEFAULT NULL,
  `essieux_avant_bearing_roues_piece` varchar(255) DEFAULT NULL,
  `essieux_avant_booster_marque` varchar(255) DEFAULT NULL,
  `essieux_avant_booster_piece` varchar(255) DEFAULT NULL,
  `essieux_avantcamdroite_marque` varchar(255) DEFAULT NULL,
  `essieux_avantcamdroite_piece` varchar(255) DEFAULT NULL,
  `essieux_avantcamgauche_marque` varchar(255) DEFAULT NULL,
  `essieux_avantcamgauche_piece` varchar(255) DEFAULT NULL,
  `essieux_avant_drum_marque` varchar(255) DEFAULT NULL,
  `essieux_avant_drum_piece` varchar(255) DEFAULT NULL,
  `essieux_avant_frein_marque` varchar(255) DEFAULT NULL,
  `essieux_avant_frein_piece` varchar(255) DEFAULT NULL,
  `essieux_avant_roues_marque` varchar(255) DEFAULT NULL,
  `essieux_avant_roues_piece` varchar(255) DEFAULT NULL,
  `essieux_avant_roues_type` varchar(255) DEFAULT NULL,
  `huile_differentiel` varchar(255) DEFAULT NULL,
  `huile_hydrolique` varchar(255) DEFAULT NULL,
  `huile_moteur` varchar(255) DEFAULT NULL,
  `huile_servo_direction` varchar(255) DEFAULT NULL,
  `huile_transmition` varchar(255) DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `lumiaire_arriere_marque` varchar(255) DEFAULT NULL,
  `lumiaire_arriere_piece` varchar(255) DEFAULT NULL,
  `lumiaire_haut_pare_brise_marque` varchar(255) DEFAULT NULL,
  `lumiaire_haut_pare_brise_piece` varchar(255) DEFAULT NULL,
  `phare_avant_marque` varchar(255) DEFAULT NULL,
  `phare_avant_piece` varchar(255) DEFAULT NULL,
  `prestone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fiche_physique_entretien_cont`
--

LOCK TABLES `fiche_physique_entretien_cont` WRITE;
/*!40000 ALTER TABLE `fiche_physique_entretien_cont` DISABLE KEYS */;
INSERT INTO `fiche_physique_entretien_cont` VALUES (185,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,111,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(183,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,106,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(182,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,176,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,108,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(188,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,107,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(193,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,191,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(195,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,109,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(199,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(202,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(205,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(206,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(209,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(211,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(213,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(215,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,214,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(218,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,214,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(219,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,214,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(222,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,221,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(226,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,224,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(228,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,224,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(230,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,229,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(234,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,232,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(237,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'PAD: 4707','X60794',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3721X','PAD: 4702',NULL,NULL,NULL,NULL,'80w90',NULL,'15w40',NULL,'80w90',235,NULL,NULL,NULL,NULL,NULL,NULL,'rouge'),(238,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,224,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(242,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,240,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(247,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,245,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(249,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,245,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(252,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,250,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,253,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(258,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,256,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(260,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,259,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(264,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,262,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(266,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,265,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(268,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,265,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(270,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,265,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(273,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,272,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(276,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,272,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(278,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,272,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(281,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,279,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(283,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,282,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(286,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,285,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(289,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,288,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(292,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,272,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(294,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,265,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(295,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,214,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(298,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(300,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,272,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(301,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(305,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,201,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(306,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,214,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(309,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,224,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(311,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,265,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(312,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,272,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(316,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,314,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(350,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'15W40',NULL,NULL,265,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `fiche_physique_entretien_cont` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flat_bed`
--

DROP TABLE IF EXISTS `flat_bed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `flat_bed` (
  `id` bigint(20) NOT NULL,
  `camion_complet` bit(1) NOT NULL,
  `chargement_partiel` bit(1) NOT NULL,
  `fardieu_ess2` bit(1) NOT NULL,
  `fardieu_ess3` bit(1) NOT NULL,
  `fardieu_ess4` bit(1) NOT NULL,
  `fardieu_ess5` bit(1) NOT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `minideck_ess2` bit(1) NOT NULL,
  `minideck_ess3` bit(1) NOT NULL,
  `minideck_ess4` bit(1) NOT NULL,
  `minideck_ess5` bit(1) NOT NULL,
  `p48_ess2` bit(1) NOT NULL,
  `p48_ess3` bit(1) NOT NULL,
  `p48_ess4` bit(1) NOT NULL,
  `p53_ess2` bit(1) NOT NULL,
  `p53_ess3` bit(1) NOT NULL,
  `p53_ess4` bit(1) NOT NULL,
  `stepdeck_p48_ess2` bit(1) NOT NULL,
  `stepdeck_p48_ess3` bit(1) NOT NULL,
  `stepdeck_p48_ess4` bit(1) NOT NULL,
  `stepdeck_p53_ess2` bit(1) NOT NULL,
  `stepdeck_p53_ess3` bit(1) NOT NULL,
  `stepdeck_p53_ess4` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flat_bed`
--

LOCK TABLES `flat_bed` WRITE;
/*!40000 ALTER TABLE `flat_bed` DISABLE KEYS */;
/*!40000 ALTER TABLE `flat_bed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (870);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i6cporteur_autour`
--

DROP TABLE IF EXISTS `i6cporteur_autour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `i6cporteur_autour` (
  `id` bigint(20) NOT NULL,
  `ailes_carrosserie` bit(1) DEFAULT NULL,
  `amortisseur` bit(1) DEFAULT NULL,
  `ancrages` bit(1) DEFAULT NULL,
  `arbre_cames` bit(1) DEFAULT NULL,
  `boulons_ecrous_pieces_fixation` bit(1) DEFAULT NULL,
  `brides_centrales` bit(1) DEFAULT NULL,
  `buttees_fixations` bit(1) DEFAULT NULL,
  `cables_chaines_crochet` bit(1) DEFAULT NULL,
  `capot_crochet` bit(1) DEFAULT NULL,
  `coussins_caoutchouc` bit(1) DEFAULT NULL,
  `cylindre_freins` bit(1) DEFAULT NULL,
  `date_inspect` datetime DEFAULT NULL,
  `eclairage_remorque` bit(1) DEFAULT NULL,
  `essuie_glace` bit(1) DEFAULT NULL,
  `freins_remorque` bit(1) DEFAULT NULL,
  `garde_boue` bit(1) DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `jumelles` bit(1) DEFAULT NULL,
  `lame_maitresse` bit(1) DEFAULT NULL,
  `levier_ajustement` bit(1) DEFAULT NULL,
  `mecanisme_verrouillage` bit(1) DEFAULT NULL,
  `pieces_fixation` bit(1) DEFAULT NULL,
  `plateforme_panneaux` bit(1) DEFAULT NULL,
  `pneus` bit(1) DEFAULT NULL,
  `portieres` bit(1) DEFAULT NULL,
  `portillon_bouchon` bit(1) DEFAULT NULL,
  `reservoir_attaches` bit(1) DEFAULT NULL,
  `retro_exterieurs` bit(1) DEFAULT NULL,
  `roues_valves` bit(1) DEFAULT NULL,
  `roulement_roue` bit(1) DEFAULT NULL,
  `sellette_attelage` bit(1) DEFAULT NULL,
  `supports_ridelles` bit(1) DEFAULT NULL,
  `suspension_pneumatique` bit(1) DEFAULT NULL,
  `vignette_valide` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i6cporteur_autour`
--

LOCK TABLES `i6cporteur_autour` WRITE;
/*!40000 ALTER TABLE `i6cporteur_autour` DISABLE KEYS */;
/*!40000 ALTER TABLE `i6cporteur_autour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i6cporteur_autres`
--

DROP TABLE IF EXISTS `i6cporteur_autres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `i6cporteur_autres` (
  `id` bigint(20) NOT NULL,
  `autres` varchar(1000) DEFAULT NULL,
  `date_inspect` datetime DEFAULT NULL,
  `decele_defectuosite` bit(1) DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `technicien` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i6cporteur_autres`
--

LOCK TABLES `i6cporteur_autres` WRITE;
/*!40000 ALTER TABLE `i6cporteur_autres` DISABLE KEYS */;
/*!40000 ALTER TABLE `i6cporteur_autres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i6cporteur_dedans`
--

DROP TABLE IF EXISTS `i6cporteur_dedans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `i6cporteur_dedans` (
  `id` bigint(20) NOT NULL,
  `avertisseurs_sonore_luminaire` bit(1) DEFAULT NULL,
  `baisse_pression_appli1minute` bit(1) DEFAULT NULL,
  `baisse_pression_appli_frein` bit(1) DEFAULT NULL,
  `banquettes` bit(1) DEFAULT NULL,
  `ceinture_securite` bit(1) DEFAULT NULL,
  `chauffage_degivrage` bit(1) DEFAULT NULL,
  `commande_accelerateur` bit(1) DEFAULT NULL,
  `commande_embrayage` bit(1) DEFAULT NULL,
  `commande_freins` bit(1) DEFAULT NULL,
  `compresseur_air` bit(1) DEFAULT NULL,
  `course_pedale_frein` bit(1) DEFAULT NULL,
  `coussins_gonflables` bit(1) DEFAULT NULL,
  `demarrage_au_neutre` bit(1) DEFAULT NULL,
  `eclairage_tableau_bord` bit(1) DEFAULT NULL,
  `essuie_glace` bit(1) DEFAULT NULL,
  `feux_arret` bit(1) DEFAULT NULL,
  `feux_detresse` bit(1) DEFAULT NULL,
  `feux_direction` bit(1) DEFAULT NULL,
  `feux_gabarit` bit(1) DEFAULT NULL,
  `feux_identification` bit(1) DEFAULT NULL,
  `feux_jour` bit(1) DEFAULT NULL,
  `feux_plaque` bit(1) DEFAULT NULL,
  `feux_position` bit(1) DEFAULT NULL,
  `feux_recul` bit(1) DEFAULT NULL,
  `frein_service` bit(1) DEFAULT NULL,
  `freins_urgence_stationnement` bit(1) DEFAULT NULL,
  `glaces_laterales` bit(1) DEFAULT NULL,
  `indicateur_vitesse_totalisateur` bit(1) DEFAULT NULL,
  `klaxon` bit(1) DEFAULT NULL,
  `lampes_temoins` bit(1) DEFAULT NULL,
  `lave_glace` bit(1) DEFAULT NULL,
  `manometre_freins` bit(1) DEFAULT NULL,
  `pare_brise` bit(1) DEFAULT NULL,
  `pare_soleil` bit(1) DEFAULT NULL,
  `phares_croisement` bit(1) DEFAULT NULL,
  `phares_route` bit(1) DEFAULT NULL,
  `reflecteurs` bit(1) DEFAULT NULL,
  `retro_interieur` bit(1) DEFAULT NULL,
  `systeme_assistance` bit(1) DEFAULT NULL,
  `volant` bit(1) DEFAULT NULL,
  `date_inspect` datetime DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `essuie_glace_fonction` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i6cporteur_dedans`
--

LOCK TABLES `i6cporteur_dedans` WRITE;
/*!40000 ALTER TABLE `i6cporteur_dedans` DISABLE KEYS */;
/*!40000 ALTER TABLE `i6cporteur_dedans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i6cporteur_freins`
--

DROP TABLE IF EXISTS `i6cporteur_freins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `i6cporteur_freins` (
  `id` bigint(20) NOT NULL,
  `cylindre_roues_etriers` bit(1) DEFAULT NULL,
  `date_inspect` datetime DEFAULT NULL,
  `disques_tambours` bit(1) DEFAULT NULL,
  `garnitures` bit(1) DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `reservoirs_air` bit(1) DEFAULT NULL,
  `servofrein` bit(1) DEFAULT NULL,
  `soupapes` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i6cporteur_freins`
--

LOCK TABLES `i6cporteur_freins` WRITE;
/*!40000 ALTER TABLE `i6cporteur_freins` DISABLE KEYS */;
/*!40000 ALTER TABLE `i6cporteur_freins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i6cporteur_remarques`
--

DROP TABLE IF EXISTS `i6cporteur_remarques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `i6cporteur_remarques` (
  `id` bigint(20) NOT NULL,
  `bon_travail` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `date_inspect` datetime DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `remarque` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i6cporteur_remarques`
--

LOCK TABLES `i6cporteur_remarques` WRITE;
/*!40000 ALTER TABLE `i6cporteur_remarques` DISABLE KEYS */;
/*!40000 ALTER TABLE `i6cporteur_remarques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i6cporteur_sous_capot`
--

DROP TABLE IF EXISTS `i6cporteur_sous_capot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `i6cporteur_sous_capot` (
  `id` bigint(20) NOT NULL,
  `accouplement_roulement` bit(1) DEFAULT NULL,
  `batteries` bit(1) DEFAULT NULL,
  `boitiers_direction` bit(1) DEFAULT NULL,
  `collecteur_echappement` bit(1) DEFAULT NULL,
  `compresseur_air` bit(1) DEFAULT NULL,
  `courroires` bit(1) DEFAULT NULL,
  `cylindres_direction` bit(1) DEFAULT NULL,
  `date_inspect` datetime DEFAULT NULL,
  `dispositif_ancrage_securite` bit(1) DEFAULT NULL,
  `evaporateur` bit(1) DEFAULT NULL,
  `filtre_compresseur` bit(1) DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `lave_glace` bit(1) DEFAULT NULL,
  `maitre_cylindre` bit(1) DEFAULT NULL,
  `pompe_electrique` bit(1) DEFAULT NULL,
  `servodirection` bit(1) DEFAULT NULL,
  `supports_moteur` bit(1) DEFAULT NULL,
  `systeme_alimentation` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i6cporteur_sous_capot`
--

LOCK TABLES `i6cporteur_sous_capot` WRITE;
/*!40000 ALTER TABLE `i6cporteur_sous_capot` DISABLE KEYS */;
/*!40000 ALTER TABLE `i6cporteur_sous_capot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i6cporteur_sous_vehicule`
--

DROP TABLE IF EXISTS `i6cporteur_sous_vehicule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `i6cporteur_sous_vehicule` (
  `id` bigint(20) NOT NULL,
  `ancrage` bit(1) DEFAULT NULL,
  `arbre_transmission` bit(1) DEFAULT NULL,
  `attaches_carrosserie` bit(1) DEFAULT NULL,
  `attaches_parechocs` bit(1) DEFAULT NULL,
  `axe_fusee` bit(1) DEFAULT NULL,
  `balanciers_chaises` bit(1) DEFAULT NULL,
  `barre_accouplement_inferieure` bit(1) DEFAULT NULL,
  `barre_stabilisatrice` bit(1) DEFAULT NULL,
  `barre_torsion` bit(1) DEFAULT NULL,
  `bielle_accouplement` bit(1) DEFAULT NULL,
  `boulon_central` bit(1) DEFAULT NULL,
  `bras_renvoie` bit(1) DEFAULT NULL,
  `bras_suspension` bit(1) DEFAULT NULL,
  `brides` bit(1) DEFAULT NULL,
  `canalisation_flexible_rigide_carburant` bit(1) DEFAULT NULL,
  `canalisation_flexible_rigide_freins` bit(1) DEFAULT NULL,
  `convertisseur_catalytique` bit(1) DEFAULT NULL,
  `date_inspect` datetime DEFAULT NULL,
  `embouts` bit(1) DEFAULT NULL,
  `essieux` bit(1) DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `jambes_forces` bit(1) DEFAULT NULL,
  `joint_rotule` bit(1) DEFAULT NULL,
  `levier_commande` bit(1) DEFAULT NULL,
  `levier_direction` bit(1) DEFAULT NULL,
  `levier_fusee` bit(1) DEFAULT NULL,
  `longerons_traversers` bit(1) DEFAULT NULL,
  `manchons` bit(1) DEFAULT NULL,
  `pieces_fixation` bit(1) DEFAULT NULL,
  `plancher` bit(1) DEFAULT NULL,
  `ressorts` bit(1) DEFAULT NULL,
  `roue_secours` bit(1) DEFAULT NULL,
  `silencieux_protecteur` bit(1) DEFAULT NULL,
  `solives_soliveaux` bit(1) DEFAULT NULL,
  `soupape_debattement` bit(1) DEFAULT NULL,
  `supports_transmission` bit(1) DEFAULT NULL,
  `tuyau_echappement` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i6cporteur_sous_vehicule`
--

LOCK TABLES `i6cporteur_sous_vehicule` WRITE;
/*!40000 ALTER TABLE `i6cporteur_sous_vehicule` DISABLE KEYS */;
/*!40000 ALTER TABLE `i6cporteur_sous_vehicule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i6remorque_autour`
--

DROP TABLE IF EXISTS `i6remorque_autour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `i6remorque_autour` (
  `id` bigint(20) NOT NULL,
  `date_inspect` datetime DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `attaches_canalisation` bit(1) DEFAULT NULL,
  `bandes_reflechissantes` bit(1) DEFAULT NULL,
  `batterie` bit(1) DEFAULT NULL,
  `bogie_reglable` bit(1) DEFAULT NULL,
  `boulons_ecrous` bit(1) DEFAULT NULL,
  `butees` bit(1) DEFAULT NULL,
  `cheville_ouvriere` bit(1) DEFAULT NULL,
  `crochet` bit(1) DEFAULT NULL,
  `feux_arret` bit(1) DEFAULT NULL,
  `feux_detresse` bit(1) DEFAULT NULL,
  `feux_direction` bit(1) DEFAULT NULL,
  `feux_gabarit` bit(1) DEFAULT NULL,
  `feux_identification` bit(1) DEFAULT NULL,
  `feux_lateraux` bit(1) DEFAULT NULL,
  `feux_plaque` bit(1) DEFAULT NULL,
  `feux_position` bit(1) DEFAULT NULL,
  `feux_recul` bit(1) DEFAULT NULL,
  `fixations` bit(1) DEFAULT NULL,
  `garde_boue` bit(1) DEFAULT NULL,
  `odometre` bit(1) DEFAULT NULL,
  `panneaux` bit(1) DEFAULT NULL,
  `parechocs` bit(1) DEFAULT NULL,
  `plaque_accouplement` bit(1) DEFAULT NULL,
  `plate_forme` bit(1) DEFAULT NULL,
  `pneus` bit(1) DEFAULT NULL,
  `portillon_bouchon` bit(1) DEFAULT NULL,
  `prise_fiche_pour_electricite` bit(1) DEFAULT NULL,
  `prise_fiche_pour_freins` bit(1) DEFAULT NULL,
  `reflecteurs` bit(1) DEFAULT NULL,
  `reservoir_carburant` bit(1) DEFAULT NULL,
  `roue_secours` bit(1) DEFAULT NULL,
  `roues_valves` bit(1) DEFAULT NULL,
  `roulements_roue` bit(1) DEFAULT NULL,
  `sellette_ajustable` bit(1) DEFAULT NULL,
  `sellette_attelage` bit(1) DEFAULT NULL,
  `systeme_alimentation` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i6remorque_autour`
--

LOCK TABLES `i6remorque_autour` WRITE;
/*!40000 ALTER TABLE `i6remorque_autour` DISABLE KEYS */;
/*!40000 ALTER TABLE `i6remorque_autour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i6remorque_autres`
--

DROP TABLE IF EXISTS `i6remorque_autres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `i6remorque_autres` (
  `id` bigint(20) NOT NULL,
  `autres` varchar(1000) DEFAULT NULL,
  `date_inspect` datetime DEFAULT NULL,
  `decele_defectuosite` bit(1) DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `technicien` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i6remorque_autres`
--

LOCK TABLES `i6remorque_autres` WRITE;
/*!40000 ALTER TABLE `i6remorque_autres` DISABLE KEYS */;
/*!40000 ALTER TABLE `i6remorque_autres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i6remorque_freins`
--

DROP TABLE IF EXISTS `i6remorque_freins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `i6remorque_freins` (
  `id` bigint(20) NOT NULL,
  `arbre_cames` bit(1) DEFAULT NULL,
  `cylindres_roues` bit(1) DEFAULT NULL,
  `date_inspect` datetime DEFAULT NULL,
  `disques_tambours` bit(1) DEFAULT NULL,
  `frein_service` bit(1) DEFAULT NULL,
  `frein_stationnement` bit(1) DEFAULT NULL,
  `frein_urgence` bit(1) DEFAULT NULL,
  `garniture` bit(1) DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `levier_ajustement` bit(1) DEFAULT NULL,
  `maitre_cylindre` bit(1) DEFAULT NULL,
  `reservoir_air` bit(1) DEFAULT NULL,
  `soupape_distribution` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i6remorque_freins`
--

LOCK TABLES `i6remorque_freins` WRITE;
/*!40000 ALTER TABLE `i6remorque_freins` DISABLE KEYS */;
/*!40000 ALTER TABLE `i6remorque_freins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i6remorque_remarques`
--

DROP TABLE IF EXISTS `i6remorque_remarques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `i6remorque_remarques` (
  `id` bigint(20) NOT NULL,
  `bon_travail` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `date_inspect` datetime DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `remarque` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i6remorque_remarques`
--

LOCK TABLES `i6remorque_remarques` WRITE;
/*!40000 ALTER TABLE `i6remorque_remarques` DISABLE KEYS */;
/*!40000 ALTER TABLE `i6remorque_remarques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i6remorque_sous`
--

DROP TABLE IF EXISTS `i6remorque_sous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `i6remorque_sous` (
  `id` bigint(20) NOT NULL,
  `amortisseurs` bit(1) DEFAULT NULL,
  `ancrages` bit(1) DEFAULT NULL,
  `balanciers` bit(1) DEFAULT NULL,
  `ballons` bit(1) DEFAULT NULL,
  `barre_torsion` bit(1) DEFAULT NULL,
  `boulon_central` bit(1) DEFAULT NULL,
  `brides_attaches` bit(1) DEFAULT NULL,
  `brides_centrales` bit(1) DEFAULT NULL,
  `canalisation_freins` bit(1) DEFAULT NULL,
  `chaises_balanciers` bit(1) DEFAULT NULL,
  `coussins_caoutchouc` bit(1) DEFAULT NULL,
  `date_inspect` datetime DEFAULT NULL,
  `dispositif_levage_soutien` bit(1) DEFAULT NULL,
  `essieux` bit(1) DEFAULT NULL,
  `id_camion` bigint(20) DEFAULT NULL,
  `jambe_force` bit(1) DEFAULT NULL,
  `jumelles_ressort` bit(1) DEFAULT NULL,
  `lames_maitresses` bit(1) DEFAULT NULL,
  `longgerons_traversers` bit(1) DEFAULT NULL,
  `piece_fixation` bit(1) DEFAULT NULL,
  `pieces_fixation` bit(1) DEFAULT NULL,
  `plancher` bit(1) DEFAULT NULL,
  `ressorts` bit(1) DEFAULT NULL,
  `solives_soliveux` bit(1) DEFAULT NULL,
  `soupape_debattement` bit(1) DEFAULT NULL,
  `suspention_pneumatique` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i6remorque_sous`
--

LOCK TABLES `i6remorque_sous` WRITE;
/*!40000 ALTER TABLE `i6remorque_sous` DISABLE KEYS */;
/*!40000 ALTER TABLE `i6remorque_sous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_de_recherche`
--

DROP TABLE IF EXISTS `list_de_recherche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `list_de_recherche` (
  `id` bigint(20) NOT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `hauteur` varchar(255) DEFAULT NULL,
  `id_shipper` bigint(20) DEFAULT NULL,
  `largeur` varchar(255) DEFAULT NULL,
  `longueur` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `poids` varchar(255) DEFAULT NULL,
  `valeur` varchar(255) DEFAULT NULL,
  `date_recherche` datetime DEFAULT NULL,
  `type_camion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_de_recherche`
--

LOCK TABLES `list_de_recherche` WRITE;
/*!40000 ALTER TABLE `list_de_recherche` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_de_recherche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reparation`
--

DROP TABLE IF EXISTS `reparation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reparation` (
  `id` bigint(20) NOT NULL,
  `id_bon` bigint(20) DEFAULT NULL,
  `piece` varchar(255) DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `reparation_effectuer` varchar(255) DEFAULT NULL,
  `fournisseur` varchar(255) DEFAULT NULL,
  `garantie` date DEFAULT NULL,
  `heures` float DEFAULT NULL,
  `taux` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reparation`
--

LOCK TABLES `reparation` WRITE;
/*!40000 ALTER TABLE `reparation` DISABLE KEYS */;
INSERT INTO `reparation` VALUES (540,539,NULL,1567,'changer pneus',NULL,NULL,NULL,NULL),(543,542,NULL,516,'Checker des freins arrieres.',NULL,NULL,NULL,NULL),(396,395,'fhcgf',214,'dkgjlf',NULL,NULL,NULL,NULL),(397,395,'jy',5789,'ttyu',NULL,NULL,NULL,NULL),(394,392,'Pw45',1200,'Pneus R18',NULL,NULL,NULL,NULL),(393,392,'RFJ05',1025.97,'remplacement01',NULL,NULL,NULL,NULL),(391,387,'piece two',1000,'pro02',NULL,NULL,NULL,NULL),(390,387,'piece one',152.87,'pro01',NULL,NULL,NULL,NULL),(389,387,NULL,1000,'pro02',NULL,NULL,NULL,NULL),(388,387,'piece one',152.87,'pro01',NULL,NULL,NULL,NULL),(565,564,NULL,0,'Freins devants',NULL,NULL,NULL,NULL),(573,572,NULL,2466,'Rep01 and entretien01',NULL,NULL,NULL,NULL),(575,574,NULL,350,'Entreposage 05032019',NULL,NULL,NULL,NULL),(577,576,NULL,520,'Reparation la fissure de parebrise',NULL,NULL,NULL,NULL),(581,580,NULL,1106,'test drive',NULL,NULL,NULL,NULL),(583,582,NULL,416,'test wheels',NULL,NULL,NULL,NULL),(584,582,NULL,218,'changer d\'huile',NULL,NULL,NULL,NULL),(586,585,NULL,412,'filtre d\'aire',NULL,NULL,NULL,NULL),(588,587,NULL,200,'filtre d\"huile',NULL,NULL,NULL,NULL),(589,587,NULL,400,'filtre antigel',NULL,NULL,NULL,NULL),(607,605,NULL,420,'Changement filtre hydrolique',NULL,NULL,NULL,NULL),(606,605,NULL,254,'checker freins',NULL,NULL,NULL,NULL),(595,594,NULL,0,'Entretien 4 - Changement filtre hydrolique',NULL,NULL,NULL,NULL),(596,594,NULL,0,'test for unite 18',NULL,NULL,NULL,NULL),(597,594,NULL,865,'changer des pneus',NULL,NULL,NULL,NULL),(598,594,NULL,379,'changement d\'huile differentiel',NULL,NULL,NULL,NULL),(599,594,NULL,1896,'test for unite 18 - check all',NULL,NULL,NULL,NULL),(604,603,NULL,0,'Entretien 4 - Changement filtre hydrolique',NULL,NULL,NULL,NULL),(609,608,NULL,10,'rep01',NULL,NULL,NULL,NULL),(610,608,NULL,246,'rep02',NULL,NULL,NULL,NULL),(614,613,NULL,250,'rep02',NULL,NULL,NULL,NULL),(615,613,NULL,300,'rep03',NULL,NULL,NULL,NULL),(616,613,NULL,1450,'rep04',NULL,NULL,NULL,NULL),(637,636,NULL,0,'Changement antigel',NULL,NULL,NULL,NULL),(655,654,'',500,'grgd\nfgdfg\ndfgdf\njsdgjsdkjgl',NULL,NULL,NULL,NULL),(656,654,NULL,0,'Changement huile transmission',NULL,NULL,NULL,NULL),(673,672,NULL,0,'test for unite 18 - check all',NULL,NULL,NULL,NULL),(674,672,'thtfg',54354,'hiho',NULL,NULL,NULL,NULL),(676,675,'112488',15,'dfgdr',NULL,NULL,NULL,NULL),(762,761,NULL,348,'Changement huile differentiel',NULL,NULL,NULL,NULL),(763,761,'RPC5487',200,'Changement freins',NULL,NULL,NULL,NULL),(764,761,NULL,900,'Main d\"oeuvre',NULL,NULL,NULL,NULL),(793,792,'gf24567',350,'rep01','Adev Provider','2021-05-10',NULL,NULL),(794,792,NULL,250,'Main d\'oeuvre',NULL,NULL,5,50),(797,796,'4567kt',1590,'Rep02 : fjsdlkjgkldfj kjgkdjflgkmdfkl gsdkgjkdfj fgdfjgkj kgldfkgl;dfk.\nklgfjdkgjldfkgdjflg.\njhfjbhkldf','Pro DCF','2021-03-25',NULL,NULL),(798,796,NULL,300,'Main d\'oeuvre',NULL,NULL,6,50),(806,805,'78fdgdf',350,'rep 03 : jgkdfjgkl jgkdfklg gkdf\nfkgdfkgk \nkfgjkdfj kjgkldfj kgjdfl','fd provider','2022-01-18',NULL,NULL),(807,805,NULL,450,'Main d\'oeuvre',NULL,NULL,9,50),(864,863,'tvd123457',620,'Rep01 rterldvlsdlldsk sdogoskdp gdfkpgovdf','Provider01','2021-04-29',NULL,NULL),(865,863,'gk56478tvd25',258,'Rep04 sdfsd ksdlgfk jsd kdfksdkl dfsdklkmk',NULL,'2024-05-20',NULL,NULL),(866,863,'zn245789trg5',1096,'Rep03 rterldvlsdlldsk sdogoskdp gdfkpgovdf','Macpeck','2023-06-05',NULL,NULL),(867,863,'fry154789245',531,'Rep02 rterldvlsdlldsk sdogoskdp gdfkpgovdf alasl','Provider02','2020-01-28',NULL,NULL),(868,863,NULL,1250,'Main d\'oeuvre',NULL,NULL,25,50);
/*!40000 ALTER TABLE `reparation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_offer`
--

DROP TABLE IF EXISTS `services_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `services_offer` (
  `id` bigint(20) NOT NULL,
  `cross_polt` bit(1) DEFAULT NULL,
  `entreposage_exterieur` bit(1) DEFAULT NULL,
  `entreposage_interieur` bit(1) DEFAULT NULL,
  `id_transporter` bigint(20) DEFAULT NULL,
  `manutention` bit(1) DEFAULT NULL,
  `service_transbordage` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_offer`
--

LOCK TABLES `services_offer` WRITE;
/*!40000 ALTER TABLE `services_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `services_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipper`
--

DROP TABLE IF EXISTS `shipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shipper` (
  `id` bigint(20) NOT NULL,
  `depuis` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` bigint(20) NOT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `raison_sociale` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `tel` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipper`
--

LOCK TABLES `shipper` WRITE;
/*!40000 ALTER TABLE `shipper` DISABLE KEYS */;
INSERT INTO `shipper` VALUES (52,'2018-09-04','shipper01',1234,'shipper01','ship01',NULL,'shipper01','shipper01',_binary '\0',1234),(54,'2018-11-26','logismtl@gmail.com',147,NULL,'Logis Montreal',NULL,'shipper02','Cargaison, Logistique',_binary '\0',123),(56,'2018-10-08','shipper03',4185972361,NULL,'shipper03',NULL,'shipper03','shipper03',_binary '\0',5142367894),(58,'2018-11-05','shipper04',5124368792,NULL,'shipper04',NULL,'shipper04','shipper04',_binary '\0',1457892146),(60,'2016-11-18','shipper05',4785621389,NULL,'shipper05',NULL,'shipper05','shipper05',_binary '\0',4789245678),(70,'2018-11-27','dfsd',8684,NULL,'shipper20',NULL,'dsd','dvsds',_binary '\0',545465),(72,'2018-11-04','fdgdf',4547,NULL,'Shipper21',NULL,'hfghfg','gfhgf',_binary '\0',424),(75,'2018-11-01','fdgdf',44242,NULL,'shipper22',NULL,'gfhfhb','vsdfgsd',_binary '\0',42442),(95,'2018-12-01','dfsd',565464,NULL,'shipper250',NULL,'sdfdf','sdvsd',_binary '\0',656354),(100,'2018-12-03','',0,NULL,'shiper26',NULL,'','',_binary '\0',0);
/*!40000 ALTER TABLE `shipper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporter`
--

DROP TABLE IF EXISTS `transporter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transporter` (
  `id` bigint(20) NOT NULL,
  `depuis` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `raison_sociale` varchar(255) DEFAULT NULL,
  `tel` bigint(20) NOT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporter`
--

LOCK TABLES `transporter` WRITE;
/*!40000 ALTER TABLE `transporter` DISABLE KEYS */;
INSERT INTO `transporter` VALUES (1,'1984-03-29','gkrek@yahoo.com','Transport01','testphoto.jpg','Transporter01',6148759264,'transporter',NULL),(8,'1990-11-12','sosprestige@gmail.com','SOS Prestige','','Transportation - Remorquage',4509749111,NULL,NULL),(10,'2010-12-13','ftsd','Trans04','dfsdg','Transportation numer 10',4385789245,NULL,NULL),(9,'2005-12-10','ifhruia','Trans03','dfsdg','Transportation numer 4',4385789245,NULL,NULL),(7,'2008-10-16','sdkjfkls@fhsd.com','Transport02','','Transportation - Logistique',5142348798,NULL,NULL),(11,'2010-12-15','ftsd','Trans4All','dfsdg','Transportation numer 86',4385789245,NULL,NULL),(12,'2012-12-17','lf;le,','Delivery Any Where','','Delivraison - Freight Evrything',6875145932,NULL,NULL),(13,'1993-12-04','jdghjyhg','Cargo All','','Cargaison',9875436215,NULL,NULL),(14,'1989-04-06','dlsldj','Cargo 02','','All transport',5146987321,NULL,NULL),(15,'2010-05-25','gudafug','Cargo Numero1','','Transport evrything to every where',5149587236,NULL,NULL),(16,'1955-10-07','ffjsdk','Export and Import','dsdlj','cargo sans frontier',5148952431,NULL,NULL),(17,'2011-01-21','kgdfghaffuyg','trans10122018-01','','Transport domain',4386972541,NULL,NULL),(18,'2006-12-05','sdjside','Trans10122018-02','gfhgf','hsdjhk',5147821698,NULL,NULL),(19,'2008-09-01','greuhjfd','trans10122018-03','4torsglm','gfwegyfhbdshvb',5478924697,NULL,NULL),(80,'2018-10-11','sghg','Transporter20','dsgsdagsd','dfhfg',541879,NULL,NULL),(103,'2010-08-05','fdgs','trans27122018','fdgdfa','transporter 27122018',545646,NULL,NULL),(303,NULL,'','','','',0,NULL,NULL);
/*!40000 ALTER TABLE `transporter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voyage`
--

DROP TABLE IF EXISTS `voyage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `voyage` (
  `id` bigint(20) NOT NULL,
  `date_arrive` date DEFAULT NULL,
  `date_cree` date DEFAULT NULL,
  `date_depart` date DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `radius_destination` float DEFAULT NULL,
  `radius_origin` float DEFAULT NULL,
  `type_camion` varchar(255) DEFAULT NULL,
  `cherche_corridor` bit(1) DEFAULT NULL,
  `id_transporter` bigint(20) DEFAULT NULL,
  `nom_transporter` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voyage`
--

LOCK TABLES `voyage` WRITE;
/*!40000 ALTER TABLE `voyage` DISABLE KEYS */;
INSERT INTO `voyage` VALUES (323,NULL,'2019-02-12','2019-03-04','montreal','toronto',200,250,'Floats, Super B,',_binary '',8,'SOS Prestige'),(324,NULL,'2019-02-12','2019-02-25','toronto','montreal',200,150,'Container',_binary '',8,'SOS Prestige'),(325,NULL,'2019-02-12','2019-02-20','toronto','montreal',200,150,'Container',_binary '',8,'SOS Prestige'),(336,NULL,'2019-02-13','2019-03-06','edmonton, AB, Ca','montreal quebec, canada',400,200,'Floats',_binary '',8,'SOS Prestige'),(337,NULL,'2019-02-14','2019-01-24','montreal','montreal',200,200,'flat bed',_binary '',8,'SOS Prestige'),(329,NULL,'2019-02-12','2019-03-07','montreal','ottawa',100,100,'container',_binary '',8,'SOS Prestige'),(330,NULL,'2019-02-13','2019-02-22','point2','point1',100,100,'Super B',_binary '',8,'SOS Prestige'),(335,NULL,'2019-02-13','2019-02-26','toronto','vancouver',400,500,'other',_binary '',8,'SOS Prestige'),(332,NULL,'2019-02-13','2019-02-26','montreal','ottawa',100,100,'Double Drop',_binary '',8,'SOS Prestige'),(343,NULL,'2019-02-18','2019-02-28','toronto','montreal',200,100,'flat bed',_binary '',8,'SOS Prestige'),(344,NULL,'2019-02-20','2019-03-08','vancouver','st eustache',200,200,'flat bed',_binary '',8,'SOS Prestige'),(869,NULL,'2019-03-08',NULL,'Vancouver','Montreal',200,200,NULL,_binary '\0',1,'Transport01'),(346,NULL,'2019-02-21','2019-03-12','saguenay','Montreal',50,150,'Super B, Double Drop',_binary '\0',8,'SOS Prestige'),(347,NULL,'2019-02-21','2019-03-01','manitoba','Montreal',500,500,'Container, Floats',_binary '',8,'SOS Prestige');
/*!40000 ALTER TABLE `voyage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-11 20:18:34
