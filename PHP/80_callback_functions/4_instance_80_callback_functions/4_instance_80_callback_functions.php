<?php
function F($var){
    echo $var;
}

$a = $_GET["p1"];
$func = 'F';
call_user_func($func, $a);