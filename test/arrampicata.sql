-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Mar 14, 2017 alle 16:23
-- Versione del server: 10.1.16-MariaDB
-- Versione PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arrampicata`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `atleta`
--

CREATE TABLE `atleta` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(60) NOT NULL,
  `cognome` varchar(60) NOT NULL,
  `data_nascita` date NOT NULL,
  `sesso` enum('M','F') NOT NULL,
  `id_scuola` int(10) UNSIGNED DEFAULT NULL,
  `casacca` int(10) UNSIGNED NOT NULL,
  `punteggio` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `atleta`
--

INSERT INTO `atleta` (`id`, `nome`, `cognome`, `data_nascita`, `sesso`, `id_scuola`, `casacca`, `punteggio`) VALUES
(1, 'Margherita', 'Fabbri', '2001-12-11', 'F', 3, 1, 4.72085),
(2, 'Arianna', 'De', '1998-10-05', 'F', 2, 2, 3.31134),
(3, 'Elisa', 'Ferraro', '1997-02-02', 'F', 1, 3, 6.15323),
(4, 'Bianca', 'D''angelo', '2002-08-05', 'F', 5, 4, 10.3478),
(5, 'Anna', 'Romano', '2001-11-23', 'F', 3, 5, 4.45238),
(6, 'Asia', 'De', '1997-04-21', 'F', 2, 6, 3.86207),
(7, 'Emma', 'Orlando', '2002-12-14', 'F', 5, 7, 1.44928),
(8, 'Benedetta', 'Luca', '2001-04-16', 'F', 3, 8, 12.9431),
(9, 'Greta', 'Lombardo', '1998-09-17', 'F', 4, 9, 6.2707),
(10, 'Arianna', 'Martinelli', '1998-08-21', 'F', 3, 10, 1.33333),
(11, 'Elisa', 'Rosa', '2002-12-27', 'F', 1, 11, 15.5358),
(12, 'Maria', 'Guerra', '1999-12-28', 'F', 4, 12, 7.95238),
(13, 'Sofia', 'Pellegrini', '2000-11-28', 'F', 1, 13, 4.34783),
(14, 'Angelica', 'Vitale', '2000-02-13', 'F', 3, 14, 10.1168),
(15, 'Emily', 'Barbieri', '1998-04-18', 'F', 3, 15, 9.91133),
(16, 'Ginevra', 'Grasso', '2002-10-21', 'F', 3, 16, 7.29296),
(17, 'Aurora', 'Ruggiero', '2002-07-07', 'F', 2, 17, 2.20394),
(18, 'Gaia', 'Greco', '2001-11-02', 'F', 3, 18, 7.5383),
(19, 'Ludovica', 'Parisi', '1999-05-22', 'F', 4, 19, 3.17391),
(20, 'Alessandra', 'Farina', '2001-01-02', 'F', 3, 20, 0.8),
(21, 'Giada', 'Palmieri', '2000-12-18', 'F', 1, 21, 2.71429),
(22, 'Angelica', 'Riva', '2000-04-24', 'F', 3, 22, 8.52174),
(23, 'Serena', 'Grassi', '1999-04-20', 'F', 5, 23, 2),
(24, 'Sofia', 'Leone', '1997-01-05', 'F', 4, 24, 4.65667),
(25, 'Elena', 'Ferrara', '2001-06-11', 'F', 1, 25, 1.88013),
(26, 'Emily', 'Basile', '2000-06-03', 'F', 5, 26, 4.58571),
(27, 'Caterina', 'Santoro', '2000-05-17', 'F', 2, 27, 3.71429),
(28, 'Adele', 'Vitali', '1998-01-09', 'F', 3, 28, 2.65528),
(29, 'Rebecca', 'Giuliani', '2001-03-22', 'F', 3, 29, 7.45238),
(30, 'Miriam', 'Martinelli', '1997-10-28', 'F', 1, 30, 4.19048),
(31, 'Caterina', 'Lombardo', '1998-10-22', 'F', 1, 31, 10.642),
(32, 'Greta', 'Sanna', '1998-03-22', 'F', 5, 32, 4.03571),
(33, 'Maria', 'Longo', '2001-06-28', 'F', 3, 33, 5.5873),
(34, 'Rebecca', 'Gatti', '1997-05-24', 'F', 1, 34, 1.33333),
(35, 'Giorgia', 'Caruso', '2000-12-11', 'F', 4, 35, 5.06211),
(36, 'Miriam', 'Silvestri', '2000-10-23', 'F', 3, 36, 2.27743),
(37, 'Giorgia', 'Serra', '1998-07-10', 'F', 2, 37, 4.95963),
(38, 'Viola', 'Palmieri', '2002-08-24', 'F', 1, 38, 3.44928),
(39, 'Margherita', 'Santoro', '2001-12-22', 'F', 2, 39, 7.36823),
(40, 'Ludovica', 'Martinelli', '1999-03-18', 'F', 2, 40, 1.78571),
(41, 'Ginevra', 'Colombo', '1997-08-02', 'F', 1, 41, 3.57143),
(42, 'Angelica', 'Fontana', '1997-08-09', 'F', 4, 42, 7.53489),
(43, 'Giada', 'Sala', '1998-02-05', 'F', 1, 43, 6.93354),
(44, 'Martina', 'Vitali', '2002-06-15', 'F', 4, 44, 5.57635),
(45, 'Noemi', 'Barone', '2002-12-12', 'F', 2, 45, 2.58385),
(46, 'Rachele', 'Giordano', '1999-10-12', 'F', 5, 46, 3.3908),
(47, 'Giulia', 'Lombardo', '1997-09-22', 'F', 2, 47, 1.19048),
(48, 'Giada', 'Gatti', '1999-01-20', 'F', 4, 48, 5.2099),
(49, 'Camilla', 'Gatti', '2000-10-18', 'F', 1, 49, 1.66667),
(50, 'Giorgia', 'Piras', '1999-03-14', 'F', 5, 50, 11.9739),
(51, 'Nicolo''', 'Ferrara', '1999-05-14', 'M', 1, 51, 2.94903),
(52, 'Samuel', 'Ricci', '1997-08-22', 'M', 3, 52, 4.61905),
(53, 'Giuseppe', 'Fiore', '1999-05-27', 'M', 5, 53, 6.69828),
(54, 'Mario', 'Costa', '1997-01-04', 'M', 2, 54, 1.08696),
(55, 'Luigi', 'Milani', '1998-05-07', 'M', 4, 55, 3.92884),
(56, 'Matteo', 'Ferretti', '2000-08-19', 'M', 5, 56, 4.83722),
(57, 'Mario', 'Valentini', '2001-01-18', 'M', 2, 57, 15.1097),
(58, 'Diego', 'De', '1999-10-06', 'M', 5, 58, 2.5987),
(59, 'Diego', 'Bianchi', '2002-03-17', 'M', 4, 59, 3.06677),
(60, 'Giuseppe', 'Russo', '2001-05-07', 'M', 3, 60, 1.44928),
(61, 'Nicola', 'Palumbo', '1997-05-02', 'M', 2, 61, 1.72414),
(62, 'Leonardo', 'Luca', '1999-11-20', 'M', 3, 62, 0.892857),
(63, 'Giacomo', 'Fabbri', '1997-01-20', 'M', 4, 63, 2.8882),
(64, 'Gioele', 'Testa', '1997-11-27', 'M', 1, 64, 4.37143),
(65, 'Lorenzo', 'Morelli', '1999-04-19', 'M', 3, 65, 5.25052),
(66, 'Diego', 'Barbieri', '1998-11-26', 'M', 2, 66, 0),
(67, 'Edoardo', 'Marini', '2001-08-18', 'M', 5, 67, 8.10306),
(68, 'Stefano', 'Orlando', '1998-05-01', 'M', 3, 68, 2.86207),
(69, 'Giulio', 'Milani', '2001-01-21', 'M', 5, 69, 4.26108),
(70, 'Christian', 'Farina', '1998-01-04', 'M', 2, 70, 0.892857),
(71, 'Simone', 'De', '1997-02-17', 'M', 4, 71, 1.08696),
(72, 'Elia', 'Barbieri', '2002-03-20', 'M', 3, 72, 7.35177),
(73, 'Mattia', 'Rossetti', '1999-12-13', 'M', 1, 73, 3.3399),
(74, 'Simone', 'Messina', '2000-07-17', 'M', 4, 74, 7.18979),
(75, 'Gabriel', 'Santis', '2000-11-25', 'M', 2, 75, 7.31884),
(76, 'Francesco', 'Silvestri', '2002-07-07', 'M', 5, 76, 1.5873),
(77, 'Samuele', 'Caruso', '2001-02-03', 'M', 1, 77, 1.44928),
(78, 'Daniel', 'Mariani', '2001-10-16', 'M', 5, 78, 11.7961),
(79, 'Giacomo', 'Palmieri', '1997-02-21', 'M', 5, 79, 0.8),
(80, 'Jacopo', 'Grasso', '1997-08-26', 'M', 2, 80, 3.19048),
(81, 'Nicola', 'Fiore', '2002-11-26', 'M', 2, 81, 6.7619),
(82, 'Vincenzo', 'Ferrari', '2002-11-07', 'M', 5, 82, 8.89286),
(83, 'Andrea', 'Palmieri', '1998-01-10', 'M', 4, 83, 5.56938),
(84, 'Daniel', 'Russo', '2001-09-27', 'M', 4, 84, 1.78571),
(85, 'Luigi', 'Palumbo', '1998-07-05', 'M', 5, 85, 6.17391),
(86, 'Federico', 'Gallo', '1997-02-26', 'M', 2, 86, 6.16356),
(87, 'Tommaso', 'Morelli', '1997-11-02', 'M', 1, 87, 4.7619),
(88, 'Angelo', 'Grasso', '1999-02-17', 'M', 3, 88, 4.89286),
(89, 'Emanuele', 'Bellini', '1997-03-04', 'M', 2, 89, 0),
(90, 'Raffaele', 'Palmieri', '2001-09-24', 'M', 1, 90, 0),
(91, 'Lorenzo', 'Monti', '2002-12-02', 'M', 2, 91, 3.5),
(92, 'Riccardo', 'Conti', '2002-01-04', 'M', 5, 92, 6.78571),
(93, 'Davide', 'Basile', '1998-03-28', 'M', 2, 93, 7.09524),
(94, 'Nicola', 'Fontana', '1997-12-08', 'M', 3, 94, 0),
(95, 'Alessandro', 'Ruggiero', '1997-07-17', 'M', 3, 95, 6.56472),
(96, 'Stefano', 'Lombardi', '2002-10-22', 'M', 5, 96, 5.78514),
(97, 'Lorenzo', 'Basile', '1999-11-01', 'M', 4, 97, 8.38095),
(98, 'Diego', 'Rossetti', '1999-03-13', 'M', 5, 98, 0),
(99, 'Diego', 'Costantini', '2000-10-27', 'M', 5, 99, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `atleta_boulder`
--

CREATE TABLE `atleta_boulder` (
  `id_boulder` int(10) UNSIGNED NOT NULL,
  `id_atleta` int(10) UNSIGNED NOT NULL,
  `n_tentativi` int(11) NOT NULL DEFAULT '1',
  `passato` enum('Y','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `atleta_boulder`
--

INSERT INTO `atleta_boulder` (`id_boulder`, `id_atleta`, `n_tentativi`, `passato`) VALUES
(1, 1, 1, 'Y'),
(1, 7, 2, 'N'),
(1, 8, 1, 'Y'),
(1, 11, 4, 'N'),
(1, 13, 4, 'N'),
(1, 14, 3, 'Y'),
(1, 15, 3, 'Y'),
(1, 17, 5, 'Y'),
(1, 18, 3, 'Y'),
(1, 20, 5, 'N'),
(1, 27, 1, 'N'),
(1, 28, 4, 'N'),
(1, 29, 2, 'Y'),
(1, 33, 3, 'N'),
(1, 35, 1, 'N'),
(1, 36, 3, 'Y'),
(1, 37, 2, 'Y'),
(1, 39, 4, 'Y'),
(1, 40, 2, 'Y'),
(1, 42, 4, 'Y'),
(1, 44, 5, 'Y'),
(1, 45, 5, 'Y'),
(1, 48, 2, 'N'),
(1, 51, 2, 'N'),
(1, 57, 1, 'Y'),
(1, 59, 4, 'Y'),
(1, 60, 4, 'N'),
(1, 61, 5, 'N'),
(1, 62, 4, 'Y'),
(1, 63, 5, 'Y'),
(1, 64, 1, 'Y'),
(1, 65, 5, 'N'),
(1, 66, 3, 'N'),
(1, 67, 1, 'Y'),
(1, 69, 1, 'Y'),
(1, 73, 3, 'Y'),
(1, 74, 5, 'Y'),
(1, 75, 2, 'N'),
(1, 82, 4, 'Y'),
(1, 83, 4, 'Y'),
(1, 85, 1, 'N'),
(1, 86, 5, 'Y'),
(1, 89, 3, 'N'),
(1, 92, 2, 'N'),
(1, 93, 5, 'Y'),
(1, 96, 2, 'Y'),
(1, 97, 2, 'N'),
(2, 2, 4, 'N'),
(2, 3, 4, 'Y'),
(2, 4, 1, 'N'),
(2, 5, 2, 'N'),
(2, 6, 3, 'N'),
(2, 7, 5, 'N'),
(2, 8, 1, 'N'),
(2, 11, 5, 'Y'),
(2, 14, 5, 'Y'),
(2, 16, 2, 'Y'),
(2, 18, 2, 'Y'),
(2, 19, 4, 'N'),
(2, 20, 2, 'N'),
(2, 22, 2, 'Y'),
(2, 27, 3, 'Y'),
(2, 28, 1, 'N'),
(2, 29, 1, 'N'),
(2, 30, 2, 'Y'),
(2, 31, 1, 'N'),
(2, 32, 4, 'Y'),
(2, 33, 1, 'Y'),
(2, 34, 1, 'N'),
(2, 36, 5, 'N'),
(2, 38, 3, 'N'),
(2, 39, 1, 'Y'),
(2, 40, 5, 'N'),
(2, 42, 5, 'N'),
(2, 44, 1, 'Y'),
(2, 47, 4, 'N'),
(2, 50, 5, 'Y'),
(2, 51, 4, 'N'),
(2, 53, 1, 'N'),
(2, 54, 5, 'N'),
(2, 57, 2, 'Y'),
(2, 58, 2, 'N'),
(2, 60, 2, 'N'),
(2, 61, 2, 'N'),
(2, 62, 4, 'N'),
(2, 64, 1, 'N'),
(2, 68, 2, 'Y'),
(2, 72, 5, 'Y'),
(2, 73, 4, 'Y'),
(2, 74, 2, 'Y'),
(2, 75, 5, 'N'),
(2, 78, 5, 'N'),
(2, 80, 2, 'Y'),
(2, 82, 1, 'Y'),
(2, 83, 2, 'Y'),
(2, 84, 1, 'N'),
(2, 85, 1, 'Y'),
(2, 86, 1, 'Y'),
(2, 87, 2, 'N'),
(2, 89, 4, 'N'),
(2, 91, 3, 'N'),
(2, 92, 4, 'N'),
(2, 94, 5, 'N'),
(2, 95, 3, 'Y'),
(2, 96, 1, 'N'),
(2, 97, 4, 'Y'),
(3, 4, 3, 'N'),
(3, 5, 5, 'Y'),
(3, 7, 3, 'N'),
(3, 11, 1, 'Y'),
(3, 12, 2, 'Y'),
(3, 14, 5, 'Y'),
(3, 15, 5, 'N'),
(3, 16, 5, 'N'),
(3, 27, 2, 'Y'),
(3, 29, 5, 'Y'),
(3, 30, 4, 'Y'),
(3, 31, 1, 'Y'),
(3, 33, 3, 'Y'),
(3, 38, 3, 'N'),
(3, 40, 3, 'N'),
(3, 41, 4, 'N'),
(3, 42, 2, 'Y'),
(3, 46, 1, 'N'),
(3, 47, 4, 'Y'),
(3, 49, 4, 'N'),
(3, 52, 5, 'Y'),
(3, 53, 2, 'N'),
(3, 55, 2, 'N'),
(3, 56, 4, 'N'),
(3, 57, 1, 'N'),
(3, 60, 5, 'N'),
(3, 65, 2, 'Y'),
(3, 66, 3, 'N'),
(3, 72, 2, 'N'),
(3, 74, 3, 'Y'),
(3, 76, 3, 'Y'),
(3, 80, 4, 'Y'),
(3, 81, 1, 'Y'),
(3, 83, 5, 'Y'),
(3, 86, 2, 'N'),
(3, 87, 4, 'Y'),
(3, 93, 2, 'Y'),
(3, 95, 4, 'N'),
(3, 97, 2, 'Y'),
(4, 8, 1, 'Y'),
(4, 9, 3, 'Y'),
(4, 10, 1, 'N'),
(4, 11, 2, 'Y'),
(4, 12, 1, 'N'),
(4, 13, 1, 'Y'),
(4, 18, 1, 'Y'),
(4, 19, 2, 'Y'),
(4, 20, 4, 'N'),
(4, 22, 2, 'Y'),
(4, 25, 3, 'N'),
(4, 27, 1, 'N'),
(4, 29, 3, 'N'),
(4, 32, 5, 'N'),
(4, 34, 5, 'N'),
(4, 36, 4, 'Y'),
(4, 37, 2, 'Y'),
(4, 38, 3, 'Y'),
(4, 43, 1, 'Y'),
(4, 44, 1, 'N'),
(4, 45, 3, 'N'),
(4, 46, 4, 'N'),
(4, 48, 1, 'Y'),
(4, 51, 4, 'Y'),
(4, 52, 5, 'N'),
(4, 53, 3, 'N'),
(4, 55, 2, 'Y'),
(4, 56, 4, 'Y'),
(4, 57, 1, 'Y'),
(4, 58, 3, 'Y'),
(4, 59, 2, 'Y'),
(4, 63, 2, 'Y'),
(4, 64, 1, 'N'),
(4, 65, 5, 'Y'),
(4, 68, 5, 'N'),
(4, 73, 2, 'N'),
(4, 75, 3, 'Y'),
(4, 77, 3, 'Y'),
(4, 78, 1, 'Y'),
(4, 80, 3, 'N'),
(4, 84, 4, 'N'),
(4, 85, 1, 'N'),
(4, 87, 4, 'N'),
(4, 94, 1, 'N'),
(4, 96, 1, 'N'),
(4, 97, 2, 'N'),
(4, 99, 3, 'N'),
(5, 2, 3, 'Y'),
(5, 3, 5, 'Y'),
(5, 4, 1, 'Y'),
(5, 7, 3, 'Y'),
(5, 8, 2, 'N'),
(5, 14, 2, 'Y'),
(5, 16, 2, 'Y'),
(5, 18, 2, 'N'),
(5, 19, 2, 'N'),
(5, 22, 1, 'Y'),
(5, 23, 2, 'N'),
(5, 24, 2, 'Y'),
(5, 25, 1, 'N'),
(5, 28, 5, 'Y'),
(5, 29, 2, 'N'),
(5, 30, 3, 'N'),
(5, 35, 1, 'Y'),
(5, 41, 4, 'N'),
(5, 45, 5, 'Y'),
(5, 47, 4, 'N'),
(5, 50, 2, 'Y'),
(5, 52, 1, 'N'),
(5, 53, 4, 'N'),
(5, 54, 4, 'Y'),
(5, 55, 1, 'N'),
(5, 56, 2, 'Y'),
(5, 60, 3, 'Y'),
(5, 67, 5, 'Y'),
(5, 68, 1, 'N'),
(5, 71, 4, 'Y'),
(5, 72, 1, 'Y'),
(5, 73, 5, 'N'),
(5, 74, 2, 'Y'),
(5, 75, 5, 'Y'),
(5, 76, 4, 'N'),
(5, 77, 3, 'N'),
(5, 85, 2, 'Y'),
(5, 86, 3, 'Y'),
(5, 87, 5, 'N'),
(5, 91, 4, 'N'),
(5, 94, 4, 'N'),
(5, 95, 2, 'Y'),
(6, 1, 3, 'Y'),
(6, 2, 4, 'Y'),
(6, 3, 2, 'Y'),
(6, 6, 4, 'Y'),
(6, 7, 2, 'N'),
(6, 8, 4, 'N'),
(6, 9, 2, 'N'),
(6, 12, 2, 'N'),
(6, 14, 3, 'N'),
(6, 15, 3, 'Y'),
(6, 16, 3, 'N'),
(6, 17, 5, 'Y'),
(6, 23, 1, 'N'),
(6, 24, 3, 'Y'),
(6, 25, 5, 'Y'),
(6, 29, 5, 'N'),
(6, 31, 5, 'Y'),
(6, 32, 1, 'N'),
(6, 36, 2, 'N'),
(6, 39, 5, 'Y'),
(6, 42, 5, 'Y'),
(6, 44, 4, 'Y'),
(6, 46, 2, 'Y'),
(6, 48, 4, 'Y'),
(6, 50, 3, 'N'),
(6, 51, 4, 'Y'),
(6, 53, 1, 'Y'),
(6, 55, 4, 'Y'),
(6, 56, 4, 'Y'),
(6, 57, 4, 'N'),
(6, 58, 3, 'Y'),
(6, 59, 2, 'N'),
(6, 61, 2, 'Y'),
(6, 62, 5, 'N'),
(6, 64, 1, 'N'),
(6, 66, 3, 'N'),
(6, 67, 4, 'Y'),
(6, 68, 4, 'Y'),
(6, 69, 5, 'Y'),
(6, 72, 5, 'Y'),
(6, 73, 3, 'Y'),
(6, 74, 5, 'N'),
(6, 76, 5, 'N'),
(6, 78, 1, 'Y'),
(6, 81, 3, 'N'),
(6, 82, 5, 'N'),
(6, 83, 2, 'Y'),
(6, 85, 2, 'N'),
(6, 86, 5, 'N'),
(6, 90, 5, 'N'),
(6, 94, 1, 'N'),
(6, 95, 2, 'Y'),
(6, 96, 3, 'Y'),
(6, 97, 5, 'N'),
(7, 1, 5, 'N'),
(7, 3, 4, 'Y'),
(7, 5, 2, 'N'),
(7, 8, 3, 'Y'),
(7, 9, 1, 'Y'),
(7, 12, 1, 'Y'),
(7, 15, 1, 'Y'),
(7, 16, 2, 'Y'),
(7, 17, 3, 'N'),
(7, 21, 5, 'Y'),
(7, 22, 3, 'N'),
(7, 25, 3, 'Y'),
(7, 26, 2, 'Y'),
(7, 28, 2, 'Y'),
(7, 29, 5, 'Y'),
(7, 30, 4, 'N'),
(7, 31, 3, 'Y'),
(7, 32, 2, 'Y'),
(7, 35, 5, 'Y'),
(7, 36, 5, 'N'),
(7, 37, 4, 'N'),
(7, 39, 2, 'Y'),
(7, 41, 1, 'Y'),
(7, 42, 1, 'Y'),
(7, 43, 2, 'Y'),
(7, 55, 4, 'Y'),
(7, 56, 5, 'Y'),
(7, 57, 3, 'Y'),
(7, 64, 2, 'N'),
(7, 65, 5, 'N'),
(7, 67, 1, 'N'),
(7, 69, 2, 'N'),
(7, 70, 4, 'Y'),
(7, 72, 5, 'Y'),
(7, 74, 5, 'Y'),
(7, 79, 2, 'N'),
(7, 84, 2, 'Y'),
(7, 87, 1, 'Y'),
(7, 88, 4, 'Y'),
(7, 89, 5, 'N'),
(7, 92, 2, 'Y'),
(7, 94, 4, 'N'),
(8, 2, 3, 'N'),
(8, 4, 4, 'Y'),
(8, 5, 4, 'Y'),
(8, 6, 2, 'Y'),
(8, 8, 3, 'Y'),
(8, 10, 3, 'Y'),
(8, 11, 5, 'Y'),
(8, 13, 5, 'N'),
(8, 14, 5, 'N'),
(8, 15, 4, 'N'),
(8, 16, 3, 'Y'),
(8, 21, 4, 'Y'),
(8, 23, 2, 'Y'),
(8, 26, 2, 'Y'),
(8, 27, 4, 'N'),
(8, 29, 3, 'N'),
(8, 30, 4, 'Y'),
(8, 31, 4, 'N'),
(8, 32, 1, 'N'),
(8, 34, 1, 'N'),
(8, 36, 3, 'N'),
(8, 37, 4, 'Y'),
(8, 38, 2, 'N'),
(8, 43, 5, 'Y'),
(8, 47, 4, 'N'),
(8, 48, 3, 'N'),
(8, 50, 4, 'N'),
(8, 52, 4, 'Y'),
(8, 53, 2, 'Y'),
(8, 54, 2, 'N'),
(8, 57, 1, 'Y'),
(8, 59, 5, 'N'),
(8, 64, 5, 'Y'),
(8, 65, 2, 'Y'),
(8, 67, 2, 'Y'),
(8, 70, 5, 'N'),
(8, 75, 2, 'N'),
(8, 77, 2, 'N'),
(8, 78, 1, 'Y'),
(8, 80, 1, 'N'),
(8, 86, 5, 'N'),
(8, 88, 1, 'Y'),
(8, 91, 4, 'Y'),
(8, 92, 4, 'N'),
(8, 95, 3, 'Y'),
(8, 96, 5, 'Y'),
(8, 99, 2, 'Y'),
(9, 1, 3, 'N'),
(9, 3, 3, 'Y'),
(9, 4, 1, 'Y'),
(9, 5, 2, 'Y'),
(9, 6, 1, 'N'),
(9, 8, 2, 'Y'),
(9, 9, 4, 'Y'),
(9, 10, 2, 'N'),
(9, 11, 1, 'Y'),
(9, 13, 3, 'N'),
(9, 14, 1, 'Y'),
(9, 15, 2, 'N'),
(9, 16, 5, 'N'),
(9, 20, 5, 'N'),
(9, 21, 5, 'Y'),
(9, 22, 4, 'N'),
(9, 28, 4, 'N'),
(9, 30, 5, 'N'),
(9, 32, 4, 'Y'),
(9, 45, 4, 'N'),
(9, 46, 3, 'Y'),
(9, 47, 3, 'N'),
(9, 48, 4, 'N'),
(9, 49, 3, 'Y'),
(9, 50, 1, 'Y'),
(9, 51, 5, 'Y'),
(9, 52, 3, 'Y'),
(9, 53, 4, 'Y'),
(9, 63, 4, 'N'),
(9, 70, 3, 'N'),
(9, 75, 1, 'Y'),
(9, 81, 5, 'N'),
(9, 84, 5, 'N'),
(9, 88, 1, 'N'),
(9, 91, 2, 'Y'),
(9, 92, 1, 'Y'),
(9, 93, 4, 'N'),
(9, 96, 4, 'Y'),
(9, 97, 5, 'Y'),
(9, 98, 2, 'N'),
(9, 99, 5, 'N'),
(10, 2, 4, 'Y'),
(10, 4, 1, 'N'),
(10, 6, 4, 'Y'),
(10, 7, 3, 'N'),
(10, 11, 2, 'Y'),
(10, 12, 2, 'Y'),
(10, 15, 1, 'Y'),
(10, 17, 5, 'Y'),
(10, 18, 5, 'N'),
(10, 19, 4, 'Y'),
(10, 20, 5, 'Y'),
(10, 22, 4, 'N'),
(10, 23, 3, 'N'),
(10, 24, 3, 'Y'),
(10, 25, 5, 'N'),
(10, 26, 5, 'Y'),
(10, 29, 1, 'Y'),
(10, 30, 1, 'N'),
(10, 31, 1, 'Y'),
(10, 32, 3, 'N'),
(10, 34, 3, 'Y'),
(10, 35, 4, 'N'),
(10, 38, 2, 'Y'),
(10, 40, 1, 'N'),
(10, 45, 4, 'Y'),
(10, 50, 1, 'Y'),
(10, 52, 4, 'Y'),
(10, 57, 1, 'N'),
(10, 67, 5, 'Y'),
(10, 69, 1, 'N'),
(10, 71, 3, 'N'),
(10, 72, 5, 'Y'),
(10, 79, 5, 'Y'),
(10, 81, 2, 'Y'),
(10, 82, 1, 'Y'),
(10, 83, 5, 'N'),
(10, 89, 5, 'N'),
(10, 92, 3, 'N'),
(10, 93, 1, 'Y'),
(10, 95, 3, 'N'),
(10, 96, 5, 'Y'),
(10, 97, 1, 'Y');

-- --------------------------------------------------------

--
-- Struttura della tabella `boulder`
--

CREATE TABLE `boulder` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `boulder`
--

INSERT INTO `boulder` (`id`, `nome`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Struttura della tabella `scuola`
--

CREATE TABLE `scuola` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome_scuola` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `scuola`
--

