<?php

    $nbr1= readline ("Entrez le premier nombre");
    $nbr2= readline ("Entrez le deuxième");

    if (($nbr1>0 and $nbr2>0) OR ($nbr1<0 AND $nb2<0)) {
        echo "Le produit de ces nombres est positif.";
    }
    else if ($nbr1=0 OR $nbr2=0) {
        echo "Le produit de ces nombre est neutre.";
    }
    else {
        echo "Le produit de ces nombre est négatif.";
    }

?>