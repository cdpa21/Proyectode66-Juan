-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2025 a las 17:16:55
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
-- Base de datos: `inasistencias_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentegrupo`
--

CREATE TABLE `docentegrupo` (
  `cedula` int(11) NOT NULL,
  `nombre_grupo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docentegrupo`
--

INSERT INTO `docentegrupo` (`cedula`, `nombre_grupo`) VALUES
(222222, '1MA'),
(222222, '1MB'),
(222222, '1MC'),
(222222, '1MD'),
(222222, '2MA'),
(222222, '2MB'),
(222222, '2MC'),
(222222, '2MD'),
(222222, '3MA'),
(222222, '3MB'),
(222222, '3MC'),
(222222, '3MD'),
(13231312, '1MB'),
(13231312, '2MC'),
(13231312, '2MD'),
(13231312, '3MA'),
(56357055, '3MA'),
(56565656, '1MA'),
(56565656, '1MB'),
(56886282, '3MA'),
(56886282, '3MC'),
(56886282, '3MD'),
(56886284, '1MA'),
(56886284, '1MB'),
(56886284, '2MC'),
(56886284, '2MD'),
(56886284, '3MA'),
(56886284, '3MC'),
(56886285, '2MC'),
(56886285, '3MA'),
(56886285, '3MC'),
(56886289, '2MD'),
(56886289, '3MA'),
(56886289, '3MC'),
(63389819, '2MC'),
(77777777, '1MA'),
(77777777, '1MB'),
(77777777, '2MD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `idgrupo` int(11) NOT NULL,
  `nombre_grupo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`idgrupo`, `nombre_grupo`) VALUES
(1, '1MA'),
(2, '1MB'),
(0, '1MC'),
(15, '1MD'),
(12, '2MA'),
(16, '2MB'),
(4, '2MC'),
(3, '2MD'),
(8, '3MA'),
(14, '3MB'),
(11, '3MC'),
(17, '3MD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inasistencia`
--

CREATE TABLE `inasistencia` (
  `id_inasistencia` int(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `motivo` varchar(255) NOT NULL,
  `es_medica` tinyint(1) NOT NULL DEFAULT 0,
  `grupo` varchar(100) DEFAULT NULL,
  `grupos` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inasistencia`
--

INSERT INTO `inasistencia` (`id_inasistencia`, `cedula`, `nombre`, `apellido`, `fecha_inicio`, `fecha_fin`, `motivo`, `es_medica`, `grupo`, `grupos`) VALUES
(8, 56886289, 'khabib', 'Nurmagomedov', '2025-08-11', '2025-10-11', 'fefefef', 1, NULL, ''),
(9, 56886284, 'connor', 'nuget', '2025-10-11', '2025-11-11', 'gygiu', 0, NULL, '1MA, 1MB, 2MC, 2MD, 3MA, 3MC'),
(10, 77777777, 'alexander', 'Volkanovsky', '2025-10-09', '2026-08-09', 'no se', 1, NULL, '1MA, 1MB, 2MD'),
(11, 56886285, 'Ilia', 'apturo', '2025-08-11', '2025-10-11', 'toy malito', 1, NULL, '2MC, 3MA, 3MC'),
(12, 56565656, 'carlos', 'bobo', '2020-09-09', '2025-10-09', 'duwdwud', 1, NULL, '1MA, 1MB'),
(13, 222222, 'alo', 'sss', '2009-12-13', '2013-08-14', 'sassadasdasasd', 0, NULL, '1MA, 1MB, 1MC, 1MD, 2MA, 2MB, 2MC, 2MD, 3MA, 3MB, 3MC, 3MD'),
(14, 56886282, 'Juan', 'Sosa', '2025-11-06', '2026-11-06', 'me duele el brazo', 1, NULL, '3MA, 3MC, 3MD'),
(15, 56886282, 'Juan', 'Sosa', '2020-11-11', '2206-11-11', 'fef', 0, NULL, '3MA, 3MC, 3MD'),
(16, 56886282, 'Juan', 'Sosa', '2025-11-06', '2025-11-09', 'me sentia medio mal', 0, NULL, '3MA, 3MC, 3MD'),
(17, 56886282, 'Juan', 'Sosa', '2025-10-09', '2025-10-11', 'fgefgefhe', 0, NULL, '3MA, 3MC, 3MD'),
(18, 63389819, 'carlos', 'apcheco', '2011-04-12', '2011-05-31', 'maternal', 1, NULL, '2MC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `cedula` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `contacto` varchar(20) NOT NULL,
  `contrasenia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`cedula`, `nombre`, `apellido`, `contacto`, `contrasenia`) VALUES
(222222, 'alo', 'sss', '1212', 'asap'),
(234242, 'fgjkukuyk', 'jdgh', '234234234', 'sdsdfsdfsdf'),
(13231312, 'qee', 'qeew', '13131221', 'ffwfwfe'),
(56357055, 'juanito', 'sosinha', '11312323123', 'andres'),
(56565656, 'carlos', 'bobo', '12121112', 'pene'),
(56886282, 'Juan', 'Sosa', '987653534', 'hola'),
(56886284, 'connor', 'nuget', '1212121121', 'pene'),
(56886285, 'Ilia', 'apturo', '12112121212', 'goat'),
(56886289, 'khabib', 'Nurmagomedov', '121212121', 'khabib'),
(63389819, 'carlos', 'apcheco', '567894', '2112'),
(67676767, 'YUJTYJTY', 'TYJTYJTY', '66544554', 'YJTJ'),
(77777777, 'alexander', 'Volkanovsky', '99999999', 'hola');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `docentegrupo`
--
ALTER TABLE `docentegrupo`
  ADD PRIMARY KEY (`cedula`,`nombre_grupo`),
  ADD KEY `nombre_grupo` (`nombre_grupo`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`idgrupo`),
  ADD UNIQUE KEY `nombre_grupo` (`nombre_grupo`);

--
-- Indices de la tabla `inasistencia`
--
ALTER TABLE `inasistencia`
  ADD PRIMARY KEY (`id_inasistencia`),
  ADD KEY `cedula` (`cedula`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cedula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `inasistencia`
--
ALTER TABLE `inasistencia`
  MODIFY `id_inasistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `docentegrupo`
--
ALTER TABLE `docentegrupo`
  ADD CONSTRAINT `docentegrupo_ibfk_1` FOREIGN KEY (`cedula`) REFERENCES `usuario` (`cedula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `docentegrupo_ibfk_2` FOREIGN KEY (`nombre_grupo`) REFERENCES `grupo` (`nombre_grupo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inasistencia`
--
ALTER TABLE `inasistencia`
  ADD CONSTRAINT `inasistencia_ibfk_1` FOREIGN KEY (`cedula`) REFERENCES `usuario` (`cedula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
