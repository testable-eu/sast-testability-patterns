<?php
class Myclass
{
    private static $instance ;
    public $x;

    public static function oneInstance()
    {
        if(!self::$instance instanceof self) {
            self::$instance = new self ;
        }
        return self::$instance ;
    }
}

Myclass::oneInstance()->x = $_GET["p1"];
echo Myclass::oneInstance()->x;