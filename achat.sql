-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2018 a las 23:58:34
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `achat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje`
--

CREATE TABLE `mensaje` (
  `idMensaje` int(11) NOT NULL,
  `idUsuario1` int(11) NOT NULL,
  `idUsuario2` int(11) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mensaje`
--

INSERT INTO `mensaje` (`idMensaje`, `idUsuario1`, `idUsuario2`, `texto`) VALUES
(1, 1, 2, 'hola'),
(3, 3, 2, 'que tal'),
(4, 2, 3, 'todo bien'),
(7, 3, 2, 'buen dia'),
(8, 1, 3, 'holi'),
(9, 1, 3, 'holi'),
(10, 1, 3, 'holi'),
(11, 1, 3, 'holi'),
(12, 1, 3, 'hoq'),
(13, 1, 3, 'hoqsad'),
(14, 1, 2, 'hola persona'),
(15, 1, 2, 'hola'),
(16, 1, 1, 'hola'),
(17, 1, 1, 'q tal'),
(18, 1, 1, 'q tal'),
(19, 1, 1, 'q tal'),
(20, 1, 1, 'q tal'),
(21, 1, 3, 'h123'),
(22, 1, 4, '77'),
(23, 1, 4, '1312'),
(24, 1, 2, '1312'),
(25, 1, 2, '1312'),
(26, 1, 2, 'ds'),
(27, 1, 2, 'hola'),
(28, 1, 4, 'hola'),
(29, 1, 4, 'mira'),
(30, 1, 4, 'w'),
(31, 1, 4, 'q'),
(32, 1, 4, 'qe'),
(33, 1, 4, 'asd'),
(34, 1, 4, '23'),
(35, 1, 4, '23'),
(36, 1, 2, 'd'),
(37, 1, 2, 'dwd'),
(38, 1, 2, 'dwd'),
(39, 1, 2, 'dwd'),
(40, 1, 4, 'hola'),
(41, 1, 4, 'q tal'),
(42, 1, 4, 'q tal'),
(43, 1, 2, '1241324'),
(44, 1, 2, '1241324'),
(45, 1, 2, 'sdasd'),
(46, 1, 2, 'sdasd'),
(47, 1, 2, 'este es un mensaje largo para peprsona de lucas'),
(48, 1, 2, 'este es otro mensaje pero mas corto'),
(49, 1, 2, 'y asi sucesivamente'),
(50, 1, 2, 'asd'),
(51, 1, 4, 'sds'),
(52, 1, 2, 'qwe'),
(53, 1, 2, 'pepe'),
(54, 1, 2, 'papa'),
(55, 1, 2, 'pqw'),
(56, 1, 4, 'asd'),
(57, 1, 3, 'asd'),
(58, 1, 2, 'asd'),
(59, 1, 1, 'sad'),
(60, 1, 3, 'aaa'),
(61, 1, 3, 'aaad'),
(62, 1, 1, 's'),
(63, 1, 1, 'r'),
(64, 1, 1, 'gg'),
(65, 1, 1, 'ggf'),
(66, 1, 1, 'ggff'),
(67, 1, 3, 's'),
(68, 1, 2, 'eeeee'),
(69, 1, 2, 'sdafsdfsdfsdf'),
(70, 1, 0, 'asd'),
(71, 1, 1, 'asda'),
(72, 1, 3, '1111111111'),
(73, 1, 3, '1111111111e'),
(74, 1, 2, 'asdasd'),
(75, 1, 2, 'hola como estas'),
(76, 1, 2, 'muy biuen]'),
(77, 1, 1, 'asd'),
(78, 1, 1, '2312312ed3dqwsda'),
(79, 1, 2, 'asdasd'),
(80, 1, 2, 'qwq'),
(81, 1, 2, 'qwq'),
(82, 1, 2, ''),
(83, 1, 2, ''),
(84, 1, 2, ''),
(85, 1, 2, ''),
(86, 1, 2, ''),
(87, 1, 2, 'hola'),
(88, 1, 2, 'como estas'),
(89, 1, 2, 'todo vien _'),
(90, 1, 2, '?asd'),
(91, 1, 2, 'que pasa'),
(92, 1, 2, 'todo bien'),
(93, 1, 2, 'asd'),
(94, 1, 2, 'asd'),
(95, 1, 2, 'asd'),
(96, 1, 2, 'asd'),
(97, 1, 2, 'asd'),
(98, 1, 2, 'qq'),
(99, 1, 2, 'qqad'),
(100, 1, 0, 'asd'),
(101, 1, 3, 'asd'),
(102, 1, 3, 'dew'),
(103, 1, 3, 'hola'),
(104, 1, 3, 'como estas'),
(105, 1, 3, 'das'),
(106, 1, 3, 'holas'),
(107, 1, 3, 'como estas'),
(108, 1, 1, 'asd'),
(109, 1, 1, 'adsd'),
(110, 1, 1, 'a'),
(111, 1, 1, ''),
(112, 1, 1, 'sd'),
(113, 1, 1, 'as'),
(114, 1, 1, 'a'),
(115, 1, 1, 'd'),
(116, 1, 1, 'ds'),
(117, 1, 1, 'a'),
(118, 1, 1, 'd'),
(119, 1, 1, 'hola'),
(120, 1, 1, 'COMO ETSAS'),
(121, 1, 2, 'asda'),
(122, 1, 2, 'asda'),
(123, 1, 2, ''),
(124, 1, 2, 'sd'),
(125, 1, 2, 'a'),
(126, 1, 2, ''),
(127, 1, 2, 's'),
(128, 1, 2, 'a'),
(129, 1, 2, 'd'),
(130, 1, 2, 'as'),
(131, 1, 2, 'd'),
(132, 1, 2, ''),
(133, 1, 2, ''),
(134, 1, 2, ''),
(135, 1, 2, ''),
(136, 1, 2, ''),
(137, 1, 2, 'asdasd'),
(138, 1, 2, '3424234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `nombre`) VALUES
(1, 'lucas'),
(2, 'persona'),
(3, 'laura'),
(4, 'alex');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`idMensaje`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `idMensaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
