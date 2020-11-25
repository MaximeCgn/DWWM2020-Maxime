<?php
function ChargerClasse($classe)
{
    if (file_exists("PHP/CONTROLLER/" . $classe . ".Class.php"))
    {
        require "PHP/CONTROLLER/" . $classe . ".Class.php";
    }
    if (file_exists("PHP/MODEL/" . $classe . ".Class.php"))
    {	
        require "PHP/MODEL/" . $classe . ".Class.php";
    }
}
spl_autoload_register("ChargerClasse");

function afficherPage($page)
{
    $chemin=$page[0];
    $nom=$page[1];
    $titre=$page[2];

    include 'PHP/VIEW/head.php';
    include 'PHP/VIEW/header.php';
    include 'PHP/VIEW/nav.php';
    include $chemin.$nom.'.php';
    include 'PHP/VIEW/footer.php';
}

DbConnect::init();

$routes=[
    "default"=>["PHP/VIEW/", "listeProduit","Liste de produits"],
    "liste"=>["PHP/VIEW/", "listeProduit", "Liste de produits"],
    "traitement"=>["PHP/VIEW/","traitement","Traitement d'un produit"],
    "formulaire"=>["PHP/VIEW/","formulaire","Formulaire"],
    "listeCategories"=>["PHP/VIEW/","listeCategories","Liste des catégories"],
    "traitementCateg"=>["PHP/VIEW/","traitementCateg","Traitement des catégories"],
    "formulaireCateg"=>["PHP/VIEW/","formulaireCateg","Formulaire des catégories"]
];

if(isset($_GET["page"]))
{

    $page=$_GET["page"];

    if (isset($routes[$page]))
    {
        AfficherPage($routes[$page]);
    }
    else{
        AfficherPage($routes["default"]);
    }
}
else
{
    AfficherPage($routes["default"]);
}
