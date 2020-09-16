<?php
/*Requête auprès de l'utilisateur pour définir $age, $temps, $acc et $fid*/
while (ctype_alpha($age) OR ctype_alpha($temps) OR ctype_alpha($acc) OR ctype_alpha($fid) OR $age<18 OR $temps<0 OR $acc<0 OR $fid<0) {
echo "Merci d'entrer des données valides.\n";
$age = readline("Quel âge avez-vous ?\n");
$temps = readline("Depuis combien de temps d'années avez vous le permis de conduire ?\n");
$acc = readline("De combien d'accidents êtes vous responsable ?\n");
$fid = readline("Depuis combien d'années êtes vous client dans notre compagnie ?\n");
}
/*Conditions pour check tout les cas de figure*/
if ($age < 25 and $temps < 2 and $acc == 0) {
    echo "Vous bénéficiez du tarif rouge.\n";
    if ($fid >= 1) {
        echo "Vous pouvez passer au tarif orange.\n";
    }
} else if (($age < 25 and $temps >= 2 and $acc == 0) or ($age >= 25 and $temps < 2 and $acc == 0)) {
    echo "Vous bénéficiez du tarif orange.\n";
    if ($fid >= 1) {
        echo "Vous pouvez passer au tarif vert.\n";
    }
} else if (($age < 25 and $temps >= 2 and $acc == 0) or ($age >= 25 and $temps < 2 and $acc == 0)) {
    echo "Vous bénéficiez du tarif rouge.\n";
    if ($fid >= 1) {
        echo "Vous pouvez passer au tarif orange.\n";
    }
} else if ($age >= 25 and $temps >= 2 and $acc == 0) {
    echo "Vous bénéficiez du tarif vert.\n";
    if ($fid >= 1) {
        echo "Vous pouvez passer au tarif bleu.\n";
    }
} else if ($age >= 25 and $temps >= 2 and $acc == 1) {
    echo "Vous bénéficiez du tarif orange.\n";
    if ($fid >= 1) {
        echo "Vous pouvez passer au tarif vert.\n";       
    }
} else if ($age >= 25 and $temps >= 2 and $acc == 2) {
    echo "Vous bénéficiez du tarif rouge";
    if ($fid >= 1) {
        echo "Vous pouvez passer au tarif orange.\n";
    }
} else {
    echo "Aucun tarif n'est disponible pour votre situation, vous êtes refusé.\n";
}
