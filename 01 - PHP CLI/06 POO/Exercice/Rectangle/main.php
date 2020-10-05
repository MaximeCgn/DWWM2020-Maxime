<?php

require "Rectangle.Class.php";
do {
$long=readline("Longueur :");
}while (!ctype_digit($long));
do {
$larg=readline("Largeur :");
}while (!ctype_digit($larg));

$r1=new Rectangle ($long,$larg);
echo $r1->afficherRectangle();