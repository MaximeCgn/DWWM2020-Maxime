<?php

Class MonstreDifficile extends MonstreFacile {
	/***************************************** Attributs **********************************************/



	/***************************************** Accesseurs **********************************************/
	

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
		foreach ($data as $key => $value)
		{
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
	public function toString(){
		return "\nVivant :".$this->getVivant()
		."\tAttaque :".$this->attaque()
		."\tAttaque Magique :".$this->attaqueMagique()
		;
	}

	/**
	 * Méthode qui renvoie une entier entre 1 et 6
	 *
	 * @return int
	 */
	public function attaque()
	{
		return parent::lanceLeDe();
	}

	public function attaqueMagique()
	{
		return parent::lanceLeDe();
	}

	/**
	 * Méthode qui renvoie si le monstre est vivant.
	 *
	 * @return bool
	 */
	public function estVivant()
	{
		if (parent::attaque()>=$this->attaque())
			{
				parent::setPoints(+2);
				return false;
			}
	}

}