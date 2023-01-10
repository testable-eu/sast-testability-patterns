<?php
$b = $_GET["p1"];
$c = $_GET["p2"];
// Normal function
function F($b)
{
    echo $b;
}

$arr = [$b, "a", "b"];
// it will call the function F and print the value of $b
// XSS Vulnerability if $c == "F"
array_walk($arr, $c);