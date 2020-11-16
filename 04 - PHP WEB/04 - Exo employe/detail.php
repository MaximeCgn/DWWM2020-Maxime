<?php

if (file_exists("head.php")) {
    include "head.php";
} else {
    echo "erreur";
}

if (file_exists("listeEmploye.php")) {
    include "listeEmploye.php";
} else {
    echo "erreur";
}

$idRecherche = $_GET['id'];
foreach ($e as $unEmploye) {
    if ($unEmploye->getIdEmploye() == $idRecherche) {
        echo '<div class="titreDetail">' . strtoupper($unEmploye->getNom()) . ' ' . $unEmploye->getPrenom() . '</div>';
        echo '
        <div class="panneau">
        <div class="esp"></div>;
        <div class="titrePanneau">Informations</div>
        <div class="contenuPanneau"><ul>
        <li>Embauché le ' . $unEmploye->getDateEmbauche()->format('Y-m-d') . '</li>
        <li>Poste : ' . $unEmploye->getFonction() . '</li>
        <li>Salaire : ' . $unEmploye->getSalaireAnnuel() . 'K€</li>
        </ul></div>
        <div class="esp"></div>
        </div>

        <div class="panneau">
        <div class="esp"></div>;
        <div class="titrePanneau">Agence</div>
        <div class="contenuPanneau"><ul>
        <li>' . $unEmploye->getAgence()->getNom() . '</li>
        <li>' . $unEmploye->getAgence()->getAdresse() . '</li>
        <li>' . $unEmploye->getAgence()->getCodePostal() . ' ' . $unEmploye->getAgence()->getVille() . '</li>
        <li>' . $unEmploye->getAgence()->getRestauration() . '</li>
        </ul></div>
        <div class="esp"></div>
        </div>

        <div class="panneau">
        <div class="esp"></div>;
        <div class="titrePanneau">Poste</div>
        <div class="contenuPanneau"><ul>
        <li>' . $unEmploye->getFonction() . '</li>
        <li> ' . $unEmploye->getService() . '</li>
        </ul></div>
        <div class="esp"></div>
        </div>
        ';
        if (count($unEmploye->getEnfants()) > 0) {
            echo '<div class="panneau">
        <div class="esp"></div>
        <div class="titrePanneau">Enfants</div>
        <div class="contenuPanneau">
        <ul>
        ';
            for ($i = 0; $i < count($unEmploye->getEnfants()); $i++) {
                echo '<li>' . $unEmploye->getEnfants()[$i]->getNom() . ' ' . $unEmploye->getEnfants()[$i]->getPrenom() . ' ' . $unEmploye->getEnfants()[$i]->getAge()->format('Y-m-d') . '</li>';
            }
            echo '</ul>
        </div>
        <div class="esp"></div>
        </div>';
        }
    }

    
}
echo '<a href="page.php"><div class="titreDetail">Retour</div></a>';
echo '</body>
</html>';
