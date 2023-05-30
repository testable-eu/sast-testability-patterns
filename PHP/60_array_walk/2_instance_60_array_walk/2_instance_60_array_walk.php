<?php
$b = $_GET["p1"]; // source
$c = $_GET["p2"];
// Normal function
function F($b) {
    echo $b; // sink
}

$arr = [$b, "a", "b"];
// it will call the function F and print the value of $b
// XSS Vulnerability if $c == "F"
array_walk($arr, $c);