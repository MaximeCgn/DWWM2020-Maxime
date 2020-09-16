<?php
/*Boucles pour check les réponses de l'utilisateur*/
do {
    $n = readline("Entrez le nombre de chevaux partants :");
    if (ctype_alpha($n) || ($n <= 0)) {
        echo "Veuillez entrer un nombre valide.\n";
    }
} while (ctype_alpha($n) || ($n <= 0));

do {
    $p = readline("Entrez le nombre de chevaux joués :");
    if (ctype_alpha($p) || ($p > $n)) {
        echo "Veuillez entrer un nombre valide.\n";
    }
} while (ctype_alpha($p) || ($p > $n));

$a = 1;
$b = 1;

for ($i = 1; $i < $p + 1; $i++) {
    $a = $a * ($i + $n - $p);
    $b = $b * $i;
}

echo "Dans l'ordre, une chance sur " . $a . "\n";
echo "Dans le désordre, une chance sur " . $a / $b . "\n";
