<?php
function F($var){
    return $var;
}

$a = $_GET["p1"];
$b = call_user_func('F', $a);
echo $b;