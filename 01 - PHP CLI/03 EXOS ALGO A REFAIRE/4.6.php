<?php

    $votes1=readline("Combien de votes a eu le premier candidat ?");
    $votes2=readline("Combien de votes a eu le second candidat ?");
    $votes3=readline("Combien de votes a eu le troisième candidat ?");
    $votes4=readline("Combien de votes a eu le quatrième candidat ?");

    $total=$votes1+$votes2+$votes3+$votes4;

    $prc1=$votes1*100/$total;
    $prc2=$votes2*100/$total;
    $prc3=$votes3*100/$total;
    $prc4=$votes4*100/$total;

    if ($prc1>=50) {
        echo "Le premier candidat est élu.";
    }
    else if ($prc2>=50 OR $prc3>=50 OR $prc4=50) {
        echo "Le premier candidat est battu.";
    }
    else if ($prc1>$prc2 AND $prc1>$prc3 AND $prc1>$prc4) {
        echo "Le premier candidat est favorable au second tour.";
    }
    else {
        echo "Le premier candidat est défavorable au second tour.";
    }

    ?>