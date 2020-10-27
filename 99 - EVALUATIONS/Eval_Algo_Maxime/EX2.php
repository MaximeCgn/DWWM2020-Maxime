<?php
echo "***\tTable de multiplication\t\t***\n\n";
/*Je demande à l'utilisateur le nombre dont il veut la table de multiplication et effectue une verification de saisie*/
do {
    do {
        $nbr = readline("Entrez le nombre pour lequel vous voulez la table de multiplication :");
        if (ctype_alpha($nbr)) {
            echo "Merci d'entrer un chiffre.\n";
        }
    } while (ctype_alpha($nbr));
/*J'effectue une boucle pour afficher le détail du calcul à l'utilisateur*/
    for ($i = 1; $i <= 10; $i++) {
        echo $nbr . "\tx " . $i . "\t= " . $nbr * $i . "\n";
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
