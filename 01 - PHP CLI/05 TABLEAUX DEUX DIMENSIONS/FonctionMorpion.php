<?php
/**
 * Méthode pour tester si un joueur a terminé la partie
 *
 * @param array $plateau Plateau de jeu dans lequel se trouve les symboles des joueurs
 * @param int $alignementPourGagner Nombre d'alignement de symboles nécessaire pour gagner
 * @param array $positions Positions dans lesquelles se trouve le dernier symbole
 * @param array $symbole Symbole choisit par le joueur pour remplir une case vide
 * @return int
 */
function testerGagne($plateau, $alignementPourGagner, $positions, $symbole)
{
    //X = Lignes Y = Colonnes
    $sommeLigne = compteAlignes($plateau, $positions, 1, 0, $symbole) + compteAlignes($plateau, $positions, -1, 0, $symbole) + 1; //Demande à compteAlignes de compter l'alignement sur la ligne, j'ajoute +1 puisqu'il ne compte pas le dernier symbole ajouté
    $sommeColonne = compteAlignes($plateau, $positions, 0, 1, $symbole) + compteAlignes($plateau, $positions, 0, -1, $symbole) + 1; //Demande à compteAlignes de compter l'alignement sur la colonne, j'ajoute +1 puisqu'il ne compte pas le dernier symbole ajouté
    $sommeDiagonaleMontante = compteAlignes($plateau, $positions, -1, 1, $symbole) + compteAlignes($plateau, $positions, 1, -1, $symbole) + 1; //Demande à compteAlignes de compter l'alignement sur la diagonale montante, j'ajoute +1 puisqu'il ne compte pas le dernier symbole ajouté
    $sommeDiagonaleDescendante = compteAlignes($plateau, $positions, -1, -1, $symbole) + compteAlignes($plateau, $positions, 1, 1, $symbole) + 1; //Demande à compteAlignes de compter l'alignement sur la diagonale descendante, j'ajoute +1 puisqu'il ne compte pas le dernier symbole ajouté
    if (($sommeLigne >= $alignementPourGagner) || ($sommeColonne >= $alignementPourGagner) || ($sommeDiagonaleMontante >= $alignementPourGagner) || ($sommeDiagonaleDescendante >= $alignementPourGagner)) {
        return 1; //Si l'une des variables est égale ou supérieure au nombre de symbole qu'il faut pour gagner, la partie s'arrête, et le joueur gagne
    } else if (plateauPlein($plateau) == true) {
        return -1; //Sinon si le plateau est plein, la partie s'arrête, il n'y a aucun vainqueur
    } else {
        return 0; //Sinon, la partie continue
    }
}
