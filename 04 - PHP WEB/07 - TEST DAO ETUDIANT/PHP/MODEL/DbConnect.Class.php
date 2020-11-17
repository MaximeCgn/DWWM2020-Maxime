<?php

class DbConnect{
    private static $db;

    public static function getDb()
    {
        return DbConnect::$db;
    }

    public static function init(){
        try{
            self::$db= new PDO ( 'mysql:host=localhost;dbname=exercice3;charset=utf8', 'exercice3', 'exercice3');
        }
        catch (Exception $e)
        {
            die('Erreur :'. $e->getMessage());
        }
    }

}