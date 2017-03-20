<?php

class Model
{
	/**
	 * @param object $db A PDO database connection
	 */
	function __construct($db)
	{
		try {
			$this->db = $db;
		} catch (PDOException $e) {
			exit('Database connection could not be established.');
		}
	}

	/**
	 * Prende tutti gli atleti dal database
	 */
	public function getAllAtleti()
	{
		$sql = 'SELECT * FROM atleta';
		$query = $this->db->prepare($sql);
		$query->execute();

		return $query->fetchAll();
	}


	/**
	* Permette di avere un elenco di tutti i partecipant con le loro pettorine
	*/
	public function getElencoPettorine()
	{
		$sql = 'SELECT atleta.casacca, atleta.nome, atleta.cognome, scuola.nome_scuola 
				FROM atleta, scuola WHERE atleta.id_scuola = scuola.id ORDER BY atleta.casacca';
		$query = $this->db->prepare($sql);
		$query->execute();
		return $query->fetchAll();
	}

	/**
	* Permette l'assegnamento delle pettorine ad ogni atleta presente
	*/
	public function setAllPettorine()
	{
		$sql = 'CREATE TABLE pettorine AS
			(
			SELECT atleta.nome as Nome, atleta.cognome as Cognome, atleta.sesso as Sesso,
			atleta.data_nascita as \'Data di nascita\',scuola.nome_scuola as Scuola, atleta.id as \'id_origi\'
			FROM atleta, scuola WHERE scuola.id = atleta.id_scuola ORDER BY scuola.nome_scuola
			)';
		$query = $this->db->prepare($sql);
		$query -> execute();

		$sql = 'ALTER TABLE pettorine ADD pettorina INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY FIRST,
			AUTO_INCREMENT = 1';
		$query = $this->db->prepare($sql);
		$query -> execute();

		$sql = "UPDATE atleta JOIN pettorine
				ON atleta.id = pettorine.id_origi
				SET atleta.casacca = pettorine.pettorina";
		$query = $this->db->prepare($sql);
		$query -> execute();

		$sql = "DROP TABLE pettorine";
		$query = $this->db->prepare($sql);
		$query -> execute();

	}

	/**
	 * Prende il nome di tutte le scuole dal database
	 */
	public function getAllScuole()
	{
		$sql = 'SELECT * FROM scuola';
		$query = $this->db->prepare($sql);
		$query->execute();

		return $query->fetchAll();
	}

	/**
	 * Prende il nome di tutti boulder
	 */
	public function getAllBoulders()
	{
		$sql = 'SELECT nome FROM boulder';
		$query = $this->db->prepare($sql);
		$query->execute();

		return $query->fetchAll();
	}

	/**
	 * Prende il numero di tutte le pettorine
	 */
	public function getAllPettorine()
	{
		$sql = 'SELECT casacca FROM atleta ORDER BY casacca';
		$query = $this->db->query($sql);

		return $query->fetchAll();
	}


	/**
	 * Aggiunge un atleta nel database
	 */
	public function addAtleta($nome, $cognome, $data_nascita, $sesso, $id_scuola)
	{
		$sql = 'INSERT INTO atleta (nome, cognome, data_nascita, sesso, id_scuola)
				VALUES (:nome, :cognome, :data_nascita, :sesso, :id_scuola)';

		$query = $this->db->prepare($sql);
		$parameters = array(':nome' => $nome,
							':cognome'=>$cognome,
							':data_nascita' => $data_nascita,
							':sesso' => $sesso,
							':id_scuola' => $id_scuola);

		$query->execute($parameters);
	}

	/**
	 * Ritorna classifica dato un certo sesso e range di anni
	 * da sostituire con getClassificaGlobal una volta fintia
	 */
	public function getClassifica($anno_min, $anno_max, $sesso)
	{
		$sql = 'SET @rank=0';
		$query = $this->db->query($sql);
		$sql = 'SELECT @rank:=@rank+1 AS posizione, classifica_pivot.cognome as cognome, classifica_pivot.nome as nome, classifica_pivot.punteggio,classifica_pivot.1,
				classifica_pivot.2,classifica_pivot.3,classifica_pivot.4,classifica_pivot.5,classifica_pivot.6,classifica_pivot.7,classifica_pivot.8,classifica_pivot.9,
				classifica_pivot.10
				FROM classifica_pivot
				WHERE YEAR(classifica_pivot.data_nascita) BETWEEN :anno_min AND :anno_max
				AND classifica_pivot.sesso=:sesso
				ORDER BY punteggio DESC, cognome';

		$query = $this->db->prepare($sql);
		$parameters = array(':anno_min' => $anno_min,
							':anno_max' => $anno_max,
							':sesso' => $sesso);

		$query->execute($parameters);
		return $query->fetchAll();
	}

