<?php

include "PHP/VIEW/Head.php";
include "PHP/VIEW/Header.php";

// Recherche par ID : ÇA FONCTIONNE
echo 'recherche id = 1'.'<br>';
$p = EtudiantsManager::findById(1);
var_dump($p);

//Test d'ajout : ÇA FONCTIONNE
echo "Ajout d'un étudiant".'<br>';
$p2=new Etudiants (["nomEtudiant"=>"Cugny","prenomEtudiant"=>"Maxime","adresseEtudiant"=>"38 rue Pierre puis","villeEtudiant"=>"Calais"]);
EtudiantsManager::add($p2);
var_dump($p2);

//Test affichage liste étudiants : ÇA FONCTIONNE
echo "Liste des étudiants" .'<br>';
$tableau=EtudiantsManager::getList();
foreach($tableau as $unEtudiant)
{
    echo $unEtudiant->toString().'<br>';
}

//Test des mises à jour : ÇA FONCTIONNE
$p = EtudiantsManager::findById(1);
echo "Update de l'id 1".'<br>';
$p->setNomEtudiant($p->getNomEtudiant().'OUI');
EtudiantsManager::update($p);
$pRecharge=EtudiantsManager::findById(1);
var_dump($pRecharge);

//Test de la suppression : ÇA FONCTIONNE
echo "On supprime un étudiant".'<br>';
$pSup=EtudiantsManager::findById(3);
EtudiantsManager::delete($pSup);

include "PHP/VIEW/Footer.php";