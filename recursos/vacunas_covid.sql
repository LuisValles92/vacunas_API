-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-02-2021 a las 14:19:44
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vacunas_covid`
--

CREATE DATABASE vacunas_covid;
USE vacunas_covid;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ccaa`
--

CREATE TABLE `ccaa` (
  `codigo_ccaa` int(11) NOT NULL,
  `nombre_ccaa` varchar(45) NOT NULL,
  `dosis_entregadas_pfizer` int(11) NOT NULL,
  `dosis_entregadas_moderna` int(11) NOT NULL,
  `dosis_administradas` int(11) NOT NULL,
  `numero_personas_pauta_completa` int(11) NOT NULL,
  `fecha_registro_ultima_vacuna` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ccaa`
--

INSERT INTO `ccaa` (`codigo_ccaa`, `nombre_ccaa`, `dosis_entregadas_pfizer`, `dosis_entregadas_moderna`, `dosis_administradas`, `numero_personas_pauta_completa`, `fecha_registro_ultima_vacuna`) VALUES
(1, 'Andalucía', 244620, 6800, 194101, 15193, '2021-01-20'),
(2, 'Aragón', 41265, 1200, 38170, 1731, '2021-01-21'),
(3, 'Asturias', 44195, 1200, 40011, 5664, '2021-01-21'),
(4, 'Baleares', 22590, 600, 18105, 1514, '2021-01-20'),
(5, 'Canarias', 46185, 1300, 45482, 1744, '2021-01-20'),
(6, 'Cantabria', 20625, 500, 19980, 241, '2021-01-20'),
(7, 'Castilla y León', 93315, 2500, 82162, 5296, '2021-01-20'),
(8, 'Castilla La Macha', 61875, 1700, 53880, 1202, '2021-01-20'),
(9, 'Cataluña', 211220, 5800, 168054, 2598, '2021-01-20'),
(10, 'Comunidad Valenciana', 109000, 2900, 101437, 2956, '2021-01-20'),
(11, 'Extremadura', 39275, 1000, 32039, 638, '2021-01-20'),
(12, 'Galicia', 66805, 1800, 62011, 3861, '2021-01-20'),
(13, 'Madrid', 171915, 4700, 142765, 1738, '2021-01-20'),
(14, 'Murcia', 45185, 1200, 40757, 1784, '2021-01-21'),
(15, 'Navarra', 20625, 500, 15754, 767, '2021-01-20'),
(16, 'País Vasco', 55980, 1400, 36864, 1333, '2021-01-20'),
(17, 'La Rioja', 11765, 200, 8684, 267, '2021-01-21'),
(18, 'Ceuta', 1980, 200, 1545, 326, '2021-01-20'),
(19, 'Melilla', 1980, 200, 1500, 203, '2021-01-20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ccaa`
--
ALTER TABLE `ccaa`
  ADD PRIMARY KEY (`codigo_ccaa`),
  ADD UNIQUE KEY `nombre_ccaa_UNIQUE` (`nombre_ccaa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ccaa`
--
ALTER TABLE `ccaa`
  MODIFY `codigo_ccaa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
