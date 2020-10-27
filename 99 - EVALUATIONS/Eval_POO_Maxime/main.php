<?php

function loadClass($class)
{
    require $class . ".Class.php";
}
spl_autoload_register("loadClass");

$p1 = new Joueur();
$monstreFacileTue=0;
$monstreDifficileTue=0;
do {
    
    echo "\n*************************  Monstre suivant\n";
    $monstre = rand(1, 2);
    if ($monstre == 1) {
        echo "C'est un monstre facile\n";
        $mf = new MonstreFacile();
        echo $p1->toString();
        echo $mf->toString();
        $p1->subitDegats($mf->attaque());
        if ($mf->estVivant()==false) {
             $monstreFacileTue+=1;
        }
       
    } else {

        $md = new MonstreDifficile();
        echo "C'est un monstre Difficile\n";
        echo $p1->toString();
        echo $md->toString();
        $p1->subitDegats($md->attaque());
        if ($md->estVivant()==false){
        $monstreDifficileTue+=1;
        }
    }
} while ($p1->estVivant()==true);

echo "\nDommage, vous êtes mort...\n
    Cela dit, vous avez tué ".$monstreFacileTue." monstres faciles et ".$monstreDifficileTue." monstres difficiles.\nVous avez "."points";
