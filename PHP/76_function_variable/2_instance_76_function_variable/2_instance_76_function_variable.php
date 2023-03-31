<?php
function F($st){
    return $st;
}
$a = $_GET["p1"]; // source
$func = $_GET["p2"];
$b = $func($a); // tarpit: if $_GET["p2"] is F, then call to function F pointed by variable $func
echo $b; // sink
