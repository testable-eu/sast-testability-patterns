<?php
$b = $_GET["p1"];
$c = $_GET["p2"];
// Normal function
function F($b){
    echo $b;
}
// Closure
$example = function ($b){
    echo $b;
};
$arr = [$b,$b,$b];
// it will call the closuer $example and print the value of $b
// XSS Vulnerability
array_walk($arr, $example);
// it will call the function F and print the value of $b
// XSS Vulnerability
array_walk($arr, $c); 