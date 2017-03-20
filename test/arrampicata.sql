-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Mar 20, 2017 alle 19:02
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
  `casacca` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `atleta`
--

INSERT INTO `atleta` (`id`, `nome`, `cognome`, `data_nascita`, `sesso`, `id_scuola`, `casacca`) VALUES
(1, 'Jacopo', 'Mutti', '2000-07-29', 'M', 1, 31),
(2, 'Nicola', 'Jacotti', '2000-11-30', 'M', 1, 32),
(3, 'Jacopo', 'Gatta', '1999-03-02', 'M', 1, 33),
(4, 'Andrea', 'Malandra', '1999-11-09', 'M', 1, 34),
(5, 'Davide', 'Tracino', '2000-09-06', 'M', 1, 35),
(6, 'Tommaso', 'Meccia', '1996-08-02', 'M', 1, 36),
(7, 'Matteo', 'Marcolini', '1998-02-27', 'M', 1, 37),
(8, 'Giovanni', 'Buizza', '1997-07-22', 'M', 1, 38),
(9, 'Andrea', 'Soave', '1998-04-01', 'M', 1, 39),
(10, 'Giuditta', 'De Lorenzi', '2000-04-08', 'F', 1, 40),
(11, 'Greta', 'Baroni', '2001-11-08', 'F', 1, 41),
(12, 'Ester', 'Rubiano', '2001-08-26', 'F', 1, 42),
(13, 'Martina', 'Piccaroletti', '1997-03-22', 'F', 1, 43),
(14, 'Silvia', 'Giovita', '1997-12-31', 'F', 1, 44),
(15, 'Elena', 'Migliorati', '1996-02-06', 'F', 1, 45),
(16, 'Francesca', 'Carinando', '1997-07-02', 'F', 1, 46),
(17, 'Elena', 'Brognoli', '1997-09-25', 'F', 1, 47),
(18, 'Sara', 'Antonelli', '1996-11-12', 'F', 1, 48),
(19, 'Alice', 'Luterotti', '1997-04-11', 'F', 1, 49),
(20, 'Fabio', 'Parolari', '1999-06-10', 'M', 2, 50),
(21, 'Marco', 'Forno', '2000-01-05', 'M', 2, 51),
(22, 'Michele', 'Borzaga', '1999-07-05', 'M', 2, 52),
(23, 'Luca', 'Baitelli', '1999-02-02', 'M', 2, 53),
(24, 'Jury', 'Boninchi', '1998-05-29', 'M', 2, 54),
(25, 'Daniele', 'Lo Russo', '1997-05-06', 'M', 2, 55),
(26, 'Matteo', 'Morandini', '1998-08-04', 'M', 2, 56),
(27, 'Matteo', 'Silini', '1997-01-01', 'M', 2, 57),
(28, 'Marco', 'Toselli', '1997-12-18', 'M', 2, 58),
(29, 'Paola', 'Sacchetto', '1999-05-05', 'F', 2, 59),
(30, 'Marianna', 'Mondini', '1999-06-12', 'F', 2, 60),
(31, 'Matteo', 'Cenini', '2000-07-08', 'M', 2, 61),
(32, 'William', 'Cretti', '2001-01-01', 'M', 2, 62),
(33, 'Miriam', 'Bozzi', '1998-01-06', 'F', 2, 63),
(34, 'Federico', 'Agostini', '2001-05-23', 'M', 3, 1),
(35, 'Andrea', 'Spadacini', '2000-10-16', 'M', 3, 2),
(36, 'Franco', 'Sacristani', '2000-06-27', 'M', 3, 3),
(37, 'Matteo', 'Gregorini', '1997-01-10', 'M', 3, 4),
(38, 'Giovanni', 'Gheza', '1997-05-07', 'M', 3, 5),
(39, 'Angela', 'Pedretti', '1999-07-09', 'M', 3, 6),
(40, 'Francesca', 'Pedretti', '1999-07-09', 'M', 3, 7),
(41, 'Giulia', 'Grazioli', '2000-03-18', 'F', 3, 8),
(42, 'Lorenzo', 'Moreschi', '2000-02-28', 'M', 4, 9),
(43, 'Michele', 'Tagliani', '2001-03-28', 'M', 4, 10),
(44, 'Giulian', 'Signorini', '2001-03-12', 'M', 4, 11),
(45, 'Stefano', 'Belleri', '1998-05-18', 'M', 4, 12),
(46, 'Nicolò', 'Ciusani', '1998-05-05', 'M', 4, 13),
(47, 'Andrea', 'Zanetti', '1998-11-24', 'M', 4, 14),
(48, 'Paolo', 'Ribola', '1998-12-09', 'M', 4, 15),
(49, 'Luca', 'Rosa', '1997-03-04', 'M', 4, 16),
(50, 'Carola', 'Calabrese', '2001-11-13', 'F', 5, 28),
(51, 'Sara', 'Morandini', '2001-04-02', 'F', 5, 29),
(52, 'Gaia', 'Abeni', '2001-05-08', 'F', 5, 30),
(53, 'Andrea', 'Dallolio', '2001-01-08', 'M', 6, 17),
(54, 'Giorgio', 'Isoli', '2001-02-12', 'M', 6, 18),
(55, 'Nicolò', 'Poffa', '2001-10-03', 'M', 6, 19),
(56, 'Elena', 'Amaglio', '2000-06-02', 'F', 6, 20),
(57, 'Giovanna', 'Mori', '1999-03-04', 'F', 6, 21),
(58, 'Giada', 'Poma', '2000-12-10', 'F', 6, 22),
(59, 'Lorenzo', 'Pelizzari', '1997-11-29', 'M', 6, 23),
(60, 'Gianluca', 'Virgenti', '1997-01-03', 'M', 6, 24),
(61, 'Lorenzo', 'Borghini', '1997-04-21', 'M', 6, 25),
(62, 'Silvia', 'Arici', '1997-04-13', 'F', 6, 26),
(63, 'Elmelissa', 'Velaj', '1998-09-21', 'F', 6, 27),
(64, 'Giulio', 'Peloso', '2000-01-01', 'M', 7, 64),
(65, 'Leonardo', 'Sabbadini', '2000-04-01', 'M', 7, 65),
(66, 'Nicola', 'Scotti', '2000-04-01', 'M', 7, 66),
(67, 'Alessandro', 'Pasqualini', '1998-04-04', 'M', 7, 67),
(68, 'Gabriele', 'Taboni', '1998-04-10', 'M', 7, 68),
(69, 'Manuel', 'Pe', '1998-04-04', 'M', 7, 69);

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
(1, 1, 3, 'N'),
(1, 2, 0, 'N'),
(1, 3, 0, 'N'),
(1, 4, 2, 'N'),
(1, 5, 0, 'N'),
(1, 6, 3, 'N'),
(1, 7, 0, 'N'),
(1, 8, 0, 'N'),
(1, 9, 0, 'N'),
(1, 10, 1, 'N'),
(1, 11, 0, 'N'),
(1, 12, 0, 'N'),
(1, 13, 0, 'N'),
(1, 14, 1, 'N'),
(1, 15, 1, 'N'),
(1, 16, 1, 'N'),
(1, 17, 0, 'N'),
(1, 18, 3, 'N'),
(1, 19, 1, 'N'),
(1, 20, 5, 'N'),
(1, 21, 0, 'N'),
(1, 22, 5, 'N'),
(1, 23, 5, 'Y'),
(1, 24, 3, 'N'),
(1, 25, 1, 'Y'),
(1, 26, 1, 'Y'),
(1, 27, 1, 'N'),
(1, 28, 1, 'N'),
(1, 29, 0, 'N'),
(1, 30, 1, 'N'),
(1, 31, 1, 'N'),
(1, 32, 5, 'N'),
(1, 33, 0, 'N'),
(1, 34, 4, 'Y'),
(1, 35, 0, 'N'),
(1, 36, 0, 'N'),
(1, 37, 5, 'Y'),
(1, 38, 0, 'N'),
(1, 39, 0, 'N'),
(1, 40, 0, 'N'),
(1, 41, 0, 'N'),
(1, 42, 0, 'N'),
(1, 43, 2, 'Y'),
(1, 44, 0, 'N'),
(1, 45, 5, 'N'),
(1, 46, 2, 'N'),
(1, 47, 5, 'Y'),
(1, 48, 4, 'N'),
(1, 49, 5, 'N'),
(1, 50, 1, 'Y'),
(1, 51, 1, 'Y'),
(1, 52, 0, 'N'),
(1, 53, 5, 'N'),
(1, 54, 1, 'N'),
(1, 55, 1, 'N'),
(1, 56, 2, 'N'),
(1, 57, 0, 'N'),
(1, 58, 1, 'N'),
(1, 59, 0, 'N'),
(1, 60, 2, 'N'),
(1, 61, 0, 'N'),
(1, 62, 0, 'N'),
(1, 63, 2, 'N'),
(1, 64, 3, 'Y'),
(1, 65, 0, 'N'),
(1, 66, 5, 'N'),
(1, 67, 0, 'N'),
(1, 68, 5, 'N'),
(1, 69, 4, 'Y'),
(2, 1, 1, 'Y'),
(2, 2, 1, 'N'),
(2, 3, 1, 'Y'),
(2, 4, 1, 'Y'),
(2, 5, 0, 'N'),
(2, 6, 1, 'Y'),
(2, 7, 1, 'Y'),
(2, 8, 0, 'N'),
(2, 9, 0, 'N'),
(2, 10, 1, 'Y'),
(2, 11, 1, 'Y'),
(2, 12, 3, 'Y'),
(2, 13, 1, 'Y'),
(2, 14, 1, 'Y'),
(2, 15, 1, 'Y'),
(2, 16, 5, 'N'),
(2, 17, 1, 'Y'),
(2, 18, 1, 'Y'),
(2, 19, 1, 'Y'),
(2, 20, 1, 'Y'),
(2, 21, 1, 'Y'),
(2, 22, 1, 'Y'),
(2, 23, 1, 'Y'),
(2, 24, 1, 'Y'),
(2, 25, 1, 'Y'),
(2, 26, 1, 'Y'),
(2, 27, 1, 'Y'),
(2, 28, 1, 'Y'),
(2, 29, 1, 'Y'),
(2, 30, 1, 'Y'),
(2, 31, 1, 'Y'),
(2, 32, 1, 'Y'),
(2, 33, 0, 'N'),
(2, 34, 1, 'Y'),
(2, 35, 1, 'Y'),
(2, 36, 1, 'Y'),
(2, 37, 1, 'Y'),
(2, 38, 0, 'N'),
(2, 39, 1, 'Y'),
(2, 40, 1, 'Y'),
(2, 41, 0, 'N'),
(2, 42, 1, 'Y'),
(2, 43, 1, 'Y'),
(2, 44, 0, 'N'),
(2, 45, 1, 'Y'),
(2, 46, 1, 'Y'),
(2, 47, 1, 'Y'),
(2, 48, 1, 'Y'),
(2, 49, 1, 'Y'),
(2, 50, 1, 'Y'),
(2, 51, 1, 'Y'),
(2, 52, 1, 'Y'),
(2, 53, 1, 'Y'),
(2, 54, 1, 'Y'),
(2, 55, 1, 'Y'),
(2, 56, 1, 'Y'),
(2, 57, 0, 'N'),
(2, 58, 1, 'Y'),
(2, 59, 0, 'N'),
(2, 60, 1, 'Y'),
(2, 61, 0, 'N'),
(2, 62, 0, 'N'),
(2, 63, 1, 'Y'),
(2, 64, 1, 'Y'),
(2, 65, 1, 'Y'),
(2, 66, 1, 'Y'),
(2, 67, 1, 'Y'),
(2, 68, 0, 'N'),
(2, 69, 1, 'Y'),
(3, 1, 1, 'Y'),
(3, 2, 0, 'N'),
(3, 3, 1, 'N'),
(3, 4, 2, 'Y'),
(3, 5, 0, 'N'),
(3, 6, 1, 'Y'),
(3, 7, 3, 'Y'),
(3, 8, 0, 'N'),
(3, 9, 0, 'N'),
(3, 10, 2, 'N'),
(3, 11, 1, 'N'),
(3, 12, 1, 'N'),
(3, 13, 1, 'Y'),
(3, 14, 3, 'Y'),
(3, 15, 2, 'N'),
(3, 16, 5, 'N'),
(3, 17, 5, 'Y'),
(3, 18, 1, 'Y'),
(3, 19, 1, 'Y'),
(3, 20, 1, 'Y'),
(3, 21, 2, 'Y'),
(3, 22, 1, 'Y'),
(3, 23, 1, 'Y'),
(3, 24, 1, 'Y'),
(3, 25, 1, 'Y'),
(3, 26, 1, 'Y'),
(3, 27, 1, 'Y'),
(3, 28, 1, 'Y'),
(3, 29, 1, 'Y'),
(3, 30, 1, 'Y'),
(3, 31, 3, 'Y'),
(3, 32, 1, 'Y'),
(3, 33, 0, 'N'),
(3, 34, 1, 'Y'),
(3, 35, 1, 'Y'),
(3, 36, 1, 'Y'),
(3, 37, 1, 'Y'),
(3, 38, 0, 'N'),
(3, 39, 2, 'Y'),
(3, 40, 1, 'Y'),
(3, 41, 0, 'N'),
(3, 42, 1, 'Y'),
(3, 43, 1, 'Y'),
(3, 44, 0, 'N'),
(3, 45, 1, 'Y'),
(3, 46, 1, 'Y'),
(3, 47, 1, 'Y'),
(3, 48, 1, 'Y'),
(3, 49, 1, 'Y'),
(3, 50, 1, 'Y'),
(3, 51, 1, 'Y'),
(3, 52, 1, 'Y'),
(3, 53, 1, 'Y'),
(3, 54, 1, 'Y'),
(3, 55, 1, 'Y'),
(3, 56, 4, 'N'),
(3, 57, 0, 'N'),
(3, 58, 4, 'N'),
(3, 59, 0, 'N'),
(3, 60, 1, 'Y'),
(3, 61, 0, 'N'),
(3, 62, 0, 'N'),
(3, 63, 4, 'N'),
(3, 64, 1, 'Y'),
(3, 65, 1, 'Y'),
(3, 66, 1, 'Y'),
(3, 67, 1, 'Y'),
(3, 68, 1, 'Y'),
(3, 69, 1, 'Y'),
(4, 1, 3, 'N'),
(4, 2, 0, 'N'),
(4, 3, 1, 'N'),
(4, 4, 1, 'N'),
(4, 5, 0, 'N'),
(4, 6, 2, 'N'),
(4, 7, 2, 'N'),
(4, 8, 0, 'N'),
(4, 9, 0, 'N'),
(4, 10, 1, 'N'),
(4, 11, 0, 'N'),
(4, 12, 0, 'N'),
(4, 13, 1, 'N'),
(4, 14, 0, 'N'),
(4, 15, 0, 'N'),
(4, 16, 0, 'N'),
(4, 17, 0, 'N'),
(4, 18, 2, 'N'),
(4, 19, 0, 'N'),
(4, 20, 2, 'Y'),
(4, 21, 2, 'N'),
(4, 22, 1, 'Y'),
(4, 23, 1, 'Y'),
(4, 24, 3, 'N'),
(4, 25, 1, 'Y'),
(4, 26, 1, 'Y'),
(4, 27, 1, 'Y'),
(4, 28, 3, 'N'),
(4, 29, 2, 'N'),
(4, 30, 4, 'N'),
(4, 31, 3, 'N'),
(4, 32, 1, 'Y'),
(4, 33, 0, 'N'),
(4, 34, 1, 'Y'),
(4, 35, 2, 'N'),
(4, 36, 2, 'N'),
(4, 37, 3, 'Y'),
(4, 38, 0, 'N'),
(4, 39, 2, 'N'),
(4, 40, 1, 'N'),
(4, 41, 0, 'N'),
(4, 42, 2, 'N'),
(4, 43, 1, 'Y'),
(4, 44, 0, 'N'),
(4, 45, 1, 'Y'),
(4, 46, 1, 'Y'),
(4, 47, 0, 'N'),
(4, 48, 3, 'N'),
(4, 49, 1, 'Y'),
(4, 50, 1, 'Y'),
(4, 51, 1, 'Y'),
(4, 52, 0, 'N'),
(4, 53, 1, 'Y'),
(4, 54, 2, 'N'),
(4, 55, 3, 'N'),
(4, 56, 0, 'N'),
(4, 57, 0, 'N'),
(4, 58, 2, 'N'),
(4, 59, 0, 'N'),
(4, 60, 2, 'N'),
(4, 61, 0, 'N'),
(4, 62, 0, 'N'),
(4, 63, 0, 'N'),
(4, 64, 2, 'Y'),
(4, 65, 5, 'N'),
(4, 66, 5, 'Y'),
(4, 67, 4, 'N'),
(4, 68, 2, 'Y'),
(4, 69, 1, 'Y'),
(5, 1, 5, 'N'),
(5, 2, 0, 'N'),
(5, 3, 0, 'N'),
(5, 4, 0, 'N'),
(5, 5, 0, 'N'),
(5, 6, 4, 'N'),
(5, 7, 3, 'N'),
(5, 8, 0, 'N'),
(5, 9, 0, 'N'),
(5, 10, 0, 'N'),
(5, 11, 0, 'N'),
(5, 12, 0, 'N'),
(5, 13, 1, 'Y'),
(5, 14, 0, 'N'),
(5, 15, 0, 'N'),
(5, 16, 0, 'N'),
(5, 17, 0, 'N'),
(5, 18, 1, 'N'),
(5, 19, 0, 'N'),
(5, 20, 2, 'Y'),
(5, 21, 4, 'N'),
(5, 22, 4, 'Y'),
(5, 23, 2, 'Y'),
(5, 24, 1, 'N'),
(5, 25, 1, 'Y'),
(5, 26, 1, 'Y'),
(5, 27, 2, 'Y'),
(5, 28, 5, 'N'),
(5, 29, 3, 'N'),
(5, 30, 5, 'N'),
(5, 31, 5, 'N'),
(5, 32, 4, 'Y'),
(5, 33, 0, 'N'),
(5, 34, 1, 'Y'),
(5, 35, 3, 'N'),
(5, 36, 5, 'N'),
(5, 37, 2, 'Y'),
(5, 38, 0, 'N'),
(5, 39, 1, 'N'),
(5, 40, 2, 'N'),
(5, 41, 3, 'Y'),
(5, 42, 3, 'N'),
(5, 43, 1, 'Y'),
(5, 44, 0, 'N'),
(5, 45, 1, 'Y'),
(5, 46, 1, 'Y'),
(5, 47, 3, 'Y'),
(5, 48, 3, 'Y'),
(5, 49, 5, 'Y'),
(5, 50, 1, 'Y'),
(5, 51, 1, 'Y'),
(5, 52, 1, 'N'),
(5, 53, 1, 'Y'),
(5, 54, 2, 'N'),
(5, 55, 1, 'N'),
(5, 56, 0, 'N'),
(5, 57, 0, 'N'),
(5, 58, 0, 'N'),
(5, 59, 0, 'N'),
(5, 60, 1, 'Y'),
(5, 61, 0, 'N'),
(5, 62, 0, 'N'),
(5, 63, 0, 'N'),
(5, 64, 1, 'Y'),
(5, 65, 5, 'N'),
(5, 66, 1, 'Y'),
(5, 67, 3, 'N'),
(5, 68, 5, 'N'),
(5, 69, 2, 'Y'),
(6, 1, 0, 'N'),
(6, 2, 0, 'N'),
(6, 3, 0, 'N'),
(6, 4, 0, 'N'),
(6, 5, 0, 'N'),
(6, 6, 2, 'N'),
(6, 7, 0, 'N'),
(6, 8, 0, 'N'),
(6, 9, 0, 'N'),
(6, 10, 0, 'N'),
(6, 11, 0, 'N'),
(6, 12, 0, 'N'),
(6, 13, 3, 'N'),
(6, 14, 0, 'N'),
(6, 15, 0, 'N'),
(6, 16, 0, 'N'),
(6, 17, 0, 'N'),
(6, 18, 0, 'N'),
(6, 19, 0, 'N'),
(6, 20, 1, 'N'),
(6, 21, 0, 'N'),
(6, 22, 2, 'N'),
(6, 23, 2, 'Y'),
(6, 24, 3, 'N'),
(6, 25, 3, 'Y'),
(6, 26, 1, 'Y'),
(6, 27, 1, 'N'),
(6, 28, 0, 'N'),
(6, 29, 0, 'N'),
(6, 30, 0, 'N'),
(6, 31, 0, 'N'),
(6, 32, 1, 'N'),
(6, 33, 0, 'N'),
(6, 34, 5, 'N'),
(6, 35, 0, 'N'),
(6, 36, 0, 'N'),
(6, 37, 4, 'N'),
(6, 38, 0, 'N'),
(6, 39, 0, 'N'),
(6, 40, 0, 'N'),
(6, 41, 5, 'N'),
(6, 42, 0, 'N'),
(6, 43, 1, 'Y'),
(6, 44, 0, 'N'),
(6, 45, 3, 'N'),
(6, 46, 1, 'N'),
(6, 47, 1, 'N'),
(6, 48, 0, 'N'),
(6, 49, 2, 'N'),
(6, 50, 1, 'Y'),
(6, 51, 1, 'Y'),
(6, 52, 0, 'N'),
(6, 53, 2, 'N'),
(6, 54, 0, 'N'),
(6, 55, 0, 'N'),
(6, 56, 0, 'N'),
(6, 57, 0, 'N'),
(6, 58, 0, 'N'),
(6, 59, 0, 'N'),
(6, 60, 0, 'N'),
(6, 61, 0, 'N'),
(6, 62, 0, 'N'),
(6, 63, 0, 'N'),
(6, 64, 5, 'N'),
(6, 65, 0, 'N'),
(6, 66, 1, 'N'),
(6, 67, 1, 'N'),
(6, 68, 0, 'N'),
(6, 69, 4, 'N'),
(7, 1, 5, 'N'),
(7, 2, 0, 'N'),
(7, 3, 0, 'N'),
(7, 4, 1, 'N'),
(7, 5, 0, 'N'),
(7, 6, 5, 'N'),
(7, 7, 1, 'N'),
(7, 8, 0, 'N'),
(7, 9, 0, 'N'),
(7, 10, 1, 'N'),
(7, 11, 0, 'N'),
(7, 12, 0, 'N'),
(7, 13, 1, 'N'),
(7, 14, 0, 'N'),
(7, 15, 1, 'N'),
(7, 16, 0, 'N'),
(7, 17, 0, 'N'),
(7, 18, 3, 'N'),
(7, 19, 2, 'N'),
(7, 20, 1, 'Y'),
(7, 21, 2, 'N'),
(7, 22, 2, 'Y'),
(7, 23, 1, 'Y'),
(7, 24, 4, 'N'),
(7, 25, 1, 'Y'),
(7, 26, 1, 'Y'),
(7, 27, 1, 'Y'),
(7, 28, 5, 'N'),
(7, 29, 2, 'N'),
(7, 30, 5, 'N'),
(7, 31, 5, 'N'),
(7, 32, 3, 'Y'),
(7, 33, 0, 'N'),
(7, 34, 1, 'Y'),
(7, 35, 3, 'N'),
(7, 36, 0, 'N'),
(7, 37, 2, 'Y'),
(7, 38, 0, 'N'),
(7, 39, 0, 'N'),
(7, 40, 2, 'N'),
(7, 41, 0, 'N'),
(7, 42, 4, 'N'),
(7, 43, 1, 'Y'),
(7, 44, 0, 'N'),
(7, 45, 1, 'Y'),
(7, 46, 5, 'N'),
(7, 47, 1, 'Y'),
(7, 48, 2, 'Y'),
(7, 49, 1, 'Y'),
(7, 50, 1, 'Y'),
(7, 51, 1, 'Y'),
(7, 52, 0, 'N'),
(7, 53, 5, 'N'),
(7, 54, 2, 'N'),
(7, 55, 2, 'N'),
(7, 56, 0, 'N'),
(7, 57, 0, 'N'),
(7, 58, 0, 'N'),
(7, 59, 0, 'N'),
(7, 60, 5, 'N'),
(7, 61, 0, 'N'),
(7, 62, 0, 'N'),
(7, 63, 2, 'N'),
(7, 64, 3, 'Y'),
(7, 65, 0, 'N'),
(7, 66, 5, 'N'),
(7, 67, 0, 'N'),
(7, 68, 3, 'N'),
(7, 69, 3, 'Y'),
(8, 1, 2, 'N'),
(8, 2, 0, 'N'),
(8, 3, 0, 'N'),
(8, 4, 1, 'N'),
(8, 5, 0, 'N'),
(8, 6, 4, 'N'),
(8, 7, 1, 'N'),
(8, 8, 0, 'N'),
(8, 9, 0, 'N'),
(8, 10, 1, 'N'),
(8, 11, 0, 'N'),
(8, 12, 0, 'N'),
(8, 13, 5, 'N'),
(8, 14, 0, 'N'),
(8, 15, 0, 'N'),
(8, 16, 0, 'N'),
(8, 17, 0, 'N'),
(8, 18, 0, 'N'),
(8, 19, 0, 'N'),
(8, 20, 1, 'N'),
(8, 21, 0, 'N'),
(8, 22, 4, 'N'),
(8, 23, 5, 'Y'),
(8, 24, 0, 'N'),
(8, 25, 2, 'Y'),
(8, 26, 1, 'Y'),
(8, 27, 3, 'N'),
(8, 28, 1, 'N'),
(8, 29, 0, 'N'),
(8, 30, 4, 'N'),
(8, 31, 0, 'N'),
(8, 32, 3, 'Y'),
(8, 33, 0, 'N'),
(8, 34, 5, 'Y'),
(8, 35, 3, 'N'),
(8, 36, 0, 'N'),
(8, 37, 1, 'Y'),
(8, 38, 0, 'N'),
(8, 39, 1, 'N'),
(8, 40, 2, 'N'),
(8, 41, 0, 'N'),
(8, 42, 1, 'N'),
(8, 43, 3, 'Y'),
(8, 44, 0, 'N'),
(8, 45, 2, 'Y'),
(8, 46, 2, 'Y'),
(8, 47, 4, 'Y'),
(8, 48, 2, 'N'),
(8, 49, 4, 'N'),
(8, 50, 1, 'Y'),
(8, 51, 1, 'Y'),
(8, 52, 2, 'N'),
(8, 53, 5, 'N'),
(8, 54, 4, 'N'),
(8, 55, 3, 'N'),
(8, 56, 1, 'N'),
(8, 57, 0, 'N'),
(8, 58, 2, 'N'),
(8, 59, 0, 'N'),
(8, 60, 5, 'N'),
(8, 61, 0, 'N'),
(8, 62, 0, 'N'),
(8, 63, 1, 'N'),
(8, 64, 2, 'Y'),
(8, 65, 0, 'N'),
(8, 66, 3, 'Y'),
(8, 67, 0, 'N'),
(8, 68, 3, 'N'),
(8, 69, 3, 'Y'),
(9, 1, 1, 'Y'),
(9, 2, 0, 'N'),
(9, 3, 0, 'N'),
(9, 4, 3, 'Y'),
(9, 5, 0, 'N'),
(9, 6, 1, 'N'),
(9, 7, 2, 'Y'),
(9, 8, 0, 'N'),
(9, 9, 0, 'N'),
(9, 10, 4, 'Y'),
(9, 11, 0, 'N'),
(9, 12, 0, 'N'),
(9, 13, 1, 'Y'),
(9, 14, 2, 'Y'),
(9, 15, 4, 'N'),
(9, 16, 2, 'N'),
(9, 17, 2, 'N'),
(9, 18, 4, 'Y'),
(9, 19, 4, 'N'),
(9, 20, 1, 'Y'),
(9, 21, 1, 'Y'),
(9, 22, 1, 'Y'),
(9, 23, 1, 'Y'),
(9, 24, 1, 'Y'),
(9, 25, 1, 'Y'),
(9, 26, 1, 'Y'),
(9, 27, 1, 'Y'),
(9, 28, 1, 'Y'),
(9, 29, 1, 'Y'),
(9, 30, 3, 'Y'),
(9, 31, 1, 'Y'),
(9, 32, 1, 'Y'),
(9, 33, 0, 'N'),
(9, 34, 0, 'N'),
(9, 35, 3, 'Y'),
(9, 36, 2, 'Y'),
(9, 37, 1, 'Y'),
(9, 38, 0, 'N'),
(9, 39, 1, 'Y'),
(9, 40, 1, 'Y'),
(9, 41, 0, 'N'),
(9, 42, 1, 'Y'),
(9, 43, 1, 'Y'),
(9, 44, 0, 'N'),
(9, 45, 1, 'Y'),
(9, 46, 1, 'Y'),
(9, 47, 1, 'Y'),
(9, 48, 1, 'Y'),
(9, 49, 1, 'Y'),
(9, 50, 1, 'Y'),
(9, 51, 1, 'Y'),
(9, 52, 1, 'Y'),
(9, 53, 1, 'Y'),
(9, 54, 4, 'Y'),
(9, 55, 1, 'Y'),
(9, 56, 5, 'N'),
(9, 57, 0, 'N'),
(9, 58, 5, 'N'),
(9, 59, 0, 'N'),
(9, 60, 1, 'Y'),
(9, 61, 0, 'N'),
(9, 62, 0, 'N'),
(9, 63, 2, 'Y'),
(9, 64, 1, 'Y'),
(9, 65, 2, 'Y'),
(9, 66, 2, 'Y'),
(9, 67, 0, 'N'),
(9, 68, 1, 'Y'),
(9, 69, 1, 'Y'),
(10, 1, 1, 'Y'),
(10, 2, 0, 'N'),
(10, 3, 1, 'N'),
(10, 4, 2, 'Y'),
(10, 5, 0, 'N'),
(10, 6, 1, 'Y'),
(10, 7, 1, 'Y'),
(10, 8, 0, 'N'),
(10, 9, 0, 'N'),
(10, 10, 1, 'Y'),
(10, 11, 2, 'Y'),
(10, 12, 2, 'Y'),
(10, 13, 1, 'Y'),
(10, 14, 1, 'Y'),
(10, 15, 1, 'Y'),
(10, 16, 1, 'Y'),
(10, 17, 1, 'Y'),
(10, 18, 1, 'Y'),
(10, 19, 1, 'Y'),
(10, 20, 1, 'Y'),
(10, 21, 1, 'Y'),
(10, 22, 1, 'Y'),
(10, 23, 1, 'Y'),
(10, 24, 1, 'Y'),
(10, 25, 1, 'Y'),
(10, 26, 1, 'Y'),
(10, 27, 1, 'Y'),
(10, 28, 1, 'Y'),
(10, 29, 1, 'Y'),
(10, 30, 1, 'Y'),
(10, 31, 1, 'Y'),
(10, 32, 1, 'Y'),
(10, 33, 0, 'N'),
(10, 34, 2, 'Y'),
(10, 35, 1, 'Y'),
(10, 36, 1, 'Y'),
(10, 37, 1, 'Y'),
(10, 38, 0, 'N'),
(10, 39, 1, 'Y'),
(10, 40, 1, 'Y'),
(10, 41, 0, 'N'),
(10, 42, 1, 'Y'),
(10, 43, 1, 'Y'),
(10, 44, 0, 'N'),
(10, 45, 1, 'Y'),
(10, 46, 1, 'Y'),
(10, 47, 2, 'Y'),
(10, 48, 1, 'Y'),
(10, 49, 1, 'Y'),
(10, 50, 1, 'Y'),
(10, 51, 1, 'Y'),
(10, 52, 1, 'Y'),
(10, 53, 1, 'Y'),
(10, 54, 2, 'Y'),
(10, 55, 1, 'Y'),
(10, 56, 1, 'Y'),
(10, 57, 0, 'N'),
(10, 58, 1, 'Y'),
(10, 59, 0, 'N'),
(10, 60, 1, 'Y'),
(10, 61, 0, 'N'),
(10, 62, 0, 'N'),
(10, 63, 2, 'Y'),
(10, 64, 1, 'Y'),
(10, 65, 1, 'Y'),
(10, 66, 1, 'Y'),
(10, 67, 2, 'Y'),
(10, 68, 0, 'N'),
(10, 69, 1, 'Y');

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
`id` int(10) unsigned
,`nome` varchar(60)
,`cognome` varchar(60)
,`data_nascita` date
,`sesso` enum('M','F')
,`pettorina` int(10) unsigned
,`punteggio` decimal(28,2)
);

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `classifica_pivot`
--
CREATE TABLE `classifica_pivot` (
`nome` varchar(60)
,`cognome` varchar(60)
,`data_nascita` date
,`sesso` enum('M','F')
,`pettorina` int(10) unsigned
,`punteggio` decimal(28,2)
,`1` decimal(23,0)
,`2` decimal(23,0)
,`3` decimal(23,0)
,`4` decimal(23,0)
,`5` decimal(23,0)
,`6` decimal(23,0)
,`7` decimal(23,0)
,`8` decimal(23,0)
,`9` decimal(23,0)
,`10` decimal(23,0)
);

