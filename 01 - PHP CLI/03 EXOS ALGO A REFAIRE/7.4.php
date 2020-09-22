<?php

require "../Fonctions php.php";

/*Création et affichage du tableau*/
$nb = nombreValeursDansTableau();
$tableau = créationTableauTailleInconnue($nb);
affichageTableauForeach($tableau);
echo "\n";
$remove = readline("En quelle position se trouve la case que vous voulez supprimer :\n");
$remove = $remove - 1;

unset($tableau[$remove]);


affichageTableauForeach($tableau);
