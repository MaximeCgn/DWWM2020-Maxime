<?php
/**
 * Affiche le tableau et sépare les lettres par des espaces.
 * @param array $t Tableau contenant une lettre par case.
 */
function afficherTableau($tab)
{
    foreach ($tab as $elt) {
        echo "$elt ";
    }
    return $elt;
}
/*-----------------------------------*/
/**
 * Remplace les les lettres du tableau par des underscore
 * @param array $t tableau contenant un underscore par case.
 */
function coderMot($mot)
{
    $tab=str_split($mot);
    for ($i=0;$i<count($tab);$i++) {
        $tab[$i]="_";
    }
    return $tab;
}
/*-----------------------------------*/
/**Cherche les occurrences d'une lettre dans un tableau, cette méthode retourne les positions dans un tableau
 * 
 */
function testerLettre($lettre,$tab,$depart) {
    array_search($lettre,$tab)
}

