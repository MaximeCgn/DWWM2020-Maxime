<?php

function nombreValeurs()
{
    do {
        $nbr = readline("Nombre de valeurs que vous voulez vous entrer :");
        if (ctype_alpha($nbr)) {
            echo "Merci d'entrer un chiffre.\n";
        }
    } while (ctype_alpha($nbr));
    return $nbr;
}

function créationTableauTailleInconnue($val) {
    
for ($i = 0; $i < $val; $i++) {
    $c = $i + 1;
    do {
        $valeur = readline("Entrez la valeur n°$c :");
        $valeur=$valeur+1;
        if (ctype_alpha($valeur)) {
            echo "Merci d'entrer un chiffre.\n";
        }
    } while (ctype_alpha($valeur));
    $tableau[$i] = $valeur;
}
return $tableau;
}

function affichageTableau($tableau)
{
    for ($i = 0; $i < count($tableau); $i++) {
        echo "[", $tableau[$i], "]" . "\t";
    }
    return $tableau;
}

$nb=nombreValeurs();
$tableau=créationTableauTailleInconnue($nb);
affichageTableau($tableau);


