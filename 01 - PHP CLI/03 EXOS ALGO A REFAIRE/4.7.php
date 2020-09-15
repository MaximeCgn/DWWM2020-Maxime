<?php
/*Requête auprès de l'utilisateur pour définir $age, $temps, $acc et $fid*/
$age = readline("Quel âge avez-vous ?");
$temps = readline("Depuis combien de temps d'années avez vous le permis de conduire ?");
$acc = readline("De combien d'accidents êtes vous responsable ?");
$fid = readline("Depuis combien d'années êtes vous client dans notre compagnie ?");
/*Conditions pour check tout les cas de figure*/
if ($age < 25 and $temps < 2 and $acc == 0) {
    echo "Vous bénéficiez du tarif rouge.";
    if ($fid >= 1) {
        echo "Vous pouvez passer au tarif orange.";
    }
} else if (($age < 25 and $temps >= 2 and $acc == 0) or ($age >= 25 and $temps < 2 and $acc == 0)) {
    echo "Vous bénéficiez du tarif orange.";
    if ($fid >= 1) {
        echo "Vous pouvez passer au tarif vert.";
    }
} else if (($age < 25 and $temps >= 2 and $acc == 0) or ($age >= 25 and $temps < 2 and $acc == 0)) {
    echo "Vous bénéficiez du tarif rouge.";
    if ($fid >= 1) {
        echo "Vous pouvez passer au tarif orange.";
    }
} else if ($age >= 25 and $temps >= 2 and $acc == 0) {
    echo "Vous bénéficiez du tarif vert.";
    if ($fid >= 1) {
        echo "Vous pouvez passer au tarif bleu.";
    }
} else if ($age >= 25 and $temps >= 2 and $acc == 1) {
    echo "Vous bénéficiez du tarif orange.";
    if ($fid >= 1) {
        echo "Vous pouvez passer au tarif vert.";
    }
} else if ($age >= 25 and $temps >= 2 and $acc == 2) {
    echo "Vous bénéficiez du tarif rouge";
    if ($fid >= 1) {
        echo "Vous pouvez passer au tarif orange.";
    }
} else {
    echo "Aucun tarif n'est disponible pour votre situation, vous êtes refusé.";
}
