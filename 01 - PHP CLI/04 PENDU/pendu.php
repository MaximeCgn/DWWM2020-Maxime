<?php

require "fonction pendu.php";

// $t = array['B', 'O', 'N', 'J', 'O', 'U', 'R'];
// echo "Cette méthode doit donner B O N J O U R et ca donne : " ; afficherTableau($t);

// $test = "bonjour";
// echo "Cette méthode doit donner _ _ _ _ _ _ _ et ca donne : " ; afficherTableau(coderMot($test));

Echo "Cette méthode doit donner \n 1 \n 4 et ca donne \n" ;
$t = array( 'B', 'O', 'N', 'J', 'O', 'U', 'R' );
$positions = testerLettre('O', $t,0);
foreach ($positions as $pos)
{
    echo("position : ".$pos."\n");
}