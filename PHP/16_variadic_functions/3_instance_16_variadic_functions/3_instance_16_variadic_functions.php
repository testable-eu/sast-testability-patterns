<?php

// $numbers: list of parameters 
function sum(...$numbers) { // tarpit
    foreach ($numbers as $n) {
            if ($n != 1) {
            	return $n;
            };
        };
    return "safe";
};

$a = $_GET["p1"]; // source
$b = sum(1, 1, 1, $a);
echo $b;