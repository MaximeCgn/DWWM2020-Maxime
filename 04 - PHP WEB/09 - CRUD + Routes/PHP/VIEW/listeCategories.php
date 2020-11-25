<?php

$categories = CategoriesManager::getList();
echo '<div></div>';
echo '<div class="contenu colonne">
    <div class="titre liste"><h1>Liste des catégories</h1></div>
    <div class="espace"></div>
    <div>
    <div></div>
    <a href="index.php?page=formulaireCateg&typeForm=ajouter"><div class="ajouter">Ajouter un produit</div></a>
    <div></div>
    </div>

    <div class="liste colonne">';

foreach ($categories as $uneCategorie) {
    echo '<div class="produit">
        <div class="libelle">' . $uneCategorie->getLibelleCategorie() . '</div>
        <div></div>
                    <a href="index.php?page=formulaireCateg&typeForm=details&id=' . $uneCategorie->getIdCategorie() . '"><div class="details">Details</div></a>
                    <a href="index.php?page=formulaireCateg&typeForm=modifier&id=' . $uneCategorie->getIdCategorie() . '"><div class="modifier">Modifier</div></a>
                    <a href="index.php?page=traitementCateg&typeTraitement=supprimer&id=' . $uneCategorie->getIdCategorie() . '"><div class="supprimer">Supprimer</div></a>
            </div>';
}
echo '</div>

</div>';
