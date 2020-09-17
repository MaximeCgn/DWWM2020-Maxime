<?php
$somme = 0;
for ($i = 0; $i < 9; $i++) {
    $c = $i + 1;
    do {
        $note = readline("Veuillez entrer la note n°$c :");
        /*Calcul de la somme des notes*/
        $somme = $somme + $note;
    } while (ctype_alpha($note));
    $tableau[$i] = $note;
}
/*Affichage du tableau*/
var_dump($tableau);
/*Calcul de la moyenne*/
$moy = $somme / 9;

echo "La moyenne de cet élève est de $moy";
