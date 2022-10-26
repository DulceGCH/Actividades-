-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2022 a las 03:13:41
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela_dgch`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `clave` varchar(4) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `horas_semana` tinyint(4) NOT NULL,
  `horas_totales` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`clave`, `nombre`, `horas_semana`, `horas_totales`) VALUES
('2653', 'Construye BD', 17, 30),
('9333', 'Desarrolla AW', 9, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `nombre` varchar(20) NOT NULL,
  `turno` varchar(15) NOT NULL,
  `lider_academia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`nombre`, `turno`, `lider_academia`) VALUES
('Contabilidad', 'Mixto', NULL),
('Electrisidad', 'Mixto', ' Dulce'),
('Logistica', 'Matutino', 'Geraldin'),
('Mecanica', 'Mixto', 'Mariana'),
('Programación', 'Mixto', 'Ricardo Méndez Rojas'),
('RCH', 'Mixto', ' Saul'),
('Soporte', 'Mixto', ' Diana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `num_control` varchar(15) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellidos` varchar(30) DEFAULT NULL,
  `edad` tinyint(4) NOT NULL,
  `domicilio` text NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `grupo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`num_control`, `nombre`, `apellidos`, `edad`, `domicilio`, `telefono`, `grupo`) VALUES
('20311050750497', 'Diana Alejandra', 'Godinez Garcia', 17, 'Loma Bonita #2A', '4181018940', '5PV'),
('20311050750525', 'Jose Saul', 'Rosas Garcia', 16, 'Carolina #40', '4181091980', '5PV'),
('20311050750650', 'Dulce Giovana', 'Caballero Hermosillo', 17, 'Tec de Monterrey #24', '4181084440', '5PV');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_asignatura`
--

CREATE TABLE `estudiante_asignatura` (
  `num_control` varchar(14) NOT NULL,
  `asignatura` varchar(4) NOT NULL,
  `fecha` date NOT NULL,
  `semestre` tinyint(4) NOT NULL,
  `calificacion` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiante_asignatura`
--

INSERT INTO `estudiante_asignatura` (`num_control`, `asignatura`, `fecha`, `semestre`, `calificacion`) VALUES
('20311050750497', '2653', '2025-10-22', 5, 8),
('20311050750497', '9333', '2025-10-22', 5, 9),
('20311050750525', '2653', '2025-10-22', 5, 2),
('20311050750525', '9333', '2025-10-22', 5, 3),
('20311050750650', '2653', '2025-10-22', 5, 10),
('20311050750650', '9333', '2025-10-22', 5, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `nombre` varchar(3) NOT NULL,
  `turno` varchar(10) NOT NULL,
  `representante` varchar(30) DEFAULT NULL,
  `tutor` varchar(60) NOT NULL,
  `carrera` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`nombre`, `turno`, `representante`, `tutor`, `carrera`) VALUES
('5AM', 'Matutino', 'Gilberto Hermosillo', 'Valeria Rodriguez', 'RCH'),
('5AV', 'Vespertino', 'Carlos Prada', 'Mario Castañeda', 'RCH'),
('5CM', 'Matutino', 'Dulce Mancilla', 'Gabriel Torres', 'Contabilidad'),
('5CV', 'Vespertino', 'Javier Godinez', 'Samael Garcia', 'Contabilidad'),
('5EM', 'Matutino', 'Yazmin Cortez', 'Saul Garnica', 'Electrisidad'),
('5EV', 'Vespertino', 'Omar Perez', 'Samael Carrillo', 'Electrisidad'),
('5LM', 'Matutino', 'Geraldine Casas', 'Tania Rosas', 'Logistica'),
('5LV', 'Vespertino', 'Luna Sanchez', 'Mariana Perez', 'Logistica'),
('5MM', 'Matutino', 'Adriana Hernandez', 'Angel Mendez', 'Mecanica'),
('5MV', 'Vespertino', 'Mayra Exiga', 'Luis Arriaga', 'Mecanica'),
('5PM', 'Matutino', 'Juan Camacho', 'Jose Antonio', 'Programacion'),
('5PV', 'Vespertino', 'Dulce Alejandra', 'Silvia Carrillo', 'Programacion'),
('5SM', 'Matutino', 'Josue Lopez', 'Fernando Olvera', 'Soporte'),
('5SV', 'Vespertino', 'Uriel Camacho', 'Diego Hernandez', 'Soporte');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`num_control`),
  ADD KEY `indice_grupo` (`grupo`);

--
-- Indices de la tabla `estudiante_asignatura`
--
ALTER TABLE `estudiante_asignatura`
  ADD PRIMARY KEY (`num_control`,`asignatura`),
  ADD KEY `asignatura` (`asignatura`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`nombre`),
  ADD KEY `index_carrera` (`carrera`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `grupo` FOREIGN KEY (`grupo`) REFERENCES `grupo` (`nombre`);

--
-- Filtros para la tabla `estudiante_asignatura`
--
ALTER TABLE `estudiante_asignatura`
  ADD CONSTRAINT `asignatura` FOREIGN KEY (`asignatura`) REFERENCES `asignatura` (`clave`),
  ADD CONSTRAINT `num_control` FOREIGN KEY (`num_control`) REFERENCES `estudiante` (`num_control`);

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `carrera` FOREIGN KEY (`carrera`) REFERENCES `carrera` (`nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
