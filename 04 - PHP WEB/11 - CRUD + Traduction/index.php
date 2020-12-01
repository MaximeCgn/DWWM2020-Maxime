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

function crypte($mot)
{
    return md5(sha1($mot.md5($mot)).(strlen($mot)*pow(pi(),strlen($mot))).(strlen($mot)*sqrt(strlen($mot)*pi())));
}

Parametre::init();

DbConnect::init();

session_start();

/***Les langes***/
// On récupère la langue
if (isset($_GET['lang']))
{
    $_SESSION['lang'] = $_GET['lang'];
}

//On prend la langue de la session / FR par défaut
$lang = isset($_SESSION['lang']) ? $_SESSION['lang'] : 'FR';

function texte($codeTexte)
{
    global $lang; //on appel la variable globale
    return TexteManager::findByCodes($lang, $codeTexte);
}
/***Fin des langues***/



function afficherPage($page)
{
    $chemin=$page[0];
    $nom=$page[1];
    $titre=$page[2];

    include 'PHP/VIEW/head.php';
    include 'PHP/VIEW/header.php';
    if (isset($_SESSION['utilisateur'])){
        include 'PHP/VIEW/navConnect.php';
    }else {
    include 'PHP/VIEW/nav.php';
    }
    include $chemin.$nom.'.php';
    include 'PHP/VIEW/footer.php';
}


$routes=[
    "default"=>["PHP/VIEW/","listeConventions","Liste des conventions"],
    "listeAnimateurs"=>["PHP/VIEW/","listeAnimateurs","Liste des animateurs"],
    "listeConventions"=>["PHP/VIEW/","listeConventions","Liste des conventions"],
    "listeEmplacements"=>["PHP/VIEW/","listeEmplacements","Liste des emplacements"],
    "listeSalles"=>["PHP/VIEW/","listeSalles","Liste des salles"],
    "listeVisite"=>["PHP/VIEW/","listeVisite","Liste des visites"],
    "listeVisiteurs"=>["PHP/VIEW/","listeVisiteurs","Liste des visiteurs"],
    "formulaireAnimateurs"=>["PHP/VIEW/","formulaireAnimateurs","Formulaire des Animateurs"],
    "formulaireConventions"=>["PHP/VIEW/","formulaireConventions","Formulaire des Conventions"],
    "formulaireEmplacements"=>["PHP/VIEW/","formulaireEmplacements","Formulaire des Emplacements"],
    "formulaireSalles"=>["PHP/VIEW/","formulaireSalles","Formulaire des Salles"],
    "formulaireVisite"=>["PHP/VIEW/","formulaireVisite","Formulaire des Visites"],
    "formulaireVisiteurs"=>["PHP/VIEW/","formulaireVisiteurs","Formulaire des Visiteurs"],
    "traitementAnimateurs"=>["PHP/VIEW/","traitementAnimateurs","Traitement des Animateurs"],
    "traitementConventions"=>["PHP/VIEW/","traitementConventions","Traitement des Conventions"],
    "traitementEmplacements"=>["PHP/VIEW/","traitementEmplacements","Traitement des Emplacements"],
    "traitementSalles"=>["PHP/VIEW/","traitementSalles","Traitement des Salles"],
    "traitementVisite"=>["PHP/VIEW/","traitementVisite","Traitement des Visites"],
    "traitementVisiteurs"=>["PHP/VIEW/","traitementVisiteurs","Traitement des Visiteurs"],
    "formulaireUtilisateurs"=>["PHP/VIEW/","formulaireUtilisateurs","Formulaire des Utilisateurs"],
    "traitementUtilisateurs"=>["PHP/VIEW/", "traitementUtilisateurs","Traitement des utilisateurs"],
    "traitementConnexion"=>["PHP/VIEW/", "traitementConnexion","Traitement des connexions"],
    "formulaireConnexions"=>["PHP/VIEW/","formulaireConnexions","Formulaire des connexions"],
    "traitementDeconnexion"=>["PHP/VIEW/","traitementDeconnexion","Traitement des deconnexions"],
    "pageAdmin"=>["PHP/VIEW/","pageAdmin","Page administrateur"]
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
