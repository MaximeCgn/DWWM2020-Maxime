<?php

$typeTraitement =$_GET["typeTraitement"];
if ($typeTraitement=="ajouter"){

    $p=UtilisateursManager::findByPseudo($_POST['pseudoUtilisateur']);
    if ($p == false)
    {
        $visiteur= new Utilisateurs(["nomUtilisateur"=>$_POST['nomUtilisateur'],"prenomUtilisateur"=>$_POST['prenomUtilisateur'],"motDePasseUtilisateur"=>crypte($_POST['motDePasseUtilisateur']),"adresseMailUtilisateur"=>$_POST['adresseMailUtilisateur'],"pseudoUtilisateur"=>$_POST['pseudoUtilisateur'],"roleUtilisateur"=>$_POST['roleUtilisateur']]);
        var_dump($visiteur);
        UtilisateursManager::add($visiteur);
        header("refresh:3;url=index.php?page=default");
    }
    else {
        echo "Le pseudo existe déjà";
        header("refresh:3;url=index.php?page=default");
    }

}
