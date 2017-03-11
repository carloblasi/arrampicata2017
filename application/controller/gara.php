<?php

/**
 * Class SelezionaBoulder
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
    public function index() {
    	header('location: ' . URL . 'gara/selezionaboulder');
    }

    /**
     * PAGINA: selezionaboulder
     * Questo metodo gestisce la richiesta http://<indirizzo>:<porta>/gara/selezionaboulder
     */
    public function selezionaboulder()
    {
        // carica vista
        require APP . 'view/gara/selezionaboulder.php';
    }

    /**
     * PAGINA: selezionaatleta
     * Questo metodo gestisce la richiesta http://<indirizzo>:<porta>/gara/selezionaatleta
     */
    public function selezionaatleta() 
    {
    	require APP . 'view/gara/selezionaatleta.php';
    }
}
