<?php

require "Voiture.Class.php";

Class Personne
{
    //ATTRIBUTS
    private $_mere;
    private $_pere;
    private $_voiture;

    //ASSESSEURS

    public function getMere()
    {
        return $this->_mere;
    }

    public function setMere($mere)
    {
        $this->_mere = $mere;
    }

    public function getPere()
    {
        return $this->_pere;
    }

    public function setPere($pere)
    {
        $this->_pere = $pere;
    }

    public function getVoiture()
    {
        return $this->_voiture;
    }

    public function setVoiture($voiture)
    {
        $this->_voiture = $voiture;
    }

    //CONSTRUCTEUR

    public function __construct (String $mere, String $pere, Array $voiture)
    {
        $this->setMere($mere);
        $this->setPere($pere);
        $this->setVoiture($voiture);
    }


}