<?php

$produits = ProduitsManager::getList();
echo '<div></div>';
echo '<div class="contenu colonne">
    <div class="titre liste"><h1>Liste des produits</h1></div>
    <div class="espace"></div>
    <div>
    <div></div>
    <a href="ajouter.php"><div class="ajouter">Ajouter un produit</div></a>
    <div></div>
    </div>
    
    <div class="liste colonne">';
foreach ($produits as $unProduit) {
    
    echo '<div class="produit">
                    <div class="libelle">' . $unProduit->getLibelleProduit() . '</div>
                    <div></div>
                    <a href="details.php"><div class="details">Details</div></a>
                    <a href="modifier.php"><div class="modifier">Modifier</div></a>
                    <a href="supprimer.php"><div class="supprimer">Supprimer</div></a>
            </div>';
}
echo '</div>

</div>';
