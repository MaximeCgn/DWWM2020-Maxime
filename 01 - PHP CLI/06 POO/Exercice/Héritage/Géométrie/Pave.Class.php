<?php

class Pave extends Rectangle
{	

	/*****************Attributs***************** */
	private $_haut;

	/*****************Accesseurs***************** */

	public function getHaut()
	{
		return $this->_haut;
	}

	public function setHaut($haut)
	{
		$this->_haut = $haut;
	}

	/*****************Constructeur***************** */

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
		return "Périmètre :".$this->perimetre()."\n"
		."Volume :".$this->volume()."\n";
	}
	/**
	* Renvoi vrai si l'objet en paramètre est égal à l'objet appelant
	*
	* @param [type] $obj
	* @return bool
	*/
	public function equalsTo ($obj)
	{
		return true;
	}
	/**
	* Compare 2 objets
	* Renvoi 1 si le 1er est >
	*		0 si ils sont égaux
	*		-1 si le 1er est <
	*
	* @param [type] $obj1
	* @param [type] $obj2
	* @return void
	*/
	public function compareTo ($obj1, $obj2)
	{
		return 0;
	}

	public function perimetre() //Calcul du périmètre
	{
		return (parent::perimetre()+$this->getHaut())*4;
	}

	public function volume() //Calcul du volume
	{
		return (parent::aire()*$this->getHaut());
	}
}