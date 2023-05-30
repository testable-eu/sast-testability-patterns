<?php
function foo(&$var,$input) { // tarpit
    $var = $input;
}

$a = $_GET["p1"]; // source
// foo will copy the $a in $b
foo($b,$a);
// XSS, will print the source
echo $b; // sink