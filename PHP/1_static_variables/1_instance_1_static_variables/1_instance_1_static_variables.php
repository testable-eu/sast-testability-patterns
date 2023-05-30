<?php

function F($a) {
    static $b = 'abc'; // tarpit
    echo $b; // sink (moved out from standard skeleton)
    $b = $a;
}

$a = $_GET["p1"];  // source
F($a); // print "abc"
F('abc'); // print value of $_GET["p1"]