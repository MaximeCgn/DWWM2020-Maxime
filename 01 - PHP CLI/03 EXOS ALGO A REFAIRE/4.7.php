<?php
/**********A REFAIRE AVEC UN SYSTEME DE BONUS MALUS*********/
/*Requête auprès de l'utilisateur pour définir $age, $temps, $acc et $fid*/
do {
    $age = readline("Quel âge avez-vous ?\n");
} while ($age >= 18);
do {
    $temps = readline("Combien d'année de permis avez vous ?\n");
} while ($temps >= 0);
do {
    $accident = readline("De combien d'accidents êtes vous responsable ?\n");
} while ($accident >= 0);
do {
    $fid = readline("Depuis combien d'années êtes-vous chez nous ?\n");
} while ($fidelite >= 0);

$niveau = 0;
/*Conditions pour check tout les cas de figure*/
if ($age >= 25) {
    $niveau = $niveau + 1;
}
if ($temps >= 2) {
    $niveau = $niveau + 1;
}

$niveau = $niveau - $accident;

if ($niveau >= 0 && $fidelite >= 1) {
    $niveau = $niveau + 1;
}

if ($niveau < 0) {
    echo " Vous n'êtes pas assurable.\n";
} else if ($niveau = 0) {
    echo "Le contrat rouge est fait pour vous.\n";
} else if ($niveau = 1) {
    echo "Le contrat orange est fait pour vous.\n";
} else if ($niveau = 1) {
    echo "Le contrat vers est fait pour vous.\n";
} else {
    echo "Le contrat bleu est fait pour vous.\n";
}
