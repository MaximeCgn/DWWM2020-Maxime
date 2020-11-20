<?php

include 'head.php';
include 'header.php';

echo '<div></div>';
echo '<div class="titre liste"><h1>Ajouter un produit</h1></div>';
echo '<div></div>';
echo '<div class="colonne">';
echo '<form method="POST" action="ajouterTraitement.php">';
echo '<div class="titre liste"><h2>Libellé du produit</h2></div>';
echo '<input type="text" class="libelle listeDetail" name="libelleProduit" placeholder ="Libellé du produit"/>';
echo '<div class="titre liste"><h2>Prix du produit</h2></div>';
echo '<input type="text" class="libelle listeDetail" name="prix" placeholder ="Prix du produit"/>';
echo '<div class="titre liste"><h2>Date de péremption du produit</h2></div>';
echo '<input type="date" class="libelle listeDetail" name="dateDePeremption" placeholder ="Date de péremption du produit (AAAA-MM-JJ)"/>';
echo '<a href="../../index.php"><div class="return">RETOUR</div></a>';
echo '<input type="submit" class="ajouter PadMarg" name="submit" value="AJOUTER"/>';
echo '</form>';
echo'</div>';

include 'footer.php';
