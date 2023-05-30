<?php
function F($var) {
    return $var;
}

$a = $_GET["p1"]; // source
$func = 'F'
$b = call_user_func($func, $a); // tarpit, $func is completely unknown
echo $b; // sink