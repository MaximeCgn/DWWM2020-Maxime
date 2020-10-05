<?php

    Class Rectangle
    {
        //ATTRIBUTS

        private $_longueur;
        private $_largeur;

        //Assesseurs

        public function getLongueur()
        {
                return $this->_longueur;
        }

        public function setLongueur($longueur)
        {
                $this->_longueur = $longueur;
        }

        public function getLargeur()
        {
                return $this->_largeur;
        }

        public function setLargeur($largeur)
        {
                $this->_largeur = $largeur;
        }

        public function __construct(Int $long,Int $larg)
        {
            $this->setLongueur($long);
            $this->setLargeur($larg);
        }

        public function perimetre()
        {
            return (($this->getlongueur()*2)+($this->getlargeur()*2));
        }
        public function aire()
        {
                return (($this->getLongueur() * $this->getLargeur()));
        }
        public function estCarre()
        {
                return ($this->getLongueur()==$this->getLargeur() ? "Il s'agit d'un carré" : "Il ne s'agit pas d'un carré");
        }
        public function afficherRectangle()
        {
                return "******************\nLongueur : $this->_longueur\nLargeur :$this->_largeur\nPérmiètre : ".$this->perimetre()."\nAire : ".$this->aire()."\n". $this->estCarre();
        }
    }