-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-09-2015 a las 20:22:53
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
  `muestra` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `examen` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultado` text COLLATE utf8_unicode_ci,
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
(1, 'Glucosa', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(2, 'Glucosa pos pandrial', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(3, 'Triglicéridos', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(4, 'Colesterol', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(5, 'Colesterol HDL', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(6, 'Colesterol LDL', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(7, 'Creatinina', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(8, 'Acido Úrico', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(9, 'Nitrógeno Ureico', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(10, 'Urea', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(11, 'TGP / ALT', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(12, 'TGO / AST', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(13, 'Proteínas totales', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(14, 'Albumina', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(15, 'Globulina', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(16, 'Relación  A/G', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(17, 'Bilirrubina total', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(18, 'Bilirrubina directa', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(19, 'Creatinina fosfoquinasa', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(20, 'Fosfatasa alcalina', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(21, 'Fosfatasa alcalina ( Barry )', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(22, 'Fosfatasa acida', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(23, 'Proteína en orina 24/h', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(24, 'Sodio en sangre', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(25, 'Calcio en sangre', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(26, 'Potasio en sangre', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28'),
(27, 'Fosforo en sangre', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(28, 'Cloro en sangre', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(29, 'Hemoglobina glicosilada', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(30, 'Potasio en sangre – barry', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(31, 'Proteína en orina 24/h', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(32, 'Magnesio', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(33, 'Tolerancia a la glucosa  5/h ', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(34, 'Amilasa', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(35, 'Lipasa', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(36, 'PSA', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(37, 'Tiempo de protrombina  TP', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(38, 'T.de tromboplastina parcial TTp', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(39, 'Tiempo de trombina TT', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(40, 'Velocidad de eritrocediment', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(41, 'Tiempo de sangramiento', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(42, 'Tiempo de coagulación', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(43, 'T3, ( Triyodotironina )', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(44, 'T4, ( Tiroxina )', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(45, 'TSH', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(46, 'Estreptolicina o ( ASO )- ultra)', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(47, 'Estreptolicina o ( ASO ) barry', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(48, 'Alfa feto proteína ( AFP )', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(49, '( En embarazó )', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(50, 'Proteína c reactiva (PCR) ultra', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(51, 'Proteína C reactiva (PCR) Barry', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(52, 'Factor reumatoideo', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(53, 'Microalbumina en orina', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(54, 'Anticuerpos para dengue IgM', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(55, 'Anticuerpos para dengue IgG', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(56, 'Antígenos febriles', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(57, 'Ca 19 – 9 Elisa ( Cuantitativa )', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(58, 'Toxoplasmosis IgG ( barry )', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(59, 'Toxoplasmosis IgM (barry )', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(60, 'Gama glutamil transferasa (GG)', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(61, 'Factor reumatoideo ( FR )', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(62, 'Prolactina', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(63, 'Insulina en ayunas', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(64, 'Anticoagulante lupico ', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(65, 'Cardiolipina  IgG', NULL, '2015-09-12 00:22:29', '2015-09-12 00:22:29'),
(66, 'Cardiolipina  IgM', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(67, 'Fibrinogeno', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(68, 'Concentracion de crea', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(69, 'Depuracion de crea 24 /h', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(70, 'IgE, Total', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(71, 'Ac. Antinucleares latex  ( ANA )', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(72, 'Ac. Anticitrolinados IgG', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(73, 'Helicobacter pylori IgM, IgG.', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(74, 'Cortisol,  AM', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(75, 'Microalbumina ( Orina )', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(76, 'Hierro  serico', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(77, 'Alfafetoproteinas', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(78, 'Gonadotropina corionica cuant.', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(79, 'Peptido Natriuretico ( BNP )', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(80, 'Hb.Electroforesis', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30');

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
(1, 1, '70 – 105 mg /dl', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(2, 2, 'Hasta 140 mg /dl ', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(3, 3, 'Hasta 150 mg /dl ', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(4, 4, 'Hasta 200 mg /dl', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(5, 5, 'No riesgo mayor de 60 mg /dl  ', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(6, 5, 'Riesgo menor de 35 mg /dl ', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(7, 6, 'Menor de 150 mg /dl ', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(8, 7, 'Hombres 0.7  - 1.3 mg /dl', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(9, 7, 'Mujeres 0.6 – 1.1', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(10, 8, '2.4 – 7.0 mg /dl ', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(11, 9, '8 – 23 mg /dl ', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(12, 10, '17 – 49 mg /dl ', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(13, 11, 'Hombres menor de 40 UI', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(14, 11, 'Mujeres menor de 32 UI', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(15, 12, '8 – 33 UI', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(16, 13, '5.8 – 8.8 /dl', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(17, 13, 'Neonatos ', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(18, 13, 'Hasta 1 semana 4.4 – 7.14 6  g/dl', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(19, 14, '3.4 – 5.0  g /dl', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(20, 15, '2.6 – 3.1 g /dl', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(21, 16, '1.1 – 3.1 g /dl ', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(22, 17, 'Hasta 1.20', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(23, 18, 'Hasta  0.50', NULL, '2015-09-12 00:22:30', '2015-09-12 00:22:30'),
(24, 19, 'Hasta 170 U / L', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(25, 20, '40 – 129 U/L', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(26, 21, 'Hombres < - 270 U/I', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(27, 21, 'Mujeres < - 240 U/I', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(28, 22, 'Hombres <  5.4 – U/L', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(29, 22, 'Mujeres <  4.2 – U/L', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(30, 23, '10 – 150 mg / 24 horas', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(31, 24, 'General  135 – 155 mmol /L', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(32, 25, 'Recién nacido 8 – 13 mg /dl', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(33, 25, 'Niño 10 – 12 mg /dl ', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(34, 25, 'Adulto  8.5 – 10.5 mg /dl', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(35, 26, '3.6 – 5.5 mmol /L', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(36, 27, 'Adultos 2.5 – 5.0 mg /dl', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(37, 27, 'Neonatos 5  - 9.6 mg /dl', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(38, 27, 'Niños hasta 1 año  5 – 10 mg /dl ', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(39, 27, 'Mayor de 60 años 3.4 – 6.2 mg /dl ', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(40, 28, '95 – 115 mmol/L', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(41, 29, 'Paciente  no diabético 4.2 - 6.2%', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(42, 29, 'Buen control 5.5 – 6.8 %', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(43, 29, 'Control regular 6.8 – 7.6 %', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(44, 29, 'Control pobre mayor de > -7.6 %', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(45, 30, 'Suero 3.6 – 5.5 mmol/L', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(46, 30, 'Plasma 4.0 – 4.8 mmoI/L', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(47, 31, 'Menor de 100 mg /24horas', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(48, 31, 'M. embarazadas menor de 150 mg/24 h.', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(49, 32, 'General 1.6 – 2.5 mg /dl', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(50, 33, 'En ayunas  70 – 105 mg /dl ', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(51, 33, '1- menor de 190 mg /dl ', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(52, 33, '2- menor de 160 mg /dl ', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(53, 33, '3- menor de 140 mg /dl ', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(54, 33, '4- menor de 120 mg /dl', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(55, 34, 'Suero 25 – 125 U/L', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(56, 34, 'Orina 1 – 17 U/L', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(57, 35, 'Menor o igual  - 66 U/L ', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(58, 36, 'Normal o bajo riesgo 0 - 4 ng/mL', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(59, 36, 'Mediano riesgo 4-10 ng/mL', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(60, 36, 'Alto riesgo mayor. 10 ng/mL', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(61, 37, '10 – 14 Segundos ( 10 – 16 segundos )', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(62, 38, '20 – 35 Segundos ( 20 – 35 segundos )', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(63, 39, '16  - 23 segundos ', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(64, 40, 'Mujeres 0 – 15 mm /h', NULL, '2015-09-12 00:22:31', '2015-09-12 00:22:31'),
(65, 40, 'Hombres 0 – 7 mm /h', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(66, 41, '1 – 4 minutos', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(67, 42, '5 – 10 minutos', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(68, 43, '0.8 – 2.0 ng /ml', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(69, 44, '5.0 – 13.0 ug /dl', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(70, 45, '0.4 – 7.0  uUI /ml', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(71, 46, 'Menor o Igual a 200 UI/L', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(72, 47, 'Negativo menor de 200 mg /dl ', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(73, 47, 'Positivo mayor o igual 200 mg/dl', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(74, 48, '0.5 – 5.8 UI /mL', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(75, 49, '14 semana  23.2', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(76, 49, '15 semana  25.6 ', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(77, 49, '17 semana  33.5', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(78, 49, '18 semana  40.1', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(79, 49, '19 semana  45.4', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(80, 50, 'Menor o igual  6 - 0 mg /dl', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(81, 51, '0.02 – 1.35 mg /dl', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(82, 52, 'Hasta 200 UI / ml', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(83, 53, '0.8 – 11.2 mg /dl ', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(84, 54, 'No reactivo: 0.0 – 0.300', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(85, 54, 'Débil reactivo: 0.5 <- 1.0 ', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(86, 54, 'Reactivo: mayor de 1.0', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(87, 55, 'No reactivo: 0.0 – 0.300', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(88, 55, 'Débil reactivo: 0.5 <- 1.0', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(89, 55, 'Reactivo: mayor de 1.0', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(90, 56, 'Salmonella  typhi   O', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(91, 56, 'Salmonella  typhi   H', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(92, 56, 'Salmonella  paratyphi   a', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(93, 56, 'Salmonella  paratyphi   b', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(94, 56, 'Brucella  abortus', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(95, 56, 'Proteus  O X 19 ', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(96, 57, 'Hasta 35.0 – U/ml', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(97, 58, 'Negativo < - 0.90 UI /ml', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(98, 58, 'Positivo > - 1.00 UI/ml', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(99, 59, 'Negativo < - 0.90 ', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(100, 59, 'Positivo > - 1.00 ', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(101, 60, 'Mujeres:  hasta  39 U/L', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(102, 60, 'Hombres: hasta  66 U/L', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(103, 61, 'Menor o igual 12 U/mL', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(104, 62, 'Mujeres 1 – 25 ng /ml', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(105, 62, 'Hombres 1 – 20 ng /ml ', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(106, 62, '3º trimestre de embarazo 95.0 – 473ng/dl', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(107, 63, 'Niños menores  12 años menor de 10uIu/ml', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(108, 63, 'Adultos  7 – 9.0uIu /ml', NULL, '2015-09-12 00:22:32', '2015-09-12 00:22:32'),
(109, 63, 'Paciente diabético   7 – 25uIu /ml', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(110, 64, 'Negativo ', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(111, 65, 'Negativo  Menor de 10 GPL', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(112, 66, 'Negativo  Menor de  5.0 MPL', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(113, 67, '2.0 – 4.0 g /L', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(114, 68, '600 – 2000 ml /minutos', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(115, 69, 'Mujeres 88 – 128 ml /minutos ', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(116, 69, 'Hombres  97 – 137 ml /minutos ', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(117, 70, 'Hasta 150 I  u /mL', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(118, 71, 'Negativa', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(119, 72, 'Negativo  Menor  a 17 U /mL', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(120, 72, 'Positivo Mayor o igual a 17 U /mL', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(121, 73, 'Negativo menor de 0.90', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(122, 73, 'Positivo mayor de 1.0', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(123, 74, 'Adultos 5 – 23  ug /dL', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(124, 74, 'Niño 3 – 21 ug /dL', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(125, 75, 'Adultos menor de 20 mg /L', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(126, 75, 'Niños de 3 a 5 años   menor de 20 mg /L', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(127, 76, '50 – 170 ug /dL', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(128, 77, 'Hasta 8 – 5 ng /mL', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(129, 78, '0 – 5 mIU /mL', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(130, 78, '1ª  Semana 5 – 50 mIU /mL', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(131, 78, '10ª  Semana  100,000 – 200,000  mIU /mL', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(132, 79, 'Menor de 125 pg /mL', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(133, 80, 'Hb A2-  0.00 – 3.50', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(134, 80, 'Hb F - 0.00 – 1.00', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33'),
(135, 80, 'Hb A – 96.00  - 99.0', NULL, '2015-09-12 00:22:33', '2015-09-12 00:22:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `heces`
--

CREATE TABLE IF NOT EXISTS `heces` (
  `id` int(10) unsigned NOT NULL,
  `color` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `consistencia` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sangre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restos` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entrocitos` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `levadura` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mucus` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leucositos` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flora` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `protozoarios` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quistes` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `larvas` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metazueros` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observaciones` text COLLATE utf8_unicode_ci,
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
  `globulos` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hematocritos` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hemoglobina` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `volumen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `concentracion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `globular` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blancos` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basofitos` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eosinofilos` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `neutrofilos` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `liniocitos` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monocitos` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plaquetas` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `nombre` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `detalle_edad` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `medico` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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
(1, 'Laboratorio Clinico Central', 'lab@clinica.com', '$2y$10$Ofho6YZD5QLQUW.5sRTQse6UXzJQNRIuxzBF8NyR//DnnRVRBFtV.', 'one.jpg', NULL, '2015-09-12 00:22:28', '2015-09-12 00:22:28');

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
