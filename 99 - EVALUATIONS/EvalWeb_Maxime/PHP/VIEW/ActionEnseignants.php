<?php
/**On entre seulement si on est proviseur, sinon on est redirigé **/
if (isset($_SESSION['user'])&& $_SESSION['user']->getRole()==2){
    $typeAction=$_GET["typeAction"];
    if ($typeAction=="ajout"){
        $utilisateur=new Utilisateurs(["nomUtilisateur"=>$_POST['nomUtilisateur'],"prenomUtilisateur"=>$_POST['prenomUtilisateur'],"motDePasse"=>$_POST['motDePasse'],"pseudo"=>$_POST['pseudo'],"role"=>$_POST['role'],"idMatiere"=>$_POST['idMatiere']]);
        var_dump($utilisateur);
        UtilisateursManager::add($utilisateur);
        header("location:index.php?page=ListeEnseignants");
    } else if ($typeAction=="modifier")
    {
        $utilisateur=UtilisateursManager::findById($_POST['idUtilisateur']);
        $utilisateur->setPseudo($_POST['pseudo']);
        $utilisateur->setRole($_POST['role']);
        $utilisateur->setIdMatiere($_POST['idMatiere']);
        $utilisateur->setNomUtilisateur($_POST['nomUtilisateur']);
        $utilisateur->setPrenomUtilisateur($_POST['prenomUtilisateur']);
        $utilisateur->setMotDePasse($_POST['motDePasse']);
        UtilisateursManager::update($utilisateur);
        var_dump($utilisateur);
        header("location:index.php?page=ListeEnseignants");
    }else if ($typeAction=="supprimer")
    {
        $idRecherche=$_GET['id'];
        $id=UtilisateursManager::findById($idRecherche);
        UtilisateursManager::delete($id);
        header("location:index.php?page=ListeEnseignants");
    }


}
else if (isset($_SESSION['user'])&& $_SESSION['user']->getRole()==1){
    header("location:index.php?page=ListeNotes");
}
else{
    header("location:index.php?page=FormConnexion");
}