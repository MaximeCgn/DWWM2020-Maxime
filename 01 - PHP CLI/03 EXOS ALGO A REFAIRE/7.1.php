<?php

require "../Fonctions php.php";

/*Création et affichage du tableau*/
$nb = nombreValeursDansTableau();
$tableau = créationTableauTailleInconnue($nb);
affichageTableauForeach($tableau);

$flag = 0;
while (($flag==1) OR ($i<$nb)){
    if ($tableau[0] < $tableau[1]) {
        $sens = "c";
    }
    if ($sens == "c") {
        for ($i = 1; $i < $nb; $i++) {
            if ($tableau[$i] == $tableau[$i - 1] + 1) {
                $flag = 1;
            }
        }
    } else {
        for ($i = 1; $i < $nb; $i++) {
            if ($tableau[$i] == $tableau[$i - 1] - 1) {
                $flag = 1;
            }
        }
    }
} 

if ($flag == 0) {
    echo "\nLes nombres ne sont pas consécutifs.\n";
} else if ($flag == 1) {
    echo "\nLes nombres sont consécutifs.\n";
}
