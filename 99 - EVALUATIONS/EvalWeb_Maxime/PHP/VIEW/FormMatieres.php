<?php
/**On entre seulement si on est proviseur, sinon on est redirigé **/
if (isset($_SESSION['user'])&& $_SESSION['user']->getRole()==2){
    $mode=$_GET['mode'];
    if ($mode=="ajout")
    {
        echo '
        <form method="POST" action="index.php?page=ActionMatieres&typeAction=ajout">
        <div class="page colonne">
            <div class="form">
                <div class="espace"></div>
                <div class="contenu colonne">
                    <div class="ligne centrer">
                        <div class="label centrer">Libellé Matière :</div>
                        <input class="centrer" type="text" name="libelleMatiere" required/>
                    </div>
                </div>
                <div class="espace"></div>
            </div>
            <div>
                <div class="espace"></div>
                <div class="menuBouton">
                    <input type="submit" class="bouton centrer " value="Ajouter"/>
				    <a href="index.php?page=ListeMatieres"><div class="bouton centrer annuler">Annuler</div></a>
                </div>
                <div class="espace"></div>
            </div>
            </form>
        </div>';
    } else if ($mode=="modifier")
    {
        $idRecherche=$_GET['id'];
        $id=MatieresManager::findById($idRecherche);
        echo'
        <form method="POST" action="index.php?page=ActionMatieres&typeAction=modifier">
        <div class="page colonne">
            <div class="form">
                <div class="espace"></div>
                <div class="contenu colonne">
                    <div class="ligne centrer">
                        <div class="label centrer">Libellé Matière :</div>
                        <input type="hidden" name="idMatiere" value="'.$id->getIdMatiere().'"/>
                        <input class="centrer" type="text" name="libelleMatiere" value='.$id->getLibelleMatiere().' required/>
                    </div>
                </div>
                <div class="espace"></div>
            </div>
            <div>
                <div class="espace"></div>
                <div class="menuBouton">
                    <input type="submit" class="bouton centrer " value="Modifier"/>
				    <a href="index.php?page=ListeMatieres"><div class="bouton centrer annuler">Annuler</div></a>
                </div>
                <div class="espace"></div>
            </div>
            </form>
        </div>

        ';
    }



}
else if (isset($_SESSION['user'])&& $_SESSION['user']->getRole()==1){
    header("location:index.php?page=ListeNotes");
}
else{
    header("location:index.php?page=FormConnexion");
}