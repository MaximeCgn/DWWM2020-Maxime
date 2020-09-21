<?php

require "../Fonctions php.php";

$nb = nombreValeursDansTableau();
$tableau = créationTableauTailleInconnue($nb);

echo "Voici la somme totale des valeurs entrées dans le tableau :\n" . array_sum($tableau);
