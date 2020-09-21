<?php

    include "../Fonctions php.php";

    echo "Entrez 9 valeurs :\n";
    $tableau=creationTableau();

    rsort($tableau);

    echo "Voici votre tableau, trié dans l'ordre décroissant :\n";
    affichageTableauForeach($tableau);


