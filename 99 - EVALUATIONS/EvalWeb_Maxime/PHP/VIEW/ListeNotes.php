<?php
/**On entre seulement si on est proviseur, sinon on est redirigé **/
if (isset($_SESSION['user'])&& $_SESSION['user']->getRole()==1){
$note=SuivisManager::findByMatiere($_SESSION['user']->getIdMatiere());
$idRecherche=$note->getIdEleve();
$eleves=ElevesManager::findById($idRecherche);
var_dump($eleves);
echo '
    <div class="page colonne">
        <div class="form">
            <div class="espace"></div>
            <div class="colonne">
                <a href="index.php?page=FormNotes&mode=ajout"><div class="bouton centrer ajouter">Ajouter</div></a>';
                
                // foreach ($eleves as $unEleve)
                // {
                //Ne fonctionne pas//
                    echo'
                        <div class="ligne">
                            <div>'.$eleves->getNomEleve().'</div>
                            <div>'.$eleves->getPrenomEleve().'</div>
                            <div>'.$note->getNote().'</div>
                            <div class="petitLogo">
                        <a href="index.php?page=FormNotes&mode=modifier&id='.$eleves->getIdEleve().'"><img src="./IMG/modifier.png"></a>
                    </div>
                    
                    <div class="petitLogo">
                    <a href="index.php?page=ActionsNotes&typeAction=supprimer&id='.$eleves->getIdEleve().'"><img src="./IMG/supprimer.png"></a>
                    </div>
                        </div>
                    ';
                // }
            echo'
            </div>
            <div class="espace"></div>
        </div>
    </div>
';
}
else if (isset($_SESSION['user'])&& $_SESSION['user']->getRole()==2){
    $listeMatiere=MatieresManager::getList();
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
                <select name="idMatiere">';
                foreach ($listeMatiere as $uneMatiere){
                    echo '<option value="'.$uneMatiere->getIdMatiere().'">'.$uneMatiere->getLibelleMatiere().'</option>';
                }
                echo'</select>
                <div class="espace"></div>
               </div>
               <div class="espace"></div>
            </div>
        </div>
    </div>
';
}else{
    header("location:index.php?page=FormConnexion");
}