-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Out-2020 às 14:48
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `omb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `gw2_boss`
--

CREATE TABLE `gw2_boss` (
  `boss_id` int(11) NOT NULL,
  `boss_name` varchar(150) NOT NULL,
  `boss_level` int(11) NOT NULL,
  `boss_area` varchar(150) NOT NULL,
  `boss_map` varchar(120) NOT NULL,
  `boss_region` varchar(30) NOT NULL,
  `boss_waypoint` varchar(12) NOT NULL,
  `boss_image` varchar(30) NOT NULL,
  `boss_thumbnail` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `gw2_boss`
--

INSERT INTO `gw2_boss` (`boss_id`, `boss_name`, `boss_level`, `boss_area`, `boss_map`, `boss_region`, `boss_waypoint`, `boss_image`, `boss_thumbnail`) VALUES
(1, 'Claw of Jormag', 80, 'Earthshake Basin', 'Frostgorge Sound', 'Centro-leste', '[&BHoCAAA=]', 'Claw.jpg', 'assets/img/images/claw_thumbnail.jpg'),
(2, 'Fire Elemental', 15, 'Muridian Uplands', 'Metrica Province', 'Noroeste', '[&BEcAAAA=]', 'Elemental.jpg', 'assets/img/images/elemental_thumbnail.jpg'),
(3, 'Golem Mark II', 68, 'Whitland Flats', 'Mount Maelstrom', 'Sudeste', '[&BNQCAAA=]', 'Golem.jpg', 'assets/img/images/golem_thumbnail.jpg'),
(4, 'Great Jungle Wurm', 15, 'Wychmire Swamp', 'Caledon Forest', 'Centro', '[&BEEFAAA=]', 'Wurm.jpg', 'assets/img/images/wurm_thumbnail.jpg'),
(5, 'Karka Queen', 80, 'Southsun Shoals', 'Southsun Cove', 'Nordeste', '[&BNUGAAA=]', 'Karka.jpg', 'assets/img/images/karka_thumbnail.jpg'),
(6, 'Megadestroyer', 66, 'Maelstrom´s Bile', 'Mount Maelstrom', 'Centro-sul', '[&BM0CAAA=]', 'Megadestroyer.jpg', 'assets/img/images/megadestroyer_thumbnail.jpg'),
(7, 'Modniir Ulgoth', 43, 'Modniir Gorge', 'Harathi Hinterlands', 'Nordeste', '[&BLAAAAA=]', 'Modniir.jpg', 'assets/img/images/ulgoth_thumbnail.jpg'),
(8, 'Shadow Behemoth', 15, 'Godslost Swamp', 'Queensdale', 'Centro-sul', '[&BPcAAAA=]', 'Behemoth.jpg', 'assets/img/images/behemoth_thumbnail.jpg'),
(9, 'Svanir Shaman Chief', 10, 'Frusenfell Creek', 'Wayfarer Foothills', 'Centro-leste', '[&BMIDAAA=]', 'Svanir.jpg', 'assets/img/images/svanir_thumbnail.jpg'),
(10, 'The Shatterer', 50, 'Lowland Burns', 'Blazeridge Steppes', 'Noroeste', '[&BE4DAAA=]', 'Shatterer.jpg', 'assets/img/images/shatterer_thumbnail.jpg'),
(11, 'Taidha Covington', 50, 'Laughing Gull Island', 'Bloodtide Coast', 'Centroeste', '[&BKgBAAA=]', 'Taidha.jpg', 'assets/img/images/taidha_thumbnail.jpg'),
(12, 'Tequatl the Sunless', 65, 'Splintered Coast', 'Sparkfly Fen', 'sudoeste', '[&BNABAAA=]', 'Tequatl.jpg', 'assets/img/images/tequatl_thumbnail.jpg'),
(13, 'TT\'s Evolved Wurms', 37, 'Firth of Revanion', 'Bloodtide Coast', 'Centro', '[&BKoBAAA=]', 'Evolved.jpg', 'assets/img/images/evolved_thumbnail.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gw2_boss_event`
--

