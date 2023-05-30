<?php
function sum() {
    // it will print all the parameters
    // XSS vulnerability with the last element $b
    foreach (func_get_args() as $n) {
        echo $n; // sink
    }
}

$b = $_GET["p1"]; // source
sum(1, 2, 3, $b); // tarpit