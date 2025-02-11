-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2025 a las 02:11:15
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Ana Sofia', 'Delgado German', '23325061070323', '2008-08-08', 0, 'ana.delgado23@cetis107.edu.mx', '6677485604'),
(2, 'Ryhanna Patricia', 'Ramirez Montiel', 'nulo', '0000-00-00', 1, 'ryhannaramirez7@gmail.com', '6672326904'),
(3, 'Rosselyn', 'Esparza Uriarte', '233250610705228', '2008-12-20', 0, 'rosselyn.esparza23@cetis107.edu.mx', '6674093254'),
(4, 'Krisell Bettina', 'Angulo Garcia', '23325061070627', '2008-05-30', 0, 'krisell.angulo23@cetis107.edu.mx', '6675793242'),
(5, 'Bayron Uriel', 'Estrada Camacho ', '23325101070375', '2008-08-13', 1, 'bayron.estrada23@cetis107.edu.mx', '9095160134'),
(6, 'Victor Manuel', 'Diaz Gastelum', '23325061070728', '2008-09-28', 1, 'victor.diaz23@cetis107.edu.mx', '6677911274'),
(7, 'Frisa Sofia', 'Sanchez Valenzuela', '23325061070611', '2008-10-10', 0, 'frida.sanchez23@cetis107.edu.mx', '6674087474'),
(8, 'Diego Joan', 'Dominguez Lizarraga', '23325061070579', '2008-11-10', 1, 'diego.dominguez23@cetis107.edu.mx', '6671412966'),
(9, 'Osman eden', 'Quiñonez saenz', '23325061070604', '2008-03-16', 1, 'osman.quinonez23@cetis107.edu.mx', '6675784067');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `ig` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`ig`, `nombre`, `descripcion`) VALUES
(1, 'Programacion', 'codifica, traza y protege el código fuente de programas computacionales'),
(2, 'Diseño Grafico ', 'Diseñar estrategias integrales de comunicación visual. Generar imagen e identidad a organizaciones.'),
(3, 'contabilidad', 'proceso de registrar, clasificar, analizar, interpretar y comunicar la información financiera de una empresa'),
(4, 'ofimatica', 'aplicaciones y herramientas informáticas diseñadas para facilitar y mejorar las tareas relacionadas con la creación, edición, almacenamiento '),
(5, 'Electronica', 'trata con circuitos eléctricos que involucran componentes eléctricos activos '),
(6, 'construccion', 'comprende la creación, reforma, reparación o ampliación de activos fijos en forma de edificios, mejora de terrenos de naturaleza ingenieril y otras obras de ingeniería');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(1, 'Recursos Socioemocionales 4', 4),
(2, 'Tutoria', 4),
(3, 'Ingles 4', 4),
(4, 'Conciencia Historica', 4),
(5, 'Ciencias Sociales 3', 4),
(6, 'Reacciones Quimicas', 4),
(7, 'Temas selectos de matematicas 1', 4),
(8, 'Base de datos relacionales', 4),
(9, 'Base de datos no relacionales', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`ig`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `ig` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
