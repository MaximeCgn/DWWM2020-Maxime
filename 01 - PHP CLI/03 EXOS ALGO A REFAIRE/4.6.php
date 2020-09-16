<?php
/* Requêtes pour définir le nombre de votes pour chaques candidats*/
echo "Merci d'entrer des nombres de votes valides.\n";
$votes1 = readline("Combien de votes a eu le premier candidat ?\n");
$votes2 = readline("Combien de votes a eu le second candidat ?\n");
$votes3 = readline("Combien de votes a eu le troisième candidat ?\n");
$votes4 = readline("Combien de votes a eu le quatrième candidat ?\n");
/*Vérification des données entrées*/
while (ctype_alpha($votes1) or ctype_alpha($votes2) or ctype_alpha($votes3) or ctype_alpha($votes4) or $votes1 < 0 or $votes2 < 0 or $votes3 < 0 or $votes4 < 0) {
    echo "Merci d'entrer des nombres de votes valides.\n";
    $votes1 = readline("Combien de votes a eu le premier candidat ?\n");
    $votes2 = readline("Combien de votes a eu le second candidat ?\n");
    $votes3 = readline("Combien de votes a eu le troisième candidat ?\n");
    $votes4 = readline("Combien de votes a eu le quatrième candidat ?\n");
}
/*Calcul du total des votes*/
$total = $votes1 + $votes2 + $votes3 + $votes4;
/*calcul du pourcentage de voix pour chacun des candidats*/
$prc1 = $votes1 * 100 / $total;
$prc2 = $votes2 * 100 / $total;
$prc3 = $votes3 * 100 / $total;
$prc4 = $votes4 * 100 / $total;
/* Conditions pour check les différents cas de figure*/
if ($prc1 >= 50) {
    echo "Le premier candidat est élu.";
} else if ($prc2 >= 50 or $prc3 >= 50 or $prc4 >= 50) {
    echo "Le premier candidat est battu.";
} else if ($prc1 > $prc2 and $prc1 > $prc3 and $prc1 > $prc4) {
    echo "Le premier candidat est favorable au second tour.";
} else if ($prc1<12.5) {
    echo "Le premier candidat n'est pas qualifié au second tour.";
}
else {
    echo "Le premier candidat est défavorable au second tour.";
}

/*****Ajouter une condition (cf. exo 4.6)***** */
