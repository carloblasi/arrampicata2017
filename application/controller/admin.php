<?php

/**
 * Class Admin
 *
 * Please note:
 * Don't use the same name for class and method, as this might trigger an (unintended) __construct of the class.
 * This is really weird behaviour, but documented here: http://php.net/manual/en/language.oop5.decon.php
 *
 */
class Admin extends Controller
{
	/**
	 * PAGINA: selezionaboulder
	 * Questo metodo reindirizza l'arbitro alla selezione del boulder, ho aggiunto questo metodo invece che lasciare solo
	 * selezionaboulder() così l'arbitro raggiunge quella pagina usando un URL più breve (http://<indirizzo>:<porta>/gara), e il metodo
	 * index è richiesto per evitare errori
	 */
	public function index()
	{
		header('location: ' . URL . 'admin/aggiungistudente');
	}

	public function aggiungistudente()
	{
		if (isset($_POST["name"]) && isset($_POST["cognome"])) 
		{
			$nome = $_POST["name"];
			$cognome = $_POST["cognome"];
			$sesso = $_POST["sesso"];
			$data_nascita = $_POST["data_nascita"];
			$id_scuola = $_POST["scuola"];
			$this->model->addAtleta($nome, $cognome, $data_nascita, $sesso, $id_scuola);
		}
		require APP . 'view/admin/aggiungi_studente.php';
	}

	public function classifica()
	{
		require APP . 'view/admin/classifica.php';
	}

	public function generaPettorine()
	{
		require APP . 'view/admin/genera_pettorine.php';
	}

	public function generaElenchi()
	{
		require APP . 'view/admin/genera_elenchi.php';
	}

	/**
	 * CODICE PER LA POPOLAZIONE AUTOMATICA DEL DB
	 * NON USARE! NON GUARDARE! NON TOCCARE!
	 */
	public function test_populate()
	{
		$names_m = 'Francesco Alessandro Mattia Lorenzo Leonardo Andrea Gabriele Matteo Tommaso Riccardo Davide Giuseppe Edoardo Antonio Federico Giovanni Marco Diego Samuele Pietro Christian Nicolo\' Luca Simone Filippo Alessio Gabriel Michele Emanuele Jacopo Daniele Cristian Giacomo Vincenzo Salvatore Gioele Giulio Manuel Thomas Samuel Daniel Giorgio Stefano Elia Luigi Nicola Angelo Mario Raffaele Domenico';

		$names_f = 'Sofia Aurora Giulia Giorgia Alice Martina Emma Greta Chiara Anna Sara Ginevra Gaia Beatrice Noemi Francesca Nicole Alessia Vittoria Matilde Arianna Viola Giada Rebecca Camilla Elena Elisa Mia Bianca Maria Marta Ludovica Gioia Adele Asia Melissa Miriam Eleonora Irene Benedetta Caterina Serena Carlotta Angelica Margherita Ilaria Anita Emily Alessandra Rachele';

		$surnames = 'Rossi Russo Ferrari Esposito Bianchi Romano Colombo Ricci Marino Greco Bruno Gallo Conti De Luca Mancini Costa Giordano Rizzo Lombardi Moretti Barbieri Fontana Santoro Mariani Rinaldi Caruso Ferrara Galli Martini Leone Longo Gentile Martinelli Vitale Lombardo Serra Coppola De Santis D\'angelo Marchetti Parisi Villa Conte Ferraro Ferri Fabbri Bianco Marini Grasso Valentini Messina Sala De Angelis Gatti Pellegrini Palumbo Sanna Farina Rizzi Monti Cattaneo Morelli Amato Silvestri Mazza Testa Grassi Pellegrino Carbone Giuliani Benedetti Barone Rossetti Caputo Montanari Guerra Palmieri Bernardi Martino Fiore De Rosa Ferretti Bellini Basile Riva Donati Piras Vitali Battaglia Sartori Neri Costantini Milani Pagano Ruggiero Sorrentino D\'amico Orlando Damico Negri';

		$array = explode(' ', $names_m);
		$array1 = explode(' ', $surnames);
		for ($i = 1; $i <= 200; $i++) 
		{
			/** $nome=$array[rand(0,count($array))];
			*$cognome=$array1[rand(0,count($array1))];
			*$id_scuola=rand(1,5);
			*$sesso = "M";
			*$g=rand(1,28);
			*$m=rand(1,12);
			*$a=rand(1997,2002);
			*$data_nascita = $a."-".$m."-".$g;
			*$this->model->addAtleta($nome, $cognome, $data_nascita, $sesso, $id_scuola);*/
			//$this->model->addCasacca($i, $i);
			$tentativi = rand(1, 5);
			$passato = rand(0, 1);

			if ($passato == 1)
				$passato = 'Y';
			else
				$passato = 'N';

			$this->model->addTentativo(rand(1, 10), rand(1, 99), (string) $tentativi, $passato);
		}
	}
}
