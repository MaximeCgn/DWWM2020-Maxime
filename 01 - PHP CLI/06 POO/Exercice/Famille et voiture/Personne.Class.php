<?php

class Personne
{
    //ATTRIBUTS
    private $_nom;
    private $_prenom;

    //ASSESSEURS

    public function getNom()
    {
        return $this->_nom;
    }

    public function setNom($nom)
    {
        $this->_nom = $nom;
    }

    public function getPrenom()
    {
        return $this->_prenom;
    }

    public function setPrenom($prenom)
    {
        $this->_prenom = $prenom;
    }
    //CONSTRUCTEUR

    public function __construct(String $nom, String $prenom)
    {
        $this->setNom($nom);
        $this->setPrenom($prenom);
    }

}
