<?php

    $nbr=readline ("Inscrivez un nombre :");
    $produit=1;

    for ($x=1 ; $x<=$nbr ; $x++) {
        $produit = $produit*$x;
    }

    echo "La factorielle de ",$nbr," est :",$produit;