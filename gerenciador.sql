
--
-- Table structure for table `ano_crm`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ano_crm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ano_crm` varchar(245) DEFAULT NULL,
  `r_auth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ano_crm`
--

--
-- Table structure for table `cidade`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cidade` varchar(245) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `r_auth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `r_cidade_estado1` (`estado`),
  CONSTRAINT `r_cidade_estado1` FOREIGN KEY (`estado`) REFERENCES `estado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

--
-- Table structure for table `empresa`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_fantasia` varchar(245) DEFAULT NULL,
  `razao_social` varchar(245) DEFAULT NULL,
  `cnpj` varchar(245) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `cep` varchar(245) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `cidade` int(11) DEFAULT NULL,
  `bairro` varchar(245) DEFAULT NULL,
  `numero` varchar(245) DEFAULT NULL,
  `complemento` varchar(245) DEFAULT NULL,
  `r_auth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `r_empresa_estado1` (`estado`),
  KEY `r_empresa_cidade2` (`cidade`),
  CONSTRAINT `r_empresa_cidade2` FOREIGN KEY (`cidade`) REFERENCES `cidade` (`id`),
  CONSTRAINT `r_empresa_estado1` FOREIGN KEY (`estado`) REFERENCES `estado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

--
-- Table structure for table `estado`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(245) DEFAULT NULL,
  `uf` varchar(245) DEFAULT NULL,
  `pais` varchar(245) DEFAULT NULL,
  `r_auth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

--
-- Table structure for table `estado_civil`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_civil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado_civil` varchar(245) DEFAULT NULL,
  `r_auth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_civil`
--

--
-- Table structure for table `expedicao`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expedicao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expedicao` varchar(245) DEFAULT NULL,
  `r_auth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expedicao`
--

--
-- Table structure for table `forma_de_pagamento`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forma_de_pagamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forma_de_pagamento` varchar(245) DEFAULT NULL,
  `r_auth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_de_pagamento`
--

--
-- Table structure for table `medico`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crm` varchar(245) NOT NULL,
  `ano_crm` int(11) DEFAULT NULL,
  `situacao` int(11) DEFAULT NULL,
  `nome` varchar(245) DEFAULT NULL,
  `sexo` int(11) DEFAULT NULL,
  `estado_civil` int(11) DEFAULT NULL,
  `data_de_nascimento` varchar(245) DEFAULT NULL,
  `nacionalidade` int(11) DEFAULT NULL,
  `cpf` varchar(245) DEFAULT NULL,
  `rg` varchar(245) DEFAULT NULL,
  `expedicao` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `forma_de_pagamento` int(11) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  `cep` varchar(245) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `cidade` int(11) DEFAULT NULL,
  `bairro` varchar(245) DEFAULT NULL,
  `numero` varchar(245) DEFAULT NULL,
  `complemento` varchar(245) DEFAULT NULL,
  `r_auth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_crm` (`crm`),
  UNIQUE KEY `unique_cpf` (`cpf`),
  UNIQUE KEY `unique_rg` (`rg`),
  KEY `r_medico_ano_crm1` (`ano_crm`),
  KEY `r_medico_situacao2` (`situacao`),
  KEY `r_medico_sexo3` (`sexo`),
  KEY `r_medico_estado_civil4` (`estado_civil`),
  KEY `r_medico_nacionalidade5` (`nacionalidade`),
  KEY `r_medico_expedicao6` (`expedicao`),
  KEY `r_medico_status7` (`status`),
  KEY `r_medico_forma_de_pagamento8` (`forma_de_pagamento`),
  KEY `r_medico_empresa9` (`empresa`),
  KEY `r_medico_estado10` (`estado`),
  KEY `r_medico_cidade11` (`cidade`),
  CONSTRAINT `r_medico_ano_crm1` FOREIGN KEY (`ano_crm`) REFERENCES `ano_crm` (`id`),
  CONSTRAINT `r_medico_cidade11` FOREIGN KEY (`cidade`) REFERENCES `cidade` (`id`),
  CONSTRAINT `r_medico_empresa9` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `r_medico_estado10` FOREIGN KEY (`estado`) REFERENCES `estado` (`id`),
  CONSTRAINT `r_medico_estado_civil4` FOREIGN KEY (`estado_civil`) REFERENCES `estado_civil` (`id`),
  CONSTRAINT `r_medico_expedicao6` FOREIGN KEY (`expedicao`) REFERENCES `expedicao` (`id`),
  CONSTRAINT `r_medico_forma_de_pagamento8` FOREIGN KEY (`forma_de_pagamento`) REFERENCES `forma_de_pagamento` (`id`),
  CONSTRAINT `r_medico_nacionalidade5` FOREIGN KEY (`nacionalidade`) REFERENCES `pais` (`id`),
  CONSTRAINT `r_medico_sexo3` FOREIGN KEY (`sexo`) REFERENCES `sexo` (`id`),
  CONSTRAINT `r_medico_situacao2` FOREIGN KEY (`situacao`) REFERENCES `situacao` (`id`),
  CONSTRAINT `r_medico_status7` FOREIGN KEY (`status`) REFERENCES `status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

--
-- Table structure for table `pais`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pais` varchar(245) DEFAULT NULL,
  `sigla` varchar(245) DEFAULT NULL,
  `r_auth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

--
-- Table structure for table `password_resets`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

--
-- Table structure for table `r_indicators`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_indicators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) DEFAULT NULL,
  `query` text,
  `color` varchar(50) DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  `link` varchar(245) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `glyphicon` varchar(45) DEFAULT 'glyphicon glyphicon-signal',
  `r_auth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_indicators`
--

--
-- Table structure for table `r_logs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(245) DEFAULT NULL,
  `r_auth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_logs`
