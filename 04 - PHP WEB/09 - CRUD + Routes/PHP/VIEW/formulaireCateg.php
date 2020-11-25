<?php

$typeForm = $_GET["typeForm"];
if ($typeForm == "ajouter") {
    echo '<div></div>';
    echo '<div class="titre liste"><h1>Ajouter une catégorie</h1></div>';
    echo '<div></div>';
    echo '<div class="colonne">';
    echo '<form method="POST" action="index.php?page=traitementCateg&typeTraitement=ajouter">';
    echo '<div class="titre liste"><h2>Libellé de la catégorie :</h2></div>';
    echo '<input type="text" class="libelle listeDetail" name="libelleCategorie" placeholder ="Libellé de la catégorie"/>';
    echo '<a href="index.php?page=listeCategories"><div class="return">RETOUR</div></a>';
    echo '<input type="submit" class="ajouter PadMarg" name="submit" value="AJOUTER"/>';
    echo '</form>';
    echo '</div>';
} else if ($typeForm == "modifier") {
    $idRecherche = $_GET['id'];
    $id = CategoriesManager::findById($idRecherche);

    echo '<div></div>';
    echo '<div class="titre liste"><h1>Modifier une Catégorie</h1></div>';
    echo '<div></div>';
    echo '<div class="colonne">';
    echo '<form method="POST" action="index.php?page=traitementCateg&typeTraitement=modifier">';
    echo '<div class="titre liste"><h2>Libellé de la Catégorie</h2></div>';
    echo '<input type="hidden" name="id" value="' . $id->getIdCategorie() . '"/>';
    echo '<input type="text" class="libelle listeDetail" name="libelleCategorie" value="' . $id->getLibelleCategorie() . '"/>';
    echo '<a href="index.php?page=listeCategories"><div class="return">RETOUR</div></a>';
    echo '<input type="submit" class="ajouter PadMarg" name="submit" value="MODIFIER"/>';
    echo '</form>';
    echo '</div>';
} else if ($typeForm == "details") {
    $idRecherche = $_GET['id'];
    $id = CategoriesManager::findById($idRecherche);
    echo '<div></div>';
    echo '<div class="titre liste"><h1>Détails de la catégorie</h1></div>';
    echo '<div></div>';
    echo '<div class="contenu colonne">';
    echo '<div></div>';
    echo '<div class="libelle listeDetail">Libellé : ' . $id->getLibelleCategorie() . '</div>';
    echo '<div></div>';
    echo '<a href="index.php?page=listeCategories"><div class="return">RETOUR</div></a>';
    echo '</div>';

}