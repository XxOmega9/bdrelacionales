-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2025 a las 00:37:14
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
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `nombre`, `correo`, `genero`, `fecha_nacimiento`) VALUES
(2, 'luis carlos', 'luis.santillan23@cetis107.edu.mx', 1, '1985-02-20'),
(3, 'jose francisco', 'jose.rochin23@cetis107.edu.mx', 1, '1975-10-30'),
(4, 'jorge ibarra', 'jose.ibarra23@cetis107.edu.mx', 1, '1965-04-28'),
(5, 'Maria teresa sepulveda', 'maria.sepulveda23@cetis107.edu.mx', 0, '1989-09-12'),
(6, 'amparo german', 'amparo.german23@cetis107.edu.mx', 0, '1972-11-30'),
(7, 'rosa gonzalez', 'rosa.gonzales23@cetis107.edu.mx', 0, '1986-08-20'),
(8, 'bettina garcia', 'bettina.garcia23@cetis107.edu.mx', 0, '1985-08-19'),
(9, 'arturo villarreal', 'arturo.villarreal23@cetis107.edu.mx', 1, '1965-04-15'),
(10, 'liliana juarez', 'liliana.juarez23@cetis107.edu.mx', 0, '1978-06-28'),
(11, 'jesus esparza', 'jesus.esparza23@cetis107.edu.mx', 1, '1982-02-06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
