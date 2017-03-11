<?php

/**
 * Class SelezionaBoulder
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
        if(isset($_POST["aggiunta_studente"])){
            $nome = $_POST["name"];
            $cognome = $_POST["cognome"];
            $sesso = $_POST["sesso"];
            //$data_nascita = $_POST["data_nascita"];
            //$scuola = $_POST["scuola"];
        }
        require APP . 'view/admin/aggiungi_studente.php';
    }

}
