<?php

require "../Fonctions php.php";
/*Création et affichage du premier tableau*/
$nb1 = nombreValeursDansTableau();
$tableau1 = créationTableauTailleInconnue($nb1);
echo "Voici le premier tableau :\n";
affichageTableauForeach($tableau1);
echo "\n";
/*Création et affichage du second  tableau*/
$tableau2 = créationTableauTailleInconnue($nb1);
echo "Voici le second tableau :\n";
affichageTableauForeach($tableau2);
/*Création et affichage du troisième tableau, qui affiche les sommes des deux tableaux de départ*/
echo "\n Voici le troisième tableau, il affiche les sommes des deux tableaux précédents :\n";
for ($i = 0; $i < $nb1; $i++) {
    $tableau3[$i] = $tableau1[$i] + $tableau2[$i];
    echo "[" . $tableau3[$i] . "]\t";
}
