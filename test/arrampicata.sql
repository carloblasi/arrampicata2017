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
(1, 'Margherita', 'Fabbri', '2001-12-11', 'F', 3, 1, 0),
(2, 'Arianna', 'De', '1998-10-05', 'F', 2, 2, 0),
(3, 'Elisa', 'Ferraro', '1997-02-02', 'F', 1, 3, 0),
(4, 'Bianca', 'D''angelo', '2002-08-05', 'F', 5, 4, 0),
(5, 'Anna', 'Romano', '2001-11-23', 'F', 3, 5, 0),
(6, 'Asia', 'De', '1997-04-21', 'F', 2, 6, 0),
(7, 'Emma', 'Orlando', '2002-12-14', 'F', 5, 7, 0),
(8, 'Benedetta', 'Luca', '2001-04-16', 'F', 3, 8, 0),
(9, 'Greta', 'Lombardo', '1998-09-17', 'F', 4, 9, 0),
(10, 'Arianna', 'Martinelli', '1998-08-21', 'F', 3, 10, 0),
(11, 'Elisa', 'Rosa', '2002-12-27', 'F', 1, 11, 0),
(12, 'Maria', 'Guerra', '1999-12-28', 'F', 4, 12, 0),
(13, 'Sofia', 'Pellegrini', '2000-11-28', 'F', 1, 13, 0),
(14, 'Angelica', 'Vitale', '2000-02-13', 'F', 3, 14, 0),
(15, 'Emily', 'Barbieri', '1998-04-18', 'F', 3, 15, 0),
(16, 'Ginevra', 'Grasso', '2002-10-21', 'F', 3, 16, 0),
(17, 'Aurora', 'Ruggiero', '2002-07-07', 'F', 2, 17, 0),
(18, 'Gaia', 'Greco', '2001-11-02', 'F', 3, 18, 0),
(19, 'Ludovica', 'Parisi', '1999-05-22', 'F', 4, 19, 0),
(20, 'Alessandra', 'Farina', '2001-01-02', 'F', 3, 20, 0),
(21, 'Giada', 'Palmieri', '2000-12-18', 'F', 1, 21, 0),
(22, 'Angelica', 'Riva', '2000-04-24', 'F', 3, 22, 0),
(23, 'Serena', 'Grassi', '1999-04-20', 'F', 5, 23, 0),
(24, 'Sofia', 'Leone', '1997-01-05', 'F', 4, 24, 0),
(25, 'Elena', 'Ferrara', '2001-06-11', 'F', 1, 25, 0),
(26, 'Emily', 'Basile', '2000-06-03', 'F', 5, 26, 0),
(27, 'Caterina', 'Santoro', '2000-05-17', 'F', 2, 27, 0),
(28, 'Adele', 'Vitali', '1998-01-09', 'F', 3, 28, 0),
(29, 'Rebecca', 'Giuliani', '2001-03-22', 'F', 3, 29, 0),
(30, 'Miriam', 'Martinelli', '1997-10-28', 'F', 1, 30, 0),
(31, 'Caterina', 'Lombardo', '1998-10-22', 'F', 1, 31, 0),
(32, 'Greta', 'Sanna', '1998-03-22', 'F', 5, 32, 0),
(33, 'Maria', 'Longo', '2001-06-28', 'F', 3, 33, 0),
(34, 'Rebecca', 'Gatti', '1997-05-24', 'F', 1, 34, 0),
(35, 'Giorgia', 'Caruso', '2000-12-11', 'F', 4, 35, 0),
(36, 'Miriam', 'Silvestri', '2000-10-23', 'F', 3, 36, 0),
(37, 'Giorgia', 'Serra', '1998-07-10', 'F', 2, 37, 0),
(38, 'Viola', 'Palmieri', '2002-08-24', 'F', 1, 38, 0),
(39, 'Margherita', 'Santoro', '2001-12-22', 'F', 2, 39, 0),
(40, 'Ludovica', 'Martinelli', '1999-03-18', 'F', 2, 40, 0),
(41, 'Ginevra', 'Colombo', '1997-08-02', 'F', 1, 41, 0),
(42, 'Angelica', 'Fontana', '1997-08-09', 'F', 4, 42, 0),
(43, 'Giada', 'Sala', '1998-02-05', 'F', 1, 43, 0),
(44, 'Martina', 'Vitali', '2002-06-15', 'F', 4, 44, 0),
(45, 'Noemi', 'Barone', '2002-12-12', 'F', 2, 45, 0),
(46, 'Rachele', 'Giordano', '1999-10-12', 'F', 5, 46, 0),
(47, 'Giulia', 'Lombardo', '1997-09-22', 'F', 2, 47, 0),
(48, 'Giada', 'Gatti', '1999-01-20', 'F', 4, 48, 0),
(49, 'Camilla', 'Gatti', '2000-10-18', 'F', 1, 49, 0),
(50, 'Giorgia', 'Piras', '1999-03-14', 'F', 5, 50, 0),
(51, 'Nicolo''', 'Ferrara', '1999-05-14', 'M', 1, 51, 0),
(52, 'Samuel', 'Ricci', '1997-08-22', 'M', 3, 52, 0),
(53, 'Giuseppe', 'Fiore', '1999-05-27', 'M', 5, 53, 0),
(54, 'Mario', 'Costa', '1997-01-04', 'M', 2, 54, 0),
(55, 'Luigi', 'Milani', '1998-05-07', 'M', 4, 55, 0),
(56, 'Matteo', 'Ferretti', '2000-08-19', 'M', 5, 56, 0),
(57, 'Mario', 'Valentini', '2001-01-18', 'M', 2, 57, 0),
(58, 'Diego', 'De', '1999-10-06', 'M', 5, 58, 0),
(59, 'Diego', 'Bianchi', '2002-03-17', 'M', 4, 59, 0),
(60, 'Giuseppe', 'Russo', '2001-05-07', 'M', 3, 60, 0),
(61, 'Nicola', 'Palumbo', '1997-05-02', 'M', 2, 61, 0),
(62, 'Leonardo', 'Luca', '1999-11-20', 'M', 3, 62, 0),
(63, 'Giacomo', 'Fabbri', '1997-01-20', 'M', 4, 63, 0),
(64, 'Gioele', 'Testa', '1997-11-27', 'M', 1, 64, 0),
(65, 'Lorenzo', 'Morelli', '1999-04-19', 'M', 3, 65, 0),
(66, 'Diego', 'Barbieri', '1998-11-26', 'M', 2, 66, 0),
(67, 'Edoardo', 'Marini', '2001-08-18', 'M', 5, 67, 0),
(68, 'Stefano', 'Orlando', '1998-05-01', 'M', 3, 68, 0),
(69, 'Giulio', 'Milani', '2001-01-21', 'M', 5, 69, 0),
(70, 'Christian', 'Farina', '1998-01-04', 'M', 2, 70, 0),
(71, 'Simone', 'De', '1997-02-17', 'M', 4, 71, 0),
(72, 'Elia', 'Barbieri', '2002-03-20', 'M', 3, 72, 0),
(73, 'Mattia', 'Rossetti', '1999-12-13', 'M', 1, 73, 0),
(74, 'Simone', 'Messina', '2000-07-17', 'M', 4, 74, 0),
(75, 'Gabriel', 'Santis', '2000-11-25', 'M', 2, 75, 0),
(76, 'Francesco', 'Silvestri', '2002-07-07', 'M', 5, 76, 0),
(77, 'Samuele', 'Caruso', '2001-02-03', 'M', 1, 77, 0),
(78, 'Daniel', 'Mariani', '2001-10-16', 'M', 5, 78, 0),
(79, 'Giacomo', 'Palmieri', '1997-02-21', 'M', 5, 79, 0),
(80, 'Jacopo', 'Grasso', '1997-08-26', 'M', 2, 80, 0),
(81, 'Nicola', 'Fiore', '2002-11-26', 'M', 2, 81, 0),
(82, 'Vincenzo', 'Ferrari', '2002-11-07', 'M', 5, 82, 0),
(83, 'Andrea', 'Palmieri', '1998-01-10', 'M', 4, 83, 0),
(84, 'Daniel', 'Russo', '2001-09-27', 'M', 4, 84, 0),
(85, 'Luigi', 'Palumbo', '1998-07-05', 'M', 5, 85, 0),
(86, 'Federico', 'Gallo', '1997-02-26', 'M', 2, 86, 0),
(87, 'Tommaso', 'Morelli', '1997-11-02', 'M', 1, 87, 0),
(88, 'Angelo', 'Grasso', '1999-02-17', 'M', 3, 88, 0),
(89, 'Emanuele', 'Bellini', '1997-03-04', 'M', 2, 89, 0),
(90, 'Raffaele', 'Palmieri', '2001-09-24', 'M', 1, 90, 0),
(91, 'Lorenzo', 'Monti', '2002-12-02', 'M', 2, 91, 0),
(92, 'Riccardo', 'Conti', '2002-01-04', 'M', 5, 92, 0),
(93, 'Davide', 'Basile', '1998-03-28', 'M', 2, 93, 0),
(94, 'Nicola', 'Fontana', '1997-12-08', 'M', 3, 94, 0),
(95, 'Alessandro', 'Ruggiero', '1997-07-17', 'M', 3, 95, 0),
(96, 'Stefano', 'Lombardi', '2002-10-22', 'M', 5, 96, 0),
(97, 'Lorenzo', 'Basile', '1999-11-01', 'M', 4, 97, 0),
(98, 'Diego', 'Rossetti', '1999-03-13', 'M', 5, 98, 0),
(99, 'Diego', 'Costantini', '2000-10-27', 'M', 5, 99, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `atleta_boulder`
--

CREATE TABLE `atleta_boulder` (
  `id_boulder` int(10) UNSIGNED NOT NULL,
  `id_studente` int(10) UNSIGNED NOT NULL,
  `n_tentativi` enum('1','2','3','4','5') NOT NULL DEFAULT '1',
  `passato` enum('Y','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `atleta_boulder`
--

INSERT INTO `atleta_boulder` (`id_boulder`, `id_studente`, `n_tentativi`, `passato`) VALUES
(1, 1, '4', 'Y'),
(1, 7, '5', 'Y'),
(1, 14, '3', 'Y'),
(1, 15, '5', 'Y'),
(1, 17, '3', 'N'),
(1, 18, '3', 'Y'),
(1, 20, '5', 'N'),
(1, 27, '1', 'N'),
(1, 28, '4', 'N'),
(1, 33, '3', 'N'),
(1, 36, '3', 'Y'),
(1, 39, '4', 'Y'),
(1, 40, '2', 'Y'),
(1, 42, '4', 'Y'),
(1, 44, '5', 'Y'),
(1, 45, '5', 'Y'),
(1, 48, '2', 'N'),
(1, 59, '4', 'Y'),
(1, 63, '5', 'Y'),
(1, 64, '1', 'Y'),
(1, 65, '5', 'N'),
(1, 66, '3', 'N'),
(1, 67, '1', 'Y'),
(1, 73, '3', 'Y'),
(1, 75, '2', 'N'),
(1, 83, '4', 'Y'),
(1, 85, '1', 'N'),
(1, 89, '3', 'N'),
(1, 93, '5', 'Y'),
(1, 96, '2', 'Y'),
(2, 2, '4', 'N'),
(2, 3, '4', 'Y'),
(2, 4, '1', 'N'),
(2, 6, '1', 'N'),
(2, 7, '5', 'N'),
(2, 8, '1', 'N'),
(2, 11, '5', 'Y'),
(2, 14, '5', 'Y'),
(2, 16, '2', 'Y'),
(2, 19, '1', 'N'),
(2, 20, '5', 'Y'),
(2, 22, '2', 'Y'),
(2, 27, '3', 'Y'),
(2, 28, '1', 'N'),
(2, 29, '1', 'N'),
(2, 30, '2', 'Y'),
(2, 31, '1', 'N'),
(2, 32, '4', 'Y'),
(2, 33, '1', 'Y'),
(2, 34, '1', 'N'),
(2, 36, '5', 'N'),
(2, 39, '1', 'Y'),
(2, 40, '5', 'N'),
(2, 42, '2', 'Y'),
(2, 44, '4', 'Y'),
(2, 47, '4', 'N'),
(2, 50, '5', 'Y'),
(2, 51, '4', 'N'),
(2, 53, '1', 'N'),
(2, 57, '2', 'Y'),
(2, 58, '5', 'N'),
(2, 61, '3', 'N'),
(2, 62, '4', 'N'),
(2, 64, '1', 'N'),
(2, 68, '2', 'Y'),
(2, 72, '3', 'Y'),
(2, 73, '4', 'Y'),
(2, 74, '2', 'Y'),
(2, 78, '5', 'N'),
(2, 80, '2', 'Y'),
(2, 82, '1', 'Y'),
(2, 83, '2', 'Y'),
(2, 84, '1', 'N'),
(2, 85, '1', 'Y'),
(2, 86, '1', 'Y'),
(2, 87, '2', 'N'),
(2, 91, '3', 'N'),
(2, 92, '4', 'N'),
(2, 94, '5', 'N'),
(2, 96, '1', 'N'),
(2, 97, '4', 'Y'),
(3, 4, '3', 'N'),
(3, 5, '5', 'Y'),
(3, 7, '3', 'N'),
(3, 11, '1', 'Y'),
(3, 14, '1', 'Y'),
(3, 15, '5', 'N'),
(3, 16, '5', 'N'),
(3, 27, '4', 'Y'),
(3, 29, '5', 'Y'),
(3, 33, '3', 'Y'),
(3, 38, '3', 'N'),
(3, 40, '3', 'N'),
(3, 41, '1', 'Y'),
(3, 42, '4', 'Y'),
(3, 46, '4', 'Y'),
(3, 52, '5', 'Y'),
(3, 55, '2', 'N'),
(3, 57, '1', 'N'),
(3, 60, '5', 'Y'),
(3, 65, '5', 'N'),
(3, 66, '3', 'N'),
(3, 72, '2', 'N'),
(3, 74, '3', 'Y'),
(3, 80, '4', 'Y'),
(3, 83, '5', 'Y'),
(3, 86, '2', 'N'),
(3, 87, '4', 'Y'),
(3, 93, '2', 'Y'),
(3, 97, '2', 'Y'),
(4, 8, '1', 'Y'),
(4, 9, '3', 'Y'),
(4, 10, '1', 'N'),
(4, 11, '2', 'Y'),
(4, 13, '1', 'Y'),
(4, 18, '1', 'Y'),
(4, 20, '4', 'N'),
(4, 22, '2', 'Y'),
(4, 25, '3', 'N'),
(4, 27, '1', 'N'),
(4, 32, '5', 'N'),
(4, 34, '4', 'N'),
(4, 36, '4', 'Y'),
(4, 37, '2', 'Y'),
(4, 38, '3', 'Y'),
(4, 43, '1', 'Y'),
(4, 48, '5', 'Y'),
(4, 51, '4', 'Y'),
(4, 52, '5', 'N'),
(4, 53, '1', 'N'),
(4, 55, '2', 'Y'),
(4, 56, '4', 'Y'),
(4, 58, '3', 'Y'),
(4, 63, '2', 'Y'),
(4, 68, '5', 'N'),
(4, 73, '2', 'N'),
(4, 75, '3', 'Y'),
(4, 77, '3', 'Y'),
(4, 78, '1', 'Y'),
(4, 80, '3', 'N'),
(4, 84, '4', 'N'),
(4, 87, '4', 'N'),
(4, 97, '5', 'Y'),
(4, 99, '2', 'Y'),
(5, 3, '5', 'Y'),
(5, 8, '2', 'N'),
(5, 14, '2', 'Y'),
(5, 16, '2', 'Y'),
(5, 18, '3', 'Y'),
(5, 19, '2', 'N'),
(5, 23, '2', 'N'),
(5, 24, '2', 'Y'),
(5, 25, '1', 'N'),
(5, 30, '3', 'N'),
(5, 35, '3', 'N'),
(5, 41, '4', 'N'),
(5, 45, '5', 'Y'),
(5, 47, '5', 'N'),
(5, 53, '4', 'N'),
(5, 55, '1', 'N'),
(5, 56, '2', 'Y'),
(5, 60, '4', 'N'),
(5, 68, '1', 'Y'),
(5, 71, '4', 'Y'),
(5, 74, '2', 'Y'),
(5, 75, '5', 'Y'),
(5, 76, '3', 'N'),
(5, 77, '3', 'N'),
(5, 86, '3', 'Y'),
(5, 87, '5', 'N'),
(5, 91, '4', 'N'),
(5, 94, '4', 'N'),
(6, 1, '5', 'Y'),
(6, 2, '4', 'Y'),
(6, 6, '4', 'Y'),
(6, 7, '2', 'N'),
(6, 8, '4', 'N'),
(6, 9, '2', 'Y'),
(6, 12, '2', 'N'),
(6, 16, '3', 'N'),
(6, 17, '5', 'Y'),
(6, 24, '3', 'Y'),
(6, 25, '2', 'N'),
(6, 29, '5', 'N'),
(6, 32, '1', 'N'),
(6, 36, '2', 'N'),
(6, 39, '4', 'Y'),
(6, 42, '5', 'Y'),
(6, 44, '4', 'Y'),
(6, 46, '2', 'Y'),
(6, 48, '4', 'Y'),
(6, 50, '3', 'N'),
(6, 51, '4', 'Y'),
(6, 53, '1', 'Y'),
(6, 56, '4', 'Y'),
(6, 57, '4', 'N'),
(6, 61, '2', 'Y'),
(6, 62, '2', 'Y'),
(6, 64, '1', 'N'),
(6, 66, '3', 'N'),
(6, 67, '2', 'N'),
(6, 68, '4', 'Y'),
(6, 69, '5', 'Y'),
(6, 72, '5', 'Y'),
(6, 73, '3', 'Y'),
(6, 74, '5', 'N'),
(6, 76, '5', 'N'),
(6, 81, '3', 'N'),
(6, 82, '5', 'N'),
(6, 83, '2', 'Y'),
(6, 85, '3', 'Y'),
(6, 86, '5', 'N'),
(6, 94, '1', 'N'),
(6, 95, '2', 'Y'),
(6, 97, '5', 'N'),
(7, 1, '3', 'N'),
(7, 5, '2', 'N'),
(7, 8, '3', 'Y'),
(7, 9, '1', 'Y'),
(7, 12, '4', 'Y'),
(7, 17, '3', 'N'),
(7, 21, '5', 'Y'),
(7, 22, '3', 'N'),
(7, 25, '3', 'Y'),
(7, 26, '2', 'Y'),
(7, 28, '1', 'N'),
(7, 29, '5', 'Y'),
(7, 31, '3', 'Y'),
(7, 35, '5', 'Y'),
(7, 36, '5', 'N'),
(7, 37, '4', 'N'),
(7, 39, '2', 'Y'),
(7, 41, '5', 'Y'),
(7, 55, '4', 'Y'),
(7, 56, '5', 'Y'),
(7, 57, '5', 'N'),
(7, 64, '2', 'N'),
(7, 67, '1', 'N'),
(7, 70, '4', 'Y'),
(7, 72, '5', 'Y'),
(7, 74, '5', 'Y'),
(7, 79, '2', 'N'),
(7, 84, '2', 'Y'),
(7, 87, '1', 'Y'),
(7, 88, '4', 'Y'),
(7, 89, '5', 'N'),
(7, 94, '4', 'N'),
(8, 4, '4', 'Y'),
(8, 5, '3', 'Y'),
(8, 6, '2', 'Y'),
(8, 10, '3', 'Y'),
(8, 11, '5', 'Y'),
(8, 13, '5', 'N'),
(8, 14, '5', 'N'),
(8, 15, '4', 'N'),
(8, 21, '4', 'Y'),
(8, 27, '4', 'N'),
(8, 31, '4', 'N'),
(8, 32, '1', 'N'),
(8, 34, '1', 'N'),
(8, 38, '3', 'N'),
(8, 43, '5', 'Y'),
(8, 47, '4', 'N'),
(8, 48, '3', 'N'),
(8, 50, '4', 'N'),
(8, 52, '4', 'Y'),
(8, 53, '2', 'Y'),
(8, 65, '4', 'N'),
(8, 67, '2', 'Y'),
(8, 70, '1', 'Y'),
(8, 75, '3', 'N'),
(8, 77, '2', 'N'),
(8, 78, '3', 'Y'),
(8, 80, '1', 'N'),
(8, 86, '4', 'Y'),
(8, 91, '4', 'Y'),
(8, 92, '4', 'N'),
(8, 95, '3', 'Y'),
(8, 96, '5', 'Y'),
(9, 1, '3', 'N'),
(9, 3, '5', 'Y'),
(9, 4, '1', 'Y'),
(9, 5, '2', 'Y'),
(9, 8, '2', 'Y'),
(9, 9, '4', 'N'),
(9, 10, '2', 'N'),
(9, 11, '1', 'Y'),
(9, 13, '3', 'N'),
(9, 14, '1', 'Y'),
(9, 15, '2', 'N'),
(9, 16, '5', 'N'),
(9, 21, '5', 'Y'),
(9, 22, '4', 'N'),
(9, 30, '5', 'N'),
(9, 32, '4', 'Y'),
(9, 45, '4', 'N'),
(9, 46, '3', 'Y'),
(9, 47, '5', 'Y'),
(9, 48, '4', 'N'),
(9, 49, '3', 'Y'),
(9, 50, '1', 'Y'),
(9, 51, '5', 'Y'),
(9, 75, '4', 'N'),
(9, 92, '1', 'Y'),
(9, 96, '4', 'Y'),
(9, 97, '5', 'Y'),
(9, 98, '1', 'Y'),
(10, 2, '4', 'Y'),
(10, 4, '1', 'N'),
(10, 6, '2', 'Y'),
(10, 7, '3', 'N'),
(10, 11, '2', 'Y'),
(10, 15, '1', 'Y'),
(10, 17, '5', 'Y'),
(10, 19, '4', 'Y'),
(10, 20, '5', 'Y'),
(10, 23, '3', 'N'),
(10, 24, '3', 'Y'),
(10, 25, '5', 'N'),
(10, 26, '2', 'Y'),
(10, 29, '4', 'Y'),
(10, 30, '1', 'N'),
(10, 31, '1', 'Y'),
(10, 32, '3', 'N'),
(10, 35, '4', 'N'),
(10, 38, '2', 'Y'),
(10, 40, '1', 'N'),
(10, 45, '4', 'N'),
(10, 50, '1', 'Y'),
(10, 52, '4', 'Y'),
(10, 57, '1', 'N'),
(10, 67, '5', 'Y'),
(10, 69, '1', 'N'),
(10, 71, '3', 'N'),
(10, 79, '5', 'Y'),
(10, 82, '1', 'Y'),
(10, 83, '5', 'N'),
(10, 92, '1', 'N'),
(10, 93, '1', 'Y'),
(10, 96, '1', 'N'),
(10, 97, '1', 'Y');

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
  ADD PRIMARY KEY (`id_boulder`,`id_studente`),
  ADD KEY `id_studente` (`id_studente`);

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
  ADD CONSTRAINT `atleta_boulder_ibfk_1` FOREIGN KEY (`id_studente`) REFERENCES `atleta` (`id`),
  ADD CONSTRAINT `atleta_boulder_ibfk_2` FOREIGN KEY (`id_boulder`) REFERENCES `boulder` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
