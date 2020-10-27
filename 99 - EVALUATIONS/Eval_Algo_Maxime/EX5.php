<?php

echo "**** Analyse des chaines de caractères ****\n";
/*Je demande à l'utilisateur d'entrer se chaine de caractères*/
$chaine=readline("Taper une chaine de caractères (inférieure à 255, terminée par un point) :");
$chiffres=0;
$cara=0;
$voy=0;
$cons=0;
$spec=0;
/*Reste à faire : Calculer le nombre de chiffres, caractères alphanumériques, voyelles, consonnes et caractères spéciaux dans la chaine*/


echo "La chaine comprend :\n\t".strlen($chaine)." caractères\n\t\t".$chiffres." chiffres\n\t\t".$cara." caractères alphanumériques\n\t\t\t".$voy." voyelles\n\t\t\t".$cons." consonnes\n\t\t".$spec." caractères spéciaux";