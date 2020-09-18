<?php
/*Fonction pour demander à l'utilisateur combien de valeurs il veut entrer*/
function nombreValeurs()
{
    do {
        $nbr = readline("Nombre de valeurs que vous voulez vous entrer :");
        if (ctype_alpha($nbr)) {
            echo "Merci d'entrer un chiffre.\n";
        }
    } while (ctype_alpha($nbr));
    return $nbr;
}
/*Fonction pour que l'utilisateur entre ces valeurs*/

function valeurs($val) {
    for ($i = 0; $i < $val; $i++) {
        $c = $i + 1;
        do {
            $valeur = readline("Entrez la valeur n°$c :");
            if (ctype_alpha($valeur)) {
                echo "Merci d'entrer un chiffre.\n";
            }
        
        $tableau[$i] = $valeur;   
        } while (ctype_alpha($valeur)); 
    }
    return $tableau;
    }
/*Fonction pour affiche le tableau*/
function affichageTableau($tableau)
{
        foreach ($tableau as $element) {
            echo "[",$element,"]","\t";
        }
    return $tableau;
}

$nb = nombreValeurs();
$tableau = valeurs($nb);
affichageTableau($tableau);
/*Calcul de la moyenne*/
$Moy=array_sum($tableau)/$nb;
echo "\nLe moyenne est de $Moy";
echo "\nCes notes sont au dessus de la moyenne : ";
/*Boucle pour afficher les notes au dessus de la moyenne*/
for ($i=0;$i<$nb;$i++) {
    if ($tableau[$i]>$Moy){
        echo $tableau[$i]."\t";
    }
}