CREATE TABLE `gw2_boss_event` (
  `boss_event_id` int(11) NOT NULL,
  `boss_event_boss_id` int(11) NOT NULL,
  `boss_event_time` time NOT NULL,
  `boss_event_end` time NOT NULL,
  `boss_event_duration` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `gw2_boss_event`
--

INSERT INTO `gw2_boss_event` (`boss_event_id`, `boss_event_boss_id`, `boss_event_time`, `boss_event_end`, `boss_event_duration`) VALUES
(1, 11, '21:00:00', '21:15:00', '00:00:00'),
(2, 12, '21:00:00', '21:15:00', '00:00:00'),
(3, 9, '21:15:00', '21:30:00', '00:00:00'),
(4, 6, '21:30:00', '21:45:00', '00:00:00'),
(5, 2, '21:45:00', '22:00:00', '00:00:00'),
(6, 10, '22:00:00', '22:15:00', '00:00:00'),
(7, 13, '22:00:00', '22:15:00', NULL),
(8, 4, '22:15:00', '22:30:00', '00:00:00'),
(9, 7, '22:30:00', '22:45:00', NULL),
(10, 8, '22:45:00', '23:00:00', NULL),
(11, 3, '23:00:00', '23:15:00', NULL),
(12, 5, '23:00:00', '23:15:00', NULL),
(13, 9, '23:15:00', '23:30:00', NULL),
(14, 1, '23:30:00', '23:45:00', NULL),
(15, 2, '23:45:00', '00:00:00', NULL),
(16, 11, '00:00:00', '00:15:00', NULL),
(17, 12, '00:00:00', '00:15:00', NULL),
(18, 4, '00:15:00', '00:30:00', NULL),
(19, 6, '00:30:00', '00:45:00', NULL),
(20, 8, '00:45:00', '01:00:00', NULL),
(21, 10, '01:00:00', '01:15:00', NULL),
(22, 13, '01:00:00', '01:15:00', NULL),
(23, 9, '01:15:00', '01:30:00', NULL),
(24, 7, '01:30:00', '01:45:00', NULL),
(25, 2, '01:45:00', '02:00:00', NULL),
(26, 3, '02:00:00', '02:15:00', NULL),
(27, 4, '02:15:00', '02:30:00', NULL),
(28, 1, '02:30:00', '02:45:00', NULL),
(29, 8, '02:45:00', '03:00:00', NULL),
(30, 11, '03:00:00', '03:15:00', NULL),
(31, 5, '03:00:00', '03:15:00', NULL),
(32, 9, '03:15:00', '03:30:00', NULL),
(33, 6, '03:30:00', '03:45:00', NULL),
(34, 2, '03:45:00', '04:00:00', NULL),
(35, 10, '04:00:00', '04:15:00', NULL),
(36, 12, '04:00:00', '04:15:00', NULL),
(37, 4, '04:15:00', '04:30:00', NULL),
(38, 7, '04:30:00', '04:45:00', NULL),
(39, 8, '04:45:00', '05:00:00', NULL),
(40, 3, '05:00:00', '05:15:00', NULL),
(41, 13, '05:00:00', '05:15:00', NULL),
(42, 9, '05:15:00', '05:30:00', NULL),
(43, 1, '05:30:00', '05:45:00', NULL),
(44, 2, '05:45:00', '06:00:00', NULL),
(45, 11, '06:00:00', '06:15:00', NULL),
(46, 4, '06:15:00', '06:30:00', NULL),
(47, 6, '06:30:00', '06:45:00', NULL),
(48, 8, '06:45:00', '07:00:00', NULL),
(49, 10, '07:00:00', '07:15:00', NULL),
(50, 9, '07:15:00', '07:30:00', NULL),
(51, 7, '07:30:00', '07:45:00', NULL),
(52, 5, '07:30:00', '07:45:00', NULL),
(53, 2, '07:45:00', '08:00:00', NULL),
(54, 3, '08:00:00', '08:15:00', NULL),
(55, 4, '08:15:00', '08:30:00', NULL),
(56, 1, '08:30:00', '08:45:00', NULL),
(57, 12, '08:30:00', '08:45:00', NULL),
(58, 8, '08:45:00', '09:00:00', NULL),
(59, 11, '09:00:00', '09:15:00', NULL),
(60, 9, '09:15:00', '09:30:00', NULL),
(61, 6, '09:30:00', '09:45:00', NULL),
(62, 13, '09:30:00', '09:45:00', NULL),
(63, 2, '09:45:00', '10:00:00', NULL),
(64, 10, '10:00:00', '10:15:00', NULL),
(65, 4, '10:15:00', '10:30:00', NULL),
(66, 7, '10:30:00', '10:45:00', NULL),
(67, 8, '10:45:00', '11:00:00', NULL),
(68, 3, '11:00:00', '11:15:00', NULL),
(69, 9, '11:15:00', '11:30:00', NULL),
(70, 1, '11:30:00', '11:45:00', NULL),
(71, 2, '11:45:00', '12:00:00', '00:00:00'),
(72, 11, '12:00:00', '12:15:00', NULL),
(73, 5, '12:00:00', '12:15:00', NULL),
(74, 4, '12:15:00', '12:30:00', NULL),
(75, 6, '12:30:00', '12:45:00', NULL),
(76, 8, '12:45:00', '13:00:00', NULL),
(77, 10, '13:00:00', '13:15:00', NULL),
(78, 12, '13:00:00', '13:15:00', NULL),
(79, 9, '13:15:00', '13:30:00', NULL),
(80, 7, '13:30:00', '13:45:00', NULL),
(81, 2, '13:45:00', '14:00:00', NULL),
(82, 3, '14:00:00', '14:15:00', NULL),
(83, 13, '14:00:00', '14:15:00', NULL),
(84, 4, '14:15:00', '14:30:00', NULL),
(85, 1, '14:30:00', '14:45:00', NULL),
(86, 8, '14:45:00', '15:00:00', NULL),
(87, 11, '15:00:00', '15:15:00', NULL),
(88, 5, '15:00:00', '15:15:00', NULL),
(89, 9, '15:15:00', '15:30:00', NULL),
(90, 6, '15:30:00', '15:45:00', NULL),
(91, 2, '15:45:00', '16:00:00', NULL),
(92, 10, '16:00:00', '16:15:00', NULL),
(93, 12, '16:00:00', '16:15:00', NULL),
(94, 4, '16:15:00', '16:30:00', NULL),
(95, 7, '16:30:00', '16:45:00', NULL),
(96, 8, '16:45:00', '17:00:00', NULL),
(97, 3, '17:00:00', '17:15:00', NULL),
(98, 13, '17:00:00', '17:15:00', NULL),
(99, 9, '17:15:00', '17:30:00', NULL),
(100, 1, '17:30:00', '17:45:00', NULL),
(101, 2, '17:45:00', '18:00:00', NULL),
(102, 11, '18:00:00', '18:15:00', NULL),
(103, 4, '18:15:00', '18:30:00', NULL),
(104, 6, '18:30:00', '18:45:00', NULL),
(105, 8, '18:45:00', '19:00:00', NULL),
(106, 10, '19:00:00', '19:15:00', NULL),
(107, 9, '19:15:00', '19:30:00', NULL),
(108, 7, '19:30:00', '19:45:00', NULL),
(109, 2, '19:45:00', '20:00:00', NULL),
(110, 3, '20:00:00', '20:15:00', NULL),
(111, 5, '20:00:00', '20:15:00', NULL),
(112, 4, '20:15:00', '20:30:00', NULL),
(113, 1, '20:30:00', '20:45:00', NULL),
(114, 8, '20:45:00', '21:00:00', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `gw2_boss`
--
ALTER TABLE `gw2_boss`
  ADD PRIMARY KEY (`boss_id`);

--
-- Índices para tabela `gw2_boss_event`
--
ALTER TABLE `gw2_boss_event`
  ADD PRIMARY KEY (`boss_event_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `gw2_boss`
--
ALTER TABLE `gw2_boss`
  MODIFY `boss_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `gw2_boss_event`
--
ALTER TABLE `gw2_boss_event`
  MODIFY `boss_event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
