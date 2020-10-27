<?php

echo "Racine de l'équation du 2nd degré";
echo "\n\tY= aX² + bX + c\n\n";
/*Je demande à l'utilisateur les valeurs de a,b et c en effectuant un contrôle de saisie*/
do {
    do {
        $a = readline("Quelle est la valeur de a :");
        if (ctype_alpha($a)) {
            echo "Merci d'entrer un chiffre.\n";
        }
    } while (ctype_alpha($a));

    do {
        $b = readline("Quelle est la valeur de b :");
        if (ctype_alpha($b)) {
            echo "Merci d'entrer un chiffre.\n";
        }
    } while (ctype_alpha($b));

    do {
        $c = readline("Quelle est la valeur de c :");
        if (ctype_alpha($c)) {
            echo "Merci d'entrer un chiffre.\n";
        }
    } while (ctype_alpha($c));
/*Calcul du Delta*/
    $delta = pow($b, 2) - 4 * $a * $c;
/*Envoie de la réponse à l'utilisateur en fonction des racines de l'équation*/
    if (($a == 0) xor ($b == 0) xor ($c == 0)) {
        echo "L'équation est du 1er degré !";
    } else if (($a == 0) or ($b == 0) or ($c == 0)) {
        echo "L'équation n'en est plus une !!!";
    } else if ($delta < 0) {
        echo "L'équation ne possède pas  de racine réelle :\nd=$delta";
    } else if ($delta == 0) {
        echo "L'équation possède une racine double :\nd=$delta\nx1=x2=" . -($b / (2 * $a));
    } else if ($delta > 0) {
        echo "L'équation possède deux racines distinctes :\nd=$delta\nL'équation s'annule pour :\nx1=" . (-$b + sqrt($delta)) / 2 * $a . "\nx2=" . (-$b - sqrt($delta)) / 2 * $a;
    }
/*Je lui demande s'il veut refaire un calcul, et effectue une vérification de saisie*/
    $cont = readline("Voulez vous faire un autre calcul ? (O/N)");
    if ($cont == "N") {
        echo "\nAu revoir et à bientôt !";
    } else if ($cont != "O") {
        do {
            $flag = 0;
            $cont = readline("Merci d'entrer une réponse valide.Voulez vous faire un autre calcul ? (O/N) ");
            if (($cont == "O") or ($cont == "N")) {
                $flag = 1;
            }
        } while ($flag == 0);
    }
} while ($cont == "O");
