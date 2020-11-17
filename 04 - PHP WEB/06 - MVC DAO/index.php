<?php

include "PHP/VIEW/Head.php";
include "PHP/VIEW/Header.php";

// Recherche par ID : ÇA FONCTIONNE
echo 'recherche id = 1'.'<br>';
$p = ProduitsManager::findById(1);
var_dump($p);

//Test d'ajout : ÇA FONCTIONNE
echo "Ajout d'un produit".'<br>';
$p2=new Produits (["libelleProduit"=>"cahier","prix"=>5,"dateDePeremption"=>"2020-12-31"]);
ProduitsManager::add($p2);

//Test affichage liste produits : ÇA FONCTIONNE
echo "Liste des articles" .'<br>';
$tableau=ProduitsManager::getList();
foreach($tableau as $unProduit)
{
    echo $unProduit->toString().'<br>';
}

//Test des mises à jour : ÇA FONCTIONNE
$p = ProduitsManager::findById(1);
echo "Update de l'id 1".'<br>';
$p->setLibelleProduit($p->getLibelleProduit().'OUI');
ProduitsManager::update($p);
$pRecharge=ProduitsManager::findById(1);
var_dump($pRecharge);

//Test de la suppression : ÇA FONCTIONNE
echo "On supprime un article".'<br>';
$pSup=ProduitsManager::findById(3);
ProduitsManager::delete($pSup);

include "PHP/VIEW/Footer.php";