--
INSERT INTO `r_logs` VALUES (1,'admin medico: visualizou a lista',1,'2018-10-30 19:10:26','2018-10-30 19:10:26'),(2,'admin medico: visualizou a tela de cadastro',1,'2018-10-30 19:10:34','2018-10-30 19:10:34'),(3,'admin medico: visualizou a lista',1,'2018-10-30 19:12:32','2018-10-30 19:12:32'),(4,'admin medico: visualizou a tela de cadastro',1,'2018-10-30 19:12:35','2018-10-30 19:12:35'),(5,'admin medico: visualizou a lista',1,'2018-10-30 19:18:06','2018-10-30 19:18:06'),(6,'admin medico: visualizou a tela de cadastro',1,'2018-10-30 19:18:09','2018-10-30 19:18:09'),(7,'admin medico: visualizou a lista',1,'2018-10-30 19:20:39','2018-10-30 19:20:39'),(8,'admin medico: visualizou a tela de cadastro',1,'2018-10-30 19:20:46','2018-10-30 19:20:46');

--
-- Table structure for table `r_permissions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `matriz_id` int(11) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `r_auth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_permissions`
--

--
-- Table structure for table `r_profiles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) DEFAULT NULL,
  `moderator` tinyint(1) DEFAULT '0',
  `administrator` tinyint(1) DEFAULT '0',
  `default` tinyint(1) DEFAULT '0',
  `r_auth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_profiles`
--
INSERT INTO `r_profiles` VALUES (1,'Usuario',0,0,1,NULL,'2018-10-30 22:20:14','2018-10-30 22:20:14'),(2,'Moderador',1,0,0,NULL,'2018-10-30 22:20:14','2018-10-30 22:20:14'),(3,'Administrador',1,1,0,NULL,'2018-10-30 22:20:14','2018-10-30 22:20:14');

--
-- Table structure for table `r_reports`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `query` text NOT NULL,
  `image` varchar(245) DEFAULT NULL,
  `description` text,
  `size` varchar(10) DEFAULT NULL,
  `r_auth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_reports`
--
INSERT INTO `r_reports` VALUES (1,'Usuarios','SELECT id, name, username, email FROM users;',NULL,NULL,NULL,NULL,'2018-10-30 22:20:14','2018-10-30 22:20:14');

--
-- Table structure for table `sexo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sexo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sexo` varchar(245) DEFAULT NULL,
  `r_auth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexo`
--

--
-- Table structure for table `situacao`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `situacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `situacao` varchar(245) DEFAULT NULL,
  `r_auth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situacao`
--

--
-- Table structure for table `status`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(245) DEFAULT NULL,
  `r_auth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

--
-- Table structure for table `users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `profile_id` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `profession` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(245) DEFAULT NULL,
  `remember_token` varchar(245) DEFAULT NULL,
  `r_auth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--
INSERT INTO `users` VALUES (1,'admin','admin','$2y$10$ssBVFa0q6z9XRgQrxos8HeZttP2LlOPaUVwEUJQtCtwqxLPT1DH/O','3',1,NULL,'ranieu.sousa.9@gmail.com',NULL,NULL,NULL,'2018-10-30 22:20:14','2018-10-30 22:20:14');
