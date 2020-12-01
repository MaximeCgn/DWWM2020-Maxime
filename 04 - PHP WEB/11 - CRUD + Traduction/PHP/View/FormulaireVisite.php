<?php

$typeFormulaire = $_GET["typeFormulaire"];

if ( $typeFormulaire == 'ajouter' )
 {
    echo '<form method="POST" action="index.php>?page=TraitementVisite&typeTraitement=ajouter">
    $visite = new Visite(["dateVisite" => $_POST["dateVisite"], "idVisiteur" => $_POST["idVisiteur"], "idConvention" => $_POST["idConvention"])';
    VisiteManager::add($visite);

    echo '<div class="contenu colonne">
    <div class="colonne">
        <div class="titreColonne centre">
            Date de la visite
        </div>
        <input class="libelle" type="date" name="dateVisite" placeholder="Date de la Visite"/>
    </div>
    <div class="colonne">
        <div class="titreColonne centre">
            Id Visiteur
        </div>
        <input class="libelle" type="text" name="idVisiteur" placeholder="Id Visiteur" disabled/>
    </div>
    <div class="colonne">
        <div class="titreColonne centre">
            Id Convention
        </div>
        <input class="libelle" type="text" name="idConvention" placeholder="Id Convention" disabled/>
    </div>';

    echo '<select class="libelle marginLight" name="idVisiteur" disabled>';

    foreach ( $listeVisiteur as $uneVisite )
    {
        echo '<option value="'.$uneVisite->getIdVisiteur().'"'.$sel.'>'.$uneVisite->getNomVisiteur().' '.$uneVisite->getPrenomVisiteur().'</option>';
    }

    echo '</select>';

    echo '<select class="libelle marginLight" name="idConvention" disabled>';

    foreach ( $listeConvention as $uneConvention )
    {
         echo '<option value="'.$uneConvention->getIdConvention().'"'.$sel.'>'.$uneConvention->getNomConvention().'</option>';      
    }

    echo '</select>';

echo '</div>
    <div class="return marginLight"><a class="centre" href="index.php">Retour</a></div>
    <input type="submit" class="ajouter marginLight centre" name="submit" value="ajouter"/>
</div>
</form>';
} 
elseif ( $typeFormulaire == 'modifier' )
{
    $idRecherche = $_GET['id'];
    $id = VisiteManager::findById($idRecherche);
    $listeVisiteur = VisiteursManager::getList();
    $listeConvention = ConventionsManager::getList();

    echo '<form method="POST" action="index.php>?page=TraitementVisite&typeTraitement=modifier">

    <div class="contenu colonne">
    <div class="colonne">
        <div class="titreColonne centre">
            Date de la visite
        </div>
        <input class="libelle" type="date" name="dateVisite" placeholder="Date de la Visite"/>
    </div>
    <div class="colonne">
        <div class="titreColonne centre">
            Id Visiteur
        </div>
        <input class="libelle" type="text" name="idVisiteur" placeholder="Id Visiteur" disabled/>
    </div>
    <div class="colonne">
        <div class="titreColonne centre">
            Id Convention
        </div>
        <input class="libelle" type="text" name="idConvention" placeholder="Id Convention" disabled/>
    </div>';

    echo '<select class="libelle marginLight" name="idVisiteur" disabled>';

    foreach ( $listeVisiteur as $uneVisite )
    {
        $sel = "";
        if ($uneVisite->getIdVisiteur()== $id->getIdVisiteur())
        {
            $sel = "selected";
        }
        echo '<option value="'.$uneVisite->getIdVisiteur().'"'.$sel.'>'.$uneVisite->getNomVisiteur().' '.$uneVisite->getPrenomVisiteur().'</option>';
    }

    echo '</select>';

    echo '<select class="libelle marginLight" name="idConvention" disabled>';

    foreach ( $listeConvention as $uneConvention )
    {
        $sel = "";
        if ($uneVisite->getIdVisiteur()== $id->getIdVisiteur())
        {
            $sel = "selected";
        }
         echo '<option value="'.$uneConvention->getIdConvention().'"'.$sel.'>'.$uneConvention->getNomConvention().'</option>';      
    }

    echo '</select>';

echo '</div>
    <div class="return marginLight"><a class="centre" href="index.php">Retour</a></div>
    <input type="submit" class="ajouter marginLight centre" name="submit" value="ajouter"/>
</div>
</form>';
}
elseif ( $typeFormulaire == 'details' )
{
    $idRecherche = $_GET['id'];
    $id = VisiteManager::findById($idRecherche);
    $listeVisiteur = VisiteursManager::getList();
    $listeConvention = ConventionsManager::getList();
    echo '<form method="POST" action="index.php>?page=TraitementVisite&typeTraitement=details">

    <div class="contenu colonne">
    <div class="colonne">
        <div class="titreColonne centre">
            Date de la visite
        </div>
        <input class="libelle" type="date" name="dateVisite" placeholder="Date de la Visite" disabled/>
    </div>
    <div class="colonne">
        <div class="titreColonne centre">
            Id Visiteur
        </div>
        <input class="libelle" type="text" name="idVisiteur" placeholder="Id Visiteur" disabled/>
    </div>
    <div class="colonne">
        <div class="titreColonne centre">
            Id Convention
        </div>
        <input class="libelle" type="text" name="idConvention" placeholder="Id Convention" disabled/>
    </div>';

    echo '<select class="libelle marginLight" name="idVisiteur" disabled>';

    foreach ( $listeVisiteur as $uneVisite )
    {
        $sel = "";
        if ($uneVisite->getIdVisiteur()== $id->getIdVisiteur())
        {
            $sel = "selected";
        }
        echo '<option value="'.$uneVisite->getIdVisiteur().'"'.$sel.'>'.$uneVisite->getNomVisiteur().' '.$uneVisite->getPrenomVisiteur().'</option>';
    }

    echo '</select>';

    echo '<select class="libelle marginLight" name="idConvention" disabled>';

    foreach ( $listeConvention as $uneConvention )
    {
        $sel = "";
        if ($uneVisite->getIdVisiteur()== $id->getIdVisiteur())
        {
            $sel = "selected";
        }
         echo '<option value="'.$uneConvention->getIdConvention().'"'.$sel.'>'.$uneConvention->getNomConvention().'</option>';      
    }

    echo '</select>';

echo '</div>
    <div class="return marginLight"><a class="centre" href="index.php">Retour</a></div>
</div>
</form>';
}

echo '</body>

</html>';
