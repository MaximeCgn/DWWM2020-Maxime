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
                        <input type="hidden" name="role" value=1/>
                        <input class="centrer" type="text" name="nomEleve" required/>
                    </div>
                    <div class="ligne centrer">
                        <div class="label centrer">Prénom :</div>
                        <input class="centrer" type="text" name="prenomEleve" required/>
                    </div>
                    <div class="ligne centrer">
                        <div class="label centrer">Pseudo :</div>
                        <input class="centrer" type="text" name="pseudo" required/>
                    </div>
                    <div class="ligne centrer">
                        <div class="label centrer">Mot de passe :</div>
                        <input class="centrer" type="text" name="motDePasse" required/>
                    </div>
                    <select name="idMatiere">';
                    foreach ($listeMatiere as $uneMatiere){
                        echo '<option value="'.$uneMatiere->getIdMatiere().'">'.$uneMatie
                    }
                    echo'</select>
                </div>
                <div class="espace"></div>
            </div>
            <div>
                <div class="espace"></div>
                <div class="menuBouton">
                    <input type="submit" class="bouton centrer " value="Ajouter"/>
				    <a href="index.php?page=ListeEleves"><div class="bouton centrer annuler">Annuler</div></a>
                </div>
                <div class="espace"></div>
            </div>
            </form>
        </div>';
    } else if ($mode=="modifier")
    {
        $idRecherche=$_GET['id'];
        $id=ElevesManager::findById($idRecherche);
        echo'
        <form method="POST" action="index.php?page=ActionEnseignants&typeAction=modifier">
        <div class="page colonne">
            <div class="form">
                <div class="espace"></div>
                <div class="contenu colonne">
                    <div class="ligne centrer">
                        <div class="label centrer">Nom :</div>
                        <input type="hidden" name="idEleve" value="'.$id->getIdEleve().'"/>
                        <input class="centrer" type="text" name="nomEleve" value='.$id->getNomEleve().' required/>
                    </div>
                    <div class="ligne centrer">
                        <div class="label centrer">Prénom :</div>
                        <input class="centrer" type="text" name="prenomEleve" value='.$id->getPrenomEleve().' required/>
                    </div>
                    <div class="ligne centrer">
                        <div class="label centrer">Classe :</div>
                        <input class="centrer" type="text" name="classe" value='.$id->getClasse().' required/>
                    </div>
                </div>
                <div class="espace"></div>
            </div>
            <div>
                <div class="espace"></div>
                <div class="menuBouton">
                    <input type="submit" class="bouton centrer " value="Modifier"/>
				    <a href="index.php?page=ListeEleves"><div class="bouton centrer annuler">Annuler</div></a>
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
    header("location:index.php?page=FormConnex