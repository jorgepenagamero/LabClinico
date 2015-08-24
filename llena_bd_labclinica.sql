-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-08-2015 a las 18:57:52
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_labclinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diversos`
--

CREATE TABLE IF NOT EXISTS `diversos` (
  `id` int(10) unsigned NOT NULL,
  `muestra` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `examen` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `observaciones` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examenes`
--

CREATE TABLE IF NOT EXISTS `examenes` (
  `id` int(10) unsigned NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `examenes`
--

INSERT INTO `examenes` (`id`, `nombre`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Shanahan, Torp and Becker', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(2, 'Jerde, Kulas and Trantow', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(3, 'Nienow Ltd', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(4, 'McLaughlin Group', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(5, 'Hermiston-Labadie', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(6, 'Rowe-Sporer', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(7, 'Beier PLC', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(8, 'Koepp Group', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(9, 'Balistreri, Kuphal and Greenfelder', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(10, 'Witting Ltd', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(11, 'Weimann-Bernhard', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(12, 'Bartell, Lebsack and Koss', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(13, 'Blick Group', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(14, 'Prohaska Ltd', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(15, 'Nienow Group', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(16, 'Wilderman Ltd', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(17, 'DuBuque, Blick and Friesen', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(18, 'Armstrong, Gleason and Strosin', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(19, 'Christiansen LLC', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(20, 'Dooley and Sons', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(21, 'Considine-Sawayn', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(22, 'Monahan-Labadie', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(23, 'Bashirian-Senger', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(24, 'Ebert, Spinka and Russel', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(25, 'Rempel Inc', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(26, 'Feest-Marquardt', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(27, 'Weissnat-Wilkinson', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(28, 'Crooks PLC', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(29, 'Swaniawski PLC', NULL, '2015-08-20 22:57:31', '2015-08-20 22:57:31'),
(30, 'Frami, Deckow and Nicolas', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_valores`
--

CREATE TABLE IF NOT EXISTS `examen_valores` (
  `id` int(10) unsigned NOT NULL,
  `examen_id` int(11) NOT NULL,
  `valor` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `examen_valores`
--

INSERT INTO `examen_valores` (`id`, `examen_id`, `valor`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 25, 'Altenwerth Inc', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(2, 8, 'Breitenberg LLC', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(3, 30, 'Kiehn Ltd', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(4, 7, 'Ryan Ltd', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(5, 21, 'O''Hara, Cummerata and Orn', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(6, 12, 'Kunde Group', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(7, 12, 'Krajcik-King', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(8, 11, 'Bernier-Dooley', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(9, 17, 'Krajcik, Adams and Gerlach', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(10, 12, 'Auer-Runolfsdottir', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(11, 26, 'Kulas-Torp', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(12, 1, 'Hermann, Smitham and Ledner', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(13, 16, 'Rosenbaum PLC', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(14, 28, 'Morar-Osinski', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(15, 23, 'Stoltenberg, Mayert and Brown', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(16, 19, 'Blanda-Kessler', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(17, 5, 'Pacocha-Glover', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(18, 14, 'Barrows Inc', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(19, 15, 'Klein-Koch', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(20, 27, 'Wiegand Ltd', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(21, 9, 'Bradtke, Yundt and Wisoky', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(22, 6, 'Kuhn and Sons', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(23, 18, 'Cruickshank and Sons', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(24, 21, 'Kshlerin-Auer', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(25, 4, 'Rowe and Sons', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(26, 23, 'Dibbert Group', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(27, 17, 'Wolf Ltd', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(28, 7, 'Stoltenberg, Kulas and Weber', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(29, 26, 'Leffler, Hintz and Barrows', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(30, 20, 'Spencer Inc', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(31, 11, 'Vandervort-Koelpin', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(32, 19, 'Gutmann LLC', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(33, 24, 'Hyatt, Kuhic and Fay', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(34, 2, 'Bailey-Klocko', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(35, 9, 'Schmidt-Hammes', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(36, 15, 'Gottlieb LLC', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(37, 21, 'Hickle Inc', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(38, 11, 'Monahan, Lowe and Stehr', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(39, 16, 'Beier, Olson and Smith', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(40, 2, 'Kassulke PLC', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(41, 12, 'Osinski Ltd', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(42, 9, 'Hudson LLC', NULL, '2015-08-20 22:57:32', '2015-08-20 22:57:32'),
(43, 3, 'Watsica Ltd', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(44, 25, 'Treutel-Leffler', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(45, 29, 'Dare, Wolf and VonRueden', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(46, 4, 'Pagac Inc', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(47, 11, 'Denesik and Sons', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(48, 16, 'Stroman, Cummerata and Effertz', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(49, 12, 'Toy, Gleichner and Haag', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(50, 22, 'Cole LLC', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(51, 10, 'Oberbrunner-Mohr', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(52, 8, 'Prohaska, McGlynn and Wisozk', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(53, 14, 'O''Conner, Douglas and D''Amore', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(54, 9, 'Rempel, Bogisich and Swaniawski', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(55, 20, 'Becker-Maggio', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(56, 14, 'Hessel-Koss', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(57, 28, 'Klocko and Sons', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(58, 17, 'Kutch-Fisher', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(59, 9, 'Ruecker, Bayer and Turcotte', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(60, 6, 'Mann, Deckow and Grady', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `heces`
--

CREATE TABLE IF NOT EXISTS `heces` (
  `id` int(10) unsigned NOT NULL,
  `color` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `consistencia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sangre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `restos` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `entrocitos` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `levadura` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mucus` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `leucositos` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `flora` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `protozoarios` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `quistes` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `larvas` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `metazueros` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `observaciones` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `heces`
--

INSERT INTO `heces` (`id`, `color`, `consistencia`, `sangre`, `restos`, `entrocitos`, `levadura`, `mucus`, `leucositos`, `flora`, `protozoarios`, `quistes`, `larvas`, `metazueros`, `observaciones`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(2, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(3, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(4, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(5, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(6, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(7, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(8, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(9, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(10, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(11, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(12, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(13, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(14, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(15, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(16, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(17, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(18, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(19, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(20, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(21, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(22, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(23, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(24, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(25, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(26, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(27, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(28, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(29, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(30, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hemogramas`
--

CREATE TABLE IF NOT EXISTS `hemogramas` (
  `id` int(10) unsigned NOT NULL,
  `globulos` double(7,4) NOT NULL,
  `hematocritos` double(7,4) NOT NULL,
  `hemoglobina` double(7,4) NOT NULL,
  `volumen` double(7,4) NOT NULL,
  `concentracion` double(7,4) NOT NULL,
  `globular` double(7,4) NOT NULL,
  `blancos` double(7,4) NOT NULL,
  `basofitos` double(7,4) NOT NULL,
  `eosinofilos` double(7,4) NOT NULL,
  `neutrofilos` double(7,4) NOT NULL,
  `liniocitos` double(7,4) NOT NULL,
  `monocitos` double(7,4) NOT NULL,
  `plaquetas` double(7,4) NOT NULL,
  `observaciones` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `hemogramas`
--

INSERT INTO `hemogramas` (`id`, `globulos`, `hematocritos`, `hemoglobina`, `volumen`, `concentracion`, `globular`, `blancos`, `basofitos`, `eosinofilos`, `neutrofilos`, `liniocitos`, `monocitos`, `plaquetas`, `observaciones`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1.0000, 5.0000, 1.0000, 1.0000, 1.0000, 4.0000, 5.0000, 3.0000, 2.0000, 4.0000, 1.0000, 4.0000, 3.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(2, 5.0000, 3.0000, 3.0000, 1.0000, 5.0000, 3.0000, 5.0000, 5.0000, 1.0000, 3.0000, 2.0000, 2.0000, 1.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(3, 4.0000, 3.0000, 1.0000, 2.0000, 5.0000, 5.0000, 2.0000, 4.0000, 2.0000, 1.0000, 5.0000, 3.0000, 1.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(4, 2.0000, 2.0000, 3.0000, 3.0000, 3.0000, 4.0000, 5.0000, 4.0000, 5.0000, 3.0000, 4.0000, 4.0000, 4.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(5, 5.0000, 5.0000, 4.0000, 5.0000, 1.0000, 3.0000, 1.0000, 4.0000, 2.0000, 5.0000, 5.0000, 5.0000, 4.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(6, 4.0000, 1.0000, 4.0000, 2.0000, 3.0000, 1.0000, 3.0000, 4.0000, 1.0000, 1.0000, 1.0000, 4.0000, 2.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(7, 1.0000, 5.0000, 5.0000, 1.0000, 3.0000, 3.0000, 5.0000, 5.0000, 2.0000, 2.0000, 1.0000, 4.0000, 3.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(8, 5.0000, 4.0000, 3.0000, 4.0000, 2.0000, 2.0000, 3.0000, 5.0000, 3.0000, 3.0000, 5.0000, 3.0000, 1.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(9, 5.0000, 4.0000, 4.0000, 1.0000, 3.0000, 3.0000, 5.0000, 1.0000, 5.0000, 3.0000, 1.0000, 3.0000, 5.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(10, 3.0000, 2.0000, 4.0000, 2.0000, 3.0000, 1.0000, 3.0000, 2.0000, 3.0000, 1.0000, 3.0000, 4.0000, 4.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(11, 3.0000, 1.0000, 3.0000, 5.0000, 2.0000, 5.0000, 3.0000, 2.0000, 4.0000, 3.0000, 1.0000, 2.0000, 4.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(12, 4.0000, 1.0000, 4.0000, 2.0000, 4.0000, 1.0000, 2.0000, 4.0000, 4.0000, 2.0000, 4.0000, 4.0000, 2.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(13, 3.0000, 5.0000, 2.0000, 3.0000, 3.0000, 2.0000, 2.0000, 3.0000, 3.0000, 3.0000, 4.0000, 2.0000, 5.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(14, 1.0000, 1.0000, 3.0000, 3.0000, 4.0000, 3.0000, 2.0000, 5.0000, 4.0000, 3.0000, 4.0000, 4.0000, 3.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(15, 3.0000, 3.0000, 3.0000, 4.0000, 5.0000, 1.0000, 2.0000, 1.0000, 4.0000, 4.0000, 4.0000, 4.0000, 3.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(16, 2.0000, 4.0000, 4.0000, 5.0000, 1.0000, 1.0000, 3.0000, 3.0000, 2.0000, 1.0000, 2.0000, 2.0000, 5.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(17, 4.0000, 4.0000, 2.0000, 2.0000, 2.0000, 5.0000, 1.0000, 3.0000, 1.0000, 5.0000, 4.0000, 2.0000, 4.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(18, 2.0000, 4.0000, 3.0000, 3.0000, 2.0000, 2.0000, 3.0000, 3.0000, 4.0000, 3.0000, 4.0000, 4.0000, 3.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(19, 2.0000, 5.0000, 2.0000, 2.0000, 3.0000, 1.0000, 2.0000, 1.0000, 1.0000, 5.0000, 1.0000, 1.0000, 3.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(20, 3.0000, 1.0000, 4.0000, 3.0000, 4.0000, 3.0000, 4.0000, 4.0000, 2.0000, 1.0000, 3.0000, 2.0000, 4.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(21, 2.0000, 4.0000, 1.0000, 5.0000, 2.0000, 4.0000, 5.0000, 1.0000, 4.0000, 2.0000, 3.0000, 1.0000, 3.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(22, 5.0000, 1.0000, 4.0000, 3.0000, 3.0000, 2.0000, 2.0000, 1.0000, 2.0000, 5.0000, 1.0000, 5.0000, 1.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(23, 4.0000, 2.0000, 5.0000, 3.0000, 5.0000, 1.0000, 5.0000, 2.0000, 4.0000, 1.0000, 1.0000, 2.0000, 2.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(24, 1.0000, 1.0000, 5.0000, 3.0000, 1.0000, 5.0000, 4.0000, 1.0000, 3.0000, 4.0000, 5.0000, 2.0000, 1.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(25, 1.0000, 1.0000, 3.0000, 2.0000, 3.0000, 1.0000, 1.0000, 1.0000, 1.0000, 4.0000, 4.0000, 3.0000, 2.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(26, 2.0000, 4.0000, 1.0000, 3.0000, 1.0000, 1.0000, 4.0000, 1.0000, 2.0000, 3.0000, 2.0000, 3.0000, 4.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(27, 3.0000, 5.0000, 2.0000, 5.0000, 2.0000, 3.0000, 4.0000, 1.0000, 3.0000, 4.0000, 5.0000, 3.0000, 1.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(28, 3.0000, 1.0000, 1.0000, 1.0000, 2.0000, 2.0000, 4.0000, 1.0000, 5.0000, 3.0000, 4.0000, 2.0000, 1.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(29, 1.0000, 5.0000, 1.0000, 5.0000, 1.0000, 3.0000, 1.0000, 2.0000, 3.0000, 4.0000, 1.0000, 1.0000, 2.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(30, 4.0000, 1.0000, 3.0000, 4.0000, 1.0000, 2.0000, 3.0000, 3.0000, 4.0000, 4.0000, 2.0000, 3.0000, 4.0000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_08_06_222628_create_orinas_table', 1),
('2015_08_06_234601_create_diversos_table', 1),
('2015_08_07_000102_create_hemogramas_table', 1),
('2015_08_07_002147_create_heces_table', 1),
('2015_08_07_184448_create_quimicas_table', 1),
('2015_08_07_185414_create_examenes_table', 1),
('2015_08_07_185931_create_examen_valores_table', 1),
('2015_08_08_002058_create_pacientes_table', 1),
('2015_08_08_003637_create_paciente_analisis_table', 1),
('2015_08_15_012847_create_quimica_resultados_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orinas`
--

CREATE TABLE IF NOT EXISTS `orinas` (
  `id` int(10) unsigned NOT NULL,
  `color` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `aspecto` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dencidad` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `esterasa` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nitritos` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `reaccion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `proteinas` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `glucosa` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cetonicos` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `urobitmogeno` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bilirubina` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sangre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bacterias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `leucocitos` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hematies` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cilindros` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cristales` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `celulas` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `otros` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orinas`
--

INSERT INTO `orinas` (`id`, `color`, `aspecto`, `dencidad`, `esterasa`, `nitritos`, `reaccion`, `proteinas`, `glucosa`, `cetonicos`, `urobitmogeno`, `bilirubina`, `sangre`, `bacterias`, `leucocitos`, `hematies`, `cilindros`, `cristales`, `celulas`, `otros`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(2, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(3, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(4, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(5, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(6, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(7, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(8, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(9, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(10, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(11, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(12, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(13, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(14, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(15, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(16, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(17, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(18, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(19, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(20, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(21, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(22, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(23, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(24, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(25, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(26, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(27, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(28, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(29, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36'),
(30, 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio, modi!', NULL, '2015-08-20 22:57:36', '2015-08-20 22:57:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE IF NOT EXISTS `pacientes` (
  `id` int(10) unsigned NOT NULL,
  `nombre` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `detalle_edad` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `nombre`, `edad`, `detalle_edad`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Orrin Schmidt', 45, 'Años', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(2, 'Prof. Nash Haag', 45, 'Años', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(3, 'Prof. Juanita Wiegand', 24, 'Años', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(4, 'Noel Purdy', 34, 'Años', NULL, '2015-08-20 22:57:33', '2015-08-20 22:57:33'),
(5, 'Tamia Wisozk', 36, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(6, 'Mr. Cleveland Littel Jr.', 13, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(7, 'Maria Ruecker', 5, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(8, 'Ms. Lydia Schinner', 36, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(9, 'Kristofer Lemke I', 34, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(10, 'Mr. Gustave Dare Jr.', 14, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(11, 'Hilda Heidenreich V', 30, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(12, 'Ellis Weimann', 12, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(13, 'Melba Gottlieb', 49, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(14, 'Clemmie Hauck', 3, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(15, 'Maia Ondricka II', 20, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(16, 'Elouise Rogahn', 12, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(17, 'Keenan Gerlach', 50, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(18, 'Maybelle Willms', 9, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(19, 'Sallie Heaney', 47, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(20, 'Hayley Fay DDS', 48, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(21, 'Orin Marks', 3, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(22, 'Dr. Wendy Wiza I', 20, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(23, 'Bartholome Willms', 41, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(24, 'Mr. Rafael Spinka IV', 41, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(25, 'Talon Runte', 4, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(26, 'Mrs. Rosalyn Kautzer', 1, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(27, 'Deven Lynch', 27, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(28, 'Prof. Hoyt Kirlin PhD', 2, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(29, 'Mr. Griffin Cartwright III', 1, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(30, 'Verla Pfeffer', 41, 'Años', NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente_analisis`
--

CREATE TABLE IF NOT EXISTS `paciente_analisis` (
  `id` int(10) unsigned NOT NULL,
  `paciente_id` int(11) NOT NULL,
  `medico` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `analisis` enum('Orina','Heces','Hemograma','Diversos','Quimica') COLLATE utf8_unicode_ci NOT NULL,
  `analisis_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `paciente_analisis`
--

INSERT INTO `paciente_analisis` (`id`, `paciente_id`, `medico`, `analisis`, `analisis_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Blaise Kreiger', 'Heces', 10, NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(2, 18, 'Justen Fahey', 'Diversos', 7, NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(3, 23, 'Mr. Emmanuel Larson', 'Hemograma', 4, NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(4, 6, 'Dr. Burley Heidenreich I', 'Orina', 15, NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(5, 19, 'Urban Considine', 'Quimica', 6, NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(6, 18, 'Dr. Dasia Littel PhD', 'Heces', 15, NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(7, 5, 'Annetta Gusikowski', 'Heces', 10, NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(8, 20, 'Mrs. Alverta Yundt', 'Diversos', 6, NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(9, 7, 'Myah O''Keefe', 'Quimica', 4, NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(10, 21, 'Norberto Borer', 'Heces', 1, NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(11, 7, 'Jalon Rath', 'Orina', 1, NULL, '2015-08-20 22:57:34', '2015-08-20 22:57:34'),
(12, 17, 'Dovie Jenkins', 'Quimica', 8, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(13, 12, 'Ricardo Dietrich', 'Quimica', 6, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(14, 18, 'Dr. Cielo Rippin', 'Quimica', 5, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(15, 15, 'Mr. Justen Kuvalis', 'Orina', 5, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(16, 14, 'Nyasia Hagenes', 'Orina', 6, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(17, 4, 'Lue Zulauf DDS', 'Hemograma', 8, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(18, 12, 'Rosamond Lowe', 'Diversos', 14, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(19, 10, 'Bulah Wolff', 'Orina', 8, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(20, 14, 'Tillman Reynolds', 'Hemograma', 4, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(21, 11, 'Mrs. Kariane Beahan MD', 'Hemograma', 5, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(22, 16, 'Aditya Quigley', 'Orina', 7, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(23, 10, 'Adell Hirthe', 'Heces', 8, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(24, 12, 'Prof. Richmond Simonis III', 'Hemograma', 4, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(25, 29, 'Emelie Grimes', 'Orina', 1, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(26, 24, 'Melyna Wolf', 'Diversos', 7, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(27, 29, 'Kody Rath', 'Quimica', 14, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(28, 30, 'Trever McCullough Sr.', 'Heces', 4, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(29, 7, 'Dr. Laverna Ullrich', 'Orina', 3, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35'),
(30, 16, 'Berniece Green', 'Orina', 2, NULL, '2015-08-20 22:57:35', '2015-08-20 22:57:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quimicas`
--

CREATE TABLE IF NOT EXISTS `quimicas` (
  `id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `quimicas`
--

INSERT INTO `quimicas` (`id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(2, NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(3, NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(4, NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(5, NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(6, NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(7, NULL, '2015-08-20 22:57:37', '2015-08-20 22:57:37'),
(8, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(9, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(10, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(11, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(12, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(13, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(14, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(15, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(16, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(17, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(18, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(19, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(20, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(21, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(22, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(23, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(24, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(25, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(26, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(27, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(28, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(29, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(30, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quimica_resultados`
--

CREATE TABLE IF NOT EXISTS `quimica_resultados` (
  `id` int(10) unsigned NOT NULL,
  `resultado` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `examen` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `valor` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `quimica_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `quimica_resultados`
--

INSERT INTO `quimica_resultados` (`id`, `resultado`, `examen`, `valor`, `quimica_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 12, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(2, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 5, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(3, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 6, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(4, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 19, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(5, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 28, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(6, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 15, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(7, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 16, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(8, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 13, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(9, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 6, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(10, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 11, NULL, '2015-08-20 22:57:38', '2015-08-20 22:57:38'),
(11, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 22, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(12, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 21, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(13, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 25, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(14, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 27, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(15, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 28, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(16, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 20, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(17, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 12, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(18, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 4, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(19, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 14, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(20, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 1, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(21, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 17, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(22, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 23, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(23, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 24, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(24, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 24, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(25, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 6, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(26, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 29, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(27, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 4, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(28, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 2, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(29, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 5, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39'),
(30, 'Lorem ipsum dolor sit.', 'Lorem ipsum.', 'Lorem ipsum.', 25, NULL, '2015-08-20 22:57:39', '2015-08-20 22:57:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Laboratorio Clinico Central', 'lab@clinica.com', '$2y$10$pt1/DAVOd29NhwRkQNzH0e4yoKLveZwQk8HDXgKFRc2Tv6nB.q0TG', 'one.jpg', NULL, '2015-08-20 22:55:37', '2015-08-20 22:55:37');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `diversos`
--
ALTER TABLE `diversos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `examenes`
--
ALTER TABLE `examenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `examen_valores`
--
ALTER TABLE `examen_valores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `heces`
--
ALTER TABLE `heces`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hemogramas`
--
ALTER TABLE `hemogramas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orinas`
--
ALTER TABLE `orinas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paciente_analisis`
--
ALTER TABLE `paciente_analisis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `quimicas`
--
ALTER TABLE `quimicas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `quimica_resultados`
--
ALTER TABLE `quimica_resultados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `diversos`
--
ALTER TABLE `diversos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `examenes`
--
ALTER TABLE `examenes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `examen_valores`
--
ALTER TABLE `examen_valores`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT de la tabla `heces`
--
ALTER TABLE `heces`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `hemogramas`
--
ALTER TABLE `hemogramas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `orinas`
--
ALTER TABLE `orinas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `paciente_analisis`
--
ALTER TABLE `paciente_analisis`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `quimicas`
--
ALTER TABLE `quimicas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `quimica_resultados`
--
ALTER TABLE `quimica_resultados`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