	/**
	 * Aggiunge il punteggio a un dato atleta partendo dal numero della casacca
	 * non più necessaria per il calcolo della classifica, rimuovere?
	 */
	public function addPunteggio($casacca, $punteggio)
	{
		$sql = 'UPDATE atleta
				SET punteggio=:punteggio
				WHERE casacca=:casacca';

		$query = $this->db->prepare($sql);
		$parameters = array(':punteggio' => $punteggio,
							':casacca' => $casacca);

		$query->execute($parameters);
	}

	/**
	 * Aggiunge un tentativo, partendo da casacca e boulder, se la coppia atleta-boulder è già presente UPDATE
	 */
	public function addTentativo($id_boulder, $casacca, $tentativo, $passato)
	{
		$sql = 'INSERT INTO atleta_boulder (id_boulder, id_atleta, n_tentativi, passato)
				VALUES (:id_boulder, (SELECT id FROM atleta WHERE casacca=:casacca), :n_tentativi, :passato)
				ON DUPLICATE KEY UPDATE n_tentativi=:n_tentativi, passato=:passato';

		$query = $this->db->prepare($sql);

		$parameters = array(':id_boulder' => $id_boulder,
							':casacca' => $casacca,
							':n_tentativi' => $tentativo,
							':passato' => $passato);

		$query->execute($parameters);
	}


	/**
	* Funzione che aggiusta il tentativo
	*/
	public function aggiustaTentativo($id_boulder, $casacca, $tentativo, $passato)
	{	
		/*
		$sql = 'UPDATE atleta_boulder SET n_tentativi = :tentativi, passato = :passato
				WHERE ';
		*/
		$sql = 'SELECT id FROM atleta where casacca = :casacca';
		$query = $this->db->prepare($sql);
		$parameters = array(':casacca'=>$casacca);
		$query->execute($parameters);
		$result = $query->fetchAll();
		$id = $result[0]->id;
		$sql = 'UPDATE atleta_boulder SET n_tentativi = :tentativi, passato = :passato
				WHERE id_atleta = :id';
		$query = $this->db->prepare($sql);
		$parameters = array(':tentativi'=>$tentativo,':passato'=>$passato,':id'=>$id);
		$query->execute($parameters);
	}

	/**
	 * Associa una casacca ad un dato id
	 */
	public function addCasacca($id, $casacca)
	{
		$sql = 'UPDATE atleta
				SET casacca=:casacca
				WHERE id=:id';

		$query = $this->db->prepare($sql);
		$parameters = array(':casacca' => $casacca,
							':id' => $id);

		$query->execute($parameters);
	}


	/**
	 * Stabilito un certo Boulder e l'anno entro il quale è valido il punteggio
	 * ritorna il numero di alunni che hanno passato quel boulder
	 */
	public function getAtletiPassati($nome_boulder, $anno_limite)
	{
		$sql = "SELECT COUNT(passato) as numero
				FROM atleta_boulder,boulder,atleta
				WHERE atleta_boulder.id_atleta=atleta.id AND atleta_boulder.id_boulder=boulder.id
				AND atleta_boulder.passato='Y'
				AND (YEAR(atleta.data_nascita)>=:anno_limite)
				AND boulder.nome=:nome_boulder";

		$query = $this->db->prepare($sql);
		$parameters = array(':anno_limite' => $anno_limite,
							':nome_boulder' => $nome_boulder);
		$query -> execute($parameters);
		$n = $query -> fetch();

		return $n->numero;
	}

	/**
	 * Ritorna un array contenente TUTTI boulder e i rispettivi "valori" array(NumeroBoulder=>Valore)
	 * il "valore" di un boulder è dato dalla formula: 100/numero atleti che hanno passato quel boulder
	 * Non più necessaria si può rimuovere?
	 */
	public function getValBoulders()
	{
		$sql = "SELECT boulder as nome,valboulder as valore
						FROM `valboulders`";
		$query = $this->db->query($sql);
		return $query->fetchAll(PDO::FETCH_KEY_PAIR);
	}

