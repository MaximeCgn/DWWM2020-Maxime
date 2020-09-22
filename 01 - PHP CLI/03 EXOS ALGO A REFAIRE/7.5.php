<?php

require "../Fonctions php.php";

for ($i = 0; $i < 100; $i++) {
    $tableau[] = rand(1, 100);
}

sort($tableau);

$mot=readline("Quel nombre voulez vous chercher ?");
$pos = array_search($mot,$tableau)+1;

echo "Ce chiffre se trouve à la position :". $pos;