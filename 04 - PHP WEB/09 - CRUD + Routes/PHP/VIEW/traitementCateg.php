<?php

$typeTraitement = $_GET["typeTraitement"];
if ($typeTraitement == "ajouter") {
    $categorie = new Categories(["libelleCategorie" => $_POST['libelleCategorie']]);

    CategoriesManager::add($categorie);
} else if ($typeTraitement == "modifier") {
    $id = intval($_POST["id"]);
    $categorie = CategoriesManager::findById($id);
    $categorie->setLibelleCategorie($_POST["libelleCategorie"]);

    $prod = CategoriesManager::update($categorie);
} else if ($typeTraitement == "supprimer") {
    $idRecherche = $_GET['id'];
    $id = CategoriesManager::findById($idRecherche);
    CategoriesManager::delete($id);
    include 'footer.php';
}

header("location:index.php?page=listeCategories");
