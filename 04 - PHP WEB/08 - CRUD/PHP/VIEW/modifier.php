<?php

include ('head.php');
include ('header.php');

$idRecherche = $_GET['id'];
$id=ProduitsManager::findById($idRecherche);

echo '<div></div>';
echo '<div class="titre liste"><h1>Modifier un produit</h1></div>';
echo '<div></div>';
echo '<div class="colonne">';
echo '<form method="POST" action="modifierTraitement.php">';
echo '<div class="titre liste"><h2>Libellé du produit</h2></div>';
echo '<input type="hidden" name="id" value="'.$id->getIdProduit().'"/>';
echo '<input type="text" class="libelle listeDetail" name="libelleProduit" value="'.$id->getLibelleProduit().'"/>';
echo '<div class="titre liste"><h2>Prix du produit</h2></div>';
echo '<input type="text" class="libelle listeDetail" name="prix" value="'.$id->getPrix().'"/>';
echo '<div class="titre liste"><h2>Date de péremption du produit</h2></div>';
echo '<input type="text" class="libelle listeDetail" name="dateDePeremption" value="'.$id->getDateDePeremption().'"/>';
echo '<a href="../../index.php"><div class="return">RETOUR</div></a>';
echo '<input type="submit" class="ajouter PadMarg" name="submit" value="MODIFIER"/>';
echo '</form>';
echo'</div>';


include ('footer.php');