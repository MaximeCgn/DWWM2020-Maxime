<?php

function loadClass($class)
{
    require $class . ".Class.php";
}
spl_autoload_register("loadClass");

$emp1 = new Employe(["nom" => "Cugny", "prenom" => "Maxime", "dateDEmbauche" => new DateTime('2000-04-18'), "fonction" => "Dev", "salaire" => 47.9, "service" => "Informatique"]);
$emp2 = new Employe(["nom" => "Balair", "prenom" => "Quentin", "dateDEmbauche" => new DateTime('2002-06-23'), "fonction" => "Vendeur", "salaire" => 52, "service" => "Commercial"]);
$emp3 = new Employe(["nom" => "Arrouss", "prenom" => "Sofiane", "dateDEmbauche" => new DateTime('2015-01-26'), "fonction" => "Boulanger", "salaire" => 25.2, "service" => "Restauration"]);
$emp4 = new Employe(["nom" => "Courquin", "prenom" => "Pierre", "dateDEmbauche" => new DateTime('2006-09-12'), "fonction" => "Secrétaire", "salaire" => 27.4, "service" => "Comptabilité"]);
$emp5 = new Employe(["nom" => "Rjeb", "prenom" => "Zied", "dateDEmbauche" => new DateTime('1968-12-28'), "fonction" => "Webdesigner", "salaire" => 30, "service" => "Informatique"]);

$listeEmploye = [$emp1, $emp2, $emp3, $emp4, $emp5];
$dateAuj = new DateTime('2020-12-30');
// echo "Le transfert de la prime de " . $emp1->prime()/ $emp1->anciennete() . " a été effectué auprès de votre banque";
$jourDePrime = (new DateTime())->setDate($dateAuj->format('Y'), 11, 30);
for ($i = 0; $i < count($listeEmploye); $i++) {
    if ($jourDePrime < $dateAuj) {
        echo "\nLe transfert de la prime de " . $listeEmploye[$i]->prime() . " a été effectué auprès de votre banque";
    } else {
        echo "\nLe transfert n'a pas été effectué";
    }
}
echo "\n\nIl y a " . Employe::getNbrEmploye() . " employé(s) dans l'entreprise\n";

asort($listeEmploye);

foreach ($listeEmploye as $elt) {
    echo $elt->toString() . "\n";
}

function compare(Employe $obj1,Employe $obj2)
    {
        if ($obj1->getService()==$obj2->getService())
        {
            return 0;
        }
        else if ($obj1->getService()<$obj2->getService())
        {
            return -1;
        }
        else {
            return 1;
        }
    }
echo "\n********************\n";
usort($listeEmploye,"compare");
foreach ($listeEmploye as $elt) {
    echo $elt->toString() . "\n";
}
$masseSalariale=0;
foreach ($listeEmploye as $key) {
    $masseSalariale+=$key->getSalaire()*1000+$key->prime();
}
echo $masseSalariale;