-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-08-2015 a las 06:05:59
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
  `resultado` text COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `examenes`
--

INSERT INTO `examenes` (`id`, `nombre`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Glucosa', NULL, '2015-08-31 10:05:10', '2015-08-31 10:05:10'),
(2, 'Glucosa pos pandrial', NULL, '2015-08-31 10:05:10', '2015-08-31 10:05:10'),
(3, 'Triglicéridos', NULL, '2015-08-31 10:05:11', '2015-08-31 10:05:11'),
(4, 'Colesterol', NULL, '2015-08-31 10:05:11', '2015-08-31 10:05:11'),
(5, 'Colesterol HDL', NULL, '2015-08-31 10:05:11', '2015-08-31 10:05:11'),
(6, 'Colesterol LDL', NULL, '2015-08-31 10:05:11', '2015-08-31 10:05:11'),
(7, 'Creatinina', NULL, '2015-08-31 10:05:11', '2015-08-31 10:05:11'),
(8, 'Acido Úrico', NULL, '2015-08-31 10:05:11', '2015-08-31 10:05:11'),
(9, 'Nitrógeno Ureico', NULL, '2015-08-31 10:05:11', '2015-08-31 10:05:11'),
(10, 'Urea', NULL, '2015-08-31 10:05:11', '2015-08-31 10:05:11'),
(11, 'TGP / ALT', NULL, '2015-08-31 10:05:11', '2015-08-31 10:05:11'),
(12, 'TGO / AST', NULL, '2015-08-31 10:05:11', '2015-08-31 10:05:11'),
(13, 'Proteínas totales', NULL, '2015-08-31 10:05:11', '2015-08-31 10:05:11'),
(14, 'Albumina', NULL, '2015-08-31 10:05:11', '2015-08-31 10:05:11'),
(15, 'Globulina', NULL, '2015-08-31 10:05:11', '2015-08-31 10:05:11'),
(16, 'Relación  A/G', NULL, '2015-08-31 10:05:12', '2015-08-31 10:05:12'),
(17, 'Bilirrubina total', NULL, '2015-08-31 10:05:12', '2015-08-31 10:05:12'),
(18, 'Bilirrubina directa', NULL, '2015-08-31 10:05:12', '2015-08-31 10:05:12'),
(19, 'Creatinina fosfoquinasa', NULL, '2015-08-31 10:05:12', '2015-08-31 10:05:12'),
(20, 'Fosfatasa alcalina', NULL, '2015-08-31 10:05:12', '2015-08-31 10:05:12'),
(21, 'Fosfatasa alcalina ( Barry )', NULL, '2015-08-31 10:05:12', '2015-08-31 10:05:12'),
(22, 'Fosfatasa acida', NULL, '2015-08-31 10:05:12', '2015-08-31 10:05:12'),
(23, 'Proteína en orina 24/h', NULL, '2015-08-31 10:05:12', '2015-08-31 10:05:12'),
(24, 'Sodio en sangre', NULL, '2015-08-31 10:05:12', '2015-08-31 10:05:12'),
(25, 'Calcio en sangre', NULL, '2015-08-31 10:05:12', '2015-08-31 10:05:12'),
(26, 'Potasio en sangre', NULL, '2015-08-31 10:05:12', '2015-08-31 10:05:12'),
(27, 'Fosforo en sangre', NULL, '2015-08-31 10:05:12', '2015-08-31 10:05:12'),
(28, 'Cloro en sangre', NULL, '2015-08-31 10:05:12', '2015-08-31 10:05:12'),
(29, 'Hemoglobina glicosilada', NULL, '2015-08-31 10:05:12', '2015-08-31 10:05:12'),
(30, 'Potasio en sangre – barry', NULL, '2015-08-31 10:05:12', '2015-08-31 10:05:12'),
(31, 'Proteína en orina 24/h', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(32, 'Magnesio', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(33, 'Tolerancia a la glucosa  5/h ', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(34, 'Amilasa', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(35, 'Lipasa', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(36, 'PSA', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(37, 'Tiempo de protrombina  TP', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(38, 'T.de tromboplastina parcial TTp', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(39, 'Tiempo de trombina TT', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(40, 'Velocidad de eritrocediment', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(41, 'Tiempo de sangramiento', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(42, 'Tiempo de coagulación', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(43, 'T3, ( Triyodotironina )', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(44, 'T4, ( Tiroxina )', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(45, 'TSH', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(46, 'Estreptolicina o ( ASO )- ultra)', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(47, 'Estreptolicina o ( ASO ) barry', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(48, 'Alfa feto proteína ( AFP )', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(49, '( En embarazó )', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(50, 'Proteína c reactiva (PCR) ultra', NULL, '2015-08-31 10:05:13', '2015-08-31 10:05:13'),
(51, 'Proteína C reactiva (PCR) Barry', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(52, 'Factor reumatoideo', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(53, 'Microalbumina en orina', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(54, 'Anticuerpos para dengue IgM', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(55, 'Anticuerpos para dengue IgG', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(56, 'Antígenos febriles', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(57, 'Ca 19 – 9 Elisa ( Cuantitativa )', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(58, 'Toxoplasmosis IgG ( barry )', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(59, 'Toxoplasmosis IgM (barry )', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(60, 'Gama glutamil transferasa (GG)', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(61, 'Factor reumatoideo ( FR )', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(62, 'Prolactina', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(63, 'Insulina en ayunas', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(64, 'Anticoagulante lupico ', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(65, 'Cardiolipina  IgG', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(66, 'Cardiolipina  IgM', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(67, 'Fibrinogeno', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(68, 'Concentracion de crea', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(69, 'Depuracion de crea 24 /h', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(70, 'IgE, Total', NULL, '2015-08-31 10:05:14', '2015-08-31 10:05:14'),
(71, 'Ac. Antinucleares latex  ( ANA )', NULL, '2015-08-31 10:05:15', '2015-08-31 10:05:15'),
(72, 'Ac. Anticitrolinados IgG', NULL, '2015-08-31 10:05:15', '2015-08-31 10:05:15'),
(73, 'Helicobacter pylori IgM, IgG.', NULL, '2015-08-31 10:05:15', '2015-08-31 10:05:15'),
(74, 'Cortisol,  AM', NULL, '2015-08-31 10:05:15', '2015-08-31 10:05:15'),
(75, 'Microalbumina ( Orina )', NULL, '2015-08-31 10:05:15', '2015-08-31 10:05:15'),
(76, 'Hierro  serico', NULL, '2015-08-31 10:05:16', '2015-08-31 10:05:16'),
(77, 'Alfafetoproteinas', NULL, '2015-08-31 10:05:16', '2015-08-31 10:05:16'),
(78, 'Gonadotropina corionica cuant.', NULL, '2015-08-31 10:05:16', '2015-08-31 10:05:16'),
(79, 'Peptido Natriuretico ( BNP )', NULL, '2015-08-31 10:05:16', '2015-08-31 10:05:16'),
(80, 'Hb.Electroforesis', NULL, '2015-08-31 10:05:16', '2015-08-31 10:05:16');

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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `examen_valores`
--

INSERT INTO `examen_valores` (`id`, `examen_id`, `valor`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '70 – 105 mg /dl', NULL, '2015-08-31 10:05:16', '2015-08-31 10:05:16'),
(2, 2, 'Hasta 140 mg /dl ', NULL, '2015-08-31 10:05:16', '2015-08-31 10:05:16'),
(3, 3, 'Hasta 150 mg /dl ', NULL, '2015-08-31 10:05:17', '2015-08-31 10:05:17'),
(4, 4, 'Hasta 200 mg /dl', NULL, '2015-08-31 10:05:17', '2015-08-31 10:05:17'),
(5, 5, 'No riesgo mayor de 60 mg /dl  ', NULL, '2015-08-31 10:05:17', '2015-08-31 10:05:17'),
(6, 5, 'Riesgo menor de 35 mg /dl ', NULL, '2015-08-31 10:05:17', '2015-08-31 10:05:17'),
(7, 6, 'Menor de 150 mg /dl ', NULL, '2015-08-31 10:05:17', '2015-08-31 10:05:17'),
(8, 7, 'Hombres 0.7  - 1.3 mg /dl', NULL, '2015-08-31 10:05:17', '2015-08-31 10:05:17'),
(9, 7, 'Mujeres 0.6 – 1.1', NULL, '2015-08-31 10:05:17', '2015-08-31 10:05:17'),
(10, 8, '2.4 – 7.0 mg /dl ', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(11, 9, '8 – 23 mg /dl ', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(12, 10, '17 – 49 mg /dl ', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(13, 11, 'Hombres menor de 40 UI', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(14, 11, 'Mujeres menor de 32 UI', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(15, 12, '8 – 33 UI', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(16, 13, '5.8 – 8.8 /dl', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(17, 13, 'Neonatos ', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(18, 13, 'Hasta 1 semana 4.4 – 7.14 6  g/dl', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(19, 14, '3.4 – 5.0  g /dl', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(20, 15, '2.6 – 3.1 g /dl', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(21, 16, '1.1 – 3.1 g /dl ', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(22, 17, 'Hasta 1.20', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(23, 18, 'Hasta  0.50', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(24, 19, 'Hasta 170 U / L', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(25, 20, '40 – 129 U/L', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(26, 21, 'Hombres < - 270 U/I', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(27, 21, 'Mujeres < - 240 U/I', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(28, 22, 'Hombres <  5.4 – U/L', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(29, 22, 'Mujeres <  4.2 – U/L', NULL, '2015-08-31 10:05:18', '2015-08-31 10:05:18'),
(30, 23, '10 – 150 mg / 24 horas', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(31, 24, 'General  135 – 155 mmol /L', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(32, 25, 'Recién nacido 8 – 13 mg /dl', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(33, 25, 'Niño 10 – 12 mg /dl ', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(34, 25, 'Adulto  8.5 – 10.5 mg /dl', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(35, 26, '3.6 – 5.5 mmol /L', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(36, 27, 'Adultos 2.5 – 5.0 mg /dl', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(37, 27, 'Neonatos 5  - 9.6 mg /dl', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(38, 27, 'Niños hasta 1 año  5 – 10 mg /dl ', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(39, 27, 'Mayor de 60 años 3.4 – 6.2 mg /dl ', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(40, 28, '95 – 115 mmol/L', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(41, 29, 'Paciente  no diabético 4.2 - 6.2%', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(42, 29, 'Buen control 5.5 – 6.8 %', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(43, 29, 'Control regular 6.8 – 7.6 %', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(44, 29, 'Control pobre mayor de > -7.6 %', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(45, 30, 'Suero 3.6 – 5.5 mmol/L', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(46, 30, 'Plasma 4.0 – 4.8 mmoI/L', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(47, 31, 'Menor de 100 mg /24horas', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(48, 31, 'M. embarazadas menor de 150 mg/24 h.', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(49, 32, 'General 1.6 – 2.5 mg /dl', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(50, 33, 'En ayunas  70 – 105 mg /dl ', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(51, 33, '1- menor de 190 mg /dl ', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(52, 33, '2- menor de 160 mg /dl ', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(53, 33, '3- menor de 140 mg /dl ', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(54, 33, '4- menor de 120 mg /dl', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(55, 34, 'Suero 25 – 125 U/L', NULL, '2015-08-31 10:05:19', '2015-08-31 10:05:19'),
(56, 34, 'Orina 1 – 17 U/L', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(57, 35, 'Menor o igual  - 66 U/L ', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(58, 36, 'Normal o bajo riesgo 0 - 4 ng/mL', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(59, 36, 'Mediano riesgo 4-10 ng/mL', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(60, 36, 'Alto riesgo mayor. 10 ng/mL', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(61, 37, '10 – 14 Segundos ( 10 – 16 segundos )', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(62, 38, '20 – 35 Segundos ( 20 – 35 segundos )', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(63, 39, '16  - 23 segundos ', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(64, 40, 'Mujeres 0 – 15 mm /h', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(65, 40, 'Hombres 0 – 7 mm /h', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(66, 41, '1 – 4 minutos', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(67, 42, '5 – 10 minutos', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(68, 43, '0.8 – 2.0 ng /ml', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(69, 44, '5.0 – 13.0 ug /dl', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(70, 45, '0.4 – 7.0  uUI /ml', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(71, 46, 'Menor o Igual a 200 UI/L', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(72, 47, 'Negativo menor de 200 mg /dl ', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(73, 47, 'Positivo mayor o igual 200 mg/dl', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(74, 48, '0.5 – 5.8 UI /mL', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(75, 49, '14 semana  23.2', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(76, 49, '15 semana  25.6 ', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(77, 49, '17 semana  33.5', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(78, 49, '18 semana  40.1', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(79, 49, '19 semana  45.4', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(80, 50, 'Menor o igual  6 - 0 mg /dl', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(81, 51, '0.02 – 1.35 mg /dl', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(82, 52, 'Hasta 200 UI / ml', NULL, '2015-08-31 10:05:20', '2015-08-31 10:05:20'),
(83, 53, '0.8 – 11.2 mg /dl ', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(84, 54, 'No reactivo: 0.0 – 0.300', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(85, 54, 'Débil reactivo: 0.5 <- 1.0 ', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(86, 54, 'Reactivo: mayor de 1.0', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(87, 55, 'No reactivo: 0.0 – 0.300', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(88, 55, 'Débil reactivo: 0.5 <- 1.0', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(89, 55, 'Reactivo: mayor de 1.0', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(90, 56, 'Salmonella  typhi   O', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(91, 56, 'Salmonella  typhi   H', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(92, 56, 'Salmonella  paratyphi   a', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(93, 56, 'Salmonella  paratyphi   b', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(94, 56, 'Brucella  abortus', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(95, 56, 'Proteus  O X 19 ', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(96, 57, 'Hasta 35.0 – U/ml', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(97, 58, 'Negativo < - 0.90 UI /ml', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(98, 58, 'Positivo > - 1.00 UI/ml', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(99, 59, 'Negativo < - 0.90 ', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(100, 59, 'Positivo > - 1.00 ', NULL, '2015-08-31 10:05:21', '2015-08-31 10:05:21'),
(101, 60, 'Mujeres:  hasta  39 U/L', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(102, 60, 'Hombres: hasta  66 U/L', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(103, 61, 'Menor o igual 12 U/mL', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(104, 62, 'Mujeres 1 – 25 ng /ml', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(105, 62, 'Hombres 1 – 20 ng /ml ', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(106, 62, '3º trimestre de embarazo 95.0 – 473ng/dl', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(107, 63, 'Niños menores  12 años menor de 10uIu/ml', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(108, 63, 'Adultos  7 – 9.0uIu /ml', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(109, 63, 'Paciente diabético   7 – 25uIu /ml', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(110, 64, 'Negativo ', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(111, 65, 'Negativo  Menor de 10 GPL', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(112, 66, 'Negativo  Menor de  5.0 MPL', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(113, 67, '2.0 – 4.0 g /L', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(114, 68, '600 – 2000 ml /minutos', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(115, 69, 'Mujeres 88 – 128 ml /minutos ', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(116, 69, 'Hombres  97 – 137 ml /minutos ', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(117, 70, 'Hasta 150 I  u /mL', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(118, 71, 'Negativa', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(119, 72, 'Negativo  Menor  a 17 U /mL', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(120, 72, 'Positivo Mayor o igual a 17 U /mL', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(121, 73, 'Negativo menor de 0.90', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(122, 73, 'Positivo mayor de 1.0', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(123, 74, 'Adultos 5 – 23  ug /dL', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(124, 74, 'Niño 3 – 21 ug /dL', NULL, '2015-08-31 10:05:22', '2015-08-31 10:05:22'),
(125, 75, 'Adultos menor de 20 mg /L', NULL, '2015-08-31 10:05:23', '2015-08-31 10:05:23'),
(126, 75, 'Niños de 3 a 5 años   menor de 20 mg /L', NULL, '2015-08-31 10:05:23', '2015-08-31 10:05:23'),
(127, 76, '50 – 170 ug /dL', NULL, '2015-08-31 10:05:23', '2015-08-31 10:05:23'),
(128, 77, 'Hasta 8 – 5 ng /mL', NULL, '2015-08-31 10:05:23', '2015-08-31 10:05:23'),
(129, 78, '0 – 5 mIU /mL', NULL, '2015-08-31 10:05:23', '2015-08-31 10:05:23'),
(130, 78, '1ª  Semana 5 – 50 mIU /mL', NULL, '2015-08-31 10:05:23', '2015-08-31 10:05:23'),
(131, 78, '10ª  Semana  100,000 – 200,000  mIU /mL', NULL, '2015-08-31 10:05:23', '2015-08-31 10:05:23'),
(132, 79, 'Menor de 125 pg /mL', NULL, '2015-08-31 10:05:23', '2015-08-31 10:05:23'),
(133, 80, 'Hb,A2-  0.00 – 3.50', NULL, '2015-08-31 10:05:23', '2015-08-31 10:05:23'),
(134, 80, 'Hb,F - 0.00 – 1.00', NULL, '2015-08-31 10:05:24', '2015-08-31 10:05:24'),
(135, 80, 'Hb,A – 96.00  - 99.0', NULL, '2015-08-31 10:05:24', '2015-08-31 10:05:24');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'Laboratorio Clinico Central', 'lab@clinica.com', '$2y$10$BEDKkvqs6omeBKQZ37punue/2rqaBmSPOXiUIBjgFFX9waodNVz9y', 'one.jpg', NULL, '2015-08-31 10:05:10', '2015-08-31 10:05:10');

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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT de la tabla `examen_valores`
--
ALTER TABLE `examen_valores`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT de la tabla `heces`
--
ALTER TABLE `heces`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `hemogramas`
--
ALTER TABLE `hemogramas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `orinas`
--
ALTER TABLE `orinas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `paciente_analisis`
--
ALTER TABLE `paciente_analisis`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `quimicas`
--
ALTER TABLE `quimicas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `quimica_resultados`
--
ALTER TABLE `quimica_resultados`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
