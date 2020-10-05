<?php

class Personne
{
    //Attributs
    private $_nom;
    private $_prenom;
    private $_age;

    //Constructeur
    public function __construct(String $n, String $p, Int $a, Voiture $v)
    {
        $this->setNom($n);
        $this->setPrenom($p);
        $this->setAge($a);
        $this->setVoiture($v);
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

    public function setNom($n)
    {
        $this->_nom = ctype_alpha($n) ? strtoupper($n) : null;
    }

    public function setPrenom($p)
    {
        $this->_prenom = ctype_alpha($p) ? ucfirst(strtolower($p)) : null;
    }

    public function setAge(Int $a)
    {
        $this->_age = $a > 0 ? $a : null;
    }

    //toString

    public function toString()
    {
        return $reponse = "Le nom de la personne est $this->_nom. Son prénom est $this->_prenom. Il a $this->_age ans";
    }

    //equalsTo

    public function equalsTo(Personne $obj)
    {
        if ($this->_age == $obj->getAge() && $this->_prenom == $obj->getPrenom() && $this->_nom == $obj->getNom()) {
            return true;
        }
        return false;
    }

    public function compareTo(Personne $obj)
    {
        if ($this->_age == $obj->_age) {
            return 0;
        } else if ($this->_age > $obj->_age) {
            return 1;
        } else {
            return -1;
        }
    }
}
