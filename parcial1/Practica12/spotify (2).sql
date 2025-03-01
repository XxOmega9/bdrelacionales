-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-03-2025 a las 02:29:55
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
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Tomorrow X Together', 'boy band surcoreana de K-pop formada por Big Hit Music en 2019. Compuesto por cinco integrantes: Yeonjun, Soobin, Beomgyu, Taehyun y Huening Kai.'),
(2, 'Taemin', 'Cantante, bailarín y actor surcoreano bajo BPM Entertainment. Es el maknae del grupo masculino SHINee y miembro del supergrupo masculino SuperM. Debutó como solista el 18 de agosto de 2014 con el EP Ace.'),
(3, 'Banda Ms', 'Se formó en el año 2003 en el puerto de Mazatlán, en el estado de Sinaloa Se hacian llamar la authentica mazaltan en 2000 , 15 integrantes.'),
(4, 'Mothy', ' un compositor que utiliza el software Vocaloid . Es conocido por crear The Evillious Chronicles, una serie multimedia de novelas, cuentos y manga, originalmente contados en canciones utilizando Vocaloid.'),
(5, 'Stray Kids', 'boyband surcoreana Stray Kids se formó en 2017 por iniciativa de la discográfica JYP Entertainment, que organizó un reality show, para retransmitir los primeros pasos del nuevo conjunto.'),
(6, 'Enhypen', ' boyband surcoreana que se formó a través del programa I-Land, siendo siete sus miembros: Heeseung, Jay, Jake, Sunghoon, Sunoo, Jungwon y Ni-ki.'),
(7, 'Maluma', 'cantante colombiano. Es uno de los principales intérpretes de reggaetón y trap latino. '),
(8, 'Ado', 'Utaite');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistascanciones`
--

CREATE TABLE `artistascanciones` (
  `id` int(11) NOT NULL,
  `artistas_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistascanciones`
--

INSERT INTO `artistascanciones` (`id`, `artistas_id`, `canciones_id`) VALUES
(1, 8, 38),
(2, 8, 41),
(3, 8, 40),
(4, 8, 39),
(5, 8, 37);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `Nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'A lo mejor', 2, '00:03:07', '2014-06-24', 1, 'alomejor.JPG'),
(2, 'Me gusta tu vieja', 2, '00:02:46', '2014-06-24', 1, 'megustatuvieja.JPG'),
(3, 'Hablame de ti', 2, '00:03:50', '2014-06-24', 1, 'hablamedeti.JPG'),
(4, 'No me digas perdon', 4, '00:04:12', '2014-06-24', 1, 'nomepidaserdon.JPG'),
(5, 'Hermosa expreiencia', 2, '00:03:46', '2013-10-01', 1, 'hermosaexperiencia.JPG'),
(6, 'Me vas a extrañar', 2, '00:04:32', '2016-02-05', 1, 'mevasaextrañar.JPG'),
(7, 'Advice', 8, '00:02:52', '2021-06-18', 1, 'advice.JPG'),
(8, 'MOVE', 8, '00:03:14', '2017-10-16', 1, 'MOVE.JPG'),
(9, 'IDEA', 8, '00:03:41', '2020-11-09', 1, 'IDEA.JPG'),
(10, 'Heaven', 8, '00:04:38', '2020-11-09', 1, 'heaven.JPG'),
(11, 'Crush', 8, '00:02:22', '2024-08-19', 1, 'crush.JPG'),
(12, 'Horizon', 8, '00:04:10', '2024-08-19', 1, 'horizon.jpg'),
(13, 'Sexy in the air', 8, '00:03:25', '2024-08-19', 1, 'sexyintheair.JPG'),
(14, 'Sexuality- Rearranged Version', 8, '00:03:22', '2016-02-23', 1, 'Sexuality.jpg'),
(15, 'Press your number', 8, '00:02:39', '0000-00-00', 1, 'pressyournumber.jpg'),
(16, 'Borro Cassette', 3, '00:02:44', '2015-09-30', 1, 'BorroCassette.jpg'),
(17, 'El perdedor', 3, '00:03:28', '2015-09-30', 1, 'Elperdedor.jpg'),
(18, 'Sin contrato', 3, '00:04:31', '2015-09-30', 1, 'Sincontrato.jpg'),
(19, 'LALALALA', 8, '00:03:24', '2023-10-10', 1, 'LALALALA.JPG'),
(20, 'MEGAVERSE', 8, '00:03:44', '2023-11-10', 1, 'MEGAVERSE.JPG'),
(21, 'MIROH', 8, '00:04:01', '2019-03-25', 1, 'MIROH.JPG'),
(22, 'God\'s Menu', 8, '00:03:35', '2020-06-17', 1, 'GodsMenu.JPG'),
(23, 'Back Door', 8, '00:03:26', '2020-09-14', 1, 'BackDoor.jpg'),
(24, 'DOMINO', 8, '00:02:55', '2021-08-23', 1, 'DOMINO.JPG'),
(25, 'Thunderous', 8, '00:03:32', '2021-08-23', 1, 'Thunderous.jpg'),
(26, 'CHEESE', 8, '00:03:18', '2021-08-23', 1, 'CHEESE.JPG'),
(27, 'FEVER', 8, '00:02:39', '2021-04-26', 1, 'FEVER.JPG'),
(28, 'Not for sale', 8, '00:03:16', '2021-04-26', 1, 'Notforsale.JPG'),
(29, 'Drunk-dazed', 8, '00:02:34', '2021-04-26', 1, 'Drunkdazed.JPG'),
(30, 'Bite me', 8, '00:03:16', '2023-05-22', 1, 'biteme.JPG'),
(31, 'Sacrifice (eat me up)', 8, '00:02:56', '2023-05-22', 1, 'sacrifice.Jpg'),
(32, 'Chaconne', 8, '00:03:28', '2023-05-22', 1, 'chaconne.JPG'),
(33, 'Karma', 8, '00:03:44', '2023-05-22', 1, 'Karma.JPG'),
(34, 'Flicker', 8, '00:02:12', '2020-11-30', 1, 'flicker.JPG'),
(35, 'Daydream', 8, '00:02:09', '2024-11-11', 1, 'daydream.JPG'),
(36, 'No doubt', 8, '00:03:23', '2024-11-11', 1, 'nodoubt.JPG'),
(37, 'Show', 5, '00:02:41', '2023-09-06', 1, 'show.jpg'),
(38, 'DIGNITY', 5, '00:03:42', '2023-09-18', 1, 'dignity.JPG'),
(39, 'Readymade', 5, '00:02:56', '2022-01-26', 1, 'readymade.JPG'),
(40, 'Gira gira', 5, '00:03:41', '2022-01-26', 1, 'giragira.JPG'),
(41, 'Freedom', 5, '00:03:12', '2022-01-26', 1, 'freedom.JPG'),
(42, 'i\'m a controversy', 5, '00:03:30', '2023-02-20', 1, 'imacontroversy.JPG'),
(43, 'The servant of evil', 5, '00:05:09', '2011-11-17', 1, 'Theservantofevil.JPG'),
(44, 'The tailor of enbizaka', 5, '00:06:34', '2011-12-01', 1, 'Thetailorofenbizaka.JPG'),
(45, 'The Lunacy of duke Venomania', 5, '00:04:38', '2011-11-17', 1, 'TheLunacyofdukeVenomania.JPG'),
(46, 'Evil Food Eater Conchita', 5, '00:03:46', '2011-11-17', 1, 'EvilFoodEaterConchita.JPG'),
(47, 'Daugther of evil', 5, '00:05:29', '2011-12-17', 1, 'Daugtherofevil.JPG'),
(48, 'Gift from the Princess who Brought Sleep', 5, '00:05:31', '2011-11-12', 1, 'GiftfromthePrincesswhoBroughtSleep.JPG'),
(49, 'Judgement of Corruption', 5, '00:05:03', '2011-11-18', 1, 'JudgementofCorruption.JPG'),
(50, 'Blue Orangeade', 8, '00:03:05', '2019-03-04', 1, 'Blueorangeade.JPG'),
(51, 'CROWN', 8, '00:03:50', '2019-03-04', 1, 'crown.JPG'),
(52, 'Our Summer', 8, '00:03:31', '2019-03-04', 1, 'oursummer.JPG'),
(53, 'New Rules', 8, '00:02:54', '2019-10-21', 1, 'newrules.JPG'),
(54, '9 and Three Quartes (Run Away)', 8, '00:03:51', '2019-10-21', 1, 'Runaway.JPG'),
(55, 'Roller Coaster', 8, '00:03:54', '2019-10-21', 1, 'roallercoaster.JPG'),
(56, '2Ocm', 8, '00:03:37', '2019-10-21', 1, '20cm.JPG'),
(57, 'Drama', 8, '00:03:29', '2020-05-18', 1, 'drama.JPG'),
(58, 'Can\'t you see me?', 8, '00:03:21', '2020-05-18', 1, 'Can\'tyouseeme?.JPG'),
(59, 'Fairy of Shampoo', 8, '00:04:27', '2020-05-18', 1, 'FairyofShampoo.JPG'),
(60, 'Maze in the mirror', 8, '00:03:46', '2020-05-18', 1, 'Mazeinthemirror.JPG'),
(61, 'PUMA', 8, '00:03:46', '2020-05-18', 1, 'puma.JPG'),
(62, 'Eternally', 8, '00:03:38', '2020-05-18', 1, 'eternally.JPG'),
(63, 'We lost the summer', 8, '00:03:30', '2020-10-20', 1, 'Welostthesummer.JPG'),
(64, 'Blue Hour', 8, '00:03:29', '2020-10-20', 1, ' bluehour.JPG'),
(65, 'Wishlist', 8, '00:03:11', '2020-10-20', 1, 'wishlist.JPG'),
(66, 'Anti-Romantic', 8, '00:03:35', '2021-05-21', 1, 'Anti-Romantic.JPG'),
(67, 'OX1=LOVESONG(I know i love you)', 8, '00:03:22', '2021-05-21', 1, 'OX1=LOVESONG.JPG'),
(68, 'Magic', 8, '00:02:39', '2021-05-21', 1, 'magic.JPG'),
(69, 'Ice Cream', 8, '00:03:22', '2021-05-21', 1, 'icecream.JPG'),
(70, 'No Rules', 8, '00:03:06', '2021-05-21', 1, 'norules.JPG'),
(71, 'Frost', 8, '00:03:14', '2021-05-21', 1, 'frost.JPG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuario_id`, `canciones_id`) VALUES
(1, 2, 56),
(2, 3, 35),
(3, 4, 1),
(4, 5, 16),
(5, 8, 3),
(6, 1, 64),
(7, 7, 17),
(8, 6, 66),
(9, 3, 58),
(10, 3, 47),
(11, 3, 7),
(12, 3, 11),
(13, 3, 9),
(14, 3, 51),
(15, 3, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'Pop'),
(2, 'Banda'),
(3, 'Regueton'),
(4, 'Cumbia'),
(5, 'Anison'),
(6, 'Musica electronica'),
(7, 'Baladas romanticas'),
(8, 'K-pop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, 'Individual\r\n1 cuenta Premium\r\nCancela en cualquier momento\r\nPago por suscripción o pago único', 129),
(2, 'Estudiantes\r\n1 cuenta Premium verificada\r\nDescuento para estudiantes que cumplen con los requisitos\r', 69),
(3, 'Duo\r\n2 cuentas Premium\r\nCancela en cualquier momento\r\nPago por suscripción o pago único', 169),
(4, 'Familiar\r\nHasta 6 cuentas Kids o Premium\r\nControla el contenido marcado como explícito.\r\nAcceso a Sp', 199);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `nombre`, `usuario_id`, `duracion`, `totalcanciones`, `descripcion`, `publico`) VALUES
(1, 'kinki', 3, '40:08:15', 742, 'PURA LLORADERA', 0),
(2, 'para detonar', 3, '00:42:46', 20, '5mentarios', 0),
(3, 'estudiadera', 3, '01:03:50', 42, 'nulo', 0),
(4, 'rosselyn no le sabe', 2, '09:27:12', 240, 'no hay buen gusto', 1),
(5, 'puro viejos ', 6, '00:14:00', 12, 'jdebhbhbkf', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlistcanciones`
--

INSERT INTO `playlistcanciones` (`id`, `playlist_id`, `canciones_id`, `usuario_id`) VALUES
(1, 1, 54, 3),
(2, 1, 50, 3),
(3, 1, 46, 3),
(4, 1, 62, 3),
(5, 2, 30, 3),
(6, 2, 59, 3),
(7, 2, 71, 3),
(8, 2, 5, 3),
(9, 4, 23, 2),
(10, 4, 26, 2),
(11, 4, 24, 2),
(12, 4, 19, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Krissel Bettina Angulo Garcia', 'krisell.angulo23@cetis107.edu.mx', 4),
(2, 'Rosselyn Esparza Uriarte', 'rosselyn.esparza23@cetis107.edu.mx', 2),
(3, 'Ana Sofia Delgado German', 'ana.delgado23@cetis107.edu.mx', 1),
(4, 'Angel Gibran Loaiza Garcia', 'angel.loaiza23@cetis107.edu.mx', 3),
(5, 'Bayron Uriel Estrada Camacho', 'bayron.estrada23@cetis107.edu.mx', 4),
(6, 'Karolina Simone Figueroa Terrazas', 'karolina.figueroa23@cetis107.edu.mx', 2),
(7, 'Paolo Nicholas Valdez Bernal', 'paolo.valdez23@cetis107.edu.mx', 4),
(8, 'Diego Joan Dominguez Lizarraga', 'diego.dominguez23@cetis107.edu.mx', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artistas_id` (`artistas_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD CONSTRAINT `artistascanciones_ibfk_1` FOREIGN KEY (`artistas_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistascanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
