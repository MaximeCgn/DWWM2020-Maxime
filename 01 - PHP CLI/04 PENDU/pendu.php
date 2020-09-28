<?php
do {
    $diff = readline("Choisissez la difficulté : 1 | 2 | 3 : ");
    if (($diff != 1) && ($diff != 2) && ($diff != 3)) {
        echo "\nMerci d'entrer une difficulté valide.\n";
    }
} while (($diff != 1) && ($diff != 2) && ($diff != 3));

if ($diff == 1) {
    include "fonction pendu facile.php";
} else if ($diff == 2) {
    include "fonction pendu moyen.php";
} else {
    include "fonction pendu difficile.php";
}
lancerPartie();

// $t = array['B', 'O', 'N', 'J', 'O', 'U', 'R'];
// echo "Cette méthode doit donner B O N J O U R et ca donne : " ; afficherTableau($t);

// $test = "bonjour";
// echo "Cette méthode doit donner _ _ _ _ _ _ _ et ca donne : " ; afficherTableau(coderMot($test));

// Echo "Cette méthode doit donner \n 1 \n 4 et ca donne \n" ;
// $t = array( 'B', 'O', 'N', 'J', 'O', 'U', 'R' );
// $positions = testerLettre('O', $t,0);
// foreach ($positions as $pos)
// {
//     echo("position : ".$pos."\n");
// }

// Echo "Cette méthode doit donner B O N K O U R et ca donne";
// $t = array( 'B', 'O', 'N', 'J', 'O', 'U', 'R' );
// afficherTableau( ajouterUneLettre('K', $t, 3));

// $motATrouver="BONJOUR";
// $t = array( 'B', '_', 'N', 'J', '_', 'U', '_' );
// echo "Cette méthode doit donner B O N J O U _ et ca donne ";
// afficherTableau(ajouterLesLettres('O', $t, testerLettre('O', str_split($motATrouver),0)));

// $liste = array('A','B','C') ;
// echo "Cette méthode doit donner :\n Les lettres non présentes sont A,B,C \n et ca donne \n" ;
// afficherMauvaisesLettres($liste);

// $c = DemanderLettre();
// echo $c;

// $t = array( 'B', '_', 'N', 'J', 'O', 'U', 'R' );
// Echo "Cette méthode doit donner -1 et ca donne " . testerGagner(9, $t)."\n";
// Echo "Cette méthode doit donner 0 et ca donne " . testerGagner(3, $t)."\n";
// $t[1] =  'O' ;
// Echo "Cette méthode doit donner 1 et ca donne " . testerGagner(2, $t)."\n";
