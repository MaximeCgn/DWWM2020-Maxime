<?php
function chargeClass($class)
{
    require $class.".Class.php";
}
spl_autoload_register ("chargeClass");

$v1=new Voiture (["marque"=>"Ford","modele"=>"Mustang"]);
$p1=new Personne("Cugny","Maxime");
$p2=new Personne ("Ynguc","Emixam");
$f1=new Famille(["pere"=>$p1,"mere"=>$p2,"voiture"=>$v1]);
echo $f1->toString();