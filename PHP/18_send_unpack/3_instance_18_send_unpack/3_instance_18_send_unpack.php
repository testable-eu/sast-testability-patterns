<?php
// $a = 1, $b = $b the input
function add($a, $b) {
    return $b;
}

$b = $_GET["p1"]; // source
$c = add(1, $b); // tarpit
echo $c; // sink