CREATE DATABASE arrampicata;

USE arrampicata;

CREATE TABLE scuola 
(
	id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome_scuola VARCHAR(70) NOT NULL
);

CREATE TABLE atleta 
(
	id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(60) NOT NULL,
	cognome VARCHAR(60) NOT NULL,
	data_nascita DATE NOT NULL,
	sesso ENUM('M','F') NOT NULL,
	id_scuola INT UNSIGNED,
	casacca INT UNSIGNED NOT NULL,
	punteggio FLOAT UNSIGNED NOT NULL,
	FOREIGN KEY (id_scuola) REFERENCES scuola(id)
);

CREATE TABLE boulder 
(
	id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome INT UNSIGNED NOT NULL
);

CREATE TABLE atleta_boulder 
(
	id_boulder INT UNSIGNED,
	id_studente INT UNSIGNED,
	n_tentativi ENUM('1', '2', '3','4','5') NOT NULL DEFAULT '1',
	passato ENUM('Y', 'N') DEFAULT 'N',
	FOREIGN KEY (id_studente) REFERENCES atleta(id),
	FOREIGN KEY (id_boulder) REFERENCES boulder(id),
	PRIMARY KEY (id_boulder, id_studente) 
);

INSERT INTO atleta_boulder (id_boulder, id_studente, n_tentativi, passato)
VALUES (1, (SELECT id FROM atleta WHERE nome='Matteo'), 3, 'Y');

INSERT INTO atleta_boulder (id_boulder, id_studente, n_tentativi, passato)
VALUES (3, 2, 2, 'Y');

INSERT INTO scuola (nome_scuola) VALUES ('ITIS B.Castelli');
INSERT INTO scuola (nome_scuola) VALUES ('Calini');
INSERT INTO scuola (nome_scuola) VALUES ('Arnaldo');

INSERT INTO atleta (nome, cognome, data_nascita, sesso, id_scuola,casacca,punteggio) 
VALUES ('Pietra', 'Smusi','2000-12-22','F',2,13,50.7);

INSERT INTO atleta (nome, cognome, data_nascita, sesso, id_scuola,casacca,punteggio) 
VALUES ('Matteo', 'Regazzi','1997-01-23','M', 1,2,2.98);

UPDATE atleta
SET sesso='F'
WHERE nome='Gina'; 

INSERT INTO atleta (nome, cognome, data_nascita, sesso, id_scuola) 
VALUES ('Casa', 'Luce','1998-04-17','F', 2);

INSERT INTO boulder (nome) VALUES (1);
INSERT INTO boulder (nome) VALUES (2);
INSERT INTO boulder (nome) VALUES (3);
INSERT INTO boulder (nome) VALUES (4);
INSERT INTO boulder (nome) VALUES (5);
INSERT INTO boulder (nome) VALUES (6);
INSERT INTO boulder (nome) VALUES (7);
INSERT INTO boulder (nome) VALUES (8);
INSERT INTO boulder (nome) VALUES (9);
INSERT INTO boulder (nome) VALUES (10);

SELECT atleta.nome, atleta.cognome, atleta.data_nascita, atleta.sesso, scuola.nome_scuola 
FROM atleta, scuola
WHERE atleta.id_scuola = scuola.id;



SELECT atleta.casacca AS casacca, atleta.nome, atleta.cognome, atleta.punteggio,boulder.nome AS boulder, 
atleta_boulder.n_tentativi, atleta_boulder.passato 
FROM atleta,atleta_boulder,boulder
WHERE atleta.id = atleta_boulder.id_studente AND boulder.id = atleta_boulder.id_boulder;




INSERT INTO atleta (nome, cognome, data_nascita, sesso, id_scuola) 
VALUES ('Aurelio', 'Pennacchio', '1998-12-22', 'M', 1);

INSERT INTO atleta (nome, cognome, data_nascita, sesso, id_scuola) 
VALUES ('Matteo', 'Regazzi', '1998-01-23', 'M', 1);

INSERT INTO atleta (nome, cognome, data_nascita, sesso, id_scuola) 
VALUES ('Ilary', 'Blasi', '2000-12-22', 'F', 2);

INSERT INTO atleta (nome, cognome, data_nascita, sesso, id_scuola) 
VALUES ('Denise', 'Peli', '2001-07-13', 'F', 2);

INSERT INTO atleta (nome, cognome, data_nascita, sesso, id_scuola) 
VALUES ('Desiree', 'Dusi', '1999-07-02', 'F', 3);

INSERT INTO atleta (nome, cognome, data_nascita, sesso, id_scuola) 
VALUES ('Amelia', 'Odierna', '2002-04-27', 'F', 3);

