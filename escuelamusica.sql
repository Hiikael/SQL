-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2025 a las 02:38:22
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuelamusica`
--
CREATE DATABASE IF NOT EXISTS `escuelamusica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `escuelamusica`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id_estudiante` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `anio_inscripcion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id_estudiante`, `nombre`, `apellido`, `email`, `anio_inscripcion`) VALUES
(1, 'Laura', 'Torres', 'laura@escuela.com', 2023),
(2, 'Diego', 'Suárez', 'diego@escuela.com', 2024),
(3, 'Emilia', 'Blanco', 'emilia@escuela.com', 2023),
(4, 'Nicolás', 'Vega', 'nico@escuela.com', 2022),
(5, 'Valeria', 'Ramos', 'valeria@escuela.com', 2024);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrumento`
--

CREATE TABLE `instrumento` (
  `id_instrumento` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `dificultad` varchar(20) DEFAULT NULL,
  `id_estudiante` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `instrumento`
--

INSERT INTO `instrumento` (`id_instrumento`, `nombre`, `tipo`, `dificultad`, `id_estudiante`) VALUES
(101, 'Violín', 'cuerda', 'avanzado', 1),
(102, 'Flauta', 'viento', 'intermedio', 1),
(103, 'Batería', 'percusión', 'principiante', 2),
(104, 'Guitarra', 'cuerda', 'intermedio', 2),
(105, 'Piano', 'cuerda', 'avanzado', 3),
(106, 'Saxofón', 'viento', 'avanzado', 4),
(107, 'Cajón', 'percusión', 'principiante', 4),
(108, 'Clarinete', 'viento', 'intermedio', 5),
(109, 'Bajo', 'cuerda', 'avanzado', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id_estudiante`);

--
-- Indices de la tabla `instrumento`
--
ALTER TABLE `instrumento`
  ADD PRIMARY KEY (`id_instrumento`),
  ADD KEY `id_estudiante` (`id_estudiante`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `instrumento`
--
ALTER TABLE `instrumento`
  ADD CONSTRAINT `instrumento_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
