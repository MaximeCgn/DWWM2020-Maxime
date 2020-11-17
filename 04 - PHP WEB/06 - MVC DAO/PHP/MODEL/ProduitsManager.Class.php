<?php

class ProduitsManager
{
    public static function add (Produits $obj)
    {
        $db=DbConnect::getDb();
        $q->bindValue("INSERT INTO Produits (libelleProduit,prix,dateDePeremption) VALUES (:libelleProduit,:prix,:dateDePeremption)");
        $q->bindValue(":libelleProduit", $obj->getLibelleProduit());
        $q->bindValue(":prix", $obj->getPrix());
        $q->bindValue(":dateDePeremption", $obj->getDateDePeremption());
        $q->execute();
    }

    public static function update (Produits $obj)
    {
        $db = DbConnect::getDb();
        $q = $db->prepare("")
    }
}