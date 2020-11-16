<?php
/******Connexion BDD*******/
function loadClass($class)
{
    require $class . ".Class.php";
}
spl_autoload_register("loadClass");

try {
    $db = new PDO('mysql:host=localhost;dbname=exercice3;charset=utf8', 'root', '');
} catch (Exception $e) // si une erreur est levée, on agit en conséquence
{
    if ($e->getCode() == 1049) {
        echo "Base de données indisponible";
        die(); // permet d'arrêter l'execution
    } else if ($e->getCode() == 1045) // erreur identification
    {
        echo "La connexion a échouée";
        die();
    } else {
        die('Erreur : ' . $e->getMessage());
    }
}

echo "Vous êtes connecté à la base de données";

/******Resultat multiple ******/
// $requete = $db->query("SELECT nomEtudiant,prenomEtudiant,adresseEtudiant,villeEtudiant FROM etudiants ");
// while ($reponse = $requete->fetch(PDO::FETCH_ASSOC)) {
//     $etudiant[] = new Etudiant($reponse);
// }
// foreach ($etudiant as $unEtudiant) {
//     echo "<br>" . $unEtudiant->toString() . "<br>=============";
// }

/******Requete d'ajout simple******/
// $requete=$db->exec('INSERT INTO etudiants(nomEtudiant,prenomEtudiant,adresseEtudiant,villeEtudiant) VALUES ("cugny", "maxime", "38 rue pierre puis", "Calais")');
// var_dump($requete);

/******Requete d'ajout parametre******/
// $etudiant=new Etudiant(["nomEtudiant"=>"Cugny","prenomEtudiant"=>"Maxime","adresseEtudiant"=>"38 rue Pierre puis","villeEtudiant"=>"Calais"]);

// $requete=$db->prepare('INSERT INTO etudiants(nomEtudiant,prenomEtudiant,adresseEtudiant,villeEtudiant) VALUES(:nomEtudiant,:prenomEtudiant,:adresseEtudiant,:villeEtudiant)');

// $requete->bindValue(':nomEtudiant',$etudiant->getNomEtudiant());
// $requete->bindValue(':prenomEtudiant',$etudiant->getPrenomEtudiant());
// $requete->bindValue(':adresseEtudiant',$etudiant->getAdresseEtudiant());
// $requete->bindValue(':villeEtudiant',$etudiant->getVilleEtudiant());

// $reponse=$requete->execute();
// var_dump($reponse);

/******Requete d'ajout composee******/