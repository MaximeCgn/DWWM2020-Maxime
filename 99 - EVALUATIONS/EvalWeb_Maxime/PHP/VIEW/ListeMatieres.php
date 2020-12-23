<?php
/**On entre seulement si on est proviseur, sinon on est redirigé **/
if (isset($_SESSION['user'])&& $_SESSION['user']->getRole()==2){
$Matieres=MatieresManager::getList();
echo'
<div class="page colonne">
    <div class="form ">
            <div class="nav colonne">
                <ul>Gestion de
                    <a href="index.php?page=ListeMatieres"><li>Elèves</li></a>
                    <a href="index.php?page=ListeEnseignants"><li>Enseignants</li></a>
                    <a href="index.php?page=ListeNotes"><li>Notes</li></a>
                    <a href="index.php?page=ListeMatieres"><li>Matières</li></a>
                </ul>
            </div>
            <div class="colonne">
            <a href="index.php?page=FormMatieres&mode=ajout"><div class="bouton centrer ajouter">Ajouter</div></a>';
            foreach ($Matieres as $uneMatiere)
            {
                echo '
                <div class="ligne">
                    <div>'.$uneMatiere->getLibelleMatiere().'</div>
                    <div class="petitLogo">
                        <a href="index.php?page=FormMatieres&mode=modifier&id='.$uneMatiere->getIdMatiere().'"><img src="./IMG/modifier.png"></a>
                    </div>
                    
                    <div class="petitLogo">
                    <a href="index.php?page=ActionMatieres&typeAction=supprimer&id='.$uneMatiere->getIdMatiere().'"><img src="./IMG/supprimer.png"></a>
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