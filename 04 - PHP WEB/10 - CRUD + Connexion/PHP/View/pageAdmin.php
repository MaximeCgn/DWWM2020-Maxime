<?php

if (isset($_SESSION['utilisateur']) && $_SESSION['utilisateur']->getRoleUtilisateur() == "administrateur")
{
    echo '<h1>AAAAA</h1>';
}
else
{
    header("url=index.php?codePage=accueil");
}