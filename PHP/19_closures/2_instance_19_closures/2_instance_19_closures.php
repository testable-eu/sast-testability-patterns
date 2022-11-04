<?php
$b = $_GET["p1"];
$fn1 = fn($x) => fn($y) => $x . $y;
echo $fn1("safe")($b);
?>