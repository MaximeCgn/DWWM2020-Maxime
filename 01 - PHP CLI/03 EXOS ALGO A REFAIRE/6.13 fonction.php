<?php

function affichageTableau($tableau)
{
    for ($i = 0; $i < count($tableau); $i++) {
        echo "[", $tableau[$i], "]" . "\t";
    }
    return $tableau;
}
/*Fonction pour demander à l'utilisateur combien de valeurs il veut entrer*/
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
/*Fonction pour que l'utilisateur entre ces valeurs*/
function valeurs($val)
{
    for ($i = 0; $i < $val; $i++) {
        $c = $i + 1;
        do {
            $valeur = readline("Entrez la valeur n°$c :");
            if (ctype_alpha($valeur)) {
                echo "Merci d'entrer un chiffre.\n";
            }
        } while (ctype_alpha($valeur));
        $tableau[$i] = $valeur;
    }
    return $tableau;
}
$nb = nombreValeurs();
$tableau = valeurs($nb);
affichageTableau($tableau);
/*Ajout de +1 la l'emplacement de la valeur max pour ne pas commencer de compter a partir de 0*/
$posMax = (array_search(max($tableau), $tableau)) +1;

echo "\nLa plus haute valeur de ce tableau est : ", max($tableau), "\nElle se trouve en position :", $posMax;
