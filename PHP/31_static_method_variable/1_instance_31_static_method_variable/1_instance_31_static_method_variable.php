<?php

class myclass
{
    static function F($b)
    {
        echo $b;
    }
}

$a = $_GET["p1"];
$func = "F";
myclass::$func($a);
