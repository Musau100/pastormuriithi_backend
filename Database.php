<?php

/**
 * Created by PhpStorm.
 * User: sydney
 * Date: 9/7/16
 * Time: 9:12 PM
 */
class Database
{
    private static $dbName = 'church';
    private static $dbHost = 'localhost';
//    private static $dbUsername = 'kevynashinski';
//    private static $dbUserPassword = 'elegant';
    private static $dbUsername = 'root';
    private static $dbUserPassword = '';


    private static $cont = null;

    public function __construct()
    {
    }

    public static function connect()
    {
        // One connection through whole application
        if (null == self::$cont) {
            try {
                self::$cont = new PDO("mysql:host=" . self::$dbHost . ";" . "dbname=" . self::$dbName, self::$dbUsername, self::$dbUserPassword);
                self::$cont->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            } catch (PDOException $e) {
                die($e->getMessage());
            }
        }
        return self::$cont;
    }

    public static function disconnect()
    {
        self::$cont = null;
    }
}
