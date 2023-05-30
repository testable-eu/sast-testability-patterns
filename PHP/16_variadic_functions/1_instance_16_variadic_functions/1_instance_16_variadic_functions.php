<?php
// $numbers: list of parameters 
function sum(...$numbers) {
    foreach ($numbers as $n) {
        // XSS when it will print the last element $b
        echo $n; // sink
    }
}

$a = $_GET["p1"]; // source
sum(1, 2, 3, $a); // tarpit