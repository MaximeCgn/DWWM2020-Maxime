<?php
/**On entre seulement si on est proviseur, sinon on est redirigé **/
if (isset($_SESSION['user'])&& $_SESSION['user']->getRole()==2){
    $typeAction=$_GET["typeAction"];
    if ($typeAction=="ajout"){
        $eleve=new Eleves(["nomEleve"=>$_POST['nomEleve'],"prenomEleve"=>$_POST['prenomEleve'],"classe"=>$_POST['classe']]);
        ElevesManager::add($eleve);
        header("location:index.php?page=ListeEleves");
    } else if ($typeAction=="modifier")
    {
        $eleve=ElevesManager::findById($_POST['idEleve']);
        $eleve->setNomEleve($_POST['nomEleve']);
        $eleve->setPrenomEleve($_POST['prenomEleve']);
        $eleve->setClasse($_POST['classe']);
        ElevesManager::update($eleve);
        header("location:index.php?page=ListeEleves");
    }else if ($typeAction=="supprimer")
    {
        $idRecherche=$_GET['id'];
        $id=ElevesManager::findById($idRecherche);
        ElevesManager::delete($id);
        header("location:index.php?page=ListeEleves");
    }


}
else if (isset($_SESSION['user'])&& $_SESSION['user']->getRole()==1){
    header("location:index.php?page=ListeNotes");
}
else{
    header("location:index.php?page=FormConnexion");
}