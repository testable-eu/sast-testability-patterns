<?php

// $numbers: list of parameters 
function sum(...$numbers) {
    foreach ($numbers as $n) {
        // XSS when it will print the last element $b
        echo $n;
    }
}

$b = $_GET["p1"];
sum(1, 2, 3, $b);