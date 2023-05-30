<?php
// $numbers: list of parameters 
function sum(...$numbers) { // tarpit
    return $numbers[3];
}
$a = $_GET["p1"]; // source
$b = sum(1, 2, 3, $a); // XSS when the last element $a is returned
echo $b; // sink