	/**
	 * Ritorna un array con il n° di tentativi per ogni boulder che un determinato atleta ha passato, SOLO quelli che ha passato
	 * Non più usata per la classifica si può cancellare?
	 */
	public function getTentativi($casacca)
	{
		$sql = "SELECT atleta.nome AS nome, boulder.nome AS boulder, atleta_boulder.n_tentativi AS tentativi
				FROM atleta_boulder, atleta, boulder
				WHERE atleta_boulder.id_atleta=atleta.id
				AND atleta_boulder.id_boulder=boulder.id
				AND atleta.casacca=:casacca
				AND atleta_boulder.passato='Y'";

		$query = $this->db->prepare($sql);
		$parameters = array(':casacca' => $casacca);
		$query->execute($parameters);

		return $query->fetchAll();
	}

	/**
	* Funzione che ritorna il numero di tentativi di un determinato atleta in un determinato boulder
	*/
	public function getTentativoAtleta($casacca, $boulder)
	{
		$sql = "SELECT n_tentativi as tentativi
				FROM atleta_boulder
				WHERE atleta_boulder.id_atleta=(SELECT id FROM atleta WHERE casacca=:casacca)
				AND atleta_boulder.id_boulder=:boulder";

		$query = $this->db->prepare($sql);
		$parameters = array(':casacca' => $casacca,
							':boulder' => $boulder);
		$query->execute($parameters);
		$result = $query->fetch();

		// Se non esiste ancora l'entry nella tabella atleta_boulder allora restituisci 0, il numero di tentativi da cui partire
		if (!is_object($result)) {
			return 0;
		}
		// Aggiungere controlli per quando sono finiti i tentativi o è gia passato
		return $result->tentativi;
	}

	/**
	* Funzione che ritorna se un determinato atleta ha passato ('Y') oppure no ('N') un determinato boulder
	*/
	public function getEsitoAtleta($casacca, $boulder)
	{
		$sql = "SELECT passato
				FROM atleta_boulder
				WHERE atleta_boulder.id_atleta=(SELECT id FROM atleta WHERE casacca=:casacca)
				AND atleta_boulder.id_boulder=:boulder";

		$query = $this->db->prepare($sql);
		$parameters = array(':casacca' => $casacca,
							':boulder' => $boulder);
		$query->execute($parameters);
		$result = $query->fetch();

		// Se non esiste ancora l'entry nella tabella atleta_boulder allora restituisci 0, il numero di tentativi da cui partire
		if (!is_object($result)) {
			return 'N';
		}
		// Aggiungere controlli per quando sono finiti i tentativi o è gia passato
		return $result->passato;
	}

	/**
	* Funzione che ritorna l'id di un atleta data la casacca, mannaggia a voi
	*/
	public function getAtletaID($casacca)
	{
		$sql = 'SELECT id FROM atleta WHERE casacca=:casacca';

		$query = $this->db->prepare($sql);
		$parameters = array(':casacca' => $casacca);
		$query->execute($parameters);
		$result = $query->fetch();

		// Se non esiste ancora l'entry nella tabella atleta_boulder allora restituisci 0, il numero di tentativi da cui partire
		// if (!is_object($result)) {
		// 	return 0;
		// }
		// Aggiungere controlli per quando sono finiti i tentativi o è gia passato
		return $result->id;
	}

	/**
	 * Funzione che corregge il punteggio di un atleta
	 */
	public function aggiustaPunteggio($id_atleta, $n_boulder, $n_tentativi, $passato)
	{
		$sql = 'UPDATE atleta_boulder SET n_tentativi = :tentativi, passato = :passato
		WHERE id_atleta = :id AND id_boulder = :boulder_id';
		$query = $this->db->prepare();
		$parameters = array(':tentativi'=>$n_tentativi, ':passato'=>$passato,':id'=>$id_atleta,':boulder_id'=>$n_boulder);
		$query ->execute($parameters);
	}

