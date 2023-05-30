<?php
$b = $_GET["p1"]; // source
$fn1 = fn($x) => fn($y) => $x . $y;
$a =  $fn1("safe")($b);
echo a; // sink