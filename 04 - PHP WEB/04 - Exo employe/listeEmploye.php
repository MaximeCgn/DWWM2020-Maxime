<?php

function loadClass($class)
{
    require $class.".Class.php";
}
spl_autoload_register ("loadClass");

$a1 = new agence(["Nom" => "Agence 1", "adresse" => "12 rue toto","restauration" => "restaurant d'entreprise" ,"codePostal" => "59520" , "ville" => "Lille"]);
$a2 = new agence(["Nom" => "Agence 2", "adresse" => "154 rue tata","restauration" =>"ticket restaurant" ,"codePostal" => "62102", "ville" => "Lens"]);
$a3 = new agence(["Nom" => "Agence 3", "adresse" => "132 rue tutu","restauration" =>"restaurant d'entreprise" ,"codePostal" => "52013", "ville" => "Marseille"]);
$enfant[] = new Enfant(["Nom" => "Premier", "Prenom" => "Alcibiade", "Age" => new DateTime("18-12-1998")]);
$enfant[] = new Enfant(["Nom" => "Deuxième", "Prenom" => "Walbert", "Age" => new DateTime("16-06-2000")]);
$enfant[] = new Enfant(["Nom" => "Troisième", "Prenom" => "Maxanne", "Age" => new DateTime("22-05-2003")]);
$enfant[] = new Enfant(["Nom" => "Quatrième", "Prenom" => "Dianthe", "Age" => new DateTime("05-10-2010")]);
$enfant[] = new Enfant(["Nom" => "Cinquième", "Prenom" => "Quintilien", "Age" => 19]);
$e[] = new Employe(["idEmploye"=>1,"Nom" => "Aarouss", "Prenom" => "Sofiane", "dateEmbauche" => new DateTime("01-12-2020"), "fonction" => "Eleveur de punaise", "salaireAnnuel" => "14", "Service" => "Nettoyage","agence"=>$a1,"enfants"=>[$enfant[1]]]);
$e[] = new Employe(["idEmploye"=>2,"Nom" => "Courquin", "Prenom" => "Pierre", "dateEmbauche" => new DateTime("12-03-2006"), "fonction" => "Gynecologue", "salaireAnnuel" => "40", "Service" => "Medecine","agence"=>$a2,"enfants"=>[$enfant[0]]]);
$e[] = new Employe(["idEmploye"=>3,"Nom" => "Rjeb", "Prenom" => "Zied", "dateEmbauche" => new DateTime("15-09-2015"), "fonction" => "Kebabiste", "salaireAnnuel" => "30", "Service" => "Restauration","agence"=>$a2,"enfants"=>[$enfant[2],$enfant[3]]]);
$e[] = new Employe(["idEmploye"=>4,"Nom" => "Balair", "Prenom" => "Quentin", "dateEmbauche" => new DateTime("03-03-2003"), "fonction" => "Plaquiste", "salaireAnnuel" => "20", "Service" => "batiment","agence"=>$a1]);