<?php

function loadClass($class)
{
    require $class . ".Class.php";
}
spl_autoload_register("loadClass");
//Création des agences
$ag1 = new Agence(["nom" => "Anoroc", "adresse" => "47 avenue du pangolin", "codepostal" => 3071419, "ville" => "Wuhan", "restauration" => "Tickets restaurants"]);
$ag2 = new Agence(["nom" => "Sous Les Nuages ", "adresse" => "29 Rue des deux bras", "codepostal" => 80009, "ville" => "Prypiat", "restauration" => "Tickets restaurants"]);
$ag3 = new Agence(["nom" => "", "adresse" => "48 Takeshita street", "codepostal" => 1000011, "ville" => "Tokyo", "restauration" => "Restaurant"]);
//Création des enfants
$enf1 = new Enfants(["datenaissance" => new DateTime('1998-04-18'), "prenom" => "Cartman"]);
$enf2 = new Enfants(["datenaissance" => new DateTime('2015-12-25'), "prenom" => "Kenny"]);
$enf3 = new Enfants(["datenaissance" => new DateTime('2008-12-31'), "prenom" => "Kyle"]);
$enf4 = new Enfants(["datenaissance" => new DateTime('2003-06-28'), "prenom" => "Tom"]);
$enf5 = new Enfants(["datenaissance" => new DateTime('2003-06-28'), "prenom" => "Jerry"]);
//Creation des employés
$emp1 = new Employe(["nom" => "Cugny", "prenom" => "Maxime", "dateDEmbauche" => new DateTime('2000-04-18'), "fonction" => "Dev", "salaire" => 47.9, "service" => "Informatique", "agence" => $ag3]);
$emp2 = new Employe(["nom" => "Balair", "prenom" => "Quentin", "dateDEmbauche" => new DateTime('2002-06-23'), "fonction" => "Vendeur", "salaire" => 52, "service" => "Commercial", "agence" => $ag2, "enfants" => [$enf4, $enf5]]);
$emp3 = new Employe(["nom" => "Aarouss", "prenom" => "Sofiane", "dateDEmbauche" => new DateTime('2015-01-26'), "fonction" => "Boulanger", "salaire" => 25.2, "service" => "Restauration", "agence" => $ag1, "enfants" => [$enf3]]);
$emp4 = new Employe(["nom" => "Courquin", "prenom" => "Pierre", "dateDEmbauche" => new DateTime('2006-09-12'), "fonction" => "Secrétaire", "salaire" => 27.4, "service" => "Comptabilité", "agence" => $ag1, "enfants" => [$enf2]]);
$emp5 = new Employe(["nom" => "Rjeb", "prenom" => "Zied", "dateDEmbauche" => new DateTime('1968-12-28'), "fonction" => "Webdesigner", "salaire" => 30, "service" => "Informatique", "agence" => $ag2, "enfants" => [$enf1]]);
//
//
//Création d'un tableau dans lequel se trouve les employés
$listeEmploye = [$emp1, $emp2, $emp3, $emp4, $emp5];
$dateAuj = new DateTime('now');
$jourDePrime = (new DateTime())->setDate($dateAuj->format('Y'), 11, 30);
// for ($i = 0; $i < count($listeEmploye); $i++) {
//     if ($jourDePrime < $dateAuj) {
//         echo "\nLe transfert pour " . $listeEmploye[$i]->getNom() . " " . $listeEmploye[$i]->getPrenom() . " de la prime de " . $listeEmploye[$i]->prime() . " a été effectué auprès de votre banque";
//     } else {
//         echo "\nLe transfert pour " . $listeEmploye[$i]->getNom() . " " . $listeEmploye[$i]->getPrenom() . " n'a pas été effectué";
//     }
// }
echo "\n\nIl y a " . Employe::getNbrEmploye() . " employé(s) dans l'entreprise\n"; //Nombre d'employés dans l'entreprise

asort($listeEmploye);

// foreach ($listeEmploye as $elt) { //Affichage des employés dans l'entreprise avec leurs informations
//     echo "\n--------------------\n" . $elt->toString() . "\n";
// }

echo "\n********************\n";
usort($listeEmploye, array("Employe", "compare"));
foreach ($listeEmploye as $elt) { //Affichage des employés dans l'entreprise avec leurs informations
    echo "\n--------------------\n" . $elt->toString() . "\n";
    $cheques = $elt->tableauChequesNoel();
    $nbrCheques = array_count_values($cheques);
    foreach ($nbrCheques as $prix => $occurence) {
        echo "Vous disposez de " . $occurence . " chèque(s) de " . $prix . "€";
    }
}

$masseSalariale = 0;

echo "\n********************\n";
foreach ($listeEmploye as $key) {
    $masseSalariale += $key->masseSalariale();
}
echo "\nLa masse salariale de l'entreprise est de $masseSalariale\n";
