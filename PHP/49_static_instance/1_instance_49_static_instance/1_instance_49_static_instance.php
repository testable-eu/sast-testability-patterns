<?php
class Myclass {
    private static $instance ;
    public $x;

    public static function oneInstance() {
        if(!self::$instance instanceof self) {
            self::$instance = new self;
        }
        return self::$instance;
    }
}

$b = $_GET["p1"]; // source
Myclass::oneInstance()->x = $b;
$a = Myclass::oneInstance()->x;
echo $a; // sink