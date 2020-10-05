<?php
//Faire en sorte qu'une personne ait une voiture (require les class)
require "Personne.Class.php";
require "Voiture.Class.php";

$v3 = new Voiture("Audi","A3","2000");
$v1 = new Personne("Cugny","Maxime",22,$v3);
echo $v1->toString()."\n";
var_dump($v1);
