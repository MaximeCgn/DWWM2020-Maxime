<?php
/**On entre seulement si on est proviseur, sinon on est redirigé **/
if (isset($_SESSION['user'])&& $_SESSION['user']->getRole()==1){
    $mode=$_GET['mode'];
    if ($mode=="ajout")
    {
        $listeMatiere = MatieresManager::getList();
        $listeEleves=ElevesManager::getList();
        echo '
        <form method="POST" action="index.php?page=ActionNotes&typeAction=ajout">
        <div class="page colonne">
            <div class="form">
                <div class="espace"></div>
                <div class="contenu colonne">
                    <div class="ligne centrer">
                        <div class="label centrer">Note :</div>
                        <input type="hidden" name="idMatiere" value="'.$_SESSION['user']->getIdMatiere().'" />
                        <input type="hidden" name="coefficient" value="1"/>
                        <input class="centrer" type="text" name="note" required/>
                    </div>
                    <div class="ligne centrer">
                        <div class="label centrer">Elève :</div>
                        <select name="idEleve">';
                        foreach ($listeEleves as $unEleve){
                            echo '<option value="'.$unEleve->getIdEleve().'">'.$unEleve->getNomEleve().' '.$unEleve->getPrenomEleve().'</option>';
                        }
                        echo'</select>
                    </div>
                </div>
                <div class="espace"></div>
            </div>
            <div>
                <div class="espace"></div>
                <div class="menuBouton">
                    <input type="submit" class="bouton centrer " value="Ajouter"/>
				    <a href="index.php?page=ListeNotes"><div class="bouton centrer annuler">Annuler</div></a>
                </div>
                <div class="espace"></div>
            </div>
            </form>
        </div>';
    } else if ($mode=="modifier")
    {
        $idRecherche=$_GET['id'];
        $id=SuivisManager::findById($idRecherche);
        $listeMatiere = MatieresManager::getList();
        $listeEleves=ElevesManager::getList();
        echo '
        <form method="POST" action="index.php?page=ActionNotes&typeAction=modifier">
        <div class="page colonne">
            <div class="form">
                <div class="espace"></div>
                <div class="contenu colonne">
                    <div class="ligne centrer">
                        <div class="label centrer">Note :</div>
                        <input type="hidden" name="idSuivi" value="'.$id->getIdSuivi().'"/>
                        <input type="hidden" name="idMatiere" value="'.$_SESSION['user']->getIdMatiere().'" />
                        <input type="hidden" name="coefficient" value="1"/>
                        <input class="centrer" type="text" name="note" value='.$id->getNote().' required/>
                    </div>
                    <div class="ligne centrer">
                        <div class="label centrer">Elève :</div>
                        <select name="idEleve">';
                        foreach ($listeEleves as $unEleve){
                            $sel="";
                        if ($unEleve->getIdEleve()==$id->getIdEleve())
                        {
                            $sel="selected";
                        }
                            echo '<option value="'.$unEleve->getIdEleve().'">'.$unEleve->getNomEleve().' '.$unEleve->getPrenomEleve().'</option>';
                        }
                        echo'</select>
                    </div>
                </div>
                <div class="espace"></div>
            </div>
            <div>
                <div class="espace"></div>
                <div class="menuBouton">
                    <input type="submit" class="bouton centrer " value="Modifier"/>
				    <a href="index.php?page=ListeNotes"><div class="bouton centrer annuler">Annuler</div></a>
                </div>
                <div class="espace"></div>
            </div>
            </form>
        </div>';
    }



}else if (isset($_SESSION['user'])&& $_SESSION['user']->getRole()==2){
}else{
    header("location:index.php?page=FormConnexion");
}