<?php
/**On entre seulement si on est proviseur, sinon on est redirigé **/
if (isset($_SESSION['user'])&& $_SESSION['user']->getRole()==2){
$Utilisateur=UtilisateursManager::getList();

echo'
<div class="page colonne">
    <div class="form ">
            <div class="nav colonne">
                <ul>Gestion de
                    <a href="index.php?page=ListeUtilisateur"><li>Elèves</li></a>
                    <a href="index.php?page=ListeUtilisateur"><li>Utilisateur</li></a>
                    <a href="index.php?page=ListeNotes"><li>Notes</li></a>
                    <a href="index.php?page=ListeMatieres"><li>Matières</li></a>
                </ul>
            </div>
            <div class="colonne">
            <a href="index.php?page=FormEnseignants&mode=ajout"><div class="bouton centrer ajouter">Ajouter</div></a>';
            foreach ($Utilisateur as $unUtilisateur)
            {
                $id=MatieresManager::findById($unUtilisateur->getIdMatiere());
                echo '
                <div class="ligne">
                    <div>'.$id->getLibelleMatiere().'</div>
                    <div>'.$unUtilisateur->getPseudo().'</div>
                    <div>'.$unUtilisateur->getNomUtilisateur().'</div>
                    <div>'.$unUtilisateur->getPrenomUtilisateur().'</div>
                    <div class="petitLogo">
                        <a href="index.php?page=FormEnseignants&mode=modifier&id='.$unUtilisateur->getIdUtilisateur().'"><img src="./IMG/modifier.png"></a>
                    </div>
                    
                    <div class="petitLogo">
                    <a href="index.php?page=ActionEnseignants&typeAction=supprimer&id='.$unUtilisateur->getIdUtilisateur().'"><img src="./IMG/supprimer.png"></a>
                    </div>
                </div>';
            }

            echo'</div>
            <div class="espace"></div>
        </div>
    </div>
</div>';
}
else if (isset($_SESSION['user'])&& $_SESSION['user']->getRole()==1){
    header("location:index.php?page=ListeNotes");
}
else{
    header("location:index.php?page=FormConnexion");
}