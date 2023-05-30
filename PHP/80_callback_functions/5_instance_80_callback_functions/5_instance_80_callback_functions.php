<?php
function F($var) {
    return $var;
}

$a = $_GET["p1"]; // source
$func = 'F';
$b = call_user_func_array($func, array($a)); // tarpit, call_user_func_array is another variant
echo $b; // sink