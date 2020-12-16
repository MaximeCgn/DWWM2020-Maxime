<?php

require("./Outils.php");

Parametres::init();

DbConnect::init();

session_start();


$routes=[
	"default"=>["PHP/VIEW/","accueil","Accueil"],
	"TestelevesManager"=>["PHP/MODEL/TESTMANAGER/","TestelevesManager","Test de eleves"],
	"TestmatieresManager"=>["PHP/MODEL/TESTMANAGER/","TestmatieresManager","Test de matieres"],
	"TestsuivisManager"=>["PHP/MODEL/TESTMANAGER/","TestsuivisManager","Test de suivis"],
	"TestutilisateursManager"=>["PHP/MODEL/TESTMANAGER/","TestutilisateursManager","Test de utilisateurs"],

	"FormConnexion"=>["PHP/VIEW/","FormConnexion","Connexion"],
	"ActionConnexion"=>["PHP/VIEW/","ActionConnexion","Action Connexion"],

	"ListeChoix"=>["PHP/VIEW/","ListeChoix","Menu proviseur"],

	"ListeEleves"=>["PHP/VIEW/","ListeEleves","Gestion des élèves"],
	"FormEleves"=>["PHP/VIEW/","FormEleves","Gestion des élèves"],
	"ActionEleves"=>["PHP/VIEW/","ActionEleves","Gestion des élèves"],

	"ListeEnseignants"=>["PHP/VIEW/","ListeEnseignants","Gestion des élèves"],
	"FormEnseignants"=>["PHP/VIEW/","FormEnseignants","Gestion des élèves"],
	"ActionEnseignants"=>["PHP/VIEW/","ActionEnseignants","Gestion des élèves"],

	"ListeNotes"=>["PHP/VIEW/","ListeNotes","Gestion des élèves"],
	"FormNotes"=>["PHP/VIEW/","FormNotes","Gestion des élèves"],
	"ActionNotes"=>["PHP/VIEW/","ActionNotes","Gestion des élèves"],

	"ListeMatieres"=>["PHP/VIEW/","ListeMatieres","Gestion des élèves"],
	"FormMatieres"=>["PHP/VIEW/","FormMatieres","Gestion des élèves"],
	"ActionMatieres"=>["PHP/VIEW/","ActionMatieres","Gestion des élèves"],
];

if(isset($_GET["page"]))
{

	$page=$_GET["page"];

	if(isset($routes[$page]))
	{
		AfficherPage($routes[$page]);
	}
	else
	{
		AfficherPage($routes["default"]);
	}
}
else
{
	AfficherPage($routes["default"]);
}