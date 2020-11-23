<?php

$typeTraitement = $_GET["typeTraitement"];
if ($typeTraitement == "ajouter") {
    $prix = intval($_POST['prix']);
    $produit = new Produits(["libelleProduit" => $_POST['libelleProduit'], "prix" => $prix, "dateDePeremption" => $_POST['dateDePeremption']]);

    ProduitsManager::add($produit);
} else if ($typeTraitement == "modifier") {
    $prix = intval($_POST["prix"]);
    $id = intval($_POST["id"]);
    $produit = ProduitsManager::findById($id);
    $produit->setLibelleProduit($_POST["libelleProduit"]);
    $produit->setPrix($prix);
    $produit->setDateDePeremption($_POST["dateDePeremption"]);

    $prod = ProduitsManager::update($produit);
} else if ($typeTraitement == "supprimer") {
    $idRecherche = $_GET['id'];
    $id = ProduitsManager::findById($idRecherche);
    ProduitsManager::delete($id);
    include 'footer.php';
}

header("location:index.php");
