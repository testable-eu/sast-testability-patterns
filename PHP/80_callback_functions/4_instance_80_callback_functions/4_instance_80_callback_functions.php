<?php
function F($var) {
    return $var;
}

$a = $_GET["p1"]; // source
$func = 'F';
$b = call_user_func($func, $a);
echo $b; // sink