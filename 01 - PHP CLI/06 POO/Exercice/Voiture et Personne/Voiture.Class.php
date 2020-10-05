<?php

class Voiture
{
    //Attributs
    private $_marque;
    private $_modele;
    private $_km;

    //Constructeur
    public function __construct(String $mar, String $mod, Int $km)
    {
        $this->setMarque($mar);
        $this->setModele($mod);
        $this->setKm($km);
    }

    //Assesseurs

    //GETTERS
    public function getMarque()
    {
        return $this->_marque;
    }
    public function getModele()
    {
        return $this->_modele;
    }
    public function getKm()
    {
        return $this->_km;
    }

    //SETTER

    public function setMarque($mar)
    {
        $this->_marque = ctype_alpha($mar) ? strtoupper($mar) : null;
    }
    public function setModele($mod)
    {
        $this->_modele = ctype_alpha($mod) ? ucfirst(strtolower($mod)) : null;
    }
    public function setKm(Int $km)
    {
        $this->_km = $km > 0 ? $km : null;
    }

    //toString
    public function toString()
    {
        return $reponse = "La voiture est une $this->_marque $this->_modele. Elle a $this->_km kilomètres.";
    }

    //equalsTo

    public function equalsTo(Voiture $obj)
    {
        if ($this->_marque == $obj->getMarque() && $this->_modele == $obj->getModele() && $this->_km == $obj->getKm()) {
            return true;
        }
        return false;
    }

    public function compareTo(Voiture $obj)
    {
        if ($this->_km == $obj->_km) {
            return 0;
        } else if ($this->_km > $obj->_km) {
            return 1;
        } else {
            return 1;
        }
    }
}
