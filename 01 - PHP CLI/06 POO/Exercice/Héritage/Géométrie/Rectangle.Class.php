<?php

class Rectangle
{

	/*****************Attributs***************** */

private $_longueur;
private $_largeur;

	/*****************Accesseurs***************** */

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
		foreach ($data as $key => $value)
		{
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
		return "Longueur :".$this->getLongueur()."\n"
		."Largeur :".$this->getLargeur()."\n"
		."Périmètre :".$this->perimetre()."\n"
		."Aire :".$this->aire()."\n"
		."Est-ce un carré ?".$this->estCarre()."\n"
		;
	}
	
	public function perimetre() //Calcul du périmètre
	{
		return ($this->getLongueur()+$this->getLargeur())*2;
	}

	public function aire() //Calcul de l'aire
	{
		return $this->getLongueur()*$this->getLargeur();
	}

	public function estCarre() //Return si oui ou non il s'agit d'un carré
	{
		if ($this->getLargeur()==$this->getLongueur())
		{
			return " Oui";
		}
		return " Non";
	}
}