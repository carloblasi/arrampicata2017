<?php

/**
 * Class Songs
 * This is a demo class.
 *
 * Please note:
 * Don't use the same name for class and method, as this might trigger an (unintended) __construct of the class.
 * This is really weird behaviour, but documented here: http://php.net/manual/en/language.oop5.decon.php
 *
 */
class Classifica extends Controller
{
    /**
     * PAGE: index
     * This method handles what happens when you move to http://yourproject/songs/index
     */
    public function auth() 
    {

        if (func_num_args() == 0) 
        {
            header('location: ' . URL . 'problem');
        }
        else 
        {
            $password = func_get_arg(0);

            if ($password == "12345678") 
            {
                require APP . 'view/_templates/header.php';
                require APP . 'view/classifica/index.php';   
                require APP . 'view/_templates/footer.php';
            } 
            else 
            {
                header('location: ' . URL . 'problem');
            }
        }
    }

    // public function index() 
    // {
    //     require APP . 'view/_templates/header.php';
    //     require APP . 'view/_templates/footer.php';
    // }
}
