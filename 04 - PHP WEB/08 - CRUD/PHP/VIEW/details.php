<?php
include ('head.php');
include ('header.php');
$idRecherche = $_GET['id'];
$id=ProduitsManager::findById($idRecherche);
    echo '<div></div>';
    echo'<div class="titre liste"><h1>Détails du produit</h1></div>';
    echo '<div></div>';
    echo'<div class="contenu colonne">';
    echo'<div></div>';
    echo '<div class="libelle listeDetail">Libellé : '.$id->getLibelleProduit().'</div>';
    echo '<div class="libelle listeDetail">Prix : '.$id->getPrix().'€</div>';
    echo '<div class="libelle listeDetail">Date de Peremption : '.$id->getDateDePeremption().'</div>';
    echo'<div></div>';
    echo '<a href="../../index.php"><div class="return">RETOUR</div></a>';
    echo'</div>';

include ('footer.php');