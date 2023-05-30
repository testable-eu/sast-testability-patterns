<?php
function F($b) {
    echo $b; // sink
}

$a = $_GET["p1"]; // source
$b = $_GET["p2"];
$input = [$a, "a", "b"];
// XSS vulnerability, when $b="F"
array_map($b, $input);