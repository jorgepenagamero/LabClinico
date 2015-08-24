-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-08-2015 a las 05:15:26
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'Laboratorio Clinico Central', 'lab@clinica.com', '$2y$10$V4I87vI8429BEI02Tg4OeO9/xXaRY8kG3XL2v9Neql8SOuHtz8vQq', 'one.jpg', NULL, '2015-08-24 09:14:47', '2015-08-24 09:14:47');

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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `examen_valores`
--
ALTER TABLE `examen_valores`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
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
