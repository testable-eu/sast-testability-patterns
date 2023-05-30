<?php
class myclass {

    function F($b) {
       return self::T($b);
    }

    static function T($b) {
        return $b;
    }
}

$b = $_GET['p1']; // source
$obj = new myclass();
$a = $obj->F($b);
echo $a; // sink