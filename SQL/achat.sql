-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2018 a las 04:46:47
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
(138, 1, 2, '3424234'),
(139, 1, 4, 'hola'),
(140, 1, 4, 'alezx'),
(141, 1, 4, 'com oestyas'),
(142, 1, 2, 'd'),
(143, 1, 2, ''),
(144, 1, 2, 'd'),
(145, 1, 2, ''),
(146, 1, 2, ''),
(147, 1, 2, ''),
(148, 1, 2, ''),
(149, 1, 2, ''),
(150, 1, 2, ''),
(151, 1, 1, 'as}'),
(152, 1, 1, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(153, 1, 1, 'ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss'),
(154, 1, 1, 'ssssssssssssssssssssssssss'),
(155, 1, 1, 'asdasdsssssssssssssssssssssssssssssssssssssssssssssss'),
(156, 1, 1, '1234567890qwertyuiopÃ¡sdfghjkl.Ã±-azxcvbnm,.-asdfghjklÃ±{qwertyuiopÃ±'),
(157, 1, 1, '1234567890qwertyuiopÃ¡sdfghjkl.Ã±-azxcvbnm,.-asdfghjklÃ±{qwertyuiopÃ±asd1234567890qwertyuiopÃ¡sdfghjkl.Ã±-azxcvbnm,.-asdfghjklÃ±{qwertyuiopÃ±adasd'),
(158, 1, 0, 'sa'),
(159, 1, 0, 'sa'),
(160, 1, 0, 'de'),
(161, 1, 0, 'a'),
(162, 1, 1, 'hola'),
(163, 1, 1, 'como estas'),
(164, 1, 2, 'd'),
(165, 1, 1, 'd'),
(166, 1, 2, 'Lorem ipsum dolor sit amet consectetur adipiscing elit aliquet sodales, est nam pulvinar potenti cum nulla sollicitudin feugiat. Praesent gravida volutpat cubilia nunc pellentesque lacinia vehicula dis, habitasse quis interdum ultrices ante sapien sem ligula, varius vitae arcu inceptos integer condimentum porta. Magnis natoque proin lacinia facilisi ullamcorper aliquet maecenas velit ut iaculis, ultrices eu est auctor quisque hendrerit feugiat tortor pellentesque, erat ac integer pharetra primis nibh imperdiet viverra rutrum.'),
(167, 1, 1, 'wena perro'),
(168, 1, 1, 'como estamos pal bacile compadre'),
(169, 1, 2, 'l'),
(170, 1, 2, ''),
(171, 1, 2, '\''),
(172, 1, 1, 'asd'),
(173, 1, 1, ''),
(174, 1, 1, ''),
(175, 1, 1, 'ff'),
(176, 1, 1, 'asd'),
(177, 1, 4, 'w'),
(178, 1, 4, 'ads'),
(179, 1, 4, 'das'),
(180, 1, 4, ''),
(181, 1, 4, 'as'),
(182, 1, 3, 'da'),
(183, 1, 4, 'ewew'),
(184, 1, 4, 'd'),
(185, 1, 4, ''),
(186, 1, 4, 'ads'),
(187, 1, 3, 'asdasd'),
(188, 1, 3, 'asd'),
(189, 1, 1, 'qweq'),
(190, 0, 2, 'asd'),
(191, 0, 3, 'asd'),
(192, 0, 4, 'asd'),
(193, 1, 1, 'asd'),
(194, 1, 1, 'asd'),
(195, 1, 2, 'asd'),
(196, 1, 1, 'asd'),
(197, 1, 1, 'asdasd'),
(198, 1, 4, 'asd'),
(199, 1, 4, 'asd'),
(200, 1, 3, 'asd'),
(201, 1, 4, 'asd'),
(202, 1, 3, 'asd'),
(203, 1, 2, 'asd'),
(204, 1, 1, 'asd'),
(205, 1, 1, 'asd'),
(206, 1, 1, 'asd'),
(207, 1, 1, ''),
(208, 1, 1, 'dd'),
(209, 1, 1, ''),
(210, 1, 1, 'sda'),
(211, 1, 1, 'hola'),
(212, 1, 1, 'como estas'),
(213, 1, 2, 'holaa'),
(214, 0, 2, 'asd'),
(215, 0, 4, 'asd'),
(216, 1, 1, 'asd'),
(217, 1, 1, 'afrf'),
(218, 1, 1, 'asd'),
(219, 1, 2, 'asda'),
(220, 0, 1, 'asd'),
(221, 0, 3, 'asd'),
(222, 0, 3, ''),
(223, 0, 3, 'asdasd'),
(224, 0, 4, 'asdas'),
(225, 0, 4, ''),
(226, 3, 1, 'asd'),
(227, 3, 2, 'asd'),
(228, 3, 3, 'asd'),
(229, 3, 3, 'dsa'),
(230, 3, 4, 'hola'),
(231, 3, 1, 'hola'),
(232, 3, 3, 'a'),
(233, 3, 1, 'com estas'),
(234, 3, 1, 'jajajaja'),
(235, 3, 1, 'q tal'),
(236, 3, 1, 'hola'),
(237, 1, 3, 'q tal'),
(238, 3, 1, 'a'),
(239, 1, 3, 'a'),
(240, 3, 1, '123'),
(241, 1, 3, '345'),
(242, 3, 1, 'q tal'),
(243, 1, 3, 'todo bien?'),
(244, 3, 3, 'asd'),
(245, 1, 2, 'asd'),
(246, 1, 2, 'asd'),
(247, 3, 3, 'hola'),
(248, 3, 3, 'hola'),
(249, 3, 1, '999'),
(250, 1, 3, '888'),
(251, 3, 1, '777'),
(252, 1, 3, '555'),
(253, 3, 1, '44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `nombre`, `pass`) VALUES
(1, 'lucas', '123'),
(2, 'persona', '234'),
(3, 'Jess', '345'),
(4, 'alex', '456');

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
  MODIFY `idMensaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
