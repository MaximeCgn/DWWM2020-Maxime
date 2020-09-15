<?php

// $sexe=readline ("Êtes vous une femme ou un homme ?");

// if ($sexe="homme") {
//     $age=readline ("Quel âge avez vous ?");
//         if ($age>=20) {
//             echo "Vous êtes imposable.";
//         }
//         else {
//             echo "Vous n'ête pas imposable";
//         }
//     }

// else if ($sexe="femme") {
//     $agef=readline ("Quel âge avez vous?");
//         if ($agef>=18 AND $age<=35) {
//             echo "Vous êtes imposable.";
//         }
//         else {
//             echo "Vous n'êtes pas imposable";
//         }
// }

$error = 0;

while ($error == 0) {
    $sexe = readline("Vous êtes un homme ou une femme ?\n");
    $age = readline("Quel âge avez-vous ?\n");
    if ($sexe == "femme" or $sexe == "homme") {
        $error = 1;
        if (($sexe == "homme" and $age >= 20) or ($sexe == "femme" and $age >= 18 and $age <= 35)) {
            echo "Vous êtes imposable\n";
        } else {
            echo "Vous n'êtes pas imposable.\n";
        }
    } else if ($sexe != "femme" or $sexe != "homme") {
        echo "Veuillez entrer un sexe valide.";
        $error = 0;
    }
}
