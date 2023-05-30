<?php
$b = 'abcde';
$cond = 1;
point:
echo $b; // sink
$b = $_GET["p1"]; // source
// will return back to print $b
// XSS vulnerability
if ($cond == 1) {
    $cond = 0;
    goto point;
}