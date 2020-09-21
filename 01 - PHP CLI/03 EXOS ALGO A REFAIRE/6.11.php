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
/*Calcul et affichage du troisième tableau, qui multiplie les éléments du tableau 1 par ceux du tableau 2, puis qui additionne le tout*/
echo "\nLe Schtroumpf sera de : ".array_sum($tableau1)*array_sum($tableau2);

