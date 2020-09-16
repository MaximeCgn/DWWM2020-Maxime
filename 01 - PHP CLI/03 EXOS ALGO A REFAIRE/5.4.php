<?php

    do {
    $nbr=readline("Inscrivez un nombre :"); /*Requête auprès de l'utilisateur pour définir $nbr*/
    } while (ctype_alpha($nbr));

    FOR ($x=1; $x<=10; $x++) { /*Boucle pour calculer les tables de multiplication de $nbr*/
        echo $nbr,"x",$x,"=",$nbr*$x,"\n";
    }

?>