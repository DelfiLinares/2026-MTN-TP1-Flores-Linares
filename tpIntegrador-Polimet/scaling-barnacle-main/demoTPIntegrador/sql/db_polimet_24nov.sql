-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: polimet_db
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
-- Table structure for table `artistas`
--

DROP TABLE IF EXISTS `artistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artistas` (
  `id_artista` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_artista`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistas`
--

LOCK TABLES `artistas` WRITE;
/*!40000 ALTER TABLE `artistas` DISABLE KEYS */;
INSERT INTO `artistas` VALUES (1,'Leonardo da Vinci','Italia','Polimata del Renacimiento, ingeniero e inventor.'),(2,'Frida Kahlo','Mexico','Pintora iconica, famosa por sus autorretratos surrealistas.'),(3,'Vincent van Gogh','Holanda','Maestro del Post-Impresionismo.'),(4,'Claude Monet','Francia','Fundador clave del movimiento Impresionista.'),(5,'Pablo Picasso','España','Cofundador del Cubismo y maestro del arte moderno.'),(6,'Andy Warhol','EE. UU.','Figura central del Pop Art.'),(7,'Jackson Pollock','EE. UU.','Pintor influyente del Expresionismo Abstracto.'),(8,'Diego Rivera','Mexico','Muralista de renombre y activista social.'),(9,'Auguste Rodin','Francia','Escultor pionero de la escultura moderna.'),(10,'Tamara de Lempicka','Polonia','Pintora Art Deco de retratos elegantes.'),(11,'Tarsila do Amaral','Brasil','Figura central del modernismo brasileño.'),(12,'Salvador Dali','España','Maestro del Surrealismo y sus simbolos oniricos.'),(13,'Georgia O’Keeffe','EE. UU.','Pintora de flores y paisajes del suroeste.'),(14,'Rembrandt van Rijn','Holanda','Maestro de la pintura barroca.'),(15,'Michelangelo','Italia','Escultor, pintor y arquitecto del Renacimiento.'),(16,'Keith Haring','EE. UU.','Artista de arte pop y graffiti.'),(17,'Gustav Klimt','Austria','Pintor simbolista, famoso por sus obras doradas.'),(18,'Edvard Munch','Noruega','Pintor expresionista, autor de \"El Grito\".'),(19,'René Magritte','Belgica','Pintor surrealista conocido por sus imagenes ingeniosas.'),(20,'Banksy','Reino Unido','Artista de graffiti anonimo y activista.'),(21,'Jeff Koons','EE. UU.','Artista contemporaneo conocido por sus esculturas gigantes.'),(22,'Yayoi Kusama','Japon','Artista con enfoque en arte conceptual y minimalismo.'),(23,'Marina Abramović','Serbia','Artista de performance y arte corporal.'),(24,'Anish Kapoor','India/RU','Escultor famoso por sus instalaciones monumentales.'),(25,'Franca Delle Donne','Italia','Artista digital y conceptual.'),(26,'Kenji Tanaka','Japon','Maestro de la caligrafia moderna.'),(27,'Silvia Vega','Chile','Pintora muralista contemporanea.'),(28,'Alex Chen','China','Artista de videoarte y realidad virtual.'),(29,'Maria Sempere','España','Escultora en materiales reciclados.'),(30,'Benito Flores','Mexico','Pintor de retratos realistas.'),(110,'Pablo Picasso','España','Pionero del Cubismo y figura central del arte moderno.'),(111,'Georges Braque','Francia','Colaborador esencial en el desarrollo del Cubismo Analítico.'),(112,'Henri Laurens','Francia','Escultor cubista conocido por sus composiciones geométricas.'),(113,'Juan Gris','España','Maestro del Cubismo Sintético, enfocado en el collage.'),(114,'Pablo Picasso (Estudio)','España','Obra menor o de estudio de Picasso.'),(115,'Salvador Dalí','España','Icono del Surrealismo, famoso por sus imágenes oníricas y delirantes.'),(116,'René Magritte','Bélgica','Artista surrealista conocido por sus obras conceptuales y juegos de palabras visuales.'),(117,'René Magritte (2)','Bélgica','Otra obra conceptual importante de Magritte.'),(118,'Man Ray','EE. UU.','Fotógrafo y artista surrealista, clave en la escena de París.'),(119,'Meret Oppenheim','Suiza','Artista surrealista famosa por sus objetos cubiertos de piel.'),(120,'Claude Monet','Francia','Líder del Impresionismo, enfocado en la luz y los efectos del tiempo.'),(121,'Pierre-Auguste Renoir','Francia','Famoso por sus pinturas de la vida social y la figura femenina.'),(122,'Claude Monet (2)','Francia','Maestro del estudio de series y la luz cambiante.'),(123,'Pierre-Auguste Renoir (2)','Francia','Otra obra destacada de Renoir.'),(124,'Édouard Manet','Francia','Artista clave en la transición del Realismo al Impresionismo.'),(125,'Andy Warhol','EE. UU.','Figura central del Arte Pop, conocido por la serigrafía y la repetición.'),(126,'Roy Lichtenstein','EE. UU.','Famoso por usar imágenes de cómics y puntos Benday.'),(127,'Robert Indiana','EE. UU.','Artista Pop conocido por sus esculturas y diseños tipográficos.'),(128,'David Hockney','Reino Unido','Conocido por sus vibrantes pinturas de piscinas y paisajes de California.'),(129,'Wassily Kandinsky','Rusia','Pionero del arte abstracto puro y teórico del color.'),(130,'Ernst Ludwig Kirchner','Alemania','Líder del grupo Die Brücke, enfocado en la vida urbana y la angustia.'),(131,'Egon Schiele','Austria','Artista expresionista conocido por sus autorretratos introspectivos.'),(132,'Karl Schmidt-Rottluff','Alemania','Expresionista y miembro de Die Brücke.'),(133,'Franz Marc','Alemania','Expresionista alemán, famoso por su uso simbólico del color.'),(134,'Henri Matisse','Francia','Líder del Fauvismo y maestro del color y la línea.'),(135,'André Derain','Francia','Pintor fauvista y amigo cercano de Matisse.'),(136,'Paul Signac','Francia','Pintor neoimpresionista, cercano a los fauvistas por el color.'),(137,'Georges Rouault','Francia','Expresionista tardío con influencias fauvistas.'),(138,'Maurice de Vlaminck','Francia','Pintor fauvista, conocido por sus paisajes audaces.'),(139,'Leonardo da Vinci','Italia','Polímata renacentista, autor de obras icónicas.'),(140,'Sandro Botticelli','Italia','Pintor del Primer Renacimiento, conocido por sus obras mitológicas.'),(141,'Rafael Sanzio','Italia','Maestro del Alto Renacimiento, famoso por sus frescos.'),(142,'Michelangelo Buonarroti','Italia','Escultor, pintor y arquitecto del Alto Renacimiento.'),(143,'Michelangelo (2)','Italia','Otra obra monumental del artista.'),(144,'Diego Velázquez','España','Pintor barroco, maestro del retrato y la luz.'),(145,'Gian Lorenzo Bernini','Italia','Escultor y arquitecto cumbre del Barroco.'),(146,'Rembrandt van Rijn','Países Bajos','Maestro del Barroco neerlandés y del claroscuro.'),(147,'Artemisia Gentileschi','Italia','Pintora barroca famosa por sus representaciones femeninas fuertes.'),(148,'Caravaggio','Italia','Pintor que revolucionó el Barroco con su naturalismo y tenebrismo.'),(149,'Donald Judd','EE. UU.','Artista minimalista conocido por sus formas cúbicas y modulares.'),(150,'Mark Rothko','EE. UU.','Pintor del Expresionismo Abstracto, precursor del Minimalismo con campos de color.'),(151,'Carl Andre','EE. UU.','Escultor minimalista, famoso por sus piezas en el suelo.'),(152,'Sol LeWitt','EE. UU.','Artista conceptual y minimalista, conocido por sus series de líneas.'),(153,'Dan Flavin','EE. UU.','Artista minimalista que usaba luz fluorescente como material.'),(154,'Umberto Boccioni','Italia','Escultor y pintor clave del movimiento Futurista.'),(155,'Giacomo Balla','Italia','Pintor futurista centrado en el estudio del movimiento y la velocidad.'),(156,'Natalia Goncharova','Rusia','Pintora de vanguardia con influencias futuristas.'),(157,'Luigi Russolo','Italia','Pintor futurista y compositor de música experimental.'),(158,'Carlo Carrà','Italia','Pintor futurista y metafísico.');
/*!40000 ALTER TABLE `artistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventos` (
  `id_evento` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `capacidad` int DEFAULT NULL,
  PRIMARY KEY (`id_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (1,'Noche en el Museo','Tour nocturno, coctel y performance en vivo.','2025-12-01 20:00:00','2025-12-01 23:00:00',150),(2,'Taller de Meme-Arte','Crea tu propia obra inspirada en trends virales.','2025-12-05 15:00:00','2025-12-05 18:00:00',30),(3,'Gala Anual PoliMet','Cena de gala para patrocinadores y miembros Exclusive.','2025-12-15 19:00:00','2025-12-15 23:30:00',80),(4,'Conferencia IA y Arte','Charla sobre el futuro del arte digital y generativo.','2026-01-10 10:00:00','2026-01-10 12:00:00',200),(5,'Estreno Documental Cubismo','Proyeccion de documental sobre el Cubismo.','2026-01-20 18:00:00','2026-01-20 20:00:00',100),(6,'Visita Guiada Clásica','Recorrido centrado en las obras del Primer Piso.','2026-02-01 11:00:00','2026-02-01 13:00:00',25),(7,'Semana de Vanguardias','Exposiciones y charlas sobre el arte de principios del s. XX.','2026-03-01 09:00:00','2026-03-07 18:00:00',500),(8,'Brunch de Arte Pop','Desayuno tematico y recorrido por la Sala Pop Art.','2026-03-15 10:00:00','2026-03-15 12:00:00',40),(9,'Clase de Dibujo Urbano','Taller de dibujo al aire libre en el patio interior.','2026-04-05 14:00:00','2026-04-05 17:00:00',20),(10,'Subasta Benefica','Venta de arte para recaudacion de fondos (solo Exclusive).','2026-04-20 17:00:00','2026-04-20 21:00:00',60),(11,'Encuentro de Curadores','Reunion profesional (solo Exclusive e invitados).','2026-05-10 16:00:00','2026-05-10 18:00:00',20),(12,'Exposicion Flash Nocturna','Muestra de una sola noche con DJ set y bebidas.','2026-05-25 21:00:00','2026-05-25 00:00:00',120),(13,'Taller de Escultura 3D','Introduccion a la modelacion de escultura digital.','2026-06-05 16:00:00','2026-06-05 19:00:00',15),(14,'Charla sobre Realismo Mágico','Analisis de la pintura latinoamericana.','2026-06-15 18:30:00','2026-06-15 20:00:00',50),(15,'Cata de Vinos y Arte Barroco','Evento Premium para miembros.','2026-07-01 19:00:00','2026-07-01 22:00:00',70),(16,'Festival de Videoarte','Proyeccion de cortometrajes experimentales.','2026-07-15 20:00:00','2026-07-15 23:00:00',150),(17,'Seminario de Historia del Arte','Clase intensiva sobre el Renacimiento.','2026-08-01 09:00:00','2026-08-01 17:00:00',35),(18,'Desayuno con Artista Local','Encuentro con Silvia Vega (muralista).','2026-08-10 10:00:00','2026-08-10 12:00:00',20),(19,'Tour de la Bóveda','Acceso restringido a la coleccion de obras raras (Exclusive).','2026-09-01 14:00:00','2026-09-01 16:00:00',10),(20,'Maraton de Pintura','Competencia de pintura en vivo para aficionados.','2026-09-15 10:00:00','2026-09-15 18:00:00',50),(21,'Taller de Fotografia con Movil','Aprende a capturar arte con tu smartphone.','2026-10-01 15:00:00','2026-10-01 17:00:00',45),(22,'Cena Temática Gótica','Experiencia culinaria inspirada en el arte gotico.','2026-10-20 20:00:00','2026-10-20 23:00:00',60),(23,'Presentación de Libro','Autor discute la influencia de Dali en la cultura pop.','2026-11-05 19:00:00','2026-11-05 21:00:00',80),(24,'Tour Interactivo VR','Visita guiada usando dispositivos de realidad virtual.','2026-11-20 10:00:00','2026-11-20 12:00:00',30),(25,'Clase de Modelado con Arcilla','Taller práctico de escultura para principiantes.','2026-12-05 14:00:00','2026-12-05 16:00:00',25),(26,'Concierto de Musica Minimalista','Actuacion en la Sala de Experimentos Sonoros.','2026-12-15 20:00:00','2026-12-15 22:00:00',100),(27,'Exhibición Navideña','Muestra temporal de arte con tematica festiva.','2026-12-24 11:00:00','2026-12-24 18:00:00',400),(28,'Charla de Conservación','Expertos discuten la restauracion de obras clasicas.','2027-01-10 15:00:00','2027-01-10 17:00:00',50),(29,'Taller de Acuarelas','Clase enfocada en la tecnica de la acuarela.','2027-01-25 10:00:00','2027-01-25 12:00:00',20),(30,'Cierre de Gala','Celebracion de fin de temporada de exposiciones.','2027-02-15 19:30:00','2027-02-15 23:00:00',75);
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informacion_museo`
--

DROP TABLE IF EXISTS `informacion_museo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informacion_museo` (
  `id_info` int NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  `horarios` text NOT NULL,
  `fotos` text,
  `evento_destacado` int DEFAULT NULL,
  `capacidad` int NOT NULL,
  PRIMARY KEY (`id_info`),
  KEY `evento_destacado` (`evento_destacado`),
  CONSTRAINT `informacion_museo_ibfk_1` FOREIGN KEY (`evento_destacado`) REFERENCES `eventos` (`id_evento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacion_museo`
--

LOCK TABLES `informacion_museo` WRITE;
/*!40000 ALTER TABLE `informacion_museo` DISABLE KEYS */;
INSERT INTO `informacion_museo` VALUES (1,'El Museo Polimet combina arte histórico con elementos modernos, ofreciendo experiencias interactivas para visitantes de todas las edades.','Lunes a Viernes: 10:00 - 18:00\nSábados y Domingos: 11:00 - 20:00\nFeriados: 12:00 - 18:00','https://midominio.com/imagenes/museo_principal.jpg',1,3000);
/*!40000 ALTER TABLE `informacion_museo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membresias`
--

DROP TABLE IF EXISTS `membresias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membresias` (
  `id_membresia` int NOT NULL AUTO_INCREMENT,
  `tipo` enum('Estandar','Premium','Exclusive') DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_membresia`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membresias`
--

LOCK TABLES `membresias` WRITE;
/*!40000 ALTER TABLE `membresias` DISABLE KEYS */;
INSERT INTO `membresias` VALUES (1,'Estandar','Acceso basico a coleccion permanente y zonas comunes.'),(2,'Premium','Acceso a colecciones y exposiciones temporales.'),(3,'Exclusive','Acceso ilimitado a todas las areas, eventos VIP y archivos.');
/*!40000 ALTER TABLE `membresias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificaciones` (
  `id_notificacion` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `mensaje` text,
  `fecha_creacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_notificacion`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `notificaciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones`
--

LOCK TABLES `notificaciones` WRITE;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
INSERT INTO `notificaciones` VALUES (1,3,'Su membresia Estandar vence pronto. Renueve hoy!','2025-11-10 09:00:00'),(2,2,'Recordatorio: tiene una reserva de ticket para manana, 25/11.','2025-11-24 06:00:00'),(3,1,'Nueva exposicion exclusiva disponible en el Segundo Piso.','2025-11-15 14:00:00'),(4,5,'No olvide su evento Brunch de Arte Pop el 15/03/2026.','2026-03-01 10:00:00'),(5,4,'Su ticket de reserva para el 10/11 ha pasado a estado \"vencida\".','2025-11-11 00:00:01'),(6,8,'Invitacion formal a la Gala Anual PoliMet. Confirme su asistencia.','2025-12-01 10:00:00'),(7,10,'La obra La Gioconda (Filtro Viral) ha subido de popularidad.','2025-11-30 09:00:00'),(8,12,'Recordatorio de su evento Encuentro de Curadores para manana.','2026-05-09 06:00:00'),(9,11,'Hemos anadido nuevas obras en la Galeria del Renacimiento.','2025-11-21 12:00:00'),(10,6,'Recordatorio: tiene una reserva de ticket para manana, 28/11.','2025-11-27 06:00:00'),(11,7,'Beneficio exclusivo de pre-visualizacion activado: Sala de Vanguardias.','2025-12-05 10:00:00'),(12,9,'Descuento especial del 20% en la Tienda del Museo.','2025-11-20 15:00:00'),(13,13,'Su taller de Escultura 3D es el 05/06/2026.','2026-05-25 10:00:00'),(14,14,'El evento Charla sobre Realismo Mágico ha cambiado de hora.','2026-06-10 11:00:00'),(15,15,'Recordatorio: Cena Temática Gótica el 20/10/2026.','2026-10-15 12:00:00'),(16,16,'Acceso exclusivo al Tour de la Bóveda activado.','2026-08-25 13:00:00'),(17,17,'Su puntuación en la obra El Beso (Gold Edition) fue de 5 estrellas.','2025-12-07 14:00:00'),(18,18,'El Semanario de Historia del Arte ha comenzado su inscripcion.','2026-07-20 15:00:00'),(19,19,'La Exhibición Navideña ya esta disponible para la venta de tickets.','2026-12-01 16:00:00'),(20,20,'Votacion abierta para la Obra del Mes.','2025-12-30 17:00:00'),(21,21,'Felicitaciones! Ha sido seleccionado para un descuento VIP.','2026-01-05 10:30:00'),(22,22,'La Galeria Gótica ha sido restaurada y reabierta.','2026-02-10 11:30:00'),(23,23,'Se ha anadido un nuevo mural del artista Benito Flores.','2026-03-15 12:30:00'),(24,24,'Tu membresia Premium te da acceso a la Sala de Pintura.','2026-04-20 13:30:00'),(25,25,'Recordatorio: Subasta Benefica (solo Exclusive) en 5 dias.','2026-04-15 14:30:00'),(26,26,'Concierto de Musica Minimalista agotado. Su ticket esta confirmado.','2026-12-01 15:30:00'),(27,27,'Hemos detectado arte de Corea. Puedes filtrarlo ahora!','2026-06-10 16:30:00'),(28,28,'Tu valoracion en El Ciber-Sueño ha sido de las mas altas.','2025-12-20 17:30:00'),(29,29,'El evento Cierre de Gala es solo para miembros Exclusive y Premium.','2027-02-01 10:00:00'),(30,30,'Tu ticket de entrada al museo ya esta listo.','2025-12-18 11:00:00');
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obras`
--

DROP TABLE IF EXISTS `obras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obras` (
  `id_obra` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `imagen_url` varchar(255) DEFAULT NULL,
  `epoca` varchar(100) DEFAULT NULL,
  `nivel_popularidad` float DEFAULT '0',
  `id_artista` int DEFAULT NULL,
  `id_sala` int DEFAULT NULL,
  `id_tipo_obra` int DEFAULT NULL,
  PRIMARY KEY (`id_obra`),
  KEY `id_artista` (`id_artista`),
  KEY `id_sala` (`id_sala`),
  KEY `id_tipo_obra` (`id_tipo_obra`),
  CONSTRAINT `obras_ibfk_1` FOREIGN KEY (`id_artista`) REFERENCES `artistas` (`id_artista`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `obras_ibfk_2` FOREIGN KEY (`id_sala`) REFERENCES `salas` (`id_sala`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `obras_ibfk_3` FOREIGN KEY (`id_tipo_obra`) REFERENCES `tipos_obra` (`id_tipo_obra`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obras`
--

LOCK TABLES `obras` WRITE;
/*!40000 ALTER TABLE `obras` DISABLE KEYS */;
INSERT INTO `obras` VALUES (1,'Mujer Llorando','Retrato fragmentado que refleja la angustia con figuras angulares.','https://img.ejemplo.com/cub1.jpg','Cubismo',4.5,110,1,1),(2,'Violín y Uvas','Representación analítica de un violín con planos superpuestos.','https://img.ejemplo.com/cub2.jpg','Cubismo',4,111,2,1),(3,'Cabeza de Mujer (Fernande)','Busto escultórico que descompone la forma del rostro en prismas.','https://img.ejemplo.com/cub3.jpg','Cubismo',5,112,3,2),(4,'El Aficionado','Composición de un músico con instrumentos y letras fragmentadas.','https://img.ejemplo.com/cub4.jpg','Cubismo',4,113,4,1),(5,'Botella de Anís del Mono','Naturaleza muerta sintética con formas simplificadas y collage.','https://img.ejemplo.com/cub5.jpg','Cubismo',3,114,5,1),(6,'La Persistencia de la Memoria','Paisaje onírico con relojes blandos derritiéndose.','https://img.ejemplo.com/sur1.jpg','Surrealismo',5,115,6,1),(7,'El Imperio de las Luces','Contraste de una calle nocturna oscura con un cielo diurno brillante.','https://img.ejemplo.com/sur2.jpg','Surrealismo',4,116,7,1),(8,'El Hijo del Hombre','Retrato de un hombre con una manzana verde flotando frente a su rostro.','https://img.ejemplo.com/sur3.jpg','Surrealismo',5,117,8,1),(9,'Los Amantes','Dos figuras besándose con sus cabezas cubiertas por paños blancos.','https://img.ejemplo.com/sur4.jpg','Surrealismo',4,118,9,1),(10,'Teléfono-Langosta','Objeto surrealista que combina un aparato de comunicación con un crustáceo.','https://img.ejemplo.com/sur5.jpg','Surrealismo',4,119,10,2),(11,'Impresión, Sol Naciente','Vista de un puerto envuelto en neblina y la luz emergente del sol.','https://img.ejemplo.com/imp1.jpg','Impresionismo',5,120,11,1),(12,'Baile en el Moulin de la Galette','Escena de la vida parisina con vibrantes efectos de luz y sombra.','https://img.ejemplo.com/imp2.jpg','Impresionismo',4,121,12,1),(13,'La Catedral de Rouen (Serie)','Estudio de la fachada de la catedral a diferentes horas del día.','https://img.ejemplo.com/imp3.jpg','Impresionismo',4,122,13,1),(14,'El Almuerzo de los Remeros','Retrato de la burguesía al aire libre a orillas del Sena.','https://img.ejemplo.com/imp4.jpg','Impresionismo',5,123,14,1),(15,'Mujer con Sombrilla','Pinceladas ligeras que capturan a una mujer y su hijo contra un cielo brillante.','https://img.ejemplo.com/imp5.jpg','Impresionismo',4,124,15,1),(16,'Latas de Sopa Campbell','Serie de 32 lienzos que representan variedades de latas de sopa.','https://img.ejemplo.com/ap1.jpg','Arte Pop',5,125,16,1),(17,'Whaam!','Pintura a gran escala de un avión de combate disparando un cohete.','https://img.ejemplo.com/ap2.jpg','Arte Pop',4,126,17,1),(18,'Marilyn Diptych','Retrato repetido de la actriz Marilyn Monroe en colores vivos.','https://img.ejemplo.com/ap3.jpg','Arte Pop',5,125,18,1),(19,'Love','Escultura tipográfica de las cuatro letras de la palabra \"Love\".','https://img.ejemplo.com/ap4.jpg','Arte Pop',4,127,19,2),(20,'A Bigger Splash','Representación simplificada de una piscina y el chapoteo de una zambullida.','https://img.ejemplo.com/ap5.jpg','Arte Pop',4,128,20,1),(21,'El Jinete Azul','Pintura que usa el color y la forma de manera simbólica, sin intención narrativa.','https://img.ejemplo.com/exp1.jpg','Expresionismo',4,129,21,1),(22,'Calle de Dresde','Representación agitada y claustrofóbica de una calle con figuras alargadas.','https://img.ejemplo.com/exp2.jpg','Expresionismo',5,130,22,1),(23,'Autorretrato con Manos en la Cabeza','Retrato psicológico que transmite angustia y turbación emocional.','https://img.ejemplo.com/exp3.jpg','Expresionismo',4,131,23,1),(24,'La Calle','Vista urbana cargada de tensión emocional y colores saturados.','https://img.ejemplo.com/exp4.jpg','Expresionismo',3,132,24,1),(25,'El destino de los animales','Representación abstracta de la guerra y la naturaleza con colores fragmentados.','https://img.ejemplo.com/exp5.jpg','Expresionismo',2,133,25,1),(26,'La Danza','Panel decorativo que muestra figuras desnudas bailando en un círculo con colores puros.','https://img.ejemplo.com/fau1.jpg','Fauvismo',4,134,26,1),(27,'Retrato de Madame Matisse (Línea Verde)','Retrato que usa una línea verde brillante para estructurar el rostro.','https://img.ejemplo.com/fau2.jpg','Fauvismo',4,135,27,1),(28,'Lujo, Calma y Voluptuosidad','Escena idílica de figuras bañándose bajo un cielo colorido y poco realista.','https://img.ejemplo.com/fau3.jpg','Fauvismo',4,136,28,1),(29,'Los Tejados Rojos','Paisaje donde el color se utiliza de forma arbitraria para generar sensación.','https://img.ejemplo.com/fau4.jpg','Fauvismo',3,137,29,1),(30,'El Puerto de Collioure','Uso explosivo del color para representar la luz en un paisaje marítimo.','https://img.ejemplo.com/fau5.jpg','Fauvismo',4,138,30,1),(31,'La Última Cena','Mural que representa la última cena de Jesús con sus discípulos, destacando la perspectiva.','https://img.ejemplo.com/ren1.jpg','Renacimiento',5,139,1,1),(32,'El Nacimiento de Venus','Representación alegórica de la diosa emergiendo del mar.','https://img.ejemplo.com/ren2.jpg','Renacimiento',5,140,2,1),(33,'La Escuela de Atenas','Fresco que representa a los grandes filósofos, científicos y matemáticos de la antigüedad.','https://img.ejemplo.com/ren3.jpg','Renacimiento',5,141,3,1),(34,'Moisés','Escultura de mármol de grandes dimensiones de la figura bíblica.','https://img.ejemplo.com/ren4.jpg','Renacimiento',4,142,4,2),(35,'La Creación de Adán','Fresco famoso por la representación de Dios dándole vida a Adán en el techo de la Capilla Sixtina.','https://img.ejemplo.com/ren5.jpg','Renacimiento',5,143,5,1),(36,'Las Meninas','Retrato de la infanta Margarita y sus damas de honor en un complejo juego de espejos.','https://img.ejemplo.com/bar1.jpg','Barroco',5,144,6,1),(37,'El Rapto de Proserpina','Escultura dramática que captura el momento del rapto con gran dinamismo.','https://img.ejemplo.com/bar2.jpg','Barroco',5,145,7,2),(38,'La Ronda Nocturna','Gran óleo de un grupo de milicianos, famoso por su uso magistral de la luz.','https://img.ejemplo.com/bar3.jpg','Barroco',4,146,8,1),(39,'Judit Decapitando a Holofernes','Obra violenta y emotiva que muestra la decapitación con realismo crudo.','https://img.ejemplo.com/bar4.jpg','Barroco',4,147,9,1),(40,'La Vocación de San Mateo','Uso dramático del claroscuro para iluminar el momento de la vocación de Cristo.','https://img.ejemplo.com/bar5.jpg','Barroco',4,148,10,1),(41,'Sin Título (Caja Púrpura)','Estructura modular simple de metal en forma de cubo.','https://img.ejemplo.com/min1.jpg','Minimalismo',3.5,149,11,2),(42,'Orange and Yellow','Lienzo dominado por dos campos de color sólido sin figuras ni texturas.','https://img.ejemplo.com/min2.jpg','Minimalismo',5,150,12,1),(43,'1000 Picos','Instalación de suelo compuesta por picos de metal idénticos.','https://img.ejemplo.com/min3.jpg','Minimalismo',2.5,151,13,2),(44,'Líneas Verticales','Composición de líneas negras paralelas sobre fondo blanco, enfocada en la forma pura.','https://img.ejemplo.com/min4.jpg','Minimalismo',4,152,14,1),(45,'Tubo de Luz Fluorescente','Instalación de un simple tubo de luz para enfatizar el espacio.','https://img.ejemplo.com/min5.jpg','Minimalismo',4.33333,153,15,4),(46,'Formas Únicas de Continuidad en el Espacio','Escultura que representa el movimiento humano a través del espacio.','https://img.ejemplo.com/fut1.jpg','Futurismo',5,154,16,2),(47,'Dinamismo de un Perro con Correa','Representación del movimiento a través de múltiples imágenes superpuestas.','https://img.ejemplo.com/fut2.jpg','Futurismo',4,155,17,1),(48,'El Ciclista','Obra que busca capturar la velocidad y el movimiento de una bicicleta.','https://img.ejemplo.com/fut3.jpg','Futurismo',4,156,18,1),(49,'Velocidad Abstracta','Composición de líneas y colores que simulan la sensación de alta velocidad.','https://img.ejemplo.com/fut4.jpg','Futurismo',4,157,19,1),(50,'Treno para Mussolini','Obra que celebra la máquina, el ruido y la energía de la ciudad moderna.','https://img.ejemplo.com/fut5.jpg','Futurismo',3,158,20,1);
/*!40000 ALTER TABLE `obras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pisos`
--

DROP TABLE IF EXISTS `pisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pisos` (
  `id_piso` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_piso`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pisos`
--

LOCK TABLES `pisos` WRITE;
/*!40000 ALTER TABLE `pisos` DISABLE KEYS */;
INSERT INTO `pisos` VALUES (1,'Planta Baja','Area principal de recepcion y exposiciones de bienvenida.'),(2,'Primer piso','Galeria de Arte Clásico, Renacentista y Barroco.'),(3,'Segundo piso','Exposiciones de Arte Moderno, Digital y Conceptual.');
/*!40000 ALTER TABLE `pisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pisos_has_membresias`
--

DROP TABLE IF EXISTS `pisos_has_membresias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pisos_has_membresias` (
  `pisos_id_piso` int NOT NULL,
  `membresias_id_membresia` int NOT NULL,
  PRIMARY KEY (`pisos_id_piso`,`membresias_id_membresia`),
  KEY `fk_pisos_has_membresias_membresias1_idx` (`membresias_id_membresia`),
  KEY `fk_pisos_has_membresias_pisos1_idx` (`pisos_id_piso`),
  CONSTRAINT `fk_pisos_has_membresias_membresias1` FOREIGN KEY (`membresias_id_membresia`) REFERENCES `membresias` (`id_membresia`),
  CONSTRAINT `fk_pisos_has_membresias_pisos1` FOREIGN KEY (`pisos_id_piso`) REFERENCES `pisos` (`id_piso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pisos_has_membresias`
--

LOCK TABLES `pisos_has_membresias` WRITE;
/*!40000 ALTER TABLE `pisos_has_membresias` DISABLE KEYS */;
INSERT INTO `pisos_has_membresias` VALUES (1,1),(1,2),(2,2),(1,3),(2,3),(3,3);
/*!40000 ALTER TABLE `pisos_has_membresias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salas`
--

DROP TABLE IF EXISTS `salas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salas` (
  `id_sala` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text,
  `id_piso` int DEFAULT NULL,
  PRIMARY KEY (`id_sala`),
  KEY `id_piso` (`id_piso`),
  CONSTRAINT `salas_ibfk_1` FOREIGN KEY (`id_piso`) REFERENCES `pisos` (`id_piso`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salas`
--

LOCK TABLES `salas` WRITE;
/*!40000 ALTER TABLE `salas` DISABLE KEYS */;
INSERT INTO `salas` VALUES (1,'Sala Vanguardias Digitales','Exposicion temporal de arte futurista.',1),(2,'Galeria del Renacimiento','Obras de arte del siglo XV y XVI.',2),(3,'Arte en Redes Sociales','Exposicion de arte inspirado en memes y trends.',3),(4,'Sala de Acuarelas Modernas','Coleccion de obras en papel y tinta.',1),(5,'Esculturas Griegas','Obras de la antiguedad clasica en marmol y bronce.',2),(6,'Pintura Abstracta Contemporanea','Obras sin representacion figurativa.',3),(7,'Cine-Arte Documental','Sala de proyecciones para documentales y videoarte.',1),(8,'Salon de Retratos Barrocos','Retratos de diferentes epocas y estilos.',2),(9,'Instalaciones VR','Arte conceptual interactivo con realidad virtual.',3),(10,'Muralismo Latinoamericano','Obras de gran formato con tematica contemporanea.',1),(11,'Galeria Barroca Flamenca','Pinturas de la escuela flamenca y holandesa.',2),(12,'Exhibicion de Arte con IA','Obras creadas con inteligencia artificial.',3),(13,'Fotografia Digital','Muestra de arte fotografico.',1),(14,'Impresionismo y Post-Impresionismo','Obras de Monet, Van Gogh y contemporaneos.',2),(15,'Arte Conceptual Minimalista','Obras que enfatizan la idea sobre la estetica.',3),(16,'Sala de Performance','Espacio dedicado a obras de arte en vivo y grabadas.',1),(17,'Esculturas Clásicas','Obras de Miguel Angel y Rodin.',2),(18,'Diseño Gráfico Viral','Exposicion sobre el arte del diseño en la web.',3),(19,'Sala de Bocetos','Coleccion de dibujos preparatorios y estudios.',1),(20,'Retratos del Siglo de Oro','Obras de Velazquez y maestros espanoles.',2),(21,'Video-Instalaciones','Arte inmersivo con multiples pantallas.',3),(22,'Realismo Mágico','Obras influenciadas por el realismo latinoamericano.',1),(23,'Arte Moderno del Este','Pintura y escultura de Europa del Este.',2),(24,'NFT y Blockchain Art','Obras de arte tokenizadas y coleccionables.',3),(25,'Sala de Textiles','Obras de arte con fibras y tejidos.',1),(26,'Galeria Gótica','Arte de la Edad Media tardia.',2),(27,'Experimentos Sonoros','Instalaciones que usan el sonido como medio.',3),(28,'Pop Art Iconico','Obras de Warhol y el arte popular.',1),(29,'Arte del Surrealismo','Obras de Dali y Magritte.',2),(30,'Espacio de Realidad Mixta','Obras que mezclan lo fisico y lo virtual.',3);
/*!40000 ALTER TABLE `salas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secciones`
--

DROP TABLE IF EXISTS `secciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secciones` (
  `id_seccion` int NOT NULL AUTO_INCREMENT,
  `ubicacion` varchar(100) DEFAULT NULL,
  `epoca` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `nivel_popularidad` float DEFAULT NULL,
  `id_piso` int DEFAULT NULL,
  PRIMARY KEY (`id_seccion`),
  KEY `id_piso` (`id_piso`),
  CONSTRAINT `secciones_ibfk_1` FOREIGN KEY (`id_piso`) REFERENCES `pisos` (`id_piso`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secciones`
--

LOCK TABLES `secciones` WRITE;
/*!40000 ALTER TABLE `secciones` DISABLE KEYS */;
INSERT INTO `secciones` VALUES (1,'Muro Norte','2000-Presente','Memes y Virales',4.3,1),(2,'Vitrinas Centrales','Antiguedad','Obras Griegas y Romanas',4.6,2),(3,'Salon Principal','1950-Presente','Tendencias Digitales',4.1,3),(4,'Pasillo Principal','Renacimiento','Maestros Italianos',4.7,2),(5,'Rincon de Curadores','2010-Presente','Arte IA',4,3),(6,'Acceso Cafe','1850-1900','Post-Impresionismo',4.5,1),(7,'Area Interactiva','2000-Presente','Esculturas con Realidad Aumentada',4.2,3),(8,'Pasillo Este','Barroco','Retratos de Corte',4.4,2),(9,'Pared Exterior','Arte Urbano','Murales y Graffiti',3.8,1),(10,'Galeria Lateral','Siglo XX','Surrealismo y Cubismo',4.9,3),(11,'Boveda','Prehistoria','Arte Rupestre Digital',3.5,2),(12,'Sector Familiar','Modernismo','Arte Brasileño',4.1,1),(13,'Sala de la Luz','1900-1950','Impresionismo y Color',4.6,2),(14,'Area de Proyecciones','2020-Presente','Cine y Narrativa',4.3,3),(15,'Muro Sur','1960-1980','Pop Art',4.5,1),(16,'Sala Central','Clasico','Mitologia en Escultura',4.8,2),(17,'Rincon Minimalista','1990-2010','Arte Conceptual',4.1,3),(18,'Pasillo Oeste','Barroco','Bodegones y Paisajes',4.2,2),(19,'Acceso Principal','Edad Media','Iconografía Religiosa',4,1),(20,'Sala de Exposiciones 1','Contemporáneo','Instalaciones de Textil',4.5,3),(21,'Galería 360','Moderno','Expresionismo Abstracto',4.3,2),(22,'Espacio Abierto','2015-Presente','Video Performance',4.7,1),(23,'Puente Vidriado','Barroco','Influencia Flamenca',4.4,2),(24,'Salón Multimedia','Contemporáneo','Arte con Drones',4.9,3),(25,'Sala de Pintura','Renacimiento','Retratos Famosos',4.6,1),(26,'Galeria Norte','Moderno','Surrealismo Europeo',4.7,2),(27,'Pared Curva','Contemporáneo','Graffiti de Autor',4.2,3),(28,'Sector de Entrada','1800-1900','Romanticismo',3.9,1),(29,'Galería Sur','Clásico','Esculturas Romanas',4.5,2),(30,'Terraza de Arte','Contemporáneo','Escultura al Aire Libre',4.8,3);
/*!40000 ALTER TABLE `secciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id_ticket` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `fecha_reserva` date DEFAULT NULL,
  `hora_reserva` time DEFAULT NULL,
  `cantidad_personas` int DEFAULT NULL,
  `estado` enum('activa','cancelada','vencida','usada') DEFAULT NULL,
  `id_info` int DEFAULT NULL,
  `id_evento` int DEFAULT NULL,
  PRIMARY KEY (`id_ticket`),
  KEY `id_usuario` (`id_usuario`),
  KEY `fk_ticket_info` (`id_info`),
  KEY `fk_ticket_evento` (`id_evento`),
  CONSTRAINT `fk_ticket_evento` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id_evento`),
  CONSTRAINT `fk_ticket_info` FOREIGN KEY (`id_info`) REFERENCES `informacion_museo` (`id_info`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (37,154,'2025-11-20','18:00:00',5,'activa',1,13),(38,154,'2025-11-20','18:00:00',10,'activa',1,13),(39,154,'2025-11-20','18:00:00',25,'activa',1,5);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_obra`
--

DROP TABLE IF EXISTS `tipos_obra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_obra` (
  `id_tipo_obra` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_tipo_obra`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_obra`
--

LOCK TABLES `tipos_obra` WRITE;
/*!40000 ALTER TABLE `tipos_obra` DISABLE KEYS */;
INSERT INTO `tipos_obra` VALUES (1,'Cubismo','Movimiento artístico iniciado por Picasso y Braque, caracterizado por el uso de formas geométricas para representar figuras.'),(2,'Surrealismo','Movimiento que busca explorar el subconsciente y los sueños, manifestándose en obras ilógicas o fantásticas.'),(3,'Impresionismo','Estilo centrado en la representación de la luz y el momento, utilizando pinceladas sueltas y colores brillantes.'),(4,'Arte Pop','Movimiento que utiliza imágenes y temas de la cultura popular y de masas, como cómics, publicidad y objetos cotidianos.'),(5,'Expresionismo','Busca dar una visión subjetiva y emocional de la realidad, a menudo distorsionando la forma para lograr intensidad.'),(6,'Fauvismo','Caracterizado por un uso audaz y a menudo arbitrario del color puro y vibrante, sin preocuparse por la representación realista.'),(7,'Renacimiento','Período que revivió el interés por el arte y la cultura clásica de Grecia y Roma, enfocándose en el humanismo y la perfección técnica.'),(8,'Barroco','Estilo caracterizado por el dramatismo, la exuberancia, el fuerte contraste de luces y sombras (claroscuro) y la intensidad emocional.'),(9,'Minimalismo','Tendencia que reduce la obra a lo esencial, empleando formas geométricas simples, colores primarios y líneas puras.'),(10,'Futurismo','Movimiento que exalta la tecnología, la velocidad, la máquina y el movimiento, buscando romper con la tradición artística del pasado.');
/*!40000 ALTER TABLE `tipos_obra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `telefono` bigint DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `id_membresia` int DEFAULT '1',
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email` (`email`),
  KEY `id_membresia` (`id_membresia`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_membresia`) REFERENCES `membresias` (`id_membresia`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Javier','javier@mail.com','Javi_85mx#',912345678,'1985-11-20','Mexico',2),(3,'Maria','maria@mail.com','MariA99*es',955554444,'1998-01-01','Espana',1),(4,'Carlos','carlos@mail.com','CarL07!ar',966667777,'2001-07-25','Argentina',1),(5,'Elena','elena@mail.com','Elen@col88',900011122,'1970-03-10','Colombia',2),(6,'Luis','luis@mail.com','Lu1s_92pe!',933445566,'1995-12-05','Peru',1),(7,'Ana','ana@mail.com','Ana#ch77_',977889900,'1982-08-18','Chile',3),(8,'Roberto','roberto@mail.com','Robe_mx91*',911223344,'1960-02-28','Mexico',2),(9,'Paula','paula@mail.com','PauEs04@',944556677,'2003-04-12','Espana',1),(10,'Fernando','fernan@mail.com','FernArg75!',988776655,'1975-09-30','Argentina',2),(11,'Juan','juan@mail.com','JuanBr98#',910293847,'1988-06-22','Brasil',1),(12,'Valentina','vale@mail.com','Vale_ec93$',948372615,'1993-01-09','Ecuador',3),(13,'Daniel','dani@mail.com','Dani_us95*',954321098,'1978-04-20','EE. UU.',1),(14,'Laura','laura@mail.com','Lau_ca87!',987098709,'1992-10-05','Canada',2),(15,'Ricardo','ricardo@mail.com','Rica_pt91@',919283746,'1965-07-17','Portugal',1),(16,'Isabel','isa@mail.com','Isab_de00#',938475621,'2000-02-29','Alemania',3),(17,'Pedro','pedro@mail.com','Ped_fr80!',927364581,'1980-12-12','Francia',2),(18,'Monica','monica@mail.com','Mon_jp96*',946573829,'1996-06-06','Japon',1),(19,'Andres','andres@mail.com','And_au97$',959483726,'1972-01-30','Australia',1),(20,'Natalia','nati@mail.com','Nati_sa89!',968754123,'1989-11-11','Sudafrica',2),(21,'Felipe','feli@mail.com','Tom_cl90#',971829374,'1994-08-03','Italia',1),(22,'Gabriela','gabi@mail.com','Luci_mx84@',982736451,'1968-05-25','Corea',3),(23,'Benja','benja@mail.com','Die_es02!',993847562,'2002-09-19','Suecia',2),(24,'Olivia','olivia@mail.com','Cami_ar01*',904758639,'1976-03-08','Noruega',1),(25,'Ignacio','igna@mail.com','Est_co94@',915869742,'1991-12-01','Irlanda',1),(26,'Martina','martina@mail.com','Rosa_pe83$',926970853,'1984-07-27','Rusia',3),(27,'Diego','diego@mail.com','Pabl_ch91!',937081964,'1999-04-14','China',1),(28,'Camila','cami@mail.com','Mart_mx93*',948192075,'1973-10-29','India',2),(29,'Elias','elias@mail.com','Serg_es88!',959203186,'1987-01-05','Egipto',3),(30,'Josefina','josefina@mail.com','Juli_ar99#',960314297,'1997-06-16','Israel',1),(31,'JuanpiB','juanpi@mail.com','ju21@gna',48680605,NULL,'argentina',NULL),(114,'Milagros','mila@mail.com','Sd6QkJn8',56988221234,'1998-07-21','Chile',1),(115,'Esteban','esteban@mail.com','Wq3ZpTp2',1160987712,'1987-12-03','Argentina',1),(116,'Luciana','luci@mail.com','Gt1HpXc4',1133221177,'1992-09-30','Argentina',1),(117,'Tomas','tomi@mail.com','Vb7KsMn1',1134439001,'1996-11-11','Argentina',1),(119,'Matias','mati@mail.com','Xp2NgWs9',1122127654,'1993-01-19','Argentina',1),(120,'Florencia','flo@mail.com','Kd5TbYn4',1143210988,'1999-06-02','Argentina',1),(121,'Alejandro','ale@mail.com','Ty3LpVk8',1138302211,'1988-03-13','Argentina',1),(122,'Noelia','noe@mail.com','Wn9HtPc2',59599341234,'1995-12-22','Paraguay',1),(123,'Ramiro','rami@mail.com','Ps6ZxLw5',56999341102,'1991-02-11','Chile',1),(124,'Sofia','sofi@mail.com','Qd4VjMn7',1129028844,'1997-09-09','Argentina',1),(126,'Agustina','agus@mail.com','Hn7QpXz3',1178976600,'1990-08-27','Argentina',1),(127,'Martin','martin@mail.com','Cv9BpQw4',59824441190,'1994-11-05','Uruguay',1),(128,'Evelyn','eve@mail.com','Fx4LpJm2',1134098221,'1998-04-15','Argentina',1),(129,'Kevin','kevin@mail.com','Dr6SsKp8',1188031122,'1992-07-01','Argentina',1),(130,'Abril','abril@mail.com','Bg3YtQw1',1142298877,'1996-10-24','Argentina',1),(131,'Hernan','hernan@mail.com','Np5KsDx4',1132907765,'1987-01-18','Argentina',1),(133,'Lisandro','lisa@mail.com','Rt6PvBn7',1132224880,'1993-09-23','Argentina',1),(135,'Joaquin','joaqui@mail.com','Mx2KdHw8',1176320911,'1990-03-04','Argentina',1),(136,'Melina','meli@mail.com','Sp6YvLn3',1148781122,'1988-12-20','Argentina',1),(137,'Ezequiel','eze@mail.com','Qw5NrTx1',1129023311,'1994-06-28','Argentina',1),(138,'Carla','carla@mail.com','Hp8YcLs3',1137800231,'1997-10-02','Argentina',1),(139,'Nicolas','nico@mail.com','Dr6FtPw4',59823341220,'1992-08-19','Uruguay',1),(140,'Ailen','ailen@mail.com','Ks7BnQc2',1163321100,'1998-12-12','Argentina',1),(141,'Rodrigo','rodo@mail.com','Lx3GjWp9',1145667783,'1991-03-21','Argentina',2),(142,'Magali','maga@mail.com','Pt5SwNz8',56988321098,'1996-07-14','Chile',2),(143,'Federico','fede@mail.com','Vq1KfCs6',1130029988,'1989-11-25','Argentina',2),(144,'Luana','luana@mail.com','Tp9FwKs2',1135822244,'1995-06-08','Argentina',2),(145,'Bruno','bruno@mail.com','Gj4MnBs7',1155327711,'1990-09-30','Argentina',2),(146,'Delfina','delfi@mail.com','Zn6XcLp5',51992348761,'1997-02-02','Peru',2),(147,'Gero','gero@mail.com','Qc7PzLt2',1145654490,'1985-05-05','Argentina',3),(148,'Valeria','val@mail.com','Hd4SnQx9',59824459871,'1993-10-15','Uruguay',3),(149,'Ulises','uli@mail.com','Mp2VkFr8',56988341109,'1990-01-09','Chile',3),(150,'Bianca','bian@mail.com','Tf5XqZn6',1138422001,'1998-04-27','Argentina',3),(151,'Marcos','marcos@mail.com','Wr8NjQp7',1166543988,'1987-07-19','Argentina',3),(152,'joacgp08','joacgp08@gmail.com','joflopa1319A',1161123915,'2008-02-12','Argentina',NULL),(154,'joacogonz32','joacogonz32@gmail.com','joflopa1319@polimet',1161123915,'2008-02-12','Argentina',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_eventos`
--

DROP TABLE IF EXISTS `usuarios_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_eventos` (
  `id_usuario` int NOT NULL,
  `id_evento` int NOT NULL,
  PRIMARY KEY (`id_usuario`,`id_evento`),
  KEY `id_evento` (`id_evento`),
  CONSTRAINT `usuarios_eventos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usuarios_eventos_ibfk_2` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id_evento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_eventos`
--

LOCK TABLES `usuarios_eventos` WRITE;
/*!40000 ALTER TABLE `usuarios_eventos` DISABLE KEYS */;
INSERT INTO `usuarios_eventos` VALUES (2,1),(6,1),(4,2),(9,2),(1,3),(8,3),(11,4),(3,6),(10,6),(5,8),(7,10),(12,11),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30);
/*!40000 ALTER TABLE `usuarios_eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valoraciones`
--

DROP TABLE IF EXISTS `valoraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valoraciones` (
  `id_valoracion` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `id_obra` int DEFAULT NULL,
  `puntaje` int DEFAULT NULL,
  `comentario` text,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_valoracion`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_obra` (`id_obra`),
  CONSTRAINT `valoraciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `valoraciones_ibfk_2` FOREIGN KEY (`id_obra`) REFERENCES `obras` (`id_obra`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `valoraciones_chk_1` CHECK ((`puntaje` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=796 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valoraciones`
--

LOCK TABLES `valoraciones` WRITE;
/*!40000 ALTER TABLE `valoraciones` DISABLE KEYS */;
INSERT INTO `valoraciones` VALUES (514,15,1,5,'Gran uso de la fragmentación para generar angustia.','2025-11-20'),(703,28,1,5,'Una pieza icónica del periodo azul.','2025-12-01'),(704,142,1,4,'Esperaba más intensidad, pero la técnica es impecable.','2025-12-10'),(705,124,2,4,'La descomposición del violín es compleja y muy bien lograda.','2025-11-22'),(706,120,2,4,'Braque en su máxima expresión analítica.','2025-12-05'),(707,10,3,5,'La obra más sólida de la sala 3, la descomposición es magistral.','2025-11-28'),(708,31,3,5,'La escultura cubista es fascinante.','2025-12-12'),(709,140,4,4,'Buen manejo de la composición y el color.','2025-11-25'),(710,119,4,4,'El uso del collage sintético es sutil.','2025-12-08'),(711,129,4,4,'Representación compleja, pero emotiva.','2025-12-18'),(712,12,5,3,'Demasiado simplificada, la encontré aburrida.','2025-11-21'),(713,150,5,3,'Una pieza de transición interesante.','2025-12-02'),(714,1,6,5,'La obra cumbre del Surrealismo, perturbadora y genial.','2025-11-23'),(715,127,6,5,'Los relojes blandos generan una atmósfera de ensueño total.','2025-12-06'),(716,154,6,5,'Un poco sobreexpuesta, pero siempre impactante.','2025-12-15'),(717,20,7,4,'El contraste entre el día y la noche es brillante.','2025-11-27'),(718,135,7,4,'Magritte siempre jugando con la lógica, me encantó.','2025-12-09'),(719,116,8,5,'La manzana oculta la identidad, un recurso potente.','2025-11-30'),(720,146,8,5,'Conceptual, perfecto. Mi favorita.','2025-12-11'),(721,133,9,4,'Buena ejecución, pero la sensación es de misterio innecesario.','2025-12-16'),(722,154,10,4,'El objeto ready-made llevado al absurdo surrealista.','2025-12-20'),(723,18,11,5,'La luz es capturada de forma mágica, un clásico.','2025-11-21'),(724,114,11,5,'Monet en su mejor momento, la esencia del Impresionismo.','2025-12-03'),(725,131,12,4,'La alegría y el movimiento de la escena son contagiosos.','2025-11-26'),(726,13,12,4,'Me transportó a la época de los bailes parisinos.','2025-12-08'),(727,141,13,4,'Interesante el estudio serial, pero monótono.','2025-11-29'),(728,11,13,4,'Un gran ejemplo de cómo la luz cambia la forma.','2025-12-13'),(729,2,14,5,'El retrato social más vibrante de la sala.','2025-11-24'),(730,137,14,5,'La frescura de la pintura al aire libre es notable.','2025-12-07'),(731,4,15,4,'Pincelada suelta y delicada. Hermoso.','2025-11-30'),(732,12,16,5,'Máximo ícono del Arte Pop. La repetición es la clave.','2025-12-01'),(733,148,16,5,'Un comentario audaz sobre el consumo masivo.','2025-12-14'),(734,114,17,4,'El uso de puntos Benday y el estilo cómic son geniales.','2025-12-04'),(735,19,17,4,'Impactante y ruidosa, me gusta su agresividad.','2025-12-17'),(736,6,18,5,'La dualidad de Marilyn, vida y muerte, en una sola obra.','2025-12-05'),(737,10,18,5,'Una obra maestra Pop, el uso del color es icónico.','2025-12-19'),(738,22,19,4,'La escultura Love es icónica, pero muy simple para mi gusto.','2025-12-07'),(739,7,20,4,'Esa simple salpicadura tiene tanta fuerza. ¡Hockney es un genio!','2025-12-11'),(740,151,20,4,'El minimalismo de la escena es atractivo.','2025-12-21'),(741,23,21,4,'El color es puramente emocional y subjetivo.','2025-11-25'),(742,136,22,5,'La angustia de la ciudad se siente en las figuras alargadas.','2025-12-06'),(743,149,23,4,'Una mirada cruda a la psique del artista.','2025-12-10'),(744,20,24,3,'Demasiada oscuridad, no logró atraparme.','2025-12-18'),(745,13,25,2,'El puntaje es bajo. No comprendí el simbolismo, parece inacabado.','2025-12-24'),(746,5,26,4,'El color puro y la vitalidad de las figuras son increíbles.','2025-11-27'),(747,14,26,4,'Matisse en su fase más alegre. Una obra fundamental.','2025-12-10'),(748,22,27,4,'La línea verde en el rostro es audaz, pero distrae.','2025-12-01'),(749,126,27,4,'Derain maneja el color con gran libertad.','2025-12-14'),(750,147,28,4,'Una escena muy placentera, el uso de puntos es interesante.','2025-12-23'),(751,123,29,3,'El color saturado me resulta excesivo.','2025-12-04'),(752,115,30,4,'Explosión de luz en el puerto. El Fauvismo es vibrante.','2025-12-17'),(753,10,31,5,'La perspectiva y la composición son perfectas. Obra maestra indiscutible.','2025-11-20'),(754,138,31,5,'Una maravilla de la ingeniería y el arte renacentista.','2025-12-02'),(755,117,32,5,'La figura de Venus es etérea y hermosa.','2025-11-25'),(756,145,32,5,'Botticelli en su pico poético. Me encanta el detalle de las flores.','2025-12-07'),(757,3,33,5,'La reunión de mentes más impresionante de la historia del arte.','2025-11-29'),(758,150,33,5,'El dominio del fresco de Rafael es asombroso.','2025-12-11'),(759,20,34,4,'Una escultura con vida propia. El dramatismo de la barba es genial.','2025-11-24'),(760,128,34,4,'Miguel Ángel logrando el máximo pathos.','2025-12-06'),(761,152,35,5,'El dedo de Dios que da la vida. ¡Es la perfección!','2025-12-13'),(762,8,36,5,'La obra más compleja y moderna del Barroco. El uso del espacio es increíble.','2025-11-23'),(763,130,36,5,'Velázquez y su juego con el espectador. Una lección de arte.','2025-12-05'),(764,11,37,5,'El dinamismo y la fuerza de la escultura de Bernini son inigualables.','2025-11-28'),(765,30,37,5,'Captura el instante con una maestría única.','2025-12-12'),(766,2,38,4,'La luz sobre el grupo es intensa y dramática.','2025-11-26'),(767,144,38,4,'El uso del claroscuro de Rembrandt es magistral.','2025-12-09'),(768,121,39,4,'Demasiado violenta, aunque la fuerza de la artista es palpable.','2025-12-01'),(769,143,39,4,'Una representación feminista poderosa para la época.','2025-12-15'),(770,139,40,4,'La luz que entra por la ventana es el punto focal. Excelente.','2025-12-16'),(771,10,41,3,'Es solo una caja, pero el color es muy estético.','2025-12-01'),(772,154,41,4,'La simplicidad de Judd es desafiante.','2025-12-14'),(773,1,42,5,'La intensidad emocional del color es inmensa. Rothko es pura contemplación.','2025-11-28'),(774,122,43,2,'No entiendo el arte de suelo. Parece peligroso.','2025-12-04'),(775,115,43,3,'La repetición del material es la obra en sí.','2025-12-17'),(776,6,44,4,'La sencillez de la línea pura.','2025-12-06'),(777,135,44,4,'Sol LeWitt es la idea sobre la ejecución.','2025-12-20'),(778,2,45,4,'La luz como material escultórico, muy innovador.','2025-12-09'),(779,140,45,4,'Minimalismo funcional y estético.','2025-12-22'),(780,15,46,5,'La captura del movimiento en la escultura es dinámica.','2025-11-23'),(781,141,46,5,'El Futurismo de Boccioni es espectacular.','2025-12-05'),(782,13,47,4,'Muestra la velocidad de forma ingeniosa.','2025-11-26'),(783,151,47,4,'El dinamismo del perro es visible, me gusta el efecto.','2025-12-08'),(784,11,48,4,'La fragmentación del ciclista refleja la velocidad.','2025-11-30'),(785,7,49,4,'La abstracción de la velocidad funciona muy bien.','2025-12-13'),(786,15,50,3,'Demasiada glorificación de la guerra, pero tiene valor histórico.','2025-12-02'),(787,139,50,3,'El tren es el símbolo de la modernidad futurista.','2025-12-15'),(788,30,50,3,'Buena obra para cerrar la colección de Futurismo.','2025-12-25'),(789,1,1,4,'Volviendo a visitar esta obra maestra. La angustia se mantiene.','2025-12-28'),(790,154,6,5,'Siempre una visita obligada en la sala surrealista.','2025-12-29'),(791,140,11,5,'El sol naciente más bello jamás pintado.','2025-12-29'),(792,141,16,5,'Impacto visual constante. Pop Art en su esencia.','2025-12-27'),(793,15,36,5,'No me canso de descubrir nuevos detalles en Las Meninas.','2025-12-26'),(794,146,42,5,'La sutil vibración del color es hipnótica. Un momento de paz.','2025-12-30'),(795,1,45,5,'¡La obra moderna más increíble! Un 5 merecido.','2025-11-24');
/*!40000 ALTER TABLE `valoraciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitas`
--

DROP TABLE IF EXISTS `visitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitas` (
  `id_visita` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `id_obra` int DEFAULT NULL,
  `fecha_visita` datetime DEFAULT NULL,
  PRIMARY KEY (`id_visita`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_obra` (`id_obra`),
  CONSTRAINT `visitas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `visitas_ibfk_2` FOREIGN KEY (`id_obra`) REFERENCES `obras` (`id_obra`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitas`
--

LOCK TABLES `visitas` WRITE;
/*!40000 ALTER TABLE `visitas` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-24 20:22:35


