<?php

// $age=readline ("Entrez votre âge");

//     if ($age==6 OR $age==7) {
//         echo "Vous entrez dans la catégorie Poussin.";
//     }
//     else if ($age==8 OR $age==9) {
//         echo "Vous entrez dans la catégorie Pupille";
//     }
//     else if($age==10 OR $age==11) {
//         echo "Vous entrez dans la catégorie Minime.";
//     }
//     else  if ($age>12) {
//         echo "Vous entrez dans la catégorie Cadet.";
//     }
/*Requête auprès de l'utilisateur pour définir $age*/
$age = readline("Entrez votre âge :");
/*Switch pour choisir le cas de figure adapté à $age*/
switch ($age) {
    case $age <= 5:
        echo "Vous êtes trop jeune.";
        break;
    case $age == 6 or $age == 7:
        echo "Vous entrez dans la catégorie Poussin.";
        break;
    case $age == 8 or $age == 9:
        echo "Vous entrez dans la catégorie Pupille.";
        break;
    case $age == 10 or $age == 11:
        echo "Vous entrez dans la catégorie Minime.";
        break;
    case $age >= 12:
        echo "Vous entrez dans la catégorie Cadet.";
        break;
}
