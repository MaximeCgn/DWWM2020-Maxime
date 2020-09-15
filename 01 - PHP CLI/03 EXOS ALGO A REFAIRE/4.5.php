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


        $sexe=readline ("Vous êtes un homme ou une femme ?");
        $age=readline ("Quel âge avez-vous ?");

        if (($sexe=="homme" AND $age>=20) OR ($sexe=="femme" AND $age>=18 AND $age<=35)) {
            echo "Vous êtes imposable";
        }
        else {
            echo "Vous n'êtes pas imposable.";
        } 

?>