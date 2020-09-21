<?php
/*Fonction pour afficher un tableau*/

function affichageTableau($tableau)
{
    for ($i = 0; $i < count($tableau); $i++) {
        echo "[", $tableau[$i], "]" . "\t";
    }
    return $tableau;
}
// --------------------------------
/*Fonction pour affiche le tableau*/
function affichageTableauForeach($tableau)
{
    foreach ($tableau as $element) {
        echo "[".$element."]\t";
    }
return $tableau;
}
// --------------------------------
/*Créer des tableaux avec taille connue*/
function creationTableau() {
for ($i = 0; $i < 9; $i++) {
    $c = $i + 1;
    do {
        $note = readline("Veuillez entrer la valeur n°$c :");
    } while (ctype_alpha($note));
    $tableau[$i] = $note;
}
 return $tableau;
}
// --------------------------------
/*Créer des tableaux avec taille inconnue*/
function créationTableauTailleInconnue($val) {
for ($i = 0; $i < $val; $i++) {
    $c = $i + 1;
    do {
        $valeur = readline("Entrez la valeur n°$c :");
        if (ctype_alpha($valeur)) {
            echo "Merci d'entrer un chiffre.\n";
        }
    } while (ctype_alpha($valeur));
    $tableau[$i] = $valeur;
}
return $tableau;
}
// ----------------------------------
/*Fonction pour demander à l'utilisateur combien de valeurs il veut entrer*/
function nombreValeursDansTableau()
{
    do {
        $nbr = readline("Nombre de valeurs que vous voulez vous entrer :");
        if (ctype_alpha($nbr)) {
            echo "Merci d'entrer un chiffre.\n";
        }
    } while (ctype_alpha($nbr));
    return $nbr;
}
// ----------------------------------
/*Fonction pour que l'utilisateur entre des valeurs numérique avec verif*/
function valeursARentrerDansTableau($val) {
    for ($i = 0; $i < $val; $i++) {
        $c = $i + 1;
        do {
            $valeur = readline("Entrez la valeur n°$c :");
            if (ctype_alpha($valeur)) {
                echo "Merci d'entrer un chiffre.\n";
            }
        } while (ctype_alpha($valeur));
        $tableau[$i] = $valeur;
    }
    return $tableau;
    }
// ----------------------------------
/*Création tableau avec taille inconnue qui se termine par zéro*/
function tableauParZero() {
do {
    do {
        $valeur = readline("Entrez la valeur n°$c :");
        if (ctype_alpha($valeur)) {
            echo "Merci d'entrer un chiffre.\n";
        }
        else if ($valeur!=0) {
            $tableau[]=$valeur;
        }
    } while (ctype_alpha($valeur));
} while ($valeor !=0);
}
// ----------------------------------