<?php

require "../Fonctions php.php";
/*Création et affichage du premier tableau*/
echo "Tableau 1 \n";
$nb1 = nombreValeursDansTableau();
$tableau1 = créationTableauTailleInconnue($nb1);
echo "\nVoici le premier tableau :\n";
affichageTableauForeach($tableau1);
echo "\n";
/*Création et affichage du second  tableau*/
echo "Tableau 2 \n";
$nb2 = nombreValeursDansTableau();
$tableau2 = créationTableauTailleInconnue($nb2);
echo "\nVoici le second tableau :\n";
affichageTableauForeach($tableau2);
/*Création du troisième tableau calculant le produit de chaque éléments du tableau 1 avec ceux du tableau 2*/
for ($i=0;$i<$nb1;$i++) {
    for ($j=0;$j<$nb2;$j++) {
        $tableau3[]=$tableau1[$i]*$tableau2[$j];
    }
}

echo "Le schtroumpf sera de :". array_sum($tableau3);
