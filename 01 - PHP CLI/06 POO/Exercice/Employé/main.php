<?php

function loadClass($class)
{
    require $class . ".Class.php";
}
spl_autoload_register("loadClass");
$ag1=new Agence(["nom"=>"Anoroc","adresse"=>"47 avenue du pangolin","codepostal"=>3071419,"ville"=>"Wuhan"]);
$ag2=new Agence(["nom"=>"Sous Les Nuages ","adresse"=>"29 Rue des deux bras","codepostal"=>80009,"ville"=>"Prypiat"]);
$ag3=new Agence(["nom"=>"","adresse"=>"48 Takeshita street","codepostal"=>1000011,"ville"=>"Tokyo"]);
$emp1 = new Employe(["nom" => "Cugny", "prenom" => "Maxime", "dateDEmbauche" => new DateTime('2000-04-18'), "fonction" => "Dev", "salaire" => 47.9, "service" => "Informatique","agence"=>$ag3]);
$emp2 = new Employe(["nom" => "Balair", "prenom" => "Quentin", "dateDEmbauche" => new DateTime('2002-06-23'), "fonction" => "Vendeur", "salaire" => 52, "service" => "Commercial","agence"=>$ag2]);
$emp3 = new Employe(["nom" => "Aarouss", "prenom" => "Sofiane", "dateDEmbauche" => new DateTime('2015-01-26'), "fonction" => "Boulanger", "salaire" => 25.2, "service" => "Restauration","agence"=>$ag1]);
$emp4 = new Employe(["nom" => "Courquin", "prenom" => "Pierre", "dateDEmbauche" => new DateTime('2006-09-12'), "fonction" => "Secrétaire", "salaire" => 27.4, "service" => "Comptabilité","agence"=>$ag1]);
$emp5 = new Employe(["nom" => "Rjeb", "prenom" => "Zied", "dateDEmbauche" => new DateTime('1968-12-28'), "fonction" => "Webdesigner", "salaire" => 30, "service" => "Informatique","agence"=>$ag2]);

$listeEmploye = [$emp1, $emp2, $emp3, $emp4, $emp5];
$dateAuj = new DateTime('2020-12-30');
// echo "Le transfert de la prime de " . $emp1->prime()/ $emp1->anciennete() . " a été effectué auprès de votre banque";
$jourDePrime = (new DateTime())->setDate($dateAuj->format('Y'), 11, 30);
for ($i = 0; $i < count($listeEmploye); $i++) {
    if ($jourDePrime < $dateAuj) {
        echo "\nLe transfert pour  de la prime de " . $listeEmploye[$i]->prime() . " a été effectué auprès de votre banque";
    } else {
        echo "\nLe transfert pour n'a pas été effectué";
    }
}
echo "\n\nIl y a " . Employe::getNbrEmploye() . " employé(s) dans l'entreprise\n";//Nombre d'employés dans l'entreprise

asort($listeEmploye);

foreach ($listeEmploye as $elt) {//Affichage des employés dans l'entreprise avec leurs informations
    echo $elt->toString() . "\n";
}

echo "\n********************\n";
usort($listeEmploye,array("Employe","compare"));
foreach ($listeEmploye as $elt) { //Affichage des employés dans l'entreprise avec leurs informations
    echo $elt->toString() . "\n";
}
$masseSalariale=0;
foreach ($listeEmploye as $key) {
    $masseSalariale+=$key->masseSalariale();
}
echo "\n********************\n";
echo "\nLa masse salariale de l'entreprise est de $masseSalariale";