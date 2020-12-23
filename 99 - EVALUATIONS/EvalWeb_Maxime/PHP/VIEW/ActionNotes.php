<?php
/**On entre seulement si on est proviseur, sinon on est redirigé **/
if (isset($_SESSION['user'])){
    $typeAction=$_GET["typeAction"];
    if ($typeAction=="ajout"){
        $note=new Suivis(["note"=>$_POST['note'],"coefficient"=>$_POST['coefficient'],"idMatiere"=>$_POST['idMatiere'],"idEleve"=>$_POST['idEleve']]);
        SuivisManager::add($note);
        var_dump($note);
        header("location:index.php?page=ListeNotes");
    } else if ($typeAction=="modifier")
    {
        $note=SuivisManager::findById($_POST['idSuivi']);
        $note->setNote($_POST['note']);
        $note->setCoefficient($_POST['coefficient']);
        $note->setIdMatiere($_POST['idMatiere']);
        $note->setIdEleve($_POST['idEleve']);
        SuivisManager::update($note);
        var_dump($note);
        // header("location:index.php?page=ListeNotes");
    }else if ($typeAction=="supprimer")
    {
        $idRecherche=$_GET['id'];
        $id=SuivisManager::findById($idRecherche);
        SuivisManager::delete($id);
        header("location:index.php?page=ListeNotes");
    }


}
else{
    header("location:index.php?page=FormConnexion");
}