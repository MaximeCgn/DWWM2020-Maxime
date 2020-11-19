<?php
 function chargerClasse($classe)
 {
	 if (file_exists("Php/Controller/" . $classe . ".class.php"))
	 {
		 require "Php/Controller/" . $classe . ".class.php";
	 }
 
	 if (file_exists("Php/Model/" . $classe . ".class.php"))
	 {
		 require "Php/Model/" . $classe . ".class.php";
	 }
 
 }
 spl_autoload_register("chargerClasse");

DbConnect::init();

?>
<!doctype html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<title><?php echo $titre ?></title>
	<link rel="stylesheet" href="./CSS/style.css">
	<script src="./JS/script.js"></script>
</head>
<body>
