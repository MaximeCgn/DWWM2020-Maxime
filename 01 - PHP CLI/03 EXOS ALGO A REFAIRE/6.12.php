<?php
/*Fonction pour afficher le tableau*/
function affichageTableau($tableau, $nbr)
{
    for ($i = 0; $i < $nbr; $i++) {
        echo "[", $tableau[$i], "]" . "\t";
    }
    return $tableau;
}
/*Je demande à l'utilisateur combien de valeurs il veut entrer*/
do {
    $nbr = readline("Nombre de valeurs que vous voulez vous entrer :");
    if (ctype_alpha($nbr)) {
        echo "Merci d'entrer un chiffre.\n";
    }
} while (ctype_alpha($nbr));
/*L'utilisateur entre les dites valeurs*/
for ($i = 0; $i < $nbr; $i++) {
    $c = $i + 1;
    do {
        $val = readline("Entrez la valeur n°$c :");
        $val = $val + 1; /*Calcul permettant d'ajouter +1 à $val*/
        if (ctype_alpha($val)) {
            echo "Merci d'entrer un chiffre.\n";
        }
    } while (ctype_alpha($val));
    $tableau[$i] = $val;
}

affichageTableau($tableau, $nbr);
