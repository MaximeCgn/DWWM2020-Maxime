<?php
/*Je met le tout dans une boucle dans le cas ou l'utilisateur veut faire plusieurs calculs*/
do {
/*Je demande à l'utilisateur le rayon du cercle, et j'effectue une vérification de saisie*/
    do {
        $rayon = readline("Quel est le rayon du cercle : ");
        if (ctype_alpha($rayon)) {
            echo "Merci d'entrer un chiffre.\n";
        }
    } while (ctype_alpha($rayon));
/*Je calcule et j'envoie à l'utilisateur la circonférence est la surface du cercle*/
    echo "\nSa circonférence est de\t\t :" . 2 * pi() * $rayon;
    echo "\nSa surface est de\t\t :" . pi() * pow($rayon, 2) . "\n";
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
