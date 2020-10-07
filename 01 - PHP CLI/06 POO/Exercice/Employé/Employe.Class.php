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
    private $_agence;
    private $_enfants = [];

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
        $this->_service = ucfirst($service);
    }

    public static function getNbrEmploye()
    {
        return self::$_nbrEmploye;
    }

    public static function setNbrEmploye($nbrEmploye)
    {
        self::$_nbrEmploye = $nbrEmploye;
    }

    public function getAgence()
    {
        return $this->_agence;
    }

    public function setAgence($agence)
    {
        $this->_agence = $agence;
    }

    public function getEnfants()
    {
        return $this->_enfants;
    }

    public function setEnfants($enfants)
    {
        $this->_enfants = $enfants;
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

    public function toString() //Affichage de toutes les informations

    {
        return "\nNom :" . $this->getNom()
        . "\nPrénom :" . $this->getPrenom()
        . "\nDate d'embauche :" . $this->getDateDEmbauche()->format('Y-m-d')
        . "\nFonction :" . $this->getFonction()
        . "\nSalaire annuel :" . $this->getSalaire()
        . "K\nService :" . $this->getService()
        . $this->getAgence()->toString()
        . $this->chequesVacances()
        . $this->afficheEnfant();

    }

    public static function compare(Employe $obj1, Employe $obj2) //Fonction pour placer le service dans l'ordre alphabetique

    {
        if ($obj1->getService() == $obj2->getService()) {
            return 0;
        } else if ($obj1->getService() < $obj2->getService()) {
            return -1;
        } else {
            return 1;
        }
    }

    public function masseSalariale() //Calcule la masse salariale

    {
        return $this->getSalaire() * 1000 + $this->prime();
    }

    public function chequesVacances() //Renvoie si oui ou non un employé peut disposer de chèques vacances

    {
        return $this->anciennete() >= 1 ? "\n\n" . $this->getNom() . " " . $this->getPrenom() . " peut disposer de chèques vacances\n" : "\n\n" . $this->getNom() . " " . $this->getPrenom() . " ne peut pas disposer de chèques vacances\n";

    }

    private function afficheEnfant()
    {
        $info = "";
        foreach ($this->getEnfants() as $key) { //Affiche les enfants d'un employé
            $info .= $key->toString();
        }
        return $info;
    }

    private function chequesNoel()
    {

        if (empty($this->getEnfants())) { //Si l'employé n'a pas d'enfant, renvoie false
            return false;
        } else {
            $ageEnfants = $this->ageEnfants();
            $compteur = 0;
            foreach ($ageEnfants as $key) {
                if ($key > 18) {
                    $compteur++; //Ajoute +1 au compteur si un enfant a + de 18 ans
                }
                if ($compteur >= count($ageEnfants)) { //Si le compteur = au nombre d'enfant, return false
                    return false;
                }
                return true;
            }
        }
    }

    private function ageEnfants() //Place l'age des enfants d'un employé dans un tableau

    {
        foreach ($this->getEnfants() as $key) {
            $ageEnfants[] = $key->age();
        }
        return $ageEnfants;
    }

    public function tableauChequesNoel() //Création du tableau avec le nombre de chèques disponible par employé

    {
        if ($this->chequesNoel() == true) {
            $ageEnfants = $this->ageEnfants();
            foreach ($ageEnfants as $key) {
                if ($key >= 0 && $key <= 10) {
                    $cheques[] = 20;
                } else if ($key >= 11 && $key <= 15) {
                    $cheques[] = 30;
                } else if ($key >= 16 && $key <= 18) {
                    $cheques[] = 50;
                }
            }
            return $cheques;
        }
        return [];
    }

}