INSERT INTO `scuola` (`id`, `nome_scuola`) VALUES
(1, 'ITIS B.Castelli'),
(2, 'Calini'),
(3, 'Arnaldo'),
(4, 'Mantegna'),
(5, 'Olivieri');

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `valboulders`
--
CREATE TABLE `valboulders` (
`boulder` int(10) unsigned
,`atleti_passati` bigint(21)
,`valboulder` decimal(7,4)
);

-- --------------------------------------------------------

--
-- Struttura per la vista `valboulders`
--
DROP TABLE IF EXISTS `valboulders`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `valboulders`  AS  select `boulder`.`nome` AS `boulder`,count(`atleta_boulder`.`passato`) AS `atleti_passati`,(100 / count(`atleta_boulder`.`passato`)) AS `valboulder` from (`atleta_boulder` join `boulder`) where ((`atleta_boulder`.`id_boulder` = `boulder`.`id`) and (`atleta_boulder`.`passato` = 'Y')) group by `boulder`.`nome` ;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `atleta`
--
ALTER TABLE `atleta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_scuola` (`id_scuola`);

--
-- Indici per le tabelle `atleta_boulder`
--
ALTER TABLE `atleta_boulder`
  ADD PRIMARY KEY (`id_boulder`,`id_atleta`),
  ADD KEY `id_studente` (`id_atleta`);

--
-- Indici per le tabelle `boulder`
--
ALTER TABLE `boulder`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `scuola`
--
ALTER TABLE `scuola`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `atleta`
--
ALTER TABLE `atleta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT per la tabella `boulder`
--
ALTER TABLE `boulder`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT per la tabella `scuola`
--
ALTER TABLE `scuola`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `atleta`
--
ALTER TABLE `atleta`
  ADD CONSTRAINT `atleta_ibfk_1` FOREIGN KEY (`id_scuola`) REFERENCES `scuola` (`id`);

--
-- Limiti per la tabella `atleta_boulder`
--
ALTER TABLE `atleta_boulder`
  ADD CONSTRAINT `atleta_boulder_ibfk_1` FOREIGN KEY (`id_atleta`) REFERENCES `atleta` (`id`),
  ADD CONSTRAINT `atleta_boulder_ibfk_2` FOREIGN KEY (`id_boulder`) REFERENCES `boulder` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
