<?php

$produits = ProduitsManager::getList();
echo '<div></div>';
echo '<div class="contenu colonne">
    <div class="titre liste"><h1>Liste des produits</h1></div>
    <div class="espace"></div>
    <div>
    <div></div>
    <a href="index.php?page=formulaire&typeForm=ajouter"><div class="ajouter">Ajouter un produit</div></a>
    <div></div>
    </div>
    
    <div class="liste colonne">';
foreach ($produits as $unProduit) {
    
    echo '
    <div class="produit">
                    <div class="libelle">' . $unProduit->getLibelleProduit() . '</div>
                    <div></div>
                    <a href="index.php?page=formulaire&typeForm=details&id='.$unProduit->getIdProduit().'"><div class="details">Details</div></a>
                    <a href="index.php?page=formulaire&typeForm=modifier&id='.$unProduit->getIdProduit().'"><div class="modifier">Modifier</div></a>
                    <a href="index.php?page=traitement&typeTraitement=supprimer&id='.$unProduit->getIdProduit().'"><div class="supprimer">Supprimer</div></a>
            </div>';
}
echo '</div>

</div>';
