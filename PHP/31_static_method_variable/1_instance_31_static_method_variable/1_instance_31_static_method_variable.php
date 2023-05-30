<?php
class myclass {
    static function F($b) {
        return $b;
    }
}

$a = $_GET["p1"]; // source
$func = "F";
$b = myclass::$func($a);
echo $b; // sink 
