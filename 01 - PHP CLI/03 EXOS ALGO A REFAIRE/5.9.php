<?php

$prixu = 1;
$somme = 0;
/*Tant que le prix de l'article n'est pas à 0, le boucle continue d'ajouter le prix de l'article aux total des prix des articles précédents*/
while ($prixu != 0) {
    $prixu = readline("Prix de l'article :\n");
    $somme = $somme + $prixu;
}
/*L'utilisateur entre combien il a versé*/
echo "Le prix total est de : $somme \n";
$donne = readline("Vous avez versé :\n");
while ($donne < $somme) {
    $donne = readline("Veuillez verser autant ou plus que le prix total : \n");
}
$reste = $donne - $somme;
$b10 = 0;
/*Je retire 10 Euros par 10 au reste que l'utilsiateur doit recevoir, en ajoutant +1 a ma variable $b10*/
while ($reste >= 10) {
    $b10 = $b10++;
    $reste = $reste - 10;
}
/*J'ajoute +1 a $b5 si le reste est au dessus de 5, puis je retire 5 du reste*/
$b5 = 0;
if ($reste >= 5) {
    $b5 = 1;
    $reste = $reste - 5;
}
/* Le reste est forcément égal au nombre de pièces de 1 Euros*/
echo "Nous vous devons :\n";
echo "Billet(s) de 10 Euros : $b10\n";
echo "Billet(s) de 5 Euros : $b5\n";
echo "Piece(s) de 1 Euros : $reste\n";
