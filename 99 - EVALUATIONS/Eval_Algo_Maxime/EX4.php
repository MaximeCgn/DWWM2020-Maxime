<?php

/*Je créé mes 4 tableaux*/
$tab1 = ["BOING747", "AIRBUSA380", "LEARJET45", "DC10", "CONCORDE", "ANTONOV32"];
$tab2 = ["B0", "AB", "LJ", "DC", "CO", "AN"];
$tab3 = ["800", "950", "700", "900", "1400", "560"];
$tab4 = ["10000", "12000", "4500", "8000", "16000", "2500"];

echo "**** STATISTIQUES AVIONS ****\n\n";
/*Je demande à l'utilisateur de rentrer le code de l'avion, si celui ci n'existe pas, la boucle continue*/

$flag = 0;
$recomm = 0;
do {
    do {
        $code = readline("Entrez le code de l'avion :");
        /*La fonction in_array vérifie si la valeur de $code fait partie du $tab2, si non, je redemande le code de l'avion à l'utilisateur*/
        if (in_array($code, $tab2)) {
            $flag = 1;
            /*Ci dessous, je donne à l'utilisateur les information sur l'avion lié au code Avion qu'il a entré juste avant*/
            echo "Avion :" . $tab1[array_search($code, $tab2)] . " Vitesse :" . $tab3[array_search($code, $tab2)] . " Rayon d'action :" . $tab4[array_search($code, $tab2)] . "\n";
            /*Je demande à l'utilisateur s'il veut éditer les statistiques, et je fais une vérification de saisie*/
            $stat = readline("Voulez vous éditer les statistiques ? (O/N) ");
            if ($stat == "O") {
                echo "L'avion qui vole le plus vite est le " . $tab1[array_search(max($tab3), $tab3)] . "à " . max($tab3) . "km/h\n" . "La moyenne des ratibs d'action est de :" . array_sum($tab4) / 6 . "\n";

            } else if ($stat == "N") {
                echo "\nAu revoir et à bientôt !";
            } else if ($stat != "O") {
                do {
                    $flag = 0;
                    $stat = readline("Merci d'entrer une réponse valide.Voulez vous éditer les statistiques ? (O/N) ");
                    if (($stat == "O") or ($stat == "N")) {
                        $flag = 1;

                        echo "L'avion qui vole le plus vite est le " . $tab1[array_search(max($tab3), $tab3)] . "à " . max($tab3) . "km/h\n" . "La moyenne des ratibs d'action est de :" . array_sum($tab4) / 6 . "\n";

                    }
                } while ($flag == 0);

            }
            /*Je demande à l'utilisateur s'il veut faire une autre recherche, si c'est le cas, il recommencera le programme depuis le début*/
            $cont = readline("Voulez vous faire une autre recherche ? (O/N) ");
            if ($cont == "N") {
                echo "\nAu revoir et à bientôt !";
            } else if ($cont != "O") {
                do {
                    $recomm = 0;
                    $cont = readline("Merci d'entrer une réponse valide.Voulez vous faire une autre recherche ? (O/N) ");
                    if (($cont == "O") or ($cont == "N")) {
                        $recomm = 1;
                    }
                } while ($recomm == 0);
            }

        } else {
            echo "Cet avion n'existe pas\n";

        }
    } while ($flag == 0);
} while ($recomm == 0);
