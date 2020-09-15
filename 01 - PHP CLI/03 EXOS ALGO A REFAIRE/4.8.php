<?php
/*Requête auprès de l'utilisateur pour définir $jr,$mois et $an*/
$jr = readline("Entrez un jour(exemple:18)");
$mois = readline("Entrez un mois (exemple:4)");
$an = readline("Entrez une année (exemple:1998)");
/*Conditions pour check les différents cas de figure*/
if (ctype_alpha($jr)) {
    echo "Merci d'entrer des nombres.";
} else if (ctype_alpha($mois)) {
    echo "Merci d'entrer des nombres.";
} else if (ctype_alpha($an)) {
    echo "Merci d'entrer des nombres.";
} else if ($an % 4 != 0 and $an % 400 != 0 and $mois == 2 and $jr > 28) {
    echo "Cette date n'est pas valide";
} else if ($an % 4 == 0 and $an % 400 == 0 and $mois == 2 and $jr > 29) {
    echo "Cette date n'est pas valide";
} else if ($mois > 12 or $mois <= 0) {
    echo "Cette date n'est pas valide";
} else if ($jr > 31 or $jr <= 0) {
    echo "Cette date n'est pas valide";
} else if ($mois == 9 or $mois == 11 or $mois == 4 or $mois == 6) {
    if ($jr > 30) {
        echo "Cette date n'est pas valide";
    }
} else {
    echo "Cette date est valide.";
}
