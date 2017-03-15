-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Mar 15, 2017 alle 15:20
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
(1, 'Margherita', 'Fabbri', '2001-12-11', 'F', 3, 1, 3.78303),
(2, 'Arianna', 'De', '1998-10-05', 'F', 2, 2, 3.90278),
(3, 'Elisa', 'Ferraro', '1997-02-02', 'F', 1, 3, 5.76775),
(4, 'Bianca', 'D''angelo', '2002-08-05', 'F', 5, 4, 10.2993),
(5, 'Anna', 'Romano', '2001-11-23', 'F', 3, 5, 6.4424),
(6, 'Asia', 'De', '1997-04-21', 'F', 2, 6, 3.6617),
(7, 'Emma', 'Orlando', '2002-12-14', 'F', 5, 7, 2.16667),
(8, 'Benedetta', 'Luca', '2001-04-16', 'F', 3, 8, 10.4583),
(9, 'Greta', 'Lombardo', '1998-09-17', 'F', 4, 9, 5.87829),
(10, 'Arianna', 'Martinelli', '1998-08-21', 'F', 3, 10, 4.6703),
(11, 'Elisa', 'Rosa', '2002-12-27', 'F', 1, 11, 13.0298),
(12, 'Maria', 'Guerra', '1999-12-28', 'F', 4, 12, 6.36935),
(13, 'Sofia', 'Pellegrini', '2000-11-28', 'F', 1, 13, 4),
(14, 'Angelica', 'Vitale', '2000-02-13', 'F', 3, 14, 7.84922),
(15, 'Emily', 'Barbieri', '1998-04-18', 'F', 3, 15, 10.7278),
(16, 'Ginevra', 'Grasso', '2002-10-21', 'F', 3, 16, 5.82157),
(17, 'Aurora', 'Ruggiero', '2002-07-07', 'F', 2, 17, 4.66878),
(18, 'Gaia', 'Greco', '2001-11-02', 'F', 3, 18, 7.08019),
(19, 'Ludovica', 'Parisi', '1999-05-22', 'F', 4, 19, 2.26187),
(20, 'Alessandra', 'Farina', '2001-01-02', 'F', 3, 20, 0.66666),
(21, 'Giada', 'Palmieri', '2000-12-18', 'F', 1, 21, 2.15511),
(22, 'Angelica', 'Riva', '2000-04-24', 'F', 3, 22, 6.95237),
(23, 'Serena', 'Grassi', '1999-04-20', 'F', 5, 23, 1.5625),
(24, 'Sofia', 'Leone', '1997-01-05', 'F', 4, 24, 5.13888),
(25, 'Elena', 'Ferrara', '2001-06-11', 'F', 1, 25, 1.45646),
(26, 'Emily', 'Basile', '2000-06-03', 'F', 5, 26, 5.58051),
(27, 'Caterina', 'Santoro', '2000-05-17', 'F', 2, 27, 5.3333),
(28, 'Adele', 'Vitali', '1998-01-09', 'F', 3, 28, 2.53422),
(29, 'Rebecca', 'Giuliani', '2001-03-22', 'F', 3, 29, 8.50265),
(30, 'Miriam', 'Martinelli', '1997-10-28', 'F', 1, 30, 4.04314),
(31, 'Caterina', 'Lombardo', '1998-10-22', 'F', 1, 31, 11.5396),
(32, 'Greta', 'Sanna', '1998-03-22', 'F', 5, 32, 4.35334),
(33, 'Maria', 'Longo', '2001-06-28', 'F', 3, 33, 3.78303),
(34, 'Rebecca', 'Gatti', '1997-05-24', 'F', 1, 34, 1.9111),
(35, 'Giorgia', 'Caruso', '2000-12-11', 'F', 4, 35, 5.46647),
(36, 'Miriam', 'Silvestri', '2000-10-23', 'F', 3, 36, 1.1111),
(37, 'Giorgia', 'Serra', '1998-07-10', 'F', 2, 37, 5.79925),
(38, 'Viola', 'Palmieri', '2002-08-24', 'F', 1, 38, 2.99998),
(39, 'Margherita', 'Santoro', '2001-12-22', 'F', 2, 39, 6.59733),
(40, 'Ludovica', 'Martinelli', '1999-03-18', 'F', 2, 40, 2.61902),
(41, 'Ginevra', 'Colombo', '1997-08-02', 'F', 1, 41, 2.7027),
(42, 'Angelica', 'Fontana', '1997-08-09', 'F', 4, 42, 6.09159),
(43, 'Giada', 'Sala', '1998-02-05', 'F', 1, 43, 1.97635),
(44, 'Martina', 'Vitali', '2002-06-15', 'F', 4, 44, 6.37999),
(45, 'Noemi', 'Barone', '2002-12-12', 'F', 2, 45, 3.29998),
(46, 'Rachele', 'Giordano', '1999-10-12', 'F', 5, 46, 2.7778),
(47, 'Giulia', 'Lombardo', '1997-09-22', 'F', 2, 47, 2.00901),
(48, 'Giada', 'Gatti', '1999-01-20', 'F', 4, 48, 5.40872),
(49, 'Camilla', 'Gatti', '2000-10-18', 'F', 1, 49, 7.2917),
(50, 'Giorgia', 'Piras', '1999-03-14', 'F', 5, 50, 14.4047),
(51, 'Nicolo''', 'Ferrara', '1999-05-14', 'M', 1, 51, 3.36111),
(52, 'Samuel', 'Ricci', '1997-08-22', 'M', 3, 52, 5.70823),
(53, 'Giuseppe', 'Fiore', '1999-05-27', 'M', 5, 53, 6.18197),
(54, 'Mario', 'Costa', '1997-01-04', 'M', 2, 54, 1),
(55, 'Luigi', 'Milani', '1998-05-07', 'M', 4, 55, 3.37013),
(56, 'Matteo', 'Ferretti', '2000-08-19', 'M', 5, 56, 5.90164),
(57, 'Mario', 'Valentini', '2001-01-18', 'M', 2, 57, 8.07737),
(58, 'Diego', 'De', '1999-10-06', 'M', 5, 58, 3.42481),
(59, 'Diego', 'Bianchi', '2002-03-17', 'M', 4, 59, 3.875),
(60, 'Giuseppe', 'Russo', '2001-05-07', 'M', 3, 60, 2.375),
(61, 'Nicola', 'Palumbo', '1997-05-02', 'M', 2, 61, 4.5139),
(62, 'Leonardo', 'Luca', '1999-11-20', 'M', 3, 62, 2.16666),
(63, 'Giacomo', 'Fabbri', '1997-01-20', 'M', 4, 63, 2.66666),
(64, 'Gioele', 'Testa', '1997-11-27', 'M', 1, 64, 4.91067),
(65, 'Lorenzo', 'Morelli', '1999-04-19', 'M', 3, 65, 2.3625),
(66, 'Diego', 'Barbieri', '1998-11-26', 'M', 2, 66, 0.55556),
(67, 'Edoardo', 'Marini', '2001-08-18', 'M', 5, 67, 6.25691),
(68, 'Stefano', 'Orlando', '1998-05-01', 'M', 3, 68, 4.9029),
(69, 'Giulio', 'Milani', '2001-01-21', 'M', 5, 69, 3.88886),
(70, 'Christian', 'Farina', '1998-01-04', 'M', 2, 70, 1.47567),
(71, 'Simone', 'De', '1997-02-17', 'M', 4, 71, 1),
(72, 'Elia', 'Barbieri', '2002-03-20', 'M', 3, 72, 1.77862),
(73, 'Mattia', 'Rossetti', '1999-12-13', 'M', 1, 73, 2.75131),
(74, 'Simone', 'Messina', '2000-07-17', 'M', 4, 74, 10.895),
(75, 'Gabriel', 'Santis', '2000-11-25', 'M', 2, 75, 6.30003),
(76, 'Francesco', 'Silvestri', '2002-07-07', 'M', 5, 76, 2),
(77, 'Samuele', 'Caruso', '2001-02-03', 'M', 1, 77, 4.87498),
(78, 'Daniel', 'Mariani', '2001-10-16', 'M', 5, 78, 16.6055),
(79, 'Giacomo', 'Palmieri', '1997-02-21', 'M', 5, 79, 1.1111),
(80, 'Jacopo', 'Grasso', '1997-08-26', 'M', 2, 80, 2.42855),
(81, 'Nicola', 'Fiore', '2002-11-26', 'M', 2, 81, 7.125),
(82, 'Vincenzo', 'Ferrari', '2002-11-07', 'M', 5, 82, 7.02373),
(83, 'Andrea', 'Palmieri', '1998-01-10', 'M', 4, 83, 4.41323),
(84, 'Daniel', 'Russo', '2001-09-27', 'M', 4, 84, 2.74025),
(85, 'Luigi', 'Palumbo', '1998-07-05', 'M', 5, 85, 5.9682),
(86, 'Federico', 'Gallo', '1997-02-26', 'M', 2, 86, 4.85709),
(87, 'Tommaso', 'Morelli', '1997-11-02', 'M', 1, 87, 3.7027),
(88, 'Angelo', 'Grasso', '1999-02-17', 'M', 3, 88, 5.75304),
(89, 'Emanuele', 'Bellini', '1997-03-04', 'M', 2, 89, 0),
(90, 'Raffaele', 'Palmieri', '2001-09-24', 'M', 1, 90, 0),
(91, 'Lorenzo', 'Monti', '2002-12-02', 'M', 2, 91, 5.41665),
(92, 'Riccardo', 'Conti', '2002-01-04', 'M', 5, 92, 5.51805),
(93, 'Davide', 'Basile', '1998-03-28', 'M', 2, 93, 6.5405),
(94, 'Nicola', 'Fontana', '1997-12-08', 'M', 3, 94, 0),
(95, 'Alessandro', 'Ruggiero', '1997-07-17', 'M', 3, 95, 5.7639),
(96, 'Stefano', 'Lombardi', '2002-10-22', 'M', 5, 96, 4.92592),
(97, 'Lorenzo', 'Basile', '1999-11-01', 'M', 4, 97, 8.88091),
(98, 'Diego', 'Rossetti', '1999-03-13', 'M', 5, 98, 1),
(99, 'Diego', 'Costantini', '2000-10-27', 'M', 5, 99, 1.5625);

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
(1, 1, 5, 'N'),
(1, 5, 4, 'Y'),
(1, 7, 2, 'N'),
(1, 8, 1, 'Y'),
(1, 11, 4, 'N'),
(1, 13, 5, 'N'),
(1, 14, 3, 'Y'),
(1, 15, 3, 'Y'),
(1, 17, 5, 'Y'),
(1, 18, 3, 'Y'),
(1, 20, 5, 'N'),
(1, 21, 4, 'Y'),
(1, 23, 2, 'N'),
(1, 27, 1, 'Y'),
(1, 28, 2, 'Y'),
(1, 29, 2, 'Y'),
(1, 30, 4, 'N'),
(1, 32, 5, 'N'),
(1, 33, 1, 'N'),
(1, 34, 2, 'N'),
(1, 35, 1, 'N'),
(1, 36, 3, 'Y'),
(1, 37, 2, 'Y'),
(1, 38, 5, 'N'),
(1, 39, 4, 'Y'),
(1, 40, 2, 'Y'),
(1, 41, 3, 'N'),
(1, 42, 3, 'Y'),
(1, 44, 5, 'N'),
(1, 45, 5, 'Y'),
(1, 48, 2, 'N'),
(1, 50, 1, 'Y'),
(1, 51, 2, 'N'),
(1, 52, 5, 'Y'),
(1, 55, 4, 'Y'),
(1, 56, 2, 'Y'),
(1, 57, 3, 'N'),
(1, 58, 5, 'N'),
(1, 59, 4, 'Y'),
(1, 60, 4, 'N'),
(1, 61, 5, 'N'),
(1, 62, 3, 'N'),
(1, 63, 2, 'Y'),
(1, 64, 1, 'Y'),
(1, 65, 5, 'N'),
(1, 66, 3, 'N'),
(1, 67, 1, 'Y'),
(1, 68, 1, 'N'),
(1, 69, 1, 'Y'),
(1, 70, 1, 'N'),
(1, 73, 3, 'Y'),
(1, 74, 5, 'Y'),
(1, 75, 2, 'N'),
(1, 77, 4, 'Y'),
(1, 82, 4, 'Y'),
(1, 83, 1, 'Y'),
(1, 84, 2, 'N'),
(1, 85, 1, 'N'),
(1, 86, 5, 'Y'),
(1, 89, 3, 'N'),
(1, 92, 2, 'N'),
(1, 93, 5, 'Y'),
(1, 95, 4, 'N'),
(1, 96, 2, 'Y'),
(1, 97, 4, 'N'),
(1, 98, 1, 'N'),
(2, 1, 1, 'Y'),
(2, 2, 4, 'N'),
(2, 3, 2, 'Y'),
(2, 4, 1, 'N'),
(2, 5, 2, 'N'),
(2, 6, 5, 'N'),
(2, 7, 2, 'Y'),
(2, 8, 1, 'N'),
(2, 9, 5, 'Y'),
(2, 11, 1, 'Y'),
(2, 14, 5, 'Y'),
(2, 15, 5, 'Y'),
(2, 16, 1, 'Y'),
(2, 17, 2, 'Y'),
(2, 18, 3, 'Y'),
(2, 19, 2, 'Y'),
(2, 20, 2, 'N'),
(2, 21, 3, 'N'),
(2, 22, 3, 'Y'),
(2, 26, 2, 'Y'),
(2, 27, 3, 'N'),
(2, 28, 1, 'N'),
(2, 29, 1, 'N'),
(2, 30, 2, 'Y'),
(2, 31, 2, 'Y'),
(2, 32, 5, 'Y'),
(2, 33, 1, 'Y'),
(2, 34, 3, 'N'),
(2, 36, 5, 'N'),
(2, 38, 3, 'N'),
(2, 39, 1, 'Y'),
(2, 40, 3, 'Y'),
(2, 42, 4, 'Y'),
(2, 43, 5, 'N'),
(2, 44, 1, 'Y'),
(2, 46, 3, 'N'),
(2, 47, 1, 'N'),
(2, 48, 4, 'Y'),
(2, 50, 5, 'Y'),
(2, 51, 4, 'N'),
(2, 52, 5, 'Y'),
(2, 53, 1, 'N'),
(2, 54, 1, 'Y'),
(2, 57, 3, 'Y'),
(2, 58, 2, 'N'),
(2, 60, 2, 'N'),
(2, 61, 5, 'Y'),
(2, 62, 4, 'N'),
(2, 64, 3, 'Y'),
(2, 66, 5, 'N'),
(2, 68, 1, 'Y'),
(2, 69, 5, 'Y'),
(2, 71, 4, 'Y'),
(2, 72, 5, 'Y'),
(2, 73, 4, 'Y'),
(2, 74, 5, 'Y'),
(2, 75, 3, 'N'),
(2, 76, 4, 'Y'),
(2, 77, 3, 'Y'),
(2, 78, 5, 'N'),
(2, 80, 2, 'Y'),
(2, 81, 5, 'Y'),
(2, 82, 1, 'Y'),
(2, 83, 2, 'Y'),
(2, 84, 1, 'N'),
(2, 85, 1, 'Y'),
(2, 86, 1, 'Y'),
(2, 87, 2, 'N'),
(2, 88, 3, 'Y'),
(2, 89, 4, 'N'),
(2, 91, 3, 'N'),
(2, 92, 4, 'N'),
(2, 94, 2, 'N'),
(2, 95, 4, 'Y'),
(2, 96, 1, 'N'),
(2, 97, 4, 'Y'),
(3, 2, 2, 'Y'),
(3, 3, 5, 'Y'),
(3, 4, 3, 'N'),
(3, 5, 4, 'N'),
(3, 6, 1, 'Y'),
(3, 7, 3, 'N'),
(3, 8, 1, 'N'),
(3, 11, 3, 'Y'),
(3, 12, 2, 'Y'),
(3, 14, 3, 'N'),
(3, 15, 2, 'Y'),
(3, 16, 4, 'Y'),
(3, 24, 3, 'Y'),
(3, 25, 5, 'Y'),
(3, 27, 2, 'Y'),
(3, 29, 5, 'Y'),
(3, 30, 4, 'Y'),
(3, 31, 1, 'Y'),
(3, 32, 1, 'N'),
(3, 33, 5, 'N'),
(3, 34, 5, 'Y'),
(3, 37, 1, 'N'),
(3, 38, 3, 'N'),
(3, 40, 3, 'N'),
(3, 41, 4, 'N'),
(3, 42, 2, 'Y'),
(3, 43, 3, 'Y'),
(3, 45, 4, 'Y'),
(3, 46, 1, 'N'),
(3, 47, 3, 'Y'),
(3, 49, 4, 'N'),
(3, 52, 5, 'Y'),
(3, 53, 5, 'Y'),
(3, 55, 2, 'N'),
(3, 56, 4, 'N'),
(3, 57, 1, 'N'),
(3, 59, 5, 'Y'),
(3, 60, 5, 'N'),
(3, 64, 3, 'Y'),
(3, 65, 3, 'N'),
(3, 66, 3, 'N'),
(3, 68, 2, 'Y'),
(3, 71, 4, 'N'),
(3, 72, 2, 'N'),
(3, 74, 2, 'Y'),
(3, 76, 2, 'Y'),
(3, 78, 1, 'Y'),
(3, 80, 1, 'Y'),
(3, 81, 5, 'N'),
(3, 82, 5, 'N'),
(3, 83, 5, 'Y'),
(3, 85, 1, 'N'),
(3, 86, 2, 'N'),
(3, 87, 4, 'Y'),
(3, 88, 4, 'Y'),
(3, 89, 3, 'N'),
(3, 92, 1, 'Y'),
(3, 93, 2, 'Y'),
(3, 95, 1, 'Y'),
(3, 96, 1, 'Y'),
(3, 97, 2, 'Y'),
(4, 1, 2, 'Y'),
(4, 2, 5, 'Y'),
(4, 4, 1, 'N'),
(4, 5, 3, 'N'),
(4, 7, 1, 'N'),
(4, 8, 1, 'Y'),
(4, 9, 4, 'N'),
(4, 10, 1, 'N'),
(4, 11, 2, 'Y'),
(4, 12, 1, 'N'),
(4, 13, 1, 'Y'),
(4, 17, 2, 'Y'),
(4, 18, 1, 'Y'),
(4, 19, 5, 'N'),
(4, 20, 4, 'N'),
(4, 21, 4, 'Y'),
(4, 22, 2, 'Y'),
(4, 25, 2, 'N'),
(4, 26, 3, 'N'),
(4, 27, 1, 'N'),
(4, 29, 4, 'N'),
(4, 30, 2, 'Y'),
(4, 31, 3, 'N'),
(4, 32, 5, 'N'),
(4, 34, 4, 'N'),
(4, 36, 1, 'N'),
(4, 37, 2, 'Y'),
(4, 38, 3, 'Y'),
(4, 39, 4, 'Y'),
(4, 41, 1, 'Y'),
(4, 43, 2, 'Y'),
(4, 44, 1, 'N'),
(4, 45, 3, 'N'),
(4, 46, 4, 'N'),
(4, 48, 1, 'Y'),
(4, 49, 1, 'N'),
(4, 50, 4, 'Y'),
(4, 51, 4, 'Y'),
(4, 52, 3, 'Y'),
(4, 53, 3, 'N'),
(4, 54, 5, 'N'),
(4, 55, 2, 'Y'),
(4, 56, 4, 'Y'),
(4, 57, 1, 'Y'),
(4, 58, 3, 'Y'),
(4, 59, 1, 'N'),
(4, 63, 2, 'Y'),
(4, 64, 1, 'N'),
(4, 65, 5, 'Y'),
(4, 68, 5, 'N'),
(4, 72, 4, 'N'),
(4, 73, 2, 'Y'),
(4, 74, 1, 'Y'),
(4, 75, 3, 'Y'),
(4, 77, 3, 'Y'),
(4, 78, 1, 'Y'),
(4, 80, 3, 'N'),
(4, 82, 1, 'Y'),
(4, 84, 4, 'N'),
(4, 85, 1, 'N'),
(4, 87, 4, 'N'),
(4, 88, 4, 'Y'),
(4, 90, 3, 'N'),
(4, 94, 3, 'N'),
(4, 96, 4, 'N'),
(4, 97, 4, 'N'),
(4, 99, 3, 'N'),
(5, 2, 3, 'Y'),
(5, 3, 5, 'Y'),
(5, 4, 1, 'Y'),
(5, 5, 1, 'Y'),
(5, 7, 3, 'Y'),
(5, 8, 2, 'N'),
(5, 14, 5, 'N'),
(5, 16, 2, 'Y'),
(5, 18, 2, 'N'),
(5, 19, 1, 'N'),
(5, 21, 4, 'Y'),
(5, 22, 1, 'Y'),
(5, 23, 2, 'N'),
(5, 24, 2, 'Y'),
(5, 25, 5, 'N'),
(5, 28, 5, 'Y'),
(5, 29, 2, 'N'),
(5, 30, 3, 'N'),
(5, 35, 4, 'Y'),
(5, 36, 5, 'N'),
(5, 41, 4, 'N'),
(5, 43, 3, 'Y'),
(5, 45, 5, 'Y'),
(5, 46, 4, 'N'),
(5, 47, 3, 'N'),
(5, 50, 2, 'Y'),
(5, 52, 1, 'N'),
(5, 53, 4, 'N'),
(5, 54, 4, 'Y'),
(5, 55, 1, 'N'),
(5, 56, 2, 'Y'),
(5, 60, 4, 'N'),
(5, 62, 3, 'Y'),
(5, 65, 3, 'Y'),
(5, 67, 5, 'N'),
(5, 68, 1, 'N'),
(5, 69, 4, 'N'),
(5, 70, 5, 'Y'),
(5, 71, 4, 'Y'),
(5, 72, 4, 'N'),
(5, 73, 5, 'N'),
(5, 74, 2, 'Y'),
(5, 75, 5, 'Y'),
(5, 76, 2, 'N'),
(5, 77, 3, 'N'),
(5, 79, 4, 'N'),
(5, 80, 4, 'N'),
(5, 85, 2, 'Y'),
(5, 86, 3, 'Y'),
(5, 87, 2, 'N'),
(5, 88, 4, 'N'),
(5, 90, 3, 'N'),
(5, 91, 4, 'N'),
(5, 94, 4, 'N'),
(5, 95, 2, 'Y'),
(5, 97, 5, 'N'),
(5, 98, 4, 'Y'),
(6, 1, 3, 'Y'),
(6, 2, 4, 'Y'),
(6, 3, 2, 'Y'),
(6, 5, 1, 'Y'),
(6, 6, 1, 'N'),
(6, 7, 2, 'N'),
(6, 8, 4, 'N'),
(6, 9, 2, 'N'),
(6, 10, 3, 'Y'),
(6, 12, 2, 'N'),
(6, 14, 3, 'N'),
(6, 15, 3, 'Y'),
(6, 16, 3, 'N'),
(6, 17, 5, 'Y'),
(6, 21, 4, 'N'),
(6, 22, 5, 'N'),
(6, 23, 4, 'Y'),
(6, 24, 4, 'Y'),
(6, 25, 5, 'Y'),
(6, 26, 4, 'Y'),
(6, 29, 5, 'N'),
(6, 31, 1, 'Y'),
(6, 32, 2, 'Y'),
(6, 33, 3, 'Y'),
(6, 35, 3, 'Y'),
(6, 36, 2, 'N'),
(6, 39, 5, 'Y'),
(6, 40, 4, 'N'),
(6, 41, 5, 'N'),
(6, 42, 5, 'Y'),
(6, 43, 3, 'Y'),
(6, 44, 3, 'Y'),
(6, 45, 2, 'N'),
(6, 46, 2, 'Y'),
(6, 48, 4, 'Y'),
(6, 49, 1, 'Y'),
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
(6, 63, 1, 'N'),
(6, 64, 4, 'Y'),
(6, 65, 1, 'Y'),
(6, 66, 5, 'Y'),
(6, 67, 4, 'Y'),
(6, 68, 4, 'Y'),
(6, 69, 3, 'Y'),
(6, 72, 3, 'N'),
(6, 73, 3, 'Y'),
(6, 74, 3, 'Y'),
(6, 76, 5, 'N'),
(6, 78, 5, 'Y'),
(6, 81, 3, 'N'),
(6, 82, 5, 'N'),
(6, 83, 2, 'N'),
(6, 84, 2, 'Y'),
(6, 85, 2, 'N'),
(6, 86, 1, 'Y'),
(6, 87, 1, 'Y'),
(6, 90, 5, 'N'),
(6, 91, 5, 'Y'),
(6, 94, 1, 'N'),
(6, 95, 2, 'Y'),
(6, 96, 3, 'Y'),
(6, 97, 3, 'Y'),
(6, 99, 4, 'Y'),
(7, 1, 5, 'N'),
(7, 3, 4, 'Y'),
(7, 4, 2, 'Y'),
(7, 5, 2, 'N'),
(7, 8, 5, 'Y'),
(7, 9, 1, 'Y'),
(7, 10, 1, 'Y'),
(7, 11, 4, 'N'),
(7, 12, 1, 'Y'),
(7, 15, 1, 'Y'),
(7, 16, 2, 'Y'),
(7, 17, 2, 'Y'),
(7, 18, 5, 'Y'),
(7, 21, 5, 'Y'),
(7, 22, 3, 'N'),
(7, 25, 3, 'Y'),
(7, 26, 2, 'Y'),
(7, 27, 2, 'N'),
(7, 28, 3, 'Y'),
(7, 29, 1, 'Y'),
(7, 30, 4, 'N'),
(7, 31, 4, 'Y'),
(7, 32, 2, 'Y'),
(7, 35, 5, 'Y'),
(7, 36, 5, 'N'),
(7, 37, 2, 'Y'),
(7, 38, 3, 'N'),
(7, 39, 2, 'Y'),
(7, 41, 1, 'Y'),
(7, 42, 1, 'Y'),
(7, 43, 2, 'Y'),
(7, 44, 4, 'Y'),
(7, 45, 5, 'Y'),
(7, 47, 4, 'Y'),
(7, 51, 2, 'N'),
(7, 55, 3, 'N'),
(7, 56, 5, 'Y'),
(7, 57, 4, 'N'),
(7, 58, 5, 'Y'),
(7, 64, 3, 'N'),
(7, 65, 2, 'Y'),
(7, 67, 1, 'N'),
(7, 68, 2, 'Y'),
(7, 69, 4, 'N'),
(7, 70, 4, 'Y'),
(7, 71, 1, 'N'),
(7, 72, 5, 'Y'),
(7, 74, 5, 'Y'),
(7, 76, 5, 'N'),
(7, 77, 3, 'N'),
(7, 78, 1, 'Y'),
(7, 79, 2, 'N'),
(7, 83, 2, 'Y'),
(7, 84, 2, 'Y'),
(7, 87, 1, 'Y'),
(7, 88, 4, 'Y'),
(7, 89, 3, 'N'),
(7, 92, 2, 'Y'),
(7, 93, 5, 'Y'),
(7, 94, 4, 'Y'),
(8, 1, 3, 'Y'),
(8, 2, 3, 'N'),
(8, 4, 4, 'Y'),
(8, 5, 4, 'Y'),
(8, 6, 2, 'Y'),
(8, 8, 3, 'Y'),
(8, 9, 2, 'Y'),
(8, 10, 3, 'Y'),
(8, 11, 5, 'Y'),
(8, 13, 5, 'N'),
(8, 14, 5, 'N'),
(8, 15, 4, 'N'),
(8, 16, 3, 'Y'),
(8, 17, 3, 'Y'),
(8, 18, 1, 'Y'),
(8, 21, 4, 'Y'),
(8, 23, 2, 'Y'),
(8, 24, 3, 'N'),
(8, 26, 2, 'Y'),
(8, 27, 4, 'N'),
(8, 29, 4, 'N'),
(8, 30, 4, 'Y'),
(8, 31, 4, 'N'),
(8, 32, 1, 'N'),
(8, 33, 4, 'Y'),
(8, 34, 2, 'N'),
(8, 36, 3, 'Y'),
(8, 37, 3, 'N'),
(8, 38, 2, 'N'),
(8, 39, 4, 'N'),
(8, 41, 1, 'N'),
(8, 42, 4, 'N'),
(8, 43, 5, 'Y'),
(8, 44, 4, 'N'),
(8, 46, 5, 'N'),
(8, 47, 4, 'N'),
(8, 48, 3, 'Y'),
(8, 49, 1, 'Y'),
(8, 50, 4, 'N'),
(8, 52, 4, 'Y'),
(8, 53, 2, 'Y'),
(8, 54, 2, 'N'),
(8, 55, 4, 'N'),
(8, 57, 1, 'Y'),
(8, 58, 5, 'Y'),
(8, 59, 5, 'N'),
(8, 60, 3, 'Y'),
(8, 61, 1, 'Y'),
(8, 62, 1, 'N'),
(8, 64, 5, 'Y'),
(8, 65, 2, 'Y'),
(8, 67, 3, 'Y'),
(8, 68, 2, 'N'),
(8, 70, 3, 'Y'),
(8, 75, 2, 'N'),
(8, 77, 3, 'Y'),
(8, 78, 1, 'Y'),
(8, 80, 1, 'N'),
(8, 81, 5, 'Y'),
(8, 83, 3, 'Y'),
(8, 85, 2, 'Y'),
(8, 86, 5, 'N'),
(8, 88, 3, 'N'),
(8, 91, 5, 'N'),
(8, 92, 4, 'N'),
(8, 95, 3, 'Y'),
(8, 96, 1, 'N'),
(8, 98, 3, 'Y'),
(8, 99, 2, 'Y'),
(9, 1, 4, 'N'),
(9, 2, 4, 'Y'),
(9, 3, 4, 'N'),
(9, 4, 1, 'Y'),
(9, 5, 2, 'Y'),
(9, 6, 3, 'N'),
(9, 7, 5, 'Y'),
(9, 8, 4, 'N'),
(9, 9, 4, 'Y'),
(9, 10, 2, 'N'),
(9, 11, 1, 'Y'),
(9, 13, 3, 'N'),
(9, 14, 1, 'Y'),
(9, 15, 2, 'Y'),
(9, 16, 5, 'N'),
(9, 20, 5, 'N'),
(9, 21, 5, 'N'),
(9, 22, 4, 'N'),
(9, 27, 2, 'N'),
(9, 28, 4, 'N'),
(9, 30, 5, 'Y'),
(9, 32, 4, 'Y'),
(9, 35, 2, 'N'),
(9, 40, 5, 'N'),
(9, 42, 5, 'N'),
(9, 45, 3, 'N'),
(9, 46, 3, 'Y'),
(9, 47, 1, 'Y'),
(9, 48, 4, 'N'),
(9, 49, 3, 'Y'),
(9, 50, 1, 'Y'),
(9, 51, 5, 'Y'),
(9, 52, 4, 'Y'),
(9, 53, 2, 'Y'),
(9, 56, 5, 'N'),
(9, 57, 3, 'N'),
(9, 59, 3, 'N'),
(9, 60, 5, 'Y'),
(9, 63, 4, 'N'),
(9, 68, 3, 'N'),
(9, 70, 3, 'N'),
(9, 73, 1, 'Y'),
(9, 75, 1, 'Y'),
(9, 78, 5, 'N'),
(9, 81, 5, 'N'),
(9, 83, 1, 'N'),
(9, 84, 5, 'N'),
(9, 86, 4, 'N'),
(9, 88, 1, 'N'),
(9, 91, 2, 'Y'),
(9, 92, 1, 'Y'),
(9, 93, 1, 'Y'),
(9, 96, 4, 'Y'),
(9, 97, 5, 'Y'),
(9, 98, 2, 'N'),
(9, 99, 5, 'N'),
(10, 2, 2, 'N'),
(10, 4, 1, 'N'),
(10, 6, 4, 'Y'),
(10, 7, 2, 'N'),
(10, 8, 4, 'Y'),
(10, 11, 2, 'Y'),
(10, 12, 2, 'Y'),
(10, 15, 1, 'Y'),
(10, 17, 5, 'Y'),
(10, 18, 5, 'N'),
(10, 19, 4, 'Y'),
(10, 20, 5, 'Y'),
(10, 21, 2, 'N'),
(10, 22, 4, 'N'),
(10, 23, 3, 'N'),
(10, 24, 5, 'Y'),
(10, 25, 2, 'N'),
(10, 26, 5, 'Y'),
(10, 28, 4, 'Y'),
(10, 29, 1, 'Y'),
(10, 30, 5, 'N'),
(10, 31, 1, 'Y'),
(10, 32, 3, 'N'),
(10, 33, 1, 'N'),
(10, 34, 3, 'Y'),
(10, 35, 5, 'N'),
(10, 38, 2, 'Y'),
(10, 40, 1, 'N'),
(10, 41, 3, 'Y'),
(10, 44, 3, 'Y'),
(10, 45, 4, 'Y'),
(10, 47, 3, 'Y'),
(10, 48, 1, 'N'),
(10, 50, 1, 'Y'),
(10, 51, 4, 'Y'),
(10, 52, 4, 'Y'),
(10, 54, 3, 'N'),
(10, 56, 2, 'N'),
(10, 57, 1, 'N'),
(10, 58, 2, 'Y'),
(10, 60, 3, 'N'),
(10, 61, 2, 'N'),
(10, 64, 2, 'N'),
(10, 67, 5, 'Y'),
(10, 69, 1, 'N'),
(10, 71, 3, 'N'),
(10, 72, 5, 'Y'),
(10, 73, 1, 'N'),
(10, 74, 3, 'N'),
(10, 77, 2, 'Y'),
(10, 78, 4, 'N'),
(10, 79, 3, 'Y'),
(10, 80, 3, 'Y'),
(10, 81, 1, 'N'),
(10, 82, 5, 'Y'),
(10, 83, 5, 'N'),
(10, 85, 3, 'Y'),
(10, 86, 5, 'N'),
(10, 89, 5, 'N'),
(10, 91, 1, 'Y'),
(10, 92, 3, 'N'),
(10, 93, 3, 'Y'),
(10, 94, 5, 'Y'),
(10, 95, 3, 'N'),
(10, 96, 5, 'Y'),
(10, 97, 1, 'Y'),
(10, 99, 1, 'N');

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `atleta_boulder_punteggio`
--
CREATE TABLE `atleta_boulder_punteggio` (
`atletaID` int(10) unsigned
,`boulderID` int(10) unsigned
,`tentativi` int(11)
,`punteggio` decimal(11,8)
);

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
-- Struttura stand-in per le viste `classifica_global`
--
CREATE TABLE `classifica_global` (
`pettorina` int(10) unsigned
,`nome` varchar(60)
,`cognome` varchar(60)
,`anno` int(4)
,`punteggio` decimal(33,8)
);

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
-- Struttura per la vista `atleta_boulder_punteggio`
--
DROP TABLE IF EXISTS `atleta_boulder_punteggio`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `atleta_boulder_punteggio`  AS  select `atleta_boulder`.`id_atleta` AS `atletaID`,`atleta_boulder`.`id_boulder` AS `boulderID`,`atleta_boulder`.`n_tentativi` AS `tentativi`,(`valboulders`.`valboulder` / `atleta_boulder`.`n_tentativi`) AS `punteggio` from (`atleta_boulder` join `valboulders`) where ((`valboulders`.`boulder` = `atleta_boulder`.`id_boulder`) and (`atleta_boulder`.`passato` = 'Y')) order by `atleta_boulder`.`id_atleta` ;

-- --------------------------------------------------------

--
-- Struttura per la vista `classifica_global`
--
DROP TABLE IF EXISTS `classifica_global`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `classifica_global`  AS  select `atleta`.`casacca` AS `pettorina`,`atleta`.`nome` AS `nome`,`atleta`.`cognome` AS `cognome`,year(`atleta`.`data_nascita`) AS `anno`,sum(`atleta_boulder_punteggio`.`punteggio`) AS `punteggio` from (`atleta_boulder_punteggio` join `atleta`) where (`atleta_boulder_punteggio`.`atletaID` = `atleta`.`id`) group by `atleta_boulder_punteggio`.`atletaID` order by sum(`atleta_boulder_punteggio`.`punteggio`) desc ;

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
