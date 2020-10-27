<?php

class Livre extends Document
{
    /***************************************** Attributs **********************************************/

    private $_nbrPages;

    /***************************************** Accesseurs **********************************************/

    public function getNbrPages()
    {
        return $this->_nbrPages;
    }

    public function setNbrPages($nbrPages)
    {
        $this->_nbrPages = $nbrPages;
    }

    /***************************************** Constructeur **********************************************/

    public function __construct(array $options = [])
    {
        parent::__construct($options);
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
        return "\nTitre :" . parent::getTitre()
        . "\nAuteur :" . parent::getAuteur()
        . "\nNombre de pages :" . $this->getNbrPages()
        ;
    }
}
