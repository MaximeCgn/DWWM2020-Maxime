<?php
//Faire en sorte qu'une personne ait une voiture (require les class)
require "Personne.Class.php";
require "Voiture.Class.php";
$v1 = new Personne("Cugny","Maxime",22);
$v2 = new Personne("cUGNY","maxime",21);
$p1= new Voiture ("cugny","maxime",22,)

echo $v1->toString()."\n";
echo $v2->toString()."\n";
echo $v1->compareTo($v2)."\n";
$equals=$v1->equalsTo($v2);
var_dump($equals);
