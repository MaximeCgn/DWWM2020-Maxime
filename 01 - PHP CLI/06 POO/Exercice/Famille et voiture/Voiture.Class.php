<?php

class Voiture
{
    //ATTRIBUTS

    private $_marque;
    private $_modele;

    //ASSESSEURS

    public function getMarque()
    {
        return $this->_marque;
    }

    public function setMarque($marque)
    {
        $this->_marque = $marque;
    }

    public function getModele()
    {
        return $this->_modele;
    }

    public function setModele($modele)
    {
        $this->_modele = $modele;
    }

    //CONSTRUCTEUR
    public function __construct(array $options = [])
    {
        if (!empty($options)) // empty : renvoi vrai si le tableau est vide
        {
            $this->hydrate($options);
        }
    }
    public function hydrate($data)
    {
        foreach ($data as $key => $value) {
            $methode = "set" . ucfirst($key); //ucfirst met la 1ere lettre en majuscule
            if (is_callable(([$this, $methode]))) // is_callable verifie que la methode existe
            {
                $this->$methode($value);
            }
        }
    }
}
