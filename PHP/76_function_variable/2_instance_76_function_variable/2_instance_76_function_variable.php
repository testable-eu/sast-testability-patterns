<?php
function F($st){
    echo $st;
}
$b = $_GET["p1"];
$func = $_GET["p2"];
// it will call the function F
// it will print $b, XSS
$func($b);  