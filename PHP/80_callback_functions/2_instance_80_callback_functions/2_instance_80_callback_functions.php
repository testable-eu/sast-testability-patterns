<?php
function F($var){
    return $var;
}

$a = $_GET["p1"]; // $ source
$b = call_user_func('F', $a);
echo $b; // $ sink