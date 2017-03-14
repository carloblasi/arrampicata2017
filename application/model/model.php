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
		$sql = 'SELECT casacca FROM atleta';
		$query = $this->db->prepare($sql);
		$query->execute();

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
	 */
	public function getClassifica($anno_min, $anno_max, $sesso)
	{
	   $sql = 'SELECT nome, cognome, YEAR(data_nascita) AS anno, punteggio
			   FROM atleta
			   WHERE YEAR(data_nascita) BETWEEN :anno_min and :anno_max
			   AND sesso=:sesso
			   ORDER BY punteggio DESC';

	   $query = $this->db->prepare($sql);
	   $parameters = array(':anno_min' => $anno_min,
							':anno_max' => $anno_max,
							':sesso' => $sesso);

	   $query->execute($parameters);
	   return $query->fetchAll();
	}

	/**
	 * Aggiunge il punteggio a un dato atleta partendo dal numero della casacca
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
	 * Ritorna un array con il n° di tentativi per ogni boulder che un determinato atleta ha passato, SOLO quelli che ha passato
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
		// DOMANDA: nella tabella atleta_boulder il n_tentativi è il numero di tentativi già usati, no? Se è cosi, il n_tentativi passati alla vista deve essere incrementato di 1, così come fa adesso
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
	* Funzione che ritorna se un determinato atleta ha passato un determinato boulder ('Y' o 'N')
	*/
	public function getEsitoAtleta($casacca, $boulder)
	{
		// DOMANDA: nella tabella atleta_boulder il n_tentativi è il numero di tentativi già usati, no? Se è cosi, il n_tentativi passati alla vista deve essere incrementato di 1, così come fa adesso
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
	public function aggiustaPunteggio($idAtleta, $n_boulder, $n_tentativi, $passato)
	{

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
