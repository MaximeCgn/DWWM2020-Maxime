<?php

    include "../Fonctions php.php";

    echo "Entrez 9 valeurs :\n";
    $tableau=creationTableau();

    arsort($tableau);

    echo "Voici votre tableau à l'envers :\n";

    affichageTableauForeach($tableau);

