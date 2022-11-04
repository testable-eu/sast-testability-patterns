<?php
function F($st){
    echo $st;
}
$b = $_GET["p1"];
$func = "F";
// it will call the function F
// it will print $b, XSS
$func($b); 
