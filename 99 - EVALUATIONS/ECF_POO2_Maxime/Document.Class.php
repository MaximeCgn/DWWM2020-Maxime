<?php

class Document
{
    /***************************************** Attributs **********************************************/

    private $_auteur;
    private $_titre;
    private $_emprunte;

    /***************************************** Accesseurs **********************************************/

    public function getAuteur()
    {
        return $this->_auteur;
    }

    public function setAuteur($auteur)
    {
        $this->_auteur = $auteur;
    }
    public function getTitre()
    {
        return $this->_titre;
    }

    public function setTitre($titre)
    {
        $this->_titre = $titre;
    }
    public function getEmprunte()
    {
        return $this->_emprunte;
    }

    public function setEmprunte(bool $emprunte)
    {
        $this->_emprunte = $emprunte;
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
        return "\nAuteur : " . $this->getAuteur()->toString()
        . "\nTitre : " . $this->getTitre()
        . "\nEmprunte : " . $this->afficheEmprunte()
        ;
    }

    /**
     * Renvoi vrai si l'objet en paramètre est égal à l'objet appelant
     *
     * @param Document $obj
     * @return bool
     */
    public function equalsTo(Document $obj)
    {
        if ($this->getTitre() == $obj->getTitre()) //Si les titres sont identiques, continue les conditions, sinon return false
        {
            if ($this->getAuteur() == $obj->getAuteur()) //Si les auteur sont les mêmes, return true, sinon false
            {
                return true;
            }
        }
        return false;
    }

    /**
     * Retourne true si le document est emprunté, false sinon
     *
     * @return bool
     */
    public function estEmprunte()
    {
        return $this->getEmprunte() == true ? true : false;
    }

    /**
     * Renvoie Oui si le document est emprunté, non sinon (Pour éviter que ça ne renvoie true ou false dans l'affichage)
     *
     * @return string
     */
    public function afficheEmprunte()
    {
        if ($this->estEmprunte() == true) {
            return "Oui";
        }
        return "Non";
    }

    /**
     * Renvoie un string en fonction du booléen retourné par equalsTo pour éviter que ça n'affiche un booléen à l'utilisateur
     *
     * @param Document $obj
     * @return string
     */
    public function afficheEqualsTo($obj)
    {
        if ($this->equalsTo($obj) == true) {
            return "Ces documents sont les mêmes";
        }
        return "Ces documents ne sont pas les mêmes";
    }

}
