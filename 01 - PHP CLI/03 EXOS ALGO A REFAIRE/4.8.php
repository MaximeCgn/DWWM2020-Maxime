<?php

    $jr=readline ("Entrez un jour(exemple:18)");
    $mois=readline("Entrez un mois (exemple:4)");
    $an=readline("Entrez une année (exemple:1998)");

    if (ctype_alpha($jr))  {
        echo "Merci d'entrer des nombres.";
    }
    else if (ctype_alpha($mois))  {
        echo "Merci d'entrer des nombres.";
    }
    else if (ctype_alpha($an))  {
        echo "Merci d'entrer des nombres.";
    }
    else if ($an%4!=0 AND $an%400!=0 AND $mois==2 AND $jr>28) {
        echo "Cette date n'est pas valide";
    }
    else if ($an%4==0 AND $an%400==0 AND $mois==2 AND $jr>29) {
        echo "Cette date n'est pas valide";
    }
    else if ($mois>12 OR $mois<=0) {
        echo "Cette date n'est pas valide";
    }
    else if ($jr>31 OR $jr<=0) {
        echo "Cette date n'est pas valide";
    }
    else if ($mois==9 OR $mois==11 OR $mois==4 OR $mois==6) {
        if ($jr>30) {
            echo "Cette date n'est pas valide";
        }
    }
    else {
        echo "Cette date est valide.";
    }

?>