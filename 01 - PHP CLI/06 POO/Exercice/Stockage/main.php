<?php

function loadClass($class)
{
    require $class . ".Class.php";
}
spl_autoload_register("loadClass");
//Creation des lieux de stockage
$lieu1 = new Lieu(["numeroEntrepot" => 12, "zone" => "A", "ville" => "Pripyat"]);
$lieu2 = new Lieu(["numeroEntrepot" => 31, "zone" => "B", "ville" => "Wuhan"]);
$lieu3 = new Lieu(["numeroEntrepot" => 18, "zone" => "C", "ville" => "Nagasaki"]);
//Creation des catégories
$cat1 = new Categorie(["libelle" => "Alimentaire", "TVA" => 0.05]);
$cat2 = new Categorie(["libelle" => "Informatique", "TVA" => 1.00]);
$cat3 = new Categorie(["libelle" => "Electro-ménager", "TVA" => 0.10]);
//Creation des produits
$produit1 = new Produit(["numero" => 01, "designation" => "Carotte", "datevalidite" => new DateTime('2020-11-07'), "categorie" => $cat1, "lieustockage" => $lieu1, "prixHT" => 2, "couleur" => "Orange"]);
$produit2 = new Produit(["numero" => 11, "designation" => "Navet", "datevalidite" => new DateTime('2020-10-05'), "categorie" => $cat1, "lieustockage" => $lieu2, "prixHT" => 1, "couleur" => "Blanc"]);
$produit3 = new Produit(["numero" => 22, "designation" => "Télévision", "datevalidite" => new DateTime('2012-09-01'), "categorie" => $cat2, "lieustockage" => $lieu2, "prixHT" => 699, "couleur" => "Noire"]);
$produit4 = new Produit(["numero" => 33, "designation" => "iPhone 19", "datevalidite" => new DateTime('2025-12-25'), "categorie" => $cat2, "lieustockage" => $lieu3, "prixHT" => 4599, "couleur" => "Jaune"]);
$produit5 = new Produit(["numero" => 44, "designation" => "Réfrégirateur", "datevalidite" => new DateTime('2000-01-01'), "categorie" => $cat3, "lieustockage" => $lieu1, "prixHT" => 250, "couleur" => "Argenté"]);
//Creation du tableau contenant les produits
$listeProduits = [$produit1, $produit2, $produit3, $produit4, $produit5];

foreach ($listeProduits as $elt) {
    echo $elt->toString();
}
