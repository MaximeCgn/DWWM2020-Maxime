<?php

if (file_exists("head.php")) {
    include("head.php");
} else {
    echo "erreur";
}

if (file_exists("listeEmploye.php")) {
    include("listeEmploye.php");
} else {
    echo "erreur";
}

echo '<div >
<div class="titre">Agence</div>
<div class="titre">Service</div>
<div class="titre">Nom</div>
<div class="titre">Prénom</div>
</div>';


    
    for ($i=0;$i<count($e);$i++)
    {
        echo '<div class="employe ">
        <a href="detail.php?id='.$e[$i]->getIdEmploye().'">
        <div class="cache">'.$e[$i]->getIdEmploye().'</div>
        <div class="agence">'.$e[$i]->getAgence()->getNom().'</div>
        <div class="service">'.$e[$i]->getService().'</div>
        <div class="nom">'.$e[$i]->getNom().'</div>
        <div class="prenom">'.$e[$i]->getPrenom().'</div>
        </a>
        </div>';
    }


echo'</div>
</body>
</html>';