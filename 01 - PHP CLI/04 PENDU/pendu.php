<?php
/* L'utilisateur choisit la difficulté*/
require "fonction pendu.php";
do {
    echo "Choisissez la difficulté : 1 | 2 | 3 | 4 :\n";
    echo "1 : Facile\n2 : Moyen\n3 : Difficile\n4 : Hardcore\n";
    $diff=readline("");
    if (($diff<1) || ($diff>4)) {
        echo "\nMerci d'entrer une difficulté valide.\n";
    }
} while (($diff<1) || ($diff>4));
/*La partie se lance*/
lancerPartie($diff);

//Information sur les difficultés:
/*****FACILE*****/
/*10 VIES, PREMIERE ET DERNIERE LETTRE AFFICHÉE*/
/****MOYEN*****/
/*9 VIES, PAS DE LETTRE AFFICHÉE*/
/*****DIFFICILE******/
/*7 VIES, UNE LETTRE S'AFFICHE MEME SI ELLE EST PRESENTE PLUSIEURS FOIS*/
/*****HARDCORE******/
/*3 VIES, UNE LETTRE S'AFFICHE MEME SI ELLE EST PRESENTE PLUSIEURS FOIS*/