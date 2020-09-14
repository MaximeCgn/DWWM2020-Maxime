<?php

    $age=readline ("Entrez votre âge");
    
        if ($age=6 OR $age=7) {
            echo "Vous entrez dans la catégorie Poussin.";
        }
        if else ($age=8 OR $age=9) {
            echo "Vous entrez dans la catégorie Pupille";
        }
        if else ($age=10 OR $age=11) {
            echo "Vous entrez dans la catégorie Minime.";
        }
        if else ($age>12) {
            echo "Vous entrez dans la catégorie Cadet.";
        }

?>