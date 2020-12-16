<?php
/**On entre seulement si on est proviseur, sinon on est redirigé **/
if (isset($_SESSION['user'])&& $_SESSION['user']->getRole()==2){
    $typeAction=$_GET["typeAction"];
    if ($typeAction=="ajout"){
        $matiere=new Matieres(["libelleMatiere"=>$_POST['libelleMatiere']]);
        MatieresManager::add($matiere);
        header("location:index.php?page=ListeMatieres");
    } else if ($typeAction=="modifier")
    {
        $matiere=MatieresManager::findById($_POST['idMatiere']);
        $matiere->setLibelleMatiere($_POST['libelleMatiere']);
        MatieresManager::update($matiere);
        header("location:index.php?page=ListeMatieres");
    }else if ($typeAction=="supprimer")
    {
        $idRecherche=$_GET['id'];
        $id=MatieresManager::findById($idRecherche);
        MatieresManager::delete($id);
        header("location:index.php?page=ListeMatieres");
    }


}
else if (isset($_SESSION['user'])&& $_SESSION['user']->getRole()==1){
    header("location:index.php?page=ListeNotes");
}
else{
    header("location:index.php?page=FormConnexion");
}