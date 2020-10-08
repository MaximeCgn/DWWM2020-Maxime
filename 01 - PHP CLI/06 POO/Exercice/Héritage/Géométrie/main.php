<?php

function loadClass($class)
{
    require $class.".Class.php";
}
spl_autoload_register ("loadClass");
//Creation du rectangle
$r1=new Rectangle(["longueur"=>12,"largeur"=>10]);
//Creation du triangle rectangle
$tr1=new Trianglerectangle(["base"=>10,"hauteur"=>5]);
//Creation du cercle
$c1=new Cercle(["diametre"=>5]);
//Creation du pavé
$pav1=new Pave(["longueur"=>12,"largeur"=>10,"haut"=>10]);
//Creation de la pyramide
$pyr1=new Basetriangle(["base"=>10,"hauteur"=>5,"haut"=>12]);
//Creation de la sphere
$sph1=new Sphere(["diametre"=>5]);

//Affichage des informations
echo "\nInformations sur le rectangle :\n\n"
    .$r1->toString()
    . "\nInformations sur le parallélépipède à base rectangle :\n\n"
    .$pav1->toString()
    ."\n**********************\n"
    ."\nInformations sur le triangle :\n\n"
    .$tr1->toString()
    ."\nInformations sur la pyramide à base triangle rectangle :\n\n"
    .$pyr1->toString()
    ."\n**********************\n"
    ."\nInformations sur le cercle :\n\n"
    .$c1->toString()
    ."\nInformations sur la sphère :\n\n"
    .$sph1->toString();
