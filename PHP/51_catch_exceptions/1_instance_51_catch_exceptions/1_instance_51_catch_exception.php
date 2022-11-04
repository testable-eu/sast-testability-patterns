<?php
function inverse($x,$b) {
    if (!$x) {
        throw new Exception($b);
    }
    return 1/$x;
}

$b = $_GET["p1"];
try {
    inverse(5,$b);
    inverse(0,$b);
} catch (Exception $e) {
    // Vulnerability
    echo $b;
    echo 'Caught exception: ',  $e->getMessage(), "\n";
}