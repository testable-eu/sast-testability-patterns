<?php
// closure
$func = function ($a) {
    echo $a; // sink
};

$a = $_GET["p1"]; // source
$input = [$a, "b", "c"];
//call the closure for each element in the array
array_map($func, $input);