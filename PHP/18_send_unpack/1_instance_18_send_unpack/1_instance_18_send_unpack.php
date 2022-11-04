<?php
// $a = 1, $b = $b the input
function add($a, $b) {
    echo $a;
    // XSS vulnerability
    echo $b;
}

$b = $_GET["p1"];
$a = [1, $b];
add(...$a);