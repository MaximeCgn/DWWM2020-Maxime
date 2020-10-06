<?php

class Employe
{

    /*****************Attributs***************** */
    private $_nom;
    private $_prenom;
    private $_dateDEmbauche;
    private $_fonction;
    private $_salaire;
    private $_service;
    private static $_nbrEmploye;

    /*****************Accesseurs***************** */

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

    public function getDateDEmbauche()
    {
        return $this->_dateDEmbauche;
    }

    public function setDateDEmbauche(DateTime $dateDEmbauche)
    {
        $this->_dateDEmbauche = $dateDEmbauche;
    }

    public function getFonction()
    {
        return $this->_fonction;
    }

    public function setFonction($fonction)
    {
        $this->_fonction = $fonction;
    }

    public function getSalaire()
    {
        return $this->_salaire;
    }

    public function setSalaire($salaire)
    {
        $this->_salaire = $salaire;
    }

    public function getService()
    {
        return $this->_service;
    }

    public function setService($service)
    {
        $this->_service = $service;
    }

    public static function getNbrEmploye()
    {
        return self::$_nbrEmploye;
    }

    public static function setNbrEmploye($nbrEmploye)
    {
        self::$_nbrEmploye = $nbrEmploye;
    }

    /*****************Constructeur***************** */

    public function __construct(array $options = [])
    {
        if (!empty($options)) // empty : renvoi vrai si le tableau est vide
        {
            $this->hydrate($options);
        }
        self::$_nbrEmploye++;
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

    public function anciennete() //Methode qui calcule et renvoi l'ancienneté

    {
        $date = new DateTime('now');
        $diff = $date->diff($this->getDateDEmbauche());
        return $diff->format("%Y") * 1;
    }

    private function primeSalaire() //Méthode qui permet de calculer la prime sur le salaire annuel

    {
        return ($this->getSalaire() * 1000 * 0.05);
    }

    private function primeAnciennete() //Méthode qui permet de calculer la prime d'ancienneté

    {
        return ($this->getSalaire() * 1000 * 0.02 * $this->anciennete());
    }

    public function prime() //Méthode qui permet de calculer la prime totale

    {
        return $this->primeSalaire() + $this->primeAnciennete();
    }

    public function toString()
    {
        return "\nNom :" . $this->getNom() . "\nPrénom :" . $this->getPrenom() . "\nDate d'embauche :" . $this->getDateDEmbauche()->format('Y-m-d') . "\nFonction :" . $this->getFonction() . "\nSalaire annuel :" . $this->getSalaire() . "K\nService :" . $this->getService();

    }

}
