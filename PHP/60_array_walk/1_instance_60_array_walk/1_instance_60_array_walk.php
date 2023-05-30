<?php
$b = $_GET["p1"]; // source

function F($b) {
    echo $b; // sink
}

$arr = [$b, "a", "b"];
// it will call the function F and print the value of $b
// XSS Vulnerability
array_walk($arr, 'F');