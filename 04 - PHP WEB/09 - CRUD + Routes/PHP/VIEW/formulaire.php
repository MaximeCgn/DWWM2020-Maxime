<?php

$typeForm = $_GET["typeForm"];
if ($typeForm == "ajouter") {
    echo '<div></div>';
    echo '<div class="titre liste"><h1>Ajouter un produit</h1></div>';
    echo '<div></div>';
    echo '<div class="colonne">';
    echo '<form method="POST" action="index.php?page=traitement&typeTraitement=ajouter">';
    echo '<div class="titre liste"><h2>Libellé du produit</h2></div>';
    echo '<input type="text" class="libelle listeDetail" name="libelleProduit" placeholder ="Libellé du produit"/>';
    echo '<div class="titre liste"><h2>Prix du produit</h2></div>';
    echo '<input type="text" class="libelle listeDetail" name="prix" placeholder ="Prix du produit"/>';
    echo '<div class="titre liste"><h2>Date de péremption du produit</h2></div>';
    echo '<input type="date" class="libelle listeDetail" name="dateDePeremption" placeholder ="Date de péremption du produit (AAAA-MM-JJ)"/>';
    echo '<a href="index.php"><div class="return">RETOUR</div></a>';
    echo '<input type="submit" class="ajouter PadMarg" name="submit" value="AJOUTER"/>';
    echo '</form>';
    echo '</div>';
} else if ($typeForm == "modifier") {
    $idRecherche = $_GET['id'];
    $id = ProduitsManager::findById($idRecherche);

    echo '<div></div>';
    echo '<div class="titre liste"><h1>Modifier un produit</h1></div>';
    echo '<div></div>';
    echo '<div class="colonne">';
    echo '<form method="POST" action="index.php?page=traitement&typeTraitement=modifier">';
    echo '<div class="titre liste"><h2>Libellé du produit</h2></div>';
    echo '<input type="hidden" name="id" value="' . $id->getIdProduit() . '"/>';
    echo '<input type="text" class="libelle listeDetail" name="libelleProduit" value="' . $id->getLibelleProduit() . '"/>';
    echo '<div class="titre liste"><h2>Prix du produit</h2></div>';
    echo '<input type="text" class="libelle listeDetail" name="prix" value="' . $id->getPrix() . '"/>';
    echo '<div class="titre liste"><h2>Date de péremption du produit</h2></div>';
    echo '<input type="date" class="libelle listeDetail" name="dateDePeremption" value="' . $id->getDateDePeremption() . '"/>';
    echo '<a href="index.php"><div class="return">RETOUR</div></a>';
    echo '<input type="submit" class="ajouter PadMarg" name="submit" value="MODIFIER"/>';
    echo '</form>';
    echo '</div>';
} else if ($typeForm == "details") {
    $idRecherche = $_GET['id'];
    $id = ProduitsManager::findById($idRecherche);
    echo '<div></div>';
    echo '<div class="titre liste"><h1>Détails du produit</h1></div>';
    echo '<div></div>';
    echo '<div class="contenu colonne">';
    echo '<div></div>';
    echo '<div class="libelle listeDetail">Libellé : ' . $id->getLibelleProduit() . '</div>';
    echo '<div class="libelle listeDetail">Prix : ' . $id->getPrix() . '€</div>';
    echo '<div class="libelle listeDetail">Date de Peremption : ' . $id->getDateDePeremption() . '</div>';
    echo '<div></div>';
    echo '<a href="index.php"><div class="return">RETOUR</div></a>';
    echo '</div>';

}
