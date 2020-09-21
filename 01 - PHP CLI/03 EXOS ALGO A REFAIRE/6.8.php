<?php

include "../Fonctions php.php";

$nb=nombreValeursDansTableau();
$tableau=créationTableauTailleInconnue($nb);

for ($i=0;$i<$nb;$i++) {
    if ($tableau[$i]>=0) {
        echo $tableau[$i]."\t";
    }
}

echo "\nCes valeurs sont positives.";