-- --------------------------------------------------------

--
-- Struttura della tabella `scuola`
--

CREATE TABLE `scuola` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome_scuola` varchar(70) NOT NULL,
  `citta` varchar(32) NOT NULL,
  `referente` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `scuola`
--

INSERT INTO `scuola` (`id`, `nome_scuola`, `citta`, `referente`) VALUES
(1, 'Liceo De Andrè', 'Brescia', 'Simonetta Azzini'),
(2, 'Meneghini', 'Edolo', 'Maurizio Cominelli'),
(3, 'Camillo Golgi', 'Brescia', 'Luca Albano'),
(4, 'IIS Castelli', 'Brescia', 'Giovanni Tosana'),
(5, 'ITAS G. PASTORI', 'Brescia', 'Giancarlo Ardesi'),
(6, 'IIS Tartaglia Olivieri', 'Brescia', 'Massimo Medaglia'),
(7, 'Tassara', 'Breno', 'Moreschi Ivan');

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `valboulders`
--
CREATE TABLE `valboulders` (
`boulder` int(10) unsigned
,`atleti_passati` decimal(23,0)
,`valboulder` decimal(7,4)
);

-- --------------------------------------------------------

--
-- Struttura per la vista `atleta_boulder_punteggio`
--
DROP TABLE IF EXISTS `atleta_boulder_punteggio`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `atleta_boulder_punteggio`  AS  select `atleta_boulder`.`id_atleta` AS `atletaID`,`atleta_boulder`.`id_boulder` AS `boulderID`,`atleta_boulder`.`n_tentativi` AS `tentativi`,(case when (`atleta_boulder`.`passato` = 'Y') then (`valboulders`.`valboulder` / `atleta_boulder`.`n_tentativi`) when (`atleta_boulder`.`passato` = 'N') then 0 end) AS `punteggio` from (`atleta_boulder` join `valboulders`) where (`valboulders`.`boulder` = `atleta_boulder`.`id_boulder`) order by `atleta_boulder`.`id_atleta` ;

-- --------------------------------------------------------

--
-- Struttura per la vista `classifica_global`
--
DROP TABLE IF EXISTS `classifica_global`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `classifica_global`  AS  select `atleta`.`id` AS `id`,`atleta`.`nome` AS `nome`,`atleta`.`cognome` AS `cognome`,`atleta`.`data_nascita` AS `data_nascita`,`atleta`.`sesso` AS `sesso`,`atleta`.`casacca` AS `pettorina`,round(sum(`atleta_boulder_punteggio`.`punteggio`),2) AS `punteggio` from (`atleta_boulder_punteggio` join `atleta`) where (`atleta_boulder_punteggio`.`atletaID` = `atleta`.`id`) group by `atleta_boulder_punteggio`.`atletaID` order by sum(`atleta_boulder_punteggio`.`punteggio`) desc ;

-- --------------------------------------------------------

--
-- Struttura per la vista `classifica_pivot`
--
DROP TABLE IF EXISTS `classifica_pivot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `classifica_pivot`  AS  select `atleta`.`nome` AS `nome`,`atleta`.`cognome` AS `cognome`,`atleta`.`data_nascita` AS `data_nascita`,`atleta`.`sesso` AS `sesso`,`atleta`.`casacca` AS `pettorina`,round(sum(`atleta_boulder_punteggio`.`punteggio`),2) AS `punteggio`,sum(((`atleta_boulder_punteggio`.`boulderID` = '1') and (`atleta_boulder_punteggio`.`punteggio` > 0))) AS `1`,sum(((`atleta_boulder_punteggio`.`boulderID` = '2') and (`atleta_boulder_punteggio`.`punteggio` > 0))) AS `2`,sum(((`atleta_boulder_punteggio`.`boulderID` = '3') and (`atleta_boulder_punteggio`.`punteggio` > 0))) AS `3`,sum(((`atleta_boulder_punteggio`.`boulderID` = '4') and (`atleta_boulder_punteggio`.`punteggio` > 0))) AS `4`,sum(((`atleta_boulder_punteggio`.`boulderID` = '5') and (`atleta_boulder_punteggio`.`punteggio` > 0))) AS `5`,sum(((`atleta_boulder_punteggio`.`boulderID` = '6') and (`atleta_boulder_punteggio`.`punteggio` > 0))) AS `6`,sum(((`atleta_boulder_punteggio`.`boulderID` = '7') and (`atleta_boulder_punteggio`.`punteggio` > 0))) AS `7`,sum(((`atleta_boulder_punteggio`.`boulderID` = '8') and (`atleta_boulder_punteggio`.`punteggio` > 0))) AS `8`,sum(((`atleta_boulder_punteggio`.`boulderID` = '9') and (`atleta_boulder_punteggio`.`punteggio` > 0))) AS `9`,sum(((`atleta_boulder_punteggio`.`boulderID` = '10') and (`atleta_boulder_punteggio`.`punteggio` > 0))) AS `10` from (`atleta_boulder_punteggio` join `atleta`) where (`atleta_boulder_punteggio`.`atletaID` = `atleta`.`id`) group by `atleta`.`id` order by round(sum(`atleta_boulder_punteggio`.`punteggio`),2) desc,`atleta`.`cognome` ;

-- --------------------------------------------------------

--
-- Struttura per la vista `valboulders`
--
DROP TABLE IF EXISTS `valboulders`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `valboulders`  AS  select `boulder`.`nome` AS `boulder`,sum((case when (`atleta_boulder`.`passato` = 'Y') then 1 else 0 end)) AS `atleti_passati`,(100 / sum((case when (`atleta_boulder`.`passato` = 'Y') then 1 else 0 end))) AS `valboulder` from ((`atleta_boulder` join `boulder`) join `atleta`) where ((`atleta_boulder`.`id_boulder` = `boulder`.`id`) and (`atleta_boulder`.`id_atleta` = `atleta`.`id`) and (year(`atleta`.`data_nascita`) >= 1997)) group by `boulder`.`id` ;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT per la tabella `boulder`
--
ALTER TABLE `boulder`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT per la tabella `scuola`
--
ALTER TABLE `scuola`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
