<?php

Class De {
	/***************************************** Attributs **********************************************/



	/***************************************** Accesseurs **********************************************/
	
	

	/***************************************** Constructeur **********************************************/

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

	/***************************************** Methode **********************************************/

	/**
	* Transforme l'objet en chaine de caractères
	*
	* @return String
	*/
	public function toString(){
		return ;
	}

	/**
	 * Retourne un nombre aléatoire entre 1 et 6
	 *
	 * @return int
	 */
	public function lanceLeDe()
	{
		return rand(1,6);
	}

}