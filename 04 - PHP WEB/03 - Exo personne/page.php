<?php

    if (file_exists("head.php")) {
        include("head.php");
    } else {
        echo "erreur";
    }

    if (file_exists("listePersonne.php")) {
        include("listePersonne.php");
    } else {
        echo "erreur";
    }

    echo '<div class="line"';
    $compteur = 0 ;
    for ($i=0;$i<count($p);$i++)
    {
        echo '<div class="personne colonne">
        <div class="nom">'.$p[$i]->getNom().' '.$p[$i]->getPrenom().'</div>
        <div class="age">'.$p[$i]->getAge().'</div>
        </div>';
        $compteur++;
        if($compteur==3)
        {
            echo '</div>';
            echo'<div class="line">';
            $compteur=0;
        }
    }



    echo'</div>
    </body>
    </html>';