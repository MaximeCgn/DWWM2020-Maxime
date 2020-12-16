<?php
/**On entre seulement si on est proviseur, sinon on est redirigé **/
if (isset($_SESSION['user'])&& $_SESSION['user']->getRole()==2){
    $mode=$_GET['mode'];
    if ($mode=="ajout")
    {
        $listeMatiere = MatieresManager::getList();
        echo '
        <form method="POST" action="index.php?page=ActionEnseignants&typeAction=ajout">
        <div class="page colonne">
            <div class="form">
                <div class="espace"></div>
                <div class="contenu colonne">
                    <div class="ligne centrer">
                        <div class="label centrer">Nom :</div>
                        <input type="hidden" name="role" value="1"/>
                        <input class="centrer" type="text" name="nomUtilisateur" required/>
                    </div>
                    <div class="ligne centrer">
                        <div class="label centrer">Prénom :</div>
                        <input class="centrer" type="text" name="prenomUtilisateur" required/>
                    </div>
                    <div class="ligne centrer">
                        <div class="label centrer">Pseudo :</div>
                        <input class="centrer" type="text" name="pseudo" required/>
                    </div>
                    <div class="ligne centrer">
                        <div class="label centrer">Mot de passe :</div>
                        <input class="centrer" type="text" name="motDePasse" required/>
                    </div>
                    <div class="ligne centrer">
                    <div class="label centrer">Matière :</div>
                    <select name="idMatiere">';
                    foreach ($listeMatiere as $uneMatiere){
                        echo '<option value="'.$uneMatiere->getIdMatiere().'">'.$uneMatiere->getLibelleMatiere().'</option>';
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
				    <a href="index.php?page=ListeEnseignants"><div class="bouton centrer annuler">Annuler</div></a>
                </div>
                <div class="espace"></div>
            </div>
            </form>
        </div>';
    } else if ($mode=="modifier")
    {
        $idRecherche=$_GET['id'];
        $id=UtilisateursManager::findById($idRecherche);
        $listeMatiere = MatieresManager::getList();
        echo '
        <form method="POST" action="index.php?page=ActionEnseignants&typeAction=modifier">
        <div class="page colonne">
            <div class="form">
                <div class="espace"></div>
                <div class="contenu colonne">
                    <div class="ligne centrer">
                        <div class="label centrer">Nom :</div>
                        <input type="hidden" name="role" value="1"/>
                        <input type="hidden" name="idUtilisateur" value="'.$id->getIdUtilisateur().'"/>
                        <input class="centrer" type="text" name="nomUtilisateur" value='.$id->getNomUtilisateur().' required/>
                    </div>
                    <div class="ligne centrer">
                        <div class="label centrer">Prénom :</div>
                        <input class="centrer" type="text" name="prenomUtilisateur" value='.$id->getPrenomUtilisateur().' required/>
                    </div>
                    <div class="ligne centrer">
                        <div class="label centrer">Pseudo :</div>
                        <input class="centrer" type="text" name="pseudo" value='.$id->getPseudo().' required/>
                    </div>
                    <div class="ligne centrer">
                        <div class="label centrer">Mot de passe :</div>
                        <input class="centrer" type="text" name="motDePasse" value='.$id->getMotDePasse().' required/>
                    </div>
                    <div class="ligne centrer">
                    <div class="label centrer">Matière :</div>
                    <select name="idMatiere">';
                    foreach ($listeMatiere as $uneMatiere){
                        $sel="";
                        if ($uneMatiere->getIdMatiere()==$id->getIdMatiere())
                        {
                            $sel="selected";
                        }
                        echo '<option value="'.$uneMatiere->getIdMatiere().'"'.$sel.'>'.$uneMatiere->getLibelleMatiere().'</option>';
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
				    <a href="index.php?page=ListeEnseignants"><div class="bouton centrer annuler">Annuler</div></a>
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