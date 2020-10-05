<?php

function loadClass($class)
{
    require $class.".Class.php";
}
spl_autoload_register ("loadClass");

$date1=new DateTime('2000-04-18');
$date2=new DateTime('2002-06-23');
$date3=new DateTime('2015-01-26');
$date4=new DateTime('2006-09-12');
$date5=new DateTime('1968-12-28');
$emp1=new Employe(["nom"=>"Cugny","prenom"=>"Maxime","dateDEmbauche"=>$date1,"fonction"=>"Dev","salaire"=>"47.9","service"=>"Informatique"]);
$emp2=new Employe(["nom"=>"Balair","prenom"=>"Quentin","dateDEmbauche"=>$date2,"fonction"=>"Vendeur","salaire"=>"52","service"=>"Commercial"]);
$emp3=new Employe(["nom"=>"Arrouss","prenom"=>"Sofiane","dateDEmbauche"=>$date3,"fonction"=>"Boulanger","salaire"=>"25.2","service"=>"Restauration"]);
$emp4=new Employe(["nom"=>"Courquin","prenom"=>"Pierre","dateDEmbauche"=>$date4,"fonction"=>"Secrétaire","salaire"=>"27.4","service"=>"Comptabilité"]);
$emp5=new Employe(["nom"=>"Rjeb","prenom"=>"Zied","dateDEmbauche"=>$date5,"fonction"=>"Webdesigner","salaire"=>"30","service"=>"Informatique"]);

echo $emp1->anciennete();