<?php
include "../Fonctions php.php";
$tableau=creationTableau();
affichageTableau($tableau);

echo "\nLa moyenne de cet élève est de :".$moy=array_sum($tableau)/9;