	/**
	 * Funzione che ritorna tutti gli atleti maschi
	 */
	public function getAllAtletiMaschi()
	{
		$sql = "SELECT atleta.nome, atleta.cognome, atleta.data_nascita, atleta.sesso, scuola.nome_scuola
				FROM atleta, scuola
				WHERE scuola.id = atleta.id_scuola AND atleta.sesso = 'M'";

		$query = $this->db->prepare($sql);
		$query->execute();

		return $query -> fetchAll();
	}

	/**
	 * Funzione che ritorna tutti gli atleti femmine
	 */
	public function getAllAtletiFemmine()
	{
		$sql = "SELECT atleta.nome, atleta.cognome, atleta.data_nascita, atleta.sesso, scuola.nome_scuola
				FROM atleta, scuola
				WHERE scuola.id = atleta.id_scuola AND atleta.sesso = 'F'";

		$query = $this->db->prepare($sql);
		$query->execute();

		return $query -> fetchAll();
	}

	/**
	 * Funzione che ritorna tutti gli atleti maschi della categoria 'allievi'
	 */
	public function getAllAtletiMaschiAllievi()
	{
		$sql = "SELECT atleta.nome, atleta.cognome, atleta.data_nascita, atleta.sesso, scuola.nome_scuola,
				YEAR(CURDATE())-YEAR(atleta.data_nascita) AS anni
				FROM atleta, scuola
				WHERE scuola.id = atleta.id_scuola AND atleta.sesso = 'M'
				AND (YEAR(CURDATE())-YEAR(atleta.data_nascita)>=15 AND YEAR(CURDATE())-YEAR(atleta.data_nascita)<=16)";

		$query = $this->db->prepare($sql);
		$query->execute();

		return $query -> fetchAll();
	}

	/**
	 * Funzione che ritorna tutti gli atleti femmine della categoria 'allievi'
	 */
	public function getAllAtletiFemmineAllievi()
	{
		$sql = "SELECT atleta.nome, atleta.cognome, atleta.data_nascita, atleta.sesso, scuola.nome_scuola,
				YEAR(CURDATE())-YEAR(atleta.data_nascita) AS anni
				FROM atleta, scuola
				WHERE scuola.id = atleta.id_scuola AND atleta.sesso = 'F'
				AND (YEAR(CURDATE())-YEAR(atleta.data_nascita)>=15 AND YEAR(CURDATE())-YEAR(atleta.data_nascita)<=16)";

		$query = $this->db->prepare($sql);
		$query->execute();

		return $query -> fetchAll();
	}

	/**
	 * Funzione che ritorna tutti gli atleti maschi della categoria 'juniores'
	 */
	public function getAllAtletiMaschiJuniores()
	{
		$sql = "SELECT atleta.nome, atleta.cognome, atleta.data_nascita, atleta.sesso, scuola.nome_scuola,
				YEAR(CURDATE())-YEAR(atleta.data_nascita) AS anni
				FROM atleta, scuola
				WHERE scuola.id = atleta.id_scuola AND atleta.sesso = 'M'
				AND (YEAR(CURDATE())-YEAR(atleta.data_nascita)>16 AND YEAR(CURDATE())-YEAR(atleta.data_nascita)<=19)";

		$query = $this->db->prepare($sql);
		$query->execute();

		return $query -> fetchAll();
	}

	/**
	 * Funzione che ritorna tutti gli atleti femmine della categoria 'juniores'
	 */
	public function getAllAtletiFemmineJuniores()
	{
		$sql = "SELECT atleta.nome, atleta.cognome, atleta.data_nascita, atleta.sesso, scuola.nome_scuola,
				YEAR(CURDATE())-YEAR(atleta.data_nascita) AS anni
				FROM atleta, scuola
				WHERE scuola.id = atleta.id_scuola AND atleta.sesso = 'F'
				AND (YEAR(CURDATE())-YEAR(atleta.data_nascita)>16 AND YEAR(CURDATE())-YEAR(atleta.data_nascita)<=19)";

		$query = $this->db->prepare($sql);
		$query->execute();

		return $query -> fetchAll();
	}

	/**
	* Funzione che ritorna tutti i numeri di pettorina (SOLO i numeri di pettorina)
	*/
	public function getNumeriPettorina()
	{
		$sql = "SELECT nome, cognome, casacca FROM atleta";
		$query = $this->db->prepare($sql);
		$query->execute();
		return $query->fetchAll();
	}
}
