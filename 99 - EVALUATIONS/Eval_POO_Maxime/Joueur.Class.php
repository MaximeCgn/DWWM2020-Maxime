<?php

Class Joueur extends De {
	/***************************************** Attributs **********************************************/

	private static $_vies;
	private static $_points;
	private static $_monstreFacile;
	private static $_monstreDifficile;

	/***************************************** Accesseurs **********************************************/
	
	public function getVies()
	{
		return self::$_vies;
	}

	public function setVies($vies)
	{
		self::$_vies = $vies;
	}
	public function getPoints()
	{
		return self::$_points;
	}

	public function setPoints($points)
	{
		self::$_points += $points;
	}

	public function getMonstreDifficile()
	{
		return self::$_monstreDifficile;
	}

	public function setMonstreDifficile($monstreDifficile)
	{
		self::$_monstreDifficile = $monstreDifficile;
	}

	public function getMonstreFacile()
	{
		return self::$_monstreFacile;
	}

	public function setMonstreFacile($monstreFacile)
	{
		self::$_monstreFacile = $monstreFacile;
	}

	/***************************************** Constructeur **********************************************/

	public function __construct(array $options = [])
	{
		if (!empty($options)) // empty : renvoi vrai si le tableau est vide
		{
			$this->hydrate($options);
		}
		self::$_vies=50;
		self::$_points=0;
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
		return "Vies :".$this->getVies()
		."\tAttaques :".$this->attaque()
		;
	}

	/**
	 * Méthode qui renvoie vrai si le joueurs est vivant, faux s'il est mort
	 *
	 * @return bool
	 */
	public function estVivant()
	{
		return $this->getVies()>0 ? true : false;
	}

	/**
	 * Méthode qui retourne la valeur du dé lancé par le héros
	 *
	 * @return int
	 */
	public function attaque()
	{
		return parent::lanceLeDe();
	}

	public function subitDegats()
	{
		return $this->setVies($this->getVies()-$this->getMonstreFacile()->attaque());
	}

}