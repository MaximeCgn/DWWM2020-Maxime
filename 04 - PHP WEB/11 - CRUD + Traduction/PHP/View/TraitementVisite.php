<?php

$typeTraitement =$_GET["typeTraitement"];
if ($typeTraitement=="ajouter"){
    $visite= new Visite(["dateVisite"=>$_POST['dateVisite'],"idVisiteur"=>$_POST['idVisiteur'],"idConvention"=>$_POST['idConvention']]);
    VisiteManager::add($visite);
} 
else if ($typeTraitement=="modifier")
{
    $visite=VisiteManager::findById($_POST['id']);
    $visiteur->setDateVisite($_POST['dateVisite']);
    $visiteur->setIdVisiteur($_POST['idVisiteur']);
    $visiteur->setIdConvention($_POST['idConvention']);

    VisiteManager::update($visite);
} 
else if ($typeTraitement=="supprimer")
{
    $idRecherche=$_GET['id'];
    $id=VisiteManager::findById($idRecherche);
    VisiteManager::delete($id);
}