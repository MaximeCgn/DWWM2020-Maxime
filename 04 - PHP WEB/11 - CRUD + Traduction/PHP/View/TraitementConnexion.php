<?php

$p=UtilisateursManager::findByPseudo($_POST['pseudoUtilisateur']);
if ($p !=false)
{
    if (crypte($_POST['motDePasseUtilisateur'])==$p->getMotDePasseUtilisateur())
    {
        echo "Connexion réussie";
        $_SESSION['utilisateur']=$p;
        header("refresh:3;url=index.php?page=default");
    }
    else {
        echo "Le mot de passe est incorrect";
        header("refresh:3;url=index.php?page=default");
    }
}
else {
    echo "Le pseudo n'existe pas";
    header("refresh:3;url=index.php?page=default");
}

