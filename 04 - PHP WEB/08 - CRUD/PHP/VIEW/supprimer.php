<?php

include ('head.php');
include ('header.php');
$idRecherche = $_GET['id'];
$id=ProduitsManager::findById($idRecherche);
ProduitsManager::delete($id);
header("location:../../index.php");
include ('footer.php');