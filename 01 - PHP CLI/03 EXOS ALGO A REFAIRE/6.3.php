<?php

for ($i = 0; $i < 9; $i++) {
    $c = $i + 1;
    do {
        $note = readline("Veuillez entrer la valeur n°$c :");
    } while (ctype_alpha($note));
    $tableau[$i] = $note;
}

foreach ($tableau as $element) {
    echo $element."\t";
}

