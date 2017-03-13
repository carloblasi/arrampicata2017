<?php

class Model
{
<<<<<<< HEAD
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
        $sql = 'INSERT INTO atleta_boulder (id_boulder, id_studente, n_tentativi, passato)
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
                WHERE atleta_boulder.id_studente=atleta.id AND atleta_boulder.id_boulder=boulder.id
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
     * Restituisce oggetti con attributi nome, boulder, n_tentativi
     */
    public function getTentativi($casacca)
    {
        $sql = "SELECT atleta.nome AS nome, boulder.nome AS boulder, atleta_boulder.n_tentativi AS tentativi
                FROM atleta_boulder, atleta, boulder
                WHERE atleta_boulder.id_studente=atleta.id 
                AND atleta_boulder.id_boulder=boulder.id
                AND atleta.casacca=:casacca
                AND atleta_boulder.passato='Y'";

        $query = $this->db->prepare($sql);
        $parameters = array(':casacca'=>$casacca);
        $query -> execute($parameters);

        return $query -> fetchAll();
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
    * Funzione che ritorna tutti i numeri di pettorina
    */
    public function getNumeriPettorina()
    {
        $sql = "SELECT nome, cognome, casacca FROM atleta";
        $query = $this->db->prepare($sql);
        $query->execute();
        return $query->fetchAll();
    }

    /**
     * Add a song to database
     * TODO put this explanation into readme and remove it from here
     * Please note that it's not necessary to "clean" our input in any way. With PDO all input is escaped properly
     * automatically. We also don't use strip_tags() etc. here so we keep the input 100% original (so it's possible
     * to save HTML and JS to the database, which is a valid use case). Data will only be cleaned when putting it out
     * in the views (see the views for more info).
     * @param string $artist Artist
     * @param string $track Track
     * @param string $link Link
     */
    // public function addSong($artist, $track, $link)
    // {
    //     $sql = "INSERT INTO song (artist, track, link) VALUES (:artist, :track, :link)";
    //     $query = $this->db->prepare($sql);
    //     $parameters = array(':artist' => $artist, ':track' => $track, ':link' => $link);

    //     // useful for debugging: you can see the SQL behind above construction by using:
    //     // echo '[ PDO DEBUG ]: ' . Helper::debugPDO($sql, $parameters);  exit();

    //     $query->execute($parameters);
    // }

    /**
     * Delete a song in the database
     * Please note: this is just an example! In a real application you would not simply let everybody
     * add/update/delete stuff!
     * @param int $song_id Id of song
     */
    // public function deleteSong($song_id)
    // {
    //     $sql = "DELETE FROM song WHERE id = :song_id";
    //     $query = $this->db->prepare($sql);
    //     $parameters = array(':song_id' => $song_id);

    //     // useful for debugging: you can see the SQL behind above construction by using:
    //     // echo '[ PDO DEBUG ]: ' . Helper::debugPDO($sql, $parameters);  exit();

    //     $query->execute($parameters);
    // }

    /**
     * Get a song from database
     */
    // public function getSong($song_id)
    // {
    //     $sql = "SELECT id, artist, track, link FROM song WHERE id = :song_id LIMIT 1";
    //     $query = $this->db->prepare($sql);
    //     $parameters = array(':song_id' => $song_id);

    //     // useful for debugging: you can see the SQL behind above construction by using:
    //     // echo '[ PDO DEBUG ]: ' . Helper::debugPDO($sql, $parameters);  exit();

    //     $query->execute($parameters);

    //     // fetch() is the PDO method that get exactly one result
    //     return $query->fetch();
    // }

    /**
     * Update a song in database
     * // TODO put this explaination into readme and remove it from here
     * Please note that it's not necessary to "clean" our input in any way. With PDO all input is escaped properly
     * automatically. We also don't use strip_tags() etc. here so we keep the input 100% original (so it's possible
     * to save HTML and JS to the database, which is a valid use case). Data will only be cleaned when putting it out
     * in the views (see the views for more info).
     * @param string $artist Artist
     * @param string $track Track
     * @param string $link Link
     * @param int $song_id Id
     */
    // public function updateSong($artist, $track, $link, $song_id)
    // {
    //     $sql = "UPDATE song SET artist = :artist, track = :track, link = :link WHERE id = :song_id";
    //     $query = $this->db->prepare($sql);
    //     $parameters = array(':artist' => $artist, ':track' => $track, ':link' => $link, ':song_id' => $song_id);

    //     // useful for debugging: you can see the SQL behind above construction by using:
    //     // echo '[ PDO DEBUG ]: ' . Helper::debugPDO($sql, $parameters);  exit();

    //     $query->execute($parameters);
    // }

    /**
     * Get simple "stats". This is just a simple demo to show
     * how to use more than one model in a controller (see application/controller/songs.php for more)
     */
    // public function getAmountOfSongs()
    // {
    //     $sql = "SELECT COUNT(id) AS amount_of_songs FROM song";
    //     $query = $this->db->prepare($sql);
    //     $query->execute();

    //     // fetch() is the PDO method that get exactly one result
    //     return $query->fetch()->amount_of_songs;
    // }
=======
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
		$sql = 'INSERT INTO atleta_boulder (id_boulder, id_studente, n_tentativi, passato)
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
				WHERE atleta_boulder.id_studente=atleta.id AND atleta_boulder.id_boulder=boulder.id
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
	 * Restituisce oggetti con attributi nome, boulder, n_tentativi
	 */
	public function getTentativi($casacca)
	{
		$sql = "SELECT atleta.nome AS nome, boulder.nome AS boulder, atleta_boulder.n_tentativi AS tentativi
				FROM atleta_boulder, atleta, boulder
				WHERE atleta_boulder.id_studente=atleta.id 
				AND atleta_boulder.id_boulder=boulder.id
				AND atleta.casacca=:casacca
				AND atleta_boulder.passato='Y'";

		$query = $this->db->prepare($sql);
		$parameters = array(':casacca'=>$casacca);
		$query -> execute($parameters);

		return $query -> fetchAll();
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
	 * Funzione che ritorna i nomi di tutti i boulder
	 */
	public function getAllBoulders()
	{
		$sql = 'SELECT nome FROM boulder';

		$query = $this->db->prepare($sql);
		$query->execute();

		return $query -> fetchAll();
	}

	/**
	 * Add a song to database
	 * TODO put this explanation into readme and remove it from here
	 * Please note that it's not necessary to "clean" our input in any way. With PDO all input is escaped properly
	 * automatically. We also don't use strip_tags() etc. here so we keep the input 100% original (so it's possible
	 * to save HTML and JS to the database, which is a valid use case). Data will only be cleaned when putting it out
	 * in the views (see the views for more info).
	 * @param string $artist Artist
	 * @param string $track Track
	 * @param string $link Link
	 */
	// public function addSong($artist, $track, $link)
	// {
	//     $sql = "INSERT INTO song (artist, track, link) VALUES (:artist, :track, :link)";
	//     $query = $this->db->prepare($sql);
	//     $parameters = array(':artist' => $artist, ':track' => $track, ':link' => $link);

	//     // useful for debugging: you can see the SQL behind above construction by using:
	//     // echo '[ PDO DEBUG ]: ' . Helper::debugPDO($sql, $parameters);  exit();

	//     $query->execute($parameters);
	// }

	/**
	 * Delete a song in the database
	 * Please note: this is just an example! In a real application you would not simply let everybody
	 * add/update/delete stuff!
	 * @param int $song_id Id of song
	 */
	// public function deleteSong($song_id)
	// {
	//     $sql = "DELETE FROM song WHERE id = :song_id";
	//     $query = $this->db->prepare($sql);
	//     $parameters = array(':song_id' => $song_id);

	//     // useful for debugging: you can see the SQL behind above construction by using:
	//     // echo '[ PDO DEBUG ]: ' . Helper::debugPDO($sql, $parameters);  exit();

	//     $query->execute($parameters);
	// }

	/**
	 * Get a song from database
	 */
	// public function getSong($song_id)
	// {
	//     $sql = "SELECT id, artist, track, link FROM song WHERE id = :song_id LIMIT 1";
	//     $query = $this->db->prepare($sql);
	//     $parameters = array(':song_id' => $song_id);

	//     // useful for debugging: you can see the SQL behind above construction by using:
	//     // echo '[ PDO DEBUG ]: ' . Helper::debugPDO($sql, $parameters);  exit();

	//     $query->execute($parameters);

	//     // fetch() is the PDO method that get exactly one result
	//     return $query->fetch();
	// }

	/**
	 * Update a song in database
	 * // TODO put this explaination into readme and remove it from here
	 * Please note that it's not necessary to "clean" our input in any way. With PDO all input is escaped properly
	 * automatically. We also don't use strip_tags() etc. here so we keep the input 100% original (so it's possible
	 * to save HTML and JS to the database, which is a valid use case). Data will only be cleaned when putting it out
	 * in the views (see the views for more info).
	 * @param string $artist Artist
	 * @param string $track Track
	 * @param string $link Link
	 * @param int $song_id Id
	 */
	// public function updateSong($artist, $track, $link, $song_id)
	// {
	//     $sql = "UPDATE song SET artist = :artist, track = :track, link = :link WHERE id = :song_id";
	//     $query = $this->db->prepare($sql);
	//     $parameters = array(':artist' => $artist, ':track' => $track, ':link' => $link, ':song_id' => $song_id);

	//     // useful for debugging: you can see the SQL behind above construction by using:
	//     // echo '[ PDO DEBUG ]: ' . Helper::debugPDO($sql, $parameters);  exit();

	//     $query->execute($parameters);
	// }

	/**
	 * Get simple "stats". This is just a simple demo to show
	 * how to use more than one model in a controller (see application/controller/songs.php for more)
	 */
	// public function getAmountOfSongs()
	// {
	//     $sql = "SELECT COUNT(id) AS amount_of_songs FROM song";
	//     $query = $this->db->prepare($sql);
	//     $query->execute();

	//     // fetch() is the PDO method that get exactly one result
	//     return $query->fetch()->amount_of_songs;
	// }
>>>>>>> origin/master
}