//permette di trovare tutti gli atleti
SELECT atleta.nome, atleta.cognome, atleta.data_nascita, atleta.sesso, scuola.nome_scuola
FROM atleta, scuola
WHERE scuola.id = atleta.id_scuola;

//permette di trovare tutti gli atleti maschi
SELECT atleta.nome, atleta.cognome, atleta.data_nascita, atleta.sesso, scuola.nome_scuola
FROM atleta, scuola
WHERE scuola.id = atleta.id_scuola AND atleta.sesso = 'M';

//permette di trovare tutte le atlete femmine
SELECT atleta.nome, atleta.cognome, atleta.data_nascita, atleta.sesso, scuola.nome_scuola
FROM atleta, scuola
WHERE scuola.id = atleta.id_scuola AND atleta.sesso = 'F';



SELECT atleta.nome, atleta.cognome, atleta.data_nascita, atleta.sesso, scuola.nome_scuola, 
YEAR(CURDATE())-YEAR(atleta.data_nascita) AS anni
FROM atleta, scuola
WHERE scuola.id = atleta.id_scuola AND atleta.sesso = 'F';


SELECT atleta.nome, atleta.cognome, atleta.data_nascita, atleta.sesso, scuola.nome_scuola, 
YEAR(CURDATE())-YEAR(atleta.data_nascita) AS anni
FROM atleta, scuola
WHERE scuola.id = atleta.id_scuola AND atleta.sesso = 'M';


//permette di trovare tutte le atlete femmine che corrispondono alla categoria giovanissimi
SELECT atleta.nome, atleta.cognome, atleta.data_nascita, atleta.sesso, scuola.nome_scuola,
YEAR(CURDATE())-YEAR(atleta.data_nascita) AS anni
FROM atleta, scuola
WHERE scuola.id = atleta.id_scuola AND atleta.sesso = 'F' 
AND (YEAR(CURDATE())-YEAR(atleta.data_nascita)>=15 AND YEAR(CURDATE())-YEAR(atleta.data_nascita)<=16);

//permette di trovare tutti gli atleti maschi che corrispondono alla categoria giovanissimi
SELECT atleta.nome, atleta.cognome, atleta.data_nascita, atleta.sesso, scuola.nome_scuola,
YEAR(CURDATE())-YEAR(atleta.data_nascita) AS anni
FROM atleta, scuola
WHERE scuola.id = atleta.id_scuola AND atleta.sesso = 'M' 
AND (YEAR(CURDATE())-YEAR(atleta.data_nascita)>=15 AND YEAR(CURDATE())-YEAR(atleta.data_nascita)<=16);

//permette di trovare tutte le atlete femmine che corrispondono alla categoria juniores
SELECT atleta.nome, atleta.cognome, atleta.data_nascita, atleta.sesso, scuola.nome_scuola,
YEAR(CURDATE())-YEAR(atleta.data_nascita) AS anni
FROM atleta, scuola
WHERE scuola.id = atleta.id_scuola AND atleta.sesso = 'F' 
AND (YEAR(CURDATE())-YEAR(atleta.data_nascita)>16 AND YEAR(CURDATE())-YEAR(atleta.data_nascita)<=19);

//permette di trovare tutti gli atleti maschi che corrispondono alla categoria juniores
SELECT atleta.nome, atleta.cognome, atleta.data_nascita, atleta.sesso, scuola.nome_scuola,
YEAR(CURDATE())-YEAR(atleta.data_nascita) AS anni
FROM atleta, scuola
WHERE scuola.id = atleta.id_scuola AND atleta.sesso = 'M' 
AND (YEAR(CURDATE())-YEAR(atleta.data_nascita)>16 AND YEAR(CURDATE())-YEAR(atleta.data_nascita)<=19);


//query per la creazione dei numeri di pettorine

CREATE TABLE pettorine AS 
(
	SELECT atleta.nome as Nome, atleta.cognome as Cognome, atleta.sesso as Sesso, 
	atleta.data_nascita as 'Data di nascita',scuola.nome_scuola as Scuola, atleta.id as 'id_origi' 
	FROM atleta, scuola WHERE scuola.id = atleta.id_scuola ORDER BY scuola.nome_scuola
);

ALTER TABLE pettorine ADD id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY FIRST, 
AUTO_INCREMENT = 1;

UPDATE atleta JOIN pettorine 
	ON atleta.id = pettorine.id_origi
SET atleta.casacca = pettorine.id

select atleta.casacca, atleta.nome, atleta.cognome,atleta.data_nascita,atleta.sesso,scuola.nome_scuola
FROM atleta,scuola WHERE atleta.id_scuola = scuola.id ORDER by atleta.casacca


