<?php
function F($st){
    return $st;
}
$a = $_GET["p1"]; // source
$func = "F";
$b = $func($a); // tarpit: call to function F pointed by variable $func
echo $b; // sink

