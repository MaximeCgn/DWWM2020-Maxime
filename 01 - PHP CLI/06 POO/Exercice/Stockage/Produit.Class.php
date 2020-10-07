<?php

class Produit
{

    /*****************Attributs***************** */

    private $_numero;
    private $_designation;
    private $_dateValidite;
    private $_categorie;
    private $_lieuStockage = [];
    private static $_compteur;
    private $_prixHT;
    private $_couleur;

    /*****************Accesseurs***************** */

    public function getNumero()
    {
        return $this->_numero;
    }

    public function setNumero($numero)
    {
        $this->_numero = $numero;
    }

    public function getDesignation()
    {
        return $this->_designation;
    }

    public function setDesignation($designation)
    {
        $this->_designation = $designation;
    }

    public function getDateValidite()
    {
        return $this->_dateValidite;
    }

    public function setDateValidite(DateTime $dateValidite)
    {
        $this->_dateValidite = $dateValidite;
    }

    public function getCategorie()
    {
        return $this->_categorie;
    }

    public function setCategorie($categorie)
    {
        $this->_categorie = $categorie;
    }

    public function getLieuStockage()
    {
        return $this->_lieuStockage;
    }

    public function setLieuStockage($lieuStockage)
    {
        $this->_lieuStockage = $lieuStockage;
    }

    public static function getCompteur()
    {
        return self::$_compteur;
    }

    public static function setCompteur($compteur)
    {
        self::$_compteur = $compteur;
    }

    public function getPrixHT()
    {
        return $this->_prixHT;
    }

    public function setPrixHT($prixHT)
    {
        $this->_prixHT = $prixHT;
    }

    public function getCouleur()
    {
        return $this->_couleur;
    }

    public function setCouleur($couleur)
    {
        $this->_couleur = $couleur;
    }

    /*****************Constructeur***************** */

    public function __construct(array $options = [])
    {
        if (!empty($options)) // empty : renvoi vrai si le tableau est vide
        {
            $this->hydrate($options);
        }
        self::$_compteur++;
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
     * @return String.
     */
    public function toString()
    {
        return
        "\n*******************\n" .
        "\nNumero :" . $this->getNumero() . "\n"
		. "Designation :" . $this->getDesignation() . "\n"
		. "Couleur :" . $this->getCouleur() . "\n"
        . "Date de Validité :" . $this->getDateValidite()->format('Y-m-d') . "\n\n"
        . $this->getCategorie()->toString()
        . "Compteur :" . $this->getCompteur() . "\n"
		. "Prix HT :" . $this->getPrixHT() . "\n"
		. "Prix TTC :". $this->prixTTC(). "\n\n"
		. $this->getLieuStockage()->tostring() . "\n"
        ;
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
    public function compareTo($obj1, $obj2)
    {
        return 0;
    }

    public function estPerime() //Méthode qui calcule si oui ou non un produit est périmé

    {
        $date = new DateTime('now');
        if (getDateValidite() > $date) {
            return false;
        }
        return true;
    }

    public function prixTTC()
    {
		return $this->getPrixHT()*$this->getCategorie()->getTVA()+$this->getPrixHT();
    }
}
