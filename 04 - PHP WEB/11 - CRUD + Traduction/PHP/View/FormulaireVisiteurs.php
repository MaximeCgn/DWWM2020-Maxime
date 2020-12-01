<?php

$typeFormulaire=$_GET["typeFormulaire"];
if ($typeFormulaire=="ajouter")
{
    echo '<form method="POST" action="index.php?page=traitementVisiteurs&typeTraitement=ajouter">
    <div class="contenu colonne">
        <div class="colonne marginLight">
            <div class="titreColonne centre">
                '.texte("nomVisiteur").'
                </div>
                <div>
                <div class="espace"></div>
                <input class="libelle " type="text" name="nomVisiteur" placeholder="'.texte("nomVisiteur").'"/>
                <div class="espace"></div>
                </div>
        </div>
        <div class="colonne marginLight">
            <div class="titreColonne centre">
            '.texte("prenomVisiteur").'
                </div>
                <div>
                <div class="espace"></div>
                <input class="libelle" type="text" name="prenomVisiteur" placeholder="'.texte("prenomVisiteur").'"/>
                <div class="espace"></div>
                </div>
            </div>
        <div class="colonne marginLight">
            <div class="titreColonne centre">
            '.texte("adresseVisiteur").'
                </div>
                <div>
                <div class="espace"></div>
                <input class="libelle" type="text" name="adresseVisiteur" placeholder="'.texte("adresseVisiteur").'"/>
                <div class="espace"></div>
            </div>
        </div>
        <div class="colonne marginLight">
            <div class="titreColonne centre">
            '.texte("codePostalVisiteur").'
                </div>
                <div>
                <div class="espace"></div>
                <input class="libelle" type="text" name="codePostalVisiteur" placeholder="'.texte("codePostalVisiteur").'"/>
                <div class="espace"></div>
                </div>
            </div>
        <div class="colonne marginLight">
            <div class="titreColonne centre">
            '.texte("villeVisiteur").'
                </div>
                <div>
                <div class="espace"></div>
                <input class="libelle" type="text" name="villeVisiteur" placeholder="'.texte("villeVisiteur").'"/>
                <div class="espace"></div>
                </div>
            </div>
        <div>
            <div class="espace"></div>
            <div class="return marginLight"><a class="centre" href="index.php?page=listeVisiteurs">'.texte("retour").'</a></div>
            <div class="espace"></div>
        </div>
        <div>
        <div class="espace"></div>
            <input type="submit" class="ajouter marginLight centre" name="submit" value="'.texte("ajouter").'"/>
            <div class="espace"></div>
            </div>
        </div>
</form>';
}
else if ($typeFormulaire=="modifier")
{
    $idRecherche=$_GET['id'];
    $id=VisiteursManager::findById($idRecherche);
    echo '
    <form method="POST" action="index.php?page=traitementVisiteurs&typeTraitement=modifier">
        <div class="contenu colonne">
            <div class="colonne">
                <div class="titreColonne colonne centre marginLight">
                '.texte("nomVisiteur").'
                    <input type="hidden" name="id" value="'.$id->getIdVisiteur().'"/>
                    <input type="text" class="libelle" name="nomVisiteur" value="'.$id->getNomVisiteur().'"/>
                    
                </div>
            </div>
            <div class="colonne">
                <div class="titreColonne colonne centre marginLight">
                '.texte("prenomVisiteur").'
                    <input type="text" class="libelle" name="prenomVisiteur" value="'.$id->getPrenomVisiteur().'"/>
                </div>
            </div>
            <div class="colonne">
                <div class="titreColonne colonne centre marginLight">
                '.texte("adresseVisiteur").'
                    <input type="text" class="libelle" name="adresseVisiteur" value="'.$id->getAdresseVisiteur().'"/>
                </div>
            </div>
            <div class="colonne">
                <div class="titreColonne colonne centre marginLight">
                '.texte("codePostalVisiteur").'
                    <input type="text" class="libelle" name="codePostalVisiteur" value="'.$id->getCodePostalVisiteur().'"/>
                </div>
            </div>
            <div class="colonne">
                <div class="titreColonne colonne centre marginLight">
                '.texte("villeVisiteur").'
                    <input type="text" class="libelle" name="villeVisiteur" value="'.$id->getVilleVisiteur().'"/>
                </div>
            </div>
            <div>
            <div class="espace"></div>
            <div class="return marginLight"><a class="centre" href="index.php?page=listeVisiteurs">'.texte("retour").'</a></div>
            <div class="espace"></div>
        </div>
        <div>
        <div class="espace"></div>
            <input type="submit" class="ajouter marginLight centre" name="submit" value="'.texte("modifier").'"/>
            <div class="espace"></div>
            </div>
        </div>
        </div>';
} else if ($typeFormulaire=="details")
{
    $idRecherche=$_GET['id'];
    $id=VisiteursManager::findById($idRecherche);
    echo' <div class="contenu colonne">
            <div class="colonne">
                <div class="titreColonne colonne centre marginLight">
                '.texte("nomVisiteur").'
                    <input type="text" class="libelle" name="nomVisiteur" value="'.$id->getNomVisiteur().'"disabled/>
                </div>
            </div>
            <div class="colonne">
                <div class="titreColonne colonne centre marginLight">
                '.texte("prenomVisiteur").'
                    <input type="text" class="libelle" name="prenomVisiteur" value="'.$id->getPrenomVisiteur().'"disabled/>
                </div>
            </div>
            <div class="colonne">
                <div class="titreColonne colonne centre marginLight">
                '.texte("adresseVisiteur").'
                    <input type="text" class="libelle" name="adresseVisiteur" value="'.$id->getAdresseVisiteur().'"disabled/>
                </div>
            </div>
            <div class="colonne">
                <div class="titreColonne colonne centre marginLight">
                '.texte("codePostalVisiteur").'
                    <input type="text" class="libelle" name="codePostalVisiteur" value="'.$id->getCodePostalVisiteur().'"disabled/>
                </div>
            </div>
            <div class="colonne">
                <div class="titreColonne colonne centre marginLight">
                '.texte("villeVisiteur").'
                    <input type="text" class="libelle" name="villeVisiteur" value="'.$id->getVilleVisiteur().'" disabled/>
                </div>
            </div>
            <div>
            <div class="espace"></div>
            <div class="return marginLight"><a class="centre" href="index.php?page=listeVisiteurs">'.texte("retour").'</a></div>
            <div class="espace"></div>
        </div>';
}