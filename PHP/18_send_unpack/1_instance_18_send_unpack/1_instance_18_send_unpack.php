<?php
// $a = 1, $b = $b the input
function add($a, $b) {
    echo $a;
    // XSS vulnerability
    echo $b; // sink
}

$b = $_GET["p1"]; // source
$a = [1, $b];
add(...$a); // tarpit