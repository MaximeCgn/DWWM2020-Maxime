<?php

class Personne
{
    //Attributs
    private $_nom;
    private $_prenom;
    private $_age;

    //constructeur
    public function __construct()
    {

    }

    //Assesseurs

    //GETTER
    public function getNom()
    {
        return $this->_nom;
    }
    public function getPrenom()
    {
        return $this->_prenom;
    }
    public function getAge()
    {
        return $this->_age;
    }

    //SETTER
    public function setNom($nom)
    {
        $this->_nom = $nom;
    }
    public function setPrenom($prenom)
    {
        $this->_prenom = $prenom;
    }
    public function setAge($age)
    {
        $this->_age = $age;
    }
}
do {
    $nom = strtoupper(readline("Nom :"));
} while (!ctype_alpha($nom));
do {
    $prenom = ucfirst(readline("Prénom :"));
} while (!ctype_alpha($prenom));
do {
    $age = readline("Âge :");
} while (!ctype_digit($age));
$personne1=new Personne();
$personne1->setNom($nom);
$personne1->setPrenom($prenom);
$personne1->setAge($age);
var_dump($personne1);