<?php
class Famille
{

    /*****************Attributs***************** */
    private $_pere;
    private $_mere;
    private $_voiture;

    /*****************Accesseurs***************** */
    public function getPere()
    {
        return $this->_pere;
    }
    public function setPere($pere)
    {
        $this->_pere = $pere;
    }
    public function getMere()
    {
        return $this->_mere;
    }
    public function setMere($mere)
    {
        $this->_mere = $mere;
    }
    public function getVoiture()
    {
        return $this->_voiture;
    }
    public function setVoiture($voiture)
    {
        $this->_voiture = $voiture;
    }
    /*****************Constructeur***************** */

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

    /*****************Autres Méthodes***************** */

    /**
     * Transforme l'objet en chaine de caractères
     *
     * @return String
     */
    public function toString()
    {
        return "Le père s'appelle ".$this->getPere()->getNom()." ".$this->getPere()->getPrenom().
                "\nLa mère s'appelle ".$this->getMere()->getNom()." ".$this->getMere()->getPrenom().
                "\nIls ont une ".$this->getVoiture()->getMarque()." ".$this->getVoiture()->getModele();
    }

    /**
     * Renvoi vrai si l'objet en paramètre est égal à l'objet appelant
     *
     * @param [type] $obj
     * @return bool
     */
    public function equalsTo($obj)
    {
        return true;
    }
    /**
     * Compare 2 objets
     * Renvoi 1 si le 1er est >
     *        0 si ils sont égaux
     *        -1 si le 1er est <
     *
     * @param [type] $obj1
     * @param [type] $obj2
     * @return void
     */
    public static function compareTo($obj1, $obj2)
    {
        return 0;
    }

}
