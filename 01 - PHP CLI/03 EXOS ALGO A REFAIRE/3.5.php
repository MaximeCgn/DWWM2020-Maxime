<?php

    $nbr1= readline ("Entrez le premier nombre :");
    $nbr2= readline ("Entrez le deuxième :");

    if (ctype_alpha($nbr1))  {
        echo "Merci d'entrer un nombre.";
    }
    else if (ctype_alpha($nbr2)) {
        echo "Merci d'entrer un nombre.";
    }
    else if (($nbr1>0 and $nbr2>0) OR ($nbr1<0 and $nbr2<0)) {
        echo "Le produit de ces nombres est positif.";
    }
    else if ($nbr1==0 OR $nbr2==0) {
        echo "Le produit de ces nombres est neutre.";
    }
    else if ($nbr1<0 OR $nbr2<0) {
        echo "Le produit de ces nombres est négatif.";
    }
    

?>