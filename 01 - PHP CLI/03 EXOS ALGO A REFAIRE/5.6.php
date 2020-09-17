<?php

$error = 0;
while ($error == 0) {

    $nbr = readline("Inscrivez un nombre :\n"); /*Requête auprès de l'utilisateur pour définir $nbr*/
    $produit = 1;

    if (ctype_alpha($nbr)) { /*Conditions qui détecte si $nbr est composé de lettres pour la vérif*/
        echo "Veuillez entrer un nombre\n";

        $error = 0;
    } else {
        $error = 1;
    }
}

for ($x = 1; $x <= $nbr; $x++) { /* Boucle pour calculer la factorielle de $nbr et afficher ce calcul*/
    $produit = $produit * $x;
    if ($x < $nbr) {
        echo $x, "x";
    } else {
        echo $x, "=", $produit;
    }
}

echo "\nLa factorielle de ", $nbr, " est :", $produit, "\n";
