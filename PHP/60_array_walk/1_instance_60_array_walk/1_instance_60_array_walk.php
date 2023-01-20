<?php
$b = $_GET["p1"];

function F($b)
{
    echo $b;
}

$arr = [$b, "a", "b"];
// it will call the function F and print the value of $b
// XSS Vulnerability
array_walk($arr, 'F');