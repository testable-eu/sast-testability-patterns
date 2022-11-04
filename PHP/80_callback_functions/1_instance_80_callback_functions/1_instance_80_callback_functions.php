<?php
function F($var){
    echo $var;
}

$a = $_GET["p1"];
call_user_func($func, $a);