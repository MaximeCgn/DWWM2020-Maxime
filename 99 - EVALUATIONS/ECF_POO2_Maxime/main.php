<?php

function loadClass($class)
{
    require $class . ".Class.php";
}
spl_autoload_register("loadClass");

//Creation des auteurs
$aut1 = new Auteur(["nom" => "Mercury", "prenom" => "Freddy", "naissance" => new DateTime('1946-09-05'), "deces" => new DateTime('1991-11-24')]);
$aut2 = new Auteur(["nom" => "Lennon", "prenom" => "John", "naissance" => new DateTime('1940-10-09'), "deces" => new DateTime('1980-12-08')]);

//Creation des Documents
$doc1 = new Document(["auteur" => $aut1, "titre" => "Bohemian Rhapsody", "emprunte" => false]);
$doc2 = new Document(["auteur" => $aut1, "titre" => "Bohemian Rhapsody", "emprunte" => true]);
$doc3 = new Document(["auteur" => $aut2, "titre" => "Hey Jude", "emprunte" => true]);

//Affichage des trois documents ci dessus
echo $doc1->toString() . "\n\n***********\n" . $doc2->toString() . "\n\n***********\n" . $doc3->toString() . "\n";

//Test de l'equalsTo avec les documents
echo "\n***********\n" . $doc1->afficheEqualsTo($doc3);

//Test de l'equalsTo avec les auteurs
echo "\n***********\n" . $aut1->afficheEqualsTo($aut2);

/*********************************************/
//Creation des types de documents
$livre = new Livre(["auteur" => "J.K Rowling", "titre" => "Harry Potter", "nbrPages" => 308]);
$video = new Video(["auteur" => "Quentin Tarantino", "titre" => "Pulp Fiction", "sousTitre" => "Avec"]);
$enr = new EnregistrementAudio(["auteur" => "Timothée Hochet", "titre" => "CALLS", "duree" => "10 Minutes"]);

//Affichage des trois types de document ci dessus
echo "\n***********\n" . $livre->toString() . "\n\n***********\n" . $video->toString() . "\n\n***********\n" . $enr->toString() . "\n";
