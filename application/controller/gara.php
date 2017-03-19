<?php

/**
 * Class Gara
 *
 * Please note:
 * Don't use the same name for class and method, as this might trigger an (unintended) __construct of the class.
 * This is really weird behaviour, but documented here: http://php.net/manual/en/language.oop5.decon.php
 *
 */
class Gara extends Controller
{
	/**
	 * PAGINA: selezionaboulder
	 * Questo metodo reindirizza l'arbitro alla selezione del boulder, ho aggiunto questo metodo invece che lasciare solo 
	 * selezionaboulder() così l'arbitro raggiunge quella pagina usando un URL più breve (http://<indirizzo>:<porta>/gara), e il metodo
	 * index è richiesto per evitare errori
	 */
	public function index() 
	{
		header('location: ' . URL . 'gara/selezionaboulder');
	}

	/**
	 * PAGINA: selezionaboulder
	 * Questo metodo gestisce la richiesta http://<indirizzo>:<porta>/gara/selezionaboulder
	 */
	public function selezionaBoulder()
	{
		// Carica vista
		$boulders = $this->model->getAllBoulders();
		require APP . 'view/gara/selezionaboulder.php';
	}

	/**
	 * PAGINA: selezionaatleta
	 * Questo metodo gestisce la richiesta http://<indirizzo>:<porta>/gara/selezionaatleta
	 */
	public function selezionaAtleta() 
	{
		if (isset($_POST['submit_boulder'])) 
		{
			// Se si proviene dalla selezione del boulder, allora il boulder selezionato sarà nel vettore $_POST
			$selected_boulder = $_POST['boulder'];
		} 
		else 
		{
			// Altrimenti si proviene dalla schermata di inserimento del punteggio, quindi il numero del boulder sarà stato passato come argomento della funzione; una funzione del genere si chiama 'a parametri variabili' e con il metodo func_get_arg() si possono recuperare i parametri passati, in questo caso il primo (il n°0)
			$selected_boulder = func_get_arg(0);
		}
		$pettorineAtleti = $this->model->getAllPettorine();
		// Dalla vista posso accedere alla variabile $selected_boulder
		require APP . 'view/gara/selezionaatleta.php';
	}

	/**
	 * PAGINA: selezionapunteggio
	 * Questo metodo gestisce la richiesta http://<indirizzo>:<porta>/gara/selezionapunteggio/n°boulder
	 */
	public function selezionaPunteggio($selected_boulder)
	{
		if (isset($_POST['submit_atleta'])) 
		{
			// L'atleta selezionato sarà sicuramente nel vettore $_POST, il boulder selezionato invece verrà sempre passato come argomento
			$selected_atleta = $_POST['atleta'];
			$selected_boulder = $selected_boulder;

			$esito = $this->model->getEsitoAtleta($selected_atleta, $selected_boulder);
			if ($esito == 'N') 
			{	
				$tentativo = $this->model->getTentativoAtleta($selected_atleta, $selected_boulder);
				// Da questa vista posso accedere alle variabili $selected_boulder e $selected_atleta
				if ($tentativo == 5)
				{
					require APP . 'view/gara/esito.php';
				}
				else 
				{
					require APP . 'view/gara/selezionapunteggio.php';
				}
			} 
			else 
			{
				require APP . 'view/gara/esito.php';
			}
		}
	}

	/**
	 * PAGINA: sempre selezionapunteggio
	 * Questo metodo aggiorna il punteggio di un atleta, questo metodo viene chiamato dalla pagina selezionapunteggio, non cambia 
	 * pagina, inserisce il punteggio e poi reindirizza l'arbitro alla selezione dell'atleta
	 */
	public function aggiornaPunteggioAtleta($selected_atleta, $selected_boulder, $tentativo)
	{
		if (isset($_POST['submit_punteggio']))
		{
			$e = ($_POST['passato'] == 1) ? 'Y' : 'N'; // Se $_POST['passato'] è 1, $e 'Y', altrimenti è 'N'
			$t = (String) ($tentativo + 1);
			$this->model->addTentativo($selected_boulder, $selected_atleta, $t, $e);
		}

		header('location: ' . URL . 'gara/selezionaatleta/' . $selected_boulder);
	}	
}
