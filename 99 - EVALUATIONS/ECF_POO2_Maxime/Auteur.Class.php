<?php

class Auteur
{
    /***************************************** Attributs **********************************************/

    private $_nom;
    private $_prenom;
    private $_naissance;
    private $_deces;

    /***************************************** Accesseurs **********************************************/

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
    public function getNaissance()
    {
        return $this->_naissance;
    }

    public function setNaissance($naissance)
    {
        $this->_naissance = $naissance;
    }
    public function getDeces()
    {
        return $this->_deces;
    }

    public function setDeces($deces)
    {
        $this->_deces = $deces;
    }

    /***************************************** Constructeur **********************************************/

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

    /***************************************** Methode **********************************************/

    /**
     * Transforme l'objet en chaine de caractères
     *
     * @return String
     */
    public function toString()
    {
        return "\nNom : " . $this->getNom()
        . "\nPrénom : " . $this->getPrenom()
        . "\nNaissance : " . $this->getNaissance()->format('Y-m-d')
        . "\nDécès : " . $this->getDeces()->format('Y-m-d');
    }

    /**
     * Renvoi vrai si l'objet en paramètre est égal à l'objet appelant. Les comparaisons sur les dates de naissances et décès ne sont pas nécessaires mais j'ai préféré les mettre
     *
     * @param [type] obj
     * @return bool
     */
    public function equalsTo(Auteur $obj)
    {
        if ($this->getNom() == $obj->getNom()) //Si les noms sont identiques, continue les conditions sinon return false
        {
            if ($this->getPrenom() == $obj->getPrenom()) //Si les prénoms sont identiques, continue les conditions sinon return false
            {
                if ($this->getNaissance() == $obj->getNaissance()) //Si les dates de naissances sont identiques, continues les conditions sinon returne false
                {
                    if ($this->getDeces() == $obj->getDeces()) //Si les dates de décès sont identiques return true, sinon return false
                    {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /**
     * Retourne true si l'auteur est vivant, false sinon
     *
     * @return bool
     */
    public function estVivant()
    {
        if (!$this->getDeces() == null) {
            return false;
        }
        return true;
    }

    /**
     * Retourne un string en fonction du booléen retourné par equalsTo pour éviter que ça n'affiche un booléen à l'utilisateur
     *
     * @param Auteur $obj
     * @return string
     */
    public function afficheEqualsTo($obj)
    {
        if ($this->equalsTo($obj) == true) {
            return "Ces auteurs sont les mêmes";
        }
        return "Ces auteurs ne sont pas les mêmes";
    }

}
