-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.36-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura para tabla crudlaravelsend.headquarters
CREATE TABLE IF NOT EXISTS `headquarters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- Volcando datos para la tabla crudlaravelsend.headquarters: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `headquarters` DISABLE KEYS */;
INSERT INTO `headquarters` (`id`, `name`) VALUES
	(1, 'Bogotá'),
	(2, 'México'),
	(3, 'Perú');
/*!40000 ALTER TABLE `headquarters` ENABLE KEYS */;


-- Volcando estructura para tabla crudlaravelsend.process
CREATE TABLE IF NOT EXISTS `process` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador de la tabla ',
  `description` text COLLATE utf8_spanish_ci NOT NULL COMMENT 'descripcion',
  `dateCreate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha de creacion del proceso',
  `headquartersId` int(11) NOT NULL COMMENT 'sede del proceso',
  `budget` double NOT NULL COMMENT 'presupuesto del proceso',
  `userId` int(11) NOT NULL COMMENT 'id del usuario ',
  `identifier` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Tabla de procesos';

-- Volcando datos para la tabla crudlaravelsend.process: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `process` DISABLE KEYS */;
INSERT INTO `process` (`id`, `description`, `dateCreate`, `headquartersId`, `budget`, `userId`, `identifier`) VALUES
	(1, 'gfdgdffrfr', '2018-11-18 21:34:26', 3, 4, 2, 1),
	(2, 'qwerwrkujk', '2018-11-18 21:46:55', 1, 564.56, 2, 2);
/*!40000 ALTER TABLE `process` ENABLE KEYS */;


-- Volcando estructura para tabla crudlaravelsend.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla crudlaravelsend.users: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'jeison', 'phillipee01@gmail.com', '$2y$10$u1zJKl3EH/T2j21UA31fvO0XIXpCv7QDCtg5fU63I9svDrtWoAlwa', 'DvwufwjdGg0yOSbkE8phA24AmUVvE4OEUXOUXhMXHNAv2h1FEEx1m9aOUzcW', '2018-11-19 02:06:02', '2018-11-19 02:46:20'),
	(2, 'prueba', 'prueba@prueba.com', '$2y$10$Dx/98J3f16xRqRccJ..xNeWA7E0RKER5MeCn4QtBTKGqALnpitQZy', NULL, '2018-11-19 02:46:42', '2018-11-19 02:46:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
